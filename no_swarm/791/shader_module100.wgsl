struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_4) -> vec4<i32> {
    var var_0 = !(!(!arg_2.c));
    let var_1 = _wgslsmith_sub_vec3_i32(-(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 5727i, arg_2.a), vec3<i32>(-45479i, u_input.d.x, u_input.d.x)) >> (vec3<u32>(arg_0, ~arg_0, _wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(1u, 1u))) % vec3<u32>(32u))), reverseBits(min(-vec3<i32>(arg_2.a, 1i, arg_2.a) >> (_wgslsmith_mod_vec3_u32(arg_1, arg_1) % vec3<u32>(32u)), vec3<i32>(0i, _wgslsmith_clamp_i32(arg_2.a, 1i, 1i), arg_2.a))));
    var_0 = all(!select(select(select(vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(false, false), vec2<bool>(arg_2.c, false)), vec2<bool>(true, true), select(arg_2.c, false, true)), vec2<bool>(!arg_2.c, arg_2.c), false));
    let var_2 = Struct_5(!arg_2.c, _wgslsmith_f_op_f32(124f * arg_2.b) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(916f, _wgslsmith_f_op_f32(-293f + -770f)))));
    var var_3 = reverseBits(var_1.x ^ ~(-1i)) | arg_2.a;
    return vec4<i32>(-1i) * -abs(select(~vec4<i32>(1i, u_input.d.x, 36970i, u_input.d.x), vec4<i32>(var_1.x, var_1.x, 2144i, 39811i), select(vec4<bool>(false, true, false, arg_2.c), vec4<bool>(false, true, var_2.a, true), vec4<bool>(false, var_2.a, true, arg_2.c))));
}

fn func_4(arg_0: vec4<i32>) -> u32 {
    var var_0 = ~vec4<i32>(i32(-1i) * -8817i, abs(2147483647i), 35253i, countOneBits(1i) >> ((_wgslsmith_div_u32(1u, u_input.a) >> (max(u_input.a, 1u) % 32u)) % 32u));
    var_0 = -(~arg_0);
    var var_1 = Struct_4(8020i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1100f, -559f, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-310f))))), true);
    let var_2 = Struct_5(var_1.b >= 502f, select(!(!all(vec2<bool>(var_1.c, var_1.c))), any(select(vec4<bool>(var_1.c, false, true, true), select(vec4<bool>(false, var_1.c, false, var_1.c), vec4<bool>(var_1.c, var_1.c, var_1.c, false), vec4<bool>(false, var_1.c, var_1.c, false)), true)), false));
    let var_3 = Struct_4(-5716i >> (_wgslsmith_mult_u32(~1u << (u_input.b % 32u), 9512u) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b * var_1.b))))), !all(select(select(vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, true), true), !vec2<bool>(true, var_1.c), !vec2<bool>(var_1.c, var_1.c))));
    return 24663u;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = 405f;
    var var_1 = !(all(vec3<bool>(any(vec4<bool>(arg_1.d, arg_1.d, arg_1.d, false)), 1229f <= var_0, true)) && arg_1.d);
    let var_2 = 1i;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-858f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -696f)), _wgslsmith_f_op_f32(floor(arg_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, -268f, -560f), vec4<f32>(-661f, var_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -457f, var_0, var_0)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(213f, 531f, 2808f, -690f) + vec4<f32>(-1000f, var_0, var_0, var_0))), all(vec4<bool>(true, arg_1.a, arg_1.d, arg_1.d))))));
    let var_4 = Struct_5(arg_1.d, arg_1.d);
    return func_4(func_3(_wgslsmith_mult_u32(firstTrailingBit(0u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_1.e, arg_1.e, u_input.c.x), countOneBits(52980u))), ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(arg_1.e, arg_1.e, 4294967295u)), vec3<u32>(arg_1.e, 1u, 93107u)), Struct_4(2147483647i ^ (16659i & u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: f32) -> u32 {
    let var_0 = select(~(~abs(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x))) >> (_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 35431u, 1u, 1u), vec4<u32>(60822u, u_input.a, u_input.a, u_input.b))), vec4<u32>(0u & u_input.c.x, 1u, ~1u, ~42377u)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_sub_i32(-22525i, u_input.d.x), u_input.d.x, u_input.d.x, ~abs(u_input.d.x)), false);
    let var_1 = vec3<bool>(!select(false, true, true), arg_0.x, all(vec3<bool>(any(select(vec4<bool>(false, arg_1.b, arg_1.a, true), vec4<bool>(true, arg_0.x, false, arg_1.b), arg_0.x)), any(select(arg_0, vec3<bool>(arg_1.b, arg_0.x, true), false)), u_input.a < select(1u, 1u, arg_0.x))));
    var var_2 = vec4<u32>(9442u, u_input.c.x, min(_wgslsmith_add_u32(u_input.b, u_input.c.x), func_2(_wgslsmith_f_op_f32(-461f * 1109f), Struct_1(var_1.x, var_0.x, 1i, false, 0u))), 18497u) ^ _wgslsmith_add_vec4_u32(reverseBits(reverseBits(~vec4<u32>(87470u, 50989u, u_input.a, 0u))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(75083u, 1u, 18048u, u_input.c.x), vec4<u32>(0u, 1u, 1u, u_input.c.x)), ~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.b)) | abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.b, 23270u), vec4<u32>(0u, u_input.b, u_input.c.x, 1u))));
    var var_3 = 9170u;
    let var_4 = 1i;
    return ~(max(_wgslsmith_mult_u32(0u, 4294967295u) ^ u_input.c.x, 4294967295u) >> (31516u % 32u));
}

fn func_5(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_4(-25234i, _wgslsmith_f_op_f32(f32(-1f) * -249f), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return Struct_3(0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<u32>(min(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 0u), vec3<u32>(0u, u_input.c.x, u_input.a))), func_1(vec3<bool>(true, false, true), Struct_5(false, true), _wgslsmith_f_op_f32(f32(-1f) * -458f)), countOneBits(~36691u), firstLeadingBit(u_input.c.x)) | ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(34198u, u_input.b, 13295u, u_input.c.x), vec4<u32>(u_input.b, u_input.b, 4294967295u, 0u) & vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 9520u), ~vec4<u32>(u_input.a, u_input.c.x, u_input.a, u_input.a)));
    let var_1 = func_5(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, var_0.a, u_input.c.x, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 0u, 1u, var_0.a), vec4<u32>(u_input.b, var_0.a, 26604u, u_input.a))), vec4<u32>(var_0.a, 6534u, 50172u, 20881u) | countOneBits(vec4<u32>(1u, u_input.c.x, 1u, 14734u)), true));
    let var_2 = Struct_1(!(-779f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(128f)))), ~_wgslsmith_div_i32(abs(~u_input.d.x), i32(-1i) * -u_input.d.x), ~(0i >> (reverseBits(u_input.c.x) % 32u)), true, 24111u);
    var var_3 = _wgslsmith_f_op_f32(-117f + _wgslsmith_f_op_f32(-1f));
    let var_4 = Struct_5((44141u >> (_wgslsmith_div_u32(30359u, ~0u) % 32u)) >= var_1.a, !(!(!var_2.a) & false));
    var var_5 = Struct_4(u_input.d.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1361f)) + -1000f))))), select(true, !var_2.a, !(-1259f != _wgslsmith_f_op_f32(select(-631f, -606f, var_2.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.b);
}

