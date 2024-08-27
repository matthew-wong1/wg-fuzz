struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: array<f32, 16> = array<f32, 16>(-995f, 728f, -254f, -1228f, 846f, -307f, -480f, 909f, 1469f, 168f, -2226f, -1000f, 576f, 291f, -517f, -807f);

var<private> global1: array<f32, 2>;

var<private> global2: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(i32(-2147483648), -15965i, -1i, i32(-2147483648)), vec4<i32>(12844i, 50711i, 0i, 36541i), vec4<i32>(-943i, 1i, 3982i, 10574i), vec4<i32>(2147483647i, 1i, 2147483647i, -6525i), vec4<i32>(38192i, 54992i, -49790i, 0i), vec4<i32>(34855i, 0i, 0i, 2147483647i), vec4<i32>(2147483647i, 2147483647i, -1i, -1i), vec4<i32>(-1i, -16790i, i32(-2147483648), 9784i), vec4<i32>(-4106i, 1365i, 30165i, 36440i), vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, -1i), vec4<i32>(0i, 1i, 32476i, 5906i), vec4<i32>(-1i, 0i, 0i, -42684i), vec4<i32>(13126i, 52291i, 1825i, 0i), vec4<i32>(1i, 2155i, -44601i, -38031i), vec4<i32>(-1i, -1i, -1i, 2147483647i), vec4<i32>(2147483647i, -4449i, -1i, i32(-2147483648)), vec4<i32>(-15676i, 2147483647i, -1565i, 0i), vec4<i32>(0i, -1i, 2147483647i, -1i), vec4<i32>(-16926i, 1i, 5168i, 2147483647i), vec4<i32>(-1i, -28856i, 17778i, 1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -25716i), vec4<i32>(-26258i, 24233i, -52767i, 2147483647i), vec4<i32>(-16628i, 2147483647i, 53336i, -1i), vec4<i32>(0i, 34145i, -70191i, -1i), vec4<i32>(1i, -11095i, 1i, -2766i), vec4<i32>(i32(-2147483648), i32(-2147483648), -30141i, 1i), vec4<i32>(1i, -227i, 0i, 0i));

var<private> global3: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<i32> {
    return vec2<i32>(max(max(max(-1i, 43453i << (0u % 32u)), abs(2147483647i)), ~(-15244i)), arg_0.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(40128u, 2u)], global1[_wgslsmith_index_u32(87331u, 2u)]), vec3<f32>(-2248f, -1000f, global0[_wgslsmith_index_u32(0u, 16u)]))) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -414f, arg_0))))))));
    var var_1 = vec2<i32>(u_input.a, 40026i << (1u % 32u));
    let var_2 = var_0.a.x;
    var_1 = func_3(_wgslsmith_clamp_vec3_i32(countOneBits(-_wgslsmith_add_vec3_i32(vec3<i32>(47258i, -41331i, 13981i), vec3<i32>(-23006i, -66424i, u_input.a))), -(vec3<i32>(4431i, -43176i, u_input.a) ^ vec3<i32>(u_input.b.x, -3715i, -64444i)), u_input.b), Struct_1(var_0.a));
    var_1 = vec2<i32>(-33948i, 38769i);
    return Struct_1(var_0.a);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(global1[_wgslsmith_index_u32(~1u, 2u)]);
    global2 = array<vec4<i32>, 27>();
    global0 = array<f32, 16>();
    var var_1 = 0u;
    let var_2 = _wgslsmith_mult_i32(u_input.a, (_wgslsmith_mod_i32(_wgslsmith_mod_i32(-37537i, u_input.b.x), i32(-1i) * -47027i) | -_wgslsmith_mod_i32(u_input.a, -5858i)) | u_input.a);
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = func_1();
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~(~4294967295u), reverseBits(1u), 4294967295u, firstTrailingBit(~20031u))), ~0u, 1u);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(u_input.b.x, 1i, func_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], -1000f) + vec3<f32>(749f, global1[_wgslsmith_index_u32(61595u, 2u)], global0[_wgslsmith_index_u32(1u, 16u)])) - vec3<f32>(global0[_wgslsmith_index_u32(14953u, 16u)], -110f, global0[_wgslsmith_index_u32(28242u, 16u)]))), func_1(), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], -1259f, _wgslsmith_f_op_f32(abs(1270f)))), global0[_wgslsmith_index_u32(1u, 16u)]), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 16u)] * func_1().a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(1u, 16u)]))), _wgslsmith_div_f32(1020f, -1000f)))));
}

