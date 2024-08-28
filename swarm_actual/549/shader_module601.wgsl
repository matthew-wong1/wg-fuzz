struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 18>;

var<private> global2: vec4<i32>;

var<private> global3: f32;

var<private> global4: array<f32, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -960f), -601f))), -2069f);
    var var_1 = Struct_5(Struct_2(max(_wgslsmith_add_vec2_i32(countOneBits(global2.wx), arg_0), ~select(arg_0, arg_0, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 18u)], arg_1.b))), 0u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(var_0.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + -879f))))), var_0.x)));
    var_2 = _wgslsmith_f_op_f32(select(659f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(43995u, 22u)]))), 475f), arg_1.b));
    let var_3 = vec2<i32>(-var_1.a.a.x, _wgslsmith_add_i32(-arg_0.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -2147483647i, 2147483647i, 1i), vec4<i32>(arg_0.x, -50897i, 0i, 74465i)), abs(2147483647i), _wgslsmith_add_i32(arg_0.x, arg_1.a)), max(-15840i, 1i))));
    return vec2<bool>(all(select(vec2<bool>(any(vec4<bool>(false, arg_1.b, arg_1.b, true)), global1[_wgslsmith_index_u32(~var_1.a.b, 18u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], true)), !(!vec2<bool>(arg_1.b, arg_1.b)))), ~u_input.a.x < u_input.b.x);
}

fn func_2(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = select(!select(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true)), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(8709u, 18u)])), select(vec2<bool>(false, global1[_wgslsmith_index_u32(55156u, 18u)]), vec2<bool>(true, true), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]))), !select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), func_3(global2.xy, Struct_1(9791i, global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), global1[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec2<bool>(true, true), vec2<bool>(func_3(vec2<i32>(global2.x, -6458i), Struct_1(global2.x, true)).x, false)), global1[_wgslsmith_index_u32(u_input.b.x, 18u)]);
    global4 = array<f32, 22>();
    let var_1 = true;
    let var_2 = true;
    let var_3 = u_input.b.x >> (_wgslsmith_mod_u32(25714u, 4294967295u) % 32u);
    return -vec4<i32>(~global2.x, -(global2.x >> (u_input.b.x % 32u)), ~abs(global2.x), global2.x) & vec4<i32>(6354i, -_wgslsmith_sub_i32(global2.x, -67849i), _wgslsmith_div_i32(global2.x, _wgslsmith_mod_i32(global2.x, 10140i)), 0i);
}

fn func_1(arg_0: vec3<i32>) -> vec3<bool> {
    global2 = -_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(1i, abs(-25512i), ~0i, global2.x)), -func_2(vec2<f32>(1000f, -128f)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-537f)))), global4[_wgslsmith_index_u32(4294967295u, 22u)])))) * -910f);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1183f)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(870f, global4[_wgslsmith_index_u32(86619u, 22u)]), _wgslsmith_f_op_f32(floor(-327f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 22u)] * -1348f), 1946f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.a.x, 22u)] + global4[_wgslsmith_index_u32(110413u, 22u)])))), false)));
    var var_1 = Struct_2(vec2<i32>(global2.x, _wgslsmith_sub_i32(0i, -8889i)), u_input.a.x);
    return vec3<bool>(!(!global1[_wgslsmith_index_u32(17012u, 18u)]), u_input.a.x <= _wgslsmith_mod_u32(~(~4294967295u), u_input.a.x), !(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 204u, 0u) | max(u_input.a.x, 0u), 22u)] == global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yy, max(vec2<u32>(4294967295u, var_1.b), u_input.b.xy)), 22u)]));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    let var_0 = Struct_2(-select(~select(vec2<i32>(0i, global2.x), global2.zz, false), global2.wz, any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), arg_1.xx, true))), ~u_input.b.x);
    var var_1 = u_input.a.x >> (u_input.a.x % 32u);
    let var_2 = Struct_5(Struct_2(vec2<i32>(var_0.a.x, 1i >> (u_input.b.x % 32u)), firstLeadingBit(68566u)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-285f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1082f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 + 1571f)))))));
    var var_4 = global2.xz;
    return global4[_wgslsmith_index_u32(1u, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(~_wgslsmith_mult_i32(0i, 69172i), select(vec3<bool>(false, global1[_wgslsmith_index_u32(50941u, 18u)], true), func_1(global2.xwy), global4[_wgslsmith_index_u32(u_input.a.x, 22u)] < 225f), global4[_wgslsmith_index_u32(~34849u, 22u)])))));
    var var_1 = false;
    let var_2 = Struct_4(min(select(countOneBits(vec4<u32>(0u, 4294967295u, 1u, 0u)), vec4<u32>(0u, u_input.b.x, u_input.a.x, u_input.b.x) >> (u_input.a % vec4<u32>(32u)), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(805u, 18u)])) ^ u_input.a, ~u_input.a), -2147483647i, _wgslsmith_clamp_vec2_u32(u_input.b.yy, u_input.b.xz, vec2<u32>(~71288u, ~(~u_input.a.x))), -max(firstTrailingBit(global2.x), global2.x >> (~1u % 32u)), func_1(vec3<i32>(global2.x, min(3481i, global2.x), _wgslsmith_div_i32(global2.x, global2.x)) << (~(~u_input.b) % vec3<u32>(32u))));
    global2 = _wgslsmith_sub_vec4_i32(-abs(-vec4<i32>(-1i, -45156i, var_2.b, 0i) ^ vec4<i32>(13809i, var_2.b, -2147483647i, var_2.b)), vec4<i32>(countOneBits(select(countOneBits(1i), var_2.d, global1[_wgslsmith_index_u32(u_input.b.x, 18u)])), ~global2.x, select(abs(abs(-1i)), var_2.b, true), _wgslsmith_mult_i32(var_2.b, global2.x)));
    var var_3 = true;
    var var_4 = ~_wgslsmith_sub_i32(abs(reverseBits(var_2.b)) >> (_wgslsmith_div_u32(abs(820u), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % 32u), ~_wgslsmith_dot_vec2_i32(global2.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(-22261i, -7829i), vec2<i32>(10313i, -22816i), global2.zz)));
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-415f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(0u, 22u)], 147f, global4[_wgslsmith_index_u32(1u, 22u)], 2228f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-676f, var_0, global4[_wgslsmith_index_u32(var_2.a.x, 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<f32>(global4[_wgslsmith_index_u32(0u, 22u)], var_0, var_0, global4[_wgslsmith_index_u32(1u, 22u)])))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(572f, -215f, global4[_wgslsmith_index_u32(40330u, 22u)], global4[_wgslsmith_index_u32(0u, 22u)]), vec4<f32>(2445f, 305f, 1000f, 1123f), vec4<bool>(true, true, var_2.e.x, true))), vec4<f32>(815f, 942f, global4[_wgslsmith_index_u32(0u, 22u)], 1363f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1517f, var_0, global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(4294967295u, 22u)]) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(u_input.b.x, 22u)], 376f, 1561f))))))));
}

