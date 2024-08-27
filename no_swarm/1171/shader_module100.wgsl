struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = Struct_1(~(~(u_input.a | global0[_wgslsmith_index_u32(u_input.a, 24u)])) >> (abs(global0[_wgslsmith_index_u32(84691u, 24u)]) % 32u));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1928f - -513f) * _wgslsmith_f_op_f32(trunc(-435f))))))));
    let var_2 = vec3<bool>(false, false, true);
    let var_3 = 1u;
    var_1 = _wgslsmith_f_op_f32(abs(-855f));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1444f, -785f, -755f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1354f, 605f, -1296f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, -1681f, 2266f)), vec3<f32>(868f, 1000f, 1962f))))) + vec3<f32>(_wgslsmith_f_op_f32(max(-651f, -1098f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f + 1089f)))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1103f + 649f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1690f)))), 410f), 993f, 728f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(~vec3<u32>(0u, 359u, 4294967295u) << (vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 4294967295u) % vec3<u32>(32u)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(var_0.x, -1215f)), _wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(599f, var_0.x, 2335f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 494f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1147f, var_0.x, 431f) * vec3<f32>(var_0.x, -3249f, 789f)), arg_1.x))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-337f, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) + _wgslsmith_f_op_f32(abs(-1000f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(638f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1074f - var_0.x), var_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(156f, 1391f)) * _wgslsmith_f_op_f32(-var_0.x)))), -428f);
    let var_2 = u_input.c;
    var var_3 = arg_0;
    return arg_2;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    var var_0 = Struct_1(1u);
    let var_1 = 5177i;
    return func_4(vec2<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), false != !all(vec4<bool>(false, true, true, true))), -vec2<i32>(u_input.b, 41811i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_3 + -697f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-233f + arg_1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1149f, -983f)), _wgslsmith_f_op_f32(trunc(-1344f)))))), arg_0);
}

fn func_1(arg_0: u32) -> vec2<bool> {
    let var_0 = func_5(func_4(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))), (u_input.c.xy & -u_input.c.zw) << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)]), vec2<u32>(0u, u_input.a)), ~vec2<u32>(1u, arg_0)) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(707f * -1000f) * _wgslsmith_div_f32(-909f, -2084f)), -839f, 1000f), func_2(i32(-1i) * -2147483647i, vec2<bool>(true, true), Struct_1(abs(63287u)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-279f, -677f))), arg_0, _wgslsmith_f_op_f32(1479f + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2011f, _wgslsmith_f_op_f32(sign(-1687f))), _wgslsmith_f_op_f32(-803f - _wgslsmith_div_f32(-715f, 418f)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))))));
    var var_1 = vec2<i32>(_wgslsmith_div_i32(~0i, -_wgslsmith_dot_vec3_i32(~u_input.c.zxy, vec3<i32>(-2147483647i, u_input.b, 2147483647i))), 0i);
    let var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(all(vec2<bool>(true, false)), 15185i != var_1.x, true)), vec3<bool>(true, any(vec3<bool>(any(vec2<bool>(false, true)), false, 0u != arg_0)), false), true);
    var var_3 = var_0;
    let var_4 = Struct_1(arg_0);
    return select(select(var_2.xx, select(select(var_2.yy, !var_2.yz, var_2.x), select(select(var_2.yx, vec2<bool>(true, var_2.x), var_2.xy), var_2.xy, select(vec2<bool>(true, true), vec2<bool>(var_2.x, true), var_2.xz)), vec2<bool>(true, all(vec4<bool>(var_2.x, true, false, false)))), select(vec2<bool>(any(vec4<bool>(false, true, var_2.x, var_2.x)), false), vec2<bool>(all(var_2.xy), var_2.x), false)), select(select(select(vec2<bool>(var_2.x, true), vec2<bool>(true, var_2.x), u_input.c.x <= 0i), select(var_2.xy, !var_2.yz, any(vec2<bool>(var_2.x, var_2.x))), select(!vec2<bool>(false, var_2.x), !vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, false))), select(select(select(vec2<bool>(var_2.x, true), var_2.zy, var_2.x), var_2.yz, vec2<bool>(var_2.x, var_2.x)), vec2<bool>(var_2.x, true), var_2.yz), vec2<bool>(!all(vec2<bool>(var_2.x, false)), false)), var_2.x);
}

fn func_6(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1.zy;
    let var_1 = _wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(0u, 24u)], reverseBits(global0[_wgslsmith_index_u32(u_input.a, 24u)])), _wgslsmith_add_u32(52189u, u_input.a) >> (71307u % 32u), _wgslsmith_mod_u32(firstTrailingBit(u_input.a), 100865u)), _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(arg_3.a, 39480u, u_input.a)), countOneBits(vec3<u32>(arg_3.a, u_input.a, 35011u)) & (vec3<u32>(arg_3.a, 24848u, global0[_wgslsmith_index_u32(u_input.a, 24u)]) & vec3<u32>(0u, u_input.a, 1u))) ^ ~(~(~vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 24u)], u_input.a))));
    return Struct_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(73781u, global0[_wgslsmith_index_u32(var_1.x, 24u)] << (0u % 32u))), 24u)]);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    global0 = array<u32, 24>();
    var var_1 = func_6(vec2<bool>(select(false, !func_1(0u).x, true), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -206f, -1546f), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(vec2<i32>(-41340i, -58564i)), _wgslsmith_sub_vec2_i32(u_input.c.zz, vec2<i32>(41549i, u_input.c.x))), u_input.c.wx), func_5(Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37776u, 24u)], 24u)], 66710u, arg_1.a), vec3<u32>(var_0.a, var_0.a, 0u)), vec3<u32>(arg_2.a, arg_0.a, arg_2.a))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 323f))), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(80211u, 16799u, u_input.a), vec3<u32>(4294967295u, arg_0.a, arg_2.a) ^ vec3<u32>(1u, var_0.a, 1u), any(vec3<bool>(true, true, false))), _wgslsmith_mult_vec3_u32(vec3<u32>(68656u, var_0.a, arg_0.a), vec3<u32>(arg_1.a, arg_2.a, arg_2.a)) ^ ~vec3<u32>(arg_1.a, 1u, global0[_wgslsmith_index_u32(1u, 24u)])), 2243f));
    global0 = array<u32, 24>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-473f, 216f, -2296f, 530f)) - _wgslsmith_div_vec4_f32(vec4<f32>(421f, -2885f, 486f, 1520f), vec4<f32>(-1254f, -1333f, 1245f, -607f))), _wgslsmith_div_vec4_f32(vec4<f32>(-945f, -504f, -192f, -881f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(780f, 1000f, 617f, 121f)))))));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1065f)), _wgslsmith_f_op_f32(sign(var_2.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-477f)) - 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63426u, 24u)], 24u)], 78446u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 24u)])), 0u), 4294967295u)));
    global0 = array<u32, 24>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2124f * 610f) - -328f);
    var var_2 = false;
    var var_3 = _wgslsmith_add_i32(39753i, abs(u_input.c.x));
    let x = u_input.a;
    s_output = func_7(Struct_1(1u), func_6(func_1(_wgslsmith_mod_u32(var_0.a, u_input.a | var_0.a)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(global0[_wgslsmith_index_u32(35248u, 24u)], 73474u, u_input.a))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, var_1, -426f), vec3<f32>(-1000f, 127f, var_1), vec3<bool>(false, true, false)))), vec3<f32>(_wgslsmith_f_op_f32(1000f + 197f), _wgslsmith_f_op_f32(var_1 - 122f), -204f))), max(_wgslsmith_sub_vec2_i32(u_input.c.xy, abs(u_input.c.zx)), vec2<i32>(u_input.b & 1i, ~1i)), func_5(Struct_1(~global0[_wgslsmith_index_u32(38681u, 24u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1177f) * vec2<f32>(var_1, 1221f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(615f, var_1) * vec2<f32>(258f, var_1))), func_2(_wgslsmith_sub_i32(-12982i, 1i), vec2<bool>(false, false), Struct_1(u_input.a)).a, 944f)), func_6(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2068f, -1139f, var_1)))), -(u_input.c.xy | select(u_input.c.wx, u_input.c.wx, vec2<bool>(true, true))), func_6(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_f32(var_1 + 480f), var_1), abs(vec2<i32>(2147483647i, u_input.c.x) & vec2<i32>(u_input.c.x, 283i)), func_5(func_5(Struct_1(10532u), vec2<f32>(-470f, -3316f), var_0.a, var_1), vec2<f32>(606f, 123f), 69509u, -1234f))));
}

