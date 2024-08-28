struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), 1i), Struct_1(vec3<i32>(-23393i, 44510i, -13145i), -1i), Struct_1(vec3<i32>(-1i, i32(-2147483648), -20653i), -6480i), Struct_1(vec3<i32>(1i, 43122i, 1i), 15472i), Struct_1(vec3<i32>(1i, -19242i, 4345i), -5073i), Struct_1(vec3<i32>(-972i, -5672i, -1i), -8496i), Struct_1(vec3<i32>(2147483647i, 60283i, 34908i), 2147483647i), Struct_1(vec3<i32>(-1i, 3446i, i32(-2147483648)), 0i), Struct_1(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 2147483647i), Struct_1(vec3<i32>(-2426i, i32(-2147483648), 1i), 35291i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -57277i), -1i), Struct_1(vec3<i32>(2147483647i, 51915i, -30056i), -27559i), Struct_1(vec3<i32>(61775i, 2147483647i, i32(-2147483648)), 1i), Struct_1(vec3<i32>(2147483647i, 21095i, -16585i), -1i), Struct_1(vec3<i32>(-835i, 0i, -24939i), 1i), Struct_1(vec3<i32>(80505i, 0i, 2147483647i), 2147483647i), Struct_1(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 1i), Struct_1(vec3<i32>(i32(-2147483648), 8327i, -1i), -4722i), Struct_1(vec3<i32>(-20840i, 51719i, 0i), 1i), Struct_1(vec3<i32>(64143i, 2147483647i, -8572i), -1i), Struct_1(vec3<i32>(2147483647i, -1i, -34005i), 0i), Struct_1(vec3<i32>(2147483647i, 0i, -10924i), -26705i), Struct_1(vec3<i32>(-1i, 9390i, -29670i), -25579i), Struct_1(vec3<i32>(-19535i, 2147483647i, 47432i), 53707i), Struct_1(vec3<i32>(26369i, -1i, -46874i), 6965i), Struct_1(vec3<i32>(1i, 1i, 18575i), -35454i), Struct_1(vec3<i32>(i32(-2147483648), -5201i, 37811i), 13418i), Struct_1(vec3<i32>(-31968i, -26726i, 1i), 2147483647i), Struct_1(vec3<i32>(1i, -42545i, 2147483647i), -8829i), Struct_1(vec3<i32>(65522i, 8592i, 11030i), 2858i), Struct_1(vec3<i32>(1i, -39263i, 70097i), -151i), Struct_1(vec3<i32>(18517i, -13985i, 2147483647i), -19826i));

var<private> global1: vec3<bool>;

var<private> global2: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_2(vec2<u32>(83716u, u_input.a.x), !vec4<bool>(false, global1.x & !global1.x, any(select(vec3<bool>(true, true, global1.x), vec3<bool>(true, false, false), false)), true));
    let var_1 = vec4<i32>(10015i, firstLeadingBit(-arg_0.x), -_wgslsmith_mod_i32(30170i, 1i), arg_0.x);
    var var_2 = 957u;
    let var_3 = var_1.yyx;
    var var_4 = !var_0.b;
    return 662f;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<f32>, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = Struct_2(vec2<u32>(22377u, u_input.c.x), select(select(vec4<bool>(false, global1.x, true, all(vec3<bool>(global1.x, false, global1.x))), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), select(!vec4<bool>(false, false, global1.x, global1.x), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, false, true, global1.x), global1.x), vec4<bool>(global1.x, true, global1.x, false))), vec4<bool>((38459i < arg_0) | global1.x, !global1.x, global1.x, -489f < arg_1.x), global1.x));
    global2 = 926f;
    let var_1 = -305f;
    let var_2 = Struct_2(reverseBits(~(~vec2<u32>(arg_3.x, u_input.b.x) ^ max(var_0.a, u_input.a.xx))), var_0.b);
    var var_3 = arg_1;
    return !vec3<bool>(false, any(var_0.b), false);
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(-reverseBits(vec4<i32>(1i, -48047i, 2147483647i, 2147483647i)))), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(floor(-820f)))), _wgslsmith_f_op_f32(func_2(~vec4<i32>(-14003i, -12682i, -1i, -40699i))));
    let var_1 = global0[_wgslsmith_index_u32(~1u, 32u)];
    global1 = select(!vec3<bool>(all(global1.zy), global1.x, true), vec3<bool>(true, !(!(false & arg_0.b.x)), 1f != _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(474f, arg_1)))), func_3(var_1.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_2 * -346f), _wgslsmith_f_op_f32(sign(arg_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, 332f, -1257f, -302f), vec4<f32>(-686f, -291f, arg_2, -1586f), vec4<bool>(global1.x, global1.x, true, arg_0.b.x))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, -195f, _wgslsmith_f_op_f32(ceil(-744f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(arg_2, var_0.x, global1.x)), _wgslsmith_f_op_f32(floor(arg_2))))), arg_0.a | u_input.c));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) + _wgslsmith_f_op_f32(-arg_2)));
    var var_2 = _wgslsmith_f_op_f32(select(arg_1, -1224f, !global1.x));
    return !vec3<bool>(1u < ~arg_0.a.x, !(all(vec4<bool>(arg_0.b.x, arg_0.b.x, true, false)) != false), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.yx;
    global2 = 1000f;
    global1 = !func_1(Struct_2(~vec2<u32>(15104u, u_input.b.x), !(!vec4<bool>(var_0.x, true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2034f) - _wgslsmith_f_op_f32(264f - -2371f)) + 1f), 939f);
    let var_1 = vec2<i32>(-1i) * -abs(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 20778i), vec2<i32>(0i, -14049i)), select(vec2<i32>(14462i, -1i), vec2<i32>(1i, 0i), true)));
    global0 = array<Struct_1, 32>();
    var var_2 = ~(-abs(-reverseBits(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x))));
    var var_3 = Struct_2(vec2<u32>(u_input.c.x, _wgslsmith_div_u32(~53741u, u_input.c.x)), !vec4<bool>(func_1(Struct_2(vec2<u32>(u_input.a.x, u_input.c.x), vec4<bool>(true, global1.x, true, var_0.x)), _wgslsmith_f_op_f32(step(106f, 146f)), 1400f).x, func_1(Struct_2(vec2<u32>(10699u, u_input.b.x), vec4<bool>(false, true, true, var_0.x)), -381f, 944f).x, !global1.x, var_0.x));
    let var_4 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(945f, -395f)), _wgslsmith_f_op_f32(sign(-1207f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1395f)) + _wgslsmith_f_op_f32(-1000f * -238f))) + _wgslsmith_f_op_f32(floor(1376f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) + _wgslsmith_f_op_f32(100f - -557f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(349f - -2274f), _wgslsmith_f_op_f32(floor(1000f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, -305f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, 737f) - vec2<f32>(-804f, 666f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1657f))), 1f))), countOneBits(min(abs(firstLeadingBit(u_input.a.yz)), ~(~var_3.a))));
}

