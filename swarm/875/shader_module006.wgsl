struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 15>;

var<private> global1: array<vec3<i32>, 4>;

var<private> global2: array<vec4<i32>, 5>;

var<private> global3: array<Struct_5, 13>;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.c.zy, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, arg_1.c.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.c.xy, arg_1.c.xy)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-719f, arg_1.c.x) + arg_1.c.xx))))));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.a;
    global2 = array<vec4<i32>, 5>();
    global1 = array<vec3<i32>, 4>();
    global3 = array<Struct_5, 13>();
    let var_1 = arg_0;
    return vec2<bool>(all(select(vec3<bool>(all(vec2<bool>(true, false)), 369f < var_0.x, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true))), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> bool {
    global2 = array<vec4<i32>, 5>();
    global0 = array<u32, 15>();
    var var_0 = Struct_3(Struct_1(!select(func_3(Struct_2(arg_1.a)), select(vec2<bool>(false, false), vec2<bool>(false, true), true), func_3(arg_1)), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), !func_3(arg_1).x), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))))));
    global1 = array<vec3<i32>, 4>();
    global2 = array<vec4<i32>, 5>();
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global4.x, 15u)], 43758u, 33983u, 46865u), vec4<u32>(u_input.a, 20502u, global0[_wgslsmith_index_u32(3130u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)])))), reverseBits(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 22027u, 7098u, global0[_wgslsmith_index_u32(arg_0.x, 15u)]), vec4<u32>(arg_0.x, global4.x, arg_0.x, global4.x), vec4<u32>(7686u, u_input.a, global0[_wgslsmith_index_u32(23628u, 15u)], u_input.a))))) >= 17536u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), all(vec4<bool>(func_2(vec3<u32>(u_input.a, global4.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.x, 15u)], 15u)]), func_1(vec4<bool>(false, false, true, true), Struct_1(vec2<bool>(false, false), vec4<bool>(false, false, false, false), vec3<f32>(2081f, 151f, -543f)), Struct_3(Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, true), vec3<f32>(-690f, 1258f, 2416f))))), true, true, false)), true, true);
    var var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(67454u, 15u)], global4.x, 0u, u_input.a) | ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 15u)], 15u)], 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], 0u), ~select(vec4<u32>(1u, global4.x, 1u, 41483u), vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 15u)], 32207u), var_0)), ~(global4.x | ~global4.x), global0[_wgslsmith_index_u32(1u, 15u)]) >> (u_input.a % 32u);
    global3 = array<Struct_5, 13>();
    var var_2 = vec3<bool>(select(var_0.x, any(!(!vec4<bool>(var_0.x, var_0.x, true, false))), all(select(vec3<bool>(false, var_0.x, var_0.x), var_0.xyy, true))), func_2(~firstTrailingBit(select(vec3<u32>(34980u, global4.x, global0[_wgslsmith_index_u32(global4.x, 15u)]), vec3<u32>(823u, u_input.a, global4.x), vec3<bool>(false, true, true))), func_1(var_0, Struct_1(!var_0.yz, !vec4<bool>(var_0.x, false, true, var_0.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-960f, -522f, -440f)))), Struct_3(Struct_1(var_0.wz, vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec3<f32>(-759f, -800f, -406f))))), any(!(!var_0.yyw)));
    let var_3 = select(select(vec3<bool>(false, 0u > u_input.a, !var_0.x), !(!select(vec3<bool>(true, var_0.x, var_2.x), var_0.zzy, var_0.xwy)), true), select(vec3<bool>((0u >> (global4.x % 32u)) == 1u, var_2.x, var_2.x), !var_0.www, select(vec3<bool>(all(vec4<bool>(false, var_0.x, var_2.x, var_2.x)), !var_0.x, var_2.x), vec3<bool>(select(true, var_2.x, var_2.x), !var_0.x, !var_0.x), !var_0.zzy)), true || (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(4294967295u, global4.x, 1u)) >= (u_input.a >> (select(u_input.a, u_input.a, var_0.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(-2147483647i)));
}

