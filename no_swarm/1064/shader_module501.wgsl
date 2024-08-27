struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(389f, -687f, -726f), vec3<f32>(-256f, -1920f, -1369f), vec3<f32>(1346f, -1037f, 162f), vec3<f32>(1280f, 4345f, 1927f), vec3<f32>(1000f, 1615f, -408f), vec3<f32>(847f, 584f, 671f), vec3<f32>(-511f, 726f, -1184f), vec3<f32>(-453f, -829f, 249f), vec3<f32>(-1879f, 932f, 501f), vec3<f32>(1000f, 264f, -745f), vec3<f32>(1000f, 1890f, 593f));

var<private> global1: array<u32, 31> = array<u32, 31>(37834u, 1u, 13423u, 0u, 0u, 18667u, 29112u, 1u, 1849u, 1856u, 56384u, 1u, 4294967295u, 8782u, 1u, 87137u, 3707u, 41583u, 29119u, 74049u, 0u, 11844u, 4294967295u, 1u, 66145u, 50719u, 0u, 64083u, 0u, 62471u, 1u);

var<private> global2: array<i32, 32>;

var<private> global3: array<vec3<i32>, 16>;

var<private> global4: vec3<f32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    var var_0 = u_input.d;
    var var_1 = Struct_4(arg_0);
    let var_2 = u_input.b;
    global0 = array<vec3<f32>, 11>();
    var_0 = 2147483647i;
    return abs(global1[_wgslsmith_index_u32(u_input.a, 31u)]);
}

fn func_2() -> bool {
    global0 = array<vec3<f32>, 11>();
    let var_0 = Struct_2(abs(firstLeadingBit(~(u_input.a << (global1[_wgslsmith_index_u32(46846u, 31u)] % 32u)))));
    var var_1 = _wgslsmith_sub_u32(~(~func_3(Struct_2(var_0.a), var_0)), min(firstLeadingBit(0u), func_3(Struct_2(u_input.a), var_0)) ^ ~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19383u, 31u)], 31u)]));
    var var_2 = select(select(vec2<bool>(true, select(true, false, true)), vec2<bool>(true, true), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true))), !vec2<bool>(true, _wgslsmith_f_op_f32(sign(global4.x)) >= _wgslsmith_f_op_f32(-global4.x)), !(!vec2<bool>(true, any(vec4<bool>(true, true, true, true)))));
    global2 = array<i32, 32>();
    return (select(!var_2.x != !var_2.x, false, var_2.x) & (!(!var_2.x) & any(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, false, var_2.x), var_2.x)))) & !(var_2.x & var_2.x);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<bool>) -> vec2<f32> {
    global0 = array<vec3<f32>, 11>();
    return _wgslsmith_f_op_vec2_f32(-global4.xx);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(2061u), 31u)]));
    let var_1 = global3[_wgslsmith_index_u32(u_input.c, 16u)];
    var_0 = Struct_4(var_0.a);
    var var_2 = firstTrailingBit(-_wgslsmith_mod_vec3_i32(-global3[_wgslsmith_index_u32(1u, 16u)], -vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50689u, 31u)], 32u)], 17610i, 2147483647i) >> (firstTrailingBit(vec3<u32>(arg_1.a.a, 4294967295u, 28011u)) % vec3<u32>(32u))));
    var var_3 = 655f;
    return Struct_2(func_3(Struct_2(4294967295u), arg_3.e));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global4.xy), _wgslsmith_f_op_vec2_f32(func_4(true, ~1i, vec3<bool>(func_2(), true, true))))), Struct_4(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(22202u, u_input.c), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a, u_input.a), vec2<u32>(u_input.a, u_input.c))))), select(vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), -u_input.d == -1i), vec3<bool>(true, true, true), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)))), Struct_3(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(599f, global4.x, 1409f, 887f) + vec4<f32>(global4.x, global4.x, -1090f, -1207f)))), !(!any(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, global4.x, 321f) + vec4<f32>(1032f, 582f, 128f, global4.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, -117f, global4.x, -663f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global4.x, global4.x, global4.x, global4.x))))), Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.d, -1i), vec3<i32>(global2[_wgslsmith_index_u32(47294u, 32u)], 9736i, 1i), -global3[_wgslsmith_index_u32(21029u, 16u)]), ~(vec3<u32>(1u, 1u, global1[_wgslsmith_index_u32(43683u, 31u)]) & vec3<u32>(global1[_wgslsmith_index_u32(1u, 31u)], 1u, 31426u)), false, !any(vec3<bool>(true, true, false)), -18134i <= _wgslsmith_div_i32(u_input.d, u_input.d)), Struct_2(~(~u_input.c))));
    global3 = array<vec3<i32>, 16>();
    var var_1 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global4.x, global4.x)), global4.x, global4.x, _wgslsmith_f_op_f32(abs(1944f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, -591f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1213f, 2238f, -2078f, global4.x))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1553f, 984f, -1891f, -1626f)))))), all(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1478f, global4.x, global4.x, 236f) - vec4<f32>(global4.x, global4.x, -1489f, global4.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, 168f, -897f)))))), Struct_1(max(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(firstTrailingBit(0u), 16u)]), ~firstTrailingBit(~vec3<u32>(global1[_wgslsmith_index_u32(arg_0.a, 31u)], var_0.a, 58949u)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), false, true), func_5(vec2<f32>(global4.x, global4.x), Struct_4(arg_0), vec3<bool>(func_2(), global4.x <= 883f, func_2()), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(526f + global4.x), global4.x, -103f, -1000f), true, vec4<f32>(global4.x, _wgslsmith_f_op_f32(max(global4.x, global4.x)), _wgslsmith_f_op_f32(905f - 2768f), _wgslsmith_f_op_f32(-global4.x)), Struct_1(_wgslsmith_sub_vec3_i32(global3[_wgslsmith_index_u32(var_0.a, 16u)], global3[_wgslsmith_index_u32(10265u, 16u)]), vec3<u32>(55332u, 0u, 70531u), select(false, true, true), true, true), func_5(vec2<f32>(-894f, global4.x), Struct_4(Struct_2(arg_0.a)), vec3<bool>(true, true, false), Struct_3(vec4<f32>(global4.x, -681f, global4.x, global4.x), false, vec4<f32>(-1056f, global4.x, global4.x, 535f), Struct_1(vec3<i32>(u_input.b, 1i, 23327i), vec3<u32>(arg_0.a, global1[_wgslsmith_index_u32(arg_0.a, 31u)], 1u), true, false, false), arg_0)))));
    var var_2 = arg_0;
    var var_3 = Struct_4(Struct_2(12753u));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(-var_1.a.x), global4.x, 1681f) * _wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(268f, -216f, 1291f, global4.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)))), var_1.b, _wgslsmith_f_op_vec4_f32(var_1.c - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(331f)), _wgslsmith_f_op_vec2_f32(func_4(true, u_input.b, vec3<bool>(var_1.b, var_1.d.c, false))).x, var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -588f)) - _wgslsmith_f_op_vec4_f32(-var_1.a))), Struct_1(vec3<i32>(abs(u_input.d), ~_wgslsmith_div_i32(global2[_wgslsmith_index_u32(var_3.a.a, 32u)], var_1.d.a.x), u_input.d), vec3<u32>(1u, 19346u, 1u), true, false, true), func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -791f)))), Struct_4(arg_0), vec3<bool>(all(select(vec3<bool>(var_1.d.e, true, false), vec3<bool>(var_1.b, var_1.b, false), var_1.b)), true, all(vec2<bool>(false, false))), Struct_3(var_1.a, false, var_1.c, Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(86801i, -1i, -1i), vec3<i32>(var_1.d.a.x, var_1.d.a.x, 0i)), _wgslsmith_add_vec3_u32(vec3<u32>(16009u, 4294967295u, arg_0.a), var_1.d.b), all(vec4<bool>(false, var_1.d.e, var_1.d.e, false)), all(vec3<bool>(true, var_1.b, true)), false), func_5(_wgslsmith_f_op_vec2_f32(global4.yz * var_1.c.wz), Struct_4(var_0), !vec3<bool>(false, false, var_1.b), Struct_3(vec4<f32>(350f, global4.x, var_1.a.x, var_1.a.x), false, var_1.a, var_1.d, var_1.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 11>();
    var var_0 = func_1(Struct_2(global1[_wgslsmith_index_u32(1u, 31u)]));
    var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -902f, global4.x, var_0.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, -231f)) - _wgslsmith_f_op_f32(max(var_0.a.x, 681f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-956f - 1000f), _wgslsmith_f_op_f32(global4.x - -1341f))), _wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(floor(1000f)))), any(select(!vec3<bool>(true, false, var_0.b), select(!vec3<bool>(var_0.d.e, var_0.d.e, true), vec3<bool>(var_0.d.e, var_0.d.e, false), vec3<bool>(true, false, true)), select(!vec3<bool>(false, var_0.d.d, var_0.d.e), vec3<bool>(var_0.d.e, true, var_0.b), var_0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.c.x + 1720f))), _wgslsmith_div_f32(-1437f, global4.x), _wgslsmith_f_op_f32(-var_0.c.x))), Struct_1(~vec3<i32>(~(-750i), 17730i & var_0.d.a.x, firstTrailingBit(15072i)), vec3<u32>(24329u, _wgslsmith_clamp_u32(var_0.d.b.x, u_input.c, var_0.e.a), 0u) & select(vec3<u32>(4294967295u, u_input.c, u_input.a) ^ vec3<u32>(u_input.c, 49683u, 1u), ~vec3<u32>(var_0.d.b.x, 25934u, 18492u), select(vec3<bool>(var_0.d.c, var_0.d.d, var_0.d.d), vec3<bool>(true, var_0.d.c, var_0.b), vec3<bool>(var_0.b, false, false))), var_0.d.e, true, !(!(-1713f == global4.x))), func_1(Struct_2(~(u_input.c << (1u % 32u)))).e);
    var var_1 = _wgslsmith_mult_i32(2147483647i, i32(-1i) * -(~(-global2[_wgslsmith_index_u32(0u, 32u)])));
    var var_2 = !(false | !(false || (var_0.d.c & true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.d.b.x), firstLeadingBit(abs(_wgslsmith_clamp_u32(10384u, 67017u, abs(4294967295u)))), _wgslsmith_add_i32(-1i, u_input.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(1806f)), _wgslsmith_f_op_f32(f32(-1f) * -411f), 2041f, _wgslsmith_f_op_f32(604f * _wgslsmith_f_op_f32(floor(-1172f)))))), func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - 1000f) - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - 211f) - _wgslsmith_f_op_f32(-global4.x))), Struct_4(Struct_2(0u)), select(select(vec3<bool>(false, false, false), select(vec3<bool>(var_0.d.e, false, true), vec3<bool>(true, var_0.d.e, true), var_0.b), !var_0.d.e), !vec3<bool>(true, var_0.b, false), select(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, var_0.d.c, var_0.d.e), vec3<bool>(false, var_0.d.c, var_0.d.d)), select(vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.d.d, false, false), vec3<bool>(var_0.b, var_0.b, true)), true)), Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(global4.x, var_0.a.x, -1028f, global4.x)), vec4<f32>(-341f, global4.x, var_0.a.x, var_0.c.x)), var_0.d.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(767f, -1229f, global4.x, -962f))), func_1(func_5(global4.yy, Struct_4(var_0.e), vec3<bool>(var_0.d.e, var_0.b, var_0.d.e), Struct_3(vec4<f32>(var_0.c.x, var_0.c.x, global4.x, 401f), false, var_0.a, Struct_1(var_0.d.a, var_0.d.b, true, var_0.d.e, var_0.b), Struct_2(u_input.a)))).d, func_1(func_5(vec2<f32>(var_0.c.x, global4.x), Struct_4(var_0.e), vec3<bool>(false, var_0.b, var_0.d.c), Struct_3(var_0.c, var_0.d.e, var_0.a, Struct_1(vec3<i32>(-5497i, -11804i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 31u)], 32u)]), vec3<u32>(u_input.c, var_0.d.b.x, global1[_wgslsmith_index_u32(var_0.d.b.x, 31u)]), var_0.d.d, var_0.b, true), Struct_2(var_0.e.a)))).e)).a);
}

