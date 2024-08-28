struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -195f;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> i32 {
    let var_0 = true;
    global0 = arg_0.c.c.x;
    var var_1 = arg_0.c.c.x;
    var var_2 = !(!arg_1.yzw);
    let var_3 = ~_wgslsmith_sub_u32(1u, 1u);
    return -8071i;
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_mod_i32(-1i, abs(u_input.e.x >> (_wgslsmith_div_u32(u_input.a, 1u) % 32u)) >> (~4294967295u % 32u));
    let var_1 = 22678u;
    var var_2 = Struct_3(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(32837u, 111543u, var_1, u_input.a)) << (vec4<u32>(11060u, u_input.d.x, var_1, 4294967295u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_1, 0u, u_input.d.x), min(vec4<u32>(50718u, 56659u, 67020u, var_1), vec4<u32>(var_1, 4294967295u, 1u, u_input.d.x)))), _wgslsmith_add_vec4_u32(min(vec4<u32>(var_1, 43222u, var_1, var_1) << (vec4<u32>(0u, 9828u, u_input.d.x, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(var_1, 4294967295u, 4294967295u, var_1)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 4216u, 62109u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d.x, 39407u, var_1), vec4<u32>(u_input.d.x, u_input.d.x, u_input.a, 0u), vec4<u32>(u_input.d.x, 17340u, u_input.a, u_input.d.x))))), select(vec4<u32>(~0u, 67137u, 1u, ~5020u), select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(33972u, 0u, u_input.d.x, 0u), vec4<u32>(u_input.d.x, u_input.a, 9935u, 14569u), vec4<bool>(true, true, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, var_1, 0u), vec4<u32>(var_1, 26989u, u_input.a, 54626u), vec4<u32>(73664u, 4294967295u, var_1, var_1))), (vec4<u32>(var_1, u_input.a, u_input.a, u_input.d.x) | vec4<u32>(4294967295u, 26036u, var_1, var_1)) << (~vec4<u32>(var_1, var_1, u_input.d.x, 0u) % vec4<u32>(32u)), all(vec3<bool>(false, false, false))), vec4<bool>(true, true, select(true, true, any(vec3<bool>(false, false, true))), true)), Struct_1(!vec3<bool>(58983u > u_input.a, any(vec3<bool>(false, true, true)), all(vec3<bool>(false, true, true))), vec4<f32>(217f, -1214f, -193f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(max(1000f, 1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_div_f32(1334f, -596f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(675f, 1135f, 937f, 1701f), vec4<f32>(611f, -1591f, 278f, -318f))))));
    global0 = var_2.d.x;
    var_0 = _wgslsmith_dot_vec4_i32(countOneBits(min(countOneBits(abs(vec4<i32>(u_input.c, u_input.e.x, -15095i, 1i))), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.e.x, -35071i, u_input.e.x), -vec4<i32>(45953i, u_input.e.x, 5249i, -23224i)))), ~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.e.x, u_input.b, u_input.b, -36473i), vec4<i32>(-4072i, u_input.c, 67773i, u_input.b), vec4<bool>(false, true, var_2.c.a.x, var_2.c.a.x)), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.c) >> (var_2.a % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(19138i, 2147483647i, -50739i, u_input.b)), ~vec4<i32>(u_input.e.x, 1i, u_input.b, -1i))));
    return false;
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: vec3<i32>) -> vec3<i32> {
    var var_0 = vec4<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(0i, arg_3.x), _wgslsmith_add_vec2_i32(arg_0.a, arg_3.yx)), arg_0.a), arg_0.a.x | -arg_3.x, -func_2(arg_0.c, vec4<bool>(arg_0.b < arg_0.c.c.c.x, arg_0.c.c.a.x, arg_0.a.x < arg_2, !arg_0.c.c.a.x)), arg_1);
    var var_1 = Struct_2(vec3<bool>(func_3(), all(!vec4<bool>(arg_0.c.c.a.x, false, arg_0.c.c.a.x, true)) && ((43465u >> (arg_0.c.a.x % 32u)) == 51420u), all(!(!vec4<bool>(true, false, true, arg_0.c.c.a.x)))), any(vec4<bool>(all(vec3<bool>(false, false, arg_0.c.c.a.x)), arg_0.c.c.a.x, true, false)) != true, -35954i, _wgslsmith_f_op_vec2_f32(trunc(arg_0.c.d.wy)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-724f, -268f)), arg_0.b)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b - -381f), arg_0.c.d.x, !arg_0.c.c.a.x)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f));
    var var_2 = arg_0.c;
    let var_3 = Struct_2(select(var_1.a, select(arg_0.c.c.a, select(!var_1.a, !var_1.a, vec3<bool>(false, false, arg_0.c.c.a.x)), arg_0.c.c.a.x), !(!vec3<bool>(true, var_2.c.a.x, true))), true, _wgslsmith_mod_i32(arg_1, firstLeadingBit(arg_3.x)), var_1.d, all(vec2<bool>(true, true)));
    return u_input.e;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    let var_0 = arg_0.c.c;
    var var_1 = Struct_4(select(~_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(74515i, u_input.b)), reverseBits(vec2<i32>(u_input.b, 1398i)), vec2<bool>(true, true)) & _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 17379i), -(~arg_0.a)), var_0.c.x, arg_0.c);
    let var_2 = -1000f;
    global0 = -377f;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1f), 626f, _wgslsmith_f_op_f32(-520f - _wgslsmith_div_f32(-1493f, -1302f)), var_0.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-232f, arg_0.b, var_0.c.x, -262f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1009f, var_1.c.d.x, 752f, 279f))))))));
    return -793f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global0 = -2213f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_4(_wgslsmith_sub_vec2_i32(u_input.e.zy, u_input.e.yz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(437f, 517f)) - _wgslsmith_f_op_f32(1275f + 478f)), Struct_3(reverseBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(32539u, u_input.a, u_input.a, u_input.d.x), Struct_1(vec3<bool>(true, false, true), vec4<f32>(493f, 219f, 1602f, 664f), vec2<f32>(528f, -1184f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 233f, -647f, -149f) * vec4<f32>(219f, -200f, -388f, 427f)))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, ~(-4558i), max(28072i, u_input.e.x)), func_1(Struct_4(u_input.e.xy, 2390f, Struct_3(vec4<u32>(9653u, u_input.d.x, 13092u, u_input.a), vec4<u32>(17914u, u_input.a, 48561u, 15294u), Struct_1(vec3<bool>(false, false, true), vec4<f32>(-450f, 359f, 199f, -778f), vec2<f32>(243f, -444f)), vec4<f32>(466f, -1515f, 2069f, -1119f))), ~(-2147483647i), _wgslsmith_add_i32(1i, u_input.b), u_input.e >> (u_input.d % vec3<u32>(32u)))))) * _wgslsmith_f_op_f32(-1f));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))))), 223f));
    var var_4 = Struct_1(select(vec3<bool>(all(vec2<bool>(true, true)), true, false), vec3<bool>(true, true, true), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(496f, 227f, var_3, _wgslsmith_f_op_f32(f32(-1f) * -476f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(853f * var_3)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(Struct_4(vec2<i32>(0i, 2147483647i), 1000f, Struct_3(vec4<u32>(u_input.a, u_input.d.x, 9915u, u_input.a), vec4<u32>(u_input.a, 1u, u_input.a, 6877u), Struct_1(vec3<bool>(true, true, false), vec4<f32>(-476f, -375f, 912f, var_1), vec2<f32>(var_1, -930f)), vec4<f32>(384f, var_1, 866f, var_1))), u_input.e)), -2217f, false)), 1158f, var_3), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-818f, var_3)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_3) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, var_1) + vec2<f32>(-391f, var_3))))))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1290f)))));
    let var_6 = Struct_4(vec2<i32>(_wgslsmith_mult_i32(14561i, -11302i), u_input.c), 1f, Struct_3(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.d.x), select(vec4<u32>(u_input.d.x, u_input.a, 1u, 110674u), vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.d.x), var_4.a.x)), vec4<u32>(abs(0u), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(107864u, u_input.a, u_input.d.x), vec3<u32>(4739u, u_input.d.x, 1u)), ~u_input.d.x)), abs(min(vec4<u32>(0u, 0u, 25597u, 47086u), vec4<u32>(0u, u_input.a, 87614u, 1u) << (vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 6309u) % vec4<u32>(32u)))), Struct_1(var_4.a, _wgslsmith_f_op_vec4_f32(-var_4.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3, -1000f), vec2<f32>(534f, var_4.b.x)) - _wgslsmith_f_op_vec2_f32(-var_4.c))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), -1268f, 445f, var_3)))));
    var var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1423f, -1000f, var_3, var_5) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1461f, var_6.b, -1634f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2256f, 438f, var_3, var_5) * var_7.c.c.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(var_4.b.wx, vec2<f32>(-637f, -234f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.c.c.b.x, var_4.b.x) - vec2<f32>(193f, var_3)) - _wgslsmith_f_op_vec2_f32(select(var_6.c.c.c, vec2<f32>(-384f, -1000f), vec2<bool>(var_4.a.x, true)))), !(var_5 < var_4.b.x))) + _wgslsmith_f_op_vec2_f32(-var_7.c.c.b.ww)), _wgslsmith_dot_vec2_i32(~u_input.e.yz, _wgslsmith_mod_vec2_i32(~var_7.a >> (countOneBits(u_input.d.zy) % vec2<u32>(32u)), u_input.e.xx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_6.c.d.yy, var_4.b.yz))), var_5);
}

