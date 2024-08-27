struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_1 {
    global1 = array<vec2<bool>, 14>();
    global0 = vec3<i32>(global0.x, -(~(-(i32(-1i) * -2147483647i))), 3595i);
    global1 = array<vec2<bool>, 14>();
    return Struct_1(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(arg_0.x, 448f)), 478f, _wgslsmith_f_op_f32(-1442f + arg_0.x)), firstTrailingBit(_wgslsmith_sub_i32(-2410i, reverseBits(-global0.x))), u_input.a, !(!(!select(vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x)))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-156f, 1277f, 535f, -1242f), vec4<f32>(-1231f, -976f, 1162f, -1923f))) - vec4<f32>(-1949f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1562f * 2645f)), -685f, 1f)), reverseBits(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(37952i, global0.x), -25377i))), 4294967295u, vec4<bool>(any(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), select(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true, false | all(global1[_wgslsmith_index_u32(41485u, 14u)])), false, true));
    global1 = array<vec2<bool>, 14>();
    let var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(74676i, u_input.c, global0.x), abs(vec3<i32>(u_input.c, 0i << (arg_0 % 32u), -41443i) & max(~vec3<i32>(u_input.c, 10216i, 60023i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, var_0.b), vec3<i32>(2147483647i, u_input.c, global0.x)))));
    let var_2 = Struct_1(vec4<f32>(-1623f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x * 692f), -2479f, all(var_0.d))))), -337f, _wgslsmith_f_op_f32(round(func_2(vec3<f32>(2266f, var_0.a.x, -792f), var_0.d.yz, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 54041u, arg_0), vec4<u32>(u_input.b.x, var_0.c, arg_0, 1u))).a.x))), i32(-1i) * -_wgslsmith_dot_vec4_i32(max(vec4<i32>(global0.x, -41311i, 1i, -26633i), vec4<i32>(1i, -2147483647i, -49697i, var_1.x)), abs(vec4<i32>(0i, 0i, var_0.b, -2147483647i))), 1u, vec4<bool>(false, false, 32508i >= max(-1i, ~u_input.c), any(select(select(vec2<bool>(var_0.d.x, var_0.d.x), global1[_wgslsmith_index_u32(1u, 14u)], vec2<bool>(true, false)), vec2<bool>(true, var_0.d.x), vec2<bool>(true, true)))));
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.a.x, _wgslsmith_div_f32(-633f, 923f), 1f))), vec2<bool>(!(!(-869f == var_2.a.x)), !(countOneBits(global0.x) != 29036i)), (0u << (arg_0 % 32u)) | 1u);
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a.x)), 529f, _wgslsmith_f_op_f32(1091f * var_2.a.x)), !vec2<bool>(!any(vec4<bool>(var_2.d.x, var_0.d.x, var_2.d.x, var_2.d.x)), all(!var_0.d)), var_0.c).a.x;
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2.a;
    var var_1 = arg_2;
    global0 = firstLeadingBit(~(vec3<i32>(1i, 1i, 55701i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-1370i, -23929i, global0.x), abs(vec3<i32>(-2147483647i, -1i, -1i)))));
    let var_2 = !all(select(vec2<bool>(arg_2.d.x, true), arg_2.d.zw, arg_3.d.yw));
    global1 = array<vec2<bool>, 14>();
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~var_1.c, ~8240u), 0u), 3526u ^ ~select(var_1.c, arg_3.c, arg_2.d.x)) & 0u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_1(vec4<f32>(-993f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1131f), -2369f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.x + 366f))), -2022f), 5628i, func_4(false, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -16112i, -1i, -1i), vec4<i32>(arg_2.x, u_input.c, -17878i, 14991i)), ~9216i, 4176i), func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.a.xzy))), vec2<bool>(true, true), u_input.b.x), func_2(vec3<f32>(_wgslsmith_f_op_f32(func_3(1u)), _wgslsmith_f_op_f32(sign(arg_0.a.x)), arg_0.a.x), arg_0.d.ww, ~(u_input.a >> (1u % 32u)))), vec4<bool>(arg_0.d.x, true, true, false));
    global1 = array<vec2<bool>, 14>();
    let var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + _wgslsmith_f_op_f32(1204f - _wgslsmith_f_op_f32(150f - var_0.a.x))), -226f, -451f), vec2<bool>(!var_0.d.x, !(arg_0.d.x && arg_0.d.x)), 1u);
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(~var_1.c | 0u, _wgslsmith_dot_vec2_u32(~vec2<u32>(57902u, 28409u), _wgslsmith_mod_vec2_u32(reverseBits(u_input.b), u_input.b))), firstLeadingBit(32885u) << (abs(~func_2(var_1.a.zxy, global1[_wgslsmith_index_u32(var_0.c, 14u)], 4294967295u).c) % 32u), 9197u, firstLeadingBit(var_0.c) << (var_0.c % 32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2229f, -1000f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(step(var_1.a.x, 327f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_1.a.x, 739f)))))), select(var_1.d, vec4<bool>(true, _wgslsmith_div_f32(var_0.a.x, var_0.a.x) != arg_0.a.x, true, !(var_0.c > 0u)), var_0.d.x)));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))))), var_0.a.wx, ((true && all(arg_0.d)) && select(-874f >= var_3.x, var_2.x <= var_0.c, any(arg_0.d.zw))) || false));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<f32>(-261f, -1636f, 2291f, -2089f), 9320i, u_input.b.x, vec4<bool>(false, false, false, false)), 20962u, vec2<i32>(16528i, 9441i))))))), abs(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c, -2147483647i, -6118i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -1i, global0.x), vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(-1i, -37000i, -13015i)), max(vec3<i32>(u_input.c, u_input.c, global0.x), vec3<i32>(0i, -34184i, global0.x)))), ~u_input.c, _wgslsmith_mod_i32(func_2(vec3<f32>(-544f, -516f, _wgslsmith_f_op_f32(-451f * 789f)), global1[_wgslsmith_index_u32(~(~4294967295u), 14u)], ~1u).b, -2147483647i), 0u);
}

