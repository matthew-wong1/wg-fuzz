struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(584f, 278f, -576f), vec4<bool>(false, false, false, false));

var<private> global1: u32 = 0u;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> u32 {
    let var_0 = vec3<u32>(~reverseBits(arg_0.x), _wgslsmith_sub_u32(~_wgslsmith_div_u32(select(4294967295u, 4294967295u, global0.b.x), firstTrailingBit(arg_0.x)), ~11680u), u_input.b);
    let var_1 = max(arg_0.x, _wgslsmith_dot_vec2_u32(arg_0.yz, ~var_0.yz));
    var var_2 = Struct_5(~select(1i | -arg_1.e, select(0i << (u_input.c % 32u), ~2147483647i, select(true, true, false)), !(2147483647i >= arg_1.e)), !(!select(vec2<bool>(arg_1.b, global0.b.x), global0.b.xz, !global0.b.wy)));
    let var_3 = global0.a.x;
    var var_4 = Struct_5(-_wgslsmith_clamp_i32(2147483647i, u_input.a.x, -1i), select(var_2.b, vec2<bool>(true, _wgslsmith_f_op_f32(-arg_1.c) == arg_1.c), vec2<bool>(all(global0.b.yx) & false, !(!var_2.b.x))));
    return 44006u;
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = false;
    global0 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(sign(-480f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1216f)), -2100f))), _wgslsmith_f_op_f32(ceil(global0.a.x))), select(global0.b, global0.b, vec4<bool>(false, global0.b.x, false, !(false | global0.b.x))));
    var_0 = !(!global0.b.x);
    var var_1 = Struct_4(arg_0.b, global0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1259f * 1000f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(trunc(global0.a.x))))), 363f)), arg_0.a, -27523i);
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-global0.a), global0.b);
    return vec2<u32>(~(~_wgslsmith_div_u32(arg_0.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(115226u, 158u, 59554u), vec3<u32>(1334u, var_1.d.a, 1u)))), _wgslsmith_mult_u32(func_3(~max(vec4<u32>(26015u, var_1.d.a, 1u, 4294967295u), vec4<u32>(var_1.a.a, 12573u, 4294967295u, 19430u)), Struct_4(Struct_1(8908u), true != global0.b.x, 1654f, var_1.d, -var_1.e)), var_1.d.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<i32>) -> bool {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_clamp_i32(countOneBits(_wgslsmith_dot_vec4_i32(select(~arg_3, _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a.x, arg_3.x), arg_3), global0.b), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.x, -73199i, arg_3.x, arg_3.x), arg_3)))), _wgslsmith_mod_i32(-select(arg_3.x, 35487i, global0.b.x) & u_input.a.x, arg_3.x), arg_3.x);
    var var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a.x * global0.a.x)))), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(global0.a.x + -1953f), any(global0.b.zzz))))), vec4<bool>(true, global0.b.x, false, 2147483647i <= u_input.a.x));
    var var_3 = arg_3;
    var_1 = -26075i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a.x * global0.a.x), _wgslsmith_f_op_f32(step(var_2.a.x, arg_0.x)))))) >= -1000f;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> vec4<u32> {
    global1 = 13302u;
    let var_0 = Struct_5(countOneBits(abs(min(_wgslsmith_add_i32(2147483647i, -4030i), -2147483647i >> (1u % 32u)))), select(global0.b.zx, global0.b.zx, global0.b.yz));
    global0 = arg_1;
    let var_1 = var_0;
    global0 = arg_1;
    return vec4<u32>(arg_3.d.a, ~u_input.c, u_input.b >> (30408u % 32u), ~func_2(Struct_2(arg_3.a, Struct_1(u_input.b))).x & 8067u);
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = func_5(select(global0.b.xwx, vec3<bool>(false, func_4(global0.a.xy, func_2(Struct_2(Struct_1(u_input.b), Struct_1(u_input.c))), 1u, vec4<i32>(u_input.a.x, -8023i, 46347i, 2147483647i)), false), all(global0.b.wz) || false), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-261f, global0.a.x, global0.a.x))) - global0.a), select(vec4<bool>(!global0.b.x, global0.b.x, !global0.b.x, global0.b.x), global0.b, select(global0.b, vec4<bool>(true, false, false, global0.b.x), !global0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x)))) * global0.a.x), Struct_4(Struct_1(~u_input.c ^ firstLeadingBit(u_input.c)), false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -950f))), Struct_1(1u), abs(~(~u_input.a.x))));
    var var_1 = vec2<bool>(true, true);
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -217f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-184f, global0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))))), !global0.b);
    let var_2 = countOneBits(select(max(13613i, _wgslsmith_mult_i32(firstTrailingBit(2147483647i), arg_0.x)), firstLeadingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, u_input.a.x), vec3<i32>(76991i, -2147483647i, arg_0.x))), 1518i >= ~(22640i | u_input.a.x)));
    let var_3 = 3186u;
    return global0.b;
}

fn func_6(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_3) -> f32 {
    var var_0 = u_input.a;
    let var_1 = global0.a.x;
    var_0 = _wgslsmith_mult_vec2_i32(arg_2.wz, arg_2.wz);
    var_0 = -(u_input.a >> (vec2<u32>(~arg_0.x, ~(~48538u)) % vec2<u32>(32u)));
    var var_2 = all(global0.b.xz);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-749f)));
}

fn func_7(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x))) < 492f, 1458f, Struct_1(~countOneBits(_wgslsmith_add_u32(arg_1.a, 65276u))), firstTrailingBit(select(-u_input.a.x | _wgslsmith_sub_i32(25530i, u_input.a.x), 62037i, arg_0)));
    let var_1 = arg_1.a;
    let var_2 = Struct_3(vec3<f32>(-2295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1139f + _wgslsmith_f_op_f32(select(arg_3, 583f, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -853f)), global0.b);
    global0 = var_2;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c * -1184f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1052f + arg_3) - 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(132f * var_0.c)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    global0 = func_7(!global0.b.x, Struct_1(_wgslsmith_mult_u32(57785u, 13629u)), global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.a.x)))) + _wgslsmith_f_op_f32(-843f + _wgslsmith_f_op_f32(-586f + global0.a.x))) * _wgslsmith_f_op_f32(func_6(select(vec4<u32>(14863u, u_input.c, 0u, 14287u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, 19128u, 0u), vec4<u32>(0u, u_input.c, u_input.c, u_input.b)), func_1(vec3<i32>(2147483647i, u_input.a.x, -53627i))), ~(~(-28811i)), vec4<i32>(abs(2147483647i), u_input.a.x << (4294967295u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(13629i, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-2147483647i, 0i, 16135i, -40264i)), u_input.a.x), Struct_3(_wgslsmith_f_op_vec3_f32(-global0.a), vec4<bool>(global0.b.x, false, global0.b.x, false))))));
    global0 = Struct_3(global0.a, vec4<bool>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(312f, -468f)), firstTrailingBit(func_2(Struct_2(Struct_1(u_input.b), Struct_1(u_input.b)))), ~_wgslsmith_div_u32(1u, u_input.c), abs(vec4<i32>(-36869i, u_input.a.x, 2147483647i, u_input.a.x))), true, !global0.b.x, true));
    var var_1 = vec2<u32>(u_input.b, 16007u);
    let var_2 = !global0.b.yz;
    var var_3 = _wgslsmith_mult_u32(17916u, _wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(var_1.x), 22339u) & (_wgslsmith_sub_u32(u_input.b, u_input.b) >> (_wgslsmith_mult_u32(var_1.x, 4294967295u) % 32u)), 1u));
    let var_4 = Struct_2(Struct_1(_wgslsmith_add_u32(max(u_input.c << (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(90u, u_input.c), vec2<u32>(u_input.c, u_input.c))), ~14538u)), Struct_1(var_1.x));
    let var_5 = Struct_2(Struct_1(~79577u), Struct_1(50861u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.a.x - 1956f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_6(vec4<u32>(42161u, 56863u, 92237u, 12332u), u_input.a.x, vec4<i32>(u_input.a.x, u_input.a.x, -24875i, 37119i), Struct_3(vec3<f32>(global0.a.x, 951f, global0.a.x), global0.b))), _wgslsmith_f_op_f32(-1253f * global0.a.x), global0.a.x))), _wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(1i)), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -890f), 381f, true)), 857f) + global0.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 52338u), vec2<u32>(4678u, 4294967295u)), u_input.c | 525u), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_4.b.a, 41151u), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(1u, 1u) ^ vec2<u32>(4294967295u, var_1.x))), ~countOneBits(~vec2<u32>(4294967295u, 1u))));
}

