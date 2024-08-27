struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, vec4<i32>(-19767i, 2147483647i, 0i, -6959i), 1u), 12815u, vec4<u32>(40457u, 121707u, 4294967295u, 0u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = arg_1.a.b;
    let var_1 = Struct_1(any(select(select(select(vec4<bool>(false, arg_2.a.a, false, false), vec4<bool>(arg_2.a.a, true, arg_1.a.a, false), vec4<bool>(false, global0.a.a, true, arg_1.a.a)), select(vec4<bool>(global0.a.a, global0.a.a, arg_1.a.a, arg_2.a.a), vec4<bool>(global0.a.a, true, true, global0.a.a), vec4<bool>(false, arg_2.a.a, arg_2.a.a, arg_1.a.a)), select(vec4<bool>(arg_2.a.a, arg_2.a.a, arg_1.a.a, false), vec4<bool>(false, global0.a.a, false, false), vec4<bool>(true, false, true, global0.a.a))), select(!vec4<bool>(false, global0.a.a, false, true), !vec4<bool>(global0.a.a, arg_1.a.a, true, false), 4294967295u < u_input.b.x), select(vec4<bool>(arg_1.a.a, global0.a.a, arg_2.a.a, global0.a.a), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), arg_2.a.a), true))), _wgslsmith_sub_vec4_i32(arg_2.a.b, arg_2.a.b), _wgslsmith_mult_u32(max(global0.c.x, 1u), ~27903u));
    var var_2 = vec2<bool>((true | any(!vec2<bool>(var_1.a, arg_1.a.a))) && !(any(vec2<bool>(false, arg_1.a.a)) && all(vec3<bool>(true, true, var_1.a))), arg_0 < _wgslsmith_f_op_f32(f32(-1f) * -261f));
    let var_3 = arg_1.c;
    var_0 = ~abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(global0.a.b.x, var_0.x, -27145i, arg_1.a.b.x), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2.a.b, vec4<i32>(0i, 1i, 2147483647i, u_input.a.x)), ~global0.a.b)));
    return _wgslsmith_mult_vec4_u32(u_input.b, u_input.b);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    var var_0 = true;
    let var_1 = -32022i;
    var var_2 = Struct_2(Struct_1(arg_3.c, arg_1.b, _wgslsmith_sub_u32(1u, u_input.b.x)), _wgslsmith_clamp_u32(~(~arg_3.b.c.x), 16545u, ~36328u) ^ ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_3.b.c, vec4<u32>(arg_1.c, global0.c.x, arg_1.c, global0.b)), ~u_input.b), countOneBits(func_3(_wgslsmith_f_op_f32(min(656f, -157f)), Struct_2(Struct_1(arg_1.a, vec4<i32>(arg_3.a.x, -5257i, arg_1.b.x, arg_1.b.x), 0u), ~global0.a.c, _wgslsmith_add_vec4_u32(arg_3.b.c, vec4<u32>(global0.b, 0u, arg_3.b.a.c, arg_1.c))), arg_3.b)));
    let var_3 = select(arg_0.xxw, vec3<bool>(false, true, true), true);
    let var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1942f)) - -523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-832f - -193f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1070f - -760f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1488f - -846f), 767f)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f - 127f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-516f, 1159f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -425f)))))));
    return Struct_3(arg_3.a << ((func_3(_wgslsmith_f_op_f32(select(626f, -1366f, true)), Struct_2(Struct_1(true, vec4<i32>(20717i, var_2.a.b.x, -62001i, -27999i), arg_2.x), global0.c.x, vec4<u32>(1u, arg_2.x, 35361u, 1u)), arg_3.b) | ~vec4<u32>(arg_2.x, var_2.c.x, 4294967295u, var_2.c.x)) % vec4<u32>(32u)), Struct_2(arg_1, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(var_2.c, vec4<u32>(34938u, u_input.b.x, arg_2.x, 4294967295u)), arg_2), max(vec4<u32>(~3509u, u_input.b.x & 4294967295u, 6078u, u_input.b.x), ~(~var_2.c))), !(!select(true, true, var_2.a.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: bool) -> vec3<bool> {
    let var_0 = arg_1.x << (1u % 32u);
    var var_1 = func_2(select(vec4<bool>(false, true, !(!arg_0.b.a.a), select(false, arg_0.b.a.a, true) && all(vec4<bool>(true, global0.a.a, true, false))), !vec4<bool>(func_2(vec4<bool>(false, false, arg_0.c, true), arg_0.b.a, vec4<u32>(arg_0.b.b, u_input.b.x, u_input.b.x, arg_0.b.a.c), arg_0).c, false, true, all(vec4<bool>(arg_0.b.a.a, false, arg_0.b.a.a, true))), true & arg_0.c), func_2(!select(select(vec4<bool>(false, arg_3, true, false), vec4<bool>(global0.a.a, arg_0.c, arg_3, false), global0.a.a), !vec4<bool>(arg_0.c, false, arg_0.b.a.a, true), true), func_2(vec4<bool>(true, global0.a.a, global0.a.a, arg_3), Struct_1(!arg_0.c, -global0.a.b, ~1u), vec4<u32>(arg_1.x & 0u, reverseBits(16804u), arg_1.x, ~global0.a.c), arg_0).b.a, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, var_0, 10088u) << (arg_0.b.c.zyz % vec3<u32>(32u)), global0.c.zzz ^ arg_1.xzx), ~_wgslsmith_add_u32(4294967295u, arg_0.b.b), global0.c.x, ~arg_1.x), Struct_3(vec4<i32>(_wgslsmith_mult_i32(arg_2.x, -56016i), ~arg_0.b.a.b.x, arg_2.x, func_2(vec4<bool>(true, global0.a.a, global0.a.a, arg_3), arg_0.b.a, vec4<u32>(4294967295u, var_0, 1u, var_0), arg_0).a.x), func_2(vec4<bool>(arg_3, global0.a.a, false, false), arg_0.b.a, ~vec4<u32>(60572u, 62515u, 39810u, var_0), Struct_3(arg_0.a, Struct_2(arg_0.b.a, 3611u, vec4<u32>(arg_0.b.a.c, 1410u, arg_0.b.a.c, 0u)), global0.a.a)).b, all(vec4<bool>(false, false, false, true)))).b.a, ~u_input.b, arg_0);
    var_1 = arg_0;
    let var_2 = Struct_2(var_1.b.a, arg_1.x, arg_0.b.c);
    let var_3 = 0u;
    return vec3<bool>(all(select(!vec3<bool>(true, arg_0.b.a.a, global0.a.a), select(select(vec3<bool>(false, true, arg_3), vec3<bool>(arg_3, false, true), var_1.b.a.a), select(vec3<bool>(global0.a.a, arg_3, true), vec3<bool>(true, true, var_2.a.a), arg_0.c), all(vec4<bool>(arg_3, global0.a.a, global0.a.a, var_1.b.a.a))), true)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, u_input.c.x, var_2.a.b.x), global0.a.b.wwy), global0.a.b.yyx) > var_2.a.b.x, var_2.a.a);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<i32>) -> u32 {
    global0 = arg_0;
    var var_0 = arg_2.wwz;
    let var_1 = select(arg_1.zzz, arg_1.yzz, select(vec3<bool>(arg_1.x, global0.a.a, true), !func_4(func_2(vec4<bool>(true, true, global0.a.a, false), global0.a, vec4<u32>(80248u, arg_0.c.x, 53702u, arg_0.c.x), Struct_3(vec4<i32>(u_input.c.x, var_0.x, -42414i, global0.a.b.x), arg_0, global0.a.a)), vec4<u32>(82445u, 1u, u_input.b.x, 1u) & vec4<u32>(global0.c.x, arg_0.b, 4294967295u, arg_0.b), u_input.c | vec3<i32>(-4044i, -15636i, arg_2.x), true), select(arg_1.wzy, arg_1.yzx, any(vec4<bool>(global0.a.a, false, arg_0.a.a, false)))));
    var_0 = vec3<i32>(0i, ~(~arg_2.x), firstLeadingBit(~_wgslsmith_add_i32(43068i, -var_0.x)));
    global0 = arg_0;
    return arg_0.b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32, arg_3: bool) -> bool {
    return true;
}

fn func_6(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<bool>) -> Struct_2 {
    global0 = Struct_2(global0.a, 4294967295u, ~(abs(global0.c & vec4<u32>(u_input.b.x, global0.b, 23137u, global0.c.x)) | ~(~vec4<u32>(global0.a.c, 1u, 45699u, 1u))));
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, 430f)))))));
    var var_1 = Struct_2(global0.a, ~(~(u_input.b.x >> (44878u % 32u))), global0.c);
    var_1 = Struct_2(Struct_1(func_5(Struct_2(Struct_1(arg_1.x, global0.a.b, u_input.b.x), 1u, max(vec4<u32>(844u, 32344u, var_1.a.c, 4294967295u), u_input.b)), arg_1.zyw, _wgslsmith_mod_u32(4294967295u, ~global0.b), !(arg_0 > -1i)), abs(vec4<i32>(countOneBits(15282i), global0.a.b.x, 9139i >> (var_1.c.x % 32u), _wgslsmith_sub_i32(global0.a.b.x, arg_0))), ~4294967295u), 4294967295u & global0.b, vec4<u32>(reverseBits(~27440u), 5827u, var_1.b, 4294967295u));
    var var_2 = Struct_2(func_2(!(!(!arg_2)), func_2(!vec4<bool>(var_1.a.a, arg_2.x, true, global0.a.a), Struct_1(arg_1.x, global0.a.b & var_1.a.b, firstTrailingBit(14452u)), vec4<u32>(firstTrailingBit(1u), _wgslsmith_div_u32(40810u, 21913u), 1u, u_input.b.x), Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(21375i, u_input.a.x, 48225i, -12077i), var_1.a.b), Struct_2(Struct_1(arg_1.x, global0.a.b, var_1.c.x), var_1.b, global0.c), func_2(arg_2, Struct_1(global0.a.a, var_1.a.b, global0.a.c), global0.c, Struct_3(vec4<i32>(global0.a.b.x, 18243i, -46735i, -1i), Struct_2(Struct_1(true, vec4<i32>(var_1.a.b.x, var_1.a.b.x, -2147483647i, 0i), var_1.c.x), 1u, u_input.b), true)).c)).b.a, vec4<u32>(4294967295u, 0u, min(u_input.b.x, var_1.b), ~firstLeadingBit(0u)), Struct_3(vec4<i32>(firstTrailingBit(-23370i), u_input.a.x, 1i, arg_0), func_2(arg_2, Struct_1(false, vec4<i32>(arg_0, 2147483647i, 17825i, 2147483647i), 0u), min(vec4<u32>(5019u, u_input.b.x, var_1.c.x, 33500u), vec4<u32>(var_1.c.x, var_1.a.c, 1u, 4294967295u)), func_2(vec4<bool>(false, arg_1.x, false, var_1.a.a), global0.a, var_1.c, Struct_3(vec4<i32>(var_1.a.b.x, u_input.a.x, -17096i, 0i), Struct_2(Struct_1(var_1.a.a, var_1.a.b, global0.a.c), global0.b, vec4<u32>(var_1.a.c, global0.b, 54891u, 20238u)), arg_2.x))).b, ~(-30906i) <= ~global0.a.b.x)).b.a, max(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c, 8832u, 0u, 4294967295u), u_input.b), 1u ^ var_1.a.c), ~(~global0.b)), ~(vec4<u32>(~u_input.b.x, ~4294967295u, _wgslsmith_dot_vec3_u32(global0.c.xyz, global0.c.ywy), _wgslsmith_div_u32(0u, 4294967295u)) ^ vec4<u32>(countOneBits(u_input.b.x), func_3(-558f, Struct_2(Struct_1(arg_2.x, global0.a.b, 4294967295u), global0.a.c, var_1.c), Struct_2(Struct_1(global0.a.a, vec4<i32>(-1i, var_1.a.b.x, -12554i, 0i), 0u), 33061u, global0.c)).x, ~1u, 1u & u_input.b.x)));
    return Struct_2(func_2(select(arg_1, arg_2, arg_2), var_2.a, firstLeadingBit(vec4<u32>(4294967295u, _wgslsmith_mod_u32(var_1.a.c, 4294967295u), _wgslsmith_sub_u32(32092u, global0.b), ~53894u)), Struct_3(-firstLeadingBit(vec4<i32>(u_input.a.x, 24538i, 24134i, -72313i)), func_2(vec4<bool>(arg_1.x, arg_1.x, true, arg_2.x), global0.a, firstTrailingBit(vec4<u32>(var_2.a.c, u_input.b.x, global0.c.x, var_1.a.c)), Struct_3(vec4<i32>(-1i, var_1.a.b.x, -1i, 59732i), Struct_2(Struct_1(true, vec4<i32>(var_2.a.b.x, var_1.a.b.x, 1i, -1i), 0u), var_2.b, vec4<u32>(42461u, 0u, 1u, var_1.c.x)), false)).b, true)).b.a, 4294967295u, var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(~((abs(0i) ^ -u_input.a.x) & -u_input.c.x), select(vec4<bool>(func_5(Struct_2(Struct_1(global0.a.a, global0.a.b, 0u), global0.a.c, u_input.b), !vec3<bool>(global0.a.a, true, false), func_1(Struct_2(global0.a, global0.c.x, global0.c), vec4<bool>(global0.a.a, global0.a.a, global0.a.a, false), vec4<i32>(global0.a.b.x, -59795i, global0.a.b.x, global0.a.b.x)), false), true, !(global0.a.a && false), false), select(vec4<bool>(false, true, false, true), !vec4<bool>(false, true, true, global0.a.a), true), vec4<bool>(false, true, false, func_4(Struct_3(global0.a.b, Struct_2(Struct_1(false, vec4<i32>(global0.a.b.x, global0.a.b.x, global0.a.b.x, -42877i), 1u), 4294967295u, u_input.b), false), global0.c << (global0.c % vec4<u32>(32u)), vec3<i32>(global0.a.b.x, global0.a.b.x, global0.a.b.x), !global0.a.a).x)), vec4<bool>(max(func_3(-1000f, Struct_2(Struct_1(global0.a.a, vec4<i32>(-23126i, -22694i, u_input.a.x, 1i), 4294967295u), global0.a.c, vec4<u32>(global0.a.c, 0u, global0.c.x, 51926u)), Struct_2(global0.a, u_input.b.x, vec4<u32>(u_input.b.x, global0.a.c, 0u, 4294967295u))).x, global0.a.c) != ~(u_input.b.x ^ 1u), false, false, true && ((false || global0.a.a) || global0.a.a)));
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.b, reverseBits(func_1(var_0, vec4<bool>(global0.a.a, true, false, true), vec4<i32>(-10984i, var_0.a.b.x, var_0.a.b.x, 0i))), 183u, _wgslsmith_dot_vec3_u32(global0.c.yxx, ~global0.c.zyz)), max(global0.c, min(~(~vec4<u32>(u_input.b.x, var_0.a.c, var_0.b, var_0.b)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(48751u, 43008u, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, global0.c.x, var_0.c.x, global0.a.c)), abs(global0.c)))), _wgslsmith_div_vec4_u32(~u_input.b, u_input.b));
    var var_2 = ~vec3<u32>(reverseBits(_wgslsmith_sub_u32(firstTrailingBit(global0.c.x), global0.c.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0.c, vec4<u32>(u_input.b.x, 54164u, 0u, u_input.b.x)), max(~0u, 7062u)), _wgslsmith_dot_vec3_u32(var_1.xzz, global0.c.xyy));
    let var_3 = var_2.x;
    let var_4 = _wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(max(488f, -885f)), var_0, var_0).x, _wgslsmith_add_u32(u_input.b.x, 49849u));
    let x = u_input.a;
    s_output = StorageBuffer(min(global0.a.b.yxy, -countOneBits(global0.a.b.wzz)), vec4<i32>(var_0.a.b.x, ~0i, ~select(var_0.a.b.x, var_0.a.b.x, true), _wgslsmith_mult_i32(~11795i, -_wgslsmith_mod_i32(u_input.c.x, 2147483647i))), 1u, ~vec3<i32>(var_0.a.b.x, _wgslsmith_mult_i32(-1i, var_0.a.b.x), var_0.a.b.x) >> (var_0.c.xzw % vec3<u32>(32u)), var_1.x);
}

