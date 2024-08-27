struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<u32>(0u, 50506u, 4294967295u, 4808u), 0u, true, Struct_1(vec3<i32>(-28361i, 0i, -30755i), false, 4294967295u, vec2<bool>(false, false))), Struct_2(vec4<u32>(4294967295u, 24020u, 4294967295u, 0u), 15556u, false, Struct_1(vec3<i32>(54912i, -1i, 0i), false, 66u, vec2<bool>(true, false))), Struct_2(vec4<u32>(12670u, 4561u, 1u, 0u), 0u, false, Struct_1(vec3<i32>(2147483647i, 3904i, -26528i), false, 14192u, vec2<bool>(true, false))), Struct_2(vec4<u32>(132882u, 12104u, 293u, 89461u), 32687u, true, Struct_1(vec3<i32>(30056i, 0i, -22476i), true, 13290u, vec2<bool>(true, false))), Struct_2(vec4<u32>(0u, 8664u, 34945u, 23063u), 92021u, true, Struct_1(vec3<i32>(27844i, -1371i, -1i), false, 4294967295u, vec2<bool>(true, true))), Struct_2(vec4<u32>(1u, 18409u, 27033u, 65552u), 113340u, true, Struct_1(vec3<i32>(2147483647i, -19089i, 0i), false, 0u, vec2<bool>(false, false))), Struct_2(vec4<u32>(1u, 4294967295u, 2924u, 1u), 22198u, false, Struct_1(vec3<i32>(13033i, -20620i, 1i), true, 17722u, vec2<bool>(true, true))), Struct_2(vec4<u32>(34283u, 0u, 46241u, 7935u), 16911u, false, Struct_1(vec3<i32>(i32(-2147483648), 4348i, i32(-2147483648)), true, 0u, vec2<bool>(true, false))), Struct_2(vec4<u32>(1u, 72739u, 15083u, 37547u), 16510u, false, Struct_1(vec3<i32>(-12143i, -7620i, 2147483647i), true, 0u, vec2<bool>(true, false))), Struct_2(vec4<u32>(4294967295u, 28020u, 4294967295u, 0u), 21888u, true, Struct_1(vec3<i32>(76226i, 264i, -1i), true, 4294967295u, vec2<bool>(true, true))), Struct_2(vec4<u32>(4294967295u, 41841u, 4294967295u, 7257u), 62292u, true, Struct_1(vec3<i32>(-1i, 0i, -25434i), false, 60713u, vec2<bool>(true, true))), Struct_2(vec4<u32>(1u, 0u, 92208u, 13021u), 12737u, true, Struct_1(vec3<i32>(-1i, 0i, 41666i), false, 5217u, vec2<bool>(true, false))), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 2154u), 20318u, true, Struct_1(vec3<i32>(48311i, 0i, -25129i), false, 19384u, vec2<bool>(true, false))), Struct_2(vec4<u32>(1u, 37881u, 48129u, 4294967295u), 421u, true, Struct_1(vec3<i32>(15190i, 1i, 0i), false, 0u, vec2<bool>(true, false))), Struct_2(vec4<u32>(23910u, 101066u, 1u, 91685u), 0u, true, Struct_1(vec3<i32>(0i, 21862i, 41050i), false, 1u, vec2<bool>(false, true))), Struct_2(vec4<u32>(0u, 13244u, 79283u, 22211u), 32292u, true, Struct_1(vec3<i32>(1i, 1i, -927i), true, 1u, vec2<bool>(true, true))), Struct_2(vec4<u32>(1u, 37374u, 4294967295u, 39432u), 0u, false, Struct_1(vec3<i32>(10033i, -2818i, -22497i), false, 0u, vec2<bool>(true, true))), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), 26054u, true, Struct_1(vec3<i32>(1i, 0i, 2147483647i), false, 4294967295u, vec2<bool>(true, true))), Struct_2(vec4<u32>(4294967295u, 0u, 4294967295u, 17197u), 9219u, false, Struct_1(vec3<i32>(-46379i, -15933i, 0i), true, 1u, vec2<bool>(true, true))), Struct_2(vec4<u32>(101302u, 141492u, 0u, 1u), 23038u, false, Struct_1(vec3<i32>(0i, -12484i, 33495i), false, 8127u, vec2<bool>(false, true))), Struct_2(vec4<u32>(15100u, 13323u, 0u, 36303u), 42811u, true, Struct_1(vec3<i32>(3959i, i32(-2147483648), -23600i), true, 45746u, vec2<bool>(true, true))), Struct_2(vec4<u32>(64402u, 52317u, 4294967295u, 55788u), 5636u, false, Struct_1(vec3<i32>(0i, -1669i, -5490i), false, 28961u, vec2<bool>(false, false))), Struct_2(vec4<u32>(22722u, 44070u, 4294967295u, 10091u), 20847u, false, Struct_1(vec3<i32>(2147483647i, 41124i, i32(-2147483648)), true, 88958u, vec2<bool>(false, false))), Struct_2(vec4<u32>(52794u, 24834u, 50163u, 1u), 1u, true, Struct_1(vec3<i32>(0i, 2147483647i, -35322i), false, 1u, vec2<bool>(false, false))), Struct_2(vec4<u32>(47439u, 1u, 4294967295u, 4294967295u), 4294967295u, false, Struct_1(vec3<i32>(i32(-2147483648), 3755i, 2147483647i), true, 28499u, vec2<bool>(true, false))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    let var_0 = Struct_1(abs(abs(firstTrailingBit(-vec3<i32>(u_input.a.x, 54538i, 59080i)))), 4294967295u <= firstLeadingBit(_wgslsmith_sub_u32(abs(4294967295u), _wgslsmith_clamp_u32(9660u, 9332u, 1u))), 3942u, select(vec2<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), true));
    var var_1 = -57588i;
    let var_2 = u_input.a.x;
    var var_3 = Struct_2(vec4<u32>(56063u, firstLeadingBit(0u), (1u | firstTrailingBit(76664u)) | 64000u, var_0.c & var_0.c), _wgslsmith_add_u32(4294967295u, var_0.c) & 1u, true, var_0);
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1243f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1614f * 766f))))));
    return 556i;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-638f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1612f + 764f) + 1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * -1000f)));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, true)), ~vec4<i32>(-2147483647i, u_input.a.x, -272i, -20212i))) & func_3(), -5404i, -2147483647i);
    var var_2 = vec3<i32>(u_input.a.x, -_wgslsmith_div_i32(1i, (-52786i & var_1.x) << (min(4294967295u, 4294967295u) % 32u)), 1i);
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    return Struct_1(u_input.a.xxw, true, ~max(34376u, 104536u), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(55421u << (1u % 32u), arg_0.c, ~arg_0.c, ~33167u) << (~vec4<u32>(0u, 4294967295u, arg_0.c, arg_0.c) % vec4<u32>(32u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 15553u, 0u, arg_0.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.c, 25679u, 79087u, arg_0.c), vec4<u32>(27631u, 60006u, 4294967295u, arg_0.c), vec4<u32>(arg_0.c, 4294967295u, arg_0.c, arg_0.c)))), 107723u ^ arg_0.c, arg_2, Struct_1(-_wgslsmith_mod_vec3_i32(abs(arg_3), u_input.a.yyw << (vec3<u32>(arg_0.c, 24815u, arg_0.c) % vec3<u32>(32u))), select(false, arg_2, !arg_0.b & false), abs(1u), !arg_0.d));
    var var_1 = vec2<bool>(all(vec4<bool>(!all(vec4<bool>(false, true, arg_0.b, var_0.c)), !arg_0.d.x && true, any(arg_0.d), true)), false);
    let var_2 = countOneBits(_wgslsmith_mod_u32(~(~countOneBits(arg_0.c)), ~(~arg_0.c) << (0u % 32u)));
    var_0 = Struct_2(vec4<u32>(~_wgslsmith_mult_u32(var_0.d.c, arg_0.c), arg_0.c, abs(select(1u ^ arg_0.c, 4294967295u, arg_2)), arg_0.c), var_0.d.c, func_2().d.x, func_2());
    let var_3 = 1148f;
    return Struct_1(vec3<i32>(abs(~(1i & arg_0.a.x)), ((-63255i & var_0.d.a.x) ^ -30225i) ^ _wgslsmith_clamp_i32(33006i, func_2().a.x, min(-2147483647i, var_0.d.a.x)), 13113i), select(var_0.c, all(!vec4<bool>(arg_0.b, var_0.d.d.x, arg_0.d.x, true)) & ((i32(-1i) * -42993i) < _wgslsmith_mod_i32(arg_1, arg_0.a.x)), false), ~(~0u), vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3), var_3)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 - 1324f)), any(vec3<bool>(any(vec3<bool>(false, arg_2, true)), true, var_0.d.b))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-938f - arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -246f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-973f)))));
    var var_2 = Struct_4(vec2<u32>(_wgslsmith_mult_u32(arg_0.c, func_4(arg_0, 1i, true, -arg_0.a).c), arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(785f, var_1.x))))), -1702f), vec2<bool>(select(arg_2, 1000f == _wgslsmith_f_op_f32(-arg_1.b), arg_2), true));
    let var_3 = arg_0;
    let var_4 = vec3<bool>(!var_0.d.x, var_3.c < arg_1.a.x, !all(!(!vec4<bool>(false, arg_2, arg_0.b, var_2.c.x))));
    return var_3.a;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> u32 {
    global0 = array<Struct_2, 25>();
    global0 = array<Struct_2, 25>();
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, -4515i), u_input.a.xxz), countOneBits(vec3<i32>(arg_0.x, -11219i, arg_0.x))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(arg_0.x, 19623i), arg_0.x)), func_5(func_4(func_2(), select(u_input.a.x, arg_0.x, true), all(vec3<bool>(false, true, true)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, 1i, arg_0.x), vec3<i32>(10814i, 15914i, u_input.a.x))), Struct_4(arg_1 ^ vec2<u32>(54122u, 1u), _wgslsmith_f_op_f32(-2235f + 1770f), vec2<bool>(true, true)), false)) > reverseBits(arg_2.x);
    let var_1 = 762f;
    let var_2 = Struct_4(countOneBits(vec2<u32>(arg_1.x, ~select(arg_1.x, arg_1.x, var_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) + var_1))), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1268f), _wgslsmith_f_op_f32(f32(-1f) * -614f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))), var_0 & true));
    return max(1u, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 25>();
    var var_0 = Struct_3(~(~(~(~34119u))), ~_wgslsmith_sub_u32(max(14240u, 4294967295u), func_1(vec2<i32>(59455i, 1i), vec2<u32>(4294967295u, 22523u), vec3<i32>(1i, u_input.a.x, -31253i))) >> (2651u % 32u), Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(45032i, 2147483647i, -1i), u_input.a.xzx, vec3<i32>(u_input.a.x, 0i, u_input.a.x)) | ~(-vec3<i32>(-2147483647i, u_input.a.x, -8285i)), false, func_2().c, vec2<bool>(true, true)), _wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(1u, 27419u, 77820u, 1u)), min(vec4<u32>(21022u, 47609u, 1u, 0u), vec4<u32>(13007u, 1u, 1u, 0u))), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), countOneBits(~vec4<u32>(34668u, 4294967295u, 3568u, 0u)))), Struct_2(max(~vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(1u, 43104u, 1u, 93034u), vec4<u32>(56855u, 28452u, 78616u, 44815u))), _wgslsmith_clamp_u32(reverseBits(1u), 24794u, 4294967295u), true, func_4(func_4(func_4(Struct_1(vec3<i32>(u_input.a.x, u_input.a.x, 0i), false, 0u, vec2<bool>(true, false)), -2147483647i, true, vec3<i32>(u_input.a.x, -1i, u_input.a.x)), -u_input.a.x, true, max(vec3<i32>(24196i, -2147483647i, -14071i), vec3<i32>(u_input.a.x, -1i, 2147483647i))), select(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 1i), max(u_input.a.x, u_input.a.x), u_input.a.x == -2147483647i), any(vec3<bool>(false, false, false)), firstTrailingBit(_wgslsmith_sub_vec3_i32(u_input.a.ywx, vec3<i32>(u_input.a.x, -8829i, -1i))))));
    var_0 = Struct_3(var_0.e.d.c, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_0.e.a.ww, vec2<u32>(var_0.d, var_0.e.d.c)), countOneBits(_wgslsmith_add_u32(var_0.a, 17463u))) << ((~(~40522u) << (~(0u & var_0.d) % 32u)) % 32u), Struct_1(var_0.c.a, ~(~1i) >= u_input.a.x, reverseBits(_wgslsmith_dot_vec3_u32(var_0.e.a.xzz, select(vec3<u32>(25649u, 4294967295u, 3848u), vec3<u32>(4294967295u, var_0.b, var_0.c.c), vec3<bool>(var_0.e.d.d.x, var_0.e.c, var_0.e.d.b)))), select(func_2().d, var_0.e.d.d, vec2<bool>(true, true))), var_0.c.c, Struct_2(vec4<u32>(4294967295u, 4294967295u, min(~8743u, 1u), var_0.d), countOneBits(1u), true, Struct_1(u_input.a.xxy, !all(vec2<bool>(true, true)), var_0.b, var_0.e.d.d)));
    let var_1 = var_0.e.a.wyy << (vec3<u32>(_wgslsmith_add_u32(countOneBits(4294967295u), func_4(var_0.e.d, firstLeadingBit(var_0.e.d.a.x), var_0.e.c, var_0.c.a).c), max(~_wgslsmith_sub_u32(var_0.c.c, var_0.b), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, var_0.b, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.b, 35800u), var_0.e.a.ywz))), ~var_0.c.c) % vec3<u32>(32u));
    var_0 = Struct_3(firstLeadingBit(_wgslsmith_mult_u32(var_1.x, var_0.b) >> ((_wgslsmith_clamp_u32(var_0.e.d.c, 0u, var_1.x) | func_4(var_0.e.d, u_input.a.x, var_0.c.d.x, vec3<i32>(u_input.a.x, var_0.c.a.x, -2147483647i)).c) % 32u)), var_0.e.a.x, func_2(), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x >> (~1u % 32u), _wgslsmith_add_u32(20751u, var_1.x), 1u, abs(~8067u)), vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(var_0.e.a, var_0.e.a), 1u, 1u)), global0[_wgslsmith_index_u32(4294967295u, 25u)]);
    let var_2 = Struct_4(var_1.yz, 260f, var_0.c.d);
    var var_3 = _wgslsmith_div_vec3_u32(var_1, _wgslsmith_sub_vec3_u32(~(vec3<u32>(var_2.a.x, var_1.x, 97155u) ^ vec3<u32>(4164u, 1u, var_1.x)), var_1));
    let var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b, 2508f), _wgslsmith_f_op_f32(-var_4))), var_2.b), select(reverseBits(~firstTrailingBit(var_0.e.a.zzy)), reverseBits(vec3<u32>(var_1.x, 4294967295u, ~var_0.e.b)), var_2.c.x), ~59144u);
}

