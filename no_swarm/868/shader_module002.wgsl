struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<i32> = vec4<i32>(-22985i, -24328i, -40666i, 2147483647i);

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_2(-731f, vec3<bool>(true, true, false)), vec3<bool>(true, false, true), 34403i, Struct_1(0u), Struct_2(-1054f, vec3<bool>(false, true, true))), Struct_3(Struct_2(136f, vec3<bool>(false, true, false)), vec3<bool>(false, false, true), -12936i, Struct_1(37818u), Struct_2(-518f, vec3<bool>(true, true, false))), Struct_3(Struct_2(-296f, vec3<bool>(false, false, true)), vec3<bool>(false, false, false), i32(-2147483648), Struct_1(10919u), Struct_2(-1518f, vec3<bool>(true, true, true))), Struct_3(Struct_2(589f, vec3<bool>(false, true, false)), vec3<bool>(false, true, false), 2147483647i, Struct_1(33753u), Struct_2(-851f, vec3<bool>(true, true, false))), Struct_3(Struct_2(381f, vec3<bool>(true, false, true)), vec3<bool>(true, true, false), -35203i, Struct_1(1u), Struct_2(-216f, vec3<bool>(false, true, false))), Struct_3(Struct_2(-760f, vec3<bool>(true, false, false)), vec3<bool>(true, true, true), -18774i, Struct_1(37012u), Struct_2(-2628f, vec3<bool>(true, true, false))), Struct_3(Struct_2(-1473f, vec3<bool>(true, false, false)), vec3<bool>(false, true, false), 39768i, Struct_1(30950u), Struct_2(308f, vec3<bool>(false, false, true))), Struct_3(Struct_2(341f, vec3<bool>(true, false, true)), vec3<bool>(false, false, false), i32(-2147483648), Struct_1(14936u), Struct_2(-234f, vec3<bool>(true, false, false))), Struct_3(Struct_2(1290f, vec3<bool>(true, false, false)), vec3<bool>(true, true, false), 1i, Struct_1(28955u), Struct_2(334f, vec3<bool>(true, false, false))), Struct_3(Struct_2(521f, vec3<bool>(true, false, true)), vec3<bool>(false, false, true), i32(-2147483648), Struct_1(4757u), Struct_2(-373f, vec3<bool>(true, false, true))));

var<private> global3: u32 = 73815u;

var<private> global4: f32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = (reverseBits(~vec2<u32>(u_input.a, u_input.a)) & ~vec2<u32>(56495u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 1u), vec4<u32>(0u, u_input.a, 7522u, u_input.a)))) | _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(49943u, 1u), u_input.a), vec2<u32>(8088u, ~u_input.a)), ~vec2<u32>(u_input.a, u_input.a));
    var var_1 = ~max(-(~vec4<i32>(global1.x, global1.x, 1i, 0i)), ~(~vec4<i32>(-15101i, global1.x, 1i, 0i)));
    return !(!vec4<bool>((u_input.a ^ u_input.a) <= var_0.x, !all(vec2<bool>(arg_0, arg_0)), false, all(select(vec2<bool>(false, arg_0), vec2<bool>(false, true), vec2<bool>(arg_0, true)))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(1354f, vec3<bool>(false, any(func_3(true)), true));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2205f, arg_1) - 1f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1));
    global2 = array<Struct_3, 10>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), vec3<bool>(all(select(vec4<bool>(false, var_0.b.x, true, false), vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x), true)), var_0.b.x, false)), var_0.b, ~select(_wgslsmith_dot_vec3_i32(global1.wzy, vec3<i32>(global1.x, -2147483647i, global1.x)) | global1.x, _wgslsmith_sub_i32(countOneBits(global1.x), countOneBits(-21301i)), true), Struct_1(u_input.a), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a * var_0.a))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))), var_0.b));
    return Struct_2(-1013f, var_0.b);
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = arg_1.a;
    var var_1 = 0u;
    var var_2 = arg_1;
    let var_3 = Struct_3(func_2(arg_1.d.a, 836f, ~_wgslsmith_dot_vec4_u32(countOneBits(arg_3), arg_3)), arg_1.a.b, _wgslsmith_add_i32(global1.x, global1.x), arg_1.d, func_2(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-155f + 528f) - 274f) * 898f), arg_3.x));
    let var_4 = vec3<bool>(_wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-17676i, 46890i, 2322i), vec3<i32>(global1.x, 65183i, global1.x)), ~(-vec3<i32>(global1.x, var_3.c, -32624i))) > ~var_3.c, true, all(func_2(var_3.d.a, _wgslsmith_f_op_f32(f32(-1f) * -213f), 1u).b.yx));
    return global1.www;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -160f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(199f)) + 273f))));
    let var_0 = ~(~vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.a, 40247u)), ~vec3<u32>(4294967295u, 1u, 63729u)), u_input.a, u_input.a));
    var var_1 = Struct_1(4294967295u);
    global4 = 1769f;
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-353f * -506f))))), _wgslsmith_f_op_f32(-1504f + _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(612f + 483f)))), -26362i, -_wgslsmith_mult_vec3_i32(reverseBits(global1.wzx) | vec3<i32>(global1.x, 2147483647i, -19095i), func_1(true, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 1u), 10u)], Struct_2(-2097f, vec3<bool>(true, true, false)), vec4<u32>(var_1.a, var_1.a, 107250u, var_0.x))));
}

