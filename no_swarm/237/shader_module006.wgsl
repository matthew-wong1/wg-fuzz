struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 15634u;

var<private> global1: array<bool, 2>;

var<private> global2: array<vec2<i32>, 15>;

var<private> global3: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, 16180i, 6632i), vec3<i32>(-24490i, 27091i, 2147483647i), vec3<i32>(-56257i, -24191i, -1i), vec3<i32>(3155i, -890i, 0i), vec3<i32>(0i, 12149i, 10485i), vec3<i32>(-17167i, 2147483647i, 2147483647i), vec3<i32>(-50666i, 0i, -5480i), vec3<i32>(1i, 1i, 1i), vec3<i32>(806i, -1i, -15377i), vec3<i32>(-1i, 2147483647i, 14469i), vec3<i32>(-21115i, 1i, 1523i), vec3<i32>(1i, 1i, -37468i), vec3<i32>(-4334i, -1i, i32(-2147483648)), vec3<i32>(-30712i, 1i, 0i), vec3<i32>(29364i, 1i, 65636i), vec3<i32>(-31257i, 2147483647i, 44453i), vec3<i32>(-75138i, 0i, 0i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(0i, 0i, -16002i), vec3<i32>(-23135i, 74840i, 0i), vec3<i32>(2147483647i, -68613i, 23805i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_4) -> u32 {
    let var_0 = !arg_0.c && global1[_wgslsmith_index_u32(arg_0.b, 2u)];
    let var_1 = Struct_4(arg_3.a);
    var var_2 = vec3<bool>(select(true, false, var_0) != !global1[_wgslsmith_index_u32(~73047u, 2u)], global1[_wgslsmith_index_u32(max(arg_0.b, 60625u), 2u)], false);
    global0 = arg_0.b;
    global1 = array<bool, 2>();
    return _wgslsmith_div_u32(1u, reverseBits(25562u) << (arg_0.b % 32u));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) << (vec4<u32>(select(0u, 4294967295u, false), _wgslsmith_add_u32(38729u, 0u), ~7087u, ~55807u) % vec4<u32>(32u)), vec4<u32>(6301u, 1u, 32542u, _wgslsmith_mod_u32(func_3(Struct_5(u_input.a, 53386u, false, global3[_wgslsmith_index_u32(0u, 21u)], vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(70918u, 2u)], global1[_wgslsmith_index_u32(2688u, 2u)])), arg_0.a.x, vec2<i32>(u_input.a, u_input.a), Struct_4(vec4<f32>(arg_0.a.x, 1127f, arg_0.a.x, 508f))), 81725u))), select(_wgslsmith_sub_vec2_u32(~(~vec2<u32>(39282u, 4973u)), firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 7450u), vec2<u32>(22689u, 4294967295u)))), ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 86909u), ~vec2<u32>(0u, 0u)), select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(74360u, 2u)]), vec2<bool>(global1[_wgslsmith_index_u32(58495u, 2u)], true), true), vec2<bool>(global1[_wgslsmith_index_u32(16161u, 2u)], false), vec2<bool>(global1[_wgslsmith_index_u32(118579u, 2u)], false)), vec2<bool>(true, true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 2u)], false), vec2<bool>(false, false), false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], false), arg_0.a.x <= 391f))));
    let var_1 = all(!(!vec4<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(11349u, 2u)])), var_0.a.x > 37593u, false, true)));
    var var_2 = Struct_1(select(vec4<u32>(var_0.b.x, ~(var_0.b.x << (4294967295u % 32u)), _wgslsmith_sub_u32(~var_0.a.x, ~101296u), 76511u), var_0.a, select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 2u)], false, var_1, true), !select(vec4<bool>(var_1, true, global1[_wgslsmith_index_u32(12642u, 2u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 2u)], true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(42847u, 2u)], global1[_wgslsmith_index_u32(var_0.a.x, 2u)], true, false), vec4<bool>(true, var_1, global1[_wgslsmith_index_u32(var_0.b.x, 2u)], true), vec4<bool>(var_1, true, global1[_wgslsmith_index_u32(1u, 2u)], false)), vec4<bool>(true, var_1, global1[_wgslsmith_index_u32(4294967295u, 2u)], true), arg_0.a.x != arg_0.a.x))), var_0.a.wx);
    let var_3 = _wgslsmith_f_op_f32(trunc(arg_0.a.x));
    let var_4 = Struct_5(u_input.a, countOneBits(_wgslsmith_mod_u32(min(1u, 52439u), var_2.a.x) >> (_wgslsmith_mod_u32(677u, ~87138u) % 32u)), !any(select(select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(var_0.a.x, 2u)]), vec4<bool>(global1[_wgslsmith_index_u32(80255u, 2u)], global1[_wgslsmith_index_u32(var_2.a.x, 2u)], global1[_wgslsmith_index_u32(var_0.b.x, 2u)], global1[_wgslsmith_index_u32(var_0.b.x, 2u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.a.x, 2u)], false, true)), vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 2u)], true), select(vec4<bool>(true, var_1, false, var_1), vec4<bool>(false, var_1, var_1, true), vec4<bool>(var_1, true, false, var_1)))), abs(vec3<i32>(-1i) * -select(global3[_wgslsmith_index_u32(12861u, 21u)], global3[_wgslsmith_index_u32(var_0.a.x, 21u)], global1[_wgslsmith_index_u32(var_2.a.x, 2u)])), vec3<bool>(any(!vec4<bool>(var_1, global1[_wgslsmith_index_u32(var_0.b.x, 2u)], true, true)), !global1[_wgslsmith_index_u32(~1u, 2u)], true != any(vec3<bool>(true, true, true))));
    return Struct_1(var_2.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(62905u, _wgslsmith_mult_u32(var_4.b, 1u)), var_0.b, _wgslsmith_clamp_vec2_u32(abs(~var_2.a.xw), abs(~vec2<u32>(var_4.b, var_2.b.x)), reverseBits(var_2.b))));
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = true;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(908f, -318f))), -1156f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(158f, 186f)))) - -860f), -481f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, 554f)), _wgslsmith_f_op_f32(344f - _wgslsmith_f_op_f32(ceil(-627f))), ~72809u != arg_0.b.x))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), var_1.x, all(select(vec3<bool>(true, false, var_0), vec3<bool>(true, false, true), vec3<bool>(false, var_0, var_0))))) + _wgslsmith_f_op_f32(f32(-1f) * -450f))));
    global0 = 1u;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1262f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x))) + _wgslsmith_f_op_f32(round(var_1.x)));
    return ~_wgslsmith_sub_vec2_u32(arg_0.a.yw, ~(~_wgslsmith_mult_vec2_u32(arg_0.b, vec2<u32>(arg_0.b.x, 9257u))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.b.x, 877f, -1519f))))), abs(-_wgslsmith_sub_i32(-5851i, arg_1)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -729f))), -291f)), _wgslsmith_f_op_f32(f32(-1f) * -1332f), arg_3.b.x, arg_3.b.x));
    var var_1 = !select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(45371u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(true, false), all(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 2u)], true, global1[_wgslsmith_index_u32(18303u, 2u)], global1[_wgslsmith_index_u32(1u, 2u)]))), select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 2u)], global1[_wgslsmith_index_u32(arg_3.d.a.x, 2u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 2u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(13620u, 2u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 2u)])), vec2<bool>(true, global1[_wgslsmith_index_u32(arg_0.b.x, 2u)])), select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 2u)], global1[_wgslsmith_index_u32(arg_3.e.a.x, 2u)]), vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a.x, 2u)], false))), select(!select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(4082u, 2u)], false), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.a.x, 2u)])), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(arg_0.a.x, 2u)])), vec2<bool>(false & global1[_wgslsmith_index_u32(496u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)])), select(select(vec2<bool>(true, true), !vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 2u)]), select(global1[_wgslsmith_index_u32(arg_3.c.b.x, 2u)], global1[_wgslsmith_index_u32(arg_0.b.x, 2u)], global1[_wgslsmith_index_u32(arg_0.b.x, 2u)])), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(57752u, 2u)])), vec2<bool>(global1[_wgslsmith_index_u32(arg_3.a, 2u)] || false, true)));
    return func_2(Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2018f, var_0.a.x, 663f, var_0.c.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(var_0.c)), var_0.c)))));
}

fn func_1() -> u32 {
    var var_0 = func_5(Struct_1(countOneBits(vec4<u32>(1u, 1u, 1u, 1u)), select(func_4(func_2(Struct_4(vec4<f32>(-493f, 1673f, 743f, 1296f)))), vec2<u32>(4294967295u, ~1u), vec2<bool>(any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(73507u, 2u)], global1[_wgslsmith_index_u32(39645u, 2u)])), global1[_wgslsmith_index_u32(~1u, 2u)]))), countOneBits(u_input.a), vec2<i32>(2147483647i, -1i), Struct_2(25146u >> (1u % 32u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(747f, 1372f))))), Struct_1(vec4<u32>(1u, 21293u, 1u, 56666u) & select(vec4<u32>(48299u, 0u, 16559u, 91367u), vec4<u32>(61288u, 60463u, 16030u, 1u), vec4<bool>(true, global1[_wgslsmith_index_u32(641u, 2u)], false, false)), vec2<u32>(0u, 8263u)), func_2(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 538f, -813f, -861f) * vec4<f32>(-2438f, -271f, 1000f, 1440f)))), func_2(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1327f, -1481f, -2484f, -1477f) + vec4<f32>(1000f, 864f, -401f, 1298f))))));
    global1 = array<bool, 2>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a & u_input.a;
    var_0 = 1i;
    var_0 = u_input.a;
    global2 = array<vec2<i32>, 15>();
    var var_1 = Struct_1(~(~vec4<u32>(403u, 33425u, _wgslsmith_sub_u32(27908u, 1u), func_1())), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(abs(1u) << (func_3(Struct_5(u_input.a, 592u, false, global3[_wgslsmith_index_u32(35788u, 21u)], vec3<bool>(false, true, global1[_wgslsmith_index_u32(58781u, 2u)])), -1051f, global2[_wgslsmith_index_u32(2868u, 15u)], Struct_4(vec4<f32>(182f, 368f, 1076f, 1356f))) % 32u), countOneBits(~4294967295u))));
    let var_2 = Struct_5(min(reverseBits(2147483647i), -1i), ~var_1.b.x, global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(71213u, max(~var_1.b.x, var_1.a.x & var_1.a.x)), 2u)], global3[_wgslsmith_index_u32(reverseBits(var_1.a.x), 21u)], select(select(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(10254u, 2u)], global1[_wgslsmith_index_u32(68728u, 2u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_1.b.x, 2u)]), select(!vec3<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 2u)], false, global1[_wgslsmith_index_u32(50158u, 2u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.a.x, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(var_1.b.x, 2u)], global1[_wgslsmith_index_u32(var_1.a.x, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]))), vec3<bool>(!(var_1.a.x == 0u), select(var_1.a.x, var_1.a.x, global1[_wgslsmith_index_u32(101307u, 2u)]) < ~var_1.b.x, true), select(vec3<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(var_1.b.x, 2u)], true)), true, true), !vec3<bool>(global1[_wgslsmith_index_u32(25078u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], true, false))));
    global0 = 1u;
    global3 = array<vec3<i32>, 21>();
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-728f, -332f, -431f, -453f) * vec4<f32>(-1040f, -396f, -832f, 1108f)), vec4<f32>(-1362f, 864f, -744f, 1016f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32((~u_input.a ^ _wgslsmith_clamp_i32(-1i, -33382i, 1i)) & -1i, i32(-1i) * -4820i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1335f) + _wgslsmith_f_op_f32(round(-1000f))), abs(countOneBits(var_2.d.x)), _wgslsmith_div_vec3_i32(global3[_wgslsmith_index_u32(var_1.b.x, 21u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, var_2.b), ~vec2<u32>(33955u, 0u)), 21u)]));
}

