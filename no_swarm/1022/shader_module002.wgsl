struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: array<Struct_2, 12>;

var<private> global2: vec3<u32> = vec3<u32>(45041u, 1u, 4294967295u);

var<private> global3: array<i32, 2> = array<i32, 2>(1i, 1i);

var<private> global4: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(271f, 1411f), vec2<f32>(-1145f, -616f), vec2<f32>(1000f, -1793f), vec2<f32>(-733f, -557f), vec2<f32>(1440f, 2517f), vec2<f32>(405f, -1191f), vec2<f32>(638f, 203f), vec2<f32>(-407f, 1000f), vec2<f32>(-529f, -796f), vec2<f32>(-1348f, -1298f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> bool {
    global0 = array<bool, 17>();
    global4 = array<vec2<f32>, 10>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2632f) * _wgslsmith_f_op_f32(1119f + -480f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1823f, 1268f, global0[_wgslsmith_index_u32(4698u, 17u)])), -1000f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1865f - -489f)) * 256f)));
    var var_1 = false;
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~u_input.a.x, 12u)], Struct_2(Struct_1(_wgslsmith_mod_i32(-global3[_wgslsmith_index_u32(154u, 2u)], ~arg_1.x), !(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], false)))), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~max(u_input.a.x, u_input.d), ~_wgslsmith_mod_u32(0u, u_input.d)), 12u)], Struct_1(i32(-1i) * -27096i, !select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(1u, 17u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], false, false), any(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 17u)], global0[_wgslsmith_index_u32(global2.x, 17u)], true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0.x) + _wgslsmith_f_op_f32(var_0.x - 560f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> f32 {
    global0 = array<bool, 17>();
    var var_0 = -_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(0u, 2u)], -1i);
    let var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(abs(firstTrailingBit(7024u)), ~firstLeadingBit(global2.x), min(1u, 4294967295u) | global2.x), max(vec3<u32>(~1u, _wgslsmith_div_u32(4294967295u, u_input.c), 1u), ~vec3<u32>(~14623u, 1u, reverseBits(u_input.a.x))));
    let var_2 = Struct_2(arg_2.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(774f - 866f), _wgslsmith_f_op_f32(f32(-1f) * -268f), -837f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, 1116f, 147f))))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(398f + 324f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1087f * 246f))), _wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + 1f));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = ~min(~vec4<u32>(global2.x, 33518u, ~36991u, firstLeadingBit(u_input.e)), abs(~abs(vec4<u32>(38938u, 0u, 32345u, 60703u))));
    global4 = array<vec2<f32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(~(~var_0.x), func_3(-2147483647i, select(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(arg_3, 2u)], 19692i, arg_1), vec4<i32>(global3[_wgslsmith_index_u32(6916u, 2u)], -40477i, 2147483647i, global3[_wgslsmith_index_u32(0u, 2u)]), vec4<i32>(11312i, u_input.b.x, 0i, arg_2.a)), vec4<i32>(arg_2.a, global3[_wgslsmith_index_u32(39881u, 2u)], u_input.b.x, 56825i), !vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(var_0.x, 17u)]))), global1[_wgslsmith_index_u32(~(~var_0.x), 12u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(arg_0 + -3325f))) + arg_0), arg_2.b.x));
    let var_2 = vec2<u32>(0u, global2.x);
    global0 = array<bool, 17>();
    return global1[_wgslsmith_index_u32(var_0.x, 12u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.wxy, u_input.b.yww), 16453i) ^ 19418i, -max(1i, -25589i), u_input.b.x), func_2(_wgslsmith_f_op_f32(round(-720f)), -select(select(7348i, arg_2.a.a.a, arg_2.d.b.x), arg_2.d.a, !arg_0.b.x), func_2(1f, 1i, func_2(-300f, min(-2147483647i, global3[_wgslsmith_index_u32(12811u, 2u)]), func_2(-553f, -60239i, arg_1, global2.x).a, _wgslsmith_clamp_u32(4973u, u_input.d, 4294967295u)).a, 4294967295u).a, ~(~4294967295u)).a, arg_2);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(532f, -916f, _wgslsmith_f_op_f32(485f * -522f), -897f))) * vec4<f32>(147f, _wgslsmith_f_op_f32(-1277f + _wgslsmith_f_op_f32(round(-828f))), -1000f, -2950f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-592f)), _wgslsmith_f_op_f32(sign(-931f)), _wgslsmith_f_op_f32(round(-154f)), 1236f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, -969f, 1000f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1516f, 1389f, 980f)))))));
    let var_2 = ~select(u_input.b.zw, abs(vec2<i32>(arg_0.a, _wgslsmith_sub_i32(2147483647i, 14656i))), func_2(_wgslsmith_f_op_f32(-var_1.x), 0i, func_2(_wgslsmith_f_op_f32(600f - var_1.x), -34859i, arg_1, ~53681u).a, _wgslsmith_dot_vec4_u32(vec4<u32>(51725u, global2.x, u_input.d, 59194u) | vec4<u32>(0u, 4294967295u, 27499u, u_input.e), vec4<u32>(u_input.e, 0u, u_input.c, 7570u))).a.b.zz);
    var var_3 = Struct_4(~vec3<i32>(~arg_1.a, 1035i, ~(~0i)), func_2(2266f, -func_2(_wgslsmith_f_op_f32(var_1.x + var_1.x), arg_0.a, Struct_1(var_0.c.c.a.a, var_0.b.b), firstTrailingBit(4294967295u)).a.a, Struct_1(global3[_wgslsmith_index_u32(~(~69421u), 2u)], !(!vec3<bool>(true, arg_2.c.a.b.x, arg_1.b.x))), ~(u_input.e >> (~u_input.e % 32u))).a, Struct_3(Struct_2(func_2(243f, -2147483647i, func_2(-218f, global3[_wgslsmith_index_u32(1u, 2u)], arg_2.d, global2.x).a, u_input.a.x).a), Struct_2(func_2(var_1.x, var_0.b.a, func_2(843f, arg_0.a, var_0.c.a.a, u_input.d).a, _wgslsmith_div_u32(global2.x, global2.x)).a), arg_2.a, Struct_1(abs(i32(-1i) * -1i), !(!vec3<bool>(true, var_0.b.b.x, arg_2.d.b.x)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(774f, -856f)) * global4[_wgslsmith_index_u32(1u, 10u)]), vec2<f32>(_wgslsmith_f_op_f32(trunc(1707f)), _wgslsmith_f_op_f32(trunc(-335f))))))));
    return Struct_1(select(-arg_1.a, -2147483647i, false), vec3<bool>(!all(select(vec3<bool>(arg_0.b.x, global0[_wgslsmith_index_u32(global2.x, 17u)], true), vec3<bool>(false, true, arg_1.b.x), vec3<bool>(true, true, global0[_wgslsmith_index_u32(11402u, 17u)]))), !(true || global0[_wgslsmith_index_u32(global2.x, 17u)]), !(false || var_3.b.b.x)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(func_5(Struct_1(-41802i, vec3<bool>(select(global0[_wgslsmith_index_u32(u_input.e, 17u)], global0[_wgslsmith_index_u32(global2.x, 17u)], global0[_wgslsmith_index_u32(29112u, 17u)]), !global0[_wgslsmith_index_u32(13526u, 17u)], any(vec3<bool>(global0[_wgslsmith_index_u32(39664u, 17u)], global0[_wgslsmith_index_u32(11793u, 17u)], true)))), Struct_1(17127i, !select(vec3<bool>(true, global0[_wgslsmith_index_u32(68686u, 17u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), global0[_wgslsmith_index_u32(u_input.d, 17u)])), Struct_3(Struct_2(Struct_1(u_input.b.x, vec3<bool>(false, global0[_wgslsmith_index_u32(9286u, 17u)], false))), func_2(1000f, global3[_wgslsmith_index_u32(~u_input.a.x, 2u)], Struct_1(u_input.b.x, vec3<bool>(global0[_wgslsmith_index_u32(0u, 17u)], false, true)), u_input.c >> (4294967295u % 32u)), Struct_2(func_2(555f, arg_0.x, Struct_1(-41625i, vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(40204u, 17u)])), 78413u).a), func_2(670f, -2147483647i, func_2(-1000f, u_input.b.x, Struct_1(global3[_wgslsmith_index_u32(58677u, 2u)], vec3<bool>(true, false, true)), global2.x).a, abs(0u)).a)));
    let var_1 = vec3<u32>(u_input.d, u_input.e, 1u);
    var_0 = Struct_2(func_2(_wgslsmith_f_op_f32(1f + 1f), ~arg_0.x, Struct_1(_wgslsmith_dot_vec3_i32(min(u_input.b.xwy, vec3<i32>(arg_0.x, var_0.a.a, global3[_wgslsmith_index_u32(0u, 2u)])), firstTrailingBit(arg_0.zzw)), vec3<bool>(true, all(vec3<bool>(var_0.a.b.x, true, var_0.a.b.x)), all(vec2<bool>(global0[_wgslsmith_index_u32(9575u, 17u)], var_0.a.b.x)))), ~global2.x).a);
    var var_2 = ~(~(~15056u));
    let var_3 = Struct_4(vec3<i32>(u_input.b.x, abs(~(-global3[_wgslsmith_index_u32(14094u, 2u)])), 1i), func_5(Struct_1(~u_input.b.x, func_2(-340f, ~u_input.b.x, func_5(Struct_1(0i, var_0.a.b), var_0.a, Struct_3(global1[_wgslsmith_index_u32(var_1.x, 12u)], global1[_wgslsmith_index_u32(global2.x, 12u)], Struct_2(Struct_1(-26892i, vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 17u)], var_0.a.b.x, var_0.a.b.x))), var_0.a)), global2.x << (39310u % 32u)).a.b), var_0.a, Struct_3(global1[_wgslsmith_index_u32(var_1.x, 12u)], Struct_2(var_0.a), global1[_wgslsmith_index_u32(global2.x, 12u)], func_2(_wgslsmith_f_op_f32(f32(-1f) * -383f), global3[_wgslsmith_index_u32(~global2.x, 2u)], var_0.a, 25048u).a)), Struct_3(Struct_2(var_0.a), Struct_2(func_2(_wgslsmith_f_op_f32(min(-432f, 704f)), ~0i, Struct_1(2147483647i, vec3<bool>(true, var_0.a.b.x, false)), 1u).a), Struct_2(Struct_1(arg_0.x, !vec3<bool>(true, global0[_wgslsmith_index_u32(25495u, 17u)], false))), func_2(509f, firstLeadingBit(firstLeadingBit(var_0.a.a)), Struct_1(var_0.a.a, func_2(2108f, arg_0.x, Struct_1(arg_0.x, var_0.a.b), 4294967295u).a.b), 1798u).a));
    return var_3.c.b;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(342f, 125f, arg_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f + 1000f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-711f - -766f)))), 1235f) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 929f, -835f), vec3<f32>(412f, 1849f, 104f))))))));
    var var_1 = arg_1.a;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(ceil(890f)), 101f));
    var var_2 = Struct_2(func_5(arg_0.a, func_2(283f, -52409i, func_1(-u_input.b).a, ~firstTrailingBit(global2.x)).a, Struct_3(arg_0, Struct_2(func_5(Struct_1(arg_0.a.a, vec3<bool>(global0[_wgslsmith_index_u32(56351u, 17u)], true, true)), Struct_1(-1i, vec3<bool>(true, arg_0.a.b.x, global0[_wgslsmith_index_u32(39122u, 17u)])), Struct_3(arg_1, Struct_2(arg_0.a), global1[_wgslsmith_index_u32(4294967295u, 12u)], arg_1.a))), Struct_2(Struct_1(-31170i, arg_1.a.b)), func_2(var_0.x, max(-21505i, 1i), Struct_1(arg_0.a.a, arg_0.a.b), u_input.d).a)));
    global0 = array<bool, 17>();
    return Struct_1(19925i, func_2(_wgslsmith_f_op_f32(trunc(-522f)), max(var_2.a.a, ~_wgslsmith_add_i32(-2147483647i, -1i)), Struct_1(19989i, select(vec3<bool>(true, true, true), !var_1.b, arg_0.a.b)), reverseBits(_wgslsmith_dot_vec2_u32(u_input.a, abs(vec2<u32>(u_input.d, u_input.c))))).a.b);
}

fn func_7(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.a.a;
    global3 = array<i32, 2>();
    let var_1 = func_5(Struct_1(firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, 1i)), vec3<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -984f), global3[_wgslsmith_index_u32(1u, 2u)], arg_0.a, 18331u ^ u_input.d).a.b.x, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2.x, 1u, global2.x), 17u)], true)), arg_0.a, Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, u_input.c, global2.x, 38227u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 25355u, 3071u), vec4<u32>(u_input.c, u_input.a.x, 1u, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(15768u, u_input.c, 13854u, 57675u), _wgslsmith_add_vec4_u32(vec4<u32>(28715u, global2.x, 1u, u_input.c), vec4<u32>(0u, 0u, global2.x, global2.x)), vec4<u32>(1u, 4294967295u, global2.x, 1u))), 12u)], func_1(abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0, arg_0.a.a, u_input.b.x, -2147483647i), vec4<i32>(2147483647i, u_input.b.x, var_0, arg_0.a.a)))), func_1(_wgslsmith_div_vec4_i32(min(vec4<i32>(-48870i, u_input.b.x, 25763i, -2147483647i), vec4<i32>(39898i, var_0, 2147483647i, 1i)), ~vec4<i32>(global3[_wgslsmith_index_u32(55063u, 2u)], -16716i, 973i, 4057i))), Struct_1(-10480i, !(!arg_0.a.b)))).b.xy;
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(28028u, global2.x, u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, global2.x)), select(vec4<u32>(~u_input.a.x, abs(~1u), 16657u, firstTrailingBit(u_input.e)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global2.x, global2.x, global2.x, u_input.c) & ~vec4<u32>(global2.x, global2.x, 9408u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 22906u, 22494u, u_input.d), vec4<u32>(0u, 48311u, 4294967295u, 20940u) & vec4<u32>(52327u, u_input.c, global2.x, 0u)), vec4<u32>(global2.x, global2.x, u_input.a.x, 65518u) << (~vec4<u32>(u_input.d, u_input.c, 1u, 65441u) % vec4<u32>(32u))), select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(32771u, 0u), 17u)], true, global0[_wgslsmith_index_u32(~4294967295u, 17u)], global0[_wgslsmith_index_u32(1u, 17u)] & global0[_wgslsmith_index_u32(u_input.c, 17u)]), select(vec4<bool>(var_1.x, true, false, false), !vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 17u)], false, true, true), !global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(31370u, 17u)]), !vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, global0[_wgslsmith_index_u32(63202u, 17u)], true), var_1.x))));
    global1 = array<Struct_2, 12>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_2(func_6(func_1(~vec4<i32>(18579i, 40439i, global3[_wgslsmith_index_u32(global2.x, 2u)], -9358i)), global1[_wgslsmith_index_u32(u_input.d, 12u)])));
    var var_1 = Struct_4(min(~u_input.b.zzz, reverseBits(_wgslsmith_mult_vec3_i32(u_input.b.wxy, u_input.b.wzw))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 11157u, global2.x), ~vec3<u32>(61159u, global2.x, global2.x)), ~vec3<u32>(u_input.c, global2.x, 57324u)) % vec3<u32>(32u)), var_0, Struct_3(func_1(select(vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x) & u_input.b, _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -1i, var_0.a, u_input.b.x), u_input.b), !vec4<bool>(var_0.b.x, var_0.b.x, false, global0[_wgslsmith_index_u32(u_input.e, 17u)]))), global1[_wgslsmith_index_u32(~reverseBits(global2.x), 12u)], Struct_2(Struct_1(_wgslsmith_sub_i32(-7688i, 34512i), func_7(Struct_2(var_0)).b)), var_0));
    var var_2 = ~countOneBits(0u);
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, _wgslsmith_f_op_f32(1602f * _wgslsmith_f_op_f32(f32(-1f) * -1086f)), min(_wgslsmith_clamp_i32(-1105i, var_0.a, ~var_0.a >> (1u % 32u)), ~_wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(39374u, 2u)], global3[_wgslsmith_index_u32(u_input.e, 2u)]))), u_input.b.xzz);
}

