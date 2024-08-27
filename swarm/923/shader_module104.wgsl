struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~(-arg_0.a.x), firstTrailingBit(arg_0.c)), arg_0.a.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-1i, 2147483647i, -1i), ~arg_0.a.x) << (41493u % 32u), arg_0.c), max(vec4<i32>(-(~(-2147483647i)), _wgslsmith_sub_i32(-1i, _wgslsmith_sub_i32(-2147483647i, -1i)), _wgslsmith_mult_i32(min(arg_0.c, arg_0.a.x), ~2147483647i), arg_0.a.x), vec4<i32>(13485i >> (u_input.b % 32u), 1i, -57600i, max(2147483647i, arg_0.c)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.a.x), ~vec4<u32>(6058u, 1u, 4294967295u, u_input.b)) % vec4<u32>(32u))));
    var var_1 = ~arg_0.a.yxw;
    global1 = array<vec3<bool>, 2>();
    let var_2 = Struct_2(~(((u_input.a.x | 0u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 14968u, 21821u, 101553u), vec4<u32>(62199u, u_input.b, u_input.b, 4294967295u)) % 32u)) >> (u_input.a.x % 32u)));
    global0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a.zyz, vec3<i32>(var_0, -23812i, var_0)), arg_0.a.wwy), -(~arg_0.a.zwy)) >> (15679u % 32u);
    return arg_0.a.xyx;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = firstTrailingBit(select(-24315i, -40046i, false));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(616f, _wgslsmith_f_op_f32(abs(-592f)), _wgslsmith_f_op_f32(round(-593f)), _wgslsmith_f_op_f32(max(arg_0.a.d, -1065f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-695f, arg_0.a.d, arg_2.d, -106f))))))));
    let var_2 = ~11870u;
    global1 = array<vec3<bool>, 2>();
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_2.a.wxx, func_3(arg_2)), _wgslsmith_sub_i32(-var_0, select(arg_2.c, arg_0.a.c, arg_1.x))), 1i, -2147483647i, 3412i), arg_1.x, ~((_wgslsmith_clamp_i32(-2147483647i, -1i, var_0) & firstTrailingBit(var_0)) & ~(i32(-1i) * -16984i)), _wgslsmith_div_f32(-584f, var_1.x), 432f);
    return Struct_2(~min(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a), u_input.a), u_input.a.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3) -> vec4<i32> {
    global1 = array<vec3<bool>, 2>();
    global1 = array<vec3<bool>, 2>();
    let var_0 = vec2<u32>(arg_1.a, arg_1.a);
    let var_1 = vec2<bool>(true, false);
    let var_2 = -1000f;
    return vec4<i32>(~reverseBits(~arg_2.a.c), -1i, -1462i, -(~(-58838i)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(18590i, arg_0.c, arg_2.a.a.x, arg_2.d.x)) & (-select(arg_0.a, arg_0.a, arg_2.a.b) & func_4(arg_2, func_2(arg_2, vec4<bool>(true, arg_0.b, true, arg_2.c), arg_2.a), arg_2)), _wgslsmith_sub_vec4_i32(arg_0.a, _wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0.a.x, arg_2.a.a.x, -1i, -51831i), firstTrailingBit(min(vec4<i32>(58488i, arg_0.a.x, arg_2.d.x, 2147483647i), vec4<i32>(arg_0.a.x, 32623i, arg_0.c, 0i))))), countOneBits(vec4<i32>(firstLeadingBit(~arg_0.c), 0i ^ _wgslsmith_div_i32(-32116i, arg_2.a.a.x), arg_2.d.x, -2147483647i)));
    global0 = 2147483647i;
    var var_1 = Struct_1(vec4<i32>(2147483647i, countOneBits(_wgslsmith_mod_i32(var_0.x, 33514i) ^ firstTrailingBit(-4604i)), _wgslsmith_div_i32(select(_wgslsmith_clamp_i32(-21481i, var_0.x, arg_0.a.x), -2147483647i, arg_0.b), _wgslsmith_sub_i32(0i, countOneBits(-130i))), -57010i), arg_0.b, -2427i, _wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f))), _wgslsmith_f_op_f32(step(arg_3.x, arg_3.x)));
    var var_2 = min(min(vec3<u32>(u_input.a.x >> (1u % 32u), select(u_input.a.x, 62170u, false), 114398u) ^ ~arg_2.b, min(arg_2.b, arg_2.b)), arg_2.b);
    var var_3 = arg_0;
    return func_2(arg_2, vec4<bool>(var_3.b, any(!select(vec4<bool>(false, var_1.b, false, var_1.b), vec4<bool>(var_1.b, var_1.b, arg_0.b, var_1.b), true)), var_1.b, true), arg_0);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    global0 = ~_wgslsmith_sub_i32(select(_wgslsmith_clamp_i32(2147483647i, -22808i, -6527i), 2147483647i, any(global1[_wgslsmith_index_u32(~arg_1.a, 2u)])), firstTrailingBit(~firstLeadingBit(-1i)));
    global0 = firstLeadingBit(firstLeadingBit(-1i));
    var var_0 = 0u;
    var var_1 = Struct_1(-_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-16443i, 49521i, 48197i, -12920i), vec4<i32>(-14606i, 1i, 1i, 40412i)), ~vec4<i32>(1i, 1i, 1i, 1i)), true, -1i >> (max(~4294967295u, u_input.b) % 32u), 2047f, -2361f);
    let var_2 = var_1.a.x;
    return vec4<bool>(!(!var_1.b), var_1.b, true | var_1.b, ~u_input.a.x <= 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(func_5(func_1(Struct_1(vec4<i32>(-63535i, 1i, -1i, 54027i), false, 1i, 763f, 337f), 360f, Struct_3(Struct_1(vec4<i32>(-8343i, -1i, 2147483647i, -42535i), false, 73323i, 1306f, 414f), vec3<u32>(47393u, 4294967295u, 29785u), true, vec4<i32>(-1i, 53491i, -2147483647i, 0i)), vec3<f32>(434f, -742f, -362f)), Struct_2(1u)), vec4<bool>(false, true, u_input.b < 3191u, true), select(true, func_5(Struct_2(18911u), Struct_2(u_input.a.x)).x, true)));
    var var_1 = ~vec3<u32>(u_input.b, 4294967295u, u_input.b);
    var_1 = max(firstTrailingBit(_wgslsmith_clamp_vec3_u32(select(~vec3<u32>(0u, var_1.x, var_1.x), countOneBits(vec3<u32>(var_1.x, 72847u, var_1.x)), var_0.x || true), ~vec3<u32>(u_input.a.x, var_1.x, u_input.b) ^ reverseBits(vec3<u32>(var_1.x, 18819u, var_1.x)), _wgslsmith_clamp_vec3_u32(max(vec3<u32>(var_1.x, 3118u, 38709u), vec3<u32>(22851u, 0u, 1u)), ~vec3<u32>(4294967295u, var_1.x, u_input.a.x), vec3<u32>(var_1.x, 1u, var_1.x) >> (vec3<u32>(var_1.x, 35119u, 55535u) % vec3<u32>(32u))))), min(min(vec3<u32>(129068u, var_1.x, u_input.b) | vec3<u32>(17053u, 1u, 1u), vec3<u32>(4294967295u, u_input.a.x, u_input.b)), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~40819u, ~134160u)) & (firstLeadingBit(~vec3<u32>(1u, u_input.b, u_input.b)) | (~vec3<u32>(var_1.x, 1u, u_input.a.x) ^ ~vec3<u32>(9359u, u_input.a.x, 1u))));
    global1 = array<vec3<bool>, 2>();
    var var_2 = Struct_3(Struct_1(vec4<i32>(36765i, ~(-1i), -32951i, ~1i), !all(vec3<bool>(false, true, true)), _wgslsmith_add_i32(-33562i, -5986i) << (_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_1.x, 5968u), countOneBits(var_1.x)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(207f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1527f) - 448f)), _wgslsmith_f_op_f32(ceil(-1169f))), vec3<u32>(var_1.x ^ ~(~var_1.x), firstLeadingBit(~_wgslsmith_sub_u32(u_input.a.x, var_1.x)), 0u), func_5(func_2(Struct_3(Struct_1(vec4<i32>(26338i, 3413i, -7619i, 0i), var_0.x, -578i, -430f, 1897f), vec3<u32>(var_1.x, u_input.a.x, 47863u), false, vec4<i32>(-64203i, -1i, 44941i, 23573i)), vec4<bool>(var_0.x, var_0.x, true, false), Struct_1(vec4<i32>(55363i, 1i, -1i, 2147483647i), var_0.x, -23397i, 1482f, -249f)), func_1(Struct_1(vec4<i32>(-2147483647i, 55315i, 0i, -1i), false, 1i, 124f, 1315f), _wgslsmith_f_op_f32(629f * 1118f), Struct_3(Struct_1(vec4<i32>(-22526i, -10256i, 1i, -1i), var_0.x, 611i, 480f, -1000f), vec3<u32>(u_input.a.x, 4294967295u, var_1.x), false, vec4<i32>(18042i, 38121i, 1i, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-981f, 1000f, -399f)))).x | true, _wgslsmith_mult_vec4_i32(~reverseBits(vec4<i32>(-1i, 900i, 13716i, 0i)), -firstLeadingBit(vec4<i32>(-33265i, -2147483647i, -2147483647i, 4780i))) | _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-20434i, 2147483647i, 0i, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -56622i, -1i, 784i), vec4<i32>(20718i, 1i, -16093i, -29347i))), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_3 = global1[_wgslsmith_index_u32(u_input.b, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(525f + 936f), var_2.a.e, var_0.x)) * var_2.a.e) * 572f));
}

