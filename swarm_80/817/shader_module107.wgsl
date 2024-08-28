struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(-708f, -797f, -257f), vec3<f32>(-488f, -1518f, -495f), vec3<f32>(1000f, -727f, -314f), vec3<f32>(-1000f, 499f, 228f), vec3<f32>(-830f, 623f, -961f), vec3<f32>(-645f, -1006f, 684f), vec3<f32>(2477f, 1044f, -407f), vec3<f32>(1570f, 259f, 2469f), vec3<f32>(1222f, -1000f, 399f), vec3<f32>(-532f, 462f, -448f), vec3<f32>(-1566f, 2099f, -1394f), vec3<f32>(-1510f, 1108f, 533f), vec3<f32>(297f, 503f, -688f), vec3<f32>(739f, -1000f, -2974f), vec3<f32>(642f, 812f, 637f), vec3<f32>(690f, 924f, 1996f), vec3<f32>(428f, -1413f, -495f), vec3<f32>(-609f, -1000f, -739f));

var<private> global2: vec2<i32>;

var<private> global3: i32 = 18875i;

var<private> global4: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = arg_0.c.x;
    return _wgslsmith_dot_vec3_i32(abs(vec3<i32>(max(-2147483647i, u_input.b.x), _wgslsmith_clamp_i32(2147483647i, 3151i, u_input.b.x), 0i)) & u_input.b.xzz, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, ~_wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.wx), ~(-9077i)), max(u_input.b.wyx, ~vec3<i32>(u_input.b.x, global2.x, -1i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1076f))), _wgslsmith_f_op_f32(abs(-1046f))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1499f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(687f)) + 551f))));
    global3 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_2, 1i, u_input.b.x, 30979i)), global2.x), ~18465i | _wgslsmith_sub_i32(arg_2, 2147483647i), ~arg_2 >> (_wgslsmith_mod_u32(arg_1, 4294967295u) % 32u)), -func_3(Struct_1(false, vec4<bool>(true, false, true, false), vec2<u32>(50482u, 4294967295u), arg_0, 1512f), _wgslsmith_f_op_f32(851f * 312f))) << (32756u % 32u);
    var var_1 = 15983u;
    let var_2 = Struct_2(any(vec4<bool>(false, true, any(vec3<bool>(false, true, false)) || true, true)), !vec4<bool>(true, false, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true))), !(0u != arg_1)), Struct_1(!(_wgslsmith_f_op_f32(floor(-1572f)) > _wgslsmith_f_op_f32(ceil(-1422f))), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), false), vec4<bool>(-1i < global2.x, true, false, true), vec4<bool>(true, true, true, true)), ~vec2<u32>(~u_input.a, ~arg_0.x), ~arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), Struct_1((false && (492f < var_0.x)) | false, !vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec4<bool>(true, true, false, true))), arg_0.xw, ~(~(~vec4<u32>(u_input.a, 0u, 46087u, 0u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-446f)), 558f))));
    let var_3 = Struct_2(var_2.d.b.x, var_2.c.b, Struct_1(true, var_2.c.b, max(vec2<u32>(arg_1, 25506u), vec2<u32>(u_input.a, 4294967295u)), countOneBits(vec4<u32>(~1u, 62357u, 4294967295u >> (0u % 32u), var_2.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.e))), var_2.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.e)) * _wgslsmith_f_op_f32(-1f)) - var_2.c.e) <= 2108f;
}

fn func_1() -> u32 {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~19916u, u_input.a << (18983u % 32u)), u_input.a) & ~929u, 4294967295u ^ _wgslsmith_div_u32(~u_input.a, abs(u_input.a) | abs(4294967295u)), u_input.a, u_input.a);
    global2 = _wgslsmith_sub_vec2_i32(u_input.b.yy, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -2147483647i, 9221i), ~vec2<i32>(global2.x, 12200i))));
    let var_1 = Struct_3(!select(vec2<bool>(func_2(var_0, 50199u, global2.x), false), vec2<bool>(true, true), true));
    let var_2 = 0u;
    let var_3 = func_2(vec4<u32>(var_0.x, 0u, 0u, ~var_0.x), ~46521u, global2.x ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(56762i, -5243i), -u_input.b.yy), vec2<i32>(2147483647i, -16175i) ^ u_input.b.ww));
    return ~(~u_input.a << (~abs(var_2) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, false, ~u_input.a != _wgslsmith_sub_u32(0u ^ u_input.a, func_1()), true && !(u_input.b.x <= 1i)), !vec4<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)), select(true, false, false), all(vec4<bool>(false, true, true, true))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f), _wgslsmith_f_op_f32(sign(-1832f))) - _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-497f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * 671f);
    var var_2 = global4[_wgslsmith_index_u32(u_input.a, 16u)];
    var var_3 = Struct_3(select(select(!select(vec2<bool>(true, true), var_2.a, true), vec2<bool>(!var_0.x, var_2.a.x), var_0.x), select(var_2.a, var_2.a, !all(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -2032f) <= var_1));
    var var_4 = _wgslsmith_mod_i32(i32(-1i) * -41232i, max(~(i32(-1i) * -4693i), 25287i)) >> (((63754u << (0u % 32u)) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(19340u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a))), vec3<u32>(u_input.a, 0u, u_input.a) | ~vec3<u32>(46691u, u_input.a, u_input.a))) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_div_f32(810f, var_1))), var_1, -932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1, 609f))) + -704f)), firstLeadingBit(vec2<u32>(u_input.a, ~u_input.a)) << (select(~(vec2<u32>(u_input.a, 4294967295u) << (vec2<u32>(u_input.a, 13776u) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))), select(true, !var_3.a.x, true)) % vec2<u32>(32u)), var_1, vec2<u32>(25564u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 48232u), vec3<u32>(u_input.a, u_input.a, 0u)), ~vec3<u32>(u_input.a, u_input.a, 4294967295u)), vec3<u32>(~51541u, ~9533u, 0u))));
}

