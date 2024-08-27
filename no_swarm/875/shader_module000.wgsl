struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<bool>(false, true), Struct_1(vec2<u32>(0u, 2568u)), vec2<bool>(false, true), i32(-2147483648)), Struct_2(vec2<bool>(true, false), Struct_1(vec2<u32>(48011u, 0u)), vec2<bool>(true, true), -32095i), Struct_2(vec2<bool>(true, false), Struct_1(vec2<u32>(10185u, 8848u)), vec2<bool>(false, true), -1i), Struct_2(vec2<bool>(false, false), Struct_1(vec2<u32>(35507u, 4294967295u)), vec2<bool>(true, true), -42987i), Struct_2(vec2<bool>(true, true), Struct_1(vec2<u32>(4294967295u, 8857u)), vec2<bool>(true, false), -803i), Struct_2(vec2<bool>(false, false), Struct_1(vec2<u32>(34374u, 72402u)), vec2<bool>(true, false), 0i), Struct_2(vec2<bool>(false, true), Struct_1(vec2<u32>(19932u, 0u)), vec2<bool>(false, true), 55654i));

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(392f, -570f, 863f), vec3<f32>(-476f, 382f, -413f), vec3<f32>(-127f, 1431f, 1786f), vec3<f32>(1334f, 1351f, 710f), vec3<f32>(-712f, 147f, -560f), vec3<f32>(-1000f, -1000f, -933f), vec3<f32>(566f, -1011f, -1129f), vec3<f32>(974f, 692f, -134f), vec3<f32>(945f, 1032f, 966f), vec3<f32>(-1139f, -1527f, -473f), vec3<f32>(1608f, 883f, -561f), vec3<f32>(-1006f, 1075f, 1367f), vec3<f32>(-936f, 170f, 662f), vec3<f32>(-1000f, -914f, -2136f), vec3<f32>(-597f, -1264f, -1736f));

var<private> global3: Struct_5;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> f32 {
    var var_0 = Struct_5(countOneBits(vec2<i32>(~(~(-52036i)), ~(-27699i))), firstTrailingBit(~firstLeadingBit(4294967295u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(max(-1854f, -948f)), -486f, 2843f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.c * vec3<f32>(-1415f, 1396f, arg_0.x))))), vec3<f32>(-183f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.c.x - -2167f))), arg_0.x)));
    var var_1 = 27674u;
    let var_2 = Struct_4(~(firstTrailingBit(48935u | global0[_wgslsmith_index_u32(var_0.b, 20u)]) ^ ~global3.b), global3.b);
    var var_3 = vec2<bool>(true, true);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), arg_0.x));
    return _wgslsmith_f_op_f32(sign(-1167f));
}

fn func_2(arg_0: Struct_1) -> Struct_5 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 7u)];
    let var_1 = max(vec2<u32>(~_wgslsmith_add_u32(~arg_0.a.x, var_0.b.a.x), ~arg_0.a.x), abs(var_0.b.a));
    global2 = array<vec3<f32>, 15>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(var_1.x, 15u)]) - vec3<f32>(-572f, global3.c.x, 282f)))), arg_0, var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.c.x, global3.c.x)) + -1884f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1032f)))))));
    let var_3 = ~(~abs(abs(~vec3<i32>(-37146i, -1i, global3.a.x))));
    return Struct_5(u_input.b, (global3.b | 16281u) >> (_wgslsmith_add_u32(8275u, _wgslsmith_sub_u32(global3.b, select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54690u, 20u)], 20u)], 1u, var_0.c.x))) % 32u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1293f - 967f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c.x) * _wgslsmith_f_op_f32(-294f + 265f)), 1901f))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_5, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<u32, 20>();
    let var_0 = i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, ~2147483647i), -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(global3.a.x, -1i)));
    var var_1 = Struct_4(_wgslsmith_add_u32(_wgslsmith_add_u32(max(select(global3.b, 112672u, false), 0u ^ arg_3.a.x), ~53121u), abs(470u) | firstLeadingBit(func_2(Struct_1(arg_3.a)).b)), ~(~59505u));
    var var_2 = ~reverseBits(min(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b, 59510u, global0[_wgslsmith_index_u32(arg_2.b, 20u)]), vec3<u32>(57775u, var_1.b, arg_2.b)), global0[_wgslsmith_index_u32(arg_2.b, 20u)] ^ arg_3.a.x) & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1383u, 20u)], 14347u, arg_3.a.x), vec3<u32>(arg_2.b, 4294967295u, 0u)), ~var_1.a));
    let var_3 = any(select(vec4<bool>(true, false, true, var_0 == var_0), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true))), true));
    return select(vec4<bool>(var_3 || true, global0[_wgslsmith_index_u32(var_1.a, 20u)] <= max(_wgslsmith_sub_u32(32265u, arg_2.b), var_1.b), var_3, (var_3 || (-1648f == global3.c.x)) || var_3), !vec4<bool>(any(select(vec3<bool>(var_3, true, true), vec3<bool>(true, var_3, true), vec3<bool>(false, var_3, var_3))), true, var_3, true), vec4<bool>(firstTrailingBit(45233u) <= 45772u, any(vec2<bool>(any(vec2<bool>(true, var_3)), arg_0.x > global3.a.x)), any(select(vec3<bool>(var_3, var_3, true), vec3<bool>(false, var_3, false), vec3<bool>(true, var_3, true))) && var_3, any(vec4<bool>(var_3, var_3, select(var_3, var_3, var_3), var_3))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_5) -> bool {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1132f));
    var_1 = _wgslsmith_f_op_f32(-global3.c.x);
    var var_2 = select(!select(vec4<bool>(arg_2.c.x < global3.c.x, all(vec3<bool>(arg_1.c.x, arg_0, arg_1.c.x)), -9629i < global3.a.x, arg_1.a.x), !vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x), vec4<bool>(!arg_0, true, false, arg_0)), select(select(!vec4<bool>(true, false, arg_1.a.x, false), select(!vec4<bool>(arg_0, false, true, arg_0), vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(arg_0, false, arg_0, true)), select(select(vec4<bool>(arg_1.a.x, false, true, true), vec4<bool>(false, false, true, false), true), !vec4<bool>(true, arg_0, true, true), !arg_0)), vec4<bool>(~arg_2.b >= max(arg_2.b, arg_1.b.a.x), any(!vec2<bool>(false, arg_0)), true == arg_0, arg_1.c.x), vec4<bool>(arg_1.a.x, arg_1.c.x, true, all(arg_1.c))), func_4(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(arg_2.a.x), global3.a.x, 6682i, 24294i), vec4<i32>(arg_2.a.x, var_0, -525i, -arg_2.a.x)), _wgslsmith_f_op_vec3_f32(abs(arg_2.c)), func_2(arg_1.b), Struct_1(arg_1.b.a)));
    let var_3 = _wgslsmith_mult_i32(u_input.d, _wgslsmith_mod_i32(-u_input.d, arg_1.d ^ u_input.a));
    return arg_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_5(firstTrailingBit(firstTrailingBit(global3.a & vec2<i32>(-43917i, u_input.d))) >> ((vec2<u32>(38083u, global0[_wgslsmith_index_u32(1u, 20u)]) & min(~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(27369u, 20u)], global0[_wgslsmith_index_u32(global3.b, 20u)]))) % vec2<u32>(32u)), 12275u, global2[_wgslsmith_index_u32(1625u, 15u)]);
    global2 = array<vec3<f32>, 15>();
    var var_0 = 0u;
    global1 = array<Struct_2, 7>();
    var var_1 = all(!vec4<bool>(false, func_1(u_input.a != u_input.b.x, Struct_2(vec2<bool>(false, true), Struct_1(vec2<u32>(1602u, global0[_wgslsmith_index_u32(2254u, 20u)])), vec2<bool>(true, true), global3.a.x), Struct_5(vec2<i32>(global3.a.x, -1i), global0[_wgslsmith_index_u32(global3.b, 20u)], vec3<f32>(314f, global3.c.x, 999f))), !(global0[_wgslsmith_index_u32(1u, 20u)] != 60039u), true));
    global0 = array<u32, 20>();
    let var_2 = true | !func_1(true, global1[_wgslsmith_index_u32(62306u, 7u)], Struct_5(max(u_input.b, global3.a), abs(global3.b), global3.c));
    var_1 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.b, 20u)], 20u)] <= ~(~global0[_wgslsmith_index_u32(max(global3.b, global3.b) ^ _wgslsmith_mod_u32(global3.b, global0[_wgslsmith_index_u32(20764u, 20u)]), 20u)]);
    var var_3 = Struct_4(countOneBits(global0[_wgslsmith_index_u32(6243u, 20u)]), global3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, 1000f, 2049f, global3.c.x)) * vec4<f32>(-821f, global3.c.x, global3.c.x, global3.c.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -290f, global3.c.x, 243f)), vec4<bool>(false, true, false, true)))) - vec4<f32>(-1000f, 218f, 401f, _wgslsmith_f_op_f32(-global3.c.x))), global3.a.x, u_input.b, reverseBits(select(firstTrailingBit(-vec4<i32>(global3.a.x, -37516i, 0i, u_input.c)), ~select(vec4<i32>(-1i, -1i, -56508i, u_input.c), vec4<i32>(u_input.d, 0i, 19321i, -1i), false), false)), global3.a);
}

