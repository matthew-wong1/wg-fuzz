struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-5916i, 2147483647i, 0i, 4196i, 43698i, 8463i, 12605i, 0i, i32(-2147483648), 125214i, -13932i, 0i, 9164i, 1i, -1i, i32(-2147483648), 1i, 0i, -38035i, 2147483647i, -828i, i32(-2147483648), -24824i, -47511i);

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)));

var<private> global2: array<bool, 5> = array<bool, 5>(true, true, true, true, true);

var<private> global3: array<f32, 22> = array<f32, 22>(-597f, 1010f, 397f, 1681f, 1587f, 558f, -622f, -1467f, -1727f, -511f, 1293f, -294f, 1674f, 629f, -950f, -176f, -309f, -274f, -483f, -243f, 1000f, 1317f);

var<private> global4: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(-23381i, 1i, 0i, 1i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> f32 {
    global3 = array<f32, 22>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~45556u, 22u)]), 1815f, all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 5u)], true), vec2<bool>(global2[_wgslsmith_index_u32(33979u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), false)))), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~5840u & max(u_input.b, 106760u), 22u)] + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), global3[_wgslsmith_index_u32(~46597u, 22u)])))))));
}

fn func_2() -> f32 {
    global3 = array<f32, 22>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 22u)]), global3[_wgslsmith_index_u32(~u_input.b, 22u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(-1047f, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], -478f), -66612i)) + _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(u_input.b, 22u)]))), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c.xzz, vec3<u32>(u_input.b, u_input.c.x, u_input.b)), 23599u), 22u)], _wgslsmith_f_op_f32(-1540f * 137f)))));
    let var_1 = (~vec2<u32>(u_input.b, 14439u) ^ vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(8320u, 4294967295u, 68725u), vec3<u32>(u_input.b, 205u, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 55286u) << (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u)), ~u_input.c.yx))) ^ u_input.c.wz;
    let var_2 = global1[_wgslsmith_index_u32(30305u >> (u_input.b % 32u), 29u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-318f, _wgslsmith_f_op_f32(700f * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 765f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1619f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -1000f)), var_0.x) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2164f, -914f)), vec2<f32>(-129f, var_0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(var_1.x, 22u)], 626f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global3[_wgslsmith_index_u32(0u, 22u)]));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4) -> u32 {
    var var_0 = _wgslsmith_add_u32(u_input.c.x, u_input.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -1209f), _wgslsmith_f_op_f32(func_2())))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_1.b, arg_1.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.b)) * _wgslsmith_div_vec3_f32(arg_0.b, arg_0.b)))) - vec3<f32>(var_1, _wgslsmith_f_op_f32(func_2()), global3[_wgslsmith_index_u32(u_input.b, 22u)]));
    let var_3 = -1i;
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(arg_1.b.zz))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<u32>(4294967295u, 4294967295u, ~39918u, u_input.b) ^ min(vec4<u32>(u_input.b, func_1(Struct_4(-1262f, vec3<f32>(-571f, global3[_wgslsmith_index_u32(25146u, 22u)], 1845f), 1u, global4[_wgslsmith_index_u32(u_input.c.x, 1u)], false), Struct_4(-581f, vec3<f32>(1000f, -843f, 1193f), u_input.c.x, global4[_wgslsmith_index_u32(73694u, 1u)], true)), ~19962u, select(u_input.c.x, 0u, true)), firstTrailingBit(~u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -788f))));
    var var_2 = 0i;
    global3 = array<f32, 22>();
    global4 = array<vec4<i32>, 1>();
    var_2 = -1i;
    let var_3 = vec2<bool>(global2[_wgslsmith_index_u32(u_input.b << (_wgslsmith_sub_u32(59164u, ~(u_input.c.x | 2791u)) % 32u), 5u)], all(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(false, true)), true), all(vec4<bool>(global2[_wgslsmith_index_u32(1117u, 5u)], true, global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(u_input.b, 5u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d);
}

