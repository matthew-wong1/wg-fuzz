struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(-267f, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -30754i)), Struct_1(1047f, vec4<i32>(-1i, -1i, 25089i, 42567i)), Struct_1(823f, vec4<i32>(-16778i, 3926i, -29932i, 2147483647i)), Struct_1(-783f, vec4<i32>(0i, 2147483647i, 2147483647i, 2147483647i)), Struct_1(1000f, vec4<i32>(2147483647i, 39212i, 2147483647i, -33982i)), Struct_1(-1109f, vec4<i32>(2147483647i, 14181i, 5997i, -1i)), Struct_1(274f, vec4<i32>(-18072i, -32358i, -32875i, -33650i)), Struct_1(1675f, vec4<i32>(5662i, 0i, -28664i, i32(-2147483648))), Struct_1(735f, vec4<i32>(8857i, 2147483647i, i32(-2147483648), -9078i)), Struct_1(-950f, vec4<i32>(21549i, 2147483647i, 2147483647i, 1i)), Struct_1(-1217f, vec4<i32>(2147483647i, 14413i, 0i, 20002i)), Struct_1(465f, vec4<i32>(23544i, -1i, 1i, i32(-2147483648))), Struct_1(737f, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 1i)), Struct_1(-795f, vec4<i32>(0i, -12120i, 20522i, 1i)), Struct_1(448f, vec4<i32>(1i, i32(-2147483648), 21906i, 36917i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global0 = array<u32, 11>();
    let var_0 = Struct_2(select(select(!(!vec3<bool>(false, false, arg_0)), !vec3<bool>(arg_0, arg_0, true), any(select(vec4<bool>(arg_0, true, true, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), arg_0))), vec3<bool>(true, true, true), (u_input.a.x | 2553i) > (~u_input.a.x | abs(u_input.a.x))), 6210i, Struct_1(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1199f)))), ~vec4<i32>(-7654i, 32007i, u_input.a.x, u_input.a.x) & ~(-vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -2147483647i))), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 68516u, 12639u) << (vec3<u32>(global0[_wgslsmith_index_u32(70916u, 11u)], 0u, u_input.b) % vec3<u32>(32u)), ~vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], u_input.b, u_input.b))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(12235u, u_input.b), ~vec2<u32>(global0[_wgslsmith_index_u32(45301u, 11u)], 0u))), 15u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, 1000f));
    global0 = array<u32, 11>();
    var var_2 = Struct_3(!vec4<bool>(var_0.a.x, all(vec3<bool>(true, true, true)), all(select(var_0.a.zx, vec2<bool>(true, var_0.a.x), var_0.a.x)), !(arg_0 & true)), var_0, !var_0.a.yz, ~(-15231i));
    return all(var_0.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>) -> Struct_2 {
    global1 = array<Struct_1, 15>();
    var var_0 = Struct_3(vec4<bool>(true, true, true, true), Struct_2(!vec3<bool>(func_3(true, vec4<f32>(-409f, arg_1.x, arg_1.x, arg_1.x)), false, any(vec4<bool>(true, false, true, false))), countOneBits(~firstTrailingBit(2147483647i)), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 11u)], 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), arg_0.x);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1u, u_input.b, u_input.b)) | ((vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(19551u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)]) ^ vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 0u)) ^ abs(vec3<u32>(4294967295u, 89441u, 4294967295u)))), vec3<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 11u)], u_input.b, 0u), firstTrailingBit(vec4<u32>(397u, 0u, u_input.b, 0u))) & firstLeadingBit(u_input.b), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51385u, 11u)], 11u)])), 15u)];
    var_0 = Struct_3(var_0.a, var_0.b, vec2<bool>(var_0.b.a.x, var_0.a.x), arg_0.x);
    global1 = array<Struct_1, 15>();
    return Struct_2(var_0.b.a, 2147483647i, var_0.b.c, var_0.b.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.a), 1144f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.a * -773f) + _wgslsmith_f_op_f32(sign(arg_0.c.a))))), arg_0.c.a);
    global0 = array<u32, 11>();
    let var_1 = func_3((_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_0.c.b, arg_0.d.b), 0i, _wgslsmith_div_i32(-11198i, 15054i)) & (~21200i << (abs(0u) % 32u))) == _wgslsmith_dot_vec4_i32(vec4<i32>(~58813i, -2147483647i, -arg_2.x, 0i), _wgslsmith_add_vec4_i32(~arg_0.c.b, vec4<i32>(-2147483647i, 0i, 16019i, arg_0.b) ^ vec4<i32>(2147483647i, 14386i, arg_2.x, 2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, 472f, var_0.x, 295f))))) - var_0));
    var var_2 = var_0.zx;
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1373f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -939f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -292f)))));
    return Struct_3(arg_1.b, func_2(countOneBits(arg_0.c.b.yxx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.zwx))))), select(!vec2<bool>(var_1, true), !arg_0.a.zz, !(_wgslsmith_sub_u32(u_input.b, global0[_wgslsmith_index_u32(u_input.b, 11u)]) >= u_input.b)), -abs(1i) >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 11u)], 11u)] << (u_input.b % 32u), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 11u)]), 11u)]), 11u)], u_input.b) % 32u));
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<u32, 11>();
    let var_0 = false;
    var var_1 = Struct_1(arg_0, vec4<i32>(~(-1i), u_input.a.x, firstLeadingBit(-(0i & u_input.a.x)), ~(-u_input.a.x)));
    var var_2 = countOneBits(select(firstTrailingBit(select(vec4<i32>(53463i, var_1.b.x, -7870i, -1i), vec4<i32>(u_input.a.x, 34037i, 0i, 0i), var_0)), firstLeadingBit(~var_1.b), select(!vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, false == var_0, var_0, var_0), var_0)));
    let var_3 = func_4(func_2(-max(~var_1.b.yxz, vec3<i32>(-1i, 0i, u_input.a.x) & vec3<i32>(u_input.a.x, -15556i, 1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1400f, 251f, -300f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1708f, -591f, 1732f)), true)))), Struct_5(select(!func_2(vec3<i32>(u_input.a.x, 65954i, var_2.x), vec3<f32>(824f, var_1.a, -776f)).a.yx, func_2(~var_2.wwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1913f, -327f))).a.xx, select(vec2<bool>(var_0, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, false), true), var_0)), !(!vec4<bool>(false, true, var_0, false))), -_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-1i, -2147483647i) << (vec2<u32>(u_input.b, 20109u) % vec2<u32>(32u))), -var_1.b.yw));
    return -55905i & _wgslsmith_dot_vec4_i32(var_1.b, max(~vec4<i32>(var_2.x, 1i, var_1.b.x, var_3.d), var_3.b.c.b));
}

fn func_5(arg_0: i32, arg_1: vec4<f32>) -> Struct_3 {
    global1 = array<Struct_1, 15>();
    global1 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-897f, _wgslsmith_f_op_f32(abs(1355f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(543f, 1515f) - arg_1.wz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, 215f)), _wgslsmith_f_op_f32(max(arg_1.x, 1327f))))));
    var var_1 = global1[_wgslsmith_index_u32(abs(u_input.b), 15u)];
    global1 = array<Struct_1, 15>();
    return func_4(func_2(countOneBits(u_input.a) & vec3<i32>(arg_0, _wgslsmith_dot_vec3_i32(u_input.a, u_input.a), reverseBits(1i)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))), 823f, _wgslsmith_f_op_f32(-func_4(Struct_2(vec3<bool>(false, true, true), u_input.a.x, global1[_wgslsmith_index_u32(11895u, 15u)], Struct_1(var_0.x, var_1.b)), Struct_5(vec2<bool>(false, false), vec4<bool>(true, true, true, true)), vec2<i32>(var_1.b.x, u_input.a.x)).b.c.a))), Struct_5(vec2<bool>(true, true), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))), firstTrailingBit(u_input.a.yy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 11>();
    var var_0 = Struct_4(func_5(-func_1(-1269f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(576f, 522f, -1432f, -352f), vec4<f32>(-418f, 123f, 1703f, 521f))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1463f, -952f)))), _wgslsmith_sub_vec2_i32(u_input.a.zz, _wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.a.x, 0i) | vec2<i32>(u_input.a.x, 8916i)), -(~u_input.a.yz))), vec3<i32>(~u_input.a.x, func_2(~(-u_input.a), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 1153f, -382f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1001f, 1096f, 1226f))))).d.b.x, countOneBits(31976i)));
    global0 = array<u32, 11>();
    let var_1 = vec2<i32>(36919i, u_input.a.x);
    let var_2 = vec4<bool>(var_0.a.b.a.x, !(_wgslsmith_add_u32(max(27273u, global0[_wgslsmith_index_u32(102539u, 11u)]), global0[_wgslsmith_index_u32(~1u, 11u)]) < u_input.b), !var_0.a.a.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(~(50400i & _wgslsmith_dot_vec3_i32(var_0.a.b.c.b.ywy, vec3<i32>(1i, var_1.x, -2147483647i))), ~u_input.b, func_4(Struct_2(var_0.a.b.a, _wgslsmith_div_i32(var_1.x, var_0.a.d << (global0[_wgslsmith_index_u32(u_input.b, 11u)] % 32u)), func_4(Struct_2(vec3<bool>(true, var_0.a.c.x, var_0.a.b.a.x), 1i, global1[_wgslsmith_index_u32(u_input.b, 15u)], Struct_1(-209f, var_0.a.b.c.b)), Struct_5(vec2<bool>(false, var_2.x), var_0.a.a), firstLeadingBit(u_input.a.yy)).b.d, global1[_wgslsmith_index_u32(u_input.b, 15u)]), Struct_5(func_2(_wgslsmith_div_vec3_i32(var_0.a.b.d.b.zxy, vec3<i32>(var_1.x, 7220i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, -1000f, -220f) + vec3<f32>(220f, -318f, -797f))).a.zy, vec4<bool>(var_2.x, func_3(var_0.a.c.x, vec4<f32>(var_0.b, 133f, 439f, 223f)), var_0.a.b.a.x, any(var_0.a.a))), -var_0.a.b.c.b.zw).d, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), var_0.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.b.d.a, var_0.b, var_0.a.b.c.a), vec3<f32>(-2018f, 1000f, -166f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(630f, var_0.b, var_0.b)))))))));
}

