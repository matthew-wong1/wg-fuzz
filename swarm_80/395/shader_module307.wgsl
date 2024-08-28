struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -785f;

var<private> global1: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(1u, 52141u, 21798u, 12973u), vec4<u32>(26596u, 4294967295u, 1u, 19244u), vec4<u32>(1u, 4294967295u, 24418u, 12335u), vec4<u32>(1u, 46080u, 0u, 4294967295u), vec4<u32>(25535u, 31956u, 0u, 32163u), vec4<u32>(56813u, 1u, 6900u, 6153u), vec4<u32>(10608u, 4650u, 1u, 24863u), vec4<u32>(4294967295u, 17237u, 15027u, 1u));

var<private> global2: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 8>();
    var var_0 = vec4<bool>(any(global2.b), true, global2.b.x, select(all(!select(global2.b, vec3<bool>(global2.a.c, true, false), global2.a.c)), all(vec4<bool>(global2.a.c, global2.b.x | true, global2.b.x, true)), global2.a.c));
    let var_1 = Struct_3(global2.a, select(!global2.b, vec3<bool>(false, any(global2.b), any(var_0.yww)), global2.b));
    global1 = array<vec4<u32>, 8>();
    var var_2 = Struct_3(var_1.a, !global2.b);
    return _wgslsmith_mult_u32(min(global2.a.a.x, 81949u) << (~_wgslsmith_div_u32(firstTrailingBit(1u), 1u) % 32u), countOneBits(0u));
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<vec4<u32>, 8>();
    let var_0 = abs(u_input.c.x);
    var var_1 = 115f;
    let var_2 = 1u;
    global0 = arg_3.x;
    return Struct_1(reverseBits(~firstLeadingBit(global2.a.a)) ^ _wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(15033u, var_2)), 8u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(), ~global2.a.a.x), 8u)]), global2.a.a.wxx, arg_0);
}

fn func_4(arg_0: Struct_1) -> bool {
    global2 = Struct_3(arg_0, !select(global2.b, !vec3<bool>(global2.b.x, arg_0.c, false), true));
    let var_0 = select(!vec3<bool>(func_2(global2.a.c, Struct_2(-176f), arg_0.a.yxz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(131f, -804f, -833f, -371f))).c, true, !any(global2.b)), !select(global2.b, vec3<bool>(any(vec4<bool>(false, arg_0.c, global2.b.x, arg_0.c)), true, true), global2.b.x), vec3<bool>(arg_0.c, false, false));
    global2 = Struct_3(func_2(true, Struct_2(985f), countOneBits(abs(u_input.c.zwy)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(542f, 1196f)), 1318f, 119f, _wgslsmith_f_op_f32(-223f * -461f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 744f, 255f, -1725f)))))), select(global2.b, select(vec3<bool>(arg_0.c == var_0.x, true, all(vec2<bool>(true, true))), var_0, ~0u != (u_input.c.x | 1u)), true));
    let var_1 = Struct_3(arg_0, select(vec3<bool>(!var_0.x, arg_0.c, _wgslsmith_f_op_f32(sign(307f)) == _wgslsmith_f_op_f32(f32(-1f) * -1762f)), vec3<bool>(!any(var_0), arg_0.c, abs(17516i) >= select(u_input.a, u_input.d.x, true)), all(vec3<bool>(false, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -508f) - _wgslsmith_f_op_f32(f32(-1f) * -757f)), -831f, !var_1.b.x))));
    return var_1.a.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(795f, 897f))), 625f, func_4(func_2(arg_0.c, Struct_2(1000f), vec3<u32>(4294967295u, global2.a.b.x, u_input.c.x), vec4<f32>(-951f, -229f, 1483f, 2027f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-454f + 1567f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f + -122f)) - -2364f)));
    var_0 = _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f))))));
    global2 = Struct_3(func_2(func_4(Struct_1(select(global2.a.a, u_input.c, false), vec3<u32>(arg_2.a.x, u_input.c.x, arg_3), !global2.a.c)), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1924f, -2035f, true))))), vec3<u32>(~_wgslsmith_mod_u32(4207u, 4294967295u), 0u ^ u_input.c.x, firstLeadingBit(arg_2.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1492f, -968f, 1222f, 1406f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(725f, -297f, -1000f, -994f), vec4<f32>(-655f, 483f, -626f, -1467f))))))), global2.b);
    var var_1 = func_2(any(vec3<bool>(false, !any(arg_1.yx), arg_1.x && true)), Struct_2(-1049f), firstLeadingBit(select(u_input.c.xyz & arg_0.a.ywz, abs(select(vec3<u32>(u_input.c.x, arg_3, 31044u), global2.a.b, arg_1.x)), select(select(vec3<bool>(global2.b.x, arg_2.c, false), vec3<bool>(false, true, true), true), !vec3<bool>(true, arg_2.c, false), select(global2.b, vec3<bool>(arg_2.c, arg_1.x, false), arg_0.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(272f, -452f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(800f, 937f))), _wgslsmith_div_f32(-926f, _wgslsmith_f_op_f32(f32(-1f) * -1663f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 580f, -205f, 1593f), vec4<f32>(-775f, 1041f, -1639f, 1080f), arg_1)), vec4<f32>(536f, -402f, -1741f, -1474f), any(vec3<bool>(false, arg_2.c, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1650f, -1298f, 395f, -421f) + vec4<f32>(1797f, -524f, -461f, -1696f))))));
    var var_2 = select(u_input.b, u_input.b, false);
    return 41547u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1017f), -354f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))));
    var var_2 = -1i;
    var var_3 = abs((vec3<u32>(_wgslsmith_mult_u32(global2.a.a.x, 58106u), func_1(global2.a, vec4<bool>(true, true, false, false), Struct_1(global2.a.a, vec3<u32>(u_input.c.x, 0u, 1u), true), global2.a.a.x), global2.a.b.x) | _wgslsmith_add_vec3_u32(u_input.c.yyx, u_input.c.zyx)) >> (~(~global2.a.b | global2.a.a.yzx) % vec3<u32>(32u)));
    let var_4 = (max(global2.a.b.x, ~(var_3.x ^ 4294967295u)) & ~(u_input.c.x | global2.a.a.x)) & (min(abs(1u), ~1u) << (~global2.a.b.x % 32u));
    let var_5 = func_2(u_input.d.x >= -35397i, var_1, ~(~global2.a.a.yxz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, var_1.a, var_0.x, 636f) + vec4<f32>(var_0.x, var_1.a, -481f, 2821f)) + vec4<f32>(var_1.a, -137f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(687f, var_0.x, var_1.a, var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, -101f, var_1.a, var_1.a))))))));
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), var_1.a, !all(vec3<bool>(true, var_5.c, false))))));
    let var_7 = 0i;
    var var_8 = vec3<i32>(~u_input.d.x, _wgslsmith_add_i32(select(-2147483647i, _wgslsmith_mod_i32(countOneBits(u_input.e.x), i32(-1i) * -2147483647i), true), ~(-_wgslsmith_mod_i32(u_input.a, var_7))), -((u_input.b >> (var_4 % 32u)) & 1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zxy, abs(global2.a.a ^ var_5.a), -vec4<i32>(firstTrailingBit(i32(-1i) * -3042i), _wgslsmith_mod_i32(var_8.x, var_7), 2147483647i, u_input.e.x), reverseBits(_wgslsmith_div_vec3_u32(abs(u_input.c.wyw) & vec3<u32>(global2.a.b.x, 0u, 32603u), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_4, var_4, var_5.a.x), u_input.c.wxx))));
}

