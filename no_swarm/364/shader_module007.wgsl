struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-17177i, i32(-2147483648)), vec2<i32>(57126i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: vec2<bool>) -> i32 {
    global0 = true;
    var var_0 = 51866u;
    var_0 = 0u;
    global1 = array<vec2<i32>, 2>();
    global0 = arg_3.x;
    return 2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.d.yyx - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.d.yzy)))));
    let var_1 = _wgslsmith_clamp_vec2_u32(reverseBits(max(~abs(vec2<u32>(72345u, 63149u)), ~(~vec2<u32>(46530u, 74077u)))), vec2<u32>(~_wgslsmith_sub_u32(arg_1.a.b | arg_0.a.b, arg_0.a.b), ~arg_0.a.b), ~select(vec2<u32>(min(1u, arg_0.a.b), _wgslsmith_add_u32(1u, 0u)), vec2<u32>(8362u, arg_0.a.b), !(!arg_2.x)));
    global1 = array<vec2<i32>, 2>();
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.a.d.ywx);
    let var_2 = ~vec3<i32>(1i, arg_0.a.c.x, (arg_1.c.x & select(arg_0.a.c.x, 0i, arg_2.x)) ^ (~arg_0.b | arg_1.c.x));
    return vec3<u32>(~(~(~(var_1.x & 34708u))), arg_1.a.b, _wgslsmith_add_u32(var_1.x, ~_wgslsmith_clamp_u32(4432u, 12478u, ~arg_0.a.b)));
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 2u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-515f, -824f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-299f)))), 389f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-447f)) - _wgslsmith_f_op_f32(floor(1951f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(497f + -1000f), _wgslsmith_f_op_f32(-249f + 1156f))))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(237f * -1258f), _wgslsmith_div_f32(-120f, -161f), -946f, _wgslsmith_f_op_f32(round(-796f)))))));
    let var_2 = Struct_3(vec2<i32>(countOneBits(firstLeadingBit(max(u_input.b, -10857i))), u_input.b));
    global1 = array<vec2<i32>, 2>();
    global1 = array<vec2<i32>, 2>();
    return 49970u;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(vec2<i32>(1i, min(func_2(global1[_wgslsmith_index_u32(arg_3, 2u)], arg_3, vec2<bool>(true, true), vec2<bool>(true, false)), arg_0) ^ abs(reverseBits(-1i))));
    let var_1 = vec2<u32>(arg_3, func_4(func_3(Struct_2(Struct_1(vec3<f32>(-1499f, -1000f, -320f), arg_2, vec2<i32>(var_0.a.x, u_input.b), vec4<f32>(497f, arg_1.x, 388f, arg_1.x)), var_0.a.x, vec4<i32>(16878i, -2147483647i, -29377i, arg_0)), Struct_2(Struct_1(vec3<f32>(arg_1.x, arg_1.x, -1000f), arg_2, vec2<i32>(-2147483647i, -11845i), vec4<f32>(-1000f, 1143f, arg_1.x, arg_1.x)), var_0.a.x, vec4<i32>(0i, arg_0, -45933i, u_input.a)), vec3<bool>(true, true, true)) >> (~vec3<u32>(0u, arg_2, 0u) % vec3<u32>(32u))) ^ reverseBits(101124u));
    global1 = array<vec2<i32>, 2>();
    var var_2 = firstLeadingBit((vec4<u32>(arg_3, min(arg_3, 4294967295u), _wgslsmith_add_u32(arg_3, var_1.x), arg_2) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, 4294967295u, arg_2, 4294967295u), vec4<u32>(arg_3, var_1.x, 0u, 27181u))) | abs(vec4<u32>(var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 4294967295u), vec4<u32>(6242u, 0u, 4294967295u, 1135u)), _wgslsmith_sub_u32(1u, 0u), abs(1u))));
    var var_3 = !vec2<bool>(all(vec3<bool>(true, true, true)), !(all(vec3<bool>(true, true, true)) | false));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -257f, -1466f) + vec3<f32>(-399f, 1903f, arg_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1721f, -308f))))), select(51877u, max(firstLeadingBit(var_2.x), ~(~arg_2)), !(!(1u < var_1.x))), global1[_wgslsmith_index_u32(~countOneBits(arg_3), 2u)] & vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(1i, u_input.a)), ~var_0.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(789f, 302f, -410f, -1213f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 2032f, arg_1.x), vec4<f32>(-826f, arg_1.x, -1377f, arg_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), 1000f, _wgslsmith_f_op_f32(arg_1.x - 1151f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_3(reverseBits(arg_1.c));
    let var_1 = vec3<i32>(var_0.a.x, -countOneBits(~func_1(u_input.a, arg_1.d.wx, arg_2, arg_1.b).c.x), (-_wgslsmith_sub_i32(u_input.a, u_input.b) & abs(2147483647i)) >> (_wgslsmith_sub_u32(~_wgslsmith_add_u32(arg_3.b, arg_1.b), arg_1.b) % 32u));
    var var_2 = Struct_3(vec2<i32>(arg_3.c.x, 30409i));
    var_2 = Struct_3(vec2<i32>(-2147483647i, var_1.x));
    var var_3 = var_0;
    return vec2<bool>(true, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_3 {
    global1 = array<vec2<i32>, 2>();
    let var_0 = u_input.b;
    let var_1 = select(u_input.a, -2147483647i, arg_0.x);
    var var_2 = ~(~(-vec3<i32>(var_0, -1i, arg_1.c.x))) ^ _wgslsmith_clamp_vec3_i32(-(vec3<i32>(u_input.a, -2147483647i, arg_1.c.x) ^ ~vec3<i32>(18268i, 2259i, var_1)), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(33560i, var_0, var_1) >> (vec3<u32>(arg_1.b, 4294967295u, 40489u) % vec3<u32>(32u)), vec3<i32>(var_0, 2147483647i, var_0))), _wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(18260i, -30354i, arg_1.c.x)), countOneBits(vec3<i32>(var_0, 2147483647i, 6827i))));
    let var_3 = ~(~arg_1.b);
    return Struct_3(var_2.xy);
}

fn func_7(arg_0: Struct_3) -> Struct_2 {
    global1 = array<vec2<i32>, 2>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(339f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(210f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -608f))), 84936u, max(arg_0.a, vec2<i32>(-1i) * -arg_0.a) | global1[_wgslsmith_index_u32(firstTrailingBit(1u), 2u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-254f + -1933f), _wgslsmith_div_f32(-250f, -626f), _wgslsmith_f_op_f32(f32(-1f) * -1200f), _wgslsmith_f_op_f32(max(217f, -1641f))))));
    let var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(-995f, _wgslsmith_f_op_f32(abs(var_0.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1669f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.d.x)))), 0u, func_6(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), var_0).a & arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-789f, 1114f)), var_0.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x * var_0.d.x), 275f)), var_0.a.x)), 32760i, _wgslsmith_mod_vec4_i32(-(vec4<i32>(var_0.c.x, -2147483647i, -23901i, 1i) >> (vec4<u32>(var_0.b, var_0.b, var_0.b, 15411u) % vec4<u32>(32u))) >> (countOneBits(vec4<u32>(0u, var_0.b, var_0.b, 0u) & vec4<u32>(var_0.b, 4294967295u, 2018u, 57445u)) % vec4<u32>(32u)), vec4<i32>(u_input.a, firstTrailingBit(9348i), _wgslsmith_add_i32(u_input.b >> (42856u % 32u), arg_0.a.x), -25986i)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(777f, var_2.a.d.x, -1000f), var_2.a.d.yyy)), var_2.a.b, ~var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1029f, var_0.d.x, -701f, -1000f) * var_0.d) + vec4<f32>(-1343f, 848f, -253f, var_0.d.x)))), -41226i, vec4<i32>(arg_0.a.x, ~27299i, arg_0.a.x, -(min(var_0.c.x, var_1.a.x) >> ((var_2.a.b ^ var_0.b) % 32u))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(select(func_5(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-238f, -456f, -494f, 632f))), Struct_1(vec3<f32>(-907f, -297f, -1149f), 0u, vec2<i32>(0i, u_input.a), vec4<f32>(-888f, 530f, 1153f, 2084f)), 1u, func_1(u_input.a, vec2<f32>(1000f, 771f), 817u, 1u)), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false)), func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(41008i, 9270i)), vec2<f32>(func_1(u_input.a, vec2<f32>(-1000f, 1411f), 14562u, 21487u).d.x, _wgslsmith_div_f32(-1535f, -2100f)), ~23353u, ~1u)));
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(~abs(reverseBits(4294967295u)), var_0.a.b), var_0.a.b);
    var var_2 = var_0.c.xz << (_wgslsmith_mult_vec2_u32(vec2<u32>(~var_1.x, abs(18270u) >> (_wgslsmith_div_u32(4294967295u, var_0.a.b) % 32u)), var_1) % vec2<u32>(32u));
    var var_3 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, false)), true), true), vec3<bool>(_wgslsmith_f_op_f32(max(var_0.a.a.x, var_0.a.d.x)) > func_1(-1i, var_0.a.d.xx, var_1.x, var_0.a.b).d.x, abs(u_input.b) != countOneBits(88163i), any(vec2<bool>(false, false)) && true), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
    let var_4 = var_3.x;
    let var_5 = false;
    global1 = array<vec2<i32>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(var_0.b ^ countOneBits(u_input.a)), -(~(~(-42122i))), u_input.a, var_2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d.x, var_0.a.d.x) - var_0.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1172f)), min(-u_input.b, -1i), 20376u);
}

