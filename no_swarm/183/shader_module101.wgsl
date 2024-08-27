struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 6> = array<f32, 6>(1896f, -1931f, 1000f, 1288f, -1000f, 245f);

var<private> global2: array<vec4<u32>, 11>;

var<private> global3: array<i32, 26> = array<i32, 26>(-10731i, 28603i, -1i, i32(-2147483648), 18026i, 0i, -11905i, 76463i, 54704i, 0i, 37190i, 2147483647i, 0i, -385i, 1i, 1i, 2147483647i, 1i, -534i, 14915i, i32(-2147483648), 10641i, i32(-2147483648), i32(-2147483648), 1i, 3208i);

var<private> global4: Struct_1 = Struct_1(1278f, -2019f, i32(-2147483648), true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<bool>) -> i32 {
    global3 = array<i32, 26>();
    var var_0 = global0.c;
    global2 = array<vec4<u32>, 11>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-2175f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) * _wgslsmith_f_op_f32(floor(153f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4.a - global4.a))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(777f * -258f), 762f) * _wgslsmith_f_op_f32(1936f + -264f)))), countOneBits(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(global4.c, arg_0, 8990i))), ~(~(~1u)) <= ~(4294967295u << (~arg_1.x % 32u)));
    let var_2 = Struct_4(true, select(_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(global0.b.x, global0.b.x, global4.c)) | global0.b, global0.b), ~select(-vec3<i32>(-2147483647i, global0.b.x, 61601i), vec3<i32>(-1i, global0.b.x, global4.c), false), select(vec3<bool>(arg_2.x, true, select(false, global0.a, global0.a)), arg_2, select(select(arg_2, vec3<bool>(global4.d, global4.d, true), global4.d), !arg_2, var_1.d))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.c)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-917f, 472f, 165f), global0.c)))));
    return -2147483647i;
}

fn func_2() -> Struct_2 {
    let var_0 = -1725f;
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(4886u, 6u)], 196f, 1139f, var_0), vec4<f32>(-319f, 334f, -931f, -348f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, global1[_wgslsmith_index_u32(25777u, 6u)], var_0, -386f))))), Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 6u)] * global4.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))), -func_3(_wgslsmith_sub_i32(global4.c, -2147483647i), vec4<u32>(23772u, 0u, 40178u, 17989u), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, -355f), _wgslsmith_f_op_f32(round(1710f)))) <= -189f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)))), global1[_wgslsmith_index_u32(15732u, 6u)], global0.b.x << (_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.yyy, vec3<u32>(12893u, u_input.a.x, 25478u)), _wgslsmith_mod_u32(u_input.a.x, 20191u)) % 32u), !(global0.c.x > -1718f)));
    global1 = array<f32, 6>();
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_1.a), var_1.b, var_1.c);
    let var_3 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_1.a), Struct_1(453f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(390f * 178f))), _wgslsmith_f_op_f32(abs(var_0)))), ~global0.b.x, true), var_1.c);
    return Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * var_3.b.b) * _wgslsmith_f_op_f32(673f * var_1.a.x)), -489f, -348f, _wgslsmith_f_op_f32(f32(-1f) * -1129f)) * var_1.a));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(~global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(30423u, ~u_input.a.x, ~29163u)), 26u)], i32(-1i) * -(~(~global0.b.x)));
    var var_1 = Struct_3(select(!vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(any(!vec3<bool>(true, global0.a, false)), global4.d), false), arg_0.a.zxw);
    var var_2 = countOneBits(~0i);
    let var_3 = global3[_wgslsmith_index_u32(~u_input.a.x, 26u)];
    let var_4 = ~_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(11894u, ~4294967295u, 0u, ~firstLeadingBit(61720u)));
    return Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(firstLeadingBit(var_4.x | countOneBits(u_input.a.x)), 6u)], -2597f), _wgslsmith_f_op_f32(1612f * arg_0.a.x), global0.b.x, select(!var_1.a.x, global0.a, var_1.a.x));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> f32 {
    global3 = array<i32, 26>();
    let var_0 = func_4(func_2());
    global2 = array<vec4<u32>, 11>();
    let var_1 = select(vec4<bool>(!(true || all(vec4<bool>(false, global0.a, global4.d, false))), false, global4.d, all(!(!vec4<bool>(true, true, var_0.d, global0.a)))), vec4<bool>(false, false, true, false), any(select(vec3<bool>(func_4(Struct_2(vec4<f32>(-521f, -1019f, global1[_wgslsmith_index_u32(18251u, 6u)], arg_1.x))).d, !global4.d, var_0.d), vec3<bool>(all(vec2<bool>(global4.d, false)), all(vec2<bool>(false, var_0.d)), true), !(global3[_wgslsmith_index_u32(4294967295u, 26u)] > 1i))));
    var var_2 = 1u;
    return _wgslsmith_f_op_f32(round(-1055f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-780f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-719f + -1084f))), _wgslsmith_f_op_f32(global0.c.x + global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, ~(~0u)), 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a)))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 1410f, global1[_wgslsmith_index_u32(41237u, 6u)])))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global0.c.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(0u, global0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1745f + global4.b)))), abs(_wgslsmith_sub_i32(global4.c, func_3(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.a, vec3<bool>(true, false, global4.d)))), any(vec2<bool>(global4.d, any(vec2<bool>(global4.d, global4.d))))), Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 10897u), 68019u), 6u)], 1000f, abs(firstLeadingBit(global4.c ^ global3[_wgslsmith_index_u32(u_input.a.x, 26u)])), false));
    let var_2 = var_1;
    let var_3 = var_1;
    var_0 = vec4<f32>(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(594f * _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1258f, var_0.x, var_1.a.x) + var_2.a.wzx))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c.x))) - -1841f)), 1817f);
    var var_4 = !var_3.b.d;
    let var_5 = ~max(u_input.a.xz, u_input.a.wz);
    var var_6 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_3.a.yx), _wgslsmith_f_op_vec2_f32(-var_2.a.zx)));
    global3 = array<i32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(min(select(vec3<u32>(firstTrailingBit(var_5.x), max(82261u, var_5.x), _wgslsmith_mult_u32(5958u, var_5.x)), select(~u_input.a.wwx, ~vec3<u32>(var_5.x, u_input.a.x, var_5.x), any(vec2<bool>(false, var_2.c.d))), true), ~(~u_input.a.wyz)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), var_5, vec2<u32>(~4294967295u, ~15505u ^ u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(min(1124f, global4.b)), _wgslsmith_f_op_f32(var_3.a.x * var_0.x), var_6.x), _wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.c.x, global0.c.x, -314f, -1000f))))))), 1f);
}

