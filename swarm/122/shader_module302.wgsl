struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 32050i;

var<private> global1: array<i32, 18> = array<i32, 18>(33343i, i32(-2147483648), -58718i, 20447i, 4255i, 0i, -1i, 14960i, i32(-2147483648), 18551i, 1i, -16105i, -1i, i32(-2147483648), 19908i, i32(-2147483648), 19718i, 50988i);

var<private> global2: u32 = 32537u;

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<u32> {
    var var_0 = global3[_wgslsmith_index_u32(13221u, 8u)];
    var var_1 = global3[_wgslsmith_index_u32(33481u, 8u)];
    var var_2 = _wgslsmith_div_f32(-539f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) + -148f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(min(var_0.a, -641f))), -628f)));
    var_2 = _wgslsmith_f_op_f32(-var_0.a);
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b.x, var_1.b.x), 8u)];
    return max(~vec2<u32>(var_1.b.x, ~countOneBits(var_0.b.x)), min(~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_1.b.x, var_0.b.x), var_0.b), var_1.b ^ ~(~var_0.b)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = !select(vec2<bool>(true, true), vec2<bool>(!any(vec3<bool>(arg_1, false, arg_1)), !arg_1 && arg_1), true);
    global0 = abs(-2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, -879f, 545f) + vec4<f32>(-405f, arg_3.a, -904f, arg_3.a)), vec4<f32>(-328f, 724f, 824f, arg_3.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, arg_3.a, arg_3.a, 2102f) + vec4<f32>(524f, 250f, arg_3.a, arg_3.a)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a, arg_3.a, -1224f, arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1784f, 916f, -782f, 895f)))))), vec4<f32>(_wgslsmith_f_op_f32(-746f + arg_0.a), arg_3.a, _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, any(vec3<bool>(var_1.x, true, arg_1)))), -322f)));
    global4 = array<Struct_1, 16>();
    return Struct_1(-1973f, ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(940u, 33793u), arg_3.b), func_3(vec4<bool>(true, true, false, arg_1))), ~(~arg_0.b), abs(vec2<u32>(arg_0.b.x, 14621u) << (vec2<u32>(0u, arg_2) % vec2<u32>(32u)))), vec4<i32>(global1[_wgslsmith_index_u32(1u | (4294967295u >> (arg_2 % 32u)), 18u)], arg_0.c.x, arg_0.c.x, _wgslsmith_dot_vec4_i32(abs(arg_3.c), vec4<i32>(-2147483647i, arg_0.c.x, 1i, arg_3.c.x))) | _wgslsmith_mod_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.b.x, 18u)], arg_0.c.x, 2147483647i, arg_3.c.x), arg_3.c, true), firstTrailingBit(abs(arg_3.c))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(~(~firstLeadingBit(arg_2.b.x)), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(74440u, 0u), vec2<u32>(arg_2.b.x, arg_3.b.x)) | min(1u, arg_2.b.x)))), 16u)];
    let var_1 = arg_3.a;
    var var_2 = 1000f;
    var_2 = _wgslsmith_f_op_f32(ceil(func_2(Struct_1(460f, arg_2.b, _wgslsmith_div_vec4_i32(arg_3.c, arg_3.c) & -vec4<i32>(-352i, var_0.c.x, arg_2.c.x, var_0.c.x)), true, arg_2.b.x, func_2(func_2(Struct_1(849f, arg_3.b, arg_2.c), true, 0u, Struct_1(1514f, vec2<u32>(arg_2.b.x, 1u), arg_2.c)), true, arg_3.b.x, func_2(arg_2, false, 35798u, arg_3))).a));
    let var_3 = reverseBits(vec2<i32>(arg_2.c.x | (0i ^ arg_2.c.x), ~abs(_wgslsmith_mult_i32(0i, 29487i))));
    return Struct_1(arg_3.a, arg_2.b, firstLeadingBit(_wgslsmith_div_vec4_i32(func_2(global3[_wgslsmith_index_u32(max(23053u, 10909u), 8u)], true, var_0.b.x, func_2(global4[_wgslsmith_index_u32(arg_3.b.x, 16u)], false, arg_2.b.x, arg_3)).c, ~abs(vec4<i32>(1i, -1i, arg_3.c.x, arg_2.c.x)))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = -10421i;
    var_0 = arg_1.c.x;
    let var_1 = func_4((~2954i << (0u % 32u)) & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.b.x, 5032u), 18u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a * arg_3.a) * 1769f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))), arg_3, func_2(global3[_wgslsmith_index_u32(81624u, 8u)], false, ~(arg_1.b.x | ~arg_3.b.x), arg_1));
    var var_2 = ~_wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(9817i, -(~u_input.b.x)), -2147483647i);
    var var_3 = func_4(~_wgslsmith_add_i32(_wgslsmith_sub_i32(-35065i, arg_1.c.x), _wgslsmith_mult_i32(var_1.c.x, 2147483647i)) & (_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-34004i, arg_3.c.x)), u_input.b) >> (4294967295u % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -587f), func_4(-1i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_3.a), _wgslsmith_f_op_f32(-415f - 114f)) - -1000f), func_2(var_1, !(var_1.b.x <= var_1.b.x), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, arg_1.b.x), arg_3.b.x), Struct_1(_wgslsmith_f_op_f32(-arg_0), countOneBits(var_1.b), arg_1.c)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.a - 729f))), _wgslsmith_sub_vec2_u32(arg_1.b, func_3(vec4<bool>(true, true, false, false))), vec4<i32>(-2147483647i, -2147483647i, var_1.c.x, var_1.c.x) << (firstLeadingBit(vec4<u32>(57586u, 78481u, 3588u, 4294967295u)) % vec4<u32>(32u)))), global4[_wgslsmith_index_u32(13094u, 16u)]);
    return -1i << (~_wgslsmith_clamp_u32(26826u, ~3623u, ~min(var_3.b.x, arg_1.b.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~_wgslsmith_div_u32(reverseBits(4294967295u), max(36225u, firstTrailingBit(4294967295u))), _wgslsmith_mod_u32(17012u, ~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7446u, 0u), vec3<u32>(116967u, 0u, 1u)), ~4294967295u)));
    global2 = 30270u & firstTrailingBit(~(~_wgslsmith_div_u32(0u, var_0)));
    global0 = i32(-1i) * -func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f + -123f)), global3[_wgslsmith_index_u32(var_0, 8u)], -907f, global3[_wgslsmith_index_u32(countOneBits(36639u), 8u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_2(Struct_1(-1000f, vec2<u32>(55131u, 1u), vec4<i32>(8900i, u_input.b.x, u_input.b.x, u_input.a)), false, var_0, global3[_wgslsmith_index_u32(var_0, 8u)]).a))))));
    var var_2 = global3[_wgslsmith_index_u32(~(~(~(~(~var_0)))), 8u)];
    var var_3 = _wgslsmith_add_vec4_i32(select(min(var_2.c, vec4<i32>(abs(-1i), _wgslsmith_div_i32(var_2.c.x, global1[_wgslsmith_index_u32(1u, 18u)]), u_input.b.x, var_2.c.x)), var_2.c, !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), false)), vec4<i32>(u_input.b.x, countOneBits(-33850i), firstLeadingBit(0i), -12706i));
    var var_4 = var_2.c.xww;
    var var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)));
    global1 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(2581f * -942f)))), _wgslsmith_f_op_f32(round(var_2.a))), -countOneBits(-vec2<i32>(-1i, var_4.x)), var_3.x, var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, -1297f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 357f, var_2.a, -542f)), vec4<bool>(true, true, false, true))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_2.a, -1574f)))))));
}

