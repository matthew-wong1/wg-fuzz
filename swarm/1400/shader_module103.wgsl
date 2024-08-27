struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: Struct_3 = Struct_3(Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(1053f, 839f, 114f), 623f, vec2<i32>(-13528i, 66249i)), vec2<bool>(true, false), Struct_2(vec4<u32>(21421u, 0u, 30996u, 4294967295u), Struct_1(vec2<i32>(25322i, -27951i), vec3<f32>(128f, 493f, -685f), 180f, vec2<i32>(-22384i, -1i)), true, 0u), false, 0u);

var<private> global2: array<u32, 14> = array<u32, 14>(4294967295u, 20697u, 68730u, 69505u, 1u, 0u, 94755u, 47791u, 38159u, 17341u, 19177u, 1u, 0u, 4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = any(!vec4<bool>(true & all(vec2<bool>(global0.x, global1.d)), true, !global0.x, true || any(vec2<bool>(global1.c.c, false))));
    global0 = !vec3<bool>(all(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global1.b.x, global1.d, false, true), true)) | all(select(vec2<bool>(false, true), global0.yz, global0.yx)), global0.x, firstLeadingBit(~global1.a.a.x) <= _wgslsmith_mult_i32(max(-2147483647i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.a.x, global1.c.b.d.x, -2147483647i, -1579i), vec4<i32>(4066i, global1.a.d.x, u_input.b, -6681i))));
    global0 = select(!select(vec3<bool>(false, false, all(vec3<bool>(false, global1.b.x, false))), !select(vec3<bool>(global1.c.c, global0.x, true), vec3<bool>(false, false, global0.x), vec3<bool>(false, true, global0.x)), global0.x), !(!select(!vec3<bool>(false, global1.c.c, global0.x), !vec3<bool>(false, global1.b.x, true), !global1.b.x)), vec3<bool>(true, all(vec3<bool>(false, true, global0.x)) & !(!global0.x), all(vec2<bool>(true, all(vec3<bool>(global1.b.x, global0.x, false))))));
    global1 = Struct_3(Struct_1(u_input.a.yx, _wgslsmith_f_op_vec3_f32(-global1.a.b), _wgslsmith_f_op_f32(-global1.c.b.b.x), vec2<i32>(global1.c.b.d.x, min(-20955i | u_input.c, firstLeadingBit(-1i)))), global1.b, Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.e, arg_1, arg_1, 1388u), firstLeadingBit(global1.c.a), abs(vec4<u32>(arg_2, arg_0, 32443u, arg_0))) ^ vec4<u32>(0u, 58673u, 38232u, global2[_wgslsmith_index_u32(arg_1, 14u)] >> (31428u % 32u)), Struct_1(vec2<i32>(27287i, -1i) << (vec2<u32>(10920u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21131u, 14u)], 14u)], 14u)]) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-116f, 1705f, global1.a.c), vec3<f32>(global1.a.b.x, global1.c.b.c, 175f)))), 1000f, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-14995i, -1i), vec2<i32>(-38712i, u_input.b), vec2<i32>(u_input.b, 0i)), _wgslsmith_mult_vec2_i32(global1.a.a, global1.a.a), select(global0.xx, vec2<bool>(global1.b.x, global1.d), vec2<bool>(global0.x, true)))), global0.x, 1u), true, arg_2);
    let var_1 = _wgslsmith_mod_vec4_i32(max(abs(vec4<i32>(2147483647i, u_input.b, global1.c.b.a.x, 42185i) | vec4<i32>(global1.c.b.d.x, global1.a.d.x, global1.c.b.a.x, u_input.b)), vec4<i32>(u_input.c, _wgslsmith_div_i32(u_input.c, global1.a.d.x), 0i, min(-16811i, -2147483647i))), countOneBits(~vec4<i32>(2147483647i, -49638i, 21524i, global1.a.a.x) ^ countOneBits(vec4<i32>(11268i, 1i, u_input.c, global1.a.a.x)))) ^ min(~vec4<i32>(u_input.a.x, -41529i, -7069i, global1.a.d.x) << (~vec4<u32>(arg_2, 36172u, 51788u, arg_1) % vec4<u32>(32u)), vec4<i32>(-41878i, _wgslsmith_div_i32(i32(-1i) * -13800i, u_input.a.x), global1.a.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.b.d.x, u_input.c, 16447i) >> (vec3<u32>(22942u, 30637u, 12604u) % vec3<u32>(32u)), -u_input.a)));
    return false;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(reverseBits(~(~global1.c.a)), global1.a, !all(!vec2<bool>(global0.x, global1.c.c)), 3299u);
    global0 = select(vec3<bool>(false & (var_0.c | global1.b.x), true, select(global1.c.c & func_3(global2[_wgslsmith_index_u32(global1.e, 14u)], global2[_wgslsmith_index_u32(global1.e, 14u)], global2[_wgslsmith_index_u32(global1.e, 14u)]), max(u_input.a.x, 0i) != max(1151i, var_0.b.a.x), true)), vec3<bool>(false, 1519f <= var_0.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.c - var_0.b.c))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x))), any(select(!(!global1.b), !select(global0.xy, global1.b, global1.b), global1.b.x)));
    let var_1 = global1.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -825f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.a.c, -1000f, global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-207f)) * _wgslsmith_f_op_f32(trunc(var_1.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-681f, var_1.b.c)))))));
    global0 = select(vec3<bool>(!(firstTrailingBit(var_0.d) > _wgslsmith_sub_u32(var_0.a.x, var_1.d)), global1.d, !all(vec2<bool>(var_0.c, false))), !vec3<bool>(true, global1.c.c, true), !select(!(!vec3<bool>(global1.d, global1.d, true)), !vec3<bool>(false, global0.x, var_0.c), select(false & global1.d, true, true)));
    return Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -var_1.b.a, _wgslsmith_mult_vec2_i32(select(~global1.c.b.d, u_input.a.yz, true), -abs(var_1.b.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1038f, -310f, 871f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b.b.x, -237f, -297f), vec3<f32>(var_1.b.b.x, 944f, -816f))), true))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(-976f, global1.a.c)), -455f, _wgslsmith_f_op_f32(-global1.a.b.x))))), _wgslsmith_f_op_f32(ceil(var_1.b.b.x)), ~var_0.b.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_2(arg_1, func_2(), all(select(vec3<bool>(true, false || global1.c.c, global1.d), select(!vec3<bool>(global1.d, global0.x, false), !vec3<bool>(global1.d, true, true), select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global1.c.c, true), global1.c.c)), select(global0.x || global0.x, any(vec4<bool>(global1.c.c, false, global1.d, global0.x)), global1.d))), 1u);
    let var_1 = Struct_4(countOneBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.a.x, arg_1.x, global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), ~(global1.c.a >> (arg_1 % vec4<u32>(32u))))), global1.c.b, var_0.b, Struct_2(~vec4<u32>(35030u, _wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(global1.c.d, 14u)], arg_1.x), _wgslsmith_mult_u32(global1.e, var_0.a.x), _wgslsmith_div_u32(40222u, var_0.a.x)), var_0.b, var_0.a.x <= _wgslsmith_mult_u32(abs(global2[_wgslsmith_index_u32(1u, 14u)]), ~25707u), ~72336u));
    var var_2 = !global0.zx;
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a | vec3<i32>(global1.a.d.x, 0i, var_0.b.a.x), ~_wgslsmith_mult_vec3_i32(-u_input.a, -vec3<i32>(var_1.b.a.x, var_1.d.b.d.x, 0i))), _wgslsmith_div_i32(~var_1.b.d.x, var_1.c.d.x), countOneBits(func_2().d.x), -u_input.a.x);
    return func_2();
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    var var_0 = ~vec4<i32>(u_input.a.x, abs(_wgslsmith_mod_i32(max(-1i, -2147483647i), global1.c.b.a.x & 1i)), 13367i, select(global1.a.d.x, -1i, all(vec2<bool>(false, global0.x))));
    global1 = arg_0;
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(-arg_0.a.b.zz), global1.c.a);
    let var_2 = arg_0.c.b.d.x;
    global0 = select(vec3<bool>(true, !(!arg_0.d), arg_0.d), !vec3<bool>(!any(vec2<bool>(false, global0.x)), true, select(true, global1.c.c, global1.c.c) | true), arg_0.d);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(Struct_3(func_1(global1.a.b.xx, vec4<u32>(global1.e, 8377u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.e, 14u)], 14u)], 14u)], 4294967295u)), vec2<bool>(true, true), Struct_2(vec4<u32>(36708u, global1.c.a.x, 4294967295u, global2[_wgslsmith_index_u32(4294967295u, 14u)]), func_2(), func_3(47522u, 4294967295u, 1u), global1.c.a.x >> (28717u % 32u)), !global0.x, ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(16132u, 14u)], 14u)]))), global1.b, Struct_2(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(49105u, global1.e, 15655u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.e, 14u)], 14u)]), vec4<u32>(global2[_wgslsmith_index_u32(0u, 14u)], global1.c.d, global2[_wgslsmith_index_u32(global1.c.d, 14u)], 68580u)), 26820u, 1u) | global1.c.a, Struct_1(~global1.a.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(global1.a.b, global1.a.b)), global1.a.b)), global1.c.b.b.x, u_input.a.zy), global1.c.c, ~global2[_wgslsmith_index_u32(10646u, 14u)]), !global1.b.x, _wgslsmith_sub_u32(~global1.e, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(14857u, 1u, global1.c.a.x, 7145u), vec4<u32>(global1.c.d, global1.c.d, 4294967295u, 0u)))));
    var var_1 = Struct_3(func_1(global1.a.b.xz, _wgslsmith_clamp_vec4_u32(var_0.c.a, ~(~var_0.c.a), ~var_0.c.a)), var_0.b, var_0.c, false, var_0.e);
    let var_2 = vec4<i32>(-14302i, min(-9332i, max(-(i32(-1i) * -1i), ~(-u_input.c))), 7891i, 1i);
    let var_3 = var_2;
    let var_4 = var_0;
    global2 = array<u32, 14>();
    let var_5 = countOneBits(_wgslsmith_mod_vec4_i32(var_3 << (~(~vec4<u32>(0u, 0u, var_1.c.a.x, var_1.c.d)) % vec4<u32>(32u)), vec4<i32>(global1.c.b.a.x, _wgslsmith_clamp_i32(-5445i, ~global1.c.b.d.x, -2147483647i), _wgslsmith_add_i32(2147483647i, -11080i), var_4.a.a.x)));
    var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.a.yyx & var_0.c.a.wyy);
}

