struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: Struct_5;

var<private> global2: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(1387f, -295f, -445f, -1408f), vec4<f32>(-1230f, 248f, 409f, -1433f), vec4<f32>(1000f, 960f, -547f, -1000f), vec4<f32>(3318f, -454f, 435f, -141f), vec4<f32>(-1406f, 302f, -1107f, -1415f), vec4<f32>(-115f, 386f, -652f, -296f), vec4<f32>(986f, 605f, 1077f, 761f), vec4<f32>(1000f, -2501f, -2252f, -251f), vec4<f32>(1112f, -1000f, 1631f, -765f), vec4<f32>(-1659f, -597f, -640f, 1000f), vec4<f32>(-1596f, 1000f, -879f, 768f), vec4<f32>(-136f, -1768f, 1237f, 856f), vec4<f32>(-487f, -1445f, -838f, -663f), vec4<f32>(-705f, 1304f, 460f, -199f), vec4<f32>(-1098f, 1385f, -1978f, 1343f), vec4<f32>(590f, 264f, 293f, 1036f), vec4<f32>(741f, 1000f, 1160f, -972f), vec4<f32>(-401f, -1511f, -551f, -1397f), vec4<f32>(-1364f, -636f, 129f, 1734f), vec4<f32>(-393f, 1583f, 303f, -796f), vec4<f32>(220f, 626f, -1428f, -106f), vec4<f32>(-1000f, -2346f, 1552f, 609f), vec4<f32>(797f, -752f, -1000f, 257f), vec4<f32>(-154f, -863f, -1131f, 1308f), vec4<f32>(-1728f, 1159f, 467f, -1000f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> bool {
    var var_0 = global1.c.d.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f - -149f) - 524f)) - _wgslsmith_div_f32(134f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 969f)))));
    var var_2 = global1.c;
    global0 = array<vec3<f32>, 17>();
    global0 = array<vec3<f32>, 17>();
    return any(global1.b.yz);
}

fn func_3(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: u32) -> vec4<f32> {
    var var_0 = arg_2;
    global0 = array<vec3<f32>, 17>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1207f, -246f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(714f, -886f) - _wgslsmith_f_op_f32(-802f - 132f)))), -1320f));
    var var_2 = arg_0;
    global2 = array<vec4<f32>, 25>();
    return _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(16459u, 25u)] + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2[_wgslsmith_index_u32(1u, 25u)])) + global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(51998u, arg_0.a, arg_0.c.b), vec3<u32>(u_input.c, u_input.c, arg_2)), 25u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.c, 25u)]) - _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(62037u, 25u)] * vec4<f32>(735f, -163f, 585f, 218f))))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = !vec2<bool>((~11291u & global1.c.b) >= abs(~arg_0), !arg_2.x);
    var var_1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(1386f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), 1186f))), arg_1.x);
    var var_2 = firstLeadingBit(~_wgslsmith_dot_vec2_u32(global1.c.c, vec2<u32>(arg_0, 0u)));
    var var_3 = var_1.yy;
    var var_4 = vec2<f32>(-177f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))));
    return !select(vec3<bool>(true, true != select(global1.c.a.x, false, global1.b.x), true), global1.b, !var_0.x);
}

fn func_2(arg_0: Struct_2) -> vec4<bool> {
    global1 = Struct_5(24855u, vec3<bool>(!all(vec3<bool>(true, true, global1.b.x)), func_1(_wgslsmith_div_i32(0i, 37899i), !global1.c.a.x, ~global1.c.d.x) | true, !(firstLeadingBit(69335u) == _wgslsmith_div_u32(5991u, global1.a))), global1.c);
    let var_0 = select(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, global1.c.d.x >> (~52086u % 32u)), _wgslsmith_dot_vec3_i32(abs(global1.c.d), abs(vec3<i32>(global1.c.d.x, global1.c.d.x, 1i) >> (vec3<u32>(4294967295u, global1.a, u_input.c) % vec3<u32>(32u)))), 1i), select(u_input.d.xwz, _wgslsmith_div_vec3_i32(u_input.d.wxw, reverseBits(u_input.d.xzz)), ~(~global1.a) >= _wgslsmith_div_u32(1u, max(u_input.c, 0u))), select(func_4(~1u, _wgslsmith_f_op_vec4_f32(func_3(Struct_5(u_input.c, vec3<bool>(global1.c.a.x, false, true), global1.c), vec4<i32>(global1.c.d.x, u_input.a.x, u_input.a.x, u_input.d.x), 0u)), !(!vec2<bool>(global1.b.x, global1.b.x))), global1.c.a, !func_4(firstLeadingBit(global1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1135f, arg_0.a, 139f) + global2[_wgslsmith_index_u32(global1.a, 25u)]), vec2<bool>(global1.c.a.x, false)).x));
    var var_1 = global1.c.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2176f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-138f + _wgslsmith_f_op_f32(sign(641f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))), arg_0.a)));
    var var_3 = -u_input.d.x << ((~u_input.c >> ((17077u >> (~4294967295u % 32u)) % 32u)) % 32u);
    return select(select(select(vec4<bool>(true, func_1(61429i, false, u_input.b.x), global1.b.x, global1.b.x), !(!vec4<bool>(global1.b.x, global1.c.a.x, global1.c.a.x, true)), !(!vec4<bool>(global1.c.a.x, false, true, global1.b.x))), vec4<bool>(!select(global1.c.a.x, false, true), true, any(vec4<bool>(false, global1.b.x, global1.c.a.x, true)), global1.b.x), true), vec4<bool>(global1.c.a.x, global1.b.x, !global1.b.x, _wgslsmith_f_op_f32(-var_2.x) <= -369f), vec4<bool>(!all(!vec4<bool>(global1.b.x, false, false, false)), var_2.x > _wgslsmith_f_op_f32(-178f * _wgslsmith_div_f32(750f, 366f)), global1.c.a.x, global1.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!vec4<bool>(global1.c.a.x, true, func_1(u_input.b.x, global1.c.a.x, 0i), false), !(!vec4<bool>(global1.c.a.x, false, global1.c.a.x, global1.c.a.x)), global1.b.x), select(vec4<bool>(select(true, !global1.c.a.x, true), all(!global1.c.a.zx), _wgslsmith_clamp_i32(1i, -39146i, -9048i) == _wgslsmith_sub_i32(21450i, 2147483647i), false), !(!(!vec4<bool>(global1.c.a.x, false, global1.b.x, global1.c.a.x))), !(!func_2(Struct_2(199f)))), false != all(func_2(Struct_2(264f))));
    let var_1 = ~vec4<i32>(global1.c.d.x ^ u_input.b.x, -19499i, firstTrailingBit(global1.c.d.x) ^ 50468i, u_input.b.x);
    let var_2 = Struct_4(Struct_1(select(func_4(~u_input.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-684f, 1275f, 1000f, 848f)), vec2<bool>(true, true)), !vec3<bool>(false, var_0.x, true), var_0.x), 0u, ~select(vec2<u32>(global1.c.c.x, u_input.c), global1.c.c, !var_0.zw), u_input.d.wxz), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1542f * 1000f)) - 1f)), vec2<f32>(_wgslsmith_f_op_f32(-1550f + 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1440f)) * 899f)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -642f) + _wgslsmith_f_op_f32(827f * 352f)))));
    var var_3 = 1u;
    var_3 = _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(~vec3<u32>(93942u, 0u, 1u))) ^ ~min(~vec3<u32>(1u, u_input.c, 60960u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.c.x, u_input.c, u_input.c), vec3<u32>(86957u, 4294967295u, global1.a))), ~vec3<u32>(0u, ~min(4294967295u, 7107u), reverseBits(~0u)));
    global1 = Struct_5(1u, vec3<bool>(var_2.a.a.x, false, false), global1.c);
    global2 = array<vec4<f32>, 25>();
    let var_4 = all(func_4(~(~firstLeadingBit(global1.a)), global2[_wgslsmith_index_u32(var_2.a.c.x, 25u)], !func_4(~u_input.c, global2[_wgslsmith_index_u32(~4294967295u, 25u)], vec2<bool>(true, false)).xx));
    var var_5 = !any(!(!func_2(var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-17343i), _wgslsmith_f_op_f32(var_2.c.x * 1596f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f * 2047f)), _wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(var_2.a.b, vec3<bool>(true, true, true), global1.c), min(u_input.d, vec4<i32>(2147483647i, 2147483647i, global1.c.d.x, var_2.a.d.x)), 4294967295u)).x + 1178f), var_2.d.a), var_2.c);
}

