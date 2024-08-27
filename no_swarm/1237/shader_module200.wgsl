struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec3<u32>,
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

var<private> global0: vec3<f32> = vec3<f32>(559f, -1000f, -746f);

var<private> global1: u32;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(false, true, -345f), Struct_1(false, true, 184f), Struct_1(true, false, 1446f), Struct_1(false, true, -1856f), Struct_1(true, true, 1967f), Struct_1(false, true, 941f), Struct_1(true, true, 485f), Struct_1(false, false, 1173f), Struct_1(true, true, 935f), Struct_1(true, true, 601f), Struct_1(false, true, 146f), Struct_1(false, true, -1009f), Struct_1(false, false, 2485f));

var<private> global3: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-529f, 1053f, -1281f, -250f), vec4<f32>(-2154f, -413f, -395f, 1179f), vec4<f32>(-324f, -1010f, -371f, 886f), vec4<f32>(170f, 1008f, -695f, 249f), vec4<f32>(613f, -695f, 1278f, -823f), vec4<f32>(399f, -770f, 596f, 1694f), vec4<f32>(724f, 1232f, 1414f, -1871f), vec4<f32>(1184f, -422f, -741f, 477f), vec4<f32>(-1189f, -535f, 186f, 2141f), vec4<f32>(246f, -606f, -1106f, -1600f), vec4<f32>(920f, -796f, -2063f, -1112f), vec4<f32>(-378f, 165f, -390f, -581f), vec4<f32>(195f, -1245f, 112f, 1134f), vec4<f32>(-1813f, 1487f, -708f, 227f), vec4<f32>(826f, 729f, 174f, 167f), vec4<f32>(186f, -548f, 1000f, 415f), vec4<f32>(860f, -374f, 191f, 1549f), vec4<f32>(-675f, 2419f, 669f, -358f), vec4<f32>(324f, -1808f, -487f, -471f), vec4<f32>(-1180f, 360f, 881f, -928f), vec4<f32>(1229f, 694f, 515f, 800f), vec4<f32>(-1113f, -1165f, 396f, 342f), vec4<f32>(-1498f, 1337f, 528f, 514f), vec4<f32>(-454f, 936f, 1000f, -1000f));

var<private> global4: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))), -786f, arg_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-255f - 1000f), _wgslsmith_f_op_f32(global0.x - global0.x))), arg_1.c, -633f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-331f, 2520f, _wgslsmith_f_op_f32(-693f - arg_0.c.c)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<f32>(1491f, arg_0.a.c, 566f, global0.x), vec3<i32>(u_input.b.x, -1i, -1739i))))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_1.c, arg_1.c), vec3<f32>(arg_0.a.c, arg_1.c, arg_0.c.c)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_1.c, arg_1.c) - vec3<f32>(arg_0.c.c, -570f, arg_1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1626f, arg_0.a.c, arg_0.b.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(254f, 1213f, arg_0.b.c))))));
    global1 = _wgslsmith_mod_u32(select(~firstTrailingBit(98096u ^ u_input.c.x), 1u, all(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.b, arg_1.a, true), true)) & all(vec3<bool>(true, arg_1.b, false))), u_input.a);
    global2 = array<Struct_1, 13>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_0.c.c, -1764f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(534f, arg_0.b.c, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1357f, 473f, -220f))))));
    var var_1 = vec4<u32>(max(u_input.d.x, ~(~126631u)), 35201u, u_input.d.x, select(~u_input.c.x, u_input.c.x, all(!(!vec3<bool>(true, arg_0.b.a, true)))));
    return !select(!select(vec2<bool>(true, false), !vec2<bool>(true, arg_0.b.b), !vec2<bool>(arg_0.a.b, arg_1.b)), vec2<bool>(~u_input.b.x <= max(u_input.b.x, -5042i), !arg_0.c.a), vec2<bool>(true, true));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>) -> i32 {
    var var_0 = !all(func_2(Struct_2(arg_0, arg_0, Struct_1(true, arg_0.a, 104f)), Struct_1(arg_0.a, arg_0.a, -1607f)));
    var_0 = !all(select(!(!vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), vec3<bool>(all(vec4<bool>(arg_0.a, arg_0.a, arg_0.b, false)), false, arg_0.a), arg_0.b));
    var var_1 = Struct_2(Struct_1(any(!(!vec4<bool>(arg_0.b, true, arg_0.a, arg_0.b))), any(vec2<bool>(true, arg_1.x != 1u)), -1014f), arg_0, global2[_wgslsmith_index_u32((~_wgslsmith_mod_u32(11704u, arg_1.x) & 4189u) << (arg_1.x % 32u), 13u)]);
    let var_2 = -737f;
    let var_3 = arg_0;
    return 20208i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = ~min(u_input.b.x ^ u_input.b.x, select(_wgslsmith_div_i32(u_input.b.x, select(u_input.b.x, u_input.b.x, true)), abs(-u_input.b.x), true));
    var_0 = ~(-21798i | ~func_1(global2[_wgslsmith_index_u32(u_input.e.x, 13u)], vec2<u32>(0u, u_input.d.x) | u_input.e.yz, _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(596f, global0.x, global0.x))));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(u_input.d.x), _wgslsmith_mod_u32(~(~1u), 31589u & ~u_input.a), 4294967295u), u_input.d.xwz), 13u)];
    var var_3 = _wgslsmith_add_vec3_i32(-(-vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i) >> (~u_input.d.ywx % vec3<u32>(32u))) << ((countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 1u, 0u), vec3<u32>(73248u, u_input.a, 4294967295u))) | ~firstTrailingBit(vec3<u32>(0u, u_input.e.x, 1u))) % vec3<u32>(32u)), min(u_input.b.wyw, vec3<i32>(u_input.b.x, i32(-1i) * -2147483647i, -1i)));
    var_0 = _wgslsmith_mod_i32(~var_3.x, firstTrailingBit(_wgslsmith_sub_i32(-(~var_3.x), 1i & (var_3.x | 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1365f + _wgslsmith_f_op_f32(292f - global0.x))) + -413f));
}

