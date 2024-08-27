struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
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

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(376f, -1000f, -1980f));

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(-2029f, -1389f, 190f)));

var<private> global3: array<vec4<u32>, 27>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    let var_0 = u_input.c.wx;
    var var_1 = arg_1.a;
    return 33733i;
}

fn func_1() -> Struct_1 {
    global3 = array<vec4<u32>, 27>();
    let var_0 = 176f;
    let var_1 = all(!vec4<bool>(true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), true));
    let var_2 = 391f;
    let var_3 = min(-max(countOneBits(-vec4<i32>(2735i, -14617i, u_input.b, u_input.b)), vec4<i32>(reverseBits(u_input.b), ~3697i, 1i ^ u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(0i, u_input.b)))), vec4<i32>(_wgslsmith_mod_i32(u_input.b, abs(u_input.b)) & func_2(~1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.a, 0u), u_input.c.zzw), 3u)], select(vec3<bool>(false, var_1, false), vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, false)), var_1), ~(-58388i), _wgslsmith_mult_i32(0i, u_input.b), _wgslsmith_mod_i32(u_input.b, 2147483647i)));
    return global2[_wgslsmith_index_u32(u_input.c.x, 1u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    let var_0 = countOneBits(-_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(-11688i, 2147483647i, u_input.b, -2147483647i)), min(vec4<i32>(-1i, u_input.b, u_input.b, -2147483647i), -vec4<i32>(36021i, 0i, u_input.b, u_input.b))));
    let var_1 = select(vec3<bool>(false, true, all(vec2<bool>(true, true))), !(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false))), true);
    global2 = array<Struct_1, 1>();
    var var_2 = var_0.x;
    let var_3 = func_1();
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, -651f, -1131f, -1233f), vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x) - vec4<f32>(global1.a.x, -450f, global1.a.x, global1.a.x)))), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x * 1000f), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), 349f) + vec4<f32>(-579f, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), -843f))));
    var var_1 = u_input.c.xxx;
    global3 = array<vec4<u32>, 27>();
    var var_2 = var_0;
    let var_3 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

