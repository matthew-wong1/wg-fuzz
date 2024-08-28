struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(Struct_1(-964f, vec3<bool>(false, true, false), vec2<i32>(15204i, 2147483647i), 4294967295u, 0i), vec3<u32>(59146u, 53664u, 20256u), -60191i), 952f), Struct_3(Struct_2(Struct_1(-398f, vec3<bool>(false, true, true), vec2<i32>(2147483647i, 0i), 7544u, 18592i), vec3<u32>(53142u, 4294967295u, 55401u), -9562i), 363f), Struct_3(Struct_2(Struct_1(-191f, vec3<bool>(false, false, true), vec2<i32>(-30665i, 1i), 59580u, -57944i), vec3<u32>(4294967295u, 4294967295u, 7025u), 15657i), -518f), Struct_3(Struct_2(Struct_1(-456f, vec3<bool>(false, true, true), vec2<i32>(0i, 20910i), 0u, 1i), vec3<u32>(0u, 73104u, 0u), 0i), -264f), Struct_3(Struct_2(Struct_1(-140f, vec3<bool>(false, false, false), vec2<i32>(2147483647i, 25795i), 4294967295u, 31037i), vec3<u32>(3463u, 44469u, 42039u), -1i), 923f), Struct_3(Struct_2(Struct_1(1269f, vec3<bool>(true, true, false), vec2<i32>(46240i, -1i), 1u, 19i), vec3<u32>(1u, 56720u, 0u), -1i), 993f), Struct_3(Struct_2(Struct_1(1000f, vec3<bool>(false, true, true), vec2<i32>(-6334i, -39249i), 62579u, 48050i), vec3<u32>(46463u, 0u, 1u), -3149i), 1420f), Struct_3(Struct_2(Struct_1(-252f, vec3<bool>(true, false, false), vec2<i32>(2147483647i, 1i), 4294967295u, 60176i), vec3<u32>(1u, 27542u, 4294967295u), 2147483647i), -698f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> f32 {
    global0 = array<vec4<f32>, 10>();
    var var_0 = _wgslsmith_f_op_f32(arg_0 * arg_0);
    var var_1 = Struct_3(Struct_2(arg_1.a, global1.zww, ~_wgslsmith_sub_i32(select(u_input.b.x, 25438i, arg_1.a.b.x), reverseBits(arg_1.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_1.a.a) + arg_1.a.a))) + -1567f));
    let var_2 = ~(~_wgslsmith_mult_u32(arg_1.a.d, 1u));
    global2 = array<Struct_3, 8>();
    return _wgslsmith_f_op_f32(-1335f - 1402f);
}

fn func_3() -> vec3<f32> {
    var var_0 = min(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.b.x, 7431i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true), firstLeadingBit(vec4<i32>(u_input.b.x, -17442i, 17582i, 13665i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, 60307i, u_input.b.x))), vec4<i32>(0i, -1i, ~_wgslsmith_mod_i32(-1i, u_input.b.x), u_input.b.x)) >> (~(~(~vec4<u32>(global1.x, 1u, 42311u, global1.x) | firstLeadingBit(vec4<u32>(7449u, global1.x, u_input.a, global1.x)))) % vec4<u32>(32u));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(countOneBits(global1.x), u_input.a), (vec2<u32>(global1.x, global1.x) >> (countOneBits(global1.wx) % vec2<u32>(32u))) ^ ~reverseBits(global1.xw), false), global1.yy), 8u)];
    var var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(-var_2.a.a);
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f), 1759f)), _wgslsmith_f_op_f32(-var_1.a.a.a));
    return vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * var_4), var_1.b)))), 1440f, var_1.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_2, !select(select(vec3<bool>(false, true, arg_1.x), vec3<bool>(false, arg_1.x, arg_1.x), vec3<bool>(false, false, arg_1.x)), vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.x), u_input.b.yz, 0u, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), u_input.b), u_input.b.x)), global1.zwz, -1i);
    let var_1 = Struct_2(Struct_1(arg_2, var_0.a.b, -var_0.a.c, var_0.a.d << (~(u_input.a ^ var_0.a.d) % 32u), firstLeadingBit(var_0.a.e)), var_0.b, _wgslsmith_add_i32(0i, abs(-53142i)));
    var var_2 = 21400u;
    var var_3 = !vec4<bool>(true, var_0.a.b.x, var_1.a.b.x, !any(select(var_1.a.b, vec3<bool>(false, var_0.a.b.x, false), var_0.a.b.x)));
    global2 = array<Struct_3, 8>();
    return var_0.a.d ^ _wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_1.b.x, _wgslsmith_mult_u32(global1.x, max(u_input.a, var_1.b.x)), ~var_0.b.x & var_1.b.x), 0u);
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = ~(~func_4(_wgslsmith_f_op_vec3_f32(func_3()), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, false)), !vec2<bool>(arg_0, false), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(732f)) * -1242f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(930f, -2026f)))));
    global1 = select(~vec4<u32>(~20036u, global1.x, reverseBits(1u), global1.x) & reverseBits(countOneBits(countOneBits(vec4<u32>(global1.x, 23647u, 2878u, 69025u)))), max(~(~vec4<u32>(global1.x, 0u, 104131u, 1u)), ~((vec4<u32>(26936u, global1.x, 4294967295u, u_input.a) << (vec4<u32>(6086u, 1u, global1.x, 32258u) % vec4<u32>(32u))) ^ ~vec4<u32>(u_input.a, 7848u, u_input.a, u_input.a))), arg_0 || (false & !arg_0));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(f32(-1f) * -2144f), _wgslsmith_f_op_f32(f32(-1f) * -1317f)) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-887f, -2130f, -350f)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(670f, 205f, false))), _wgslsmith_f_op_f32(f32(-1f) * -892f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1277f)))))));
    var var_2 = vec4<f32>(1514f, var_1.x, -237f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f), 1188f), -545f)));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 10>();
    let var_0 = select(!vec4<bool>(67802u >= ~global1.x, 4294967295u != min(u_input.a, 48157u), -780f >= _wgslsmith_f_op_f32(func_1(1275f, Struct_2(Struct_1(1045f, vec3<bool>(true, false, true), vec2<i32>(u_input.b.x, -1i), 1u, 1i), vec3<u32>(1u, 22028u, u_input.a), u_input.b.x))), true), vec4<bool>(true, true, true, true), false);
    var var_1 = firstLeadingBit(func_2(var_0.x));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2112f - 312f))), select(!select(var_0.wzw, vec3<bool>(true, var_0.x, var_0.x), var_0.wxz), vec3<bool>(false, var_0.x && true, true), !var_0.zyz), u_input.b.zx, global1.x, abs(-1i)), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 30997u), global1.xxw)), ~countOneBits(u_input.b.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-var_2.a.a), Struct_2(Struct_1(-712f, var_0.zzx, var_2.a.c, 22847u, -10467i), vec3<u32>(4294967295u, 934u, 1u), -20215i))), _wgslsmith_f_op_f32(f32(-1f) * -739f), var_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.a))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.a)) * 1322f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(404f))), var_2.a.a, var_2.a.a))), !(!(!var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1428f)), var_3.yyx, 1u, max(global1.x, 0u));
}

