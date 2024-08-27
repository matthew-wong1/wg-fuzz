struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec4<bool>, 26>;

var<private> global3: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(-1000f, -1000f, 1635f), vec3<f32>(2695f, 1000f, 1105f), vec3<f32>(-1618f, 192f, -277f), vec3<f32>(193f, 745f, 1327f), vec3<f32>(-2434f, -363f, 1121f), vec3<f32>(2205f, 1618f, -711f), vec3<f32>(-1752f, 1002f, 111f), vec3<f32>(-1000f, -1891f, 108f), vec3<f32>(1450f, 753f, 858f), vec3<f32>(550f, 333f, 181f), vec3<f32>(-410f, 1000f, -1061f), vec3<f32>(902f, -632f, 1637f), vec3<f32>(1180f, -708f, -659f), vec3<f32>(845f, -132f, 133f), vec3<f32>(-264f, 1410f, -1200f), vec3<f32>(-692f, 991f, -628f), vec3<f32>(-1685f, -736f, 137f), vec3<f32>(-612f, -146f, -1161f), vec3<f32>(701f, 127f, -724f), vec3<f32>(1590f, 230f, 1079f), vec3<f32>(-733f, 1337f, 1000f), vec3<f32>(267f, -952f, 460f), vec3<f32>(1239f, 517f, -934f), vec3<f32>(-1103f, 1200f, -524f), vec3<f32>(-584f, 516f, 799f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> u32 {
    global2 = array<vec4<bool>, 26>();
    global1 = array<Struct_1, 13>();
    var var_0 = ~(-24492i);
    var_0 = 1i;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 13u)];
    return 4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -867f)))), (46568u >> (~_wgslsmith_mult_u32(arg_3.b.x, 3018u) % 32u)) <= ~(~(~arg_3.b.x))));
    let var_1 = 390f;
    global2 = array<vec4<bool>, 26>();
    let var_2 = arg_0;
    global0 = global3[_wgslsmith_index_u32(4294967295u, 25u)];
    return arg_3;
}

fn func_3() -> f32 {
    let var_0 = vec3<i32>(-2147483647i, -66655i, -_wgslsmith_mod_i32(~1i, 2147483647i));
    let var_1 = ~abs(~vec3<u32>(~0u, u_input.a, ~u_input.a));
    var var_2 = Struct_1(all(vec2<bool>(!(u_input.a < u_input.a), any(global2[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_clamp_vec2_u32(vec2<u32>(14078u, 15038u), var_1.xz & vec2<u32>(var_1.x, ~18559u), var_1.zx));
    global2 = array<vec4<bool>, 26>();
    let var_3 = func_2(func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(_wgslsmith_sub_u32(var_2.b.x, var_2.b.x), ~0u, 69516u == var_1.x), ~u_input.a), 13u)], firstLeadingBit(firstTrailingBit(func_1())), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -473f, global0.x, global0.x) * vec4<f32>(-103f, -2156f, -799f, global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1783f, global0.x, -219f, global0.x))), Struct_1(all(select(vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(false, true, true), vec3<bool>(var_2.a, var_2.a, false))), vec2<u32>(68768u, _wgslsmith_mult_u32(29553u, 29637u)))), ~var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-1128f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_div_f32(-169f, global0.x))), -857f, -222f)), func_2(Struct_1(false & any(vec3<bool>(false, var_2.a, false)), countOneBits(vec2<u32>(17803u, 1u) ^ vec2<u32>(4294967295u, var_2.b.x))), _wgslsmith_mod_u32(max(var_1.x, 7942u) ^ ~0u, 23119u), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), global0.x, -1440f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x))), Struct_1(true, vec2<u32>(u_input.a, u_input.a) << (_wgslsmith_mult_vec2_u32(var_2.b, var_1.yy) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -1297f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(707f, 138f)) + -743f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(global1[_wgslsmith_index_u32(1u, 13u)], ~1u, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(1348f - 1405f), -495f))))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(1u, ~u_input.a), (u_input.a << ((0u & u_input.a) % 32u)) & ~16091u, abs(~func_1())), 13u)]);
    var var_1 = true;
    var_1 = true;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -333f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-793f, global0.x, 1253f, 133f))))));
    let var_3 = Struct_1(all(select(!vec3<bool>(var_0.a, true, false), select(select(vec3<bool>(false, true, var_0.a), vec3<bool>(false, false, var_0.a), vec3<bool>(true, true, var_0.a)), select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, false, var_0.a), vec3<bool>(false, false, false)), !vec3<bool>(var_0.a, true, false)), var_0.a)), _wgslsmith_clamp_vec2_u32(select(abs(var_0.b), select(var_0.b, vec2<u32>(var_0.b.x, 18753u), !var_0.a), select(select(vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, false), var_0.a), vec2<bool>(var_0.a, var_0.a), true)), vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.b | vec2<u32>(4294967295u, u_input.a), vec2<u32>(var_0.b.x, 1u) >> (var_0.b % vec2<u32>(32u))), u_input.a), vec2<u32>(1u, var_0.b.x)));
    let var_4 = 0i;
    var var_5 = vec4<i32>(var_4, i32(-1i) * -firstTrailingBit(firstTrailingBit(var_4)), -37826i, -(1i | _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-31373i, -2147483647i, -2147483647i)), vec3<i32>(2207i, 1i, 790i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_2.x)), 485f, _wgslsmith_div_f32(global0.x, -1226f), var_2.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-291f, 1613f, var_2.x, global0.x), vec4<f32>(var_2.x, -726f, var_2.x, -1190f)))))), abs(-abs(_wgslsmith_mod_i32(-1i, 31407i))));
}

