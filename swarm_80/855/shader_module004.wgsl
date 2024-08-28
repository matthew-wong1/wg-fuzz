struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 24> = array<Struct_5, 24>(Struct_5(vec4<bool>(false, true, false, true), 0u, 4294967295u, vec2<i32>(-6396i, 0i)), Struct_5(vec4<bool>(false, false, true, false), 45497u, 45614u, vec2<i32>(68308i, -65i)), Struct_5(vec4<bool>(true, true, true, true), 4294967295u, 14715u, vec2<i32>(-4185i, 43585i)), Struct_5(vec4<bool>(false, false, true, true), 4294967295u, 20779u, vec2<i32>(1i, i32(-2147483648))), Struct_5(vec4<bool>(false, true, true, true), 36865u, 59810u, vec2<i32>(0i, 11436i)), Struct_5(vec4<bool>(false, true, true, true), 58762u, 36508u, vec2<i32>(10550i, 1i)), Struct_5(vec4<bool>(false, false, true, false), 0u, 55185u, vec2<i32>(24686i, -45093i)), Struct_5(vec4<bool>(false, true, false, true), 0u, 4294967295u, vec2<i32>(-13310i, 0i)), Struct_5(vec4<bool>(false, false, false, true), 22133u, 0u, vec2<i32>(i32(-2147483648), 0i)), Struct_5(vec4<bool>(false, true, false, false), 47857u, 0u, vec2<i32>(-33770i, 11500i)), Struct_5(vec4<bool>(true, false, true, false), 0u, 4294967295u, vec2<i32>(49745i, 8942i)), Struct_5(vec4<bool>(false, true, true, false), 47162u, 1u, vec2<i32>(1i, 2147483647i)), Struct_5(vec4<bool>(false, true, true, false), 4294967295u, 4294967295u, vec2<i32>(-1i, 14675i)), Struct_5(vec4<bool>(true, false, false, false), 29272u, 4294967295u, vec2<i32>(-42163i, 0i)), Struct_5(vec4<bool>(false, false, true, false), 43115u, 33668u, vec2<i32>(14467i, 1883i)), Struct_5(vec4<bool>(true, false, false, false), 81359u, 0u, vec2<i32>(-1i, 2147483647i)), Struct_5(vec4<bool>(true, false, false, true), 4194u, 78205u, vec2<i32>(90656i, 48397i)), Struct_5(vec4<bool>(false, true, false, false), 0u, 75008u, vec2<i32>(1i, -31451i)), Struct_5(vec4<bool>(false, true, true, false), 11552u, 0u, vec2<i32>(0i, -16234i)), Struct_5(vec4<bool>(true, false, false, true), 24930u, 7296u, vec2<i32>(13323i, -29681i)), Struct_5(vec4<bool>(true, true, false, true), 0u, 4294967295u, vec2<i32>(2147483647i, -23172i)), Struct_5(vec4<bool>(true, false, true, false), 28345u, 0u, vec2<i32>(-1i, -1i)), Struct_5(vec4<bool>(true, true, true, false), 19967u, 35901u, vec2<i32>(5124i, i32(-2147483648))), Struct_5(vec4<bool>(false, true, false, true), 32377u, 59049u, vec2<i32>(1i, 14559i)));

var<private> global1: array<Struct_3, 11>;

var<private> global2: vec3<i32> = vec3<i32>(0i, 28608i, -1i);

var<private> global3: array<Struct_5, 27> = array<Struct_5, 27>(Struct_5(vec4<bool>(false, false, true, true), 4294967295u, 1u, vec2<i32>(1i, -25350i)), Struct_5(vec4<bool>(false, false, false, true), 43824u, 84483u, vec2<i32>(0i, 2147483647i)), Struct_5(vec4<bool>(false, true, false, true), 61186u, 6217u, vec2<i32>(7646i, -20722i)), Struct_5(vec4<bool>(false, false, true, false), 57838u, 53155u, vec2<i32>(41205i, -1096i)), Struct_5(vec4<bool>(false, false, true, true), 0u, 4294967295u, vec2<i32>(1i, -13400i)), Struct_5(vec4<bool>(true, false, false, false), 0u, 14441u, vec2<i32>(-37404i, -19236i)), Struct_5(vec4<bool>(true, true, false, true), 4294967295u, 1u, vec2<i32>(5261i, -60887i)), Struct_5(vec4<bool>(false, false, true, true), 4294967295u, 78782u, vec2<i32>(1i, 2147483647i)), Struct_5(vec4<bool>(false, false, false, true), 34836u, 51036u, vec2<i32>(49878i, 2147483647i)), Struct_5(vec4<bool>(true, true, false, true), 37962u, 4294967295u, vec2<i32>(19970i, -1i)), Struct_5(vec4<bool>(false, false, true, true), 1u, 0u, vec2<i32>(i32(-2147483648), -21543i)), Struct_5(vec4<bool>(true, false, false, false), 1u, 1u, vec2<i32>(2147483647i, 14301i)), Struct_5(vec4<bool>(true, true, true, true), 0u, 64349u, vec2<i32>(1i, 9499i)), Struct_5(vec4<bool>(true, false, true, true), 0u, 11149u, vec2<i32>(-17220i, -7021i)), Struct_5(vec4<bool>(true, true, true, false), 4294967295u, 0u, vec2<i32>(-24282i, 0i)), Struct_5(vec4<bool>(true, true, false, false), 83621u, 24982u, vec2<i32>(2147483647i, 25943i)), Struct_5(vec4<bool>(true, false, false, true), 27427u, 33642u, vec2<i32>(1i, -1i)), Struct_5(vec4<bool>(true, true, false, true), 0u, 1u, vec2<i32>(-1i, 20139i)), Struct_5(vec4<bool>(false, true, false, true), 4294967295u, 69329u, vec2<i32>(29328i, 9287i)), Struct_5(vec4<bool>(false, false, false, true), 16069u, 77031u, vec2<i32>(5111i, 1i)), Struct_5(vec4<bool>(false, false, true, false), 76596u, 55901u, vec2<i32>(-46638i, 889i)), Struct_5(vec4<bool>(false, true, false, true), 1u, 4294967295u, vec2<i32>(4121i, 36319i)), Struct_5(vec4<bool>(true, false, true, true), 1u, 58251u, vec2<i32>(i32(-2147483648), 2677i)), Struct_5(vec4<bool>(true, true, false, false), 21708u, 24431u, vec2<i32>(1i, -59728i)), Struct_5(vec4<bool>(false, true, true, true), 4294967295u, 4294967295u, vec2<i32>(i32(-2147483648), -46501i)), Struct_5(vec4<bool>(true, false, false, true), 4294967295u, 4294967295u, vec2<i32>(-8656i, 33107i)), Struct_5(vec4<bool>(false, false, false, false), 4294967295u, 5293u, vec2<i32>(-1i, 1047i)));

var<private> global4: array<vec3<bool>, 12>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    var var_0 = global2.xx;
    let var_1 = Struct_2(true, Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, global2.x), var_0.x), _wgslsmith_add_i32(countOneBits(u_input.b.x), _wgslsmith_add_i32(var_0.x, 2147483647i)))));
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    global4 = array<vec3<bool>, 12>();
    return u_input.a.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_5, 27>();
    global1 = array<Struct_3, 11>();
    var var_0 = vec3<i32>(abs(max(~func_2(vec2<f32>(871f, 601f), vec4<f32>(-372f, -1095f, -771f, 1212f), false), -(~0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(13060i, 1526i, ~u_input.a.x), ~(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, arg_2.a, arg_2.a), u_input.b))), global2.x);
    let var_1 = ~(~vec4<u32>(~26754u, _wgslsmith_add_u32(0u, arg_0.x), arg_1.x, _wgslsmith_mod_u32(44917u, arg_1.x)) ^ vec4<u32>(~arg_1.x, arg_0.x, arg_1.x, min(18494u, arg_1.x)));
    let var_2 = Struct_3(firstTrailingBit(-u_input.a.x));
    return arg_2.a;
}

fn func_1() -> i32 {
    let var_0 = countOneBits(vec4<i32>(~2147483647i, _wgslsmith_div_i32(2147483647i, func_2(vec2<f32>(-461f, -1141f), vec4<f32>(254f, 873f, 551f, -812f), true)), func_3(~vec3<u32>(1u, 69160u, 3608u), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(18500i)), 10213i) & vec4<i32>(min(firstLeadingBit(global2.x), abs(17675i)), global2.x, countOneBits(func_3(vec3<u32>(58912u, 1u, 24229u), vec4<u32>(4294967295u, 0u, 1u, 21263u), Struct_1(u_input.a.x))), global2.x));
    var var_1 = -var_0.x >> (116585u % 32u);
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_0, var_0), vec4<i32>(0i, -u_input.a.x >> (1u % 32u), -min(var_0.x, global2.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0.x, 1i, 2147483647i), var_0))));
    var var_3 = vec3<u32>(65232u, ~4294967295u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 4294967295u), 36337u) | _wgslsmith_div_u32(_wgslsmith_clamp_u32(min(5346u, 4294967295u), ~7464u, 1u), _wgslsmith_mult_u32(firstTrailingBit(0u), 1u)));
    var var_4 = ~_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(~26726i, _wgslsmith_sub_i32(9333i, 35715i))), vec2<i32>(global2.x, 55191i), vec2<i32>(44194i, (-6311i >> (var_3.x % 32u)) >> (_wgslsmith_add_u32(var_3.x, 0u) % 32u)));
    return ~var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~vec4<i32>(7465i, _wgslsmith_add_i32(47816i, -49481i), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 0i) ^ ~countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, -11867i, -2147483647i) >> (vec4<u32>(1u, 1u, 101109u, 33064u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_sub_i32(-func_1(), abs(firstTrailingBit(36412i))), -10910i, global2.x, -select(-14104i, 0i, select(false, true, true))));
    let var_1 = false;
    var var_2 = select(select(vec2<bool>(true, all(select(vec4<bool>(var_1, true, var_1, false), vec4<bool>(true, true, var_1, var_1), vec4<bool>(true, false, var_1, var_1)))), select(vec2<bool>(var_1 | true, false), !(!vec2<bool>(var_1, true)), select(!vec2<bool>(var_1, false), vec2<bool>(var_1, false), select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), var_1))), any(vec4<bool>(any(vec2<bool>(false, true)), var_1, true || var_1, var_1))), vec2<bool>(true, true), all(!select(select(vec4<bool>(true, false, var_1, var_1), vec4<bool>(false, var_1, var_1, true), false), select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(var_1, true, var_1, false), var_1), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(true, var_1, var_1, var_1), var_1))));
    let var_3 = u_input.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-981f, -269f)), _wgslsmith_f_op_f32(-1278f + _wgslsmith_f_op_f32(-133f + -650f)), 1089f)));
    var_2 = select(vec2<bool>(true, var_1), select(select(select(!vec2<bool>(true, var_2.x), !vec2<bool>(var_2.x, true), var_2.x && var_1), select(vec2<bool>(false, var_2.x), select(vec2<bool>(var_1, false), vec2<bool>(var_2.x, false), false), select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), false)), vec2<bool>(var_2.x, var_2.x)), vec2<bool>(max(-1i, var_3) <= ~global2.x, _wgslsmith_f_op_f32(floor(var_4.x)) < _wgslsmith_f_op_f32(-var_4.x)), var_1), !var_2.x);
    let var_5 = Struct_4(Struct_2(false, Struct_1(-35329i)), var_4.yz);
    let x = u_input.a;
    s_output = StorageBuffer(30636u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)))), vec4<i32>(-2147483647i, -var_0.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, global2.x), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.x, var_3), 28569i)), 24516i), vec2<u32>(_wgslsmith_mult_u32(1975u, 1u), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), _wgslsmith_dot_vec2_u32(max(~countOneBits(vec2<u32>(1u, 87097u)), vec2<u32>(_wgslsmith_mult_u32(6502u, 7766u), countOneBits(56743u))), ~vec2<u32>(~0u, 1u)));
}

