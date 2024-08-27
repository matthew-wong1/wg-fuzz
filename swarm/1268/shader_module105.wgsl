struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-1i, i32(-2147483648), 2147483647i, -1i, -23935i, -13069i, 2638i, 2147483647i, 7791i, -1i, -1i, 22669i, 11922i, 1i, 1i, i32(-2147483648), 33547i, -1i, i32(-2147483648), -38690i, 0i, 1i);

var<private> global1: array<bool, 2>;

var<private> global2: array<Struct_3, 5>;

var<private> global3: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(55753u, 0u, 64717u), vec3<u32>(61465u, 0u, 0u), vec3<u32>(28192u, 32394u, 4294967295u), vec3<u32>(18936u, 1u, 48667u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(45019u, 90622u, 23878u), vec3<u32>(10384u, 55347u, 21284u), vec3<u32>(32316u, 1u, 51831u), vec3<u32>(4294967295u, 27100u, 62111u), vec3<u32>(2964u, 0u, 21226u), vec3<u32>(53501u, 20u, 4294967295u), vec3<u32>(46377u, 39216u, 217u), vec3<u32>(1u, 38511u, 4294967295u), vec3<u32>(61695u, 15115u, 8151u), vec3<u32>(36659u, 93205u, 20411u), vec3<u32>(68127u, 0u, 17074u), vec3<u32>(4294967295u, 42694u, 91243u), vec3<u32>(0u, 271u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 75344u), vec3<u32>(0u, 62900u, 35096u), vec3<u32>(0u, 43476u, 22912u), vec3<u32>(37848u, 1u, 43210u), vec3<u32>(31925u, 4294967295u, 0u), vec3<u32>(10279u, 69840u, 18426u), vec3<u32>(4683u, 4294967295u, 31739u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 19290u, 55075u), vec3<u32>(10945u, 70344u, 4294967295u), vec3<u32>(33207u, 18241u, 50897u), vec3<u32>(35394u, 56384u, 4294967295u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> bool {
    global3 = array<vec3<u32>, 30>();
    var var_0 = Struct_3(Struct_2(select(vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], true)), all(vec4<bool>(false, arg_2, false, false))), !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)])), true)), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-104f, arg_0, 1994f) - vec3<f32>(arg_0, arg_0, -159f)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(973f, 372f, arg_0)))))));
    global0 = array<i32, 22>();
    global2 = array<Struct_3, 5>();
    global0 = array<i32, 22>();
    return !(!select(arg_2, true, true));
}

fn func_4(arg_0: Struct_2) -> bool {
    global3 = array<vec3<u32>, 30>();
    var var_0 = vec2<i32>(~global0[_wgslsmith_index_u32(reverseBits(~(~u_input.c)), 22u)], global0[_wgslsmith_index_u32(u_input.a.x << (u_input.a.x % 32u), 22u)] ^ ~_wgslsmith_sub_i32(firstLeadingBit(2147483647i), u_input.b.x));
    var var_1 = Struct_3(arg_0, _wgslsmith_clamp_u32(1u, 4294967295u, ~67603u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-280f + 358f), _wgslsmith_f_op_f32(-627f * 1452f)))), 1599f, -805f));
    var_0 = firstLeadingBit(_wgslsmith_add_vec2_i32(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(22845i, var_0.x), u_input.b.yx, vec2<i32>(-2147483647i, -2147483647i))), u_input.b.zz));
    var_0 = min(u_input.b.xx, abs(~vec2<i32>(u_input.b.x, global0[_wgslsmith_index_u32(var_1.b, 22u)]) << (~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.b), vec2<u32>(1u, u_input.c)) % vec2<u32>(32u))));
    return all(select(arg_0.a, !select(vec2<bool>(arg_0.a.x, true), vec2<bool>(var_1.a.a.x, true), global1[_wgslsmith_index_u32(var_1.b, 2u)]), true)) && true;
}

fn func_2() -> Struct_2 {
    global3 = array<vec3<u32>, 30>();
    var var_0 = !vec3<bool>(false, all(!(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(11917u, 2u)]))), !global1[_wgslsmith_index_u32(max(~u_input.a.x, u_input.c), 2u)]);
    var var_1 = vec2<bool>(func_4(Struct_2(select(!var_0.xz, var_0.zz, func_3(-679f, vec2<i32>(-2147483647i, -39750i), false)))), true);
    let var_2 = any(!(!(!select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, var_0.x, var_1.x), vec3<bool>(var_0.x, true, global1[_wgslsmith_index_u32(0u, 2u)])))));
    global3 = array<vec3<u32>, 30>();
    return Struct_2(!select(vec2<bool>(true, true), vec2<bool>(!var_2, true), false));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = arg_1;
    global2 = array<Struct_3, 5>();
    global2 = array<Struct_3, 5>();
    var var_2 = var_0;
    return func_2();
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -952f))), _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = ~u_input.a;
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    var var_2 = global2[_wgslsmith_index_u32(40031u, 5u)];
    return select(abs(1i), u_input.b.x, all(select(vec3<bool>(arg_1.a.x, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(115764u, 2u)]))) != global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(4294967295u, var_1.x)), ~0u), 2u)]);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1885f), _wgslsmith_f_op_f32(arg_3.c.x + _wgslsmith_f_op_f32(-arg_0.c.x))));
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    let var_1 = _wgslsmith_mult_i32(~func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, 856f, 711f, 2201f))), func_5(func_2(), Struct_1(arg_0.a.a.x)), Struct_2(select(vec2<bool>(false, true), arg_0.a.a, true))), global0[_wgslsmith_index_u32(arg_0.b, 22u)]);
    return !vec3<bool>(!(!any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], false))), false, !(!arg_0.a.a.x && !arg_0.a.a.x));
}

fn func_7(arg_0: bool, arg_1: bool, arg_2: vec4<i32>, arg_3: u32) -> Struct_2 {
    global0 = array<i32, 22>();
    var var_0 = -38015i;
    let var_1 = Struct_2(!vec2<bool>(arg_0, global1[_wgslsmith_index_u32(~(~42575u), 2u)]));
    global2 = array<Struct_3, 5>();
    global3 = array<vec3<u32>, 30>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_7(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(6195u, 2u)], global1[_wgslsmith_index_u32(41228u, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), func_1(Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(32767u, 2u)], true)), 1u, vec3<f32>(-1583f, 1447f, 1475f)), Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], false)), vec3<u32>(u_input.c, 1u, u_input.c), Struct_3(Struct_2(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], false)), 1u, vec3<f32>(236f, -644f, -863f))))), func_4(func_5(Struct_2(vec2<bool>(true, false)), Struct_1(false))), _wgslsmith_sub_vec4_i32(-(~vec4<i32>(-2147483647i, 1i, u_input.b.x, -29093i)), ~vec4<i32>(1i, 1i, -5048i, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]) << (select(vec4<u32>(u_input.c, 1u, 4294967295u, 0u), u_input.a, vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 2u)], false, true, true)) % vec4<u32>(32u))), countOneBits(firstLeadingBit(44439u)) & _wgslsmith_dot_vec3_u32(u_input.a.wwz, abs(vec3<u32>(u_input.a.x, 60621u, 1u)))), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(34748u, u_input.c), vec2<u32>(u_input.c, 55613u)), countOneBits(u_input.a.x)), 17948u)), _wgslsmith_div_vec3_f32(vec3<f32>(489f, _wgslsmith_div_f32(1513f, -1046f), _wgslsmith_f_op_f32(f32(-1f) * -1188f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1492f, -154f, -1000f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1688f, -556f, -1108f), vec3<f32>(-491f, -653f, 680f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-153f, 219f, 439f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-802f, 1220f, 1442f)), vec3<bool>(true, global1[_wgslsmith_index_u32(33657u, 2u)], global1[_wgslsmith_index_u32(64810u, 2u)])))))));
    let var_1 = Struct_2(vec2<bool>(func_2().a.x, func_5(func_5(func_2(), Struct_1(var_0.a.a.x)), Struct_1(true)).a.x));
    var_0 = global2[_wgslsmith_index_u32(~1u >> (countOneBits(_wgslsmith_div_u32(u_input.a.x, ~abs(var_0.b))) % 32u), 5u)];
    global0 = array<i32, 22>();
    var var_2 = Struct_1(any(select(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], var_1.a.x)), select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], var_1.a.x, global1[_wgslsmith_index_u32(u_input.c, 2u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<bool>(var_0.a.a.x, false, false)), !var_0.a.a.x || func_5(Struct_2(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 2u)])), Struct_1(true)).a.x)));
    global3 = array<vec3<u32>, 30>();
    var_2 = Struct_1(true);
    var var_3 = false;
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-18439i, _wgslsmith_f_op_f32(step(1229f, var_0.c.x)), ~select(-vec4<i32>(0i, -2147483647i, -2147483647i, global0[_wgslsmith_index_u32(var_0.b, 22u)]), ~(~vec4<i32>(32043i, u_input.b.x, global0[_wgslsmith_index_u32(var_0.b, 22u)], -21490i)), var_2.a));
}

