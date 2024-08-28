struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(true, true, true, false, false, false, false, true, true, true, true, true, false, true, true, false, true, true, false, false, true, true, true, true, false, true, true, false, false, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> f32 {
    global0 = array<bool, 31>();
    var var_0 = Struct_2(!global0[_wgslsmith_index_u32(u_input.a.x, 31u)], _wgslsmith_f_op_f32(-501f - 367f));
    let var_1 = Struct_2(!(!global0[_wgslsmith_index_u32(~1u, 31u)]), 1125f);
    let var_2 = any(!select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec2<bool>(true, false), var_1.a), vec2<bool>(true, true), true)) == all(vec3<bool>(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 51364u, 6105u, u_input.a.x), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), 31u)], select(var_1.a, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false), all(vec3<bool>(var_1.a, var_1.a, true))), var_0.a, false));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(var_0.b * var_3.b)))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2958f, 145f))))) * -736f)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)), _wgslsmith_f_op_f32(round(-1599f)), false));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-998f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1757f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -345f)), _wgslsmith_f_op_f32(f32(-1f) * -103f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * -2377f));
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(abs(firstTrailingBit(u_input.a.x | 1u)), 31u)], true), !select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(27346u, 31u)], global0[_wgslsmith_index_u32(18882u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(true, true, true), false), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(28921u, 31u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(56588u, 31u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 31u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(34563u, 31u)]))), vec3<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true, true)), true, true), all(vec3<bool>(true, false, false))));
    return _wgslsmith_f_op_f32(f32(-1f) * -238f);
}

fn func_1() -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(102043u, 31u)];
    var var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = Struct_2((all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true, global0[_wgslsmith_index_u32(12591u, 31u)])) && !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36869u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 53221u, u_input.a.x, 4294967295u)), 31u)]) != (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-637f))) < 476f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -770f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(363f)) - -824f))));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-2147483647i, -2147483647i)) << (~u_input.a.xx % vec2<u32>(32u)), -firstLeadingBit(vec2<i32>(0i, -1i)))), vec3<i32>(19167i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 22982i), vec2<i32>(-18409i, 29130i))) | ~(-1i), ~(-1i & firstTrailingBit(-4382i))));
    global0 = array<bool, 31>();
    return u_input.a.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -10303i;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32((u_input.a.x ^ u_input.a.x) | u_input.a.x, u_input.a.x), 31u)];
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(func_2());
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -162f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(646f, _wgslsmith_f_op_f32(max(481f, 937f)))))) - 1139f);
    var_3 = _wgslsmith_f_op_f32(-1f);
    var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(reverseBits(19178u)), _wgslsmith_div_u32(4294967295u, var_2.x)), vec2<u32>(6329u, 1u));
    global0 = array<bool, 31>();
    var var_4 = Struct_1(countOneBits(27944i));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~_wgslsmith_sub_i32(var_4.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_4.a, 17094i), _wgslsmith_mult_vec2_i32(vec2<i32>(var_4.a, 25489i), vec2<i32>(-20151i, 18939i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1085f), 1f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1091f, 168f), vec2<f32>(1000f, 586f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2170f, -1212f) - vec2<f32>(252f, 477f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-234f, -1870f) * vec2<f32>(975f, -1328f))))), vec2<f32>(380f, _wgslsmith_f_op_f32(max(1342f, -256f))))));
}

