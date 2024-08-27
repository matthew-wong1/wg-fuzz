struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), min(27325u, _wgslsmith_clamp_u32(46338u, 0u, 46660u))), vec2<u32>(1u, 1u)), vec4<u32>(5419u, 57372u, 1u >> (max(max(0u, 0u), _wgslsmith_clamp_u32(4294967295u, 0u, 0u)) % 32u), ~(~22033u)));
    let var_1 = !all(select(vec2<bool>(1u == var_0.b.x, any(vec3<bool>(true, false, true))), vec2<bool>(true, true), false));
    var_0 = Struct_1(~select(var_0.a, min(~var_0.a, ~vec2<u32>(90460u, var_0.b.x)), !(19548u >= var_0.b.x)), ~vec4<u32>(var_0.b.x, var_0.a.x, _wgslsmith_sub_u32(_wgslsmith_sub_u32(1u, 1u), abs(var_0.a.x)), var_0.b.x));
    let var_2 = !select(vec3<bool>(!var_1, var_1, select(!var_1, var_1 != var_1, any(vec4<bool>(var_1, var_1, var_1, true)))), !vec3<bool>(var_1, true, all(vec2<bool>(var_1, false))), true);
    var_0 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(100831u, ~(4294967295u << (var_0.b.x % 32u))), vec2<u32>(var_0.b.x & ~var_0.a.x, abs(_wgslsmith_clamp_u32(var_0.b.x, 25511u, var_0.b.x)))), vec4<u32>(countOneBits(countOneBits(var_0.a.x)) ^ var_0.b.x, var_0.a.x | var_0.a.x, var_0.a.x, ~(~_wgslsmith_clamp_u32(var_0.a.x, var_0.a.x, var_0.b.x))));
    return u_input.a.ywy;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>) -> Struct_2 {
    var var_0 = u_input.a.zww >> (~(~_wgslsmith_add_vec3_u32(~vec3<u32>(9900u, arg_1.x, 1u), vec3<u32>(arg_1.x, arg_1.x, arg_1.x))) % vec3<u32>(32u));
    let var_1 = countOneBits(32867u);
    var_0 = max(~_wgslsmith_clamp_vec3_i32(~(~u_input.b), u_input.a.yzz, _wgslsmith_sub_vec3_i32(-u_input.b, ~vec3<i32>(var_0.x, -1i, 2147483647i))), ~(~func_3() & ((u_input.b << (vec3<u32>(4294967295u, var_1, 0u) % vec3<u32>(32u))) ^ u_input.b)));
    return Struct_2(vec3<bool>(_wgslsmith_mod_i32(var_0.x, _wgslsmith_add_i32(-19722i, 12332i)) > abs(countOneBits(var_0.x)), arg_0.x, true), Struct_1(arg_1, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 46853u, arg_1.x) ^ vec3<u32>(var_1, 19745u, 24197u), vec3<u32>(arg_1.x, arg_1.x, 4294967295u)), ~reverseBits(var_1), var_1, var_1 >> ((1u << (arg_1.x % 32u)) % 32u))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-923f, 328f) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1228f)) + _wgslsmith_f_op_f32(1049f - _wgslsmith_f_op_f32(abs(1187f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1971f, -1848f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -786f))))));
    var var_1 = arg_2.b.b.zww;
    let var_2 = u_input.a.x << (_wgslsmith_mod_u32(~arg_2.b.a.x, arg_2.b.a.x) % 32u);
    var var_3 = vec3<u32>(select(~54280u, firstLeadingBit(var_1.x ^ ~93951u), arg_0), 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2.b.b.x, max(4294967295u, ~var_1.x)), _wgslsmith_div_vec2_u32(max(arg_2.b.b.xw, var_1.xz), func_2(vec2<bool>(arg_1.x, arg_2.a.x), arg_2.b.a).b.a) & ~vec2<u32>(4294967295u, 1u)));
    var_3 = min(arg_2.b.b.xwy, ~((vec3<u32>(710u, 87818u, var_3.x) >> ((arg_2.b.b.zxw ^ vec3<u32>(arg_2.b.b.x, 1u, var_1.x)) % vec3<u32>(32u))) >> (abs(vec3<u32>(13306u, var_3.x, 13977u)) % vec3<u32>(32u))));
    return !select(arg_2.a, vec3<bool>(_wgslsmith_clamp_i32(var_2, u_input.b.x, 40216i) > firstLeadingBit(u_input.a.x), false, arg_0), false);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-752f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1177f + -327f)))), -263f);
    return arg_0.b;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = vec2<bool>(u_input.c <= u_input.a.x, select(true, !(!all(vec3<bool>(false, false, true))), true));
    let var_1 = func_5(Struct_2(!func_4(true, !vec4<bool>(var_0.x, true, var_0.x, true), func_2(var_0, vec2<u32>(arg_0, 11071u))), arg_1));
    var var_2 = vec2<i32>(i32(-1i) * -15199i, _wgslsmith_add_i32(-56427i, abs(1i)));
    var_2 = min(u_input.b.xx ^ ~(vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(12385i, u_input.a.x)), firstTrailingBit(_wgslsmith_mod_vec2_i32(abs(~u_input.a.yw), _wgslsmith_sub_vec2_i32(~vec2<i32>(23765i, var_2.x), reverseBits(vec2<i32>(-48607i, u_input.b.x))))));
    var_2 = u_input.a.zy;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1240f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1274f - -530f)), _wgslsmith_f_op_f32(min(490f, 1f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(step(750f, -1293f)), _wgslsmith_f_op_f32(728f * -159f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = vec3<u32>(~45917u, _wgslsmith_mult_u32(~4294967295u, 1u), _wgslsmith_clamp_u32(90681u, 0u, 16768u));
    var var_2 = vec2<u32>(4294967295u, var_1.x);
    var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_2.x, 47037u), vec3<u32>(2497u, firstTrailingBit(reverseBits(57283u)), 108555u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-172f, -749f, 844f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1393f, -1000f, -175f)), var_0)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(61571u, Struct_1(var_1.zy, vec4<u32>(var_2.x, var_2.x, 88236u, var_1.x)))))))), 47778u);
}

