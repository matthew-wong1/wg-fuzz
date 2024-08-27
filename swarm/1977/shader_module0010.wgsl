struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(508f, vec4<f32>(2397f, 694f, 1000f, -702f), 2147483647i, false), Struct_1(920f, vec4<f32>(-955f, 150f, 791f, 404f), 2147483647i, true), Struct_1(1015f, vec4<f32>(-273f, -1801f, -344f, 1395f), -1i, false), Struct_1(-176f, vec4<f32>(-676f, 633f, -278f, 1980f), -23144i, true), Struct_1(1221f, vec4<f32>(-1017f, 1327f, -375f, -870f), 0i, true), Struct_1(-1291f, vec4<f32>(-446f, 1471f, -683f, -964f), 8549i, true), Struct_1(1170f, vec4<f32>(154f, 167f, 570f, -1023f), -1i, true), Struct_1(170f, vec4<f32>(723f, -610f, -746f, 1479f), -8736i, true), Struct_1(-1226f, vec4<f32>(235f, 1294f, 438f, -1121f), 1i, false), Struct_1(-1000f, vec4<f32>(1000f, 712f, 725f, 459f), 40226i, true), Struct_1(806f, vec4<f32>(-424f, -1494f, -1297f, 120f), 8236i, false), Struct_1(1000f, vec4<f32>(1290f, 656f, 1731f, 1870f), 0i, true), Struct_1(1558f, vec4<f32>(598f, -1000f, -1056f, 498f), -1i, true), Struct_1(262f, vec4<f32>(-1221f, -440f, -1896f, 817f), i32(-2147483648), false), Struct_1(310f, vec4<f32>(-390f, -1249f, 314f, -238f), 0i, false), Struct_1(-1374f, vec4<f32>(263f, 302f, 415f, 1350f), -1i, false), Struct_1(328f, vec4<f32>(-1395f, -1241f, 398f, 1016f), 2147483647i, true));

var<private> global2: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1357f, 1361f, -588f), vec3<f32>(754f, -719f, -401f), vec3<f32>(333f, 858f, -1838f), vec3<f32>(-137f, -242f, 1956f), vec3<f32>(1055f, -2006f, -599f), vec3<f32>(1449f, -683f, -450f), vec3<f32>(409f, -1000f, -1419f), vec3<f32>(-370f, -793f, 258f), vec3<f32>(-544f, -1000f, 799f), vec3<f32>(-349f, -605f, -2620f), vec3<f32>(-2259f, -500f, -1000f), vec3<f32>(-375f, -1132f, -686f), vec3<f32>(-389f, -1169f, -845f), vec3<f32>(351f, 691f, 642f), vec3<f32>(-1848f, 632f, -2623f), vec3<f32>(-127f, -562f, 900f));

var<private> global3: Struct_1 = Struct_1(1080f, vec4<f32>(1994f, 583f, 1536f, 1022f), 0i, true);

var<private> global4: vec3<f32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global3 = global1[_wgslsmith_index_u32(11449u ^ u_input.a.x, 17u)];
    var var_0 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(firstTrailingBit(0u), _wgslsmith_mult_u32(u_input.b.x, arg_0.x)), ~arg_0.ww);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -568f) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(101f, -327f), _wgslsmith_div_f32(global3.a, -565f)))))), arg_1.b, select(_wgslsmith_mult_i32(-2147483647i, -_wgslsmith_mult_i32(u_input.d, global3.c)), -1i, global3.d & all(!vec4<bool>(arg_1.d, false, global3.d, global3.d))), arg_1.d);
    var_1 = Struct_1(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(var_1.a, 1627f, var_1.a, 457f))) - arg_1.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(396f, _wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x)), 349f, var_1.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(global3.b.x, global4.x, -1000f, global3.a)) * _wgslsmith_f_op_vec4_f32(-arg_1.b)))), ~u_input.d, false);
    var_1 = Struct_1(-319f, arg_1.b, global3.c, select(false, false, var_1.d));
    return global3.c;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> f32 {
    global3 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), global3.b, -u_input.d, !(!all(select(vec2<bool>(true, false), vec2<bool>(true, arg_3.d), true))));
    global0 = array<Struct_1, 6>();
    let var_0 = global1[_wgslsmith_index_u32(1u, 17u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(arg_3.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(268f)))), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_f32(541f * _wgslsmith_f_op_f32(405f - arg_3.b.x)), _wgslsmith_f_op_f32(-arg_0)), vec4<bool>(false, true != !arg_3.d, all(vec4<bool>(true, arg_3.d, true, arg_1)), false))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_3.b, _wgslsmith_f_op_vec4_f32(abs(var_0.b)), arg_1 & arg_3.d)) + arg_3.b))), !arg_3.d));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2520f, var_0.a)) + _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, 574f)))), _wgslsmith_f_op_vec4_f32(abs(var_1)), 2147483647i, any(select(!(!vec3<bool>(false, arg_1, false)), !(!vec3<bool>(true, arg_1, false)), all(vec4<bool>(global3.d, global3.d, false, global3.d)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-460f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * _wgslsmith_f_op_f32(sign(arg_3.a)))))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 6u)];
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1057f)))) <= -1076f, func_2(abs(firstTrailingBit(u_input.b)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, u_input.a.x), 6u)]) >= -(~global3.c));
    var var_2 = any(select(!vec4<bool>(true, var_1.x | global3.d, true, !var_1.x), !select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, arg_1, true, var_0.d), vec4<bool>(false, true, arg_1, arg_1)), !vec4<bool>(global3.d, global3.d, false, var_0.d)), arg_0.x >= arg_0.x));
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_clamp_u32(28789u, 4294967295u, 4294967295u) > u_input.b.x, arg_0.x, global0[_wgslsmith_index_u32(~(~1u), 6u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-994f * -1000f) + _wgslsmith_div_f32(961f, global3.a)))), global3.b.x));
    var_2 = !all(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1481f) <= _wgslsmith_f_op_f32(sign(784f)), global3.d, all(vec3<bool>(var_0.d, true, var_1.x))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xw;
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(func_1(-vec2<i32>(global3.c, global3.c), true)))), global3.a));
    let var_1 = global1[_wgslsmith_index_u32(126663u, 17u)];
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(select(global3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -2147483647i, var_2.c), vec3<i32>(u_input.d, var_1.c, u_input.c.x)), all(vec3<bool>(true, false, var_2.d)))), global3.c, countOneBits(select(1i, var_2.c, true) & firstTrailingBit(global3.c))), _wgslsmith_f_op_f32(-var_1.a));
}

