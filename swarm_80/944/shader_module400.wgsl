struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7> = array<vec2<bool>, 7>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(-1000f, Struct_1(false, i32(-2147483648), 1u, vec2<bool>(false, false)), 29041i), Struct_2(-207f, Struct_1(true, -24053i, 64044u, vec2<bool>(false, true)), 12434i), Struct_2(191f, Struct_1(false, i32(-2147483648), 8822u, vec2<bool>(false, true)), -1i), Struct_2(2583f, Struct_1(false, 0i, 11739u, vec2<bool>(true, false)), 45715i), Struct_2(803f, Struct_1(true, 9588i, 1u, vec2<bool>(true, true)), 2147483647i), Struct_2(-120f, Struct_1(false, -1i, 21273u, vec2<bool>(true, true)), -34161i), Struct_2(454f, Struct_1(false, -1i, 1u, vec2<bool>(false, true)), 14749i), Struct_2(-968f, Struct_1(true, 32889i, 4294967295u, vec2<bool>(false, false)), 60873i), Struct_2(-1000f, Struct_1(false, -29776i, 0u, vec2<bool>(true, false)), -21459i), Struct_2(-1000f, Struct_1(false, 0i, 0u, vec2<bool>(false, false)), 0i), Struct_2(-268f, Struct_1(false, 2147483647i, 4294967295u, vec2<bool>(false, false)), 64603i), Struct_2(-862f, Struct_1(false, 2147483647i, 37263u, vec2<bool>(false, true)), -39478i), Struct_2(1678f, Struct_1(false, i32(-2147483648), 29591u, vec2<bool>(true, true)), 0i), Struct_2(763f, Struct_1(false, -1i, 24130u, vec2<bool>(true, true)), 1i), Struct_2(1274f, Struct_1(true, 2147483647i, 4294967295u, vec2<bool>(true, true)), 1i), Struct_2(-385f, Struct_1(false, 13673i, 4745u, vec2<bool>(true, true)), -43258i), Struct_2(1161f, Struct_1(true, -1i, 0u, vec2<bool>(false, true)), i32(-2147483648)), Struct_2(1063f, Struct_1(false, -28279i, 72790u, vec2<bool>(false, true)), 0i), Struct_2(334f, Struct_1(false, 2147483647i, 4294967295u, vec2<bool>(true, true)), -17193i), Struct_2(1608f, Struct_1(false, 77981i, 0u, vec2<bool>(false, true)), i32(-2147483648)), Struct_2(141f, Struct_1(true, 0i, 1u, vec2<bool>(true, true)), 55888i), Struct_2(434f, Struct_1(false, -23985i, 1650u, vec2<bool>(false, true)), 0i), Struct_2(-1000f, Struct_1(true, -18672i, 89236u, vec2<bool>(false, false)), 12231i));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = vec4<bool>(all(!vec2<bool>(false, arg_0)) & arg_0, false, false, arg_0);
    var var_1 = global1[_wgslsmith_index_u32(45446u, 23u)];
    global1 = array<Struct_2, 23>();
    var var_2 = var_1.b;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1038f)));
    return _wgslsmith_mult_i32(_wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, u_input.a, var_1.c), ~vec3<i32>(1i, 1i, u_input.a))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.b, -34628i, -24597i), vec3<i32>(var_1.c, 9532i, var_1.b.b)), -vec3<i32>(-1i, 6049i, 78350i)), ~(-1016i)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, 39693i, var_2.b) << (vec3<u32>(var_1.b.c, 9875u, 46813u) % vec3<u32>(32u))), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(9052i, -27678i, 0i), vec3<i32>(var_2.b, var_1.b.b, 13631i))))), _wgslsmith_clamp_i32(63186i, _wgslsmith_add_i32(3047i, var_2.b), _wgslsmith_div_i32(_wgslsmith_add_i32(31624i, var_2.b), -var_2.b) ^ var_1.b.b));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = firstLeadingBit(vec4<i32>(select(firstTrailingBit(382i) ^ (u_input.a >> (0u % 32u)), -u_input.a, true), -12518i & ~_wgslsmith_dot_vec2_i32(vec2<i32>(-13405i, 21819i), vec2<i32>(u_input.a, u_input.a)), 48369i, max(func_3(0u < arg_0.x), ~u_input.a)));
    var_0 = abs(abs(abs(vec4<i32>(-2147483647i, 12732i, 21513i, u_input.a)))) & -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_0.x, var_0.x, u_input.a, 22767i)), vec4<i32>(-30351i, 23446i, var_0.x, 36602i)), min(~vec4<i32>(16334i, -47573i, 1i, 71385i), -vec4<i32>(var_0.x, -1i, var_0.x, var_0.x)));
    let var_1 = vec3<bool>(true, all(vec3<bool>(any(vec3<bool>(true, false, false)) | true, true, var_0.x <= 1i)), !(_wgslsmith_f_op_f32(sign(-733f)) == _wgslsmith_f_op_f32(1517f - -1088f)) & (all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))) & ((u_input.a >= -2147483647i) | true)));
    var_0 = -((~(-vec4<i32>(-2147483647i, 9992i, u_input.a, 85087i)) & vec4<i32>(var_0.x, var_0.x, 573i, ~(-15811i))) ^ firstLeadingBit(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-56441i, u_input.a, -1i, -2147483647i), vec4<i32>(57459i, -12518i, -1i, var_0.x)))));
    let var_2 = ~(_wgslsmith_sub_u32(arg_0.x >> (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 13247u), arg_0.zx), arg_0.x)) << ((~countOneBits(arg_0.x) & 4294967295u) % 32u));
    return ~arg_0.x;
}

fn func_1() -> f32 {
    let var_0 = ~(~func_2(~(~vec3<u32>(17876u, 29611u, 0u))));
    let var_1 = max(vec2<i32>(4874i, max(_wgslsmith_add_i32(-51963i ^ u_input.a, u_input.a), select(u_input.a, reverseBits(u_input.a), false))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(4654i, ~u_input.a)) << (countOneBits(~countOneBits(vec2<u32>(var_0, 1u))) % vec2<u32>(32u)));
    global0 = array<vec2<bool>, 7>();
    global0 = array<vec2<bool>, 7>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-282f, -1000f)) * _wgslsmith_f_op_f32(-936f - 330f)))))), 1f);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    var var_0 = vec3<i32>(~(-u_input.a), 56016i, ~u_input.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1764f * 1407f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1222f - 1f)))));
    var var_2 = vec4<u32>(1u, firstTrailingBit(30242u), 28747u, _wgslsmith_clamp_u32(func_2(vec3<u32>(func_2(vec3<u32>(1u, 1u, 46547u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 63177u, 49274u), vec4<u32>(28853u, 1u, 1u, 0u)))), 4294967295u, 1u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -825f) + _wgslsmith_f_op_f32(func_1()))));
    var var_4 = vec4<f32>(-321f, 1633f, 525f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1127f * -175f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1143f))))) + -953f));
    var_3 = 760f;
    var var_5 = Struct_4(select(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))), vec4<bool>(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), true, true, select(true, _wgslsmith_f_op_f32(-var_4.x) < _wgslsmith_f_op_f32(var_4.x * -328f), !(var_2.x >= var_2.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, var_2.x | 0u, 52594u, var_2.x), vec4<u32>(firstTrailingBit(var_2.x), ~var_2.x, 1u, ~var_2.x) | reverseBits(max(vec4<u32>(65371u, 42421u, 4294967295u, 20925u), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)))));
    var_3 = 2242f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -727f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.x, -108f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.yz - var_4.yx))), select(_wgslsmith_mod_vec4_i32(-vec4<i32>(32023i, u_input.a, -42009i, u_input.a), vec4<i32>(u_input.a, _wgslsmith_mod_i32(-1i, u_input.a), -var_0.x, max(var_0.x, u_input.a))), select(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(8035i, 1133i, 2147483647i, 0i), vec4<i32>(21235i, -2734i, -1i, var_0.x)), ~vec4<i32>(var_0.x, var_0.x, var_0.x, 8976i)), ~countOneBits(vec4<i32>(u_input.a, u_input.a, 3120i, var_0.x)), select(!var_5.b, select(vec4<bool>(var_5.a.x, true, var_5.a.x, true), var_5.b, false), vec4<bool>(true, true, true, false))), var_5.b.x || (_wgslsmith_f_op_f32(f32(-1f) * -541f) == _wgslsmith_f_op_f32(-var_4.x))), vec3<i32>(-43936i, ~(~2147483647i), var_0.x), 42771u);
}

