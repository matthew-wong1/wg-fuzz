struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = u_input.c.wxx;
    var var_1 = select(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(11397u, 5u)], arg_1, true), !vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.a.b.b, 5u)], false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(true, false, true))), !select(vec3<bool>(true, true, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_2.a.b.b, 5u)], arg_1)), vec3<bool>(true || arg_1, false || global0[_wgslsmith_index_u32(u_input.d.x, 5u)], !arg_1)), !select(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(arg_2.a.b.b, 5u)], global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec3<bool>(true, true, true), false), vec3<bool>(!arg_1 && select(arg_1, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], false), global0[_wgslsmith_index_u32(u_input.d.x, 5u)], all(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], arg_1), true)))), select(select(select(!vec3<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.d.x, 5u)], true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_2.b.b, 5u)], arg_1), vec3<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true, arg_1), vec3<bool>(true, false, arg_1)), vec3<bool>(arg_1, true, arg_1)), vec3<bool>(true, true, true), false), vec3<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a.b.b, 5u)], false, arg_1, arg_1))), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, arg_1), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], true, global0[_wgslsmith_index_u32(arg_2.b.b, 5u)], true))), false), !arg_1), !vec3<bool>(~arg_2.b.b > ~arg_2.a.b.b, global0[_wgslsmith_index_u32(abs(0u), 5u)], !all(vec4<bool>(arg_1, true, global0[_wgslsmith_index_u32(arg_2.a.b.b, 5u)], true))));
    let var_2 = Struct_3(_wgslsmith_div_vec4_i32(min(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_2.c.x, u_input.c.x, u_input.c.x, 2147483647i), arg_2.a.a << (vec4<u32>(54277u, 83472u, arg_2.b.b, 10260u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(countOneBits(arg_2.a.a), _wgslsmith_mod_vec4_i32(arg_2.a.a, arg_2.a.a))), -(abs(u_input.b) >> (~vec4<u32>(u_input.d.x, arg_2.b.b, u_input.d.x, 46445u) % vec4<u32>(32u)))), Struct_2(_wgslsmith_add_vec2_i32(-arg_2.a.a.yw, ~(~arg_2.a.b.a)), 4294967295u));
    return u_input.d;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 5>();
    var var_0 = -_wgslsmith_sub_vec2_i32((u_input.c.xx ^ abs(vec2<i32>(u_input.c.x, u_input.c.x))) | abs(_wgslsmith_add_vec2_i32(u_input.b.wz, u_input.c.xw)), ~u_input.c.zw);
    let var_1 = _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(0u, (1u ^ u_input.d.x) >> (_wgslsmith_mult_u32(u_input.d.x, 25835u) % 32u))), select(u_input.d, func_3(1f, global0[_wgslsmith_index_u32(~11516u, 5u)], Struct_4(Struct_3(u_input.c, Struct_2(u_input.c.xw, 73464u)), Struct_2(vec2<i32>(1i, 10100i), 0u), u_input.b.xy)), global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(round(1000f)), !(!global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), Struct_4(Struct_3(vec4<i32>(2147483647i, var_0.x, 0i, var_0.x), Struct_2(u_input.b.zw, u_input.d.x)), Struct_2(u_input.b.ww, u_input.d.x), _wgslsmith_mult_vec2_i32(u_input.c.xw, vec2<i32>(28707i, 15787i)))).x, 5u)]));
    let var_2 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(-abs(var_0.x), max(i32(-1i) * -7248i, u_input.a)), var_0.x), ~abs(~max(u_input.d.x, 26762u)));
    global0 = array<bool, 5>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(782f, _wgslsmith_div_f32(-1030f, _wgslsmith_f_op_f32(f32(-1f) * -108f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1009f * 1074f))), vec3<f32>(-315f, 568f, _wgslsmith_f_op_f32(1107f - -976f)));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global0 = array<bool, 5>();
    var var_0 = Struct_2(select(reverseBits(vec2<i32>(-43687i << (u_input.d.x % 32u), -u_input.b.x)), -vec2<i32>(min(-1i, u_input.b.x), u_input.a), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], true), vec2<bool>(global0[_wgslsmith_index_u32(13286u, 5u)], false), false), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(1u, 5u)])), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], false), select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true), global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), true), select(vec2<bool>(global0[_wgslsmith_index_u32(1855u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), true))), u_input.d.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1112f)))), _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -811f))), _wgslsmith_f_op_f32(-arg_0.c.x)));
    let var_2 = Struct_2(-vec2<i32>(~(-44319i & var_0.a.x), var_0.a.x >> (_wgslsmith_mult_u32(31460u, 29792u) % 32u)), ~var_0.b);
    var var_3 = 646f;
    return _wgslsmith_mod_u32(var_0.b, var_0.b);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = u_input.d & ~(~u_input.d);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_4(func_2()), var_0.x >> (var_0.x % 32u), arg_0.x, abs(~u_input.d.x)), ~(vec4<u32>(u_input.d.x, arg_0.x >> (1u % 32u), _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(4294967295u, var_0.x)), ~var_0.x) << (firstTrailingBit(~vec4<u32>(0u, 0u, arg_0.x, 16900u)) % vec4<u32>(32u))));
    global0 = array<bool, 5>();
    return Struct_2(-(abs(vec2<i32>(-8197i, u_input.b.x) << (u_input.d % vec2<u32>(32u))) | vec2<i32>(-1i, ~(-4956i))), ~4294967295u ^ var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.b, func_1(~(~u_input.d)));
    var var_1 = Struct_4(Struct_3(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.a.x, 41657i, u_input.c.x, 28006i), u_input.b), u_input.a, max(24177i, var_0.a.x), u_input.a), func_1((u_input.d << (vec2<u32>(32319u, u_input.d.x) % vec2<u32>(32u))) << (u_input.d % vec2<u32>(32u)))), Struct_2(var_0.b.a, 4294967295u), vec2<i32>(_wgslsmith_add_i32(-59224i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, u_input.c.x), _wgslsmith_div_i32(2147483647i, var_0.b.a.x))), var_0.a.x >> (min(47381u, 1u) % 32u)));
    global0 = array<bool, 5>();
    let var_2 = _wgslsmith_mod_vec3_u32(~(~(~vec3<u32>(var_0.b.b, var_1.b.b, 14427u)) | _wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.b.b, var_1.a.b.b, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d.x, var_0.b.b), vec3<u32>(u_input.d.x, var_0.b.b, var_1.b.b)))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(82259u, 0u, u_input.d.x), vec3<u32>(var_0.b.b, 65368u, var_0.b.b)) & _wgslsmith_mult_vec3_u32(vec3<u32>(32419u, var_1.b.b, 1u), vec3<u32>(4655u, 5156u, var_1.a.b.b)), ~(~vec3<u32>(var_1.a.b.b, var_1.b.b, var_0.b.b))) ^ min(firstLeadingBit(~vec3<u32>(27008u, u_input.d.x, u_input.d.x)), select(vec3<u32>(var_0.b.b, u_input.d.x, var_1.a.b.b), countOneBits(vec3<u32>(1761u, var_0.b.b, 0u)), select(vec3<bool>(global0[_wgslsmith_index_u32(var_0.b.b, 5u)], global0[_wgslsmith_index_u32(u_input.d.x, 5u)], global0[_wgslsmith_index_u32(u_input.d.x, 5u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b.b, 5u)], false), global0[_wgslsmith_index_u32(10991u, 5u)]))));
    var_1 = Struct_4(Struct_3(u_input.b, Struct_2(-vec2<i32>(u_input.c.x, var_1.c.x), 1u)), var_1.b, -(vec2<i32>(-1i) * -vec2<i32>(var_1.c.x, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(320f, _wgslsmith_f_op_f32(229f + -177f))), 537f)), -152f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-1250f * -342f))))), vec2<i32>((_wgslsmith_mult_i32(u_input.b.x, var_1.c.x) | _wgslsmith_mult_i32(0i, var_0.a.x)) << (6058u % 32u), ~(~u_input.a) ^ -abs(36190i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(321f)), -828f) + vec2<f32>(_wgslsmith_f_op_f32(516f - -1000f), _wgslsmith_f_op_f32(-472f * -1748f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-636f, 281f), vec2<f32>(360f, 781f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-650f, -346f), vec2<f32>(-554f, 1000f), vec2<bool>(true, false)))))), -var_1.b.a.x);
}

