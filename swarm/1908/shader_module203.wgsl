struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), -25964i, i32(-2147483648));

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<i32>(i32(-2147483648), -22218i, 1i, -8470i)), Struct_1(vec4<i32>(i32(-2147483648), -1i, 0i, -35530i)));

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(478f, 174f, -220f), vec3<f32>(-1022f, 493f, 440f), vec3<f32>(-1025f, -1000f, 2003f), vec3<f32>(2120f, 1129f, 1064f), vec3<f32>(-1238f, 2328f, -1023f), vec3<f32>(-1000f, -475f, 593f), vec3<f32>(333f, -720f, -485f), vec3<f32>(-469f, 585f, -2142f), vec3<f32>(-796f, 1551f, -1000f), vec3<f32>(848f, 273f, 1024f), vec3<f32>(-765f, 260f, 234f), vec3<f32>(604f, -1267f, -248f), vec3<f32>(670f, 701f, 548f), vec3<f32>(902f, -1000f, 417f), vec3<f32>(159f, -352f, 828f), vec3<f32>(1231f, 1730f, -363f), vec3<f32>(-698f, -144f, 1000f), vec3<f32>(-582f, -1000f, -831f), vec3<f32>(-1750f, -547f, 1535f), vec3<f32>(602f, -1412f, -1020f), vec3<f32>(294f, 1277f, 840f), vec3<f32>(-1326f, -369f, 1541f), vec3<f32>(-886f, -1340f, -365f), vec3<f32>(865f, -1000f, -193f), vec3<f32>(293f, -242f, 949f), vec3<f32>(-965f, 495f, -749f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1() -> i32 {
    let var_0 = abs(~(~vec3<u32>(1u, 1u, 1u)));
    var var_1 = global1[_wgslsmith_index_u32(~var_0.x ^ select(_wgslsmith_div_u32(~(~var_0.x), ~3434u), _wgslsmith_clamp_u32(30986u, 38367u, ~1u) << (_wgslsmith_dot_vec3_u32(vec3<u32>(8593u, var_0.x, 4294967295u) | vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(4294967295u, var_0.x, 32053u)) % 32u), false), 2u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1f);
    return -1i;
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<vec3<f32>, 26>();
    let var_0 = Struct_1(_wgslsmith_sub_vec4_i32(max(countOneBits(~vec4<i32>(-75960i, -2147483647i, 13690i, -1i)), ~max(vec4<i32>(0i, global0.x, u_input.a, 62686i), vec4<i32>(48024i, 1i, -28292i, global0.x))), select(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(6114i, global0.x, 2147483647i, 16543i), vec4<i32>(-1i, global0.x, 2147483647i, u_input.b)), ~u_input.a, -58917i, _wgslsmith_dot_vec2_i32(global0.wz, global0.zw)), vec4<i32>(global0.x, -43572i, _wgslsmith_mult_i32(u_input.a, -2147483647i), u_input.b << (4294967295u % 32u)), vec4<bool>(true, true, all(vec2<bool>(false, true)), false))));
    var var_1 = Struct_1(reverseBits(~_wgslsmith_clamp_vec4_i32(var_0.a, var_0.a << (vec4<u32>(1u, arg_0, 20046u, arg_0) % vec4<u32>(32u)), var_0.a)));
    var_1 = var_0;
    global0 = -abs(-vec4<i32>(_wgslsmith_clamp_i32(global0.x, var_1.a.x, 0i), _wgslsmith_div_i32(1i, -27683i), 2147483647i, 806i ^ var_1.a.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -126f);
}

fn func_2() -> vec4<i32> {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(0u), 2u)];
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1101f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1557f - -809f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(460f)), _wgslsmith_f_op_f32(-1451f + 563f), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(1u)), -1000f, any(vec2<bool>(false, false)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f * -138f)))), (-1i ^ u_input.a) >= 1i));
    let var_2 = vec2<bool>(any(vec4<bool>(true, true, true, true)), false);
    global0 = select(var_0.a, min(abs(reverseBits(~vec4<i32>(u_input.b, var_0.a.x, global0.x, -1i))), ~abs(countOneBits(var_0.a))), true);
    let var_3 = ~(~abs(vec3<u32>(1u, 1u, 1u)));
    return ~vec4<i32>(u_input.a << (_wgslsmith_dot_vec2_u32(var_3.zy, vec2<u32>(var_3.x, var_3.x)) % 32u), 33750i, -2147483647i, var_0.a.x ^ (-1i >> (0u % 32u))) << (abs(~(~(~vec4<u32>(var_3.x, 23910u, var_3.x, 30274u)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(u_input.a, 1i)) & -2147483647i, countOneBits(reverseBits(-11962i)), -(~(-35057i)), -func_1()) ^ _wgslsmith_mod_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, -28271i), vec4<i32>(-5414i, u_input.b, -2147483647i, u_input.b)), _wgslsmith_div_vec4_i32(vec4<i32>(8517i, 33826i, 2147483647i, 1i) | vec4<i32>(-2147483647i, 31835i, u_input.b, 10388i), func_2())));
    let var_1 = select(true, false, true);
    let var_2 = abs(-vec2<i32>(~(-2147483647i), ~(-global0.x)));
    var var_3 = Struct_1(vec4<i32>(-71465i, _wgslsmith_mult_i32(1i, i32(-1i) * -var_2.x), var_0.a.x, var_2.x ^ (var_0.a.x & 14286i)));
    global0 = -select(vec4<i32>(select(-1i, ~var_0.a.x, any(vec2<bool>(var_1, var_1))), var_0.a.x, firstLeadingBit(func_1()), -2147483647i), ~(-var_0.a), select(select(!vec4<bool>(false, var_1, var_1, true), select(vec4<bool>(var_1, false, var_1, false), vec4<bool>(var_1, true, true, true), vec4<bool>(false, false, true, true)), all(vec3<bool>(false, var_1, var_1))), select(!vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, var_1, true), !var_1), var_1));
    var var_4 = Struct_1(~var_3.a);
    global2 = array<vec3<f32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_i32(min(0i, _wgslsmith_add_i32(global0.x, 2147483647i)), 0i), min(_wgslsmith_mod_i32(select(var_3.a.x, var_0.a.x, true), i32(-1i) * -1i), countOneBits(_wgslsmith_mod_i32(var_2.x, -2147483647i)))));
}

