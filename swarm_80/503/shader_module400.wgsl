struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<i32>(-1i, -5440i, -3141i, 31263i), vec2<i32>(0i, -8875i), vec4<i32>(0i, -1i, 2147483647i, -41291i), 1742f, false), Struct_2(vec4<i32>(-1i, -9113i, i32(-2147483648), -34382i), vec2<i32>(1i, -18555i), vec4<i32>(-1i, -15324i, 31835i, 20196i), -320f, false), Struct_2(vec4<i32>(-21777i, 15930i, -1i, i32(-2147483648)), vec2<i32>(-49269i, 18425i), vec4<i32>(i32(-2147483648), -74416i, 0i, 52582i), -430f, false), Struct_2(vec4<i32>(28315i, 1i, 0i, 67457i), vec2<i32>(23409i, 2147483647i), vec4<i32>(2147483647i, -14573i, -1i, 2147483647i), -1000f, true), Struct_2(vec4<i32>(16836i, -25660i, 6099i, 2147483647i), vec2<i32>(7070i, -3124i), vec4<i32>(2147483647i, -77109i, 2147483647i, 2147483647i), -1167f, false), Struct_2(vec4<i32>(17393i, -1i, 1i, 64318i), vec2<i32>(-1i, 0i), vec4<i32>(-47598i, -34313i, i32(-2147483648), 1i), -621f, false), Struct_2(vec4<i32>(1i, 0i, 1i, -13371i), vec2<i32>(-25079i, 6543i), vec4<i32>(0i, -34873i, i32(-2147483648), -1i), -520f, true), Struct_2(vec4<i32>(-1i, 1i, 44462i, 1i), vec2<i32>(-1i, -68845i), vec4<i32>(-8960i, 27039i, 0i, 14142i), -106f, true), Struct_2(vec4<i32>(-44068i, i32(-2147483648), i32(-2147483648), 45581i), vec2<i32>(13634i, -6886i), vec4<i32>(1i, 0i, -1i, 32334i), 420f, false), Struct_2(vec4<i32>(-1i, 0i, -60743i, -9028i), vec2<i32>(1i, i32(-2147483648)), vec4<i32>(-38898i, -40453i, 1i, -1i), -442f, false), Struct_2(vec4<i32>(0i, 1261i, -29477i, 1i), vec2<i32>(3084i, 35929i), vec4<i32>(35700i, 1i, 2147483647i, 0i), 469f, true), Struct_2(vec4<i32>(-1i, 2147483647i, 5002i, -18830i), vec2<i32>(-15588i, -1i), vec4<i32>(0i, -41894i, -11602i, 0i), 943f, true), Struct_2(vec4<i32>(2147483647i, 34493i, -1i, 1i), vec2<i32>(0i, -81257i), vec4<i32>(0i, 0i, 122i, 21094i), 1000f, false), Struct_2(vec4<i32>(83912i, -35865i, 2147483647i, 0i), vec2<i32>(20766i, 11322i), vec4<i32>(-773i, 12659i, i32(-2147483648), 1i), -1275f, false), Struct_2(vec4<i32>(-33245i, -27611i, -1i, 34346i), vec2<i32>(1738i, -8157i), vec4<i32>(-1i, -1i, -64184i, 29081i), -856f, true), Struct_2(vec4<i32>(i32(-2147483648), -1i, 0i, 29149i), vec2<i32>(-43580i, 2147483647i), vec4<i32>(-1i, -1i, i32(-2147483648), 1i), 176f, true), Struct_2(vec4<i32>(-1i, i32(-2147483648), -1i, 1i), vec2<i32>(-25695i, 34113i), vec4<i32>(20729i, 2147483647i, 2147483647i, 0i), -326f, false), Struct_2(vec4<i32>(-1i, -6152i, 0i, -1i), vec2<i32>(-6354i, 0i), vec4<i32>(12088i, 2147483647i, i32(-2147483648), 887i), -1264f, false), Struct_2(vec4<i32>(22217i, 0i, -1i, 2147483647i), vec2<i32>(-17350i, 1i), vec4<i32>(i32(-2147483648), 22776i, 0i, i32(-2147483648)), -637f, false), Struct_2(vec4<i32>(2147483647i, -64734i, 34875i, 0i), vec2<i32>(-56646i, -29820i), vec4<i32>(-1i, 2244i, -8955i, 50866i), 1705f, true), Struct_2(vec4<i32>(-39037i, -39694i, 0i, 8846i), vec2<i32>(0i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -40342i, 29454i), 1198f, false));

var<private> global1: Struct_2;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = vec2<bool>(!all(vec2<bool>(global1.e, global1.e)), _wgslsmith_mult_u32(1u, u_input.e.x) <= countOneBits(4294967295u));
    let var_1 = var_0.x;
    let var_2 = Struct_1(reverseBits(1u), -global1.a.wx);
    let var_3 = global0[_wgslsmith_index_u32(u_input.d, 21u)];
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(global1.d - 2077f);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d, global1.d) * vec2<f32>(_wgslsmith_f_op_f32(min(1905f, -1622f)), _wgslsmith_f_op_f32(-global1.d))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.d, global1.d))))), vec2<f32>(_wgslsmith_f_op_f32(-178f * -1743f), global1.d)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1329f, global1.d) - _wgslsmith_f_op_f32(func_3(0i, Struct_1(arg_1.a, global1.b), 0i))), var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1135f));
    global0 = array<Struct_2, 21>();
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(reverseBits(0i), arg_1.b.x), Struct_1(33283u, arg_1.b), u_input.c)))), -1244f));
    global0 = array<Struct_2, 21>();
    return Struct_1(21284u, ~((vec2<i32>(-1i) * -global1.c.zz) | -abs(vec2<i32>(0i, -33944i))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.d)));
    global1 = Struct_2(global1.a, vec2<i32>(~2923i, arg_2.b.x), vec4<i32>(max(arg_2.b.x, -2783i), global1.b.x, _wgslsmith_sub_i32(~(29711i << (arg_2.a % 32u)), min(_wgslsmith_add_i32(-48771i, -11445i), 0i)), -2147483647i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1919f * -408f), _wgslsmith_f_op_f32(floor(global1.d)))))), false);
    global0 = array<Struct_2, 21>();
    let var_1 = Struct_1(12139u, vec2<i32>(~57294i, arg_2.b.x ^ u_input.c));
    global1 = Struct_2(global1.a, vec2<i32>(global1.a.x, _wgslsmith_add_i32(-_wgslsmith_sub_i32(-38376i, 27667i), 0i)), -firstLeadingBit(global1.c << (max(vec4<u32>(0u, arg_2.a, 51341u, 0u), vec4<u32>(16334u, var_1.a, 97714u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f - global1.d) * 1070f) + -106f)), arg_0);
    return _wgslsmith_sub_i32(arg_2.b.x, -1i);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = vec4<i32>(-32547i, func_4(false, func_2(true, Struct_1(max(4294967295u, 4294967295u), _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.b.x, -1i), arg_1.b))), func_2(any(!arg_2), arg_1)), -2147483647i, 2147483647i);
    var var_1 = !arg_2;
    return ~27348i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(global1.a.x, u_input.c, ~countOneBits(abs(~global1.a.x)));
    global1 = Struct_2(_wgslsmith_mult_vec4_i32(global1.c, ~_wgslsmith_add_vec4_i32(vec4<i32>(-13774i, global1.c.x, global1.a.x, 0i) >> (vec4<u32>(1u, u_input.a, u_input.a, u_input.e.x) % vec4<u32>(32u)), global1.a)), vec2<i32>(abs(max(global1.b.x, 2147483647i)), var_0.x & _wgslsmith_mod_i32(global1.c.x, -global1.a.x)), -vec4<i32>(_wgslsmith_div_i32(-u_input.b, func_1(true, Struct_1(u_input.d, var_0.zz), vec3<bool>(true, true, global1.e), Struct_1(u_input.d, global1.c.yz))), var_0.x, max(var_0.x, global1.b.x) << (44892u % 32u), abs(i32(-1i) * -30205i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(430f + global1.d)) - _wgslsmith_f_op_f32(-global1.d))), true);
    let var_1 = select(select(!select(select(vec2<bool>(global1.e, true), vec2<bool>(global1.e, global1.e), vec2<bool>(true, global1.e)), select(vec2<bool>(global1.e, global1.e), vec2<bool>(true, true), true), !global1.e), select(!select(vec2<bool>(global1.e, global1.e), vec2<bool>(global1.e, global1.e), vec2<bool>(false, true)), !vec2<bool>(global1.e, false), vec2<bool>(all(vec4<bool>(true, true, global1.e, global1.e)), true)), max(0u, u_input.a << (52224u % 32u)) <= u_input.a), vec2<bool>(global1.e, false), global1.e);
    let var_2 = func_2(any(select(select(vec2<bool>(global1.e, global1.e), select(var_1, var_1, vec2<bool>(var_1.x, global1.e)), true), vec2<bool>(true, var_0.x != -2147483647i), vec2<bool>(true, global1.d < 402f))), Struct_1(u_input.d, var_0.yy));
    global1 = global0[_wgslsmith_index_u32(~(0u << (reverseBits(_wgslsmith_dot_vec3_u32(max(vec3<u32>(29805u, var_2.a, 1u), vec3<u32>(u_input.a, u_input.a, u_input.e.x)), ~vec3<u32>(1u, 22460u, 1u))) % 32u)), 21u)];
    global1 = global0[_wgslsmith_index_u32(31483u | ~abs(var_2.a), 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(max(vec2<i32>(~(-1i), global1.c.x), -vec2<i32>(-2147483647i, 0i))), u_input.e, _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(65628i ^ var_0.x, 1i)), u_input.b), var_2.a, abs(u_input.e));
}

