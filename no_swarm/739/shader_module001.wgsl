struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, true, true, true, true, false, false, false, true, false, false);

var<private> global1: array<bool, 29>;

var<private> global2: array<u32, 7>;

var<private> global3: vec2<u32> = vec2<u32>(2566u, 0u);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<u32>(0u, 123746u, 0u, 4294967295u), -12197i), 1i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = global4.a;
    let var_1 = global4.a;
    let var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(932f, -798f, -1119f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-411f, 351f, -933f))), vec3<f32>(860f, -1496f, 349f))))));
    var var_3 = vec2<bool>(true, true);
    let var_4 = Struct_2(global4.a, firstTrailingBit(~(-var_1.b)));
    return vec4<u32>(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(26640u, 4294967295u, var_0.a.x, global3.x), vec4<u32>(var_0.a.x, 1u, 15951u, 50663u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, global4.a.a.x, var_1.a.x, u_input.c), vec4<u32>(var_4.a.a.x, 62893u, 25045u, u_input.c) >> (var_0.a % vec4<u32>(32u))))), firstLeadingBit(global3.x) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global4.a.a.x, 40397u, 3507u), u_input.b.wxw), u_input.b.zyw) % 32u), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_4.a.a.x, ~0u), _wgslsmith_mult_vec3_u32(global4.a.a.xzz, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global4.a.a.x, var_0.a.x), vec3<u32>(1u, 106358u, var_0.a.x)), _wgslsmith_div_vec3_u32(u_input.b.zyy, vec3<u32>(28078u, u_input.b.x, global3.x))))));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool) -> vec3<i32> {
    var var_0 = 1i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(global4.a.a, func_3()) ^ _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global3.x, 7u)], 43284u, 4294967295u, 14456u), u_input.b)), -1i), -firstTrailingBit(global4.b >> ((global3.x | 1u) % 32u)));
    var var_2 = select(select(vec4<bool>(!all(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.c, 29u)], false)), true, any(select(vec3<bool>(true, true, arg_1), vec3<bool>(global1[_wgslsmith_index_u32(global4.a.a.x, 29u)], false, global0[_wgslsmith_index_u32(var_1.a.a.x, 12u)]), global1[_wgslsmith_index_u32(global4.a.a.x, 29u)])), true), !(!vec4<bool>(arg_2, true, true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), any(select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_0, true, false), vec3<bool>(arg_2, true, true)))), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 12u)], arg_1, global0[_wgslsmith_index_u32(68207u, 12u)]), vec4<bool>(arg_1, true, true, false), vec4<bool>(true, true, true, true))), 1u > min(_wgslsmith_mod_u32(abs(global3.x), global3.x >> (global4.a.a.x % 32u)), ~min(63358u, global3.x)));
    return countOneBits(select(abs(vec3<i32>(2147483647i, u_input.a.x, var_1.b) ^ vec3<i32>(var_1.b, 1i, -66689i)), vec3<i32>(-1i, 6448i, global4.a.b), !select(vec3<bool>(false, var_2.x, var_2.x), var_2.xww, true)) | max(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.a.b, global4.a.b, global4.a.b), ~vec3<i32>(u_input.a.x, -54490i, 0i), vec3<i32>(u_input.a.x, u_input.a.x, global4.a.b)), ~vec3<i32>(-2147483647i, 20873i, var_1.b)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    global1 = array<bool, 29>();
    global4 = Struct_2(arg_3, ~arg_0.x);
    let var_0 = global4.a.a.x >> (15160u % 32u);
    global1 = array<bool, 29>();
    let var_1 = Struct_1(~(min(vec4<u32>(66611u, global3.x, u_input.b.x, 0u), ~vec4<u32>(47517u, 4294967295u, 26234u, 0u)) | vec4<u32>(var_0, 38826u, 50499u & global3.x, ~arg_3.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0, -_wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 2147483647i))), _wgslsmith_sub_i32(~(~2147483647i), 2147483647i)));
    return Struct_2(var_1, _wgslsmith_dot_vec2_i32(u_input.a, arg_0));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = 9382i;
    let var_1 = !vec2<bool>(!(!(!global1[_wgslsmith_index_u32(global4.a.a.x, 29u)])), all(!(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(62876u, 29u)]))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1785f) - arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f + arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-260f, 1060f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * 1235f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(216f)))), var_2) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(128f, var_2, arg_0, 350f)))))) - vec4<f32>(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f), -642f), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(sign(-714f)))))));
    global4 = func_4(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1.b, -47153i, global4.a.b)), countOneBits(func_2(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.a.a.x, 7u)], 12u)], global0[_wgslsmith_index_u32(1u, 12u)], true))), arg_2.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(684f, var_2, var_3.x, -669f))), vec4<f32>(arg_0, -1000f, 479f, arg_0))))), vec3<u32>(~(~arg_1.a.x), (arg_1.a.x & global2[_wgslsmith_index_u32(arg_3.a.x, 7u)]) ^ ~arg_1.a.x, 4294967295u) & _wgslsmith_sub_vec3_u32(~max(vec3<u32>(u_input.b.x, global4.a.a.x, global2[_wgslsmith_index_u32(global4.a.a.x, 7u)]), global4.a.a.zzy), _wgslsmith_sub_vec3_u32(u_input.b.yyy, abs(vec3<u32>(arg_3.a.x, global3.x, 26139u)))), global4.a);
    return _wgslsmith_sub_i32(-14384i, -13586i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 7>();
    var var_0 = Struct_2(global4.a, func_1(_wgslsmith_f_op_f32(827f - -524f), Struct_1(_wgslsmith_sub_vec4_u32(u_input.b, ~global4.a.a), _wgslsmith_div_i32(u_input.a.x, abs(u_input.a.x))), select(vec4<i32>(u_input.a.x, 44272i, u_input.a.x, u_input.a.x) & -vec4<i32>(u_input.a.x, 17175i, 2147483647i, 69980i), firstTrailingBit(vec4<i32>(2147483647i, -2311i, 13927i, -10552i)), true), global4.a));
    let var_1 = abs(55420u);
    var var_2 = u_input.a;
    var var_3 = !vec4<bool>(!all(vec2<bool>(true, global0[_wgslsmith_index_u32(global4.a.a.x, 12u)])), global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_1 << (global3.x % 32u), 7u)], 12u)], true, true);
    var var_4 = firstTrailingBit(~vec4<u32>(var_0.a.a.x, global4.a.a.x, ~1u, ~global4.a.a.x) ^ global4.a.a);
    global2 = array<u32, 7>();
    var_3 = select(vec4<bool>(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.a.x, global2[_wgslsmith_index_u32(15399u, 7u)]), vec3<u32>(817u, var_1, 0u)), 12u)], any(select(vec2<bool>(var_3.x, var_3.x), var_3.wx, true)), global1[_wgslsmith_index_u32(64725u, 29u)]), !(!any(var_3.xzw)), false, true), vec4<bool>(global0[_wgslsmith_index_u32(~(u_input.b.x ^ firstLeadingBit(1u)), 12u)], false, global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(9622u, 7u)]), vec2<u32>(global4.a.a.x, global4.a.a.x))), 12u)], true), vec4<bool>(all(var_3.xy), true, !any(var_3.yy), any(var_3.zyw)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-859f)))), 56150u, ~vec3<u32>(min(_wgslsmith_clamp_u32(var_0.a.a.x, 46489u, var_4.x), min(u_input.c, global3.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, global4.a.a.x), var_0.a.a.wxx), _wgslsmith_div_u32(75862u, var_1) ^ var_4.x));
}

