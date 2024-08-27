struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-256f, 172f);

var<private> global1: array<bool, 25>;

var<private> global2: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(2147483647i, -6488i, -1i, -38926i), vec4<i32>(8492i, 2147483647i, 0i, 0i), vec4<i32>(29071i, 0i, 0i, 1i), vec4<i32>(-35915i, -22185i, 1i, 10321i), vec4<i32>(0i, -48961i, 0i, i32(-2147483648)), vec4<i32>(0i, -46765i, 2147483647i, 1i), vec4<i32>(i32(-2147483648), 1i, 53814i, 39883i), vec4<i32>(2147483647i, -30134i, 2147483647i, -1i), vec4<i32>(18955i, i32(-2147483648), -34108i, i32(-2147483648)), vec4<i32>(1i, 1i, 7029i, 1i), vec4<i32>(1i, i32(-2147483648), -32580i, 2147483647i), vec4<i32>(1i, 1i, 0i, 1i), vec4<i32>(-59823i, 2147483647i, 49414i, 0i), vec4<i32>(-13000i, 35249i, i32(-2147483648), -9240i), vec4<i32>(-38101i, 0i, 65066i, -28912i), vec4<i32>(-25506i, -11318i, 4296i, -23795i), vec4<i32>(-40693i, -27214i, 0i, 2147483647i), vec4<i32>(9375i, -16310i, 14403i, -1i), vec4<i32>(-13019i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(i32(-2147483648), -1i, 4272i, 0i), vec4<i32>(i32(-2147483648), 14647i, 50196i, 20551i), vec4<i32>(i32(-2147483648), 40965i, -37620i, 0i), vec4<i32>(22783i, i32(-2147483648), 2147483647i, -2201i), vec4<i32>(119695i, 0i, 1i, -48888i), vec4<i32>(0i, -45694i, 2147483647i, -24203i), vec4<i32>(-1i, 1i, -1i, 2147483647i), vec4<i32>(-26150i, 0i, 31181i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -62946i, i32(-2147483648)), vec4<i32>(-1i, 9357i, -18886i, 1i), vec4<i32>(46621i, -1388i, 2147483647i, -13479i), vec4<i32>(23219i, -28756i, i32(-2147483648), -2688i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 15893i));

var<private> global3: u32 = 43496u;

var<private> global4: array<vec4<i32>, 19>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global0.x - -1399f), _wgslsmith_f_op_f32(880f - global0.x)))))), !vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x >> ((arg_1.x ^ u_input.a.x) % 32u), 25u)], false, false, -u_input.b.x < _wgslsmith_mult_i32(u_input.b.x, -13493i)), arg_0.x, _wgslsmith_mult_u32(arg_1.x, u_input.a.x), -130f);
    let var_1 = Struct_2(~abs(u_input.b.x & (i32(-1i) * -41017i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(2024f)))), var_0);
    let var_2 = !(!vec2<bool>(!var_0.b.x || true, global1[_wgslsmith_index_u32(abs(4294967295u), 25u)] || true));
    global2 = array<vec4<i32>, 32>();
    var var_3 = 481f;
    return Struct_2(-86860i, _wgslsmith_f_op_f32(exp2(var_0.e)), var_0);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = select(!vec3<bool>(arg_1.x, all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 25u)])), global1[_wgslsmith_index_u32(1u, 25u)] & (global1[_wgslsmith_index_u32(u_input.a.x, 25u)] & false)), vec3<bool>(arg_1.x, true, all(!vec3<bool>(false, arg_0, false))), !(!vec3<bool>(arg_1.x, true, all(arg_1))));
    let var_1 = ~u_input.c;
    var var_2 = func_2(!select(!(!vec3<bool>(true, var_0.x, arg_1.x)), vec3<bool>(arg_0, false, false), !(false & arg_0)), u_input.a);
    let var_3 = true;
    let var_4 = 53853u;
    return _wgslsmith_f_op_vec2_f32(-var_2.c.a);
}

fn func_3() -> vec2<u32> {
    var var_0 = func_2(!func_2(!(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 25u)])), vec2<u32>(~22484u, 4294967295u | u_input.c)).c.b.yxw, ~firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.a.x, 1310u)), _wgslsmith_clamp_u32(109862u, 1u, 6179u)))).c;
    var_0 = func_2(vec3<bool>(any(var_0.b.xy), !((global1[_wgslsmith_index_u32(u_input.a.x, 25u)] || global1[_wgslsmith_index_u32(1380u, 25u)]) || any(vec4<bool>(true, var_0.b.x, false, var_0.c))), all(vec2<bool>(!var_0.b.x, true))), u_input.a).c;
    var_0 = Struct_1(var_0.a, var_0.b, var_0.b.x, 4294967295u, _wgslsmith_f_op_f32(abs(var_0.a.x)));
    let var_1 = firstLeadingBit(min(~vec4<u32>(min(u_input.a.x, u_input.a.x), u_input.a.x & var_0.d, 74880u, var_0.d), abs(vec4<u32>(10284u, 4294967295u, var_0.d, u_input.a.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 54808u, u_input.c, u_input.c), vec4<u32>(var_0.d, 71441u, u_input.c, var_0.d)) % vec4<u32>(32u)))));
    var var_2 = select(vec2<bool>(func_2(!(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(var_1.x, 25u)])), min(vec2<u32>(1u, u_input.a.x), reverseBits(vec2<u32>(1u, var_1.x)))).c.b.x, true), vec2<bool>(all(vec3<bool>(!var_0.b.x, select(global1[_wgslsmith_index_u32(1u, 25u)], false, false), global1[_wgslsmith_index_u32(~1u, 25u)])), var_0.c), false);
    return reverseBits(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec2_f32(func_1(true, vec2<bool>(firstTrailingBit(~(-28813i)) <= _wgslsmith_sub_i32(firstTrailingBit(-57407i), _wgslsmith_sub_i32(u_input.b.x, -81849i)), true)));
    global1 = array<bool, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_i32(-837i, abs(u_input.b.x))), ~func_3());
}

