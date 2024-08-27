struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15> = array<vec2<bool>, 15>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -439f, -272f) * arg_0.b), arg_0.b)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.b)), vec3<bool>(true, any(vec4<bool>(true, true, false, false)), true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(474f, 1000f, -408f) + vec3<f32>(arg_0.e.x, arg_0.b.x, -1516f)) + _wgslsmith_f_op_vec3_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(arg_0.b.x, 851f, -1000f), any(global0[_wgslsmith_index_u32(6746u, 15u)]))))), select(vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(false, true, true), vec3<bool>(any(vec3<bool>(false, false, true)), true, any(vec3<bool>(true, false, false)))))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1119f * -1519f)))), arg_0.b.x, -464f)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> u32 {
    let var_0 = !all(vec2<bool>(any(arg_1.a.wy) || true, arg_0.x));
    let var_1 = Struct_3(Struct_1(vec3<u32>(firstTrailingBit(12134u), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.b, 1u, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(43174u, u_input.d, u_input.b, 20738u), vec4<u32>(u_input.a.x, 63982u, u_input.a.x, 44763u))), abs(u_input.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1148f, -231f, 1637f) * vec3<f32>(574f, -542f, 701f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(484f, -1185f, 634f)))) * _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<f32>(700f, -1032f, 783f), vec3<u32>(65867u, u_input.e.x, 0u), u_input.e.x, vec3<f32>(-1000f, 440f, -894f)), vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.b), u_input.d))), ~vec3<u32>(u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.b, u_input.e.x), vec3<u32>(u_input.e.x, u_input.b, u_input.d)), 1u), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(4294967295u, 1u, u_input.b)), ~1u), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1032f, 944f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, -1169f, 371f) - vec3<f32>(1313f, -299f, -1510f)))))));
    let var_2 = Struct_1(~(~max(vec3<u32>(u_input.e.x, var_1.a.d, 0u), var_1.a.c)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)), _wgslsmith_f_op_f32(var_1.a.b.x * var_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)) * _wgslsmith_f_op_f32(trunc(var_1.a.b.x)))), firstTrailingBit(~countOneBits(var_1.a.c)), ~94934u, var_1.a.b);
    var var_3 = select(vec4<i32>(-2147483647i, u_input.c.x, -_wgslsmith_dot_vec2_i32(max(u_input.c.zz, vec2<i32>(-31231i, u_input.c.x)), -vec2<i32>(-25480i, u_input.c.x)), u_input.c.x), _wgslsmith_mult_vec4_i32(~min(u_input.c, vec4<i32>(-2147483647i, -30938i, u_input.c.x, u_input.c.x)), _wgslsmith_add_vec4_i32(vec4<i32>(16120i, u_input.c.x, 2147483647i, u_input.c.x), -vec4<i32>(1i, 2147483647i, -10571i, u_input.c.x))) >> (vec4<u32>(~(~var_2.a.x), _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(u_input.b, var_2.d)), 0u, abs(11100u)) % vec4<u32>(32u)), vec4<bool>(any(select(select(vec3<bool>(false, var_0, false), arg_1.a.zyx, arg_1.a.xxx), !vec3<bool>(false, arg_1.b, true), true)), !var_0, true, all(vec3<bool>(true, true, var_0)) != arg_0.x));
    var var_4 = reverseBits(~firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec2_u32(var_2.c.xy, vec2<u32>(3342u, 70835u)))));
    return var_1.a.d >> (~(var_1.a.d | ~countOneBits(80974u)) % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: i32, arg_3: Struct_2) -> u32 {
    global0 = array<vec2<bool>, 15>();
    var var_0 = Struct_1(~(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, u_input.a.x, 34302u)), firstTrailingBit(vec3<u32>(4294967295u, u_input.a.x, u_input.e.x)), u_input.e) ^ ~u_input.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-787f)), _wgslsmith_f_op_f32(max(286f, -266f)), -369f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-570f, 1632f, 1714f))))) * vec3<f32>(563f, -1954f, 1f)), (vec3<u32>(func_2(vec2<bool>(false, arg_0.x), Struct_2(vec4<bool>(true, false, true, arg_0.x), false)), 1u ^ u_input.d, u_input.d) >> (min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.e.x), vec3<u32>(u_input.d, 25564u, u_input.b)), vec3<u32>(u_input.a.x, 63009u, u_input.b)) % vec3<u32>(32u))) ^ (((u_input.e >> (vec3<u32>(2921u, u_input.d, u_input.e.x) % vec3<u32>(32u))) & vec3<u32>(1u, u_input.e.x, u_input.e.x)) & vec3<u32>(u_input.e.x & 33798u, ~u_input.e.x, ~u_input.d)), _wgslsmith_div_u32(u_input.e.x, ~4294967295u), vec3<f32>(_wgslsmith_f_op_f32(min(-212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-558f * 951f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f - -1039f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2153f, -1998f, arg_3.b)) + _wgslsmith_f_op_f32(1151f - 1602f)) - _wgslsmith_f_op_f32(ceil(895f)))));
    let var_1 = _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-8630i, arg_2), select(select(u_input.c.yw, vec2<i32>(u_input.c.x, -10792i), vec2<bool>(arg_0.x, true)), ~vec2<i32>(u_input.c.x, 0i), global0[_wgslsmith_index_u32(u_input.e.x, 15u)])), _wgslsmith_sub_i32(countOneBits(u_input.c.x), select(-arg_2, -1i, select(true, arg_0.x, arg_0.x)))) >> ((u_input.d & func_2(arg_0.zx, Struct_2(vec4<bool>(arg_3.b, false, arg_1.x, false), all(vec2<bool>(true, arg_0.x))))) % 32u);
    var_0 = Struct_1(vec3<u32>(func_2(vec2<bool>(true, true), Struct_2(select(arg_0, arg_1, arg_3.a), false && arg_1.x)), var_0.d, 8580u), var_0.b, min(_wgslsmith_sub_vec3_u32(var_0.c, var_0.c), vec3<u32>(18327u, 33941u, reverseBits(_wgslsmith_mod_u32(4294967295u, 35776u)))), 0u, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(min(-574f, _wgslsmith_f_op_f32(floor(848f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(677f, 729f) - -317f), 476f))));
    global0 = array<vec2<bool>, 15>();
    return abs(0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 73930u), _wgslsmith_mod_u32(u_input.e.x, 0u), u_input.b), u_input.b, 59804u, 50075u) ^ ~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d, 4294967295u, u_input.e.x, u_input.a.x), vec4<u32>(0u, u_input.b, u_input.e.x, 26792u) | vec4<u32>(u_input.a.x, 70656u, 4294967295u, 1u)), vec4<u32>(18981u ^ (u_input.d >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 1u)) % 32u)), ~(~u_input.a.x) >> (~func_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), u_input.c.x, Struct_2(vec4<bool>(false, true, false, false), true)) % 32u), u_input.d, u_input.e.x | 0u));
    let var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 43563u, ~(~1u), 18693u), ~vec4<u32>(u_input.e.x << (0u % 32u), 1u >> (u_input.a.x % 32u), 84746u, var_0.x));
    let var_2 = _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(u_input.e.x, 32799u, 4294967295u, 1u))), vec4<u32>(countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, var_0.x), u_input.a))), 0u, ~firstTrailingBit(u_input.b), u_input.a.x));
    var var_3 = -1218f;
    let var_4 = var_2.yyw;
    var var_5 = ~(~(~reverseBits(~vec4<u32>(var_4.x, 0u, 17984u, 67573u))));
    let var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -844f))) > -633f;
    var var_7 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, -2147483647i, 1i)), _wgslsmith_add_vec3_i32(max(vec3<i32>(13462i, u_input.c.x, u_input.c.x), u_input.c.xwy), _wgslsmith_mod_vec3_i32(~vec3<i32>(-59379i, u_input.c.x, 14588i), vec3<i32>(u_input.c.x, 0i, -2147483647i) >> (var_1.ywz % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-29939i, u_input.c.x, -2147483647i) << (vec3<u32>(49342u, var_5.x, var_1.x) % vec3<u32>(32u)), u_input.c.zzz)), vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.c.x), u_input.c.x, u_input.c.x));
    var var_8 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1208f, 663f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(381f, _wgslsmith_f_op_f32(f32(-1f) * -241f)))), global0[_wgslsmith_index_u32(countOneBits(~0u), 15u)])), firstLeadingBit(u_input.c.x << (var_1.x % 32u)), var_1.x);
}

