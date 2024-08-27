struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: array<vec4<bool>, 4>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(~47810u, ~arg_0, min(0u, u_input.a))), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, arg_0, 0u), ~vec3<u32>(u_input.a, 45893u, 4294967295u)), firstTrailingBit(~(~vec3<u32>(87990u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1501f * -1000f))) * -1418f)), vec2<u32>((_wgslsmith_mult_u32(4294967295u, arg_0) & (u_input.a >> (arg_0 % 32u))) | 1u, _wgslsmith_dot_vec2_u32(~select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(28950u, u_input.a), vec2<bool>(false, true)), countOneBits(vec2<u32>(41697u, arg_0) ^ vec2<u32>(arg_0, arg_0)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -3451f);
    let var_2 = Struct_2(Struct_1(!select(select(global1[_wgslsmith_index_u32(u_input.a, 4u)], vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), global1[_wgslsmith_index_u32(abs(67139u), 4u)], true), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1778f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f * var_1))))));
    var_3 = 1f;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(742f, var_1, true))))));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(81768u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(546f))))))));
    let var_1 = vec3<i32>(-27865i << (~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_0, 12189u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a))) % 32u), _wgslsmith_dot_vec4_i32(-firstLeadingBit(~vec4<i32>(1085i, global0[_wgslsmith_index_u32(4294967295u, 23u)], 2147483647i, global0[_wgslsmith_index_u32(93403u, 23u)])), select(vec4<i32>(20224i, 5174i, -8667i, -39261i) << ((vec4<u32>(32315u, 0u, 2747u, arg_0) << (vec4<u32>(u_input.a, arg_0, arg_0, 80079u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(-9464i, -34349i, global0[_wgslsmith_index_u32(arg_0, 23u)], -20517i), true)), -2147483647i);
    var var_2 = true;
    var_2 = !any(vec2<bool>(true, true));
    var var_3 = vec2<i32>(firstTrailingBit(~firstTrailingBit(~global0[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(18736i, global0[_wgslsmith_index_u32(u_input.a, 23u)], u_input.b, -2147483647i), vec4<i32>(-1i, u_input.b, -52720i, var_1.x)), abs(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(79323u, 23u)], -1i, global0[_wgslsmith_index_u32(u_input.a, 23u)], -1i)))), ~vec4<i32>(62685i, -1i, global0[_wgslsmith_index_u32(~0u, 23u)], -1i)));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, var_0.x, 368f))), vec3<f32>(var_0.x, 1817f, -1049f), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), -2147483647i == var_1.x))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), 806f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))), select(false, true, true) == true)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: f32) -> vec4<i32> {
    var var_0 = vec3<u32>(~firstLeadingBit(78349u), arg_2.x, 75878u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, -528f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, 1317f, 2410f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1829f, arg_3, -1130f) + vec3<f32>(arg_3, 800f, -517f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-293f, arg_3, 818f))) + _wgslsmith_f_op_vec3_f32(func_2(u_input.a)))));
    var_0 = vec3<u32>(min(1u, ~reverseBits(58543u & arg_2.x)), ~min(~(~u_input.a), ~firstLeadingBit(var_0.x)), var_0.x | arg_2.x);
    let var_2 = true;
    var var_3 = Struct_4(~reverseBits(vec3<u32>(var_0.x, 0u, arg_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, countOneBits(7798u | u_input.a)), vec2<u32>(1u, u_input.a >> (57200u % 32u)) >> (arg_2.xx % vec2<u32>(32u))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(~19633i, 2147483647i), _wgslsmith_add_i32(u_input.b, global0[_wgslsmith_index_u32(abs(var_0.x), 23u)]) << (1u % 32u), _wgslsmith_div_i32(-(~global0[_wgslsmith_index_u32(24126u, 23u)]), -min(2147483647i, 0i)), global0[_wgslsmith_index_u32(firstTrailingBit(~var_3.a.x >> (22831u % 32u)), 23u)]), abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(26260i, u_input.b, u_input.b, -2147483647i), vec4<i32>(5801i, u_input.b, -14522i, -61533i)), firstLeadingBit(vec4<i32>(2147483647i, 1i, u_input.b, u_input.b))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -15009i, -40003i, -22311i), vec4<i32>(-64212i, global0[_wgslsmith_index_u32(var_3.a.x, 23u)], 2147483647i, u_input.b)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.b, -31309i), vec4<i32>(8362i, 1i, -2147483647i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(6302u, 23u)], u_input.b, u_input.b, global0[_wgslsmith_index_u32(1u, 23u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 23>();
    var var_0 = -1i;
    let var_1 = vec4<i32>(-1i) * -min(func_1(Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(false, false)), all(vec2<bool>(false, true)), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(u_input.a, 0u, 14296u), _wgslsmith_f_op_f32(f32(-1f) * -1908f)), vec4<i32>(u_input.b, 69019i, -u_input.b, -u_input.b));
    let var_2 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(~max(u_input.a, u_input.a), ~4294967295u), u_input.a, u_input.a);
    let var_3 = Struct_4(~abs(~vec3<u32>(4294967295u, var_2, 26309u) >> (~vec3<u32>(u_input.a, 6814u, var_2) % vec3<u32>(32u))), 251f, reverseBits(~vec2<u32>(_wgslsmith_clamp_u32(43978u, 0u, 4294967295u), _wgslsmith_div_u32(0u, 33633u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3.b, var_3.b, var_3.b), max(var_1.zx, -vec2<i32>(-30952i, 0i)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.b, 759f, 298f), vec3<f32>(-2336f, var_3.b, 1157f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b, var_3.b, var_3.b) + vec3<f32>(var_3.b, 385f, -1140f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.b, -814f)) + vec3<f32>(var_3.b, -1000f, _wgslsmith_div_f32(-1053f, -813f))))), var_3.a, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-247f, var_3.b) + vec2<f32>(var_3.b, var_3.b))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(780f, var_3.b) * vec2<f32>(-373f, 1752f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec3_f32(func_2(var_2)).zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, var_3.b))))))));
}

