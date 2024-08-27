struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<bool, 13>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_1(u_input.a, -246f, abs(select(_wgslsmith_mult_i32(u_input.a, -2147483647i), _wgslsmith_add_i32(1i, u_input.a), true)) ^ (i32(-1i) * -firstTrailingBit(-15006i)), ~_wgslsmith_add_vec4_u32((arg_1 | vec4<u32>(1u, arg_1.x, 4294967295u, 4294967295u)) >> (~arg_1 % vec4<u32>(32u)), vec4<u32>(4401u ^ u_input.b.x, arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 30791u, 4294967295u), vec3<u32>(arg_1.x, 1u, 4294967295u)), 0u)), ~(~firstLeadingBit(arg_1.zyz)));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(562f, -716f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-685f)) - _wgslsmith_f_op_f32(sign(411f))), -236f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-289f - var_0.b) + var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(689f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1134f)), -104f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, -207f, -494f) * vec3<f32>(var_0.b, var_0.b, var_0.b)))))));
    var_0 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(-22908i, 2368i, 19273i, 16876i), vec4<i32>(-17212i, u_input.a, -56966i, 54955i))), abs(countOneBits(vec4<i32>(var_0.c, u_input.a, var_0.a, u_input.a)))), _wgslsmith_f_op_f32(-var_0.b), var_0.c, arg_1, ~(~min(~var_0.d.yww, vec3<u32>(var_0.e.x, u_input.c.x, 4294967295u))));
    var var_2 = any(!select(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], false, true)), !global1[_wgslsmith_index_u32(8278u, 13u)], true), vec3<bool>(true, false, !global1[_wgslsmith_index_u32(0u, 13u)]), 949f >= _wgslsmith_div_f32(var_1.x, -590f)));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~arg_1.wz, firstTrailingBit(vec2<u32>(28374u, u_input.c.x))), vec2<u32>(var_0.e.x, min(4294967295u, arg_0))), arg_0, _wgslsmith_add_u32(abs(0u), arg_0 ^ ~u_input.d)), firstTrailingBit(~select(u_input.b, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d, var_0.e.x), vec3<u32>(29220u, 45227u, arg_1.x)), true)), u_input.b);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = 1u;
    var var_1 = Struct_1(max(~0i, 39806i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-209f)))), firstTrailingBit(select(u_input.a, 1i, false || global1[_wgslsmith_index_u32(min(var_0, u_input.d), 13u)])), _wgslsmith_mod_vec4_u32(min(vec4<u32>(4294967295u, 4294967295u, var_0, 4294967295u), ~vec4<u32>(arg_1, 63329u, 53745u, 105754u)), vec4<u32>(_wgslsmith_clamp_u32(arg_1, arg_1, 0u), ~4294967295u, u_input.b.x, _wgslsmith_mod_u32(55893u, 13577u))) | (((vec4<u32>(var_0, 38283u, 14246u, var_0) | vec4<u32>(u_input.b.x, var_0, 7514u, 4294967295u)) | (vec4<u32>(25835u, u_input.d, 0u, 4294967295u) << (vec4<u32>(64668u, u_input.b.x, 20812u, u_input.c.x) % vec4<u32>(32u)))) | ~firstTrailingBit(vec4<u32>(0u, var_0, 57093u, u_input.b.x))), ~(~func_3(1u, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1, u_input.d, 0u, 19181u), vec4<u32>(var_0, 4294967295u, 1u, 4294967295u), vec4<u32>(arg_1, 1u, 4294967295u, 24115u)))));
    let var_2 = Struct_1(_wgslsmith_dot_vec4_i32(min(select(vec4<i32>(var_1.c, 0i, 0i, u_input.a), ~vec4<i32>(2147483647i, var_1.a, var_1.c, 1i), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(36034u, 13u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 13u)], false, true))), ~select(vec4<i32>(1558i, 12205i, 0i, -12147i), vec4<i32>(var_1.a, var_1.a, u_input.a, -1i), vec4<bool>(global1[_wgslsmith_index_u32(35731u, 13u)], true, global1[_wgslsmith_index_u32(14458u, 13u)], true))), ~(-vec4<i32>(-41932i, u_input.a, -2147483647i, u_input.a) | vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), arg_0.x, -(~var_1.c), _wgslsmith_div_vec4_u32(var_1.d, vec4<u32>(~firstLeadingBit(var_0), u_input.d, 30996u >> (u_input.c.x % 32u), 9640u)), ~max(_wgslsmith_clamp_vec3_u32(var_1.e >> (vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)), vec3<u32>(12113u, var_0, 43492u) << (u_input.b % vec3<u32>(32u)), max(u_input.b, vec3<u32>(3401u, 22079u, u_input.d))), vec3<u32>(48246u, 1u, ~var_0)));
    let var_3 = vec2<bool>(global1[_wgslsmith_index_u32(3340u, 13u)], all(select(vec3<bool>(false, all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, global1[_wgslsmith_index_u32(var_0, 13u)])), -194f != arg_0.x), select(vec3<bool>(global1[_wgslsmith_index_u32(15413u, 13u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], false), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.d.x, var_0), 13u)]), select(select(vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(var_2.d.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]), global1[_wgslsmith_index_u32(44098u, 13u)]), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    global0 = 1u | _wgslsmith_mult_u32(var_2.d.x, 4294967295u);
    return var_0;
}

fn func_1() -> i32 {
    var var_0 = u_input.a;
    global0 = 17759u;
    let var_1 = _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, 78607u & u_input.b.x) << (func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, 336f) - vec2<f32>(1542f, 195f)), _wgslsmith_mod_u32(u_input.c.x, 4294967295u)) % 32u), 1u));
    var_0 = ~(-19396i);
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1445f, 2568f), vec2<f32>(456f, -1280f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2545f, -2259f))), all(vec3<bool>(global1[_wgslsmith_index_u32(22800u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(var_1.x, 13u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-198f, -292f)))))))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(all(vec3<bool>(false, all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(88886u, 13u)])), select(global1[_wgslsmith_index_u32(55463u, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]))), !global1[_wgslsmith_index_u32(~34079u ^ _wgslsmith_div_u32(1u, u_input.d), 13u)], true, true), !select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(40363u, 13u)], true, global1[_wgslsmith_index_u32(u_input.d, 13u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, global1[_wgslsmith_index_u32(u_input.d, 13u)], false), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(4458u, 13u)], false), u_input.c.x == 108792u), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 13u)], false, true), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(13584u, 13u)], true, true, false))), true);
    let var_1 = max(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(-vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(-45257i, u_input.a)), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -59338i), vec2<i32>(2259i, u_input.a)), -vec2<i32>(u_input.a, u_input.a)))), vec2<i32>(_wgslsmith_sub_i32(-38115i, -(i32(-1i) * -9785i)), 0i));
    let var_2 = -select(countOneBits(45691i), ~(~(-1i)), false);
    var var_3 = var_1.x << (52205u % 32u);
    var_3 = 0i;
    var var_4 = ~(~u_input.d) >= _wgslsmith_mod_u32(~(u_input.c.x << (11892u % 32u)), 23785u);
    var var_5 = Struct_1(_wgslsmith_dot_vec4_i32(max(vec4<i32>(0i, ~var_1.x, func_1(), -13445i), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, var_2, 0i, -1i)), -firstLeadingBit(vec4<i32>(var_1.x, 36522i, var_2, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-825f * _wgslsmith_f_op_f32(f32(-1f) * -1453f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 901f)))), -var_1.x, ~(~vec4<u32>(1u, 4294967295u & u_input.d, u_input.b.x, u_input.d)), ~u_input.b);
    global0 = abs(u_input.c.x);
    global0 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_5.b), -622f, 763f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.b, var_5.b, var_5.b) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(454f, 762f, var_5.b))))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_5.b)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-444f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * var_5.b)))));
}

