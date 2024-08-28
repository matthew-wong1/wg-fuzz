struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(487f, 935f, 1645f), vec3<f32>(-818f, 1031f, -2111f), vec3<f32>(-263f, 534f, 1173f), vec3<f32>(1000f, -2501f, 208f), vec3<f32>(-418f, -1000f, -466f), vec3<f32>(693f, -367f, -897f), vec3<f32>(-226f, -198f, -451f), vec3<f32>(-357f, 169f, -576f), vec3<f32>(124f, 679f, -277f), vec3<f32>(2754f, 2040f, -541f), vec3<f32>(-849f, -1109f, 1459f), vec3<f32>(291f, -626f, 1072f), vec3<f32>(-1000f, -413f, 1535f), vec3<f32>(1564f, -1000f, 1802f), vec3<f32>(641f, -540f, 174f));

var<private> global1: array<f32, 19>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(1u, 0u))), vec2<u32>(select(1u, ~0u, true), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 0u, 20256u)), ~4294967295u))), vec2<u32>(~(~firstTrailingBit(1u)), countOneBits(~_wgslsmith_div_u32(22608u, 1u))));
    var var_1 = Struct_1(select(select(36848i != ~arg_0.x, false, true), false, any(select(select(vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, false), false), !vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), true, _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(32362i, 11424i, 6817i), ~arg_0.yyx), vec3<i32>(arg_0.x, abs(-arg_0.x), -1i)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(195f)), _wgslsmith_f_op_f32(f32(-1f) * -1280f)), -1460f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(14917u, 19u)], 1144f)) + _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 19u)])))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20526u), vec2<u32>(0u, 1u)), 19u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(29513u, 19u)]))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(39661u, abs(14629u)), 19u)]), any(arg_1) || false)), ~u_input.a.x <= reverseBits(-2428i));
    var var_2 = global0[_wgslsmith_index_u32(abs(min(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 36078u), vec2<u32>(1u, 1u)) << (660u % 32u), 66897u)), 15u)];
    var_1 = Struct_1(true, !any(!select(vec3<bool>(arg_1.x, var_1.e, false), vec3<bool>(var_1.a, false, true), var_1.a)), abs(~u_input.a), _wgslsmith_f_op_vec3_f32(abs(var_1.d)), all(!select(!vec3<bool>(true, var_1.e, false), select(vec3<bool>(var_1.e, var_1.e, arg_1.x), vec3<bool>(arg_1.x, false, false), vec3<bool>(true, var_1.e, false)), select(vec3<bool>(var_1.b, arg_1.x, arg_1.x), vec3<bool>(var_1.a, false, true), vec3<bool>(true, false, true)))));
    var_2 = vec3<f32>(-395f, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-604f, _wgslsmith_f_op_f32(-402f * _wgslsmith_f_op_f32(-138f - -633f)))) * var_1.d.x));
    return ~0u;
}

fn func_2() -> u32 {
    global0 = array<vec3<f32>, 15>();
    global0 = array<vec3<f32>, 15>();
    global1 = array<f32, 19>();
    var var_0 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(func_3(vec4<i32>(i32(-1i) * -28827i, _wgslsmith_sub_i32(-1i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(-6837i, 51915i, -70334i, u_input.a.x)), _wgslsmith_div_i32(41851i, u_input.a.x)) | ~(~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), false)), 15u)] - vec3<f32>(global1[_wgslsmith_index_u32(25629u, 19u)], -644f, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(87402u, 19499u, 29119u), ~vec3<u32>(5099u, 59537u, 38357u)), 19u)]));
    var var_1 = vec2<f32>(global1[_wgslsmith_index_u32(8424u, 19u)], _wgslsmith_div_f32(-1559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(309f)))))));
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(92674u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(49128u, 4294967295u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, 48218u), vec3<u32>(1u, 1u, 1u)))), ~vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_1() -> bool {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_u32(1u, 1u) << (1u % 32u)) >= func_2(), true, u_input.a, _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 3801u), vec2<u32>(23201u, 54398u)), _wgslsmith_clamp_u32(41933u, 1u, 1u))), 15u)]), any(vec2<bool>(true, true)));
    var var_1 = Struct_1(false, var_0.b, countOneBits(reverseBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(-45147i, -1i, -2147483647i), vec3<i32>(1i, 1i, 1i)))), vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(max(719f, _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(68442u, 19u)])))), global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(1u, 0u, 10811u)), 19u)]), false);
    var var_2 = var_0.e;
    var_0 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~18881u, 1842u), ~vec2<u32>(4294967295u, 4294967295u)) < ~min(~0u, select(60022u, 33328u, true)), true, reverseBits(var_0.c), _wgslsmith_div_vec3_f32(global0[_wgslsmith_index_u32(~(~1u), 15u)], var_0.d), true);
    var var_3 = select(!(!(!(!vec3<bool>(true, var_0.b, false)))), !select(!vec3<bool>(false, var_0.b, var_1.b), select(select(vec3<bool>(false, var_1.b, false), vec3<bool>(true, false, false), false), vec3<bool>(var_0.e, var_0.b, var_0.b), select(vec3<bool>(var_1.b, var_1.e, var_0.e), vec3<bool>(false, var_1.a, var_0.a), vec3<bool>(var_1.b, true, var_1.e))), _wgslsmith_f_op_f32(231f - var_0.d.x) < 2352f), all(vec2<bool>(!var_0.b, true)));
    return all(vec3<bool>(any(vec4<bool>(true, var_0.e, true, false)), var_1.a || true, false));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(arg_0.d.x)), _wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(83903u, 19u)])) - _wgslsmith_f_op_f32(f32(-1f) * -2087f)))), arg_0.d.x);
    global0 = array<vec3<f32>, 15>();
    let var_1 = arg_0;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.d.x))), global1[_wgslsmith_index_u32(max(~(~10693u), func_3(_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0.c.x, arg_0.c.x, -25899i, var_1.c.x), vec4<i32>(u_input.a.x, u_input.a.x, 5498i, 0i), false), ~vec4<i32>(u_input.a.x, 12195i, var_1.c.x, -2147483647i)), vec2<bool>(true, false))), 19u)], -1551f);
    var var_2 = 1u;
    return Struct_1(var_1.e, func_1(), u_input.a, _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(min(min(54296u, max(4923u, 18276u)), ~1u), 15u)])), any(vec3<bool>(!(var_1.d.x >= var_0.x), all(vec2<bool>(var_1.e, true)), var_1.d.x != 1000f)));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global0 = array<vec3<f32>, 15>();
    var var_0 = func_4(arg_0);
    var var_1 = any(!select(select(vec2<bool>(true, true), !vec2<bool>(true, arg_0.a), vec2<bool>(arg_1, arg_1)), select(!vec2<bool>(arg_1, var_0.a), select(vec2<bool>(arg_0.e, arg_0.a), vec2<bool>(false, arg_1), true), any(vec4<bool>(var_0.e, false, true, false))), vec2<bool>(all(vec3<bool>(arg_1, false, false)), all(vec3<bool>(var_0.b, var_0.a, arg_1)))));
    let var_2 = _wgslsmith_add_i32(var_0.c.x, _wgslsmith_sub_i32(~select(28677i, var_0.c.x, arg_0.a), u_input.a.x));
    var var_3 = func_4(func_4(arg_0));
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    global1 = array<f32, 19>();
    global0 = array<vec3<f32>, 15>();
    let var_0 = !select(vec2<bool>(arg_2.x, any(arg_2.xy)), select(arg_2.xy, select(arg_2.zz, !vec2<bool>(arg_2.x, arg_2.x), false), !func_1()), true);
    let var_1 = false;
    let var_2 = func_5(func_4(arg_0), -856f > _wgslsmith_f_op_f32(exp2(arg_0.d.x)));
    return func_5(func_4(Struct_1(var_2.b, any(vec3<bool>(var_2.e, arg_0.b, true)), max(vec3<i32>(var_2.c.x, arg_0.c.x, var_2.c.x), ~vec3<i32>(u_input.a.x, 9442i, -40511i)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(6506u, 15u)] + global0[_wgslsmith_index_u32(arg_1.x, 15u)]))), any(vec4<bool>(var_0.x, var_0.x, var_1, true)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(Struct_1(func_1(), true, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), global0[_wgslsmith_index_u32(31650u, 15u)], any(vec2<bool>(false, true)))), all(vec2<bool>(false, false))), ~min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(!(select(0i, -2147483647i, false) <= (-30360i << (1u % 32u))), all(vec4<bool>(global1[_wgslsmith_index_u32(27000u, 19u)] >= -595f, true, true, any(vec2<bool>(false, false)))), !all(vec2<bool>(true, true))));
    let var_1 = func_6(func_5(func_6(Struct_1(global1[_wgslsmith_index_u32(13585u, 19u)] < -1603f, var_0.a, u_input.a & u_input.a, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, -1120f, -215f), vec3<f32>(959f, global1[_wgslsmith_index_u32(28130u, 19u)], global1[_wgslsmith_index_u32(8261u, 19u)]), var_0.a)), func_6(Struct_1(var_0.b, var_0.b, u_input.a, global0[_wgslsmith_index_u32(0u, 15u)], true), vec4<u32>(0u, 1u, 0u, 24750u), vec3<bool>(var_0.a, var_0.e, true)).b), abs(vec4<u32>(1u, 1u, 1u, 1u)), select(!vec3<bool>(var_0.a, var_0.b, var_0.e), !vec3<bool>(false, var_0.e, true), !vec3<bool>(var_0.a, var_0.a, var_0.b))), var_0.b), ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 1u), ~1u, _wgslsmith_mod_u32(58697u, 4294967295u), reverseBits(59598u)), vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(false, !var_0.a, func_4(func_6(Struct_1(var_0.e, false, var_0.c, var_0.d, var_0.b), vec4<u32>(0u, 4294967295u, 1u, 0u), vec3<bool>(false, true, var_0.a))).d.x == -670f));
    var var_2 = vec3<bool>(!func_6(Struct_1(var_1.a, any(vec2<bool>(var_0.b, var_0.b)), ~vec3<i32>(var_0.c.x, var_1.c.x, var_1.c.x), var_1.d, true && var_1.b), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, false, var_1.b, true)), vec3<bool>(true, var_0.d.x <= global1[_wgslsmith_index_u32(63085u, 19u)], var_0.e)).b, func_5(Struct_1(!func_4(Struct_1(var_0.a, false, var_1.c, var_1.d, true)).b, (true || var_0.a) & (var_0.a == var_0.b), vec3<i32>(1i | u_input.a.x, 1i, -1i), var_0.d, true), var_1.a).a, var_1.b);
    var var_3 = ~((~53422u & func_3(vec4<i32>(u_input.a.x, -12020i, -33097i, u_input.a.x), vec2<bool>(var_0.a, true))) << (select(~1u, ~23245u, all(var_2.zz)) % 32u)) << (~_wgslsmith_div_u32(0u, func_2()) % 32u);
    var_0 = func_6(var_1, firstLeadingBit(~vec4<u32>(1u, 25590u, 22341u, ~1u)), !select(vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, false, var_2.x), !(!vec3<bool>(var_1.e, true, var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~reverseBits(9257u), 19u)], abs(53534u), -7492i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), 1853f) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.d.zy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.d.x, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1215f)), 1334f)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], -529f) - vec2<f32>(-432f, var_1.d.x)))))));
}

