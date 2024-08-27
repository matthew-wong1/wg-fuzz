struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 27153u, 1u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(abs(arg_0)), arg_0, 377f) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-224f, -712f, arg_0, 1000f)))))))));
    global0 = firstLeadingBit(vec3<u32>(~(~global0.x), 0u, _wgslsmith_add_u32(~29716u, ~(~u_input.c))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -333f, var_0.x, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1756f, arg_0, arg_0), vec4<f32>(var_0.x, var_0.x, -300f, arg_0))), vec4<f32>(arg_0, -363f, _wgslsmith_f_op_f32(abs(1758f)), var_0.x)))));
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, arg_0, 395f, var_0.x) - vec4<f32>(-1772f, -345f, arg_0, arg_0)))))));
    return arg_0;
}

fn func_2(arg_0: vec3<i32>) -> vec4<i32> {
    global0 = vec3<u32>(~_wgslsmith_mult_u32(4294967295u, global0.x), countOneBits(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 15688u, u_input.c, 1u), vec4<u32>(1819u, 4294967295u, 1u, 1u)), vec4<u32>(global0.x, 25777u, 4294967295u, global0.x) ^ vec4<u32>(71466u, 51077u, 1u, 4294967295u))), u_input.c);
    var var_0 = 1u;
    var_0 = abs(2731u >> (~abs(_wgslsmith_sub_u32(1u, u_input.a)) % 32u));
    let var_1 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1571f - _wgslsmith_f_op_f32(trunc(1005f))), _wgslsmith_f_op_f32(-1295f + -1306f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(464f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-110f)) - _wgslsmith_f_op_f32(select(-1118f, 648f, false))))));
    var var_2 = !vec4<bool>(!(true & var_1), false, ~countOneBits(4294967295u) != global0.x, all(vec4<bool>(false == var_1, var_1, false, any(vec4<bool>(true, var_1, var_1, var_1)))));
    return vec4<i32>(arg_0.x, arg_0.x, -1i, -firstLeadingBit(-2147483647i));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = Struct_2(arg_3, arg_2.x, !any(vec3<bool>(true, true, arg_1 <= -12258i)));
    let var_1 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, ~global0.x, 32171u, u_input.a), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.c, 81003u, 1u)), select(vec4<u32>(global0.x, global0.x, 1u, 39972u), vec4<u32>(0u, 8440u, 67909u, 87440u), vec4<bool>(var_0.c, var_0.c, var_0.c, true)))), max(vec4<u32>(~1u, 36248u, max(global0.x, global0.x), global0.x), ~vec4<u32>(1440u, 4294967295u, u_input.c, global0.x)), countOneBits(vec4<u32>(u_input.a, ~u_input.a, global0.x, countOneBits(28710u))));
    global0 = vec3<u32>(_wgslsmith_mult_u32(u_input.a, global0.x), global0.x, min(select(u_input.c, global0.x, !(var_0.c & true)), reverseBits(~4294967295u)));
    global0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(31308u, 4294967295u, _wgslsmith_mod_u32(u_input.c, 1349u), _wgslsmith_mod_u32(global0.x, global0.x)), vec4<u32>(8016u, _wgslsmith_mult_u32(~u_input.c, ~0u), ~global0.x, var_1.x)), var_1.x, ~max(~(~global0.x), ~_wgslsmith_clamp_u32(global0.x, u_input.c, 4294967295u)));
    var var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(false & var_0.c, var_0.c, select(var_0.c, var_0.c, var_0.c)), var_0.c), vec3<bool>(!var_0.c, !(!(var_0.c && var_0.c)), !((var_0.c || var_0.c) || var_0.c)), select(vec3<bool>((0u < u_input.a) | true, (40567u & global0.x) != _wgslsmith_sub_u32(97224u, global0.x), arg_2.x <= ~39608i), vec3<bool>(var_0.a.b == _wgslsmith_div_f32(1339f, 451f), all(!vec2<bool>(var_0.c, var_0.c)), true), !(!vec3<bool>(var_0.c, true, false))));
    return Struct_3(!vec2<bool>(var_0.c, any(vec3<bool>(var_0.c, var_2.x, var_0.c))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    var var_0 = ~_wgslsmith_clamp_u32(~34827u, global0.x, u_input.a) ^ ~u_input.a;
    var var_1 = 0i;
    var_0 = firstTrailingBit(1u) >> (3559u % 32u);
    var var_2 = ~_wgslsmith_clamp_u32(~1u, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global0.x, global0.x, 4294967295u), vec4<u32>(4294967295u, global0.x, global0.x, 1u)), ~u_input.c, arg_1.a.x), u_input.a);
    let var_3 = Struct_3(select(!arg_3.a, !select(vec2<bool>(arg_1.a.x, arg_3.a.x), vec2<bool>(false, arg_1.a.x), vec2<bool>(arg_0.x, arg_0.x)), vec2<bool>(-12289i < min(-2147483647i, u_input.e), true)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-652f))), 475f, _wgslsmith_sub_i32(u_input.e ^ u_input.d.x, abs(1i)) >> (4294967295u % 32u)), 6519i, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(115f, _wgslsmith_f_op_f32(-1386f * -532f)))), 32223i, countOneBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.e, u_input.e, u_input.d.x), vec3<i32>(-2147483647i, u_input.b.x, -4554i))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1176f))), -302f, 1i)).a.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = abs(vec3<u32>(select(45533u, ~(4294967295u >> (u_input.c % 32u)), (u_input.e >> (4294967295u % 32u)) <= -23568i), _wgslsmith_mult_u32(_wgslsmith_sub_u32(global0.x, _wgslsmith_mult_u32(u_input.c, 4294967295u)), 1u), 28410u));
    let var_0 = func_5(vec4<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= 806f, true, false), func_4(431f, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.c, -63181i, arg_1.c), func_2(u_input.d))), vec3<i32>(~(-1i), ~_wgslsmith_sub_i32(arg_1.c, 0i), arg_1.c), Struct_1(_wgslsmith_f_op_f32(abs(1051f)), arg_1.a, ~0i)), Struct_3(vec2<bool>(true & (-13177i == arg_0.x), (236f > arg_1.a) || true)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(-1773f + arg_1.a)))), arg_1.c, u_input.d, Struct_1(_wgslsmith_f_op_f32(-1f), 1000f, -2147483647i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(495f, 1037f)))))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1507f - _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(f32(-1f) * -678f)), 1069f, arg_1.c);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, func_5(vec4<bool>(var_0.c, false, var_0.c, var_0.c), func_4(-1111f, 2147483647i, vec3<i32>(var_0.b, u_input.d.x, 2147483647i), var_2), Struct_3(vec2<bool>(var_0.c, var_0.c)), Struct_3(vec2<bool>(false, var_0.c))).a.b)));
    return func_5(!(!select(vec4<bool>(false, true, var_0.c, true), vec4<bool>(true, true, var_0.c, true), !vec4<bool>(false, var_0.c, var_0.c, false))), Struct_3(!vec2<bool>(func_5(vec4<bool>(true, var_0.c, var_0.c, false), Struct_3(vec2<bool>(var_0.c, var_0.c)), Struct_3(vec2<bool>(true, var_0.c)), Struct_3(vec2<bool>(false, var_0.c))).c, var_0.c)), Struct_3(!(!vec2<bool>(true, var_0.c))), Struct_3(select(vec2<bool>(var_0.c, false), vec2<bool>(-2147483647i != arg_1.c, true), !(!vec2<bool>(var_0.c, var_0.c))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_add_vec2_i32(abs(vec2<i32>(~u_input.e, -2717i << (u_input.a % 32u))), vec2<i32>(-25091i, -_wgslsmith_div_i32(u_input.e, u_input.d.x))), Struct_1(1498f, -1157f, -(~u_input.d.x)));
    var var_1 = Struct_3(vec2<bool>(!(!all(vec4<bool>(true, true, true, false))), all(vec2<bool>(true, true)) & (var_0.a != _wgslsmith_f_op_f32(-447f - -787f))));
    var_1 = Struct_3(vec2<bool>(true, !var_1.a.x));
    global0 = ~(~(select(vec3<u32>(global0.x, global0.x, 0u), vec3<u32>(global0.x, 24501u, 1u), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x)) | reverseBits(vec3<u32>(4294967295u, global0.x, global0.x))) >> (reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, global0.x, global0.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.c, global0.x, 10773u)))) % vec3<u32>(32u)));
    let var_2 = Struct_2(func_1(-_wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, u_input.b) | _wgslsmith_add_vec2_i32(vec2<i32>(-15300i, u_input.d.x) >> (vec2<u32>(u_input.c, global0.x) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.d.x, 55567i))), func_1(~u_input.d.zy, Struct_1(-1589f, _wgslsmith_f_op_f32(f32(-1f) * -1028f), 1i))), -4945i, !var_1.a.x || true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_i32(-52098i ^ var_0.c, 1460i)) & -47950i, _wgslsmith_f_op_f32(-1898f * _wgslsmith_f_op_f32(trunc(var_0.a))), ~(-1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1144f, 153f, -527f))))))), 1519i);
}

