struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29> = array<bool, 29>(false, true, false, true, false, false, true, true, true, false, true, true, true, true, false, false, true, true, false, false, false, true, false, true, false, true, true, true, false);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-1909f, -195f, 1154f, 615f), -1i);

var<private> global3: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1352f, 275f, 1000f), vec3<f32>(-754f, 1072f, 633f), vec3<f32>(1817f, 996f, -1000f), vec3<f32>(1000f, -1729f, -473f), vec3<f32>(-1649f, 1002f, -1356f), vec3<f32>(2004f, 532f, 462f), vec3<f32>(253f, -191f, 1395f), vec3<f32>(-653f, 230f, -632f), vec3<f32>(-1258f, -1525f, -691f), vec3<f32>(430f, 1239f, 553f), vec3<f32>(-1362f, -249f, -861f), vec3<f32>(-782f, 835f, -381f), vec3<f32>(1065f, -1029f, 481f), vec3<f32>(713f, 109f, 1000f), vec3<f32>(-891f, 126f, -583f), vec3<f32>(-1151f, 1323f, 1000f), vec3<f32>(984f, -1000f, -605f), vec3<f32>(-556f, -117f, -1118f), vec3<f32>(2089f, 1222f, 100f), vec3<f32>(879f, -1034f, 963f), vec3<f32>(967f, 274f, 878f), vec3<f32>(-529f, 1199f, -961f), vec3<f32>(-711f, 863f, -2373f), vec3<f32>(1000f, -1000f, -900f), vec3<f32>(-895f, 109f, -205f), vec3<f32>(-2490f, 138f, -1000f), vec3<f32>(590f, 1668f, -716f));

var<private> global4: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2.a.x))))), _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - -460f), 108f), ~(firstTrailingBit(abs(global2.b)) ^ u_input.b.x));
    global3 = array<vec3<f32>, 27>();
    global0 = array<bool, 29>();
    var var_1 = _wgslsmith_f_op_vec4_f32(var_0.a + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-300f, global1.a.x, global2.a.x, global1.a.x), vec4<f32>(-1338f, -1598f, global1.a.x, global1.a.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)), vec4<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 29u)], true, global0[_wgslsmith_index_u32(4136u, 29u)], global0[_wgslsmith_index_u32(34612u, 29u)])), false | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 20577u, 0u), vec4<u32>(4294967295u, 0u, 1u, 58963u)), 29u)], global0[_wgslsmith_index_u32(1u, 29u)], any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]))))));
    global1 = Struct_1(global2.a, -16976i);
    return vec3<u32>(0u, ~12894u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3990u, 63382u, 17590u, 1u), vec4<u32>(4294967295u, 0u, 48869u, 34633u)), 5u)]), vec3<u32>(4294967295u, ~39058u, 34505u)), max(~1u, firstLeadingBit(35321u))));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    global3 = array<vec3<f32>, 27>();
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x - -792f) - -593f)), 1507f), arg_2 << (_wgslsmith_sub_u32(reverseBits(4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(14037u, 35814u), vec2<u32>(100040u, 0u))) % 32u));
    let var_1 = (_wgslsmith_div_vec3_u32(func_3(), firstTrailingBit(firstLeadingBit(vec3<u32>(1u, 31655u, 1u)))) ^ vec3<u32>(1u, 1u, 1u)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, max(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1903u, 46926u, 73896u), vec4<u32>(25068u, 0u, 0u, 9091u)))), ~(vec3<u32>(32957u, 30966u, 28526u) | func_3())) % vec3<u32>(32u));
    var var_2 = firstTrailingBit(u_input.b.zx) & firstLeadingBit(firstTrailingBit(countOneBits(-vec2<i32>(7912i, 14618i))));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), global2.a.x, 167f, _wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) + _wgslsmith_f_op_f32(arg_1.x - var_0.a.x)))), 25622i);
    return i32(-1i) * -global1.b;
}

fn func_1() -> bool {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a.x))) - _wgslsmith_f_op_f32(round(-1370f))), _wgslsmith_f_op_f32(global2.a.x * global2.a.x), 1000f), 1i);
    let var_1 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), _wgslsmith_f_op_f32(trunc(var_0.a.x)), var_0.a.x), select(max(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global2.b), vec2<i32>(-25030i, -29325i)), 1i), _wgslsmith_mod_i32(func_2(-1i, vec2<f32>(-846f, global2.a.x), 302i), abs(5161i)), global0[_wgslsmith_index_u32(1u, 29u)] && true) & countOneBits(~(-2147483647i)));
    let var_2 = ~vec3<u32>(1132u, _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(5520u, 4294967295u, 91194u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 94997u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), ~(~reverseBits(9726u)));
    global1 = var_0;
    global1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -195f))), global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1165f))), _wgslsmith_f_op_f32(-551f + 1387f), global0[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -435f)))), -countOneBits(var_1.b ^ -3250i));
    return global0[_wgslsmith_index_u32(var_2.x, 29u)];
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<bool, 29>();
    var var_0 = abs(((~vec2<u32>(1u, 1u) | firstTrailingBit(vec2<u32>(0u, 8555u))) >> (max(vec2<u32>(4294967295u, 0u), vec2<u32>(22640u, 0u)) % vec2<u32>(32u))) | abs(~vec2<u32>(0u, 4294967295u)));
    var var_1 = vec4<bool>(arg_0, true, arg_1.x, false);
    let var_2 = select(!select(select(select(arg_1, arg_1, arg_1), vec2<bool>(global0[_wgslsmith_index_u32(1u, 29u)], false), global2.a.x != -894f), vec2<bool>(false, !arg_1.x), !(!arg_0)), !select(!select(vec2<bool>(false, arg_0), arg_1, true), vec2<bool>(true, global0[_wgslsmith_index_u32(3845u, 29u)] || true), vec2<bool>(true, true)), select(select(var_1.zz, !var_1.yw, select(vec2<bool>(arg_0, var_1.x), !vec2<bool>(false, arg_1.x), var_0.x < var_0.x)), select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, false, var_1.x, arg_0)), false), false), true));
    let var_3 = Struct_1(global1.a, ~(_wgslsmith_sub_i32(~global2.b, _wgslsmith_add_i32(u_input.b.x, global1.b)) & global2.b));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 5>();
    global3 = array<vec3<f32>, 27>();
    var var_0 = global1.b;
    global4 = array<vec3<bool>, 5>();
    global1 = func_4(!(any(!vec4<bool>(global0[_wgslsmith_index_u32(13227u, 29u)], global0[_wgslsmith_index_u32(14870u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(2704u, 29u)])) != !func_1()), vec2<bool>(any(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 29u)], false, global0[_wgslsmith_index_u32(4294967295u, 29u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(37446u, 29u)], global0[_wgslsmith_index_u32(1u, 29u)], global0[_wgslsmith_index_u32(4294967295u, 29u)]), true)), select(true, global0[_wgslsmith_index_u32(1u, 29u)], select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 50975u), 29u)], any(vec2<bool>(global0[_wgslsmith_index_u32(17619u, 29u)], global0[_wgslsmith_index_u32(63683u, 29u)])), true))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, -16506i);
}

