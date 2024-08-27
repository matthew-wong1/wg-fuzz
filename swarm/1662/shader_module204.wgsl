struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 105640u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = ~43757u;
    let var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) | min(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -5433i, u_input.a.x, u_input.a.x) >> (vec4<u32>(var_0, var_0, u_input.b.x, var_0) % vec4<u32>(32u))), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, max(-2147483647i, u_input.a.x), _wgslsmith_clamp_i32(15548i, 2147483647i, u_input.a.x))), -(-(~vec4<i32>(u_input.a.x, u_input.a.x, 37236i, u_input.a.x)) | (vec4<i32>(0i, 28625i, -1i, u_input.a.x) << (~vec4<u32>(var_0, 35996u, 0u, var_0) % vec4<u32>(32u)))));
    global0 = 0u;
    let var_2 = _wgslsmith_mod_u32(~((var_0 >> (u_input.b.x % 32u)) & ~4294967295u) & 30141u, 0u);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1310f, -831f)), 2542f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(752f, _wgslsmith_div_f32(-1060f, _wgslsmith_f_op_f32(-1083f + 605f)), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(101f, -537f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-456f * 708f))), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true)))))));
    return max(~_wgslsmith_div_vec2_u32(select(vec2<u32>(var_0, u_input.b.x) >> (vec2<u32>(39637u, 0u) % vec2<u32>(32u)), u_input.b.zx, false), u_input.b.zy), vec2<u32>(_wgslsmith_add_u32(~21533u, var_0) ^ 4278u, ~var_2));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>, arg_3: vec2<f32>) -> u32 {
    let var_0 = all(arg_2.yww);
    global0 = select(arg_0.a.x, 10672u, arg_2.x);
    global0 = firstLeadingBit(~(~arg_0.b)) & ~max(_wgslsmith_mod_u32(1u, arg_0.a.x), 55165u);
    var var_1 = vec3<f32>(arg_3.x, -153f, _wgslsmith_f_op_f32(f32(-1f) * -218f));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(max(21489u, _wgslsmith_div_u32(u_input.b.x, 43607u)), reverseBits(u_input.b.x)), ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(0u, arg_0.b), countOneBits(u_input.b.x)), vec2<u32>(abs(4294967295u), countOneBits(1u))), -1i | u_input.a.x, _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b.x, arg_0.b, 2629u, 0u), arg_0.a, vec4<u32>(0u, u_input.b.x, _wgslsmith_dot_vec2_u32(func_3(), _wgslsmith_mult_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, u_input.b.x))), ~(arg_0.a.x & u_input.b.x))), firstTrailingBit(~4294967295u));
    return _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(~0u, select(1u, 4294967295u, arg_1))), ~arg_0.b & var_2.b.x, var_2.b.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    global0 = arg_1.b;
    global0 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~44418u, arg_1.b, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 108978u, 35236u), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 0u)))), _wgslsmith_mod_u32(min(4294967295u, _wgslsmith_dot_vec4_u32(arg_1.a << (vec4<u32>(u_input.b.x, arg_1.b, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<u32>(0u, 4294967295u, 47773u, 41705u))), ~(arg_1.a.x << (~u_input.b.x % 32u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(arg_1.a, vec4<u32>(0u, arg_1.a.x, 94370u, 4294967295u)), _wgslsmith_div_vec4_u32(arg_1.a, arg_1.a)) | u_input.b.x);
    var var_0 = arg_1;
    global0 = var_0.a.x;
    var_0 = Struct_2(~var_0.a, 4294967295u);
    return ~(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 42126u, func_2(Struct_2(var_0.a, 4294967295u), false, vec4<bool>(false, false, false, true), vec2<f32>(1314f, -591f))), ~(~vec3<u32>(u_input.b.x, u_input.b.x, 44807u))) >> (~1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(_wgslsmith_sub_u32(select(_wgslsmith_mult_u32(1u, ~u_input.b.x), u_input.b.x, true), u_input.b.x), func_1(-u_input.a, Struct_2(vec4<u32>(u_input.b.x | u_input.b.x, u_input.b.x, u_input.b.x, 1u), 1u), ~(-2147483647i)));
    var var_0 = Struct_1(22327u, ~u_input.b.xx, ~abs(_wgslsmith_add_i32(0i, _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(28528i, -1i)))), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(7181u, u_input.b.x), abs(vec2<u32>(77640u, u_input.b.x))), reverseBits(~u_input.b.x), ~(~u_input.b.x), 0u), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 96384u), u_input.b.xz), ~1u, abs(abs(4294967295u)), ~(u_input.b.x >> (4294967295u % 32u)))), ~func_2(Struct_2(vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), true, vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1080f, -973f)), _wgslsmith_div_vec2_f32(vec2<f32>(637f, -440f), vec2<f32>(276f, -1000f)))));
    global0 = 51489u;
    var_0 = Struct_1(u_input.b.x, ~(~(vec2<u32>(4294967295u, 0u) >> (select(vec2<u32>(69299u, 1u), var_0.b, vec2<bool>(false, false)) % vec2<u32>(32u)))), select(~_wgslsmith_mult_i32(u_input.a.x, abs(var_0.c)), 1i & (1i | var_0.c), true || (_wgslsmith_f_op_f32(round(-634f)) >= _wgslsmith_f_op_f32(step(381f, -116f)))), firstTrailingBit(vec4<u32>(u_input.b.x, 0u, func_1(vec3<i32>(var_0.c, var_0.c, u_input.a.x), Struct_2(var_0.d, var_0.b.x), 1i), ~_wgslsmith_clamp_u32(var_0.d.x, 3138u, var_0.d.x))), var_0.d.x);
    var_0 = Struct_1(var_0.a, vec2<u32>(1u, 1u), var_0.c, max(~var_0.d, var_0.d), var_0.b.x);
    let var_1 = Struct_2(firstTrailingBit(_wgslsmith_sub_vec4_u32(~var_0.d, _wgslsmith_div_vec4_u32(var_0.d, var_0.d))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 51764u, 4294967295u, u_input.b.x), var_0.d) >> (var_0.d % vec4<u32>(32u)), ~var_0.d, ~min(vec4<u32>(var_0.a, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, 8823u, u_input.b.x, 0u))) % vec4<u32>(32u)), _wgslsmith_div_u32(36118u, _wgslsmith_clamp_u32(42543u, _wgslsmith_dot_vec2_u32(var_0.b ^ var_0.d.xy, u_input.b.yz), 10541u)));
    var var_2 = Struct_1(4294967295u, _wgslsmith_mult_vec2_u32(u_input.b.zx, ~(~(~var_0.d.xw))), select(countOneBits(abs(firstTrailingBit(44713i))), -3432i & (i32(-1i) * -u_input.a.x), u_input.a.x >= var_0.c), _wgslsmith_div_vec4_u32(var_0.d, var_0.d), 44698u);
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) * _wgslsmith_div_f32(592f, -568f)), _wgslsmith_f_op_f32(max(-1173f, _wgslsmith_f_op_f32(204f + -506f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(40579i, -var_2.c), var_0.c, -71564i));
}

