struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, false, false, false, true, true, false, true, false, true, false, true, true, false, true, true, true, true, false, false, false, true, false, true, true, true, false, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<u32> {
    global1 = array<bool, 30>();
    let var_0 = Struct_1((abs(-67692i) << (u_input.e % 32u)) >> (global0.x % 32u), _wgslsmith_mult_vec3_u32(max(vec3<u32>(~global0.x, 4294967295u, u_input.e & 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global0.x, 7376u, 0u) << (vec3<u32>(4294967295u, global0.x, global0.x) % vec3<u32>(32u)), vec3<u32>(u_input.e, global0.x, u_input.e) & vec3<u32>(u_input.e, global0.x, u_input.e))), _wgslsmith_mult_vec3_u32((vec3<u32>(89689u, 2116u, 1u) ^ vec3<u32>(14399u, u_input.e, 1028u)) & vec3<u32>(28836u, u_input.e, 20481u), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(82915u, u_input.e, 67314u), vec3<u32>(u_input.e, 14291u, global0.x)), vec3<u32>(4294967295u, 1u, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(floor(425f)), -1189f, -1092f));
    let var_1 = var_0.c.zz;
    global1 = array<bool, 30>();
    var var_2 = -(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.a, u_input.d.x) ^ vec3<i32>(var_0.a, -38709i, -17022i), vec3<i32>(var_0.a, u_input.d.x, -1i)));
    return reverseBits(vec4<u32>(~(~var_0.b.x), ~_wgslsmith_mod_u32(var_0.b.x, global0.x) ^ var_0.b.x, ~1u, countOneBits(abs(65798u)) | firstTrailingBit(u_input.e)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = select(vec4<u32>(~(global0.x | 43543u), 13076u, abs(~u_input.e), min(arg_3.b.x, ~u_input.e)), _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, arg_0.x, 0u, 10904u), ~arg_0)), arg_0, vec4<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(abs(arg_1.zz), arg_0.yw | vec2<u32>(global0.x, 1u)), arg_3.b.x, _wgslsmith_sub_u32(u_input.e, global0.x) ^ 46962u)), !(!(!select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)], false, true), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(arg_0.x, 30u)], false), false))));
    global1 = array<bool, 30>();
    var var_1 = arg_3;
    let var_2 = _wgslsmith_dot_vec4_u32(abs(~arg_1), arg_1);
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(arg_2, -abs(vec3<i32>(arg_2.x, arg_3.a, -9425i))) | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.x, var_1.a, arg_2.x, -45110i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.a, -2147483647i, arg_2.x, 0i), vec4<i32>(u_input.a.x, -9178i, u_input.c.x, 40233i)), vec4<i32>(2147483647i, arg_2.x, arg_3.a, 0i) | ~vec4<i32>(-1i, -22283i, -2147483647i, -2147483647i)), vec3<u32>(4294967295u, abs(1u), var_2), vec3<f32>(-401f, _wgslsmith_f_op_f32(2030f - var_1.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2218f + 487f)), true))));
    return var_1.a;
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<u32>(firstLeadingBit(abs(u_input.e)), 5921u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 0u, 0u))), 0u);
    var var_1 = Struct_1(func_4(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e, 4190u, 0u, global0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 83197u, 0u), vec4<u32>(1u, 4294967295u, 2377u, var_0.x), vec4<u32>(22888u, global0.x, 21143u, var_0.x))), select(func_3(), firstLeadingBit(vec4<u32>(26125u, var_0.x, global0.x, u_input.e)), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 30u)], false, global1[_wgslsmith_index_u32(0u, 30u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(19154u, 30u)], true, global1[_wgslsmith_index_u32(u_input.e, 30u)]), false)), vec3<i32>(countOneBits(0i), 1i, u_input.b), Struct_1(u_input.b, select(vec3<u32>(var_0.x, 4294967295u, global0.x), vec3<u32>(45236u, global0.x, global0.x), vec3<bool>(global1[_wgslsmith_index_u32(1u, 30u)], true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(675f, -2979f, 496f) + vec3<f32>(-1000f, 1641f, -660f)))) >> (firstLeadingBit(~(var_0.x ^ 0u)) % 32u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(~1u, global0.x, ~var_0.x)), select(var_0.zyy, firstLeadingBit(min(vec3<u32>(33590u, u_input.e, 0u), vec3<u32>(21552u, u_input.e, u_input.e))), !select(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 30u)], false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.e, 30u)], global1[_wgslsmith_index_u32(global0.x, 30u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(30235u, 30u)])))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-570f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-682f + -992f) - -129f) - _wgslsmith_f_op_f32(-1184f - -749f))));
    var_1 = Struct_1(abs(-(1i ^ var_1.a)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_0.xzx, _wgslsmith_div_vec3_u32(var_1.b, var_1.b), vec3<u32>(12923u, 18216u, var_0.x)), ~abs(vec3<u32>(0u, 4294967295u, var_1.b.x))), var_1.c);
    return Struct_1(_wgslsmith_mult_i32(-41876i, -35169i & _wgslsmith_clamp_i32(u_input.c.x, i32(-1i) * -20100i, u_input.d.x)), _wgslsmith_sub_vec3_u32(var_1.b, abs(var_1.b)) >> (var_0.xwy % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(var_1.c - var_1.c));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<u32> {
    global1 = array<bool, 30>();
    global0 = vec3<u32>(1u, 1u, global0.x);
    let var_0 = func_2();
    var var_1 = arg_2.x | !arg_2.x;
    let var_2 = func_2();
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(_wgslsmith_sub_vec3_u32(~firstLeadingBit(~vec3<u32>(15926u, 30123u, u_input.e)), vec3<u32>(_wgslsmith_dot_vec3_u32(func_1(vec3<i32>(57112i, u_input.b, 1i), vec3<f32>(-2033f, -137f, 1744f), vec3<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true, false), Struct_1(-2147483647i, vec3<u32>(global0.x, 0u, u_input.e), vec3<f32>(1122f, -207f, 223f))), vec3<u32>(4294967295u, 30794u, u_input.e) | vec3<u32>(global0.x, global0.x, 57419u)), global0.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.x, 7792u, 14753u, 22011u)), vec4<u32>(81600u, u_input.e, u_input.e, 25541u)))));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(689f, 648f)))), 1f));
    let var_1 = global0.yy;
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(func_2().c.yx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-445f, -142f), vec2<f32>(2418f, var_0.x)))), true))))));
    let var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, global0.zx, reverseBits(max(firstLeadingBit(vec4<i32>(u_input.a.x, 1i, u_input.a.x, -40065i) << (vec4<u32>(2579u, 4294967295u, var_1.x, var_1.x) % vec4<u32>(32u))), reverseBits(vec4<i32>(u_input.b, 2370i, -15014i, u_input.b)))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_1.x), ~u_input.e | (4294967295u & global0.x)), reverseBits(global0.yy)), var_1.x);
}

