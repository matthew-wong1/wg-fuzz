struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 4>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<u32>, 4>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-676f, -846f))), -1316f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-173f, -1545f))) + 673f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(269f, -670f) * _wgslsmith_div_f32(-739f, 159f)))));
    let var_1 = 7364u;
    global0 = array<vec2<u32>, 4>();
    var var_2 = (8743i ^ select(min(u_input.a.x, arg_1.a.x), max(max(u_input.a.x, u_input.a.x), -4001i), true)) == 0i;
    return _wgslsmith_f_op_f32(1549f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-257f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) + _wgslsmith_f_op_f32(max(-1150f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1267f, 1816f)), 1f) + _wgslsmith_f_op_f32(round(-723f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    global0 = array<vec2<u32>, 4>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1496f))), _wgslsmith_f_op_f32(f32(-1f) * -107f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(883f, -1000f)) - _wgslsmith_div_f32(320f, 626f)))), _wgslsmith_f_op_f32(func_3(Struct_1(var_0), Struct_2(vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), 2147483647i), Struct_1(false), Struct_1(true)), Struct_1(var_0)))));
    global0 = array<vec2<u32>, 4>();
    var var_2 = _wgslsmith_clamp_vec2_u32(~countOneBits(~vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(firstTrailingBit(6050u), 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)] >> (global0[_wgslsmith_index_u32(53001u, 4u)] % vec2<u32>(32u))) | vec2<u32>(0u, max(abs(u_input.b), u_input.b)), vec2<u32>(firstLeadingBit(u_input.b), _wgslsmith_mult_u32(u_input.b, 1u)));
    return Struct_1(true);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2100f))))));
    global0 = array<vec2<u32>, 4>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-762f))))));
    let var_1 = u_input.b;
    var var_2 = true;
    return Struct_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_2.x, u_input.a.x, -1i, 24092i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, u_input.a.x, 18271i, u_input.a.x), vec4<i32>(-22470i, 0i, -1i, u_input.a.x), vec4<i32>(62702i, u_input.a.x, -33006i, arg_2.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, arg_2.x, u_input.a.x, u_input.a.x), vec4<i32>(arg_2.x, -6614i, arg_2.x, u_input.a.x))) << (~(~vec4<u32>(var_1, var_1, 0u, var_1)) % vec4<u32>(32u)), arg_0, func_2());
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = Struct_2(vec4<i32>(-1i, -56267i, select(-countOneBits(33517i), u_input.a.x, true), -1i), func_1(Struct_1(false), arg_0.b.a, _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(arg_2.a.zyw << (vec3<u32>(40157u, u_input.b, 4294967295u) % vec3<u32>(32u)), arg_0.a.yxz), vec3<i32>(2147483647i, -2147483647i, arg_0.a.x >> (u_input.b % 32u)))).c, func_2());
    var var_1 = func_1(Struct_1(true), true, vec3<i32>(i32(-1i) * -1i, ~var_0.a.x, _wgslsmith_add_i32(min(_wgslsmith_dot_vec3_i32(arg_2.a.xzy, vec3<i32>(-19794i, 1i, arg_0.a.x)), arg_2.a.x), 1i)));
    var var_2 = ~(select(-vec2<i32>(5750i, u_input.a.x), firstTrailingBit(arg_0.a.yx), vec2<bool>(true, true)) << (vec2<u32>(abs(71577u), 4294967295u) % vec2<u32>(32u)));
    var var_3 = !vec2<bool>(false, select(true, select(!var_1.b.a, all(vec4<bool>(var_0.c.a, true, true, false)), true), arg_0.b.a & arg_0.b.a));
    var_2 = u_input.a;
    return StorageBuffer(abs(~global0[_wgslsmith_index_u32(1u, 4u)]) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(12802u, 0u, 34259u, 0u), ~vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b)), min(u_input.b, u_input.b) << (~0u % 32u)) % vec2<u32>(32u)), ~countOneBits(-_wgslsmith_sub_i32(44595i, arg_0.a.x)), 37161u, ~(~(-vec2<i32>(arg_2.a.x, 45052i))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(864f, _wgslsmith_f_op_f32(floor(775f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -386f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 4>();
    var var_0 = abs(u_input.a.x);
    var var_1 = Struct_1(true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-461f + _wgslsmith_f_op_f32(step(1575f, 796f)))) + 1000f));
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(var_1.a), max(-u_input.a.x, 2147483647i) >= ~firstLeadingBit(u_input.a.x), vec3<i32>(_wgslsmith_mod_i32(~u_input.a.x, u_input.a.x), abs(-32339i), u_input.a.x)), ~firstTrailingBit(u_input.a), Struct_2((vec4<i32>(-15984i, u_input.a.x, 45080i, 18481i) & (vec4<i32>(u_input.a.x, -18506i, 0i, -53852i) & vec4<i32>(1i, 1i, u_input.a.x, u_input.a.x))) & select(vec4<i32>(19503i, 8954i, -46982i, u_input.a.x), ~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i), vec4<bool>(false, var_1.a, var_1.a, var_1.a)), Struct_1(var_1.a), Struct_1(true)));
}

