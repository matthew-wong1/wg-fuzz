struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(-1143f), Struct_1(-372f), Struct_1(1281f), Struct_1(-871f), Struct_1(436f), Struct_1(1000f), Struct_1(-1000f), Struct_1(343f), Struct_1(1885f), Struct_1(-659f), Struct_1(-1402f), Struct_1(2716f), Struct_1(357f), Struct_1(-871f), Struct_1(119f), Struct_1(461f), Struct_1(-882f), Struct_1(1599f), Struct_1(304f), Struct_1(1685f), Struct_1(367f), Struct_1(-1000f), Struct_1(-112f), Struct_1(-1783f), Struct_1(822f));

var<private> global2: array<f32, 18> = array<f32, 18>(-2079f, -482f, -2167f, 192f, 269f, -365f, 339f, 202f, -803f, 1210f, 1856f, -693f, -241f, 461f, 160f, 1246f, -139f, 842f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3) -> bool {
    return false;
}

fn func_2() -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(1u, 25u)];
    var var_1 = reverseBits(u_input.b);
    var var_2 = func_3(-923f, -995f, Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f - global2[_wgslsmith_index_u32(43063u, 18u)]))), global1[_wgslsmith_index_u32(global0.x, 25u)], ~global0.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(493f, var_0.a))), vec2<f32>(-1733f, global2[_wgslsmith_index_u32(u_input.d, 18u)])))));
    var_1 = u_input.c.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(-var_0.a), func_3(333f, -135f, Struct_3(Struct_1(global2[_wgslsmith_index_u32(0u, 18u)]), Struct_1(var_0.a), u_input.a, vec2<f32>(global2[_wgslsmith_index_u32(86689u, 18u)], 1218f))))) - var_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -358f)))))) + var_0.a);
    return !(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> vec2<bool> {
    var var_0 = -u_input.c;
    global2 = array<f32, 18>();
    var var_1 = -1403f;
    let var_2 = Struct_1(arg_2);
    var var_3 = 1i;
    return !func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(u_input.d, global0.x, u_input.a, u_input.d), vec4<u32>(1u, global0.x, global0.x, global0.x)), ~(~vec4<u32>(65116u, u_input.d, 77742u, global0.x))), 18u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 18u)] * global2[_wgslsmith_index_u32(31118u, 18u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 18u)] * -1094f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global0.x, 18u)]))))));
    var var_1 = true;
    var var_2 = all(func_1(Struct_1(-1708f), max(vec3<i32>(12263i, u_input.b, 0i), u_input.c >> (vec3<u32>(0u, 0u, global0.x) % vec3<u32>(32u))), var_0)) & true;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(u_input.d | global0.x, reverseBits(u_input.a)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0.x), _wgslsmith_mult_vec2_u32(global0.zy, vec2<u32>(u_input.d, u_input.a))) % vec2<u32>(32u))), global0.xy, ~(-firstLeadingBit(~0i)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x, u_input.d, 20723u) << (~vec3<u32>(global0.x, 33831u, 4294967295u) % vec3<u32>(32u)), ~reverseBits(vec3<u32>(41030u, u_input.a, 0u))), vec4<f32>(1854f, -1631f, _wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-368f + var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 18u)], 1631f) - _wgslsmith_div_f32(250f, -897f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f + var_0)))));
}

