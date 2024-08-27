struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    var var_0 = -_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(arg_0, 17757i, arg_3.x, arg_0)), vec4<i32>(arg_1.x, arg_1.x, -8501i, -25944i >> (global0.x % 32u))), vec4<i32>(arg_0 << (u_input.a.x % 32u), u_input.b.x ^ 0i, _wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_sub_i32(u_input.b.x, 1i)) >> (firstLeadingBit(reverseBits(vec4<u32>(arg_2.c, arg_2.c, 34728u, 70305u))) % vec4<u32>(32u)));
    var var_1 = ~vec3<i32>(~(~arg_3.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_2.b.x, arg_2.b.x, 2147483647i, arg_3.x), vec4<i32>(2147483647i, 2147483647i, arg_2.b.x, var_0.x), true) >> (vec4<u32>(1u, 12181u, 0u, global0.x) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-21955i, arg_1.x, 7865i, 2147483647i), vec4<i32>(-24554i, -2147483647i, var_0.x, arg_3.x)))), _wgslsmith_div_i32(0i, -1i ^ arg_0) << (u_input.a.x % 32u));
    var_1 = var_0.zzz;
    var var_2 = arg_2;
    return any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), (u_input.b.x <= var_1.x) | true));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> u32 {
    let var_0 = arg_0;
    global1 = -_wgslsmith_add_i32(arg_0.b.x, u_input.b.x >> ((0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(43401u, 1u, u_input.a.x, var_0.c), vec4<u32>(var_0.c, var_0.a, arg_0.c, 0u)) % 32u)) % 32u));
    let var_1 = Struct_1(0u, vec2<i32>(select(arg_0.b.x & -var_0.b.x, arg_0.b.x, arg_1.x), ~1i), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, global0.x), u_input.a), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a) | vec2<u32>(62690u, 26047u)), ~(u_input.a & vec2<u32>(132889u, 0u))));
    global0 = ~(~u_input.a);
    global0 = abs(max(~vec2<u32>(~4294967295u, 13185u), min(~vec2<u32>(global0.x, 97217u), u_input.a)));
    return arg_0.c;
}

fn func_2() -> Struct_1 {
    let var_0 = 10509i;
    global0 = u_input.a;
    let var_1 = Struct_1(28955u, vec2<i32>(13563i, -45854i), countOneBits(~0u));
    global1 = i32(-1i) * -29984i;
    var var_2 = Struct_1(var_1.a, ~(~(~_wgslsmith_add_vec2_i32(u_input.b.xx, var_1.b))), var_1.a);
    return Struct_1(min(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, var_2.a, 31592u, 0u)), vec4<u32>(global0.x & 0u, 1u, ~1949u, 1u)), func_4(var_1, vec4<bool>(true, true, func_3(var_0, u_input.b.zy, Struct_1(u_input.a.x, vec2<i32>(var_0, 9053i), 5774u), u_input.b.yx), var_2.c <= u_input.a.x))), vec2<i32>(u_input.b.x, u_input.b.x), ~14284u);
}

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    global1 = _wgslsmith_mod_i32(0i, -2147483647i & u_input.b.x);
    var var_0 = vec2<i32>(u_input.b.x, u_input.b.x & u_input.b.x) | vec2<i32>(u_input.b.x, ~(-u_input.b.x));
    let var_1 = func_2();
    var var_2 = vec3<i32>(u_input.b.x, var_0.x, _wgslsmith_add_i32(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, 4836i), vec3<i32>(0i, u_input.b.x, var_1.b.x))), var_1.b.x));
    var var_3 = -(-10526i & var_0.x);
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1024f)), -750f))));
}

fn func_5(arg_0: vec2<f32>, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    global1 = 35956i;
    var var_0 = func_2();
    var_0 = func_2();
    var_0 = Struct_1(arg_1, vec2<i32>(-1i) * -var_0.b, arg_2.x);
    var_0 = func_2();
    return 2580u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_u32(firstLeadingBit(global0.x), 9308u, ~u_input.a.x), u_input.b.yz, ~firstTrailingBit(1u));
    global0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -290f));
    global0 = _wgslsmith_sub_vec2_u32(vec2<u32>(func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 2219f))), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, false, false))))), u_input.a.x, vec3<u32>(_wgslsmith_mult_u32(global0.x, 0u), ~60579u, 1u)), ~(~60907u) ^ _wgslsmith_sub_u32(~57949u, _wgslsmith_div_u32(var_0.c, var_0.c))), ~_wgslsmith_add_vec2_u32(vec2<u32>(5328u, u_input.a.x), vec2<u32>(u_input.a.x, 1u)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-254f, -1484f, false))) + 1018f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-167f)))) - _wgslsmith_f_op_f32(min(-1211f, -401f)));
    global0 = ~(~max(vec2<u32>(1u, func_5(vec2<f32>(958f, 1325f), 7440u, vec3<u32>(1u, u_input.a.x, 1u))), u_input.a));
    global1 = _wgslsmith_clamp_i32(-2147483647i, var_0.b.x, max(_wgslsmith_sub_i32(u_input.b.x, 2147483647i), func_2().b.x));
    global1 = max(_wgslsmith_mod_i32(u_input.b.x, var_0.b.x), u_input.b.x) ^ _wgslsmith_mod_i32(abs(-(23122i ^ var_0.b.x)), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(var_0.b.x, min(var_0.b.x, 0i), -2787i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

