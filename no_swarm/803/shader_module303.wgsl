struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

var<private> global1: vec3<f32> = vec3<f32>(-593f, -419f, -1934f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> u32 {
    let var_0 = select(~vec2<u32>(83712u, ~arg_2.b.x), countOneBits(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_3), vec2<u32>(arg_1, arg_3)))) << (arg_2.b % vec2<u32>(32u)), !(!select(!vec2<bool>(arg_2.c, false), select(arg_2.a.d.zz, arg_2.a.d.yx, arg_2.c), arg_2.a.d.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(arg_2.a.e * _wgslsmith_f_op_vec2_f32(-arg_0.zx));
    let var_2 = _wgslsmith_mult_vec3_u32(~(~vec3<u32>(_wgslsmith_dot_vec2_u32(var_0, vec2<u32>(arg_3, 0u)), firstTrailingBit(0u), ~arg_2.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u ^ arg_3, 1u, var_0.x), (vec3<u32>(var_0.x, 1u, 4294967295u) << (vec3<u32>(var_0.x, 0u, 4294967295u) % vec3<u32>(32u))) ^ ~vec3<u32>(28927u, var_0.x, 0u), ~(~vec3<u32>(arg_2.b.x, 70016u, 4294967295u))) >> (vec3<u32>(0u, ~var_0.x >> (arg_3 % 32u), 4108u) % vec3<u32>(32u)));
    var var_3 = Struct_3(vec2<i32>(u_input.a, arg_2.a.c.x));
    var_3 = Struct_3(-arg_2.a.c.xz);
    return select(arg_3, ~var_2.x, true);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_2.x;
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f))), arg_3.a), global1.x, 212f);
    let var_1 = arg_3.c.ww;
    global1 = vec3<f32>(_wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(-255f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.x, arg_3.e.x)) - _wgslsmith_f_op_f32(exp2(arg_1.x))))), 515f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = arg_3.c.xwx;
    return max(_wgslsmith_sub_u32(~arg_3.b, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-620f, arg_3.a, arg_1.x, arg_3.a) * vec4<f32>(2588f, -148f, -1000f, 1000f)), arg_3.b >> (arg_2.x % 32u), Struct_4(arg_3, vec2<u32>(52039u, arg_2.x), arg_3.d.x), arg_3.b) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.x, 0u, 37150u), ~vec3<u32>(arg_2.x, arg_3.b, 1u)) % 32u)), 22457u);
}

fn func_1() -> Struct_4 {
    global0 = array<vec2<bool>, 20>();
    let var_0 = abs(vec3<u32>(_wgslsmith_sub_u32(func_2(-10433i, vec3<f32>(197f, 946f, 1229f), vec2<u32>(0u, 30358u), Struct_2(global1.x, 43806u, vec4<i32>(u_input.a, -8790i, u_input.a, u_input.a), vec4<bool>(true, false, true, true), vec2<f32>(global1.x, 1000f))), countOneBits(1u)) << ((_wgslsmith_mod_u32(4294967295u, 31819u) & firstTrailingBit(121490u)) % 32u), func_2(29132i, vec3<f32>(-1550f, _wgslsmith_f_op_f32(min(-349f, global1.x)), _wgslsmith_f_op_f32(floor(908f))), _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 48273u), abs(vec2<u32>(4294967295u, 6387u))), Struct_2(1000f, _wgslsmith_dot_vec2_u32(vec2<u32>(14097u, 1u), vec2<u32>(12109u, 15957u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 15629i, -15754i, -31928i), vec4<i32>(0i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))), ~29661u));
    let var_1 = var_0.x;
    let var_2 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), true), !(u_input.a < u_input.a)));
    global1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(trunc(457f)), _wgslsmith_f_op_f32(-771f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 705f, global1.x)))));
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(-global1.x), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global1.x, -534f, global1.x))), firstTrailingBit(~var_1), Struct_4(Struct_2(global1.x, var_0.x, vec4<i32>(u_input.a, u_input.a, 18124i, u_input.a), vec4<bool>(false, true, var_2.x, var_2.x), global1.yy), var_0.zx, var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 47640u, var_0.x, var_0.x) | vec4<u32>(var_0.x, 0u, var_1, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(6785u, 4294967295u, 21253u, var_1), vec4<u32>(var_1, 0u, 1u, 39637u)))), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 6299i), vec4<i32>(26932i, u_input.a, u_input.a, u_input.a)), !(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, false), vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(683f, _wgslsmith_f_op_f32(select(-1378f, global1.x, true))))), vec2<u32>(func_2(u_input.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(313f, -1925f, global1.x) * vec3<f32>(-980f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-341f, 1242f, global1.x))))), vec2<u32>(var_0.x, var_0.x | var_1), Struct_2(_wgslsmith_f_op_f32(global1.x + -100f), min(26531u, 107405u), vec4<i32>(u_input.a, u_input.a, 2147483647i, 32022i), vec4<bool>(true, var_2.x, var_2.x, true), vec2<f32>(1586f, global1.x))), 57029u), var_2.x);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_2(111f, _wgslsmith_clamp_u32(arg_1.a.b, arg_1.b.x, arg_1.b.x), -arg_1.a.c, arg_1.a.d, _wgslsmith_f_op_vec2_f32(-global1.zz));
    var var_1 = abs(vec2<u32>(4294967295u, var_0.b) ^ ~(arg_1.b ^ vec2<u32>(0u, 0u)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) * 1f), _wgslsmith_f_op_f32(2165f + arg_2.x), arg_1.a.a), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global1.x, arg_1.a.a) + vec3<f32>(-792f, -1223f, -2159f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1788f, 931f, 308f)))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.yzx - vec3<f32>(var_0.a, -1000f, var_0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 20>();
    let var_0 = _wgslsmith_mod_u32(1u, 23669u << (1u % 32u));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(-1i, func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1582f, -562f, global1.x), vec4<f32>(-601f, 807f, 1582f, -1155f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1792f, global1.x, global1.x, global1.x) + vec4<f32>(159f, -1191f, global1.x, -1328f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, 308f, global1.x) + vec4<f32>(global1.x, global1.x, 1245f, -533f)))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -687f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + 1000f) + global1.x)), global1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -936f))) <= _wgslsmith_f_op_f32(-global1.x), select(vec3<bool>((2147483647i ^ u_input.a) != u_input.a, true, false), !select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true), true));
    var var_2 = ~_wgslsmith_add_vec2_i32(vec2<i32>(27210i, _wgslsmith_dot_vec4_i32(vec4<i32>(38181i, u_input.a, -1i, u_input.a), vec4<i32>(-2147483647i, u_input.a, -13000i, u_input.a)) ^ 0i), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.a), func_1().a.c.zx)));
    let var_3 = func_1().a;
    let var_4 = select(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, -13057i, 1i, firstLeadingBit(_wgslsmith_sub_i32(12968i, -40130i))), min(var_3.c, var_3.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -u_input.a, abs(23029i), -6501i) >> (vec4<u32>(_wgslsmith_clamp_u32(1u, 1u, var_3.b), 11410u, ~var_0, 56381u) % vec4<u32>(32u)), ~(~_wgslsmith_add_vec4_i32(var_3.c, vec4<i32>(u_input.a, var_3.c.x, 2147483647i, var_2.x)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-8922i, var_4.x), _wgslsmith_mod_u32(1u, ~(~(var_3.b << (4294967295u % 32u)))), -1812f, abs(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_4.yww, var_3.c.zxz), func_1().a.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_4(var_2.x, Struct_4(Struct_2(619f, 4294967295u, var_4, vec4<bool>(true, false, false, false), var_3.e), vec2<u32>(30550u, 35444u), true), vec4<f32>(global1.x, 187f, -124f, 367f))).yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(1163f, global1.x))) * _wgslsmith_f_op_vec2_f32(var_3.e * _wgslsmith_div_vec2_f32(global1.zy, vec2<f32>(437f, 1674f))))));
}

