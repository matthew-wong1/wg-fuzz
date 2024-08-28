struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31>;

var<private> global1: array<bool, 21>;

var<private> global2: vec3<i32> = vec3<i32>(-49011i, 2147483647i, 29598i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = Struct_1(abs(select(arg_0, firstLeadingBit(_wgslsmith_div_u32(arg_0, arg_0)), true)), -global2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(402f, _wgslsmith_f_op_f32(862f + -101f), _wgslsmith_f_op_f32(f32(-1f) * -2022f), _wgslsmith_f_op_f32(f32(-1f) * -238f)), vec4<f32>(595f, _wgslsmith_f_op_f32(-147f - 352f), _wgslsmith_f_op_f32(1776f + -1379f), -475f)))));
    let var_1 = global2.xx;
    global1 = array<bool, 21>();
    let var_2 = Struct_1(~(~_wgslsmith_mod_u32(var_0.a, 47564u) >> (min(~arg_0, 1u) % 32u)), global2.x, vec4<f32>(_wgslsmith_f_op_f32(742f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f * var_0.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1687f)))), 254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, 430f))))));
    var_0 = Struct_1(u_input.a, ~(-11863i), var_2.c);
    return true;
}

fn func_2(arg_0: bool, arg_1: i32) -> i32 {
    var var_0 = vec4<bool>(!(arg_0 & arg_0), !func_3(firstTrailingBit(48442u)), false, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(160f))), -1767f)) <= 149f);
    var var_1 = Struct_1(u_input.c.x, global2.x, vec4<f32>(-1000f, -1000f, -867f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 480f)))));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x))), var_1.c.x));
    let var_3 = Struct_1(countOneBits(~1876u), _wgslsmith_mod_i32(0i, var_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_div_vec4_f32(var_1.c, var_1.c)) - var_1.c)));
    let var_4 = _wgslsmith_div_i32(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(var_3.b, _wgslsmith_add_i32(var_1.b, -3915i)), max(arg_1, -var_1.b)), _wgslsmith_dot_vec2_i32(global2.yz, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-15238i, var_3.b, arg_1, 2147483647i), vec4<i32>(var_3.b, 1i, global2.x, -9021i) | vec4<i32>(global2.x, arg_1, 0i, -45692i)), -var_1.b)));
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(abs(var_1.b), firstTrailingBit(arg_1)), 0i, global2.x, -(~global2.x)), ~firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, 1i, -1i, 2147483647i), vec4<i32>(var_1.b, -2147483647i, -2147483647i, global2.x)))), arg_1);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global2 = vec3<i32>(abs(_wgslsmith_div_i32(0i, -abs(global2.x))), _wgslsmith_clamp_i32(arg_0.x, arg_0.x >> (46444u % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, 1i, 1i), vec4<i32>(-64157i, arg_0.x, -2147483647i, -43762i)), 28037i)), ~func_2(true, 58005i));
    var var_0 = Struct_1(u_input.d.x, ~((_wgslsmith_div_i32(0i, -2147483647i) >> (firstTrailingBit(22265u) % 32u)) >> (countOneBits(u_input.a) % 32u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, 341f, -771f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1503f, 871f, -865f, -1578f))))))));
    var var_1 = !(!select(vec3<bool>(global1[_wgslsmith_index_u32(~u_input.d.x, 21u)], any(vec3<bool>(global1[_wgslsmith_index_u32(var_0.a, 21u)], true, global1[_wgslsmith_index_u32(var_0.a, 21u)])), all(vec3<bool>(global1[_wgslsmith_index_u32(18380u, 21u)], false, true))), vec3<bool>(true, true, true), all(select(vec3<bool>(false, true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], true, global1[_wgslsmith_index_u32(1573u, 21u)]), false))));
    let var_2 = var_0.c.wx;
    var var_3 = Struct_1(u_input.c.x, -(global2.x ^ -reverseBits(global2.x)), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-703f, var_2.x)))), var_2.x, -692f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(step(1149f, var_0.c.x))))));
    return Struct_1(~4294967295u, min(reverseBits(var_0.b), var_3.b << (~(~4294967295u) % 32u)), _wgslsmith_f_op_vec4_f32(-var_0.c));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = u_input.c.zx;
    global0 = array<vec3<i32>, 31>();
    var var_2 = var_0;
    var_2 = Struct_1(_wgslsmith_dot_vec2_u32(var_1, u_input.c.zy), var_2.b, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1747f, _wgslsmith_f_op_f32(-var_0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x + arg_0.x) + arg_1.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(151f + _wgslsmith_div_f32(2030f, -833f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(621f - arg_1.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_1(global2.yx).c.x)) - 1218f)));
    return Struct_1(~abs(var_0.a), -9601i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_2.c))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = 932f;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(arg_3.c.xz));
    var var_2 = Struct_1(arg_0.a, _wgslsmith_mult_i32(func_2(any(select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2, arg_2, global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(5484u, 21u)]), vec4<bool>(arg_2, true, false, false))), -49017i), _wgslsmith_clamp_i32(-2147483647i, select(arg_0.b, -arg_0.b, !arg_2), abs(~global2.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-439f)), arg_3.c.x), -2499f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.c.x)), -1323f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.c.x, -389f, global1[_wgslsmith_index_u32(19750u, 21u)])))), 936f))));
    let var_3 = Struct_1(~(~15227u), ~(-2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_4(_wgslsmith_f_op_vec3_f32(arg_0.c.zxx * vec3<f32>(var_2.c.x, var_2.c.x, arg_3.c.x)), Struct_1(34574u, arg_1, arg_0.c)).c.x, arg_3.c.x, arg_3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.x)))));
    let var_4 = vec3<i32>(_wgslsmith_mod_i32(reverseBits(5205i), _wgslsmith_mult_i32(49239i, var_2.b)), 2147483647i, var_3.b);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(684f)), _wgslsmith_f_op_f32(step(arg_3.c.x, _wgslsmith_f_op_f32(-arg_3.c.x)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.x) - _wgslsmith_f_op_f32(exp2(arg_3.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1099f, -912f, -991f)))), func_1(-global2.xx)), ~(-13150i), global1[_wgslsmith_index_u32(firstLeadingBit(~36867u), 21u)], Struct_1(u_input.d.x, firstLeadingBit(~2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -663f, 152f, 418f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(150f, -529f, -794f, -1409f) - vec4<f32>(540f, -792f, -1442f, -376f))))))));
    var var_1 = Struct_1(~select(func_4(vec3<f32>(-1104f, 533f, -1227f), Struct_1(u_input.b, global2.x, vec4<f32>(1420f, -1000f, 1898f, -629f))).a << ((u_input.d.x & 1u) % 32u), u_input.d.x, true), 1i, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(420f, func_1(global2.yy).c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(288f * 302f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-678f, -2385f)) * _wgslsmith_f_op_f32(abs(-2470f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(596f + _wgslsmith_f_op_f32(f32(-1f) * -522f)))));
    global1 = array<bool, 21>();
    global0 = array<vec3<i32>, 31>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))))), var_1.c.x);
    global1 = array<bool, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, var_1.c.ywx, global0[_wgslsmith_index_u32(1u, 31u)], vec2<u32>(~(~(4294967295u << (var_1.a % 32u))), u_input.c.x), u_input.c);
}

