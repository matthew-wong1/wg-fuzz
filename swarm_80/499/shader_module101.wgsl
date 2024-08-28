struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(528f, -1i, Struct_1(vec2<bool>(false, true), vec2<f32>(1071f, 410f), vec3<u32>(24751u, 0u, 1u), 2147483647i, true), Struct_1(vec2<bool>(true, true), vec2<f32>(-331f, -803f), vec3<u32>(82315u, 1u, 0u), -1i, false), Struct_2(118137u, vec4<bool>(true, false, true, true), true, vec3<i32>(2147483647i, i32(-2147483648), 40621i))), Struct_3(-826f, -146i, Struct_1(vec2<bool>(true, true), vec2<f32>(-929f, 1875f), vec3<u32>(0u, 48410u, 0u), -23640i, false), Struct_1(vec2<bool>(true, false), vec2<f32>(1111f, -1190f), vec3<u32>(1u, 15883u, 62582u), -1i, true), Struct_2(30174u, vec4<bool>(true, true, true, false), false, vec3<i32>(57582i, -1i, 2147483647i))), Struct_3(-760f, 2147483647i, Struct_1(vec2<bool>(false, true), vec2<f32>(289f, 648f), vec3<u32>(72800u, 4294967295u, 28773u), 139i, false), Struct_1(vec2<bool>(true, true), vec2<f32>(-1141f, -2404f), vec3<u32>(68214u, 3276u, 52729u), 1i, false), Struct_2(1u, vec4<bool>(false, true, false, false), true, vec3<i32>(-1i, 1i, -1i))), Struct_3(-755f, 36391i, Struct_1(vec2<bool>(false, false), vec2<f32>(-1333f, 967f), vec3<u32>(24820u, 1u, 1u), -25122i, true), Struct_1(vec2<bool>(false, false), vec2<f32>(-822f, 483f), vec3<u32>(4294967295u, 0u, 17843u), -8559i, true), Struct_2(4294967295u, vec4<bool>(false, false, true, true), false, vec3<i32>(i32(-2147483648), i32(-2147483648), 28044i))), Struct_3(1167f, -871i, Struct_1(vec2<bool>(false, true), vec2<f32>(434f, -204f), vec3<u32>(1u, 70129u, 4294967295u), -31282i, true), Struct_1(vec2<bool>(false, false), vec2<f32>(965f, 499f), vec3<u32>(0u, 0u, 18761u), 2147483647i, true), Struct_2(4294967295u, vec4<bool>(true, true, true, false), false, vec3<i32>(30605i, 0i, 88805i))), Struct_3(-462f, 1i, Struct_1(vec2<bool>(true, true), vec2<f32>(-2813f, -1179f), vec3<u32>(38915u, 0u, 456u), -14379i, false), Struct_1(vec2<bool>(true, true), vec2<f32>(-351f, -1516f), vec3<u32>(1u, 2342u, 59123u), -69389i, false), Struct_2(0u, vec4<bool>(true, false, true, false), true, vec3<i32>(6158i, 1i, i32(-2147483648)))));

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(3951u ^ _wgslsmith_add_u32(max(0u, _wgslsmith_mult_u32(~0u, arg_1.x)), _wgslsmith_mod_u32(reverseBits(u_input.e) ^ 1u, reverseBits(arg_1.x >> (arg_1.x % 32u)))), 6u)];
    var var_1 = Struct_2(~(var_0.e.a & 6u), vec4<bool>(true, false, all(vec2<bool>(arg_2.x, var_0.e.c)), arg_2.x), false, var_0.e.d);
    var_1 = Struct_2(~(~1u), var_0.e.b, false, var_1.d);
    let var_2 = var_0.e;
    var var_3 = u_input.b.zwz;
    return _wgslsmith_div_f32(404f, global1.x);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1839f, 1289f, 154f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1.d, vec4<u32>(7138u, 79358u, arg_1.c.x, 0u), vec2<bool>(true, arg_1.e)))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(2710f * _wgslsmith_f_op_f32(-arg_1.b.x)))));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(1695f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, arg_1.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -208f)))), -(select(-2147483647i, 1i, arg_1.b.x > arg_1.b.x) | arg_0), Struct_1(!vec2<bool>(arg_1.a.x, select(false, arg_1.e, arg_1.e)), _wgslsmith_f_op_vec2_f32(global1.zy + global1.zy), (~vec3<u32>(arg_1.c.x, arg_1.c.x, u_input.e) | ~u_input.b.yzy) & abs(arg_1.c), _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), arg_0 | u_input.d), 17237i), select(all(!vec3<bool>(arg_1.a.x, true, false)), !(arg_1.a.x && arg_1.e), all(select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.e), vec3<bool>(arg_1.a.x, true, false), arg_1.e)))), Struct_1(!(!select(arg_1.a, vec2<bool>(false, arg_1.e), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yx), arg_1.b) - arg_1.b), arg_1.c, countOneBits(arg_1.d), !all(vec4<bool>(true, arg_1.e, arg_1.e, arg_1.a.x))), Struct_2(abs(_wgslsmith_clamp_u32(reverseBits(arg_1.c.x), reverseBits(arg_1.c.x), 21088u)), select(!select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, true), vec4<bool>(false, false, arg_1.e, arg_1.e), vec4<bool>(false, arg_1.a.x, arg_1.e, true)), vec4<bool>(true, true, true, true), arg_1.e), arg_1.a.x, ~vec3<i32>(~arg_1.d, firstLeadingBit(arg_0), min(arg_0, -11284i))));
    global0 = array<Struct_3, 6>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.c.x, ~firstLeadingBit(16035u)), 6u)];
    var var_1 = var_0.c;
    return _wgslsmith_f_op_f32(-503f - -368f);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = arg_1;
    var var_1 = Struct_2(var_0.c.x, select(!vec4<bool>(arg_1.a.x, u_input.d > 27067i, arg_1.a.x, true), vec4<bool>(any(select(vec4<bool>(arg_1.a.x, var_0.e, var_0.a.x, true), vec4<bool>(false, arg_0.x, arg_0.x, false), var_0.a.x)), !arg_1.e && false, false, true), false), any(vec3<bool>(true, all(select(vec3<bool>(true, arg_0.x, true), vec3<bool>(true, arg_0.x, arg_1.a.x), vec3<bool>(arg_1.e, false, arg_0.x))), true)), min(abs(vec3<i32>(829i, -2147483647i, 2147483647i)), min(countOneBits(vec3<i32>(u_input.d, -11880i, var_0.d)), vec3<i32>(u_input.c, var_0.d, 8980i))) << ((vec3<u32>(26621u, var_0.c.x, _wgslsmith_clamp_u32(4294967295u, 48639u, 24530u)) & _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.yyy, var_0.c), var_0.c)) % vec3<u32>(32u)));
    var_0 = Struct_1(!select(vec2<bool>(!arg_1.a.x, var_0.e), arg_1.a, !(!vec2<bool>(true, arg_1.e))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(global1.yy, _wgslsmith_f_op_vec2_f32(select(arg_1.b, vec2<f32>(-504f, var_0.b.x), vec2<bool>(var_1.b.x, var_0.a.x))))))), vec2<f32>(899f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-137f + var_0.b.x) - var_0.b.x))), max(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(72682u, 42845u, 9130u), vec3<u32>(arg_1.c.x, arg_2, arg_2) << (vec3<u32>(1u, var_1.a, var_1.a) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(~(~var_0.c), ~u_input.b.ywz >> (~vec3<u32>(arg_2, u_input.b.x, u_input.e) % vec3<u32>(32u)))), -12520i, true & (all(select(vec4<bool>(true, var_1.c, arg_1.e, arg_1.a.x), vec4<bool>(false, var_1.b.x, arg_1.e, var_0.a.x), var_1.b)) || ((47651u | var_0.c.x) != 4294967295u)));
    var_0 = Struct_1(vec2<bool>(false, all(var_1.b)), _wgslsmith_div_vec2_f32(global1.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x)))), arg_1.c, ~(0i & _wgslsmith_clamp_i32(-1i, var_1.d.x, var_0.d)) >> (55083u % 32u), true && ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, arg_1.c.x), vec2<u32>(4294967295u, 86034u)) ^ (81190u >> (arg_2 % 32u))) != arg_1.c.x));
    var_0 = Struct_1(select(var_1.b.zw, vec2<bool>(!(2147483647i >= u_input.c), true), var_1.b.xw), var_0.b, ~min(firstLeadingBit(~vec3<u32>(arg_1.c.x, arg_1.c.x, 9605u)), ~(u_input.b.wyx >> (var_0.c % vec3<u32>(32u)))), reverseBits(~var_0.d) & arg_1.d, var_0.e);
    return _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(u_input.d, 8011i));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>) -> f32 {
    global0 = array<Struct_3, 6>();
    let var_0 = u_input.b.x;
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_1(select(!(!(!arg_1.xx)), arg_1.wx, !arg_1.x), global1.xx, u_input.b.yyx >> (vec3<u32>(~arg_0.a, arg_0.a, countOneBits(var_0 | 19739u)) % vec3<u32>(32u)), func_4(select(select(vec2<bool>(arg_1.x, arg_0.c), select(vec2<bool>(false, false), vec2<bool>(false, arg_1.x), true), all(arg_0.b)), arg_0.b.yw, !(!arg_1.zw)), Struct_1(arg_0.b.yz, global1.yx, ~vec3<u32>(arg_0.a, 65438u, 1u), firstTrailingBit(1i) << (firstLeadingBit(88417u) % 32u), _wgslsmith_f_op_f32(func_2(41935i, Struct_1(arg_0.b.yx, vec2<f32>(-566f, -2009f), u_input.b.wzw, arg_0.d.x, false))) > _wgslsmith_f_op_f32(global1.x - global1.x)), u_input.e), ~firstTrailingBit(1i) >= -u_input.c);
    var var_2 = !(~0u != (u_input.b.x & min(33867u, var_0)));
    return _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_0.d.x, Struct_1(var_1.a, vec2<f32>(-330f, var_1.b.x), u_input.b.zyx, firstTrailingBit(25871i), arg_1.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) + global1.x)))));
}

fn func_5(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.d.c.xy;
    let var_1 = min(max(abs(_wgslsmith_mod_u32(abs(var_0.x), _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), _wgslsmith_sub_u32(0u, ~u_input.b.x)), ~var_0.x);
    global0 = array<Struct_3, 6>();
    var var_2 = vec3<i32>(~arg_0.e.d.x, _wgslsmith_div_i32(reverseBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, -4629i, arg_0.e.d.x), arg_0.e.d)), _wgslsmith_add_i32(53634i, countOneBits(-2147483647i) ^ u_input.a.x)), i32(-1i) * -u_input.c);
    let var_3 = arg_0.e;
    return all(vec4<bool>(true, var_3.c, !(!any(vec4<bool>(true, arg_0.d.e, arg_0.c.a.x, arg_0.d.e))), var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(1000f - global1.x)), global1.x), vec3<f32>(-951f, global1.x, _wgslsmith_f_op_f32(-197f * -1159f))));
    global0 = array<Struct_3, 6>();
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(741f)) - _wgslsmith_f_op_f32(f32(-1f) * -1867f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(567f)) + _wgslsmith_f_op_f32(-global1.x))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -1609f, global1.x), vec3<f32>(-246f, -1477f, -374f))), vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -516f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, -391f))))), func_5(Struct_3(_wgslsmith_f_op_f32(func_1(Struct_2(u_input.e, vec4<bool>(false, false, false, false), false, vec3<i32>(u_input.a.x, -16689i, -1i)), vec4<bool>(true, true, true, false))), 34734i, Struct_1(vec2<bool>(false, false), global1.yx, vec3<u32>(0u, 4294967295u, 2257u), u_input.d, false), Struct_1(vec2<bool>(false, false), global1.yy, vec3<u32>(u_input.b.x, 0u, u_input.e), u_input.c, true), Struct_2(4294967295u, vec4<bool>(true, true, true, true), true, vec3<i32>(u_input.a.x, 0i, u_input.a.x)))))));
    var var_0 = abs(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-929f * _wgslsmith_f_op_f32(415f + _wgslsmith_f_op_f32(f32(-1f) * -705f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(861f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), 993f))));
    global0 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(595f, firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 47788u), reverseBits(vec2<u32>(u_input.e, u_input.b.x)))), u_input.a, firstTrailingBit(vec3<u32>(90057u, select(4294967295u, u_input.b.x, false), ~0u)) | u_input.b.wyw, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1663f, global1.x), _wgslsmith_f_op_vec2_f32(-global1.xz)) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), 1f)))));
}

