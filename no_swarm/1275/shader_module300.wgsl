struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-889f, _wgslsmith_f_op_f32(round(-255f)), -334f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-871f, 688f))), _wgslsmith_f_op_f32(2646f - -581f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(419f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -356f))))));
    var var_1 = 30057u << ((_wgslsmith_mult_u32(34638u, ~_wgslsmith_add_u32(u_input.b, arg_2.a)) >> (firstTrailingBit(4294967295u) % 32u)) % 32u);
    let var_2 = arg_1.x;
    var var_3 = arg_2;
    let var_4 = !vec4<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), true)), true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), true)), (-33851i ^ max(u_input.d, arg_1.x)) == -_wgslsmith_mod_i32(u_input.d, -4189i));
    return max(-69i, _wgslsmith_dot_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, arg_1.x, -19454i, var_2), vec4<i32>(arg_1.x, -23571i, 2147483647i, arg_1.x)), -vec4<i32>(3377i, var_2, u_input.d, u_input.d)), arg_1)) >= _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, u_input.d, -60335i), select(-vec3<i32>(var_2, 2147483647i, var_2), -vec3<i32>(var_2, 16610i, 28565i), var_4.x)), _wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, -13094i, ~arg_1.x), -vec3<i32>(var_2, 629i, arg_1.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> u32 {
    let var_0 = Struct_1(abs(arg_2), abs(arg_1.b.a.b));
    let var_1 = Struct_3(Struct_1(45383u, u_input.c.zyz), Struct_2(var_0), vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.d), arg_1.a.x, abs(~_wgslsmith_mult_i32(arg_1.a.x, u_input.d))), ~vec3<u32>(arg_2, ~1u >> (arg_1.d.b.x % 32u), _wgslsmith_mod_u32(4294967295u, abs(4294967295u))), arg_1.b);
    let var_2 = select(vec3<bool>(false || !(arg_0 >= arg_2), func_3(arg_0, firstTrailingBit(vec4<i32>(var_1.c.x, -45866i, arg_1.a.x, -1i)), Struct_1(~4294967295u, arg_1.b.a.b)), true), vec3<bool>(true, true, true), true);
    let var_3 = Struct_2(var_0);
    var var_4 = var_2.x;
    return ~1u;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_mod_vec2_i32(vec2<i32>(~2147483647i, ~u_input.d) | -(vec2<i32>(u_input.d, u_input.d) | vec2<i32>(u_input.d, u_input.d)), vec2<i32>(~(44336i >> (1u % 32u)), select(select(u_input.d, u_input.d, false), -19867i | u_input.d, true))), Struct_2(Struct_1(arg_2, vec3<u32>(15139u, 4294967295u, arg_0.x))), arg_1, Struct_1(_wgslsmith_mod_u32(~1u, func_2(~47776u, Struct_4(vec2<i32>(u_input.d, u_input.d), Struct_2(Struct_1(u_input.b, vec3<u32>(arg_2, 19264u, 1u))), arg_3.x, Struct_1(1u, vec3<u32>(arg_0.x, 60039u, 26212u)), arg_0.x), _wgslsmith_mod_u32(4294967295u, 7200u))), firstLeadingBit(reverseBits(vec3<u32>(27747u, u_input.b, arg_0.x))) | vec3<u32>(~arg_2, ~arg_2, 6730u)), ~4294967295u);
    var_0 = Struct_4(-select(min(var_0.a, var_0.a), ~var_0.a, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) & vec2<i32>(-1i, u_input.d), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-887f)) * var_0.c), var_0.b.a, ~(~(~1u)));
    let var_1 = Struct_2(var_0.b.a);
    var_0 = Struct_4(_wgslsmith_mult_vec2_i32(-(~(var_0.a ^ vec2<i32>(var_0.a.x, -1i))), -var_0.a), var_0.b, -282f, var_1.a, u_input.c.x);
    var_0 = Struct_4(-vec2<i32>(30799i, _wgslsmith_sub_i32(-1i, var_0.a.x)), var_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c)) - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, var_0.c), _wgslsmith_f_op_f32(round(2248f)))))), var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x >> (1u % 32u), 4294967295u, u_input.c.x), (abs(vec3<u32>(u_input.e, var_1.a.b.x, var_1.a.a)) << (~vec3<u32>(13248u, arg_2, var_0.b.a.a) % vec3<u32>(32u))) ^ ~(~var_1.a.b)));
    return var_0.b.a;
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = Struct_2(func_4(_wgslsmith_sub_vec3_u32(u_input.c.zzz, select(select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(arg_0.e, arg_0.b.a.a, 65942u), vec3<bool>(false, true, true)), vec3<u32>(arg_0.d.b.x, 11318u, 73724u) ^ vec3<u32>(u_input.e, arg_0.e, u_input.a), true)), arg_0.c, ~_wgslsmith_mult_u32(func_2(arg_0.b.a.a, Struct_4(vec2<i32>(20897i, 2147483647i), Struct_2(Struct_1(u_input.e, u_input.c.ywy)), 1000f, arg_0.b.a, 55335u), arg_0.e), min(u_input.b, u_input.c.x)), vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.c)), arg_0.c, _wgslsmith_f_op_f32(arg_0.c * arg_0.c))));
    var var_1 = _wgslsmith_mult_u32(arg_0.d.b.x >> (var_0.a.a % 32u), var_0.a.b.x);
    let var_2 = any(select(vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), true), true && all(vec4<bool>(true, true, true, true))));
    let var_3 = _wgslsmith_div_vec2_u32(~vec2<u32>(min(36580u, ~arg_0.e), ~_wgslsmith_clamp_u32(u_input.a, arg_0.b.a.b.x, 4294967295u)), abs(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xx | vec2<u32>(4549u, var_0.a.b.x), u_input.c.wz), 32563u)));
    let var_4 = Struct_3(Struct_1(1u, vec3<u32>(0u, func_2(~u_input.e, arg_0, ~0u), arg_0.e)), Struct_2(func_4(max(func_4(vec3<u32>(6767u, 4294967295u, arg_0.d.a), 2813f, 4294967295u, vec3<f32>(arg_0.c, arg_0.c, arg_0.c)).b, vec3<u32>(74506u, arg_0.b.a.a, 0u)), _wgslsmith_f_op_f32(exp2(arg_0.c)), u_input.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.c, arg_0.c, arg_0.c))))), ~firstTrailingBit(-vec3<i32>(u_input.d, 17687i, u_input.d) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, u_input.b, var_3.x), vec3<u32>(4294967295u, 0u, 28286u), u_input.c.wxw) % vec3<u32>(32u))), ~select(~vec3<u32>(var_3.x, u_input.c.x, 62409u), _wgslsmith_add_vec3_u32(u_input.c.yxy, u_input.c.ywx) >> (vec3<u32>(var_0.a.b.x, var_0.a.b.x, 9994u) % vec3<u32>(32u)), select(!vec3<bool>(var_2, var_2, var_2), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, var_2), true), vec3<bool>(true, var_2, true))), var_0);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_i32(-abs(u_input.d) << (~u_input.b % 32u), _wgslsmith_mult_i32(~_wgslsmith_add_i32(u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(-73444i, u_input.d, u_input.d))), abs(u_input.d) << (1u % 32u)));
    var var_1 = ~(~(-(-u_input.d << (31535u % 32u))));
    var_1 = _wgslsmith_dot_vec3_i32(min(~(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d, u_input.d, -15390i), vec3<i32>(u_input.d, u_input.d, u_input.d))), firstLeadingBit(vec3<i32>(u_input.d & u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-5538i, u_input.d, -2208i)), func_1(Struct_4(vec2<i32>(u_input.d, u_input.d), Struct_2(Struct_1(4294967295u, vec3<u32>(u_input.a, 0u, 13163u))), -1385f, Struct_1(u_input.c.x, vec3<u32>(u_input.a, 4294967295u, 2814u)), 7361u))))), countOneBits(max(-vec3<i32>(u_input.d, u_input.d, u_input.d) << ((u_input.c.wzy << (u_input.c.zxw % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.d, 28983i))));
    let var_2 = Struct_4(abs(vec2<i32>(~0i, abs(-1i))) ^ (_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.d, 15822i)), -vec2<i32>(0i, -1i)) << (((u_input.c.xy & u_input.c.wx) ^ vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), Struct_2(Struct_1(~(~u_input.e), vec3<u32>(0u, u_input.a, u_input.c.x) & (vec3<u32>(u_input.c.x, 20287u, u_input.a) >> (vec3<u32>(u_input.c.x, 1u, u_input.e) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(610f * 802f))))), Struct_1(select(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 0u, u_input.b, 61068u), vec4<u32>(0u, u_input.c.x, u_input.a, u_input.a))), u_input.a, true), _wgslsmith_add_vec3_u32(u_input.c.zxz & _wgslsmith_div_vec3_u32(u_input.c.wxy, u_input.c.wzy), min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, 1u), u_input.c.yyx), _wgslsmith_add_vec3_u32(u_input.c.yzw, vec3<u32>(u_input.b, u_input.c.x, 0u))))), ~(~(_wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.zz) << (103638u % 32u))));
    let var_3 = any(vec4<bool>(true, true, true, all(vec4<bool>(false, false, false, false)))) || true;
    var_1 = -(2147483647i | max(u_input.d, u_input.d));
    var var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_2.a.x, u_input.d), vec3<i32>(u_input.d, 18407i, 25862i)), ~var_2.a.x), var_2.a.x), u_input.d, min(41701i, _wgslsmith_dot_vec3_i32(vec3<i32>(11759i, u_input.d, u_input.d), vec3<i32>(var_2.a.x, 1i, -2147483647i))), -2147483647i), abs(vec4<i32>(-40849i, countOneBits(-1i), u_input.d, var_2.a.x)));
    let var_5 = Struct_3(func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_2.b.a.a) >> (var_2.d.b.zx % vec2<u32>(32u)), max(u_input.c.xz, vec2<u32>(35025u, var_2.b.a.a))), 1u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 311f, var_3)) + _wgslsmith_f_op_f32(-191f - var_2.c)) - 1042f), var_2.d.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 1050f, var_2.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, 1621f, 308f) + vec3<f32>(var_2.c, var_2.c, var_2.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c, var_2.c, var_2.c) + vec3<f32>(var_2.c, var_2.c, var_2.c))), select(select(vec3<bool>(var_3, false, false), vec3<bool>(false, var_3, true), vec3<bool>(false, var_3, var_3)), select(vec3<bool>(false, false, false), vec3<bool>(var_3, true, var_3), vec3<bool>(var_3, var_3, true)), select(var_3, var_3, var_3))))), var_2.b, vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_2.a.x, 1i), vec2<i32>(_wgslsmith_div_i32(2147483647i, var_4.x), u_input.d << (var_2.d.b.x % 32u))), -1i), u_input.c.zyy, var_2.b);
    var_0 = _wgslsmith_div_i32(firstTrailingBit(0i), 48587i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(floor(-289f))))), 4294967295u, _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(abs(var_5.d.xz), vec2<u32>(var_5.e.a.b.x, u_input.c.x)) ^ vec2<u32>(abs(40034u), u_input.b), max(~vec2<u32>(var_2.b.a.a, 28223u), firstTrailingBit(~vec2<u32>(1u, var_2.e)))), u_input.c.wwx, u_input.e);
}

