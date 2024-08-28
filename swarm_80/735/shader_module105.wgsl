struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: array<i32, 26> = array<i32, 26>(23439i, 2147483647i, 0i, -26205i, 0i, 2147483647i, 23461i, -19569i, 0i, -27033i, i32(-2147483648), i32(-2147483648), -27956i, -17160i, 1327i, -10876i, 2147483647i, -14010i, 2147483647i, 0i, -50259i, 0i, -17435i, i32(-2147483648), 0i, 38933i);

var<private> global1: array<bool, 22> = array<bool, 22>(true, true, true, false, false, false, false, false, true, true, true, false, false, true, false, false, false, false, true, false, false, false);

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(Struct_1(0i, vec2<bool>(true, true)), 0i), false, vec3<f32>(840f, 1493f, -592f), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(40449i, vec2<bool>(true, true)), 0i), false, vec3<f32>(-865f, 319f, -497f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(26999i, vec2<bool>(false, true)), 1i), true, vec3<f32>(-474f, -2144f, 780f), vec3<bool>(true, true, false)), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<bool>(true, true)), 1i), true, vec3<f32>(-1523f, 2665f, -788f), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<bool>(false, true)), 2147483647i), true, vec3<f32>(-1000f, 150f, -1000f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(4573i, vec2<bool>(false, true)), -1i), false, vec3<f32>(327f, -279f, 724f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(-15840i, vec2<bool>(false, false)), -1i), false, vec3<f32>(-1814f, -774f, 1000f), vec3<bool>(false, false, false)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(true, true)), 0i), false, vec3<f32>(234f, -604f, -365f), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(-36345i, vec2<bool>(true, false)), -48820i), true, vec3<f32>(-114f, -2309f, -2032f), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(false, true)), i32(-2147483648)), false, vec3<f32>(-496f, 1304f, -525f), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(-21088i, vec2<bool>(true, true)), -1822i), true, vec3<f32>(-890f, 263f, 1352f), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-30976i, vec2<bool>(false, true)), 3632i), true, vec3<f32>(399f, -891f, 1087f), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(-32254i, vec2<bool>(true, true)), 26851i), true, vec3<f32>(-324f, -124f, 1145f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(-68410i, vec2<bool>(false, false)), i32(-2147483648)), false, vec3<f32>(523f, 493f, 602f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(-13175i, vec2<bool>(false, false)), 2147483647i), true, vec3<f32>(1422f, 1557f, 1000f), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(1i, vec2<bool>(false, false)), 2147483647i), false, vec3<f32>(745f, 1000f, -820f), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<bool>(false, false)), 0i), false, vec3<f32>(-480f, 875f, 289f), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(1i, vec2<bool>(false, true)), 33173i), false, vec3<f32>(1689f, -1000f, 1155f), vec3<bool>(true, false, false)), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<bool>(false, false)), 0i), true, vec3<f32>(-488f, -1313f, -1356f), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(0i, vec2<bool>(false, true)), 0i), true, vec3<f32>(-1000f, 1065f, 563f), vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(17808i, vec2<bool>(false, true)), 42067i), true, vec3<f32>(-328f, 1814f, -1000f), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-1i, vec2<bool>(true, false)), -15170i), true, vec3<f32>(429f, -406f, -1000f), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-20447i, vec2<bool>(false, false)), 1i), false, vec3<f32>(1054f, 965f, 798f), vec3<bool>(false, true, true)), Struct_3(Struct_2(Struct_1(46711i, vec2<bool>(true, false)), 35033i), true, vec3<f32>(1083f, -1858f, -2252f), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(14922i, vec2<bool>(true, true)), 52344i), true, vec3<f32>(2476f, -1924f, 532f), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(-3694i, vec2<bool>(true, false)), -12382i), true, vec3<f32>(-1033f, -2267f, 587f), vec3<bool>(true, false, true)), Struct_3(Struct_2(Struct_1(1i, vec2<bool>(false, true)), -7617i), true, vec3<f32>(1529f, 307f, 482f), vec3<bool>(false, true, true)));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_1 {
    var var_0 = firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(-1i, 6508i) >> (_wgslsmith_div_u32(u_input.c.x, 1u) % 32u), abs(global0[_wgslsmith_index_u32(u_input.d >> (50357u % 32u), 26u)]), u_input.b.x) & select(~(vec3<i32>(global4.a, global4.a, global4.a) >> (vec3<u32>(0u, 46089u, 4294967295u) % vec3<u32>(32u))), -vec3<i32>(-25769i, 1i, 108046i) >> (_wgslsmith_mult_vec3_u32(u_input.c.wzw, vec3<u32>(0u, u_input.c.x, 0u)) % vec3<u32>(32u)), true));
    global2 = array<Struct_3, 27>();
    let var_1 = u_input.b;
    var_0 = reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(25960i, -2147483647i, 0i) & vec3<i32>(var_0.x, u_input.a, global4.a), vec3<i32>(2147483647i, -22159i, global0[_wgslsmith_index_u32(1u, 26u)]) << (u_input.c.xyy % vec3<u32>(32u))) >> (firstTrailingBit(u_input.c.wyw) % vec3<u32>(32u)));
    return Struct_1(60666i, select(!(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 22u)]))), vec2<bool>(all(vec2<bool>(true, false)) && (global1[_wgslsmith_index_u32(1u, 22u)] && global4.b.x), true), !select(vec2<bool>(false, true), global4.b, vec2<bool>(true, true))));
}

fn func_3() -> vec4<f32> {
    var var_0 = 1i;
    var var_1 = Struct_1(9047i, global4.b);
    let var_2 = abs(firstTrailingBit(global0[_wgslsmith_index_u32(~28909u, 26u)]));
    let var_3 = var_1.a & 12796i;
    var var_4 = abs(-global4.a);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1135f, 2696f, 240f, -620f) - vec4<f32>(185f, 631f, -1489f, 757f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(219f, 845f, 1000f, 296f))), select(vec4<bool>(global1[_wgslsmith_index_u32(28269u, 22u)], false, global1[_wgslsmith_index_u32(22023u, 22u)], false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(u_input.c.x, 22u)], true, global3.x), global1[_wgslsmith_index_u32(u_input.c.x, 22u)])))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -921f)))), -359f, _wgslsmith_f_op_f32(select(1f, 1000f, -1i != var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -374f), _wgslsmith_f_op_f32(f32(-1f) * -596f))))), ~_wgslsmith_add_u32(1u, u_input.c.x) == u_input.d));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<i32, 26>();
    let var_0 = 0i;
    var var_1 = vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_1.b.x | false, global4.b.x, true);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + vec4<f32>(_wgslsmith_f_op_f32(-369f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_0.x)), -3201f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-546f)) * _wgslsmith_div_f32(497f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(abs(-493f))))));
    return vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 22u)], arg_0.x == -1204f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), u_input.a);
    var var_1 = func_1().b;
    global3 = !(!vec2<bool>((global4.b.x != true) || global3.x, false));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2607f, -1197f)))), vec2<f32>(-1405f, 1000f)))));
    var var_3 = all(vec2<bool>(global3.x, !(true | !var_1.x)));
    let var_4 = Struct_1(abs(-_wgslsmith_mod_i32(~9254i, u_input.a)), select(select(global4.b, select(func_2(vec3<f32>(628f, var_2.x, var_2.x), Struct_1(global4.a, vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 22u)]))), select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 22u)]), vec2<bool>(true, false), global4.b), !var_0.a.b), any(!vec2<bool>(global3.x, global4.b.x))), select(var_0.a.b, select(select(global4.b, vec2<bool>(var_0.a.b.x, false), vec2<bool>(true, false)), global4.b, true), true), global4.b));
    let var_5 = global2[_wgslsmith_index_u32(37126u, 27u)];
    let var_6 = !var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

