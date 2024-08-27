struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-1000f, -176f), vec2<f32>(1000f, 1588f));

var<private> global1: u32;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(true, -33394i, 25542u, vec2<u32>(54240u, 0u), vec2<u32>(0u, 41440u)), Struct_1(true, i32(-2147483648), 14528u, vec2<u32>(1u, 9502u), vec2<u32>(76171u, 28477u)), Struct_1(false, i32(-2147483648), 55630u, vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u)), Struct_1(false, 2147483647i, 7818u, vec2<u32>(4814u, 4294967295u), vec2<u32>(1u, 41592u)), Struct_1(true, i32(-2147483648), 0u, vec2<u32>(4294967295u, 0u), vec2<u32>(42451u, 0u)), Struct_1(true, 0i, 0u, vec2<u32>(46311u, 64755u), vec2<u32>(4294967295u, 2778u)), Struct_1(false, 48287i, 54733u, vec2<u32>(1u, 10485u), vec2<u32>(4294967295u, 42862u)), Struct_1(true, 0i, 1869u, vec2<u32>(42351u, 1u), vec2<u32>(1u, 1u)), Struct_1(false, -32962i, 370u, vec2<u32>(45158u, 0u), vec2<u32>(0u, 15113u)), Struct_1(false, 2147483647i, 1u, vec2<u32>(36791u, 35357u), vec2<u32>(12118u, 1u)), Struct_1(true, 1i, 35943u, vec2<u32>(0u, 30771u), vec2<u32>(0u, 47062u)), Struct_1(false, -22095i, 4294967295u, vec2<u32>(0u, 4294967295u), vec2<u32>(16331u, 41070u)), Struct_1(false, 42765i, 114318u, vec2<u32>(14160u, 0u), vec2<u32>(4294967295u, 70746u)), Struct_1(true, 2536i, 52761u, vec2<u32>(5843u, 19213u), vec2<u32>(0u, 4294967295u)), Struct_1(true, 8103i, 0u, vec2<u32>(0u, 31810u), vec2<u32>(73730u, 65931u)), Struct_1(false, -38223i, 0u, vec2<u32>(0u, 63138u), vec2<u32>(1u, 4294967295u)), Struct_1(true, -917i, 0u, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(64386u, 33934u)), Struct_1(true, -56568i, 0u, vec2<u32>(45054u, 0u), vec2<u32>(0u, 4294967295u)), Struct_1(true, 72723i, 4294967295u, vec2<u32>(10119u, 35011u), vec2<u32>(32844u, 1u)), Struct_1(true, -1i, 1u, vec2<u32>(0u, 0u), vec2<u32>(3174u, 1u)), Struct_1(true, 2937i, 4294967295u, vec2<u32>(1u, 1u), vec2<u32>(1399u, 0u)), Struct_1(true, 32601i, 4294967295u, vec2<u32>(6185u, 45018u), vec2<u32>(1u, 1u)), Struct_1(true, 1i, 113770u, vec2<u32>(35885u, 40367u), vec2<u32>(4294967295u, 0u)));

var<private> global3: Struct_1;

var<private> global4: array<i32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = 4294967295u;
    global1 = abs(~global3.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.wyw);
    global2 = array<Struct_1, 23>();
    let var_2 = -2147483647i;
    return global4[_wgslsmith_index_u32(0u, 20u)];
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(20945u, 20u)], global4[_wgslsmith_index_u32(~global3.c, 20u)]);
    var var_1 = !vec4<bool>(!all(!vec3<bool>(false, global3.a, global3.a)), _wgslsmith_div_u32(global3.e.x, global3.d.x) > _wgslsmith_dot_vec2_u32(min(global3.d, global3.e), ~vec2<u32>(1u, 4294967295u)), true, global3.a && (func_2(vec4<f32>(685f, 1000f, 771f, -2200f), Struct_1(true, 2147483647i, 4294967295u, vec2<u32>(4294967295u, 4294967295u), global3.d)) > (global3.b | 0i)));
    global1 = ~(~global3.e.x);
    global1 = global3.c;
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -603f))), -1606f)), 1f))));
    return !(!any(vec2<bool>(true, var_1.x)));
}

fn func_3() -> i32 {
    global0 = array<vec2<f32>, 2>();
    global4 = array<i32, 20>();
    let var_0 = global2[_wgslsmith_index_u32(0u, 23u)];
    let var_1 = vec4<u32>(47707u, 4294967295u, 0u, global3.d.x);
    let var_2 = firstTrailingBit(~vec2<u32>(select(~global3.d.x, 1u, global3.a), min(4325u, 4294967295u)));
    return _wgslsmith_mult_i32(-1i, ~firstTrailingBit(37041i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global3.e.x, 23u)];
    global0 = array<vec2<f32>, 2>();
    global0 = array<vec2<f32>, 2>();
    var var_1 = vec4<bool>(!var_0.a, false, false, func_1());
    var var_2 = abs(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.x, 100107u, var_0.c), ~vec3<u32>(global3.e.x, global3.e.x, var_0.c)), ~(~16275u), 4294967295u)) | (92790u | max(27665u, firstLeadingBit(~global3.e.x)));
    let var_3 = ~min(~func_3(), _wgslsmith_div_i32(-_wgslsmith_sub_i32(global3.b, var_0.b), -2147483647i));
    let var_4 = -1168f;
    let var_5 = global2[_wgslsmith_index_u32(var_0.e.x, 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_4)), _wgslsmith_f_op_f32(select(var_4, var_4, false)))) - var_4), vec2<i32>(abs(-43841i), (i32(-1i) * -49169i) >> (firstTrailingBit(3160u) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(50802u, var_5.d.x, 0u) & (vec3<u32>(19787u, 0u, global3.d.x) << (vec3<u32>(var_5.e.x, 1259u, var_5.c) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_5.d.x, var_0.c, global3.e.x), firstLeadingBit(vec3<u32>(var_0.d.x, 111249u, var_5.e.x)))) | global3.d.x, 2u)]);
}

