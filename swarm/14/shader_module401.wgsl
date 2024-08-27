struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-21131i, -1i, 7591i, -28521i, 6470i, -1i, 1i, -1i, 2147483647i, 34707i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> u32 {
    var var_0 = arg_0.a.d.x & all(select(!arg_0.a.d, arg_0.a.d, true));
    global0 = array<i32, 10>();
    var var_1 = !(!vec4<bool>(true, false, true, arg_0.a.b));
    var var_2 = 137150u;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2115f + arg_0.a.a.a), 2682f)), arg_0.a.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-913f))), arg_0.a.a.a)));
    return ~(~arg_0.a.a.b);
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_2 {
    return Struct_2(~arg_0, ~arg_0, Struct_1(-1533f, func_3(Struct_5(Struct_3(Struct_1(-1000f, arg_0), true, vec3<i32>(25919i, u_input.a, arg_1.x), vec3<bool>(false, false, true), vec2<u32>(91678u, 81153u))))), ~_wgslsmith_div_u32(arg_0, arg_0));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 0i;
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -769f);
    let var_3 = ~(~arg_3.d);
    var var_4 = abs(vec2<i32>(~(u_input.a << ((1u >> (arg_3.b % 32u)) % 32u)), -15193i));
    return func_2(func_2(~func_3(Struct_5(Struct_3(Struct_1(-765f, 20137u), arg_2, vec3<i32>(0i, -82160i, -1i), vec3<bool>(var_1, true, var_1), arg_1.xz))), -(vec2<i32>(var_4.x, -1i) & vec2<i32>(global0[_wgslsmith_index_u32(0u, 10u)], 41022i)) | vec2<i32>(_wgslsmith_div_i32(-2147483647i, -1i), -1i)).a, countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 38390i) << (vec2<u32>(arg_1.x, var_3) % vec2<u32>(32u)), -(~vec2<i32>(var_0, var_4.x))))).c;
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.a)) + _wgslsmith_f_op_f32(floor(arg_1.a.a))), arg_1.a.a))) - -1000f);
    var var_1 = false;
    let var_2 = Struct_2(~(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.e, vec2<u32>(28955u, 1u)), arg_1.e) ^ reverseBits(100318u)), arg_1.e.x, func_4(vec4<bool>(true && all(vec4<bool>(false, false, false, arg_1.b)), arg_0, (arg_0 | false) & false, !any(vec4<bool>(arg_1.d.x, true, true, true))), (select(vec3<u32>(arg_1.e.x, 126u, arg_1.e.x), vec3<u32>(arg_1.a.b, 60920u, 1u), arg_1.d) ^ ~vec3<u32>(1u, 2939u, 6914u)) & (vec3<u32>(10150u, arg_1.a.b, 24269u) >> (~vec3<u32>(arg_1.e.x, arg_2, 4294967295u) % vec3<u32>(32u))), !(!arg_1.d.x), Struct_2(1349u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1.e.x, arg_1.a.b), arg_1.e, arg_1.d.zx), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 0u), arg_1.e, vec2<u32>(17430u, arg_2))), Struct_1(_wgslsmith_f_op_f32(-arg_1.a.a), ~23821u), ~arg_2)), 76669u << (_wgslsmith_sub_u32(arg_1.a.b, ~_wgslsmith_sub_u32(arg_1.e.x, 1u)) % 32u));
    var_1 = !arg_0;
    var_1 = all(select(!vec3<bool>(arg_0, !arg_1.d.x, !arg_1.b), arg_1.d, !arg_1.d));
    return Struct_3(arg_1.a, !any(vec4<bool>(arg_0, all(arg_1.d), -12021i < u_input.a, arg_0)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_div_i32(1i, -1i), _wgslsmith_dot_vec3_i32(arg_1.c, arg_1.c), 2147483647i) ^ max(vec3<i32>(-16996i, -4685i, arg_1.c.x), firstLeadingBit(vec3<i32>(u_input.a, 15377i, 1i))), min(~(~arg_1.c), arg_1.c), vec3<i32>(-1i) * -arg_1.c), select(select(vec3<bool>(arg_0, any(vec3<bool>(arg_0, arg_0, arg_0)), any(vec4<bool>(arg_0, arg_0, false, true))), arg_1.d, !(arg_1.b | false)), select(arg_1.d, !(!vec3<bool>(arg_1.d.x, arg_1.b, arg_1.b)), select(-41471i == arg_3, true, true)), all(select(vec2<bool>(arg_1.d.x, true), vec2<bool>(true, true), true))), ~vec2<u32>(func_2(min(arg_1.e.x, 4294967295u), arg_1.c.zy).c.b, _wgslsmith_div_u32(var_2.a ^ 27213u, arg_2)));
}

fn func_1() -> i32 {
    var var_0 = -25897i;
    global0 = array<i32, 10>();
    let var_1 = Struct_5(func_5(true, Struct_3(func_4(vec4<bool>(true, true, true, true), max(vec3<u32>(0u, 1u, 20730u), vec3<u32>(4294967295u, 4294967295u, 21831u)), true, func_2(76097u, vec2<i32>(global0[_wgslsmith_index_u32(1u, 10u)], 0i))), select(true, all(vec3<bool>(true, false, false)), true), _wgslsmith_sub_vec3_i32(vec3<i32>(93249i, -1i, -1i), countOneBits(vec3<i32>(-46617i, 2147483647i, -12907i))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(false, true, false)), ~(~vec2<u32>(57826u, 25383u))), _wgslsmith_mult_u32(_wgslsmith_div_u32(~89648u, _wgslsmith_mult_u32(1u, 4294967295u)), 1u), u_input.a));
    var var_2 = false;
    var var_3 = vec4<bool>(any(select(select(vec4<bool>(var_1.a.b, true, var_1.a.d.x, true), select(vec4<bool>(var_1.a.d.x, var_1.a.b, false, var_1.a.b), vec4<bool>(false, true, true, false), vec4<bool>(true, false, var_1.a.d.x, false)), !vec4<bool>(var_1.a.d.x, var_1.a.d.x, true, var_1.a.b)), !(!vec4<bool>(var_1.a.b, false, var_1.a.b, true)), false)), var_1.a.a.a > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(990f))), var_1.a.d.x, var_1.a.d.x | (var_1.a.d.x || true));
    return _wgslsmith_div_i32(max(var_1.a.c.x, global0[_wgslsmith_index_u32(var_1.a.e.x & firstLeadingBit(1u), 10u)]), u_input.a);
}

fn func_6(arg_0: vec2<f32>, arg_1: i32, arg_2: vec3<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_5(Struct_3(func_5(true, func_5(true, func_5(true, Struct_3(Struct_1(arg_2.x, arg_3), false, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(14448u, 10u)], -2147483647i), vec3<bool>(true, false, true), vec2<u32>(4294967295u, arg_3)), arg_3, 2147483647i), _wgslsmith_clamp_u32(15508u, 1513u, arg_3), -1i), ~abs(arg_3), ~reverseBits(0i)).a, !(true || all(vec2<bool>(false, true))), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(56132u, 10u)], arg_1, arg_1), vec3<i32>(1i, 25815i, -47428i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(1i, arg_1, arg_1), _wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 10u)], arg_1, -16024i), vec3<i32>(global0[_wgslsmith_index_u32(25661u, 10u)], -2147483647i, -2147483647i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(5353i, u_input.a, arg_1), _wgslsmith_mod_vec3_i32(vec3<i32>(-77085i, u_input.a, u_input.a), vec3<i32>(-29583i, arg_1, global0[_wgslsmith_index_u32(48598u, 10u)])), vec3<i32>(-51681i, 0i, -1i) ^ vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))), !func_5(true, func_5(false, Struct_3(Struct_1(arg_0.x, 41090u), false, vec3<i32>(global0[_wgslsmith_index_u32(arg_3, 10u)], u_input.a, 15954i), vec3<bool>(true, true, true), vec2<u32>(arg_3, arg_3)), arg_3, 0i), arg_3, _wgslsmith_clamp_i32(u_input.a, 37185i, global0[_wgslsmith_index_u32(arg_3, 10u)])).d, vec2<u32>(~0u, arg_3) << (firstTrailingBit(~vec2<u32>(1u, arg_3)) % vec2<u32>(32u))));
    global0 = array<i32, 10>();
    return var_0.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -20171i;
    var var_1 = func_6(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1115f + 1065f) * _wgslsmith_f_op_f32(1094f - -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1578f)), 1f), func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(990f, _wgslsmith_f_op_f32(step(-502f, _wgslsmith_f_op_f32(492f + 1064f))), _wgslsmith_f_op_f32(round(-697f)))), reverseBits(~18293u));
    let var_2 = func_5(func_5(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), select(false, true, true))), Struct_3(func_2(var_1.b, vec2<i32>(-10280i, -54461i)).c, any(vec4<bool>(false, false, true, true)), vec3<i32>(func_1(), -3908i, -global0[_wgslsmith_index_u32(58067u, 10u)]), vec3<bool>(true, var_1.b > var_1.b, all(vec4<bool>(false, false, false, false))), vec2<u32>(~var_1.b, 10860u)), ~var_1.b, max(16395i, -global0[_wgslsmith_index_u32(~var_1.b, 10u)])).b, Struct_3(func_2(0u, _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(var_1.b, 10u)], -2147483647i)), -vec2<i32>(global0[_wgslsmith_index_u32(49644u, 10u)], 0i))).c, false, vec3<i32>(abs(~global0[_wgslsmith_index_u32(var_1.b, 10u)]), -86i, -select(var_0, -1i, true)), !vec3<bool>(select(true, true, true), true, select(true, false, false)), vec2<u32>(var_1.b, ~var_1.b) ^ ~(~vec2<u32>(var_1.b, 1u))), 4294967295u, firstLeadingBit(1i));
    var var_3 = _wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(var_1.b, var_1.b, var_1.b, 4294967295u)), ~firstLeadingBit(vec4<u32>(4294967295u, var_1.b, var_1.b, 1u) & vec4<u32>(var_2.e.x, 1u, var_1.b, var_2.e.x))) ^ ~select((vec4<u32>(var_2.e.x, 43107u, 12633u, var_2.e.x) & vec4<u32>(var_1.b, 4223u, 26542u, 49514u)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b, var_1.b, var_1.b, 22122u), vec4<u32>(var_1.b, var_2.a.b, var_1.b, var_2.e.x), vec4<u32>(var_1.b, 78713u, var_2.a.b, 1u)), vec4<u32>(var_1.b, var_2.a.b | var_1.b, _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec2_u32(var_2.e, var_2.e)), !func_5(var_2.d.x, var_2, 0u, 6936i).b);
    let var_4 = 1000f;
    var var_5 = ~(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(var_3.x, var_2.e.x, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(48594u, var_2.a.b, 1u), vec3<u32>(1u, 1u, var_3.x)), 555f == var_1.a), _wgslsmith_mult_vec3_u32(var_3.wyw, var_3.xzx >> (var_3.zzx % vec3<u32>(32u)))));
    var_1 = func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1851f, var_4) - vec2<f32>(var_1.a, var_2.a.a)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(409f, var_2.a.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-951f, -831f)))))), func_5(var_2.d.x, Struct_3(Struct_1(-564f, 1u), var_2.d.x, var_2.c, vec3<bool>(var_2.b, var_2.b, true), ~(~vec2<u32>(0u, 0u))), ~abs(53608u), -(~global0[_wgslsmith_index_u32(1u, 10u)])).c.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-467f, var_2.a.a, 716f))))), vec3<f32>(var_2.a.a, var_1.a, _wgslsmith_f_op_f32(-var_4)))), _wgslsmith_clamp_u32(~(~14076u >> (select(var_5.x, var_5.x, true) % 32u)), var_3.x, ~_wgslsmith_clamp_u32(var_5.x, 4294967295u, 4294967295u) ^ ~var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.xx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.a)), 1f)) + var_1.a), _wgslsmith_f_op_f32(-421f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), var_1.a), abs(var_2.c.x), -812f);
}

