struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10>;

var<private> global1: array<Struct_4, 30>;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(-953f, vec4<f32>(-1392f, -277f, 192f, -1204f)), Struct_3(-129f, vec4<f32>(748f, 202f, -1374f, 330f)), Struct_3(1000f, vec4<f32>(-593f, -829f, -1000f, -1740f)), Struct_3(781f, vec4<f32>(121f, 892f, -160f, -786f)), Struct_3(-1181f, vec4<f32>(1000f, -581f, 478f, 1222f)), Struct_3(-584f, vec4<f32>(978f, -718f, -213f, 255f)), Struct_3(1000f, vec4<f32>(-416f, -369f, 454f, 539f)), Struct_3(-1000f, vec4<f32>(240f, -722f, -469f, -1108f)), Struct_3(-1366f, vec4<f32>(-1000f, -326f, 1457f, -1438f)), Struct_3(908f, vec4<f32>(-1423f, 394f, 1220f, -2774f)), Struct_3(-1306f, vec4<f32>(916f, 1438f, -920f, 201f)), Struct_3(734f, vec4<f32>(-1811f, 785f, 102f, 1000f)), Struct_3(1397f, vec4<f32>(-486f, -254f, -591f, -1608f)), Struct_3(1000f, vec4<f32>(-1000f, -175f, -155f, -776f)), Struct_3(1000f, vec4<f32>(-1963f, 334f, 1718f, 424f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = true;
    var var_1 = -509f;
    global0 = array<bool, 10>();
    global2 = array<Struct_3, 15>();
    var var_2 = Struct_3(1858f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.b - arg_0.b)) + vec4<f32>(_wgslsmith_f_op_f32(select(311f, -145f, global0[_wgslsmith_index_u32(8855u, 10u)])), 2003f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(trunc(arg_0.b.x)))), vec4<f32>(-489f, arg_0.b.x, -897f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) + arg_0.b.x)))));
    return global0[_wgslsmith_index_u32(3358u, 10u)];
}

fn func_2() -> f32 {
    var var_0 = !select(!select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(29446u, 10u)], true), true), select(select(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(43501u, 10u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 10u)]), func_3(Struct_3(-739f, vec4<f32>(127f, 489f, -890f, 764f)))), vec2<bool>(false, global0[_wgslsmith_index_u32(abs(4294967295u), 10u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(84600u, 10u)], global0[_wgslsmith_index_u32(19088u, 10u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(16959u, 10u)], global0[_wgslsmith_index_u32(13945u, 10u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 10u)]), true), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(20455u, 10u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(31005u, 10u)]), global0[_wgslsmith_index_u32(4359u, 10u)]))), (!global0[_wgslsmith_index_u32(25596u, 10u)] & true) && global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 10u)]);
    var_0 = vec2<bool>(false, any(!select(select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(10525u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 10u)], true, false), vec4<bool>(var_0.x, true, var_0.x, global0[_wgslsmith_index_u32(1u, 10u)])), select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(1u, 10u)], false, var_0.x), vec4<bool>(false, var_0.x, global0[_wgslsmith_index_u32(8032u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), false), select(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(45598u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 10u)], true), var_0.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1159f)), 1f, var_0.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-867f)))))));
    let var_2 = Struct_2(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -20375i) >> (~vec4<u32>(4011u, 35160u, 21756u, 1u) % vec4<u32>(32u))), -(u_input.a | ~u_input.a)), Struct_1(vec3<bool>(all(!vec2<bool>(var_0.x, var_0.x)), !select(true, false, var_0.x), var_0.x), 19832u, u_input.a.x, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(854f, -1000f)))) * _wgslsmith_f_op_f32(trunc(362f)))));
    global1 = array<Struct_4, 30>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.b.e)))), 981f)));
}

fn func_1() -> f32 {
    global1 = array<Struct_4, 30>();
    global0 = array<bool, 10>();
    global2 = array<Struct_3, 15>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(max(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(364f + -1727f), _wgslsmith_f_op_f32(sign(-317f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(163f, -1190f), _wgslsmith_f_op_f32(-335f + 570f), _wgslsmith_f_op_f32(select(429f, -803f, global0[_wgslsmith_index_u32(56566u, 10u)])), -1004f))));
    var var_1 = Struct_3(733f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-356f, _wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-305f + 777f))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(step(var_0.a, var_0.b.x)))))), var_0.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(498f * var_0.b.x) * _wgslsmith_f_op_f32(ceil(-405f))), 697f)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_5 {
    let var_0 = arg_3;
    global2 = array<Struct_3, 15>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) + arg_1.a), var_0)));
    global1 = array<Struct_4, 30>();
    var var_2 = u_input.a.x;
    return Struct_5(global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(29475u, 30867u, 1u), ~vec3<u32>(1u, 64355u, 0u)) >> (_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(33558u, 1877u, 59727u, 1u), vec4<u32>(7662u, 4294967295u, 25092u, 0u))) % 32u), 1u, arg_0.x), 10u)], select(firstTrailingBit(-u_input.a), firstLeadingBit(-(u_input.a >> (vec4<u32>(9193u, 33957u, 41045u, 2376u) % vec4<u32>(32u)))), !vec4<bool>(all(arg_0), !arg_0.x, arg_0.x, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), ~1u), vec2<u32>(~_wgslsmith_add_u32(21868u, 40306u), 4294967295u)));
}

fn func_5(arg_0: Struct_5) -> vec4<bool> {
    global1 = array<Struct_4, 30>();
    global0 = array<bool, 10>();
    global0 = array<bool, 10>();
    global2 = array<Struct_3, 15>();
    global2 = array<Struct_3, 15>();
    return vec4<bool>(!select(!(global0[_wgslsmith_index_u32(1u, 10u)] && false), false, any(vec3<bool>(true, false, false))), func_4(select(vec3<bool>(true, arg_0.b.x != u_input.a.x, any(vec3<bool>(true, true, arg_0.a))), select(select(vec3<bool>(arg_0.a, false, true), vec3<bool>(global0[_wgslsmith_index_u32(37069u, 10u)], false, false), vec3<bool>(true, true, arg_0.a)), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.c, 10u)], false, false), arg_0.a), any(vec3<bool>(false, arg_0.a, true))), Struct_3(1f, vec4<f32>(-1104f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-723f * 152f), _wgslsmith_div_f32(-1228f, -751f))), -firstLeadingBit(u_input.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-310f)) * _wgslsmith_f_op_f32(759f - -631f)), _wgslsmith_f_op_f32(abs(1443f)))).a, !(!all(select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(23803u, 10u)], arg_0.a, global0[_wgslsmith_index_u32(4294967295u, 10u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(arg_0.c, 10u)])))), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 10>();
    let var_0 = func_5(func_4(!(!(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 10u)]))), global2[_wgslsmith_index_u32(~1u, 15u)], 16437i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))));
    global2 = array<Struct_3, 15>();
    var var_1 = func_4(!select(vec3<bool>(false, true, false || var_0.x), vec3<bool>(!var_0.x, !global0[_wgslsmith_index_u32(4294967295u, 10u)], true), !select(var_0.ywy, var_0.wzw, false)), Struct_3(_wgslsmith_f_op_f32(trunc(-1663f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(152f, -1292f, -1000f, 1333f))), vec4<f32>(-416f, -277f, -638f, -250f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))), -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2196f + -768f) - -1000f)) + 1000f)).b.x;
    var var_2 = Struct_1(var_0.wxx, 1u, u_input.a.x, firstTrailingBit(57730i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -1820f)), -1217f));
    global2 = array<Struct_3, 15>();
    var var_3 = ~u_input.a;
    var var_4 = min(var_3.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-18447i, max(2147483647i, -7102i)), ~var_3.yw));
    var var_5 = !select(!select(select(var_2.a.yy, vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(var_0.x, true), var_0.x), var_0.zw, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(1u, var_2.b, 3797u, 0u) & vec4<u32>(42441u, 95142u, 2209u, var_2.b))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, var_2.b, var_2.b, var_2.b), vec4<u32>(14598u, 0u, 0u, 4294967295u)))), var_2.b, vec2<u32>(25271u, 22197u));
}

