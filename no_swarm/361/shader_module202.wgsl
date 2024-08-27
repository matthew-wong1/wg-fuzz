struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 28> = array<f32, 28>(1554f, -417f, -1414f, 1365f, -1013f, -1622f, -382f, -1606f, 616f, 611f, -2471f, -1289f, 1387f, -1086f, 1100f, 384f, -952f, -1480f, -888f, -355f, 120f, -1821f, -1514f, -939f, -535f, -137f, 2042f, -326f);

var<private> global2: array<vec2<i32>, 15> = array<vec2<i32>, 15>(vec2<i32>(-781i, 0i), vec2<i32>(0i, 20397i), vec2<i32>(-1i, 25493i), vec2<i32>(-32771i, 2147483647i), vec2<i32>(17859i, 2147483647i), vec2<i32>(-348i, 9141i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 62456i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 1i), vec2<i32>(10194i, i32(-2147483648)), vec2<i32>(-16029i, -38236i), vec2<i32>(i32(-2147483648), -17026i), vec2<i32>(2147483647i, 0i));

var<private> global3: array<Struct_4, 31>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = ~(~39133u);
    var var_1 = abs(vec3<i32>(-1i) * -vec3<i32>(max(10212i, 50330i), -2147483647i, _wgslsmith_add_i32(-16440i, 24327i)));
    let var_2 = countOneBits((firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global0.e.a.x, -1i), u_input.a.yz)) >> (vec2<u32>(select(global0.a, u_input.b.x, global0.b.x), ~arg_0) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.c.x, var_1.x), ~global2[_wgslsmith_index_u32(arg_0, 15u)]));
    global0 = Struct_3(4294967295u, !global0.b, vec2<u32>(~(1u ^ u_input.b.x), 1u), global0.d, Struct_1(global0.e.a));
    let var_3 = Struct_2(global0.e, global0.e, Struct_1(global0.e.a & vec4<i32>(var_1.x | var_1.x, -2147483647i, _wgslsmith_clamp_i32(-2147483647i, var_1.x, -1i), firstTrailingBit(-13225i))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(arg_0, 28u)], 1000f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1[_wgslsmith_index_u32(arg_0, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))))))), global0.e.a);
    return min(min(arg_0, u_input.b.x & reverseBits(u_input.b.x)), abs(u_input.b.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_4) -> vec3<f32> {
    global1 = array<f32, 28>();
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(func_3(u_input.b.x), ~7982u, 72216u & global0.c.x), min(vec3<u32>(u_input.b.x, 1108u, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, 1u), max(vec3<u32>(32540u, global0.a, u_input.b.x), vec3<u32>(4294967295u, global0.a, 63746u)))) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global0.c.x, u_input.b.x) << (vec4<u32>(13101u, 20114u, global0.c.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 18804u, 0u, u_input.b.x), vec4<u32>(global0.a, u_input.b.x, global0.a, global0.c.x))), ~select(u_input.b.x, 4294967295u, global0.d), ~_wgslsmith_mult_u32(global0.c.x, global0.c.x)), countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global0.c.x, u_input.b.x), vec3<u32>(global0.a, global0.a, u_input.b.x)) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.a, global0.a, 17261u), vec4<u32>(26438u, global0.a, u_input.b.x, 0u)), _wgslsmith_add_u32(14141u, u_input.b.x), global0.a | 4294967295u)));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(63859u, 0u) & u_input.b, vec2<u32>(29895u, 0u)))), 31u)];
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 28u)], -1375f, arg_2)))), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a, 28u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -182f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - global1[_wgslsmith_index_u32(global0.c.x, 28u)]), _wgslsmith_f_op_f32(241f * 1000f))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_2 {
    global2 = array<vec2<i32>, 15>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(338f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(global0.c.x, 28u)]), vec3<f32>(global1[_wgslsmith_index_u32(35292u, 28u)], global1[_wgslsmith_index_u32(27239u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)])), vec3<f32>(-499f, -1448f, 1501f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_2(arg_2, global0.e.a, false, global3[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(global0.a, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 1047f), vec3<f32>(137f, 1562f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)])))))))) + vec3<f32>(539f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1150f), 644f), _wgslsmith_f_op_f32(step(-776f, -1000f))));
    var var_1 = !vec3<bool>(any(arg_2), arg_2.x, all(!global0.b));
    var var_2 = vec4<bool>(69624i <= -u_input.c.x, select(arg_0.a.x == global0.e.a.x, !arg_2.x, true & !arg_2.x), false, any(vec2<bool>(false, any(var_1.zz))));
    var var_3 = Struct_3(~u_input.b.x, !var_1.xy, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, global0.a, 1u, u_input.b.x), vec4<u32>(0u, u_input.b.x, global0.a, u_input.b.x)) & firstLeadingBit(59582u), ~50360u), true || (_wgslsmith_f_op_f32(f32(-1f) * -1535f) < _wgslsmith_f_op_vec3_f32(func_2(var_2.zyx, -global0.e.a, all(vec2<bool>(false, arg_2.x)), global3[_wgslsmith_index_u32(~u_input.b.x, 31u)])).x), arg_1);
    return Struct_2(Struct_1(var_3.e.a), var_3.e, arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1444f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 1000f) - vec3<f32>(var_0.x, var_0.x, -719f))))), _wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(arg_1.a, vec4<i32>(global0.e.a.x, var_3.e.a.x, u_input.c.x, arg_1.a.x)) >> ((vec4<u32>(var_3.a, 120377u, 51249u, global0.c.x) & vec4<u32>(3301u, global0.a, global0.a, global0.a)) % vec4<u32>(32u))), vec4<i32>(arg_1.a.x, (i32(-1i) * -1i) ^ ~var_3.e.a.x, -42146i, abs(global0.e.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = -54973i;
    let var_2 = func_1(Struct_1(global0.e.a), Struct_1(vec4<i32>(_wgslsmith_clamp_i32(1i, global0.e.a.x, i32(-1i) * -2147483647i), ~(u_input.c.x << (4294967295u % 32u)), u_input.a.x, -120i)), vec3<bool>(_wgslsmith_f_op_f32(round(-1161f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19044u, 28u)]) - -1170f), all(!vec2<bool>(global0.b.x, global0.b.x)) | select(global0.d, true || global0.b.x, true), global0.d));
    global1 = array<f32, 28>();
    var var_3 = Struct_5(max(-global0.e.a, vec4<i32>(reverseBits(_wgslsmith_dot_vec2_i32(u_input.c, global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), _wgslsmith_clamp_i32(global0.e.a.x, u_input.d, -var_2.b.a.x), 0i, 0i)), Struct_1(global0.e.a), vec3<bool>(global0.d, all(vec3<bool>(!global0.d, all(global0.b), any(vec4<bool>(global0.b.x, global0.b.x, global0.b.x, false)))), true), var_2, _wgslsmith_f_op_vec3_f32(step(var_2.d, _wgslsmith_f_op_vec3_f32(abs(var_2.d)))));
    var var_4 = 0u;
    global0 = Struct_3(~(~0u), var_3.c.zy, u_input.b, !all(select(!vec4<bool>(var_3.c.x, var_3.c.x, false, global0.b.x), select(vec4<bool>(global0.b.x, var_3.c.x, var_3.c.x, var_3.c.x), vec4<bool>(false, false, global0.b.x, var_3.c.x), true), vec4<bool>(true, var_3.c.x, var_3.c.x, var_3.c.x))), Struct_1(vec4<i32>(u_input.d, u_input.d, _wgslsmith_mod_i32(u_input.d, ~(-15172i)), reverseBits(~global0.e.a.x))));
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(countOneBits(~abs(vec3<u32>(global0.c.x, 0u, 1u))), _wgslsmith_div_vec3_u32(~select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, global0.c.x, global0.a), var_3.c), vec3<u32>(_wgslsmith_dot_vec2_u32(global0.c, vec2<u32>(u_input.b.x, u_input.b.x)), ~0u, ~u_input.b.x))), var_3.c.yx, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(global0.c, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(global0.c.x, global0.a), vec2<u32>(1u, 1u))) << (vec2<u32>(global0.a, 45900u) % vec2<u32>(32u)), global0.c), true, func_1(func_1(Struct_1(vec4<i32>(-39115i, global0.e.a.x, -97945i, u_input.c.x)), func_1(Struct_1(vec4<i32>(var_2.c.a.x, var_3.b.a.x, global0.e.a.x, var_2.c.a.x)), func_1(var_3.d.b, global0.e, vec3<bool>(true, false, global0.b.x)).b, !var_3.c).c, var_3.c).c, global0.e, select(!select(vec3<bool>(false, false, var_3.c.x), vec3<bool>(true, false, var_3.c.x), var_3.c.x), select(!var_3.c, var_3.c, true), vec3<bool>(global0.b.x, all(vec3<bool>(var_3.c.x, global0.b.x, var_3.c.x)), true))).c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-countOneBits(var_2.e.x), 1i, _wgslsmith_dot_vec2_i32(global0.e.a.yw, vec2<i32>(-64936i, 10958i)) | ~(-17179i), 1i), vec4<u32>(min(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, global0.a, u_input.b.x)), ~vec3<u32>(34455u, 4294967295u, 593u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 1u) << (vec3<u32>(11817u, 71956u, 16130u) % vec3<u32>(32u)), vec3<u32>(global0.a, u_input.b.x, 33519u))), ~(~firstTrailingBit(4294967295u)), ~u_input.b.x, func_3(4294967295u)));
}

