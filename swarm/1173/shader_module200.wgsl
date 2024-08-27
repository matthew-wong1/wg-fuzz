struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32> = vec2<f32>(-1000f, -804f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_1(vec2<bool>(false, true), ~(~(~(~vec3<u32>(71350u, 4294967295u, 4294967295u)))), all(!select(vec3<bool>(true, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -711f, global1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1743f, 931f, 676f) + vec4<f32>(global1.x, global1.x, global1.x, 890f)))))), abs(u_input.a));
    let var_1 = Struct_3(-35190i, Struct_2(!var_0.a, Struct_1(select(var_0.a, select(var_0.a, vec2<bool>(arg_0, var_0.a.x), var_0.c), !var_0.a.x), var_0.b, false & var_0.c, var_0.d, reverseBits(var_0.e) >> (var_0.b.x % 32u)), -vec3<i32>(1i, -11101i, _wgslsmith_sub_i32(3847i, var_0.e)), Struct_1(vec2<bool>(arg_0, !var_0.c), ~vec3<u32>(2488u, var_0.b.x, 1904u), _wgslsmith_div_f32(540f, 720f) >= _wgslsmith_f_op_f32(trunc(-1109f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-452f, -1000f, -961f, -1293f))), abs(i32(-1i) * -2155i))), Struct_2(select(select(var_0.a, vec2<bool>(true, true), false), select(select(var_0.a, vec2<bool>(false, arg_0), var_0.a), select(vec2<bool>(arg_0, var_0.c), var_0.a, var_0.c), !vec2<bool>(var_0.a.x, arg_0)), countOneBits(var_0.b.x) != _wgslsmith_div_u32(14946u, var_0.b.x)), Struct_1(vec2<bool>(false, 1i < var_0.e), vec3<u32>(firstTrailingBit(var_0.b.x), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u), var_0.b.x), true, var_0.d, u_input.a ^ -var_0.e), firstLeadingBit(-(~vec3<i32>(var_0.e, -1i, 25107i))), Struct_1(vec2<bool>(any(vec4<bool>(arg_0, arg_0, true, true)), all(vec3<bool>(true, true, true))), vec3<u32>(~1u, var_0.b.x, 37367u), var_0.a.x, _wgslsmith_f_op_vec4_f32(-var_0.d), 91455i)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(var_0.b.x == var_0.b.x, var_0.b.x >= var_0.b.x), vec2<bool>(any(vec4<bool>(false, true, false, var_0.a.x)), true)), select(var_0.b, ~vec3<u32>(var_0.b.x, 0u, 1u), select(select(vec3<bool>(false, true, false), vec3<bool>(var_0.c, true, false), vec3<bool>(var_0.c, false, true)), !vec3<bool>(true, arg_0, arg_0), any(vec3<bool>(true, false, arg_0)))), var_0.a.x, var_0.d, 0i), -1038f);
    var var_2 = !vec4<bool>(select(arg_0, any(vec4<bool>(false, var_1.d.a.x, var_1.b.b.a.x, true)) && false, -125f > var_1.e), var_0.a.x, false, false);
    let var_3 = var_0.a.x;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.c.b.d.zz))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.x))), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.d.d.x - global1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(371f, var_1.b.d.d.x, var_1.e, -717f)) * _wgslsmith_div_vec4_f32(var_1.d.d, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(946f, var_1.d.d.x, var_1.e, global1.x)))))), any(select(!select(vec4<bool>(true, true, false, var_1.b.a.x), vec4<bool>(true, true, var_2.x, var_1.d.a.x), vec4<bool>(false, true, var_2.x, true)), !select(vec4<bool>(true, var_2.x, true, arg_0), vec4<bool>(arg_0, var_2.x, true, false), false), all(var_2.zy) || var_2.x))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_mult_u32(~4294967295u, 0u);
    var var_1 = Struct_4(Struct_3(u_input.a, Struct_2(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true), true), Struct_1(vec2<bool>(false, true), firstLeadingBit(vec3<u32>(var_0, 4294967295u, 12574u)), u_input.a >= 5044i, vec4<f32>(514f, 1492f, -1532f, 1000f), _wgslsmith_mod_i32(u_input.a, -1i)), -max(vec3<i32>(-33251i, u_input.a, -33256i), vec3<i32>(u_input.a, u_input.a, -51819i)), Struct_1(vec2<bool>(true, true), max(vec3<u32>(0u, var_0, var_0), vec3<u32>(var_0, 0u, var_0)), true, _wgslsmith_f_op_vec4_f32(func_3(false)), -u_input.a)), Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true), vec3<u32>(var_0, var_0, 1u), any(vec3<bool>(false, false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1440f, global1.x, -628f)), 2147483647i), ~reverseBits(vec3<i32>(-1i, -53425i, u_input.a)), Struct_1(vec2<bool>(true, true), ~vec3<u32>(var_0, 0u, var_0), true, _wgslsmith_div_vec4_f32(vec4<f32>(706f, global1.x, global1.x, global1.x), vec4<f32>(-1000f, 2374f, -250f, global1.x)), min(2147483647i, u_input.a))), Struct_1(vec2<bool>(any(vec3<bool>(false, false, false)), true), ~select(vec3<u32>(var_0, 370u, var_0), vec3<u32>(var_0, 1u, 1u), true), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(846f, -842f, -497f, -451f) * vec4<f32>(global1.x, global1.x, 420f, global1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -1758f, 287f), vec4<f32>(global1.x, global1.x, -904f, global1.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false))), -u_input.a), -648f), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), any(vec4<bool>(false, true, true, true))), any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), var_0 <= 1u))), Struct_1(select(vec2<bool>(true, 13704i <= u_input.a), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), any(vec4<bool>(true, true, true, true))), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(60866u, var_0, 0u), vec3<u32>(var_0, 0u, 4294967295u))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(822f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(-383f, global1.x)), _wgslsmith_div_f32(879f, global1.x)))), u_input.a | ~u_input.a));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-973f, _wgslsmith_div_f32(-1851f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.d.d.x)))), var_1.a.c.d.d.xx);
    let var_2 = 0u;
    let var_3 = Struct_1(var_1.c.a, var_1.a.b.b.b, _wgslsmith_sub_i32(~(-2147483647i), -1i) < u_input.a, var_1.c.d, var_1.a.b.b.e);
    return Struct_2(var_1.a.d.a, Struct_1(!var_1.b, vec3<u32>(var_2, var_1.a.c.b.b.x, ~85012u), var_1.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, global1.x, global1.x, global1.x)) + var_1.c.d), var_3.d, true)), 0i), _wgslsmith_add_vec3_i32(select(firstLeadingBit(vec3<i32>(1i, var_3.e, 2117i)), -var_1.a.c.c, var_1.c.e >= var_1.a.b.d.e), var_1.a.b.c) << (~_wgslsmith_add_vec3_u32(abs(var_1.c.b), ~vec3<u32>(1u, var_2, 0u)) % vec3<u32>(32u)), var_3);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(arg_0.d.x + 158f)), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-arg_0.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-773f, _wgslsmith_div_f32(global1.x, 2531f)))));
    global1 = vec2<f32>(1538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_0 = func_2();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(10734u, ~abs(arg_0.b.x)), _wgslsmith_add_vec2_u32(vec2<u32>(reverseBits(26045u), select(16751u, 50122u, true)), vec2<u32>(min(var_0.b.b.x, arg_0.b.x), 14399u))) | _wgslsmith_dot_vec2_u32(min((vec2<u32>(var_0.b.b.x, var_0.d.b.x) >> (arg_0.b.zy % vec2<u32>(32u))) & abs(arg_0.b.yx), arg_0.b.zz), _wgslsmith_clamp_vec2_u32(var_0.b.b.zy, vec2<u32>(0u, var_0.b.b.x) & vec2<u32>(arg_0.b.x, 60753u), countOneBits(var_0.b.b.zx)) & select(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(var_0.d.b.yz, var_0.b.b.zy), arg_1.x));
    global0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-22068i, 37311i, arg_0.e, u_input.a)), select(vec4<i32>(-2147483647i, 3386i, 1i, -20706i), ~vec4<i32>(var_0.d.e, var_0.b.e, 0i, arg_2.x), !vec4<bool>(var_0.a.x, var_0.d.a.x, false, arg_1.x))), vec4<i32>(_wgslsmith_div_i32(arg_0.e, u_input.a >> (9266u % 32u)), ~1i, 48032i, -arg_0.e >> (func_2().b.b.x % 32u))) ^ ~_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a, 0i) & _wgslsmith_mult_i32(u_input.a, u_input.a), i32(-1i) * -1i);
    return _wgslsmith_f_op_f32(-arg_0.d.x);
}

fn func_4(arg_0: f32) -> vec4<u32> {
    let var_0 = ~vec3<u32>(0u, 40827u, 4294967295u);
    let var_1 = func_2().d;
    var var_2 = func_2().d;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -2451f), var_1.d.zz)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.d.x, var_2.d.x))) + _wgslsmith_f_op_vec2_f32(var_2.d.wx - var_1.d.yw)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(345f * 694f)))));
    let var_3 = !vec4<bool>(var_1.c, any(!vec2<bool>(var_1.a.x, var_1.c)), !var_1.c, (true && any(vec3<bool>(var_1.c, true, false))) | (global1.x == _wgslsmith_div_f32(var_2.d.x, var_1.d.x)));
    return vec4<u32>(reverseBits(var_0.x), 1u, var_2.b.x, 1938u) << (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(17478u, var_1.b.x), func_2().b.b.x, var_0.x, ~var_1.b.x), min(~vec4<u32>(var_1.b.x, 19768u, var_0.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_0.x, 23033u, 0u), vec4<u32>(84384u, 4294967295u, 30859u, 19230u))))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(false, true), vec3<u32>(45684u, 40795u, 1u), true, vec4<f32>(-930f, 954f, -1000f, 1200f), u_input.a), vec3<bool>(false, true, true), vec2<i32>(0i, -18919i)))))));
    var var_1 = _wgslsmith_f_op_f32(floor(-1000f));
    let var_2 = Struct_4(Struct_3(u_input.a, Struct_2(vec2<bool>(true, true), func_2().b, func_2().c, func_2().b), func_2(), func_2().b, global1.x), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -945f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.x)))), true), func_2().b);
    var_1 = -1000f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(368f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(global1.x - 180f))))));
    let x = u_input.a;
    s_output = StorageBuffer(13037u, vec3<u32>(firstTrailingBit(~(~var_2.a.c.d.b.x)), countOneBits(min(var_0.x, var_2.c.b.x)) << (~4294967295u % 32u), _wgslsmith_clamp_u32(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.d.b.x, 43986u), vec2<u32>(var_2.c.b.x, var_2.a.d.b.x) | var_0.xw), var_0.x)), ~_wgslsmith_clamp_i32(var_2.a.c.d.e, u_input.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-58872i, u_input.a), _wgslsmith_sub_i32(u_input.a, 1i))));
}

