struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: vec4<i32>;

var<private> global2: f32 = 1648f;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    global1 = -(vec4<i32>(-2147483647i, firstTrailingBit(_wgslsmith_div_i32(1i, global1.x)), _wgslsmith_sub_i32(u_input.e.x, i32(-1i) * -40547i), _wgslsmith_dot_vec4_i32(~u_input.d, -vec4<i32>(2819i, -2147483647i, -1i, arg_2.x))) ^ _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, arg_2.x, -2147483647i, ~0i)));
    global2 = 820f;
    let var_0 = _wgslsmith_dot_vec4_i32(abs(-abs(_wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, global1.x, -1i, global1.x)))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(u_input.d, u_input.d) | ~(-vec4<i32>(u_input.d.x, 55914i, arg_2.x, global1.x)), u_input.d));
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~arg_2.x, _wgslsmith_dot_vec2_i32(arg_2, vec2<i32>(0i, -1i))), firstLeadingBit(_wgslsmith_sub_i32(arg_2.x, 2147483647i)), _wgslsmith_div_i32(0i, -2147483647i), _wgslsmith_sub_i32(~var_0, -60329i)), u_input.d) < (i32(-1i) * -u_input.d.x);
    global1 = u_input.d;
    return arg_0.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = global1.ww;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(-586f)), Struct_1(vec3<f32>(597f, 927f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, arg_0.x) + vec2<f32>(arg_2, 1335f)), vec2<bool>(true, true), -arg_1, global0[_wgslsmith_index_u32(countOneBits(4294967295u), 13u)]))), vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.c), 13u)]);
    global0 = array<Struct_1, 13>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(892f, -2511f)), vec2<f32>(arg_2, var_1.c.a.x))), vec2<bool>(var_1.c.b.x, var_1.d.b.x), arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.d.a), vec4<bool>(false, var_1.d.b.x, var_1.b.b.x, false)))), arg_0.x), arg_2));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = false;
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-699f))))), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(47601u, u_input.a.x)) << (_wgslsmith_dot_vec3_u32(u_input.b | vec3<u32>(4294967295u, 4294967295u, 4294967295u), select(vec3<u32>(arg_1.x, 14880u, u_input.a.x), u_input.b, arg_3.b.zww)) % 32u), 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec3<f32>(arg_2.x, arg_3.a.x, arg_2.x), vec4<bool>(arg_0, true, false, true))), select(_wgslsmith_mult_u32(72897u, firstLeadingBit(_wgslsmith_add_u32(4294967295u, arg_1.x))), 0u, !arg_0), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -712f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_2.x)))), 228f), u_input.e.x);
    global1 = u_input.d;
    let var_2 = Struct_3(!(!vec3<bool>(var_1.a.c.a.x != -1133f, all(arg_3.b.zy), arg_0)), _wgslsmith_div_f32(var_1.a.d.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1538f))))));
    global2 = var_1.a.a;
    return Struct_2(var_1.a.d.a.x, arg_3, global0[_wgslsmith_index_u32(abs(arg_1.x), 13u)], Struct_1(vec3<f32>(947f, 2349f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1136f, var_1.a.d.a.x)), -1000f)), !arg_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_mult_vec4_u32((~(~vec4<u32>(1u, 57290u, 1u, 4294967295u)) ^ reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, 1u, u_input.c), vec4<u32>(1u, u_input.b.x, u_input.c, u_input.a.x)))) >> (max(firstTrailingBit(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u)), (vec4<u32>(18544u, u_input.a.x, u_input.b.x, u_input.c) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.c, 4294967295u) % vec4<u32>(32u))) | vec4<u32>(13892u, u_input.a.x, 33264u, 9169u)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x ^ u_input.a.x, 82249u), ~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 6039u) >> (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), u_input.a)));
    let var_2 = Struct_4(func_3(var_0.x, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), firstLeadingBit(vec3<u32>(var_1.x, 0u, var_1.x)), vec3<u32>(var_1.x, 0u, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-231f, -803f, _wgslsmith_f_op_f32(func_1(vec2<f32>(-2044f, 158f), vec2<i32>(1i, 51767i), 164f, -3243i))))), global0[_wgslsmith_index_u32(4294967295u, 13u)]), ~(u_input.c & 2607u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -146f) + -546f), _wgslsmith_f_op_f32(f32(-1f) * -1536f))), _wgslsmith_f_op_f32(1f - 608f)), _wgslsmith_add_i32(-29267i, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-284f, var_2.a.b.a.x, var_2.a.a, 453f) - vec4<f32>(var_2.a.b.a.x, var_2.a.b.a.x, var_2.a.d.a.x, var_2.a.c.a.x)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.b.a.x, 688f, var_2.c.x, var_2.a.b.a.x), vec4<f32>(-1559f, 1452f, 1000f, var_2.c.x)))))) - vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(var_2.a.b.a.x * _wgslsmith_f_op_f32(325f + 104f)), var_2.a.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.d.a.x))))), var_2.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, -311f, -686f, var_2.a.c.a.x) + vec4<f32>(-512f, var_2.c.x, var_2.a.d.a.x, 535f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.d.a.x, 177f, -236f, var_2.a.a), vec4<f32>(var_2.a.d.a.x, var_2.a.d.a.x, var_2.a.d.a.x, -163f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.a.d.a.x, var_2.c.x, var_2.a.a, var_2.a.a)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-204f, var_2.a.b.a.x, var_2.a.d.a.x, var_2.c.x) - vec4<f32>(var_2.a.c.a.x, var_2.c.x, 282f, 806f)))))));
}

