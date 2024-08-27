struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = select(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), _wgslsmith_div_i32(u_input.b, u_input.a.x) == -1i), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), true || all(vec4<bool>(true, false, false, false))), vec3<bool>(any(vec2<bool>(true, true)), true, (151f == _wgslsmith_f_op_f32(-arg_0.x)) | true));
    var var_1 = firstTrailingBit(~1u);
    var var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a & vec2<i32>(u_input.b, 27225i), vec2<i32>(8008i, u_input.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 30502i), u_input.a)) == _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, i32(-1i) * -1i), u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(abs(-332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -199f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1416f)))))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(min(-1000f, arg_0.x)), _wgslsmith_div_f32(-2104f, _wgslsmith_f_op_f32(abs(arg_0.x)))));
    let var_4 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(abs(vec4<u32>(4294967295u, 13635u, 4294967295u, 6188u)) & select(vec4<u32>(0u, 23061u, 4294967295u, 1u), vec4<u32>(1500u, 19657u, 0u, 0u), vec4<bool>(false, var_0.x, true, true))), vec4<u32>(1u, 1u, 1u, 1u)), 1u, ~_wgslsmith_mult_u32(4294967295u, ~(~0u)));
    return _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.x, -1946f)), 1000f))))));
}

fn func_2() -> Struct_3 {
    global0 = array<Struct_3, 1>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(100501u, _wgslsmith_mod_u32(4294967295u, ~1u)), 1u)];
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1883f - -166f))))));
    let var_2 = Struct_3(Struct_1(u_input.a.x, u_input.b, _wgslsmith_f_op_f32(-419f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(460f)) + _wgslsmith_f_op_f32(-253f + 1162f))), ~1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1177f, -407f, 226f, -400f) + vec4<f32>(-394f, -1000f, -1911f, 1164f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1099f, -495f, -888f, 391f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-468f, 265f, 1000f, -119f), vec4<f32>(880f, -1046f, -1085f, 1000f), false))))), Struct_2(any(!select(vec2<bool>(false, true), vec2<bool>(true, true), true))), Struct_1(-25141i >> (1u % 32u), -_wgslsmith_mod_i32(0i, u_input.a.x), _wgslsmith_f_op_f32(round(605f)), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(471f, -1000f), -706f, -258f, _wgslsmith_f_op_f32(764f - 1000f)))), 4294967295u, Struct_1(u_input.b, firstLeadingBit(u_input.b), _wgslsmith_f_op_f32(-1523f - -937f), reverseBits(~41771u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, -1000f, 208f, 295f) * vec4<f32>(733f, 785f, -884f, 210f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(var_2.a.c, 1853f, -1729f)))))) + -2201f);
    return var_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = -vec4<i32>(-(arg_1.e.a >> ((arg_1.e.d | 80645u) % 32u)), ~(-(var_0.e.a & -1i)), ~reverseBits(_wgslsmith_div_i32(var_0.c.a, u_input.b)), countOneBits(-abs(arg_1.c.b)));
    var var_2 = Struct_3(Struct_1(~max(-arg_1.a.b, -1i), var_0.c.b, -806f, ~var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-246f, 738f, 1555f, var_0.e.e.x) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c.c, -519f, -537f, 399f), vec4<f32>(1000f, 470f, -639f, var_0.e.c))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.e.e)), _wgslsmith_f_op_vec4_f32(arg_1.c.e * vec4<f32>(arg_1.e.c, -632f, -1000f, arg_1.e.e.x))))), var_0.b, func_2().e, 60184u, var_0.a);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1612f + 211f) - _wgslsmith_f_op_f32(f32(-1f) * -692f)) + var_0.e.c));
    let var_4 = global0[_wgslsmith_index_u32(reverseBits(arg_1.a.d), 1u)];
    return arg_1;
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    return global1[_wgslsmith_index_u32(arg_0.a.d, 1u)];
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = func_5(func_4(select(select(select(vec4<bool>(arg_0.b.a, false, arg_0.b.a, arg_1.b.a), vec4<bool>(true, arg_1.b.a, false, false), vec4<bool>(arg_0.b.a, true, false, arg_1.b.a)), !vec4<bool>(true, false, false, arg_0.b.a), any(vec3<bool>(true, false, arg_0.b.a))), vec4<bool>(!arg_1.b.a, true, true, arg_1.b.a), all(vec3<bool>(arg_0.b.a, arg_1.b.a, arg_1.b.a)) & (arg_1.b.a & true)), func_2(), global1[_wgslsmith_index_u32(~abs(~7703u), 1u)]));
    let var_1 = vec3<i32>(~(~_wgslsmith_mult_i32(arg_0.a.b, -13435i)), u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-countOneBits(vec4<i32>(-1i, arg_1.a.a, -2147483647i, u_input.b)), vec4<i32>(13855i, 2147483647i, arg_0.e.b, arg_1.c.b) ^ firstTrailingBit(vec4<i32>(2147483647i, -1041i, arg_1.a.a, u_input.b))), 2147483647i));
    let var_2 = var_0.a;
    var var_3 = Struct_3(Struct_1(-2147483647i, arg_0.e.b, arg_1.e.e.x, 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.e.e + vec4<f32>(111f, -515f, 1337f, arg_0.a.e.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1273f, -129f, 234f, arg_1.e.c) - arg_1.a.e) - _wgslsmith_f_op_vec4_f32(-arg_0.c.e)))), Struct_2((29147u >> (~arg_0.c.d % 32u)) >= arg_1.d), arg_1.a, _wgslsmith_dot_vec4_u32(~(vec4<u32>(arg_1.e.d, arg_0.c.d, 0u, arg_1.c.d) | ~vec4<u32>(arg_0.e.d, arg_1.e.d, arg_0.a.d, 10537u)), firstLeadingBit(abs(vec4<u32>(arg_0.a.d, 49245u, 4294967295u, arg_0.a.d) | vec4<u32>(1u, arg_1.d, arg_0.c.d, arg_1.a.d)))), func_4(vec4<bool>(~10482u == arg_0.e.d, true, select(any(vec4<bool>(false, false, arg_0.b.a, true)), false, var_2), !(true || var_2)), Struct_3(arg_1.c, var_0, func_2().e, ~arg_1.c.d, func_4(vec4<bool>(true, true, false, false), func_4(vec4<bool>(true, arg_0.b.a, false, true), arg_0, arg_1.b), Struct_2(true)).c), var_0).a);
    var var_4 = func_4(select(!select(select(vec4<bool>(var_3.b.a, var_0.a, false, arg_1.b.a), vec4<bool>(true, false, true, var_2), var_0.a), vec4<bool>(false, var_3.b.a, arg_0.b.a, false), true), select(vec4<bool>(false, !var_3.b.a, var_3.b.a, true), !(!vec4<bool>(arg_0.b.a, var_3.b.a, true, var_2)), vec4<bool>(var_0.a, true, true != var_2, true)), !vec4<bool>(!arg_1.b.a, arg_0.b.a, false, true)), arg_1, func_4(select(vec4<bool>(true, -808f == var_3.c.e.x, all(vec2<bool>(true, false)), func_2().b.a), vec4<bool>(true, all(vec2<bool>(true, arg_1.b.a)), any(vec4<bool>(arg_1.b.a, var_3.b.a, false, true)), !arg_1.b.a), !arg_1.b.a || true), global0[_wgslsmith_index_u32(arg_1.d, 1u)], Struct_2(true)).b);
    return 33006u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 1>();
    var var_0 = ~max(vec4<u32>(38882u, _wgslsmith_add_u32(0u, 52413u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 48056u, 0u), vec4<u32>(15861u, 48466u, 4294967295u, 9650u)), 1u, true), _wgslsmith_mult_u32(1u, ~0u)), reverseBits(vec4<u32>(1u, _wgslsmith_mod_u32(1u, 29056u), func_1(Struct_3(Struct_1(u_input.a.x, u_input.a.x, -338f, 20398u, vec4<f32>(642f, 1000f, 1027f, 1196f)), global1[_wgslsmith_index_u32(49423u, 1u)], Struct_1(2147483647i, 0i, 1427f, 4185u, vec4<f32>(-735f, -1915f, 239f, -692f)), 0u, Struct_1(u_input.a.x, u_input.a.x, -1466f, 1u, vec4<f32>(456f, -452f, 281f, 265f))), Struct_3(Struct_1(u_input.a.x, u_input.b, -958f, 0u, vec4<f32>(1032f, -1280f, -416f, 1393f)), global1[_wgslsmith_index_u32(1u, 1u)], Struct_1(37545i, u_input.b, -472f, 38036u, vec4<f32>(1656f, 190f, 666f, 1635f)), 0u, Struct_1(u_input.a.x, 0i, -910f, 78865u, vec4<f32>(1000f, 1239f, 1144f, -868f)))), 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2188f, -488f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-495f, 1352f) + vec2<f32>(-826f, 329f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, _wgslsmith_div_f32(-502f, 148f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1856f) * _wgslsmith_f_op_f32(func_3(vec3<f32>(-1512f, 1000f, 934f)))), _wgslsmith_f_op_f32(-func_2().c.c))));
    let var_2 = select(!(!vec3<bool>(any(vec4<bool>(false, false, true, true)), false, true)), select(vec3<bool>(true, true, true), vec3<bool>(func_2().b.a, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false)), any(vec2<bool>(true, true))), !all(vec2<bool>(false, false))), any(select(vec2<bool>(func_4(vec4<bool>(true, true, true, true), Struct_3(Struct_1(u_input.a.x, 62832i, -1022f, 85882u, vec4<f32>(var_1.x, 520f, -116f, var_1.x)), Struct_2(true), Struct_1(2130i, -1i, -413f, 98916u, vec4<f32>(var_1.x, 1271f, var_1.x, -2255f)), var_0.x, Struct_1(1i, u_input.a.x, var_1.x, 4294967295u, vec4<f32>(-502f, var_1.x, -970f, var_1.x))), global1[_wgslsmith_index_u32(var_0.x, 1u)]).b.a, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true)));
    global1 = array<Struct_2, 1>();
    let var_3 = -vec2<i32>(-(~(-1i)), 0i);
    var_0 = reverseBits(abs(vec4<u32>(63946u & var_0.x, func_4(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), global0[_wgslsmith_index_u32(~17372u, 1u)], Struct_2(true)).a.d, var_0.x, func_1(Struct_3(Struct_1(u_input.b, -2147483647i, var_1.x, 1u, vec4<f32>(1000f, -1291f, -656f, var_1.x)), global1[_wgslsmith_index_u32(var_0.x, 1u)], Struct_1(-27568i, 6748i, -2201f, var_0.x, vec4<f32>(var_1.x, 711f, var_1.x, var_1.x)), 1u, Struct_1(var_3.x, 0i, var_1.x, 0u, vec4<f32>(var_1.x, var_1.x, -2400f, 2887f))), global0[_wgslsmith_index_u32(67347u, 1u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_vec2_f32(-var_1), ~(firstTrailingBit(~vec3<u32>(var_0.x, 0u, var_0.x)) ^ vec3<u32>(_wgslsmith_add_u32(25630u, 1u), min(4294967295u, 1u), ~4294967295u)), ~var_0.x);
}

