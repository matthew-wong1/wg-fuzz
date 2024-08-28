struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_3) -> Struct_4 {
    global0 = array<u32, 22>();
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> vec3<bool> {
    global0 = array<u32, 22>();
    let var_0 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.d, u_input.d)) | arg_3.c.yy, arg_3.c.xz) >= 0i;
    var var_1 = arg_2.a;
    let var_2 = func_1(arg_3.c.yz, func_1(-abs(vec2<i32>(u_input.d, 1i)), Struct_4(arg_2.a.c, arg_1.d, vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c.x, arg_3.c.x, arg_3.c.x), arg_3.c), _wgslsmith_mod_i32(14988i, -5465i), -arg_3.c.x)), Struct_3(arg_1)), Struct_3(Struct_2(all(select(vec2<bool>(var_0, false), vec2<bool>(false, var_1.c.c), var_1.c.c)), func_1(reverseBits(arg_3.c.yz), Struct_4(Struct_1(u_input.a, arg_2.a.b.a, true, arg_2.a.c.d, arg_1.b.e), -1772f, arg_3.c), arg_2).a, arg_1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.a.d * arg_0)))))).a;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(637f, -176f, 1286f, var_1.d) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.d, -1000f, -238f, -355f)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(215f, arg_0, arg_3.b, arg_2.a.b.e.x) - vec4<f32>(-661f, 860f, -619f, arg_2.a.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1402f, 120f, arg_3.b))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(689f, 344f, 1759f, arg_0))))) * vec4<f32>(-680f, 171f, -1033f, -420f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.e.x), arg_3.b, _wgslsmith_f_op_f32(min(-1012f, var_2.e.x)), _wgslsmith_div_f32(var_1.d, 213f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.c.e.x, arg_3.a.e.x, 1000f, arg_2.a.d)))))));
    return select(vec3<bool>(true, true, true), !select(vec3<bool>(all(vec2<bool>(true, true)), var_0, select(var_0, var_2.c, true)), !(!vec3<bool>(true, arg_3.a.c, arg_1.c.c)), !vec3<bool>(arg_2.a.c.c, false, false)), vec3<bool>(false, arg_1.c.c, arg_2.a.a));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4) -> u32 {
    global0 = array<u32, 22>();
    var var_0 = !any(func_3(_wgslsmith_f_op_f32(func_1(vec2<i32>(1i, arg_0), arg_2, Struct_3(Struct_2(arg_1.x, Struct_1(global0[_wgslsmith_index_u32(arg_2.a.b, 22u)], 1u, arg_2.a.c, vec3<u32>(arg_2.a.a, 53884u, 57648u), arg_2.a.e), Struct_1(global0[_wgslsmith_index_u32(1u, 22u)], u_input.b.x, arg_2.a.c, vec3<u32>(arg_2.a.b, global0[_wgslsmith_index_u32(arg_2.a.d.x, 22u)], 92726u), arg_2.a.e), arg_2.a.e.x))).b * -1510f), Struct_2(!arg_1.x, func_1(vec2<i32>(arg_0, 1i), arg_2, Struct_3(Struct_2(arg_2.a.c, Struct_1(45583u, u_input.b.x, arg_1.x, vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 22u)], 112276u, arg_2.a.d.x), arg_2.a.e), Struct_1(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(29685u, 22u)], false, arg_2.a.d, vec3<f32>(-272f, 382f, arg_2.a.e.x)), arg_2.a.e.x))).a, arg_2.a, _wgslsmith_f_op_f32(max(521f, -196f))), Struct_3(Struct_2(arg_2.a.c, Struct_1(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 22u)], true, arg_2.a.d, vec3<f32>(-1000f, 995f, arg_2.a.e.x)), Struct_1(4294967295u, 78063u, arg_2.a.c, arg_2.a.d, arg_2.a.e), 478f)), Struct_4(Struct_1(u_input.b.x, arg_2.a.a, arg_1.x, vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(arg_2.a.a, 22u)]), arg_2.a.e), arg_2.b, arg_2.c >> (vec3<u32>(arg_2.a.d.x, 1u, 17837u) % vec3<u32>(32u)))));
    var var_1 = ~abs(abs(abs(arg_2.c)));
    return ~arg_2.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(304f)), _wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_0.x, 229f)))), var_0.x)));
    global0 = array<u32, 22>();
    var var_1 = u_input.b;
    global0 = array<u32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(func_2(0i, select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), func_1(vec2<i32>(0i, 89185i), Struct_4(Struct_1(u_input.c, 4294967295u, false, vec3<u32>(10897u, 61609u, 38015u), vec3<f32>(292f, -1739f, -852f)), 2510f, vec3<i32>(u_input.d, u_input.d, u_input.d)), Struct_3(Struct_2(true, Struct_1(0u, 1u, false, vec3<u32>(1u, var_1.x, 14428u), vec3<f32>(var_0.x, -546f, var_0.x)), Struct_1(4294967295u, 24624u, true, vec3<u32>(global0[_wgslsmith_index_u32(1u, 22u)], 16410u, var_1.x), vec3<f32>(var_0.x, -1000f, -1953f)), 1000f)))), 1u, ~4294967295u << (1u % 32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1u, u_input.b.x | 0u), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(28744u, 42524u, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<u32>(5042u, 98416u, var_1.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, u_input.c, 10342u))))), var_0.x, vec3<u32>(4294967295u, max(_wgslsmith_mod_u32(u_input.a, var_1.x) >> (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, u_input.c), 22u)] % 32u), func_2(-2147483647i, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), func_1(vec2<i32>(u_input.d, -2147483647i), Struct_4(Struct_1(58749u, u_input.c, true, vec3<u32>(4294967295u, var_1.x, u_input.c), vec3<f32>(-294f, 419f, 832f)), -448f, vec3<i32>(-7357i, u_input.d, -2267i)), Struct_3(Struct_2(true, Struct_1(14290u, 1u, false, vec3<u32>(u_input.b.x, 24309u, global0[_wgslsmith_index_u32(var_1.x, 22u)]), vec3<f32>(var_0.x, var_0.x, var_0.x)), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11576u, 22u)], 22u)], 1u, false, vec3<u32>(27530u, u_input.a, 4294967295u), vec3<f32>(var_0.x, var_0.x, var_0.x)), var_0.x))))), 0u), ~(reverseBits(vec3<u32>(u_input.a, 1u, var_1.x)) | ~(~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 22u)], 20398u))));
}

