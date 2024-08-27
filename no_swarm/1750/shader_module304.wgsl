struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 65082u, 1564u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> i32 {
    global0 = u_input.e;
    var var_0 = u_input.c;
    var_0 = u_input.e.x;
    let var_1 = firstLeadingBit(vec2<u32>(1u, 1u & global0.x));
    global0 = _wgslsmith_clamp_vec4_u32(reverseBits(u_input.e), vec4<u32>(~4294967295u, ~4294967295u, _wgslsmith_mult_u32(2278u, firstTrailingBit(reverseBits(u_input.e.x))), _wgslsmith_mult_u32(~var_1.x, arg_0)), ~(~(~(vec4<u32>(0u, arg_0, global0.x, var_1.x) & u_input.e))));
    return u_input.a;
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = u_input.e;
    global0 = _wgslsmith_sub_vec4_u32(select(vec4<u32>(~(~u_input.d), _wgslsmith_mult_u32(select(global0.x, 106261u, arg_0.b.c.x), global0.x), 1u, global0.x), vec4<u32>(abs(firstLeadingBit(arg_0.b.b.x)), ~(20126u << (arg_0.b.b.x % 32u)), arg_0.b.b.x, countOneBits(_wgslsmith_sub_u32(28726u, u_input.c))), any(!(!vec4<bool>(arg_0.b.c.x, false, true, false)))), u_input.e);
    var var_0 = arg_0.b;
    global0 = u_input.e;
    global0 = ~abs(u_input.e);
    return firstLeadingBit(~(~u_input.e.x));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> i32 {
    global0 = vec4<u32>(0u, _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_div_u32(30476u ^ global0.x, func_3(Struct_3(Struct_2(arg_0, Struct_1(vec2<f32>(1367f, -255f), vec3<u32>(65227u, 1u, 4294967295u), vec3<bool>(true, false, true), 1i)), Struct_1(vec2<f32>(arg_2, -1525f), vec3<u32>(global0.x, 4294967295u, global0.x), vec3<bool>(false, true, false), 1i))))), 1u, global0.x);
    global0 = ~max(_wgslsmith_clamp_vec4_u32(select(u_input.e, vec4<u32>(18562u, 4294967295u, global0.x, 26165u), vec4<bool>(false, false, true, true)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 15032u, global0.x), vec4<u32>(4294967295u, u_input.e.x, global0.x, u_input.c), u_input.e), firstLeadingBit(_wgslsmith_sub_vec4_u32(u_input.e, u_input.e))), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, global0.x), vec2<u32>(global0.x, 1u)), global0.x, _wgslsmith_dot_vec3_u32(select(u_input.e.yzy, u_input.e.yzz, vec3<bool>(true, false, false)), global0.xxw), _wgslsmith_sub_u32(u_input.b & global0.x, global0.x)));
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), _wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 13611u), u_input.e.x)) <= select(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.c, global0.x, 0u), u_input.d), 1u, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))));
    global0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~reverseBits(u_input.b), ~max(global0.x, u_input.d), ~u_input.c, u_input.b), vec4<u32>(countOneBits(firstTrailingBit(global0.x)), global0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 36337u, 48369u, 15340u), u_input.e), _wgslsmith_add_u32(global0.x, abs(global0.x))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(arg_0 * -1163f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-1861f, arg_0))))), u_input.e.wzz, select(vec3<bool>(false && var_0, any(vec3<bool>(var_0, var_0, var_0)), var_0), select(select(vec3<bool>(false, true, false), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, var_0)), !vec3<bool>(true, false, var_0), select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, true), var_0)), var_0), -5550i));
    return _wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(var_1.b.d, 0i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 28548i), min(vec2<i32>(-42814i, 35358i), vec2<i32>(0i, var_1.b.d)))), _wgslsmith_sub_vec2_i32(max(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a) >> (global0.xx % vec2<u32>(32u)), vec2<i32>(2147483647i, var_1.b.d) >> (vec2<u32>(1u, var_1.b.b.x) % vec2<u32>(32u))), -abs(vec2<i32>(-5096i, 1i))), reverseBits(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2418i, var_1.b.d), vec2<i32>(-2147483647i, 14069i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e;
    let var_0 = _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(~func_1(8827u), _wgslsmith_add_i32(~(-2147483647i), u_input.a))) != -(~u_input.a);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~global0.x, firstTrailingBit(u_input.d)), ~(~87581u));
    let var_2 = abs(countOneBits(countOneBits(vec3<i32>(func_2(1202f, -314f, -1863f), _wgslsmith_add_i32(-66601i, u_input.a), u_input.a))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-473f, _wgslsmith_f_op_f32(-1000f * 485f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1532f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(388f, -484f)), _wgslsmith_div_f32(-1000f, 1266f))))), _wgslsmith_f_op_f32(-148f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-496f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(var_0, var_0, var_0))) + 478f)));
    let var_4 = Struct_3(Struct_2(-637f, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.yy)), vec3<u32>(u_input.d ^ 4294967295u, abs(u_input.e.x), _wgslsmith_add_u32(u_input.d, 17823u)), select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, true, var_0)), -abs(-31556i))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_3.x * _wgslsmith_f_op_f32(ceil(var_3.x))), _wgslsmith_f_op_f32(trunc(-643f))), vec3<u32>(var_1, abs(~40063u), ~(~var_1)), vec3<bool>(var_0, _wgslsmith_mult_i32(u_input.a, -19422i) == _wgslsmith_div_i32(1i, var_2.x), var_0), var_2.x));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(36011u);
}

