struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: u32) -> bool {
    global0 = array<Struct_3, 18>();
    let var_0 = Struct_1(true | !all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))));
    global0 = array<Struct_3, 18>();
    let var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var var_2 = true;
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(arg_1.d, arg_1.d | arg_1.d, -_wgslsmith_add_i32(6051i, countOneBits(-1i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, ~12005i, reverseBits(1i)), -_wgslsmith_div_vec3_i32(vec3<i32>(1i, 0i, 0i), vec3<i32>(-35413i, arg_1.d, 15451i))));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.x, arg_2.x) | vec2<u32>(arg_1.b, arg_2.x)) >> (_wgslsmith_div_vec2_u32(~u_input.a.xz, abs(u_input.a.xx)) % vec2<u32>(32u)), abs(vec2<u32>(6981u, arg_2.x)) ^ ~(~u_input.a.yz)), arg_2);
    var_0 = abs(-(_wgslsmith_mod_vec3_i32(~vec3<i32>(var_0.x, 5651i, arg_1.d), vec3<i32>(arg_1.d, arg_1.d, 0i)) | reverseBits(vec3<i32>(0i, var_0.x, arg_1.d) | vec3<i32>(1i, -19638i, var_0.x))));
    global0 = array<Struct_3, 18>();
    var var_2 = min(_wgslsmith_mult_u32(1u, abs(37062u)), ~(~var_1.x));
    return 0i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec4<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(3880i, -15548i, 7483i), vec3<i32>(10015i, -27710i, -2147483647i))), func_4(Struct_1(func_3(220f, u_input.a.yz, vec3<f32>(-310f, 407f, -651f), 30519u)), Struct_3(vec2<bool>(true, true), u_input.a.x, func_3(209f, vec2<u32>(u_input.a.x, 45108u), vec3<f32>(-1706f, 965f, 694f), 23732u), 1i, vec4<bool>(false, true, true, false)), ~select(u_input.a.xx, vec2<u32>(0u, 4754u), vec2<bool>(true, false)), Struct_1(all(vec3<bool>(true, true, false)))), _wgslsmith_sub_i32(_wgslsmith_div_i32(25477i, -9182i) >> (_wgslsmith_mod_u32(arg_0, u_input.a.x) % 32u), ~1i >> (0u % 32u)), -(~1i)) >> (abs(vec4<u32>(~u_input.a.x << (~1u % 32u), ~_wgslsmith_sub_u32(67484u, 64017u), arg_0, arg_0 ^ _wgslsmith_add_u32(0u, arg_0))) % vec4<u32>(32u));
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    let var_1 = -(~_wgslsmith_sub_vec4_i32(var_0, -vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)));
    let var_2 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 1u, ~(0u & ~arg_0)), ~min(u_input.a.x & arg_0, arg_0));
    return Struct_1(true);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_2(func_2(23511u << (0u % 32u)), false, arg_0, func_2(82994u), 30749u);
    var_0 = Struct_2(arg_0, !(!any(arg_2.e.zyz)), func_2(u_input.a.x), Struct_1(true && (max(arg_2.b, var_0.e) > u_input.a.x)), min(~u_input.a.x, arg_2.b));
    let var_1 = Struct_2(Struct_1(arg_0.a), _wgslsmith_add_i32(arg_2.d >> (~47066u % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, arg_2.d), _wgslsmith_mod_i32(36963i, arg_2.d))) > firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, ~arg_2.d)), func_2(75933u), func_2(1u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(6065u, 63424u, var_0.e, 4294967295u), vec4<u32>(28707u, arg_2.b, u_input.a.x, u_input.a.x), arg_2.e)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_2.b, 5520u, 59487u), vec4<u32>(22254u, 1u, arg_2.b, 4176u)) | ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.e)), ~(~19203u)));
    var var_2 = max(var_0.e, _wgslsmith_mult_u32(86u, u_input.a.x));
    global0 = array<Struct_3, 18>();
    return Struct_1(func_2(arg_2.b).a);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -821f);
    var var_1 = -1000f;
    var var_2 = func_5(func_2(23542u), _wgslsmith_f_op_f32(step(var_0, var_0)), Struct_3(select(vec2<bool>(true, 541f >= var_0), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), abs(_wgslsmith_mult_u32(23711u, u_input.a.x)), func_2(u_input.a.x).a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-16058i, 2147483647i, 10108i), vec3<i32>(38207i, 6039i, 2147483647i)) ^ _wgslsmith_clamp_i32(26552i, 0i, i32(-1i) * -1i), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)));
    var var_3 = ~min(4294967295u, ~u_input.a.x);
    var_2 = func_5(func_5(func_5(Struct_1(true), var_0, global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), global0[_wgslsmith_index_u32(49874u, 18u)]), _wgslsmith_div_f32(750f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(900f, -476f)))))), Struct_3(vec2<bool>(true, (4294967295u >> (u_input.a.x % 32u)) >= _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), ~(~(~u_input.a.x)), any(select(vec3<bool>(var_2.a, false, var_2.a), vec3<bool>(var_2.a, var_2.a, true), var_2.a)) || var_2.a, min(-1i, ~1i), select(!vec4<bool>(true, false, var_2.a, true), select(vec4<bool>(false, false, false, var_2.a), select(vec4<bool>(var_2.a, var_2.a, false, var_2.a), vec4<bool>(false, var_2.a, false, var_2.a), vec4<bool>(var_2.a, false, var_2.a, var_2.a)), select(vec4<bool>(false, var_2.a, var_2.a, var_2.a), vec4<bool>(var_2.a, false, false, var_2.a), var_2.a)), !(!vec4<bool>(var_2.a, var_2.a, false, var_2.a)))));
    return !var_2.a;
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_3) -> Struct_3 {
    var var_0 = func_2(1u);
    var var_1 = arg_3;
    var var_2 = Struct_1(!(!(!any(arg_1.e))));
    global0 = array<Struct_3, 18>();
    var_2 = Struct_1(all(!select(vec3<bool>(arg_2.a, arg_2.a, arg_3.a.x), vec3<bool>(var_0.a, true, true), arg_3.e.ywz)));
    return Struct_3(var_1.e.zw, 1u, var_1.d < countOneBits(~firstLeadingBit(arg_3.d)), func_4(arg_2, Struct_3(select(vec2<bool>(true, false), select(arg_3.e.ww, vec2<bool>(true, true), arg_3.c), var_2.a), u_input.a.x, 0i > arg_1.d, select(i32(-1i) * -6004i, ~1i, arg_2.a), vec4<bool>(var_2.a, func_3(-515f, u_input.a.yz, vec3<f32>(arg_0, 1180f, 819f), arg_1.b), false, true)), ~(~vec2<u32>(u_input.a.x, arg_3.b)) & max(vec2<u32>(arg_1.b, arg_3.b) ^ vec2<u32>(0u, arg_1.b), u_input.a.yx), func_5(arg_2, -1574f, Struct_3(arg_1.e.zy, min(arg_1.b, 27246u), true, arg_3.d, !var_1.e))), vec4<bool>(arg_1.c, var_1.e.x, !arg_2.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -468f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -245f))))), _wgslsmith_f_op_f32(floor(1092f)), func_1())), Struct_3(!vec2<bool>(select(false, false, false), true), 72284u, true, func_4(func_5(func_2(u_input.a.x), _wgslsmith_f_op_f32(-2554f * -1000f), global0[_wgslsmith_index_u32(~u_input.a.x, 18u)]), global0[_wgslsmith_index_u32(35352u, 18u)], u_input.a.xx, Struct_1(true)), vec4<bool>(true, !all(vec3<bool>(true, true, false)), true, func_3(_wgslsmith_f_op_f32(sign(1424f)), ~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 898f, -1546f)), ~1u))), Struct_1(true), global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(2525u)), 18u)]);
    var_0 = global0[_wgslsmith_index_u32(0u, 18u)];
    global0 = array<Struct_3, 18>();
    let var_1 = _wgslsmith_f_op_f32(ceil(-106f));
    let var_2 = 514f;
    global0 = array<Struct_3, 18>();
    global0 = array<Struct_3, 18>();
    var var_3 = var_0.c;
    var_3 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -1021f, 1000f, var_1), vec4<f32>(var_1, var_2, -230f, -501f))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_1, 116f, 229f) + vec4<f32>(386f, 242f, -154f, var_2))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2, var_2, var_1, -642f), vec4<f32>(var_1, -1000f, -349f, 1191f))))))));
}

