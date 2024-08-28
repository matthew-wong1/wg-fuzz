struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(13510u, 49969u, 4294967295u), i32(-2147483648), -806f, 6236u);

var<private> global1: array<i32, 2> = array<i32, 2>(-29035i, -8577i);

var<private> global2: array<bool, 10> = array<bool, 10>(false, false, true, false, false, false, false, true, true, true);

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-865f, global0.c))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2054f), -1385f) + arg_0.b))));
    var var_1 = vec2<u32>(9554u, arg_0.a.a.x);
    let var_2 = Struct_2(arg_0.a, i32(-1i) * -(~_wgslsmith_div_i32(-12846i, -53108i)));
    let var_3 = Struct_5(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(7507u, 0u), arg_0.a.a.ww, true), vec2<u32>(arg_0.a.a.x, 0u) & var_2.a.a.xz), select(abs(global0.a.x), 1u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_2.a.a, arg_0.d.a.a), 10u)])), (arg_0.d.a.a.x | ~var_1.x) >> (var_1.x % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.c), -459f, _wgslsmith_f_op_f32(-global0.c)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), -1588f, _wgslsmith_f_op_f32(global0.c + 430f))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_div_f32(-977f, global0.c)), arg_0.b, 839f), false)), ~(~(~select(global0.a, vec3<u32>(var_2.a.a.x, var_1.x, 1u), vec3<bool>(arg_0.a.b.x, global2[_wgslsmith_index_u32(var_1.x, 10u)], global2[_wgslsmith_index_u32(arg_0.a.a.x, 10u)])))), vec4<f32>(global0.c, _wgslsmith_f_op_f32(1f + 283f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -157f))), global0.c), 697f));
    var var_4 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~24196i, global1[_wgslsmith_index_u32(var_2.a.a.x, 2u)]), u_input.a.x, 24880i), var_2.a.c);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.c)))), var_3.d.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = vec2<i32>(u_input.a.x, firstTrailingBit(_wgslsmith_sub_i32(~2147483647i, global0.b | 1i))) | (firstTrailingBit(vec2<i32>(~global0.b, -global0.b)) ^ vec2<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), ~firstTrailingBit(-23177i)));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c + 1000f), -1756f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, global0.c) - vec2<f32>(global0.c, -534f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, -1716f) - vec2<f32>(-1170f, global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(arg_0, vec2<bool>(arg_1.x, arg_1.x), 6334i), 122f, arg_1.x, Struct_2(Struct_1(arg_0, arg_1.zy, -13823i), 0i))))))))));
    global2 = array<bool, 10>();
    let var_2 = Struct_5(abs(_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, arg_0.x), global0.a)), 4294967295u, arg_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-456f, _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(floor(132f))), global0.c)), ~vec3<u32>(arg_0.x | 18466u, global0.d, abs(32667u)) << (~(~(~vec3<u32>(global3.x, 0u, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2367f, global0.c, global0.c, 219f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1927f, var_1.x, global0.c) + vec4<f32>(-1827f, -829f, var_1.x, global0.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1135f, var_1.x, -850f, 794f)))))))));
    global1 = array<i32, 2>();
    return Struct_4(arg_0.xwz, -2147483647i, _wgslsmith_f_op_f32(-1593f + 312f), 1u);
}

fn func_1() -> u32 {
    let var_0 = !(!(!select(!vec3<bool>(false, global2[_wgslsmith_index_u32(1989u, 10u)], true), !vec3<bool>(global2[_wgslsmith_index_u32(3339u, 10u)], global2[_wgslsmith_index_u32(13866u, 10u)], true), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3.x, 10u)]))));
    global1 = array<i32, 2>();
    var var_1 = ~abs(~min(9093u, min(global0.d, global3.x)));
    global2 = array<bool, 10>();
    global0 = func_2(~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(14822u, 4294967295u, global0.d, 77601u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(44828u, global0.a.x, 4294967295u, 0u), vec4<u32>(49736u, 48955u, global3.x, global0.a.x), vec4<u32>(23349u, global0.d, global3.x, global3.x))), select(!var_0, !select(!vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 10u)], true, global2[_wgslsmith_index_u32(5462u, 10u)]), var_0, var_0), true));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(global0.a, _wgslsmith_add_i32(reverseBits(1i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~global3.x), global3.x), 2u)]), _wgslsmith_f_op_f32(-global0.c), func_1());
    global3 = func_2((_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, 0u, global3.x, 4294967295u)), vec4<u32>(global0.a.x, global0.d, global3.x, 1u) | vec4<u32>(global3.x, global0.d, global3.x, global3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(76813u, global3.x, 1u, global3.x), vec4<u32>(1u, 24500u, 14826u, global0.a.x))) << (~(vec4<u32>(0u, global0.a.x, global3.x, global3.x) & vec4<u32>(28418u, global3.x, global0.a.x, global3.x)) % vec4<u32>(32u))) | firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(50584u, global0.a.x, 44100u, global0.d), abs(vec4<u32>(20143u, 31277u, global0.d, global0.a.x)))), !select(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.d, 4294967295u), 10u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global0.a.zz, vec2<u32>(global3.x, 0u)), 10u)], true), select(!vec3<bool>(global2[_wgslsmith_index_u32(global0.d, 10u)], global2[_wgslsmith_index_u32(global3.x, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(global3.x, 10u)], global2[_wgslsmith_index_u32(41340u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 10u)], true, false)), all(!vec4<bool>(false, global2[_wgslsmith_index_u32(global0.d, 10u)], global2[_wgslsmith_index_u32(global0.d, 10u)], false)))).a.xz;
    let var_0 = reverseBits(reverseBits(max(~global0.a.yy, vec2<u32>(0u, global3.x)) | vec2<u32>(global0.a.x, global3.x ^ global3.x)));
    global1 = array<i32, 2>();
    global0 = func_2(~(~(~abs(vec4<u32>(53197u, global0.a.x, 1624u, 1u)))), vec3<bool>(!all(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(var_0.x, 10u)], true)) | any(!vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 10u)], true)), false, any(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x << (1u % 32u), 10u)], true, false, !global2[_wgslsmith_index_u32(4294967295u, 10u)]))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -784f);
    var var_2 = _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a);
    let var_3 = Struct_3(Struct_1(countOneBits(~vec4<u32>(global0.a.x, 0u, var_0.x, 67292u)), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(global0.a.x, 10u)]))), global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) * -2773f))) * _wgslsmith_f_op_f32(trunc(global0.c))), true, Struct_2(Struct_1(~(~vec4<u32>(global0.a.x, var_0.x, 1u, 74442u)), !select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)]), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(global0.a.x, 10u)], global2[_wgslsmith_index_u32(global3.x, 10u)])), global0.b), firstLeadingBit(11616i)));
    global3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~(~31355u), _wgslsmith_add_u32(global3.x, ~63548u)), firstLeadingBit(abs(select(global0.a.xx & global0.a.yz, max(global0.a.xx, vec2<u32>(var_3.d.a.a.x, global3.x)), !var_3.a.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-15316i, var_2.x), vec2<i32>(var_2.x, 24572i)), select(28848i, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.a.x, ~global3.x), 2u)], global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0.a.x, 22945u), 10u)]), _wgslsmith_sub_i32(global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, var_3.d.b) & u_input.a, vec3<i32>(var_2.x, u_input.a.x, global1[_wgslsmith_index_u32(global0.d, 2u)]))), 2147483647i), firstTrailingBit(firstLeadingBit(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(global0.a.x, 2u)], -2147483647i) | _wgslsmith_sub_i32(-13546i, 27582i))), _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global0.b, 2147483647i, 1i))));
}

