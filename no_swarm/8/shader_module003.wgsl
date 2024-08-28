struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 12627u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(true, true);
    let var_1 = u_input.a.yx;
    let var_2 = reverseBits(~var_1.x);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, select((0u ^ u_input.d) | 1u, ~abs(90752u), var_0.x & all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), 1u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 27939u), 4294967295u ^ ~var_2)), vec4<u32>(countOneBits(_wgslsmith_clamp_u32(var_1.x, u_input.a.x, 28449u) | var_2), countOneBits(21089u), var_2, ~var_2));
    let var_3 = _wgslsmith_div_f32(-1838f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(943f - _wgslsmith_f_op_f32(min(260f, -1018f)))));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x << (82604u % 32u), countOneBits(arg_0.a), arg_0.a, _wgslsmith_mod_u32(1u, 1u)) | firstTrailingBit(vec4<u32>(13747u, u_input.d, arg_0.a, arg_0.a)), ~(~reverseBits(vec4<u32>(0u, u_input.d, 25555u, 48120u)))));
    let var_1 = vec3<bool>(true, !func_3(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-148f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-847f)))), true)) <= _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f))))));
    let var_2 = Struct_3(all(select(vec2<bool>(true, any(var_1.xx)), vec2<bool>(true, true && var_1.x), true)), ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.c), abs(u_input.b)), u_input.b));
    var_0 = ~firstLeadingBit(min(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, 23232u, u_input.a.x), vec4<u32>(u_input.d, 1u, arg_0.a, arg_0.a)), ~(~vec4<u32>(var_0.x, 23331u, u_input.a.x, var_0.x))));
    var var_3 = Struct_2(Struct_1(~abs(abs(var_0.x))), u_input.b.x);
    return Struct_2(Struct_1(~(~4294967295u)), -(~_wgslsmith_add_i32(var_3.b | var_3.b, var_2.b.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_4) -> vec2<u32> {
    global0 = ~0u;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.c.xz), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(132f, arg_3.c.x), arg_3.c.zw))) - _wgslsmith_div_vec2_f32(vec2<f32>(-1411f, _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.c.x, -534f)))))));
    let var_1 = Struct_3(true, select((~u_input.b ^ -vec2<i32>(u_input.c, arg_0.x)) & vec2<i32>(~19399i, ~arg_0.x), select(arg_0.zy, arg_0.xx, vec2<bool>(true, arg_2)), vec2<bool>(_wgslsmith_sub_i32(5170i, 41941i) >= arg_3.b.b, true)));
    global0 = 0u;
    var var_2 = vec3<bool>(arg_3.a, var_1.a && false, !var_1.a);
    return ~(vec2<u32>(reverseBits(_wgslsmith_mult_u32(48781u, arg_3.b.a.a)), 76055u) >> (vec2<u32>(~(u_input.d | u_input.d), firstLeadingBit(arg_1.x)) % vec2<u32>(32u)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_u32(~firstTrailingBit(vec2<u32>(~arg_3.x, 1u)), _wgslsmith_mod_vec2_u32(func_4(~vec3<i32>(-39275i, 2147483647i, 17304i) >> (_wgslsmith_div_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, 54268u, 36576u, 4294967295u), abs(vec4<u32>(1u, u_input.a.x, 1u, arg_3.x))), true, Struct_4(arg_1, func_2(arg_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-549f, 291f, 640f, -247f)))), u_input.a.yx));
    global0 = var_0.x;
    global0 = ~arg_3.x;
    let var_1 = Struct_3(arg_1, -_wgslsmith_div_vec2_i32(vec2<i32>(1i | arg_0, 1i), -(~u_input.b)));
    let var_2 = Struct_4(all(!select(vec4<bool>(false, true, var_1.a, true), !vec4<bool>(arg_1, arg_1, false, var_1.a), !vec4<bool>(false, true, true, var_1.a))), func_2(func_2(arg_2.a).a), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-946f + 655f), 1f))), -2905f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(404f - 909f))), _wgslsmith_f_op_f32(f32(-1f) * -589f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))))));
    return Struct_2(func_2(arg_2.a).a, arg_0);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(4684u, u_input.a.x);
    var var_1 = Struct_3(any(vec2<bool>(false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))))), -_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b, u_input.b), firstLeadingBit(vec2<i32>(arg_1.b, u_input.c))), u_input.b));
    return func_2(Struct_1(abs(abs(~5499u))));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_4(false, func_2(Struct_1(~_wgslsmith_mod_u32(4294967295u, u_input.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1277f, 1234f, -950f, -2054f), vec4<f32>(1352f, 1566f, 1055f, 762f)))))));
    let var_1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-727f * var_0.c.x), var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + var_0.c.x), var_0.c.x), var_0.b, vec2<i32>(~u_input.b.x, 0i)).a;
    global0 = _wgslsmith_mult_u32(92007u, var_0.b.a.a);
    var var_2 = Struct_4(true, Struct_2(Struct_1(arg_0.a.a << (min(0u, 1u) % 32u)), _wgslsmith_mod_i32(27467i, firstLeadingBit(2147483647i | var_0.b.b))), vec4<f32>(-777f, var_0.c.x, var_0.c.x, 1853f));
    global0 = var_2.b.a.a;
    return 56444u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(func_6(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1974f, 1405f, -159f, 803f)), func_1(u_input.b.x, true, Struct_2(Struct_1(u_input.d), -8613i), u_input.a), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(13099i, 5288i))), _wgslsmith_mult_vec4_u32(vec4<u32>(86766u, u_input.a.x, u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 4650u, 0u, 1u), vec4<u32>(4294967295u, 26367u, 4294967295u, 42098u))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, 1781i, u_input.c, u_input.b.x), abs(vec4<i32>(-913i, u_input.c, 0i, u_input.c))), Struct_3(true, vec2<i32>(0i, -1i))), func_6(func_1(1i, any(vec4<bool>(false, false, true, true)), func_2(Struct_1(4294967295u)), u_input.a), vec4<u32>(1u | u_input.a.x, _wgslsmith_add_u32(u_input.d, 21630u), _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(u_input.d, 0u)), 17562u), ~vec4<i32>(u_input.b.x, u_input.b.x, -12053i, u_input.b.x), Struct_3(true, u_input.b >> (u_input.a.zy % vec2<u32>(32u)))), u_input.d, max(u_input.a.x, u_input.a.x));
    global0 = var_0.x;
    global0 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 4294967295u), var_0.x, _wgslsmith_clamp_u32(6515u, var_0.x, u_input.a.x)), 4912u, ~(~u_input.a.x), _wgslsmith_mod_u32(1u, 1u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-948f, -457f, -883f, 1000f) + vec4<f32>(-1619f, -175f, 116f, 1317f)), vec4<f32>(-139f, 501f, -1000f, -140f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-642f, 186f, 136f, 1362f), vec4<f32>(349f, 163f, -349f, -199f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1363f, -1229f, 402f) + vec4<f32>(605f, -916f, 1062f, 235f)), vec4<bool>(true, false, true, false)))), !(func_5(vec4<f32>(327f, -246f, 643f, 216f), Struct_2(Struct_1(0u), 2147483647i), vec2<i32>(0i, u_input.c)).b >= firstLeadingBit(-6959i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-669f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-592f, 418f)) - -485f), _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(f32(-1f) * -177f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1423f, 973f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-627f, 1000f) * vec2<f32>(974f, 1000f)))))));
}

