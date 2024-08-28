struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_2,
    d: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(1i, i32(-2147483648), -58831i, 0i, -39174i, -1i, -703i, 1i, 42537i, -31490i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> bool {
    return (all(vec4<bool>(1i <= u_input.b.x, any(vec2<bool>(false, false)), true, true)) & true) | (1u != ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_4) -> i32 {
    let var_0 = -(u_input.a.yxx << (arg_3.c.a.a % vec3<u32>(32u)));
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_1 = false;
    var var_2 = !arg_3.b.x;
    return global0[_wgslsmith_index_u32(reverseBits(9911u), 10u)];
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    global0 = array<i32, 10>();
    let var_0 = u_input.a.x;
    var var_1 = countOneBits(~arg_2);
    global0 = array<i32, 10>();
    var_1 = 38566u;
    return Struct_2(Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 73740u, 109917u), vec3<u32>(10907u, arg_2, arg_2)), true, abs(i32(-1i) * -var_0), select(arg_1, !vec2<bool>(false, arg_0), arg_0), arg_3), select(!(!(!vec4<bool>(true, arg_0, true, false))), select(!select(vec4<bool>(arg_0, arg_1.x, true, false), vec4<bool>(true, arg_1.x, arg_0, arg_1.x), vec4<bool>(arg_1.x, true, false, arg_1.x)), !(!vec4<bool>(true, arg_0, arg_0, arg_0)), vec4<bool>(true, !arg_1.x, false, arg_0 | arg_1.x)), arg_1.x), vec3<i32>(u_input.a.x, ~(~(~11576i)), func_3(~vec3<u32>(71492u, arg_2, arg_2) | min(vec3<u32>(20668u, arg_2, arg_2), vec3<u32>(arg_2, arg_2, 48872u)), !arg_0, vec3<i32>(~37715i, _wgslsmith_sub_i32(u_input.a.x, var_0), -2147483647i), Struct_4(-1336f, select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_1.x, false)), Struct_2(Struct_1(vec3<u32>(arg_2, arg_2, 29799u), true, u_input.b.x, arg_1, arg_3), vec4<bool>(false, true, false, false), u_input.a.xxx, arg_2, u_input.b.zy), ~arg_2))), ~(~(~arg_2)) << (~arg_2 % 32u), vec2<i32>(54065i, global0[_wgslsmith_index_u32(~0u, 10u)]));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = -1i;
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(-26978i, 36999i), 1i, u_input.b.x);
    var_1 = ~_wgslsmith_div_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, var_1.x | 39439i, -2147483647i), -arg_1.c);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1484f), arg_1.b.xzy, func_2(!arg_1.b.x, arg_1.b.xz, arg_1.a.a.x, arg_1.a.e), abs(arg_1.d));
    return var_2.c.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    global0 = array<i32, 10>();
    let var_0 = _wgslsmith_div_f32(143f, -1240f);
    global0 = array<i32, 10>();
    let var_1 = arg_1.a.c;
    let var_2 = 2147483647i;
    return var_1 >= _wgslsmith_add_i32(u_input.b.x << (select(~47513u, ~arg_1.d, true) % 32u), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 297f;
    var var_1 = Struct_1(vec3<u32>(1u, 1u, 1u), func_5(!func_1(), Struct_2(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-362f, -1230f, 312f, 1307f) * vec4<f32>(-121f, -1000f, -482f, 1395f)), func_2(false, vec2<bool>(false, true), 1u, vec4<f32>(1161f, -1000f, -1267f, 1000f)), vec2<f32>(1f, 1f), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), func_2(false, vec2<bool>(true, false), 0u, vec4<f32>(1000f, 1000f, 494f, 1185f)).b, vec4<bool>(true, true, true, true)), u_input.a.yxw, 1u, abs(u_input.a.yx)), ~vec4<i32>(func_4(vec4<f32>(-440f, -1466f, 1000f, 287f), Struct_2(Struct_1(vec3<u32>(23802u, 4294967295u, 21695u), true, -1i, vec2<bool>(true, false), vec4<f32>(-113f, -1000f, 573f, 1322f)), vec4<bool>(false, true, false, false), vec3<i32>(u_input.b.x, 2147483647i, global0[_wgslsmith_index_u32(1u, 10u)]), 7409u, vec2<i32>(u_input.b.x, 13077i)), vec2<f32>(3497f, 339f), true).c, global0[_wgslsmith_index_u32(1u, 10u)], -3016i, -2479i)), 61404i, vec2<bool>(select(func_2(true, vec2<bool>(true, true), 1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(489f, -1499f, 116f, 199f) - vec4<f32>(-1321f, -1000f, 1628f, 1779f))).b.x, true, true), true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(1335f + -476f), _wgslsmith_f_op_f32(max(-3000f, 267f)), _wgslsmith_f_op_f32(trunc(1292f)), 579f))), vec4<f32>(-1287f, _wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(766f)))), _wgslsmith_f_op_f32(-1f))));
    let var_2 = true;
    let var_3 = -354f;
    let var_4 = Struct_5(vec3<i32>(2147483647i, reverseBits(~abs(global0[_wgslsmith_index_u32(var_1.a.x, 10u)])), global0[_wgslsmith_index_u32(var_1.a.x, 10u)]), func_4(var_1.e, func_2(false, !vec2<bool>(var_1.b, false), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, 584f, var_1.e.x, 1705f))), var_1.e.yy, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, var_1.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.e.x - var_3)))) * vec3<f32>(var_3, _wgslsmith_f_op_f32(round(-783f)), _wgslsmith_f_op_f32(abs(var_1.e.x)))));
    let var_5 = vec3<i32>(-1i) * -var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b.e.x), -(_wgslsmith_mod_vec4_i32(~vec4<i32>(5512i, 13788i, global0[_wgslsmith_index_u32(var_1.a.x, 10u)], -1i), u_input.a) << ((vec4<u32>(var_4.b.a.x, 26556u, 13497u, 29909u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a.x, var_4.b.a.x, 4294967295u, 12449u), vec4<u32>(var_4.b.a.x, 1u, 4294967295u, 12306u)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(436f - 1099f)), 265f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.c.x, var_3)) * var_4.b.e.x)))));
}

