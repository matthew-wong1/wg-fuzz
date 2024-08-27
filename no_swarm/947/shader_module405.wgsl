struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 26> = array<bool, 26>(true, true, false, true, true, true, true, false, false, true, true, false, true, false, true, true, false, false, true, true, false, true, true, false, false, true);

var<private> global2: i32 = -16482i;

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> vec2<i32> {
    return abs(vec2<i32>(u_input.b, abs(-47075i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(func_3(vec2<u32>(u_input.a, _wgslsmith_mod_u32(1u, ~u_input.a)), ~(~(~vec4<i32>(u_input.b, u_input.b, global0.a.x, -52395i))), firstLeadingBit(vec4<i32>(i32(-1i) * -21551i, ~u_input.b, u_input.b, arg_0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.x, 987f, global0.b.x), arg_2)), _wgslsmith_f_op_vec3_f32(-global0.b)))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2.x), global0.b.x)));
    global2 = _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(abs(-(~0i)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, arg_1, 25884i, arg_1)), vec4<i32>(_wgslsmith_div_i32(-14614i, arg_1), ~(-3587i), _wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x), 1i))));
    let var_1 = max(42171u, 14804u | (1u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(1u, u_input.a, u_input.a)) % 32u)));
    return var_0;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = select(arg_3.d, !(all(vec3<bool>(true, arg_3.d, global1[_wgslsmith_index_u32(1u, 26u)])) | arg_1.d), !global1[_wgslsmith_index_u32(34212u, 26u)]);
    var var_1 = -627f;
    let var_2 = ~vec3<u32>(u_input.a, 10470u, (u_input.a << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) ^ (_wgslsmith_add_u32(u_input.a, u_input.a) ^ 1u));
    var var_3 = select(!global3.xxy, global3.wxz, !global3.yww);
    var var_4 = -global0.a.x;
    return global3.zww;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = 4294967295u;
    let var_1 = func_2(Struct_1(abs(vec2<i32>(_wgslsmith_sub_i32(-1i, 29579i), -6101i)), global0.b), 2147483647i, global0.b);
    var var_2 = Struct_2(var_1, var_1, var_1, global3.x);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1375f, var_2.b.b.x, -722f) * var_2.c.b)));
    let var_3 = var_1;
    return var_3;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    global1 = array<bool, 26>();
    let var_0 = !vec2<bool>(true, arg_1.d);
    return Struct_2(arg_0, func_5(vec3<bool>(true, !arg_1.d, arg_1.d), vec3<bool>(true, var_0.x, select(true, global3.x, false) && any(vec4<bool>(false, arg_1.d, true, false))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 19752u, u_input.a), ~vec3<u32>(0u, u_input.a, 4294967295u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 25735u, 4294967295u), vec3<u32>(10309u, 0u, u_input.a)), vec3<u32>(14348u, u_input.a, 16698u)))), arg_0, false);
}

fn func_1() -> Struct_1 {
    global2 = global0.a.x << ((abs(u_input.a) | ~_wgslsmith_add_u32(~18158u, u_input.a)) % 32u);
    var var_0 = -1i;
    var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-52289i, u_input.b, ~global0.a.x, u_input.b), vec4<i32>(-1i) * -vec4<i32>(u_input.b, 32305i, u_input.b, global0.a.x)), max(vec4<i32>(-1i) * -vec4<i32>(1i, global0.a.x, global0.a.x, -2147483647i), ~(vec4<i32>(u_input.b, 11326i, u_input.b, 1i) | vec4<i32>(-14964i, global0.a.x, global0.a.x, global0.a.x)))), -(~global0.a.x));
    var var_1 = func_6(func_5(select(!vec3<bool>(global3.x, true, false), vec3<bool>(global3.x || true, global3.x, true & global1[_wgslsmith_index_u32(56021u, 26u)]), vec3<bool>(global3.x, true, false | global1[_wgslsmith_index_u32(u_input.a, 26u)])), select(!select(global3.wyy, global3.yxx, global3.x), func_4(_wgslsmith_f_op_vec2_f32(-global0.b.xz), Struct_2(Struct_1(global0.a, global0.b), Struct_1(vec2<i32>(global0.a.x, 10440i), global0.b), Struct_1(vec2<i32>(1i, u_input.b), global0.b), false), func_2(Struct_1(global0.a, vec3<f32>(276f, global0.b.x, global0.b.x)), u_input.b, vec3<f32>(406f, global0.b.x, -981f)), Struct_2(Struct_1(global0.a, global0.b), Struct_1(vec2<i32>(1i, global0.a.x), vec3<f32>(-1574f, -429f, global0.b.x)), Struct_1(global0.a, vec3<f32>(global0.b.x, 1636f, 1442f)), global3.x)), !(!global3.xxx)), u_input.a), Struct_2(Struct_1(global0.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-302f, 753f, global0.b.x) - vec3<f32>(-2045f, -1000f, -1176f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-946f, global0.b.x, 847f)))), Struct_1(vec2<i32>(~u_input.b, ~(-1i)), _wgslsmith_div_vec3_f32(vec3<f32>(-374f, global0.b.x, -184f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, 294f, global0.b.x))))), func_2(Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x) - global0.b)), func_5(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(106845u, 26u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 26u)], true, true), false), select(global3.xxz, global3.zyw, vec3<bool>(false, global3.x, global3.x)), 42751u << (u_input.a % 32u)).a.x, global0.b), select(true, global3.x | !global1[_wgslsmith_index_u32(23342u, 26u)], any(vec3<bool>(false, false, false)))), ~_wgslsmith_add_i32(-62097i, ~(global0.a.x >> (1u % 32u))));
    let var_2 = reverseBits(~u_input.a);
    return func_5(vec3<bool>(0u <= min(var_2, u_input.a ^ var_2), global1[_wgslsmith_index_u32(20713u, 26u)], true), vec3<bool>(!func_6(func_6(var_1.c, Struct_2(var_1.a, var_1.a, var_1.c, global1[_wgslsmith_index_u32(63792u, 26u)]), -1i).a, Struct_2(Struct_1(var_1.c.a, global0.b), var_1.a, Struct_1(vec2<i32>(global0.a.x, 22584i), var_1.b.b), var_1.d), u_input.b).d, false, all(vec2<bool>(!global3.x, false))), 0u);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_mod_vec4_i32(~(~vec4<i32>(arg_2.a.x, global0.a.x, 1i, 8398i) << (~vec4<u32>(u_input.a, 0u, 0u, u_input.a) % vec4<u32>(32u))), -(~(~vec4<i32>(0i, arg_2.a.x, arg_1.a.x, 66135i)))) << (~abs(abs(~vec4<u32>(u_input.a, 0u, 1u, 51426u))) % vec4<u32>(32u));
    let var_1 = func_1();
    global1 = array<bool, 26>();
    global1 = array<bool, 26>();
    var var_2 = func_2(Struct_1(max(abs(var_1.a), reverseBits(max(global0.a, vec2<i32>(u_input.b, 1i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_2.b.x, global0.b.x) + arg_0.b)))), var_1.a.x, vec3<f32>(1976f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1011f, _wgslsmith_f_op_f32(f32(-1f) * -160f)))), func_6(func_2(func_6(var_1, Struct_2(Struct_1(var_1.a, arg_1.b), var_1, var_1, false), arg_1.a.x).a, arg_0.a.x, _wgslsmith_f_op_vec3_f32(select(var_1.b, arg_1.b, global3.x))), func_6(Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(-776f, -810f, -1000f)), Struct_2(var_1, var_1, arg_0, global1[_wgslsmith_index_u32(u_input.a, 26u)]), var_1.a.x), firstTrailingBit(~var_0.x)).b.b.x)).a.x;
    return Struct_2(func_1(), var_1, var_1, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_1(countOneBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.a.x, -11143i), global0.a, global0.a)), _wgslsmith_f_op_vec3_f32(-global0.b)), func_1(), func_5(func_4(global0.b.yx, func_6(func_5(vec3<bool>(false, true, false), global3.zww, 0u), Struct_2(Struct_1(global0.a, vec3<f32>(2331f, 123f, global0.b.x)), Struct_1(global0.a, global0.b), Struct_1(vec2<i32>(u_input.b, 6516i), global0.b), global1[_wgslsmith_index_u32(17017u, 26u)]), -2147483647i), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-63432i, -10291i)), _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(2085f, global0.b.x, global0.b.x))), Struct_2(Struct_1(vec2<i32>(-12221i, 44118i), vec3<f32>(-1000f, -378f, global0.b.x)), Struct_1(vec2<i32>(u_input.b, 1934i), vec3<f32>(410f, -1580f, global0.b.x)), func_2(Struct_1(vec2<i32>(780i, u_input.b), global0.b), 29780i, vec3<f32>(297f, global0.b.x, 1211f)), global1[_wgslsmith_index_u32(u_input.a, 26u)])), global3.xzw, ~(~(~1u))));
    let var_1 = vec3<bool>(true, true, !(!func_7(Struct_1(vec2<i32>(2147483647i, -23350i), var_0.b.b), var_0.b, func_7(Struct_1(var_0.a.a, var_0.a.b), var_0.a, var_0.b).b).d));
    var_0 = func_6(Struct_1(abs(global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1154f, 120f, var_0.c.b.x)))), func_7(var_0.b, Struct_1(~(~vec2<i32>(1i, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.x, 590f, -1348f), vec3<f32>(global0.b.x, global0.b.x, var_0.a.b.x)))), Struct_1(func_3(~vec2<u32>(15367u, 19706u), -vec4<i32>(u_input.b, 44502i, global0.a.x, var_0.a.a.x), vec4<i32>(-1i, var_0.a.a.x, -2944i, 15368i)), vec3<f32>(396f, func_1().b.x, _wgslsmith_f_op_f32(-global0.b.x)))), global0.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_div_f32(203f, var_0.b.b.x)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), -583f)), var_0.b.b.x));
    let var_3 = func_6(var_0.a, Struct_2(func_7(func_1(), var_0.a, func_1()).b, Struct_1(vec2<i32>(u_input.b, -26765i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_0.b.b)))), Struct_1(vec2<i32>(-15666i, 0i), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.b.x, 412f, var_2.x), var_0.c.b))))), any(select(select(var_1, vec3<bool>(global3.x, var_1.x, var_0.d), vec3<bool>(false, global3.x, false)), !vec3<bool>(true, var_0.d, global3.x), global3.x))), global0.a.x);
    let var_4 = abs(abs(u_input.a));
    let var_5 = Struct_2(func_2(Struct_1(select(var_0.b.a, -vec2<i32>(var_3.b.a.x, 1i), select(var_1.zy, global3.zz, var_1.zz)), func_7(Struct_1(var_3.b.a, global0.b), var_0.c, func_6(var_3.a, var_3, var_3.b.a.x).c).b.b), var_3.b.a.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b.b), _wgslsmith_f_op_vec3_f32(-global0.b), var_4 != 21746u))))), var_0.a, var_0.b, func_7(var_0.b, func_1(), var_0.c).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(select(vec4<u32>(~6284u, select(u_input.a, u_input.a, false), var_4 | u_input.a, var_4), reverseBits(countOneBits(vec4<u32>(31458u, var_4, u_input.a, 19721u))), !(!vec4<bool>(true, var_1.x, var_0.d, global1[_wgslsmith_index_u32(var_4, 26u)]))), ~(~vec4<u32>(64667u, 179659u, u_input.a, u_input.a)) >> (vec4<u32>(~u_input.a, firstTrailingBit(var_4), var_4, abs(4294967295u)) % vec4<u32>(32u))), _wgslsmith_mod_i32(var_0.b.a.x, global0.a.x) ^ ~_wgslsmith_div_i32(min(var_5.a.a.x, var_3.b.a.x), var_0.a.a.x));
}

