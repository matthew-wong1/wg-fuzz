struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-6687i, 0i, 1i), vec2<f32>(-1000f, -299f), vec2<f32>(268f, 948f)), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(14978i, 33333i, 0i), vec2<f32>(-975f, -152f), vec2<f32>(1019f, -1197f)), Struct_1(vec4<bool>(false, false, false, true), vec3<i32>(-6274i, -52803i, -862i), vec2<f32>(-464f, 201f), vec2<f32>(742f, -1769f)), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec2<f32>(117f, 1001f), vec2<f32>(-149f, -516f)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(1738i, 2147483647i, 15577i), vec2<f32>(-305f, -308f), vec2<f32>(840f, -793f)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(26759i, 37828i, 0i), vec2<f32>(-396f, -1701f), vec2<f32>(-1085f, -975f)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(-1i, -39419i, -14162i), vec2<f32>(-1295f, 915f), vec2<f32>(-754f, 306f)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-2840i, 1i, 21676i), vec2<f32>(-712f, 1425f), vec2<f32>(691f, -1010f)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(-1i, -1i, -1i), vec2<f32>(1319f, 999f), vec2<f32>(1878f, 150f)), Struct_1(vec4<bool>(true, false, true, false), vec3<i32>(15970i, -48205i, 2147483647i), vec2<f32>(-314f, -232f), vec2<f32>(1000f, -273f)), Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(40350i, -60659i, 17302i), vec2<f32>(-373f, 950f), vec2<f32>(-2229f, -596f)), Struct_1(vec4<bool>(true, true, false, true), vec3<i32>(40413i, -4385i, 1i), vec2<f32>(-398f, -497f), vec2<f32>(1193f, 1289f)), Struct_1(vec4<bool>(false, true, true, true), vec3<i32>(-16898i, -49577i, 35310i), vec2<f32>(1179f, -456f), vec2<f32>(264f, 743f)), Struct_1(vec4<bool>(false, false, true, true), vec3<i32>(-1i, 0i, 0i), vec2<f32>(1772f, -852f), vec2<f32>(1159f, 1279f)), Struct_1(vec4<bool>(true, false, false, false), vec3<i32>(-28662i, 8821i, 53054i), vec2<f32>(-575f, -116f), vec2<f32>(-402f, 849f)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(17681i, -1i, -2713i), vec2<f32>(-1118f, 1000f), vec2<f32>(558f, -368f)), Struct_1(vec4<bool>(false, false, false, false), vec3<i32>(13753i, 26936i, 1i), vec2<f32>(1632f, 699f), vec2<f32>(1748f, 553f)), Struct_1(vec4<bool>(false, true, false, true), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec2<f32>(-1000f, 1637f), vec2<f32>(357f, -1000f)));

var<private> global2: array<u32, 32>;

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(1i, -33060i, i32(-2147483648)), vec2<f32>(266f, 1000f), vec2<f32>(-1407f, -561f));

var<private> global4: array<vec3<bool>, 12>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec2<f32> {
    global1 = array<Struct_1, 18>();
    var var_0 = Struct_1(!(!(!select(arg_2, arg_2, vec4<bool>(global3.a.x, arg_0, global0.a.x, global3.a.x)))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global0.b.x, _wgslsmith_sub_i32(u_input.a.x, -1i)), reverseBits(abs(global3.b.x))), countOneBits(u_input.a.x), abs(abs(global3.b.x)) ^ abs(max(-2147483647i, -2147483647i))), arg_1.c, vec2<f32>(_wgslsmith_div_f32(-316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1169f) - global3.c.x)), _wgslsmith_f_op_f32(-373f - -628f)));
    global1 = array<Struct_1, 18>();
    global3 = arg_1;
    var var_1 = vec3<i32>(u_input.a.x, -9044i, ~(-2147483647i)) >> (abs(arg_3) % vec3<u32>(32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d * _wgslsmith_f_op_vec2_f32(exp2(arg_1.d))));
}

fn func_2() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_1 = Struct_1(vec4<bool>(any(vec2<bool>(global0.a.x && global3.a.x, true)), all(vec3<bool>(global3.a.x || global0.a.x, global3.a.x, !global0.a.x)), global3.b.x >= 0i, true), global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.d.x, -796f)))), global0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(675f, 1146f))) - global0.c));
    var var_2 = _wgslsmith_f_op_f32(step(global0.d.x, var_1.c.x));
    let var_3 = global0.c.x;
    global3 = Struct_1(global0.a, -vec3<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.x, 27218i), vec2<i32>(global3.b.x, 2147483647i)), global3.b.x, _wgslsmith_add_i32(~var_0.b.x, -1i << (u_input.c % 32u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_1.c)), _wgslsmith_f_op_vec2_f32(func_3(var_0.a.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(81084u, 32u)], 18u)], vec4<bool>(global0.a.x, false, global0.a.x, false), vec3<u32>(9713u, u_input.c, u_input.c)))) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.c.x, var_1.c.x), var_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 32u)], 18u)], vec4<bool>(global0.a.x, true, true, false), vec3<u32>(global2[_wgslsmith_index_u32(1u, 32u)], 20988u, 18243u))), _wgslsmith_f_op_vec2_f32(-var_1.c)) + _wgslsmith_f_op_vec2_f32(func_3(var_1.a.x | global3.a.x, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(59615u, 32u)], 18u)], !global0.a, vec3<u32>(global2[_wgslsmith_index_u32(u_input.c, 32u)], u_input.c, 70734u)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-global3.d.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(var_1.c.x, var_0.d.x)) + _wgslsmith_f_op_vec2_f32(-global0.d)))));
    return -1745f;
}

fn func_1() -> u32 {
    global4 = array<vec3<bool>, 12>();
    var var_0 = 944f;
    global2 = array<u32, 32>();
    let var_1 = global4[_wgslsmith_index_u32(~(~76539u), 12u)];
    let var_2 = Struct_1(global3.a, global3.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), 1117f), global3.d);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.d.x;
    global4 = array<vec3<bool>, 12>();
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.x, global0.d.x, global0.c.x) * vec3<f32>(global3.c.x, global0.c.x, global3.d.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.c.x, global3.c.x, 293f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, 194f, 866f))))), vec3<f32>(global0.c.x, global3.c.x, _wgslsmith_f_op_f32(-global0.d.x))));
    var var_2 = global1[_wgslsmith_index_u32(~1u, 18u)];
    var var_3 = global1[_wgslsmith_index_u32(func_1(), 18u)];
    let var_4 = Struct_1(!(!vec4<bool>(all(vec4<bool>(global3.a.x, true, global3.a.x, var_3.a.x)), global0.a.x, var_3.a.x, all(vec2<bool>(true, var_2.a.x)))), u_input.b.xxx, var_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-656f, var_2.c.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1441f, -1402f), vec2<f32>(var_3.d.x, -513f))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.d.x, -1000f), _wgslsmith_f_op_vec2_f32(-global3.c)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1074f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-893f)) - _wgslsmith_f_op_f32(-971f - var_2.c.x)))));
    var var_5 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2049f, var_1.x, global3.c.x, -1007f), vec4<f32>(1000f, 535f, -1741f, 1119f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1455f, var_2.d.x, global0.c.x, var_3.d.x) + vec4<f32>(global0.d.x, var_1.x, global3.d.x, var_4.d.x)))))));
}

