struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, true, true, true, true, true, true, true, true, false, false, false, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_2(Struct_1(-1265f, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1754f + 1025f), -450f, _wgslsmith_f_op_f32(abs(965f)), -226f))), vec4<f32>(_wgslsmith_f_op_f32(-1073f - -1498f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1678f, global0[_wgslsmith_index_u32(6382u, 14u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1360f, -677f))), _wgslsmith_f_op_f32(abs(-871f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1949f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.c, u_input.c), vec4<u32>(u_input.d, u_input.d, 0u, 57092u)), vec4<u32>(u_input.b.x, 4294967295u, 45533u, u_input.b.x)), reverseBits(vec4<u32>(u_input.b.x, u_input.c, u_input.d, u_input.b.x)) << (select(vec4<u32>(u_input.d, u_input.b.x, u_input.c, 6074u), vec4<u32>(u_input.d, u_input.c, u_input.b.x, u_input.c), global0[_wgslsmith_index_u32(u_input.c, 14u)]) % vec4<u32>(32u))), 14u)]), 1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-147f, _wgslsmith_f_op_f32(abs(197f)))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(199f, -1090f, 3351f, -385f), vec4<f32>(988f, -694f, 1011f, -1186f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(286f, 194f, 727f, 432f) - vec4<f32>(948f, 350f, 591f, -1528f)), true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-824f + -3012f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-994f)), _wgslsmith_f_op_f32(-372f - 479f)), -1725f, -1682f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -265f)))))), true));
    var_0 = Struct_2(var_0.a, 2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -485f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a + -641f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.c) * vec4<f32>(125f, var_0.a.a, -1652f, -964f)))), _wgslsmith_div_vec4_f32(var_0.d.c, var_0.a.b), _wgslsmith_f_op_vec2_f32(trunc(var_0.a.b.wz)), !global0[_wgslsmith_index_u32(u_input.d, 14u)]));
    let var_1 = !var_0.a.e;
    var var_2 = Struct_2(var_0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(58276i, -40030i >> (~4294967295u % 32u), ~3699i), max(_wgslsmith_div_vec3_i32(arg_0, vec3<i32>(arg_0.x, var_0.b, u_input.a)), -vec3<i32>(-1i, -14206i, 0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1449f))), Struct_1(var_0.d.c.x, vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(sign(3027f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f - -1067f)), _wgslsmith_f_op_f32(trunc(710f)), var_0.c, var_0.a.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.d.x), _wgslsmith_f_op_f32(-var_0.a.b.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -301f), var_0.c)), true));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1560f))), _wgslsmith_f_op_vec4_f32(max(var_2.a.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.d.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_2.a.c + var_0.d.b)))), var_0.d.c.wz, (var_0.a.d.x < 185f) && true), firstLeadingBit(countOneBits(u_input.a)), _wgslsmith_div_f32(var_0.a.a, _wgslsmith_div_f32(var_0.d.a, _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(-1125f - -237f)))), Struct_1(_wgslsmith_f_op_f32(abs(1375f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1205f, var_0.a.d.x, -1222f, var_2.d.c.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, var_2.c, 681f, -852f) - _wgslsmith_f_op_vec4_f32(var_0.a.c * var_0.a.c))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1168f, var_0.d.b.x)), var_0.d.c.x, _wgslsmith_f_op_f32(-1435f - 234f), _wgslsmith_f_op_f32(-1700f + -1382f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.d.b * var_2.a.b))), vec2<f32>(245f, var_0.a.b.x), -881f >= _wgslsmith_f_op_f32(trunc(1523f))));
    return -568f;
}

fn func_2() -> Struct_1 {
    global0 = array<bool, 14>();
    let var_0 = vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(45735u, ~1u), 14u)], false);
    var var_1 = global0[_wgslsmith_index_u32(12141u, 14u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 917f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(359f, 1000f, 1253f, -554f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(f32(-1f) * -2421f), _wgslsmith_f_op_f32(-203f + -1586f), _wgslsmith_f_op_f32(func_3(vec3<i32>(-21105i, -1i, u_input.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-637f, -538f, 455f, -456f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1272f, -2447f, -307f) - vec4<f32>(556f, 1434f, -1383f, -778f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(858f, 287f, 2978f, -1104f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1382f, 1545f, -389f, 372f), vec4<f32>(-1311f, -742f, -406f, 1202f)))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(850f))), _wgslsmith_f_op_f32(sign(854f))), all(vec4<bool>(global0[_wgslsmith_index_u32(countOneBits(u_input.d), 14u)], var_0.x, 1i > select(u_input.a, u_input.a, false), false)));
    let var_3 = ~(-(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -23257i), firstLeadingBit(vec3<i32>(u_input.a, -23294i, 52227i))) ^ u_input.a));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x * -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1391f - -1437f), var_2.b.x)), -283f)))), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(517f * _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(868f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.c, vec4<f32>(-626f, 1233f, 1324f, 1360f))) * _wgslsmith_f_op_vec4_f32(-var_2.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(446f, var_2.c.x) + vec2<f32>(var_2.d.x, var_2.c.x))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_2.c.ww)))), (var_2.b.x > _wgslsmith_f_op_f32(floor(-1187f))) & any(var_0));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> Struct_2 {
    let var_0 = 16047u;
    var var_1 = arg_0;
    var var_2 = vec3<i32>(-23317i, 0i, arg_2);
    var_1 = -12524i;
    return Struct_2(func_2(), _wgslsmith_dot_vec2_i32(max(countOneBits(max(vec2<i32>(0i, arg_0), vec2<i32>(var_2.x, -39070i))), abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2, -1i), var_2.yy))), vec2<i32>(countOneBits(arg_2), ~arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2198f))))), arg_1);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<f32> {
    global0 = array<bool, 14>();
    let var_0 = func_4(5035i, func_2(), 7528i);
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.a.c.zz, vec2<f32>(-460f, var_0.d.a))))), var_0.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    let var_0 = Struct_1(-620f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2320f, -1849f, -586f, 725f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-754f, 1525f, -812f, -450f) - vec4<f32>(-1046f, -689f, 306f, -525f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1241f, 1000f, 481f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 1000f, -685f, -380f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(855f, 423f, 615f, 272f)))))), vec4<f32>(1f, 651f, -509f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(53549i, -35636i), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 14u)])), vec3<u32>(53931u, u_input.d, u_input.c)))) + _wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(u_input.a, u_input.a & 32233i), _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.d, 16097u, 1u)), vec3<u32>(9853u, u_input.d, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.d, u_input.d), vec3<u32>(0u, 4294967295u, 1u)))))), func_2().e);
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 14u)];
    global0 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(i32(-1i) * -firstLeadingBit(2147483647i), u_input.a), u_input.c, min(~vec3<i32>(_wgslsmith_sub_i32(8879i, 1i), u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), vec3<i32>(0i, u_input.a, -1i)), vec3<u32>(firstTrailingBit(32827u) << (_wgslsmith_clamp_u32(abs(u_input.d), u_input.d, ~45976u) % 32u), u_input.d, 11177u & abs(~u_input.d)));
}

