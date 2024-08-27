struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(0i, 4585i, 1i, -12453i, -77160i, 13732i, i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: vec4<i32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(~11371u, _wgslsmith_add_u32(1u, ~(~0u)), ~abs(u_input.e.x) & ~arg_0.x);
    global1 = Struct_1(vec3<f32>(-1230f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-550f - -396f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_div_f32(-1247f, global3.x)))), _wgslsmith_f_op_f32(1967f * -181f)));
    global0 = array<i32, 7>();
    global0 = array<i32, 7>();
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(369f, 445f, true))), _wgslsmith_f_op_f32(-global3.x)));
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = select(vec3<bool>(false, all(vec4<bool>(arg_3, arg_3, arg_3, arg_3)) & all(select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_3, false, true), vec3<bool>(false, arg_3, true))), !arg_3), vec3<bool>(true, true, arg_3), !select(vec3<bool>(true, arg_3 || arg_3, true), select(select(vec3<bool>(arg_3, true, true), vec3<bool>(arg_3, false, false), arg_3), vec3<bool>(arg_3, arg_3, false), any(vec2<bool>(false, false))), true));
    var var_1 = !(!vec4<bool>(true, var_0.x, max(arg_1, arg_1) >= _wgslsmith_mult_u32(4294967295u, 0u), true));
    var_1 = !(!vec4<bool>(!var_1.x, !(!var_0.x), true, false));
    global0 = array<i32, 7>();
    global3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a.x))))), global1.a.xx, var_0.x));
    return !(u_input.a <= 1i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = -1i;
    var var_1 = 1u;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x)))) * arg_1.a));
    return u_input.d.x;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = 0i;
    var var_1 = ~func_4(var_0, func_2(~u_input.e.xyw, ~_wgslsmith_div_vec4_i32(vec4<i32>(1i, 0i, 31450i, var_0), vec4<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], 2147483647i, global0[_wgslsmith_index_u32(26437u, 7u)], var_0))), arg_0, any(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, func_3(arg_1, u_input.b, arg_1, true))));
    let var_2 = func_2(u_input.e.xzz, reverseBits(-(~firstTrailingBit(vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 7u)], global2.x, 45504i, var_0)))));
    let var_3 = arg_1;
    var var_4 = vec3<i32>(-1i) * -(~firstLeadingBit(vec3<i32>(0i, u_input.a, 48016i)));
    return all(vec3<bool>((_wgslsmith_f_op_f32(-arg_1.a.x) >= _wgslsmith_f_op_f32(step(291f, arg_1.a.x))) & false, !select(true, all(vec2<bool>(false, false)), func_3(var_2, u_input.b, Struct_1(var_2.a), false)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = Struct_1(global1.a);
    var var_1 = !vec2<bool>(select(select(!var_0, true, var_0), any(vec3<bool>(true, var_0, var_0)), func_1(~u_input.d.x, Struct_1(vec3<f32>(global1.a.x, global1.a.x, 1301f)))), true);
    let var_2 = abs(vec4<i32>(global0[_wgslsmith_index_u32(1u, 7u)], -58348i, global2.x, ~_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.d.x, 7u)], min(0i, global2.x))));
    let var_3 = select(~u_input.e.yyx, abs(vec3<u32>(max(u_input.d.x, u_input.e.x), u_input.e.x, _wgslsmith_add_u32(0u, u_input.d.x))) & select(abs(reverseBits(u_input.e.wyw)), vec3<u32>(~u_input.d.x, 4294967295u, u_input.b), var_0), true);
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(max(vec3<u32>(4294967295u, var_3.x, var_3.x), var_3), abs(vec4<i32>(-40725i, 18567i, -8627i, -69467i))).a.x + 1129f), global3.x)));
}

