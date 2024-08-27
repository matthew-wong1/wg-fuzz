struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(vec4<i32>(32683i, -46418i, -1i, 2147483647i), false, vec3<i32>(-1i, -13957i, -1i));

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_2(-global2.a, !global3.x, vec3<i32>(abs(max(abs(-5049i), ~global2.c.x)), global2.c.x, _wgslsmith_mult_i32(global2.a.x, global2.a.x)));
    global2 = Struct_2(abs(var_0.a), select(any(vec2<bool>(true, true || var_0.b)), global3.x, -_wgslsmith_div_i32(0i, -1i) <= -_wgslsmith_mult_i32(-1i, global2.c.x)), global2.c);
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a.x, ~1u, u_input.b.x), ~vec3<u32>(~u_input.a.x, u_input.b.x, u_input.b.x >> ((0u | u_input.a.x) % 32u)));
    var var_2 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(step(arg_2, arg_2)), vec3<bool>(global2.b, !(arg_2.x < 342f), any(select(!vec2<bool>(arg_0, false), select(vec2<bool>(global2.b, global2.b), global3.xx, global3.yy), var_0.b))), var_0.b, arg_2);
    global2 = var_0;
    return !(!(!(!var_2.c)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.b.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(582f + -362f), _wgslsmith_f_op_f32(round(977f)), 1272f, _wgslsmith_f_op_f32(921f * 327f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(366f, -280f, 1221f, 371f), vec4<f32>(-1217f, -1727f, -1119f, 281f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -858f, 216f, -1000f) * vec4<f32>(-781f, -694f, -278f, 657f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2012f, -767f, -1043f, 1446f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-124f, -1748f, -554f, 764f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(-447f)), _wgslsmith_div_f32(-1251f, -546f), _wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(562f * -597f))))), !func_3(global2.b, -704f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_div_f32(-218f, -679f), _wgslsmith_f_op_f32(sign(-134f)), -1142f)), !all(select(vec3<bool>(global3.x, global2.b, global3.x), vec3<bool>(true, true, false), vec3<bool>(true, global2.b, false))) == true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(2015f - 447f), _wgslsmith_f_op_f32(-451f - -569f), _wgslsmith_f_op_f32(-1000f + 3074f), _wgslsmith_f_op_f32(688f - 680f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(987f, -1105f, -1241f, 670f)))))));
    global2 = Struct_2(global2.a, var_0.c.x, vec3<i32>(38507i, global2.a.x, 27072i));
    var var_1 = Struct_1(~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2073f, var_0.b.x, -833f, -1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, var_0.e.x, var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-464f, 106f, 580f, -1000f), vec4<f32>(-1280f, var_0.b.x, -1068f, 865f))), _wgslsmith_f_op_vec4_f32(-var_0.b))), all(func_3(true, -124f, vec4<f32>(var_0.b.x, var_0.b.x, var_0.e.x, var_0.b.x)))))), var_0.c, global3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, -670f) - vec4<f32>(var_0.e.x, -536f, var_0.e.x, 809f)) - _wgslsmith_f_op_vec4_f32(ceil(var_0.b)))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(107f - var_0.e.x), _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(-271f - var_1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.xxx * _wgslsmith_f_op_vec3_f32(abs(var_1.e.www)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, -255f, var_1.b.x) + vec3<f32>(_wgslsmith_f_op_f32(245f - 441f), _wgslsmith_f_op_f32(-var_1.b.x), 1687f))));
    return global0[_wgslsmith_index_u32(~(((7248u >> (firstTrailingBit(var_1.a) % 32u)) | _wgslsmith_sub_u32(countOneBits(var_0.a), var_1.a)) & select(_wgslsmith_add_u32(var_0.a, 0u) | var_0.a, u_input.b.x, (var_0.e.x < -1616f) & false)), 7u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = abs(u_input.b.x);
    let var_1 = ~vec3<i32>(4664i, i32(-1i) * -2147483647i, -49881i);
    let var_2 = _wgslsmith_div_u32(~130056u, 78729u) >= u_input.a.x;
    global2 = Struct_2(vec4<i32>(reverseBits(firstLeadingBit(3001i)), var_1.x, global2.c.x, -1i) << (max(~(~u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, u_input.b.x), ~vec4<u32>(u_input.a.x, 1u, arg_1.a, var_0))) % vec4<u32>(32u)), !arg_1.c.x, _wgslsmith_add_vec3_i32(global2.a.xwy, vec3<i32>(var_1.x, global2.c.x, _wgslsmith_dot_vec3_i32(-global2.a.zxx, min(vec3<i32>(var_1.x, -27315i, var_1.x), vec3<i32>(0i, 1i, global2.a.x))))));
    global3 = !(!select(!(!arg_1.c), select(!arg_1.c, arg_1.c, true), func_2().c.x));
    return _wgslsmith_f_op_vec4_f32(trunc(arg_1.b));
}

fn func_1() -> vec3<u32> {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, i32(-1i) * -2147483647i), reverseBits(~global2.c.x | firstLeadingBit(0i))), min(2147483647i, 45398i), ~global2.a.x);
    global0 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-566f - -691f), func_2())) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1632f), 852f, _wgslsmith_f_op_f32(f32(-1f) * -926f), _wgslsmith_f_op_f32(f32(-1f) * -129f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, _wgslsmith_f_op_f32(floor(-557f)), 1319f, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(1660f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1365f * _wgslsmith_div_f32(1000f, -373f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(-1067f))))), -455f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(743f, 1000f))), _wgslsmith_f_op_f32(max(526f, -990f)))))));
    let var_2 = var_1.xww;
    let var_3 = all(func_2().c.yx);
    return vec3<u32>(~u_input.b.x, abs(abs(reverseBits(0u))), 81940u);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = true;
    var_0 = global3.x;
    var var_1 = ~reverseBits(~_wgslsmith_div_u32(71591u, arg_0.x ^ 4294967295u));
    var var_2 = global0[_wgslsmith_index_u32(~arg_2.x, 7u)];
    var var_3 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(-global2.c.x, -2147483647i) | _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(global2.c.x, global2.c.x, 5533i, 1i)), global2.a.x), 40959i, _wgslsmith_div_i32(~global2.c.x, -23713i), _wgslsmith_mod_i32(global2.a.x, min(_wgslsmith_div_i32(21873i, global2.c.x), -2147483647i ^ global2.c.x))), true, vec3<i32>(~firstLeadingBit(reverseBits(0i)), 1i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, firstLeadingBit(10860i)), ~(~(-2147483647i)), 2147483647i)));
    return vec4<i32>(~(~_wgslsmith_div_i32(global2.a.x, -2147483647i) & global2.a.x), _wgslsmith_clamp_i32(-(global2.c.x >> (arg_2.x % 32u)) & _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, -2147483647i, global2.a.x), -27006i), global2.c.x, reverseBits(global2.c.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_3.a.x, -1i)), var_3.a.zx), ~var_3.c.x), select(-1i, countOneBits(30942i), global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(func_5(func_1(), vec3<f32>(436f, _wgslsmith_f_op_f32(select(-874f, _wgslsmith_f_op_f32(trunc(1000f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1656f, 370f))), u_input.a, func_3(!any(global3.zy), func_2().b.x, _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1000f, -821f, 313f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1170f, 370f, 2803f, -1277f), vec4<f32>(526f, -1097f, -1456f, 936f)))))), _wgslsmith_clamp_vec4_i32(~global2.a, _wgslsmith_div_vec4_i32(vec4<i32>(-30779i, _wgslsmith_dot_vec4_i32(global2.a, global2.a), global2.c.x, global2.a.x), global2.a), -global2.a));
    let var_1 = all(global3.yz);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~firstTrailingBit(u_input.a.wy)), vec2<u32>(129602u, u_input.b.x)), 7u)];
    var var_3 = vec4<bool>(all(select(!select(vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(global2.b, var_1, var_2.d, false), vec4<bool>(false, global2.b, global2.b, global3.x)), vec4<bool>(true, !var_2.c.x, any(var_2.c.xz), var_1), select(select(vec4<bool>(false, false, var_2.d, false), vec4<bool>(true, global3.x, true, false), true), select(vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(false, true, var_1, var_1), vec4<bool>(var_2.c.x, false, false, true)), select(vec4<bool>(var_2.d, true, var_1, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, var_1, false), vec4<bool>(var_2.d, var_2.d, var_1, false))))), !any(vec3<bool>(all(vec2<bool>(false, global3.x)), all(vec4<bool>(global3.x, global3.x, var_1, var_2.c.x)), var_1)), true, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-430f)) + _wgslsmith_f_op_f32(abs(397f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f - -1018f))));
    var var_4 = ~9667i;
    global3 = !(!vec3<bool>(var_1, var_1, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-1i) * -(~vec3<i32>(var_0.x, global2.c.x, global2.c.x)), abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, global2.c.x, global2.a.x), vec3<i32>(var_0.x, var_0.x, 42260i)))), max(9483u, func_1().x), vec2<u32>(0u, ~(~u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)) + _wgslsmith_f_op_f32(-var_2.e.x)));
}

