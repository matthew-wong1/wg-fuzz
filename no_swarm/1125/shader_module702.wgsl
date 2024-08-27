struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(4294967295u, vec2<u32>(64131u, 10647u), vec2<i32>(-991i, 1i), false, vec3<f32>(-345f, 1000f, -983f)), Struct_1(1u, vec2<u32>(3464u, 1u), vec2<i32>(44227i, 18018i), false, vec3<f32>(-1000f, 1112f, 1000f)), Struct_1(1u, vec2<u32>(49117u, 4294967295u), vec2<i32>(1i, i32(-2147483648)), true, vec3<f32>(1001f, 1034f, 1859f)), Struct_1(1u, vec2<u32>(1u, 0u), vec2<i32>(-1i, 11368i), false, vec3<f32>(-1000f, 1772f, 837f)), Struct_1(5263u, vec2<u32>(54053u, 4294967295u), vec2<i32>(-273i, -26626i), false, vec3<f32>(460f, 1000f, 2077f)), Struct_1(0u, vec2<u32>(22965u, 26402u), vec2<i32>(-31341i, -15898i), false, vec3<f32>(-309f, -387f, 721f)), Struct_1(43739u, vec2<u32>(17399u, 22495u), vec2<i32>(0i, -7595i), true, vec3<f32>(1000f, 685f, -191f)), Struct_1(1u, vec2<u32>(71766u, 1u), vec2<i32>(1i, -30745i), false, vec3<f32>(-375f, 547f, -1899f)), Struct_1(7149u, vec2<u32>(11027u, 0u), vec2<i32>(0i, 2147483647i), true, vec3<f32>(753f, 738f, -733f)), Struct_1(4294967295u, vec2<u32>(6447u, 0u), vec2<i32>(-1i, 27062i), true, vec3<f32>(-855f, -183f, 694f)), Struct_1(4924u, vec2<u32>(57687u, 10278u), vec2<i32>(22148i, 1i), true, vec3<f32>(-2789f, 173f, -398f)), Struct_1(0u, vec2<u32>(72252u, 1u), vec2<i32>(1i, -19629i), true, vec3<f32>(-262f, -597f, -1000f)), Struct_1(4294967295u, vec2<u32>(1u, 1u), vec2<i32>(7063i, 2147483647i), true, vec3<f32>(-902f, 140f, 545f)), Struct_1(13097u, vec2<u32>(0u, 0u), vec2<i32>(-25251i, 5993i), false, vec3<f32>(433f, 965f, -232f)), Struct_1(0u, vec2<u32>(4294967295u, 0u), vec2<i32>(i32(-2147483648), 94860i), false, vec3<f32>(-1638f, -921f, 731f)), Struct_1(1u, vec2<u32>(1u, 33167u), vec2<i32>(0i, i32(-2147483648)), true, vec3<f32>(719f, 439f, 469f)));

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(~(u_input.a ^ u_input.a), -4341i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -62099i), vec2<i32>(-2147483647i, u_input.a)) | vec2<i32>(-1i, 28321i), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(2147483647i, -1i)), abs(vec2<i32>(0i, u_input.a))), min(vec2<i32>(u_input.a, -27672i), vec2<i32>(23161i, 40991i)) & _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 5416i), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 22727i), ~vec2<i32>(-2147483647i, 1i)), ~select(vec2<i32>(35827i, -50614i), vec2<i32>(u_input.a, u_input.a), true)));
    var var_1 = global0[_wgslsmith_index_u32(38717u, 16u)];
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(countOneBits(~35173u), 16u)]);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_1.b.x), 1u), 16u)];
    global1 = array<vec4<bool>, 7>();
    return u_input.a;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1014f);
    global0 = array<Struct_1, 16>();
    let var_1 = max(u_input.a, ~(-1i));
    let var_2 = firstLeadingBit(vec2<i32>(1i, var_1)) | vec2<i32>(var_1, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - _wgslsmith_f_op_f32(-440f - 1172f)), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 25369u, u_input.b), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))));
    var var_3 = !(!all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))));
    return !select(!all(vec3<bool>(true, true, true)), -1i < var_1, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false))));
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<bool>, 7>();
    global1 = array<vec4<bool>, 7>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -515f), 694f, _wgslsmith_f_op_f32(137f * -722f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-157f - 1037f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-825f, 2324f, true)))), -326f), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), func_2()))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, -2374f, -1000f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1142f, -642f, -2553f))) + vec3<f32>(-1237f, 1319f, -911f))), vec3<f32>(-1118f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(395f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1384f))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), all(vec3<bool>(false, true, true))))));
    let var_1 = Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b << (4294967295u % 32u), 4294967295u, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, 32686u, 53337u, 70258u))), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(48611u, 4294967295u, u_input.b, 4294967295u), vec4<u32>(86111u, 45885u, u_input.b, 111897u)))));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(abs(~(-vec2<i32>(10127i, -13511i))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, u_input.a)), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -33434i), vec2<i32>(-2147483647i, 1i)))), vec2<i32>(i32(-1i) * -1i, func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_0.x)), min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(53568u, u_input.b, u_input.b, var_1.a), vec4<u32>(var_1.a, 61412u, 1u, u_input.b))))));
    return Struct_3(~(~_wgslsmith_add_u32(u_input.b, 1u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1405f, arg_2.a.e.x, arg_2.a.e.x)) * vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_2.a.e.x)))), arg_2.a.e.x, _wgslsmith_f_op_f32(abs(-1161f))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-3020f, -238f, var_0.x), arg_2.a.e)))), vec3<f32>(arg_2.a.e.x, _wgslsmith_f_op_f32(arg_2.a.e.x + _wgslsmith_f_op_f32(max(arg_2.a.e.x, arg_2.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(786f, var_0.x, var_0.x)) + vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1551f), _wgslsmith_f_op_f32(-530f * 746f))) + arg_2.a.e));
    let var_1 = _wgslsmith_mult_vec2_i32(max(select(_wgslsmith_add_vec2_i32(arg_0, vec2<i32>(arg_0.x, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.x, -26936i), arg_0), false), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -5196i), vec2<i32>(-15315i, arg_2.a.c.x))) ^ ~arg_2.a.c, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(-arg_2.a.c), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.a.c.x, u_input.a), vec2<i32>(u_input.a, 61480i) | arg_2.a.c), ~abs(arg_2.a.c)), ~vec2<i32>(~(-19883i), 1i), vec2<i32>(1i, u_input.a)));
    let var_2 = ~_wgslsmith_mult_u32(4294967295u, 1u);
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, arg_2.a.e.x, -1296f)), arg_2.a.e));
    return Struct_1(_wgslsmith_mod_u32(reverseBits(arg_1.a), arg_2.a.b.x), abs(~vec2<u32>(var_2, 40630u)), ~(-vec2<i32>(arg_0.x, _wgslsmith_add_i32(-40401i, 1i))), arg_2.a.d | false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, -1568f, var_0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1596f, -118f, 314f))) - vec3<f32>(930f, arg_2.a.e.x, arg_2.a.e.x))), vec3<f32>(_wgslsmith_div_f32(arg_2.a.e.x, _wgslsmith_f_op_f32(-1067f * -461f)), arg_2.a.e.x, var_0.x), arg_2.a.d)));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: Struct_1) -> bool {
    var var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(~arg_0.a.a, 4294967295u ^ arg_3.a), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.a, 2297u), arg_3.b, arg_3.b) & ~_wgslsmith_clamp_vec2_u32(arg_3.b, arg_0.a.b, arg_0.a.b));
    var var_1 = arg_3.c;
    var_0 = select(_wgslsmith_mult_u32(max(_wgslsmith_clamp_u32(~arg_2.a, firstTrailingBit(arg_3.a), 34275u), _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.a.a, 85905u), ~0u)), _wgslsmith_add_u32(firstTrailingBit(func_1().a), arg_2.a)), arg_2.a, false);
    global0 = array<Struct_1, 16>();
    var_1 = arg_0.a.c;
    return arg_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 7>();
    let var_0 = countOneBits(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.a, u_input.a) ^ vec4<i32>(0i, u_input.a, -1i, 10891i), vec4<i32>(u_input.a, -62894i, u_input.a, u_input.a) << (vec4<u32>(4294967295u, 0u, u_input.b, 4294967295u) % vec4<u32>(32u))), -_wgslsmith_mod_i32(u_input.a, 1i), -52832i));
    global0 = array<Struct_1, 16>();
    let var_1 = Struct_1(72013u, ~(~abs(~vec2<u32>(32748u, u_input.b))), vec2<i32>(-2147483647i, ~u_input.a), func_5(Struct_2(func_4(var_0.xx, func_1(), Struct_2(global0[_wgslsmith_index_u32(0u, 16u)]))), any(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(17876u, 0u, 7646u)), 7u)]), func_1(), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, abs(~u_input.b)), 16u)]), vec3<f32>(1f, 1f, 1f));
    global1 = array<vec4<bool>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e.yz - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.e.x, var_1.e.x)))) * vec2<f32>(-133f, _wgslsmith_f_op_f32(-var_1.e.x))))));
}

