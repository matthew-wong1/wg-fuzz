struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 0i, 1i);

var<private> global2: u32;

var<private> global3: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

var<private> global4: array<vec4<f32>, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> i32 {
    global2 = arg_0;
    var var_0 = arg_1;
    global2 = 5088u;
    global4 = array<vec4<f32>, 12>();
    global3 = array<vec3<bool>, 9>();
    return -22430i;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(arg_0, _wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_0, 1670u), 4294967295u)) >> (firstTrailingBit(4294967295u) % 32u);
    let var_1 = ~arg_3.x;
    var var_2 = Struct_2(arg_2);
    var var_3 = var_2.a;
    global1 = firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(11213i, -6191i), arg_2.a.x, ~36935i, u_input.a.x | global1.x), ~(~vec4<i32>(u_input.a.x, var_3.a.x, var_2.a.a.x, -52007i))));
    return arg_3.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(-vec2<i32>(1i, select(0i, u_input.a.x, false))));
    global4 = array<vec4<f32>, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(617f, 177f, 174f)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1288f, -2388f, -972f), vec3<f32>(-970f, 1000f, 1608f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -759f, 523f)), global3[_wgslsmith_index_u32(~4294967295u, 9u)])))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-224f + 1886f) + _wgslsmith_f_op_f32(382f - 945f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -312f), _wgslsmith_f_op_f32(786f + 387f), false))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -602f))), _wgslsmith_f_op_f32(-1f)));
    global0 = arg_2;
    var var_2 = select(vec3<bool>(any(!(!arg_0)), true, arg_0.x), !select(global3[_wgslsmith_index_u32(func_3(_wgslsmith_mult_u32(arg_2, 4294967295u), 1u, Struct_1(var_0.a.a), vec2<u32>(arg_2, 1892u)), 9u)], vec3<bool>(arg_0.x, false, !arg_0.x), !(!global3[_wgslsmith_index_u32(arg_1.x, 9u)])), global3[_wgslsmith_index_u32(~select(~32257u, ~0u, any(vec4<bool>(arg_0.x, false, true, false))) | arg_1.x, 9u)]);
    return vec4<bool>(13387u == arg_1.x, var_2.x, var_2.x, true);
}

fn func_2() -> Struct_1 {
    let var_0 = global1.x;
    global0 = ~36367u & abs(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 53695u, 4294967295u, 22220u), vec4<u32>(12102u, 1650u, 47202u, 0u)) | firstLeadingBit(51540u)));
    var var_1 = select(vec4<bool>(false, true, select(false, true, true), true), !select(func_4(vec4<bool>(false, true, false, true), vec2<u32>(1u, 0u), func_3(23641u, 4294967295u, Struct_1(u_input.a), vec2<u32>(50434u, 1u))), vec4<bool>(true, true, false, true), false), false);
    var var_2 = 103f;
    global3 = array<vec3<bool>, 9>();
    return Struct_1(-(~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 9>();
    let var_0 = vec4<u32>(~abs(~19269u), ~(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 59636u, 1u), vec3<u32>(4294967295u, 1u, 15360u)))), 1u, _wgslsmith_add_u32(2999u, 1u));
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~1i, func_1(_wgslsmith_div_u32(1u, var_0.x), Struct_2(Struct_1(u_input.a)))), 44023i, -2147483647i);
    global0 = select(var_0.x, var_0.x, false);
    let var_2 = Struct_2(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~4294967295u, var_0.x, var_0.x, 4294967295u), var_2.a.a.x, var_0.zwx, ~2147483647i);
}

