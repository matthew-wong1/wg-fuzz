struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(1i, 52964i), vec2<i32>(i32(-2147483648), -11659i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-50437i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(1i, 20916i), vec2<i32>(-1i, -1i), vec2<i32>(1i, -20112i), vec2<i32>(-7942i, -5921i), vec2<i32>(1i, 0i), vec2<i32>(-1529i, 71646i), vec2<i32>(2147483647i, -1i), vec2<i32>(87907i, 1914i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, 45678i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, -42686i), vec2<i32>(i32(-2147483648), -33047i), vec2<i32>(46957i, 2147483647i), vec2<i32>(-44266i, 2147483647i), vec2<i32>(-11399i, i32(-2147483648)), vec2<i32>(0i, 42828i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i));

var<private> global1: Struct_2 = Struct_2(Struct_1(23068u));

var<private> global2: array<vec2<f32>, 24>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<bool> {
    return vec3<bool>(arg_1.x, !all(select(!arg_1.xy, vec2<bool>(true, true), false)), false);
}

fn func_2() -> Struct_2 {
    let var_0 = 1i;
    return Struct_2(Struct_1(min(0u, ~1u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = ~vec4<u32>(select(u_input.b.x, 1u, true), global1.a.a, abs(_wgslsmith_mult_u32(u_input.b.x, countOneBits(1198u))), u_input.b.x);
    var var_1 = global0[_wgslsmith_index_u32(min(1u, u_input.c.x), 27u)];
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, 1000f, -1477f, -396f)))))));
    var var_3 = _wgslsmith_div_vec2_u32(abs(select(vec2<u32>(global1.a.a, ~45987u), u_input.c.xy, false)), vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, var_0.x, 0u)), vec3<u32>(u_input.b.x, ~u_input.c.x, _wgslsmith_div_u32(global1.a.a, 35374u)))));
    global1 = Struct_2(func_2().a);
    return vec3<bool>((global1.a.a > ~global1.a.a) == (firstTrailingBit(0i) < var_1.x), true, !select(true, any(vec2<bool>(false, true)), false) & (true || !all(vec2<bool>(false, false))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: i32) -> vec3<bool> {
    let var_0 = u_input.c;
    global2 = array<vec2<f32>, 24>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(-428f * -1571f), _wgslsmith_f_op_f32(1651f - -471f), _wgslsmith_f_op_f32(265f + 1254f))))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1236f)), _wgslsmith_div_f32(357f, -216f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-137f, 1228f)), -1815f, false)), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1072f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(2123f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f * -617f) + _wgslsmith_f_op_f32(trunc(1000f))), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(583f, -781f)) + -112f)));
    global1 = arg_0;
    global0 = array<vec2<i32>, 27>();
    return vec3<bool>(arg_1.x, all(!(!select(vec4<bool>(true, arg_1.x, true, false), vec4<bool>(arg_1.x, false, false, arg_1.x), true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 24>();
    let var_0 = Struct_1(global1.a.a);
    var var_1 = 6878i;
    var_1 = _wgslsmith_dot_vec3_i32(u_input.a, u_input.a);
    var var_2 = select(vec3<bool>(any(vec2<bool>(var_0.a >= u_input.b.x, true)), true, all(vec3<bool>(true, false, false)) != true), select(select(func_1(global1.a, vec3<bool>(false, false, true)), func_1(Struct_1(52562u), vec3<bool>(true, true, true)), func_4(func_2(), func_3(), u_input.a.xx, _wgslsmith_add_i32(2147483647i, u_input.a.x))), select(func_4(Struct_2(Struct_1(92806u)), vec3<bool>(true, true, true), -u_input.a.xz, u_input.a.x), vec3<bool>(true, true, true), func_3()), !vec3<bool>(func_3().x, true, func_3().x)), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true))));
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(~(~global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<i32>(-1i) * -vec2<i32>(60220i, -6317i))), var_3.a.a << (global1.a.a % 32u), vec3<u32>(1u, ~12277u, max(54529u, 4294967295u)) & min(u_input.c.wyw, firstLeadingBit(min(u_input.c.zwy, vec3<u32>(64850u, 4294967295u, u_input.b.x)))), ~(~(~var_0.a)));
}

