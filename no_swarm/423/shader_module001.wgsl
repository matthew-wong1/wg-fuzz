struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 101742u;

var<private> global1: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-20709i, -57254i, 13289i, -1120i), vec4<i32>(31998i, 0i, -39053i, -43237i), vec4<i32>(i32(-2147483648), -3774i, 4524i, 0i), vec4<i32>(5611i, i32(-2147483648), i32(-2147483648), -1i), vec4<i32>(12031i, i32(-2147483648), 1i, -34199i), vec4<i32>(19066i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(-20349i, -1i, 62509i, 7198i));

var<private> global2: array<vec4<f32>, 22>;

var<private> global3: Struct_3 = Struct_3(true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = !vec3<bool>(arg_0.x, !arg_0.x, any(arg_1.b));
    var var_1 = reverseBits(arg_1.e.a.x);
    global0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d | vec3<u32>(arg_1.c, u_input.d.x, arg_1.e.d)) >> (firstTrailingBit(_wgslsmith_add_u32(~4294967295u, firstTrailingBit(74137u))) % 32u), ~u_input.d.x, select(_wgslsmith_mod_u32(min(u_input.c << (6983u % 32u), _wgslsmith_add_u32(81974u, 979u)), u_input.c), 1u, true));
    var_0 = arg_0;
    var var_2 = u_input.b;
    return var_0.x;
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_sub_i32(-9587i, u_input.e.x), select(select(!(!vec3<bool>(true, false, global3.a)), !select(vec3<bool>(false, global3.a, global3.a), vec3<bool>(true, global3.a, global3.a), vec3<bool>(true, false, true)), vec3<bool>(global3.a == true, global3.a, false)), !select(!vec3<bool>(global3.a, global3.a, true), vec3<bool>(global3.a, global3.a, global3.a), !global3.a), vec3<bool>(func_3(vec3<bool>(global3.a, global3.a, false), Struct_2(vec3<f32>(674f, 246f, -1000f), vec4<bool>(global3.a, global3.a, false, true), u_input.d.x, -396f, Struct_1(vec3<i32>(-13693i, u_input.a, 19075i), 17755u, 13289u, u_input.c)), 1i), func_3(vec3<bool>(false, global3.a, true), Struct_2(vec3<f32>(-1445f, 1874f, -1462f), vec4<bool>(true, true, global3.a, true), u_input.d.x, 639f, Struct_1(vec3<i32>(u_input.a, u_input.e.x, u_input.b), 4294967295u, u_input.c, 1u)), _wgslsmith_mult_i32(0i, u_input.a)), func_3(select(vec3<bool>(global3.a, false, false), vec3<bool>(global3.a, false, false), vec3<bool>(global3.a, global3.a, global3.a)), Struct_2(vec3<f32>(936f, -536f, -312f), vec4<bool>(global3.a, true, false, global3.a), 7654u, 2183f, Struct_1(vec3<i32>(u_input.e.x, -1i, -1i), 1u, 47951u, u_input.d.x)), reverseBits(u_input.e.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], vec4<i32>(func_2().a, 1i, u_input.a, i32(-1i) * -39598i));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-379f, 1084f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f - -661f))));
    global1 = array<vec4<i32>, 7>();
    global0 = ~min(9105u, 1u);
    let var_2 = arg_0.b;
    return !vec2<bool>(2147483647i > arg_0.a.x, any(select(arg_1.b, vec3<bool>(true, false, false), arg_1.b.x)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.ywy), vec3<f32>(arg_1.x, 1001f, arg_1.x))) * vec3<f32>(2260f, _wgslsmith_f_op_f32(-1903f * -1000f), _wgslsmith_f_op_f32(abs(arg_1.x))))), select(!select(!vec4<bool>(false, arg_2.x, true, false), select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(true, false, global3.a, global3.a), vec4<bool>(global3.a, global3.a, global3.a, global3.a)), vec4<bool>(true, global3.a, global3.a, global3.a)), vec4<bool>(!global3.a, arg_2.x, !arg_2.x, false && (u_input.c <= 89582u)), vec4<bool>(!all(vec2<bool>(arg_2.x, false)), true, true, global3.a)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-757f, _wgslsmith_f_op_f32(abs(-678f))))), Struct_1(vec3<i32>(u_input.e.x, -1i, -max(u_input.b, 5349i)), select(_wgslsmith_div_u32(0u, ~95276u), ~abs(u_input.c), false), 125958u, u_input.c));
    global0 = _wgslsmith_clamp_u32(u_input.c, min(~33680u, max(abs(9720u), arg_3.x)) << (25337u % 32u), 1u);
    var var_1 = _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(arg_1.x * -782f))), !var_0.b.x));
    var_1 = var_0.a.x;
    let var_2 = Struct_3(true);
    return Struct_3(true);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    global3 = func_5(firstTrailingBit(abs(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, abs(31698u)), 7u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(2232f, 2137f, arg_0.x, 689f)), vec4<f32>(arg_0.x, 127f, arg_0.x, arg_0.x))))), func_4(Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(u_input.a, u_input.b, u_input.b)), _wgslsmith_sub_u32(abs(u_input.d.x), u_input.d.x), 1u, 0u), func_2()), select(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.c), 83184u), max(u_input.d.x, u_input.d.x)), u_input.d.zz ^ vec2<u32>(abs(u_input.c), u_input.c ^ 0u), func_4(Struct_1(vec3<i32>(-2147483647i, u_input.e.x, -17099i), reverseBits(u_input.c), u_input.c, 1u), Struct_4(44179i, vec3<bool>(false, true, true))).x));
    var var_0 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.d.x, 0u), vec4<u32>(u_input.c, u_input.c, u_input.d.x, u_input.c), vec4<u32>(u_input.d.x, 66829u, 74283u, u_input.c)), select(vec4<u32>(u_input.c, 1412u, 22939u, u_input.c), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 67010u), vec4<bool>(true, true, global3.a, false))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 27413u, 20030u, 1u), vec4<u32>(56892u, 4294967295u, u_input.c, u_input.d.x), vec4<u32>(47117u, 0u, 0u, u_input.c)), firstTrailingBit(vec4<u32>(4294967295u, u_input.d.x, u_input.d.x, u_input.d.x)))), u_input.c), 22u)]);
    let var_1 = func_5(~global1[_wgslsmith_index_u32(countOneBits(~_wgslsmith_div_u32(u_input.c, 71506u)), 7u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-392f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-641f, -1508f))), _wgslsmith_f_op_f32(-1186f + -918f), _wgslsmith_f_op_f32(var_0.x - arg_0.x))), vec2<bool>(false & global3.a, true), u_input.d.xx);
    global2 = array<vec4<f32>, 22>();
    global1 = array<vec4<i32>, 7>();
    return _wgslsmith_f_op_f32(-arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 22>();
    var var_0 = _wgslsmith_mod_u32(u_input.d.x, 30647u);
    global0 = u_input.c << (u_input.c % 32u);
    var var_1 = Struct_3(any(vec3<bool>(all(vec3<bool>(true, global3.a, global3.a)), global3.a, global3.a)));
    var var_2 = Struct_3(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global2[_wgslsmith_index_u32(u_input.c, 22u)])))))));
}

