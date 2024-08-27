struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(45455u, 84576u, 9151u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 34265u), vec4<u32>(0u, 4294967295u, 72422u, 57154u), vec4<u32>(1u, 7304u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 31686u), vec4<u32>(35u, 4294967295u, 15773u, 58674u), vec4<u32>(16359u, 50652u, 4294967295u, 4294967295u), vec4<u32>(9904u, 27326u, 0u, 2027u), vec4<u32>(0u, 1u, 36112u, 4294967295u), vec4<u32>(1u, 49945u, 1u, 62063u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(85285u, 64092u, 4294967295u, 116305u), vec4<u32>(4294967295u, 1u, 11981u, 1u), vec4<u32>(53477u, 0u, 1u, 61829u), vec4<u32>(1u, 10799u, 17557u, 1688u), vec4<u32>(4294967295u, 15492u, 1u, 0u), vec4<u32>(1u, 7492u, 106099u, 85526u), vec4<u32>(22215u, 1u, 21129u, 4294967295u), vec4<u32>(34270u, 5470u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 45750u), vec4<u32>(34238u, 76582u, 819u, 8051u), vec4<u32>(1u, 21527u, 4294967295u, 4294967295u), vec4<u32>(70001u, 1u, 6452u, 45292u), vec4<u32>(76035u, 4294967295u, 1u, 16368u), vec4<u32>(4294967295u, 54182u, 47370u, 46627u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 1u, 44765u, 1u), vec4<u32>(68972u, 88873u, 67919u, 41691u), vec4<u32>(15334u, 4294967295u, 27191u, 0u), vec4<u32>(4294967295u, 77649u, 369u, 0u));

var<private> global1: i32 = -11379i;

var<private> global2: bool;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = ~u_input.c.wx;
    var var_1 = u_input.c.wyw;
    let var_2 = i32(-1i) * -u_input.a;
    global1 = i32(-1i) * -abs(var_2);
    let var_3 = countOneBits(u_input.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-518f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-833f, _wgslsmith_div_f32(485f, -583f)))));
}

fn func_2() -> f32 {
    global0 = array<vec4<u32>, 30>();
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(810f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(-833f - 723f)))))) >= _wgslsmith_f_op_f32(func_3(true, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), ~u_input.c.x));
    let var_0 = Struct_1(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), false), 10672u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1160f, 387f) + vec2<f32>(-1818f, 2012f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1387f, -348f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1661f, -1000f), vec2<f32>(1515f, -124f), false)))))), global0[_wgslsmith_index_u32(~(~0u), 30u)] ^ _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(11982u, 25069u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 43651u, u_input.c.x, 0u))), ~vec4<u32>(u_input.c.x, u_input.c.x, 32236u, 0u)), any(vec4<bool>(!all(vec4<bool>(true, false, false, true)), false, all(vec4<bool>(true, false, false, false)), false | all(vec3<bool>(false, true, false)))));
    global2 = true;
    global1 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d | ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 573i, -1i, firstLeadingBit(u_input.d)), abs(vec4<i32>(u_input.d, u_input.b, -11737i, -27800i) & vec4<i32>(4958i, -2147483647i, u_input.b, u_input.b)))), 1315i);
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-918f)), -1623f), var_0.c.x);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.c.x, -2726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(674f - -1047f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1639f * arg_0.c.x))))), vec4<f32>(1570f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1584f)), arg_0.c.x, 372f));
    let var_1 = Struct_1(select(select(vec3<bool>(!arg_0.a.x, true, arg_0.e), arg_0.a, false), select(arg_0.a, vec3<bool>(arg_0.a.x, arg_0.e, true), arg_0.e), select(!(!arg_0.a), vec3<bool>(true, arg_0.c.x >= var_0.x, arg_0.e), select(select(arg_0.a, vec3<bool>(true, arg_0.e, arg_0.e), vec3<bool>(arg_0.a.x, arg_0.a.x, true)), !arg_0.a, select(vec3<bool>(arg_0.a.x, false, arg_0.e), vec3<bool>(arg_0.a.x, true, arg_0.a.x), arg_0.a.x)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~arg_0.d.wxy), vec3<u32>(u_input.c.x, arg_0.b, ~arg_0.d.x)), reverseBits(_wgslsmith_mult_u32(u_input.c.x & arg_0.d.x, reverseBits(u_input.c.x)))), _wgslsmith_f_op_vec2_f32(-var_0.xw), vec4<u32>(~0u, ~4294967295u << (u_input.c.x % 32u), 4294967295u, u_input.c.x), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(624f - _wgslsmith_f_op_f32(var_0.x * -337f)));
    global2 = var_1.e;
    let var_3 = !vec4<bool>(!arg_0.a.x, var_1.e, any(vec3<bool>(!var_1.e, true, select(true, false, false))), false);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x + 768f)) - vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.c.x)), _wgslsmith_f_op_f32(func_3(var_3.x, false, var_1.b)), var_0.x, -1373f))), vec2<u32>(max(~countOneBits(25780u), 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(44394u, arg_0.b), ~33021u, 1u, arg_0.d.x), vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0.d.yz, arg_0.d.wz), var_1.b, var_1.d.x, ~70793u))), vec2<f32>(317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-1101f + var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(true, true, true)), ~1u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 37638u), min(u_input.c.wy, u_input.c.wx)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(322f, -259f))) - vec2<f32>(-657f, -357f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1559f, -2328f)))), ~_wgslsmith_mult_vec4_u32(global0[_wgslsmith_index_u32(u_input.c.x | 4294967295u, 30u)], global0[_wgslsmith_index_u32(~3325u, 30u)]), true));
}

