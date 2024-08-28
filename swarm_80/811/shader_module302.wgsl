struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> bool {
    global1 = true;
    var var_0 = true;
    let var_1 = _wgslsmith_dot_vec2_u32(arg_1, ~countOneBits(u_input.b.wz));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(749f + -670f) - _wgslsmith_f_op_f32(select(-1000f, arg_0, true)))));
    var var_3 = countOneBits(_wgslsmith_div_vec3_u32((max(vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(0u, var_1, var_1)) ^ vec3<u32>(var_1, arg_1.x, 1u)) & ~vec3<u32>(4294967295u, 21282u, arg_1.x), u_input.b.yww << (reverseBits(_wgslsmith_mod_vec3_u32(u_input.b.yzy, vec3<u32>(4294967295u, arg_1.x, 31349u))) % vec3<u32>(32u))));
    return all(select(!vec4<bool>(all(vec3<bool>(false, false, false)), false, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), !(25832u <= var_3.x)), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), select(true, true, true), all(vec2<bool>(true, false)) | all(vec4<bool>(true, true, true, true)), _wgslsmith_mult_u32(var_3.x, 12035u) <= ~var_3.x)));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_4(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.zyy, u_input.b.yxx), ~_wgslsmith_div_vec3_u32(u_input.b.xww, vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) >> (vec3<u32>(u_input.b.x, 0u, 0u) % vec3<u32>(32u))));
    var_0 = Struct_4(var_0.a);
    global1 = func_3(962f, min(~(~(u_input.b.wy | vec2<u32>(var_0.a.x, u_input.b.x))), abs(abs(select(var_0.a.yx, u_input.b.xx, true)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(18133i, -2945i), u_input.a), firstLeadingBit(15287i)) >> (~(~4294967295u) % 32u));
    let var_1 = 2147483647i;
    global0 = array<f32, 13>();
    return vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.a.x & ~15496u, 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1458f, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]) * global0[_wgslsmith_index_u32(var_0.a.x | u_input.b.x, 13u)]) - global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, 26666u), var_0.a), _wgslsmith_div_u32(4294967295u, var_0.a.x)), 13u)])), _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(50308u, 13u)])));
}

fn func_1() -> bool {
    global0 = array<f32, 13>();
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(13832u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]))) + _wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(u_input.b.x & 37161u, 13u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(909f - global0[_wgslsmith_index_u32(u_input.b.x >> ((u_input.b.x | 12946u) % 32u), 13u)]) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1542f)), 626f) + -875f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1232f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -791f) + 603f), global0[_wgslsmith_index_u32(~(~u_input.b.x), 13u)], !all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 13u)] + 863f)) * global0[_wgslsmith_index_u32(29728u, 13u)])) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_2(all(vec3<bool>(true, false, true)))))));
    global1 = true;
    return var_2.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_2.x - var_2.x)), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, (func_1() || !(u_input.b.x < 23632u)) & true);
    let var_1 = select(var_0, select(!var_0, select(!select(var_0, vec2<bool>(var_0.x, var_0.x), var_0.x), !(!vec2<bool>(true, var_0.x)), var_0), vec2<bool>(_wgslsmith_mod_u32(1u, 78783u) == _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 116667u, 4294967295u, u_input.b.x)), all(vec3<bool>(true, var_0.x, true)))), var_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1903f, global0[_wgslsmith_index_u32(13271u, 13u)], 795f, global0[_wgslsmith_index_u32(20236u, 13u)]) * vec4<f32>(1372f, 524f, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1491f, 404f, -696f, -575f), vec4<f32>(-823f, -322f, -167f, -451f)))))) + vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1899u, 13u)]), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), true)), global0[_wgslsmith_index_u32(~1u, 13u)], _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b.zwz, u_input.b.xzz), vec3<u32>(u_input.b.x, u_input.b.x, 1u)), 13u)]))));
    global0 = array<f32, 13>();
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(func_2(var_1.x)), ~u_input.b.wyz, Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -2147483647i, -63640i), vec4<i32>(u_input.a, u_input.a, 40158i, u_input.a) ^ vec4<i32>(11404i, -37337i, 1i, u_input.a)), max(vec4<i32>(u_input.a, u_input.a, u_input.a, -25406i), vec4<i32>(2193i, 12868i, 1i, u_input.a)) ^ -vec4<i32>(u_input.a, u_input.a, 22742i, 1i), _wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2, vec4<f32>(var_2.x, 533f, global0[_wgslsmith_index_u32(4294967295u, 13u)], 820f))) * _wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(global0[_wgslsmith_index_u32(0u, 13u)], -1717f, 382f, 469f))), -1i), 33616u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 13u)])) * _wgslsmith_f_op_f32(f32(-1f) * -617f)), Struct_1(abs(u_input.a), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 20149i, u_input.a, u_input.a), vec4<i32>(23282i, u_input.a, -41374i, u_input.a)), vec4<i32>(u_input.a, u_input.a, 17144i, u_input.a)), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 16953u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-var_2), u_input.a), Struct_1(u_input.a, reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -35059i, u_input.a), vec4<i32>(81363i, u_input.a, 0i, u_input.a))), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.b.x, 1u), ~u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -489f)), ~14753i)));
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(-var_3.c.e.e), var_3.c.d.b.zz, var_3.c.e.b.yw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(576f + _wgslsmith_f_op_f32(step(var_3.c.e.d.x, var_2.x)))), 554f);
}

