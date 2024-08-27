struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(88658u, 32418u, 22584u, 66410u), 46083i, false), Struct_1(vec4<u32>(0u, 74292u, 2946u, 53631u), -9984i, false), Struct_1(vec4<u32>(4294967295u, 19810u, 1u, 75702u), 0i, false), Struct_1(vec4<u32>(4294967295u, 1u, 60041u, 12925u), 2147483647i, true), Struct_1(vec4<u32>(0u, 1u, 2575u, 0u), -48366i, true), Struct_1(vec4<u32>(4294967295u, 167399u, 62862u, 8482u), -26481i, false), Struct_1(vec4<u32>(6766u, 29631u, 0u, 61757u), 42122i, true), Struct_1(vec4<u32>(4294967295u, 19940u, 4294967295u, 56127u), 41134i, true), Struct_1(vec4<u32>(1u, 77587u, 28214u, 4294967295u), 1i, true), Struct_1(vec4<u32>(1u, 12697u, 0u, 1u), -4743i, true), Struct_1(vec4<u32>(1u, 0u, 11043u, 24076u), -54810i, true), Struct_1(vec4<u32>(1u, 67417u, 1u, 4294967295u), -9822i, false), Struct_1(vec4<u32>(83446u, 10715u, 4294967295u, 18416u), 21740i, true), Struct_1(vec4<u32>(1u, 82981u, 1904u, 87397u), 41096i, false), Struct_1(vec4<u32>(26817u, 0u, 14900u, 77396u), -1i, false), Struct_1(vec4<u32>(30774u, 3908u, 33045u, 4294967295u), -15426i, false), Struct_1(vec4<u32>(4294967295u, 16672u, 0u, 0u), -21489i, false), Struct_1(vec4<u32>(30007u, 5267u, 4294967295u, 4237u), -1i, false), Struct_1(vec4<u32>(57194u, 4294967295u, 1u, 18062u), 37120i, true), Struct_1(vec4<u32>(67242u, 0u, 1u, 26868u), 31951i, true), Struct_1(vec4<u32>(77786u, 1u, 4668u, 77702u), 0i, false), Struct_1(vec4<u32>(26912u, 1u, 26665u, 1u), 0i, true), Struct_1(vec4<u32>(4411u, 57638u, 4892u, 39906u), -1i, false), Struct_1(vec4<u32>(34541u, 4294967295u, 13303u, 81164u), -1i, false), Struct_1(vec4<u32>(58735u, 81009u, 23547u, 34940u), 2147483647i, false), Struct_1(vec4<u32>(16668u, 4294967295u, 32534u, 620u), -4172i, true), Struct_1(vec4<u32>(68255u, 4294967295u, 4294967295u, 47501u), 1i, true), Struct_1(vec4<u32>(21497u, 0u, 5501u, 0u), -16878i, true), Struct_1(vec4<u32>(0u, 98234u, 1u, 27312u), 0i, false), Struct_1(vec4<u32>(19364u, 28265u, 95901u, 106510u), 0i, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-450f, -226f), vec2<f32>(-214f, -1176f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(802f, -442f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-279f - -405f)), _wgslsmith_f_op_f32(-320f * _wgslsmith_f_op_f32(max(1755f, -1000f))))), true | any(vec3<bool>(false, false, u_input.c.x != 15815u))));
    var var_1 = select(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), true))), !select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), var_0.x >= 293f), vec2<bool>(false, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.x)), var_0.x)) <= _wgslsmith_f_op_f32(var_0.x - 1f));
    global0 = array<Struct_1, 30>();
    let var_2 = -_wgslsmith_mod_vec3_i32(max(vec3<i32>(arg_0, u_input.e, u_input.b.x) & _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, 2147483647i, u_input.e)), vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a.yzy, u_input.a.zwx), 1i, u_input.a.x)), u_input.a.yyw << ((_wgslsmith_div_vec3_u32(u_input.c.zzz, vec3<u32>(u_input.c.x, 79603u, u_input.d)) & ~u_input.c.zww) % vec3<u32>(32u)));
    var_1 = vec2<bool>(!select(_wgslsmith_clamp_u32(0u, 4294967295u, 55020u) > u_input.d, !all(vec3<bool>(var_1.x, true, true)), !any(vec3<bool>(var_1.x, false, var_1.x))), 10081u <= _wgslsmith_add_u32(_wgslsmith_mult_u32(~u_input.d, u_input.c.x), select(~1u, ~u_input.c.x, var_1.x)));
    return ~(~(-u_input.a.xyz));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(countOneBits(u_input.c.xw), (vec2<u32>(arg_1, arg_1) & vec2<u32>(u_input.c.x, u_input.c.x)) ^ (u_input.c.zx ^ u_input.c.yz)) & (arg_1 | (_wgslsmith_mult_u32(u_input.c.x, arg_1) << (_wgslsmith_div_u32(1u, 44518u) % 32u))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(2983f, -304f))), (_wgslsmith_sub_u32(52960u, ~u_input.d) >> (~14614u % 32u)) & ~_wgslsmith_mult_u32(~4294967295u, _wgslsmith_add_u32(1u, 0u)));
    var var_1 = 4294967295u;
    var_1 = 1u;
    var var_2 = Struct_3(Struct_2(var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, 496f, true))), -159f), _wgslsmith_mult_u32(_wgslsmith_add_u32(firstTrailingBit(var_0.a), ~3562u), max(countOneBits(35834u), arg_1 | 4294967295u))), Struct_2(var_0.a, 386f, 4294967295u));
    var var_3 = _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(arg_1, arg_1, u_input.d, var_2.b.c)), ~u_input.c), ~_wgslsmith_mod_vec4_u32(u_input.c, u_input.c), ~vec4<u32>(0u, 43750u, arg_1, 4294967295u)), u_input.c);
    return var_0.a;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_add_u32(arg_1.c, _wgslsmith_clamp_u32(u_input.d, func_4(-arg_2, _wgslsmith_add_u32(~81551u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), _wgslsmith_mult_vec3_i32(func_3(arg_2), vec3<i32>(arg_3.x, -18321i, arg_3.x))), 28347u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1129f, 129f)), _wgslsmith_f_op_f32(-1344f * arg_1.b))), arg_1.b)) - arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -146f));
    var_0 = _wgslsmith_sub_u32(arg_0, min(0u, _wgslsmith_mult_u32(~countOneBits(arg_1.c), 114225u)));
    let var_2 = global0[_wgslsmith_index_u32(~36583u, 30u)];
    let var_3 = false;
    return Struct_2(27268u, _wgslsmith_f_op_f32(var_1.x + -1177f), (firstTrailingBit(_wgslsmith_add_u32(0u, 0u)) << (select(_wgslsmith_div_u32(4294967295u, 210u), _wgslsmith_mod_u32(37082u, var_2.a.x), !var_2.c) % 32u)) & var_2.a.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(u_input.d, u_input.d)), 30u)];
    var var_1 = Struct_3(Struct_2(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_div_f32(-1065f, _wgslsmith_f_op_f32(max(1000f, arg_1.x)))), 1u), func_2(arg_0.a.x, Struct_2(~1u, _wgslsmith_f_op_f32(f32(-1f) * -621f), u_input.c.x), arg_0.b, vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(3641i, u_input.e), -1i), ~2147483647i)));
    var var_2 = Struct_3(var_1.b, Struct_2(4294967295u ^ firstLeadingBit(arg_0.a.x), _wgslsmith_f_op_f32(round(216f)), ~1u));
    var_1 = Struct_3(var_2.b, func_2(~((arg_0.a.x | 79853u) ^ var_0.a.x), Struct_2(var_1.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), ~0u), -_wgslsmith_mod_i32(arg_0.b, min(var_0.b, -1i)), abs((vec2<i32>(-2147483647i, u_input.a.x) << (vec2<u32>(4294967295u, var_0.a.x) % vec2<u32>(32u))) | vec2<i32>(arg_0.b, 5598i))));
    let var_3 = -18096i;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(u_input.a, select(-vec4<i32>(-62698i, u_input.e, u_input.b.x, u_input.a.x), vec4<i32>(func_1(Struct_1(u_input.c, u_input.e, false), vec4<f32>(405f, -256f, -193f, -615f)), ~u_input.a.x, max(u_input.a.x, 22670i), -50750i), vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true))) << (~_wgslsmith_mult_u32(~u_input.d >> (1u % 32u), ~_wgslsmith_div_u32(u_input.d, 7241u)) % 32u);
    var var_1 = ~(~u_input.b.x);
    global0 = array<Struct_1, 30>();
    var var_2 = Struct_4(firstLeadingBit(_wgslsmith_sub_vec4_i32(-u_input.a, vec4<i32>(-8914i, u_input.b.x, var_0, u_input.b.x)) ^ u_input.a), ~vec3<u32>(~1u, 12449u | firstTrailingBit(53247u), firstLeadingBit(u_input.d)));
    var var_3 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1199f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1838f)) * -1224f) + 1f)), abs(vec2<u32>(1u, var_2.b.x)), vec4<u32>(_wgslsmith_div_u32(18727u, abs(var_2.b.x)), 1u, _wgslsmith_dot_vec4_u32(u_input.c, _wgslsmith_mult_vec4_u32(u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(101837u, var_2.b.x, 0u, var_2.b.x), u_input.c))), 1u));
}

