struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, true, true, true, false, true, true);

var<private> global1: array<vec2<u32>, 13>;

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: i32) -> f32 {
    global1 = array<vec2<u32>, 13>();
    let var_0 = max(~global1[_wgslsmith_index_u32(u_input.b, 13u)], ~(~_wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], ~vec2<u32>(4294967295u, 32824u))));
    var var_1 = -19248i;
    global1 = array<vec2<u32>, 13>();
    global1 = array<vec2<u32>, 13>();
    return _wgslsmith_f_op_f32(1099f - -342f);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    global0 = array<bool, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-511f, arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1579f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-754f, arg_0.x, 1000f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, arg_0.x, 728f)))))));
    let var_1 = Struct_1(5582i);
    global2 = array<Struct_1, 17>();
    var var_2 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(u_input.b << (arg_2 % 32u), 17u)], all(arg_1.yx), true & arg_1.x, i32(-1i) * -2147483647i)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_0 = vec4<u32>(~u_input.b, 1u, u_input.c, ~(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.b) << (u_input.a % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), 311f, _wgslsmith_f_op_f32(func_2(vec2<f32>(-372f, -1322f), vec3<bool>(arg_0.x, true, arg_0.x), 12483u)), _wgslsmith_f_op_f32(-arg_1.x)))), vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), -378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) + _wgslsmith_f_op_f32(1000f * arg_1.x))), select(!(!vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(46201u, 7u)], false)), vec4<bool>(select(false, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 7u)]), 4294967295u >= var_0.x, any(vec4<bool>(true, true, arg_0.x, arg_0.x)), !global0[_wgslsmith_index_u32(var_0.x, 7u)]), !(!vec4<bool>(true, true, arg_0.x, true)))))));
    var var_2 = select(select(!select(select(vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(12784u, 7u)]), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 7u)], true)), vec3<bool>(true, true, true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, global0[_wgslsmith_index_u32(37706u, 7u)])), vec3<bool>(_wgslsmith_mod_u32(u_input.a, 1u) > u_input.b, (i32(-1i) * -2147483647i) < u_input.d.x, true), all(vec2<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], arg_0.x, false)), 1u >= u_input.a))), !(!vec3<bool>(true, true, arg_0.x)), !vec3<bool>(any(select(arg_0, arg_0, global0[_wgslsmith_index_u32(var_0.x, 7u)])), !select(false, arg_0.x, arg_0.x), true));
    return Struct_1(arg_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!(!vec2<bool>(select(global0[_wgslsmith_index_u32(u_input.a, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)]), !global0[_wgslsmith_index_u32(u_input.a, 7u)])), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1037f, -882f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(496f * _wgslsmith_f_op_f32(1000f - 1111f)), -1498f, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)])) || true))), Struct_1(-18861i), Struct_1(u_input.d.x));
    var var_1 = func_1(vec2<bool>(false, true), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1696f) + _wgslsmith_f_op_f32(-202f + -975f)))), -771f), Struct_1(~var_0.a), Struct_1(reverseBits(~(-29755i) | var_0.a)));
    var var_2 = global0[_wgslsmith_index_u32(~u_input.a, 7u)];
    let var_3 = ~u_input.a;
    global0 = array<bool, 7>();
    var_2 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) - _wgslsmith_f_op_f32(trunc(729f)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1364f, -954f) + 1f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-321f + 162f) + _wgslsmith_f_op_f32(970f * 230f)))) & (_wgslsmith_f_op_f32(func_3(func_1(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 7u)]), vec2<f32>(-1263f, 1095f), Struct_1(-2147483647i), func_1(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 7u)], global0[_wgslsmith_index_u32(var_3, 7u)]), vec2<f32>(-614f, 1000f), global2[_wgslsmith_index_u32(u_input.b, 17u)], Struct_1(10958i))), reverseBits(u_input.d.x) != -5082i, true, 428i)) == _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-899f, 106f), vec2<f32>(-126f, 665f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(825f, 671f)), !vec2<bool>(global0[_wgslsmith_index_u32(var_3, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]))), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 7u)], false), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(0u, 7u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(38100u, 7u)], global0[_wgslsmith_index_u32(83216u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(var_3, 7u)], false), global0[_wgslsmith_index_u32(0u, 7u)])), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(~45780u, ~76165u, 4294967295u, _wgslsmith_mod_u32(var_3, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 87413u, u_input.a, var_3), vec4<u32>(var_3, var_3, 4294967295u, 0u)), ~vec4<u32>(var_3, var_3, u_input.a, 4422u)))), _wgslsmith_f_op_f32(f32(-1f) * -764f), ~(~u_input.d.x));
}

