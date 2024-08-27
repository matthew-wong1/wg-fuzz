struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_1;

var<private> global2: array<u32, 8>;

var<private> global3: i32 = -2348i;

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_2(1406u, select(select(!vec4<bool>(true, global1.a, global1.a, false), vec4<bool>(all(vec3<bool>(true, true, false)), select(false, false, global1.a), global1.a != global1.a, global1.a), any(vec2<bool>(false, true))), !(!vec4<bool>(global4.x, global1.a, false, global1.a)), false), !(!((-1i <= u_input.a) && false)));
    let var_1 = false;
    let var_2 = -689f;
    var var_3 = var_0.c;
    let var_4 = Struct_2(_wgslsmith_mod_u32(56007u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 1u, 0u, 94281u), vec4<u32>(global2[_wgslsmith_index_u32(44003u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], var_0.a, var_0.a)), vec4<u32>(min(84105u, u_input.b.x), 0u, ~u_input.b.x, 123149u))), select(!vec4<bool>(all(vec2<bool>(global4.x, true)), any(var_0.b.yw), true, all(vec2<bool>(var_1, false))), !(!var_0.b), !var_0.b), !global1.a);
    return vec4<u32>(min(max(countOneBits(_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), 43886u >> (select(24127u, global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global4.x) % 32u)), _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(4294967295u, var_4.a))), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(~0u, 8u)], 1969u), var_0.a, 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = ~(~(~(~vec2<u32>(12057u, 1u)))) ^ u_input.b.yy;
    var var_1 = _wgslsmith_mod_u32(69035u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(~4294967295u, u_input.b.x >> (global2[_wgslsmith_index_u32(u_input.b.x, 8u)] % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_3(), vec4<u32>(1u, select(35594u, 24905u, true), ~u_input.b.x, 4294967295u)), 8u)]));
    let var_2 = arg_1;
    var var_3 = Struct_2(var_2.a, !var_2.b, true);
    var_3 = var_2;
    return vec3<bool>(select(global4.x, global4.x, true), false, true);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    let var_0 = ~1u;
    var var_1 = Struct_2(29355u, vec4<bool>(global1.a == !(1048f > arg_1.x), true | arg_0.c, true, global4.x), all(arg_0.b.xyy));
    let var_2 = _wgslsmith_add_vec3_u32(func_3().wyw, u_input.b);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -604f);
    global3 = _wgslsmith_div_i32(global1.b.x, _wgslsmith_div_i32(abs(76041i) << (min(countOneBits(global2[_wgslsmith_index_u32(var_0, 8u)]), func_3().x) % 32u), abs(39131i)));
    return false || var_1.c;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1268f);
    global2 = array<u32, 8>();
    let var_1 = func_4(Struct_2(u_input.b.x, select(vec4<bool>(true, global4.x, false, global4.x), select(vec4<bool>(global1.a, false, false, global4.x), vec4<bool>(global1.a, true, false, global1.a), vec4<bool>(global4.x, global4.x, global1.a, false)), global1.a), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2128f, _wgslsmith_f_op_f32(trunc(-831f)), 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 160f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 469f, var_0) + vec3<f32>(1249f, -1400f, 1471f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 962f, var_0) * vec3<f32>(var_0, -1704f, 378f)))), !(!func_2(vec4<f32>(var_0, var_0, var_0, var_0), Struct_2(u_input.b.x, vec4<bool>(true, global1.a, false, false), global1.a))))));
    global2 = array<u32, 8>();
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~_wgslsmith_clamp_u32(32265u, ~global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 0u)), 8u)], vec4<bool>(var_1, false, (_wgslsmith_f_op_f32(var_0 - -147f) >= _wgslsmith_f_op_f32(f32(-1f) * -657f)) == var_1, !func_4(Struct_2(22059u, vec4<bool>(false, global4.x, global1.a, var_1), global4.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1841f)))), any(vec4<bool>(0i < global1.b.x, any(vec3<bool>(false, var_1, true)), true != global1.a, true)) & true);
    return Struct_2(firstTrailingBit(4294967295u), select(!vec4<bool>(true, any(vec3<bool>(global1.a, global4.x, var_2.b.x)), func_4(Struct_2(var_2.a, vec4<bool>(true, global1.a, var_2.b.x, true), true), vec3<f32>(var_0, -1699f, var_0)), !global1.a), var_2.b, ~u_input.a < global1.b.x), global4.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = !vec2<bool>(arg_3.x, arg_3.x);
    var_0 = vec2<bool>(select(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 139f, arg_2.x, 852f)), Struct_2(24000u, !vec4<bool>(global4.x, false, false, true), select(global4.x, global4.x, var_0.x))).x, true, true), u_input.a >= u_input.a);
    return func_1();
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1299f, 1117f, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, -104f, -637f, 1000f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, 1000f, -1000f, arg_1.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, 1076f, -1400f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 3482f, 486f, arg_1.x)))), Struct_2(_wgslsmith_div_u32(arg_0.a << (4294967295u % 32u), global2[_wgslsmith_index_u32(arg_2.a, 8u)]), vec4<bool>(false, func_2(vec4<f32>(579f, arg_1.x, arg_1.x, 1699f), arg_2).x, arg_0.c, true), true)).zx;
    var var_1 = Struct_1(true, min(_wgslsmith_mult_vec3_i32(min(countOneBits(global1.b), _wgslsmith_add_vec3_i32(vec3<i32>(global1.b.x, 1i, 66383i), global1.b)), vec3<i32>(-11575i, 4937i, global1.b.x) >> (vec3<u32>(16071u, u_input.b.x, global2[_wgslsmith_index_u32(arg_2.a, 8u)]) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(-2147483647i, 35898i), _wgslsmith_clamp_i32(u_input.a, 54816i, -8107i), min(u_input.a, u_input.a)) >> (~u_input.b % vec3<u32>(32u))));
    global4 = arg_2.b.zz;
    var var_2 = arg_2.c;
    var_0 = arg_2.b.zw;
    return !(any(!vec3<bool>(arg_2.b.x, global1.a, true)) || func_1().c);
}

fn func_7(arg_0: vec4<u32>, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> i32 {
    var var_0 = ~global1.b.x;
    return -45054i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(abs(global1.b.x), -(~(1i << (_wgslsmith_sub_u32(4294967295u, 4294967295u) % 32u))));
    var var_1 = ~func_7(~(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(93187u, 8u)], 8u)], 8u)], 1u, global2[_wgslsmith_index_u32(16550u, 8u)]) ^ firstTrailingBit(vec4<u32>(27299u, u_input.b.x, 0u, 1u))), func_6(Struct_2(36334u, !vec4<bool>(false, global4.x, true, true), global4.x & global4.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, 341f)), vec2<f32>(264f, -218f))), func_5(func_1(), Struct_2(global2[_wgslsmith_index_u32(60192u, 8u)], vec4<bool>(global1.a, global4.x, global4.x, global4.x), global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, -835f)), vec4<bool>(global1.a, true, true, global1.a))), true, select(!func_5(Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], vec4<bool>(false, true, global1.a, global4.x), true), Struct_2(3107u, vec4<bool>(false, global4.x, true, global1.a), global1.a), vec2<f32>(-1006f, 1565f), vec4<bool>(global4.x, false, false, global4.x)).b, !select(vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(true, global1.a, true, global4.x), vec4<bool>(true, global1.a, global4.x, true)), all(!vec2<bool>(global4.x, true))));
    let var_2 = func_4(Struct_2(global2[_wgslsmith_index_u32(41303u, 8u)], vec4<bool>(true, func_1().c, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 8u)], u_input.b.x) != max(4294967295u, global2[_wgslsmith_index_u32(4294967295u, 8u)]), true), !global1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -582f, -936f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1454f, 366f, -968f), vec3<f32>(-2371f, 1358f, 671f)))))));
    let var_3 = _wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3));
    let var_5 = Struct_1(global1.a, select(~firstLeadingBit(global1.b), global1.b, select(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1128f, var_3, var_4, var_3), vec4<f32>(var_4, -101f, var_4, -308f)), func_1()), select(select(vec3<bool>(false, false, global1.a), vec3<bool>(global4.x, false, var_2), true), vec3<bool>(true, var_2, false), var_2), global1.a)));
    let var_6 = var_4;
    let var_7 = func_5(Struct_2(29186u, !(!vec4<bool>(var_2, true, false, var_2)), true), func_5(func_1(), func_5(func_5(Struct_2(u_input.b.x, vec4<bool>(var_5.a, true, true, true), global4.x), Struct_2(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20514u, 8u)], 8u)], vec4<bool>(false, global4.x, global1.a, true), true), vec2<f32>(-1884f, var_6), !vec4<bool>(global4.x, global4.x, true, false)), Struct_2(global2[_wgslsmith_index_u32(func_1().a, 8u)], vec4<bool>(var_2, false, false, var_5.a), any(vec4<bool>(false, global1.a, true, global1.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1506f, var_6) * vec2<f32>(var_6, -698f)) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_6, 1211f)))), !vec4<bool>(true, var_5.a, var_2, var_2)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_4)), _wgslsmith_f_op_f32(-var_6))), 377f), !select(select(vec4<bool>(global4.x, true, global4.x, true), vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(true, var_5.a, false, true)), vec4<bool>(true, true, var_2, false), global2[_wgslsmith_index_u32(u_input.b.x, 8u)] > u_input.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -201f), _wgslsmith_f_op_f32(-var_4)))), func_5(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 8u)], vec4<bool>(true, true, func_4(Struct_2(21712u, vec4<bool>(var_5.a, global1.a, var_5.a, global4.x), true), vec3<f32>(var_4, -1350f, 1028f)), select(global4.x, true, var_5.a)), global1.a), func_5(func_1(), func_1(), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1222f, -432f), vec2<f32>(var_3, var_4), vec2<bool>(false, global1.a))))), !select(vec4<bool>(var_5.a, var_5.a, true, global4.x), vec4<bool>(global1.a, var_2, false, true), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4, var_4), vec2<f32>(843f, 533f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, var_3) * vec2<f32>(1012f, var_6)))), vec4<bool>(false, all(!vec3<bool>(global1.a, global4.x, var_5.a)), false, true)).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -112f)), -1686f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1239f)))), 1740f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3, var_6, 148f, -689f), vec4<f32>(112f, var_4, 437f, -693f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3, -1398f, var_3, var_3)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1168f, -1092f, var_3, var_3)))), u_input.b, vec4<i32>(var_5.b.x, 1i, var_5.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(var_5.b.x), _wgslsmith_div_i32(global1.b.x, global1.b.x)), vec2<i32>(var_0, -global1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_6, -410f, var_4) * vec3<f32>(-526f, -1355f, 1052f)) * vec3<f32>(var_3, var_4, var_4)), vec3<f32>(-146f, _wgslsmith_f_op_f32(select(-157f, 148f, false)), -434f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1966f, -232f, 456f), vec3<f32>(870f, 853f, var_4))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -298f, var_3))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3, var_3, var_4)))))));
}

