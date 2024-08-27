struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<vec4<i32>, 29> = array<vec4<i32>, 29>(vec4<i32>(-53559i, -1i, 15110i, -1i), vec4<i32>(41646i, 52661i, 4184i, i32(-2147483648)), vec4<i32>(0i, -29077i, 18270i, -1i), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), 2147483647i), vec4<i32>(8894i, 1162i, 2147483647i, 17318i), vec4<i32>(-1i, 2147483647i, -1i, -1i), vec4<i32>(38494i, 50785i, 0i, 24508i), vec4<i32>(2147483647i, 31491i, -13073i, -24125i), vec4<i32>(1i, 25422i, i32(-2147483648), -5751i), vec4<i32>(2147483647i, 2147483647i, 0i, 1i), vec4<i32>(i32(-2147483648), -43663i, 2147483647i, -33737i), vec4<i32>(1i, 19999i, -1i, 1i), vec4<i32>(-8982i, -1i, 0i, 1i), vec4<i32>(42271i, -26518i, -1i, 0i), vec4<i32>(2147483647i, 37436i, -31975i, -26641i), vec4<i32>(1i, -11661i, -41478i, 43515i), vec4<i32>(29021i, -17951i, -1i, -1i), vec4<i32>(0i, -1i, 1i, -9295i), vec4<i32>(i32(-2147483648), -40513i, -1i, 20860i), vec4<i32>(0i, 0i, 2147483647i, -24432i), vec4<i32>(-89710i, 2147483647i, -1i, -42716i), vec4<i32>(2147483647i, i32(-2147483648), 1i, 0i), vec4<i32>(12263i, -23126i, 0i, i32(-2147483648)), vec4<i32>(-1i, 2147483647i, -1i, 0i), vec4<i32>(-1i, 2147483647i, -2767i, 2147483647i), vec4<i32>(-41900i, 27685i, 1798i, 1i), vec4<i32>(-16626i, -24679i, 23021i, 12057i), vec4<i32>(1i, 38738i, 0i, -1i), vec4<i32>(57706i, 1i, i32(-2147483648), 1i));

var<private> global2: Struct_4 = Struct_4(vec2<bool>(false, false));

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: Struct_3 = Struct_3(vec2<bool>(false, false));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-993f - _wgslsmith_f_op_f32(max(-1316f, _wgslsmith_f_op_f32(197f + 768f)))) + _wgslsmith_f_op_f32(f32(-1f) * -288f)) - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1380f + -1701f)));
    let var_1 = true | ((min(15220u, abs(u_input.a)) == ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) != (!select(global3.x, global2.a.x, false) | false));
    var var_2 = Struct_4(!select(vec2<bool>(true, all(vec4<bool>(true, true, global4.a.x, global3.x))), !global4.a, global2.a.x));
    var var_3 = u_input.a;
    var_2 = Struct_4(!select(select(select(global4.a, global4.a, var_2.a), vec2<bool>(false, false), !var_2.a), vec2<bool>(true, true), any(vec4<bool>(false, false, true, var_2.a.x))));
    return (~(~1u) ^ ~select(max(32347u, 0u), u_input.a, any(global4.a))) >> (u_input.a % 32u);
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global0 = array<vec4<i32>, 20>();
    let var_0 = func_3();
    var var_1 = select(!global2.a, vec2<bool>(0u != _wgslsmith_mod_u32(arg_0, ~0u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -243f), -1666f)) >= _wgslsmith_f_op_f32(min(825f, -2399f))), global2.a);
    var var_2 = false;
    global1 = array<vec4<i32>, 29>();
    return ~(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(8005u, var_0)), vec2<u32>(1u, 1u)), ~abs(vec2<u32>(4294967295u, u_input.a))) << (vec2<u32>(43241u, u_input.a) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-428f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-943f, -251f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-986f)))))) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1025f, -1000f), _wgslsmith_f_op_f32(min(1515f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(527f, 1520f) * _wgslsmith_f_op_f32(abs(-1173f))))), true)));
    global1 = array<vec4<i32>, 29>();
    let var_1 = vec2<bool>(!arg_0.x, all(select(vec4<bool>(true, false, true, global3.x), !(!vec4<bool>(global4.a.x, global2.a.x, arg_0.x, global4.a.x)), select(vec4<bool>(true, true, global4.a.x, true), !vec4<bool>(true, global2.a.x, true, global3.x), vec4<bool>(global4.a.x, arg_0.x, global2.a.x, arg_0.x)))));
    let var_2 = true || var_1.x;
    var var_3 = func_2(4294967295u);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 29>();
    var var_0 = vec3<i32>(-13445i, func_1(!global2.a, global0[_wgslsmith_index_u32(u_input.a, 20u)]) << (0u % 32u), u_input.c);
    global3 = !global4.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1247f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-555f - 995f), _wgslsmith_f_op_f32(f32(-1f) * -802f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1443f, -397f, -1553f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1047f, -700f, -2137f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-145f, -1074f, -704f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-323f, 1f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), u_input.a ^ 23849u);
    var var_2 = select(global4.a, !global2.a, select(vec2<bool>(true, any(select(vec2<bool>(global4.a.x, true), vec2<bool>(global3.x, false), vec2<bool>(global4.a.x, true)))), vec2<bool>(true, reverseBits(u_input.b) != -1i), global2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e);
}

