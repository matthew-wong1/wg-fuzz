struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = -293f;
    let var_0 = vec2<bool>(all(vec2<bool>(true, true)) & select(all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, true), true);
    let var_1 = vec3<u32>(~select(~u_input.a, reverseBits(1u), u_input.b.x != -83044i), _wgslsmith_div_u32(select(0u, u_input.a, select(true, true, !var_0.x)), 4294967295u), _wgslsmith_add_u32(u_input.a, reverseBits(~min(4294967295u, u_input.a))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-902f - 824f))), _wgslsmith_f_op_f32(1f * -450f)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_f32(512f * -1615f);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(~vec3<u32>(~64609u, 0u, ~50059u), arg_0, ~4294967295u, vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 3818u), vec2<bool>(arg_0, false)), ~vec2<u32>(4294967295u, u_input.a))), _wgslsmith_div_u32(~firstLeadingBit(u_input.a), _wgslsmith_sub_u32(u_input.a, 4294967295u ^ u_input.a)), ~u_input.a, u_input.a));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -506f);
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f));
    global0 = _wgslsmith_f_op_f32(-313f - _wgslsmith_f_op_f32(func_3(select(_wgslsmith_sub_vec3_u32(vec3<u32>(8689u, var_1.d.x, 2919u), vec3<u32>(var_1.c, 74589u, 1u)) & vec3<u32>(55342u, 0u, 14464u), ~vec3<u32>(var_1.d.x, 3534u, 28250u), !arg_0))));
    return _wgslsmith_f_op_f32(trunc(var_2));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = ~u_input.b.x;
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(true)), -1657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) * _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(arg_1.b + arg_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_2.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - -280f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, _wgslsmith_div_f32(1005f, _wgslsmith_f_op_f32(-arg_2.x)), -112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1741f + arg_1.b) - _wgslsmith_f_op_f32(select(-1622f, -949f, false))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) + _wgslsmith_div_f32(var_1.x, arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1479f)))))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1861f, var_1.x)))), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)))), var_1.x, var_1.x));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-385f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(434f * var_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -681f))) - arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x))) - _wgslsmith_f_op_f32(ceil(arg_2.x))) + arg_1.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))), arg_2.x);
    var_0 = _wgslsmith_add_i32(~(-(firstTrailingBit(-8743i) >> (4294967295u % 32u))), _wgslsmith_add_i32(u_input.b.x, abs(u_input.b.x)));
    return Struct_1(max(~arg_0, countOneBits(select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.x, u_input.a, arg_0.x), arg_0), reverseBits(vec3<u32>(arg_0.x, arg_0.x, u_input.a)), vec3<bool>(true, true, true)))), false, 0u, _wgslsmith_mod_vec4_u32(~(vec4<u32>(26745u, arg_0.x, arg_0.x, 67030u) | min(vec4<u32>(0u, arg_0.x, 1u, 7287u), vec4<u32>(u_input.a, u_input.a, 33149u, arg_0.x))), firstLeadingBit(abs(~vec4<u32>(23608u, 0u, arg_1.a, arg_1.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    let var_0 = ~0u;
    var var_1 = func_1(vec3<u32>(71554u, u_input.a, _wgslsmith_clamp_u32(~(arg_3.b << (17572u % 32u)), ~u_input.a, abs(4294967295u))), Struct_3(~_wgslsmith_mult_u32(arg_0.d.x, arg_3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * arg_1) * arg_1)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(972f, arg_1) * vec2<f32>(-1266f, arg_1)))))))).a;
    let var_2 = 121359u;
    var_1 = ~_wgslsmith_add_vec3_u32(arg_0.d.zxy, arg_0.d.xyy);
    var_1 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(select(_wgslsmith_div_u32(4294967295u, 42616u), u_input.a, false), 4294967295u), 0u), max(0u, ~(~(arg_3.b ^ 20428u))), ~0u);
    return Struct_1(~(~_wgslsmith_mod_vec3_u32(arg_0.a, abs(vec3<u32>(0u, 95556u, var_2)))), !arg_2, ~4294967295u, ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.d, arg_0.d), firstTrailingBit(arg_0.d)) | arg_0.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> i32 {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1932f - -279f), -1223f))))));
    let var_0 = Struct_3(arg_0.c, 643f);
    global0 = var_0.b;
    let var_1 = Struct_2(-5140i, Struct_1(vec3<u32>(1u, _wgslsmith_mod_u32(var_0.a, 0u), firstTrailingBit(4294967295u)) & arg_2.d.xxx, true, ~(~1u), arg_0.d), ~arg_0.a, vec4<i32>(8162i, -59829i, firstTrailingBit(24956i << (var_0.a % 32u)), abs(arg_1.x)) ^ vec4<i32>(-u_input.b.x, _wgslsmith_div_i32(_wgslsmith_mod_i32(-37585i, -2551i), arg_1.x), countOneBits(100245i), -1i), arg_0);
    let var_2 = arg_2.a.xz;
    return max(~var_1.a, _wgslsmith_dot_vec3_i32(var_1.d.wyw, vec3<i32>(-firstTrailingBit(u_input.b.x), 28340i, -(~(-34483i)))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = Struct_4(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(-u_input.b.x, countOneBits(arg_0.x))) >= -(-17747i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 37460u)) % 32u)), 79652u, _wgslsmith_f_op_f32(f32(-1f) * -718f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))));
    global0 = arg_1.x;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-arg_1.x)) + _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-1548f + -1676f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1151f, arg_1.x))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + arg_1.x)))))));
    global0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f) + _wgslsmith_f_op_f32(select(348f, -1055f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + arg_1.x))));
    let var_1 = Struct_4((true && any(select(vec2<bool>(true, var_0.a), vec2<bool>(true, var_0.a), false))) != true, _wgslsmith_mod_u32(4294967295u, ~(~var_0.b)), true);
    return StorageBuffer(vec4<f32>(-911f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(169f - 423f)), 377f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2930f))), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(abs(-1000f)), var_1.c))), -(~(-firstLeadingBit(arg_0.x))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, var_0.b, 34385u) << (vec3<u32>(74584u, 0u, 35463u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 1u)) << ((vec3<u32>(u_input.a, var_1.b, 82017u) & vec3<u32>(15514u, var_1.b, var_1.b)) % vec3<u32>(32u)), ~(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, var_0.b, 1u), vec3<u32>(0u, var_0.b, var_1.b)) | ~vec3<u32>(70273u, 6015u, 1u))), -u_input.b.x, abs(firstTrailingBit(select(-u_input.b.zz, abs(u_input.b.yz), !vec2<bool>(var_0.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec4<u32>(_wgslsmith_div_u32(u_input.a, 51985u), ~(u_input.a & countOneBits(u_input.a)), ~(~19536u), firstLeadingBit(~u_input.a)), ~abs(~vec4<u32>(71462u, u_input.a, 64895u, 43915u)) << (~firstTrailingBit(vec4<u32>(1u, u_input.a, u_input.a, 80420u) >> (vec4<u32>(88546u, u_input.a, 47140u, 21133u) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -637f);
    let x = u_input.a;
    s_output = func_6(vec3<i32>(u_input.b.x, func_5(func_4(func_1(var_0.xxx, Struct_3(5874u, -714f), vec2<f32>(1114f, 1000f)), -1283f, true, Struct_4(false, 75929u, false)), _wgslsmith_mod_vec2_i32(u_input.b.zx, select(u_input.b.yx, vec2<i32>(u_input.b.x, 32166i), vec2<bool>(false, false))), func_4(func_1(vec3<u32>(4294967295u, 65681u, 1u), Struct_3(u_input.a, -1296f), vec2<f32>(1705f, 1886f)), 1000f, true, Struct_4(true, 4294967295u, false))), abs(u_input.b.x)), vec3<f32>(-1093f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) * _wgslsmith_f_op_f32(f32(-1f) * -2003f))), -1000f));
}

