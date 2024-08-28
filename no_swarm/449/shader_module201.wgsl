struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-887i, 710i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(17373i, 45151i, 7081i), vec3<i32>(10475i, 9316i, -26151i), vec3<i32>(2147483647i, -530i, -1i), vec3<i32>(-1i, 52893i, 2147483647i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(2147483647i, i32(-2147483648), -56627i), vec3<i32>(i32(-2147483648), i32(-2147483648), 4880i), vec3<i32>(-1i, 1i, 23716i), vec3<i32>(i32(-2147483648), -17347i, -1i), vec3<i32>(-19304i, 5037i, 1637i), vec3<i32>(22321i, 3026i, 0i), vec3<i32>(-1i, -18463i, -15144i), vec3<i32>(40369i, 53613i, 21570i), vec3<i32>(25838i, 1i, 0i), vec3<i32>(26634i, 1i, -3793i), vec3<i32>(0i, 22879i, 39472i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.x)) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-686f - arg_1.a.x)))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = array<vec3<i32>, 18>();
    global0 = array<vec3<i32>, 18>();
    var var_0 = 1u;
    global0 = array<vec3<i32>, 18>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-702f)), arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(935f * arg_0.x), 962f, 692f, 870f)))), -vec3<i32>(abs(u_input.a.x), ~(~u_input.a.x), ~(-1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(467f, arg_0.x, arg_0.x) + vec3<f32>(arg_0.x, arg_0.x, -2336f))), vec3<f32>(_wgslsmith_f_op_f32(-1009f * arg_0.x), arg_0.x, -661f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(513f, arg_0.x, 614f), _wgslsmith_f_op_vec3_f32(vec3<f32>(292f, arg_0.x, arg_0.x) - vec3<f32>(-1382f, 496f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(990f, 2394f, -1879f))))));
    return 29467u << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(~1u, firstTrailingBit(4294967295u)), _wgslsmith_sub_u32(4294967295u << (0u % 32u), firstTrailingBit(127939u))), abs(~0u)) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = vec3<u32>(~(~func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1601f, 910f)))), _wgslsmith_sub_u32(1u, ~(~1u)), select(~(~(~0u)), ~51357u, !(arg_1 || any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)))));
    let var_1 = 663f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
    global0 = array<vec3<i32>, 18>();
    let var_3 = var_0.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, ~var_0.x, ~36790u), ~(~vec4<u32>(1u, 15263u, var_0.x, var_0.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-814f, arg_0.b.x), var_1)) * -276f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1070f - -857f)), _wgslsmith_f_op_f32(min(-1252f, _wgslsmith_f_op_f32(836f * -818f))), _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(1000f + -760f)), _wgslsmith_f_op_f32(-1175f + _wgslsmith_f_op_f32(func_1(true, Struct_1(vec2<f32>(-579f, -910f), vec4<f32>(359f, -1710f, -1000f, 551f))))))), -((vec3<i32>(-1i) * -u_input.a.wxz) & u_input.a.zzz), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-678f)), _wgslsmith_f_op_f32(func_1(false, Struct_1(vec2<f32>(197f, 720f), vec4<f32>(-329f, -447f, 1410f, 1124f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(902f)), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<f32>(-209f, -139f), vec4<f32>(680f, -700f, 195f, 1068f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(101f + 269f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1459f) + 703f)), all(vec3<bool>(true, true, true)))));
    var var_1 = var_0.a;
    global0 = array<vec3<i32>, 18>();
    let var_2 = var_0.a.a.x;
    let var_3 = 1u;
    let var_4 = Struct_1(var_1.b.xz, _wgslsmith_f_op_vec4_f32(min(var_0.a.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1211f, -345f, -1706f)), var_0.a.b)))))));
    var var_5 = _wgslsmith_f_op_f32(-var_4.a.x);
    let var_6 = -36316i <= -var_0.b.x;
    var var_7 = any(select(vec4<bool>(all(select(vec4<bool>(var_6, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, var_6, true, var_6))), ~4294967295u >= ~var_3, true, all(!vec2<bool>(true, var_6))), vec4<bool>(select(any(vec4<bool>(var_6, false, var_6, var_6)), true, !var_6), true, any(vec2<bool>(false, false)), any(!vec4<bool>(var_6, false, var_6, var_6))), select(vec4<bool>(var_6, true, all(vec2<bool>(var_6, var_6)), any(vec2<bool>(false, true))), !(!vec4<bool>(true, true, true, var_6)), vec4<bool>(!var_6, all(vec4<bool>(var_6, var_6, var_6, true)), all(vec3<bool>(var_6, var_6, true)), false))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), u_input.a)), ~select(min(min(vec3<i32>(-8472i, 29657i, 56989i), global0[_wgslsmith_index_u32(0u, 18u)]), vec3<i32>(2147483647i, -1i, 2147483647i)), vec3<i32>(min(0i, var_0.b.x), -1i << (var_3 % 32u), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), !(!vec3<bool>(var_6, false, true))));
}

