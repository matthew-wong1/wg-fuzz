struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<i32>(0i, i32(-2147483648)), 244f, Struct_1(vec2<i32>(-1i, -21658i), vec2<u32>(881u, 18672u), true, 0u), Struct_1(vec2<i32>(2147483647i, -33499i), vec2<u32>(49835u, 27930u), true, 4294967295u)), Struct_2(vec2<i32>(-2657i, 5459i), -1129f, Struct_1(vec2<i32>(1i, 20871i), vec2<u32>(71318u, 65372u), true, 1u), Struct_1(vec2<i32>(12361i, i32(-2147483648)), vec2<u32>(6586u, 4294967295u), true, 12674u)), Struct_2(vec2<i32>(i32(-2147483648), 9046i), -1795f, Struct_1(vec2<i32>(i32(-2147483648), -64440i), vec2<u32>(12401u, 43724u), false, 0u), Struct_1(vec2<i32>(2147483647i, -1679i), vec2<u32>(0u, 34162u), false, 5851u)), Struct_2(vec2<i32>(2147483647i, 0i), -319f, Struct_1(vec2<i32>(29098i, 11409i), vec2<u32>(1u, 0u), true, 61674u), Struct_1(vec2<i32>(2147483647i, 15699i), vec2<u32>(0u, 1u), false, 0u)), Struct_2(vec2<i32>(47162i, 45870i), -488f, Struct_1(vec2<i32>(-1i, 0i), vec2<u32>(2087u, 4294967295u), false, 1u), Struct_1(vec2<i32>(-66828i, 61825i), vec2<u32>(0u, 15401u), true, 4294967295u)), Struct_2(vec2<i32>(-1i, 1i), 2373f, Struct_1(vec2<i32>(2147483647i, 0i), vec2<u32>(12145u, 0u), true, 4294967295u), Struct_1(vec2<i32>(0i, -7420i), vec2<u32>(16732u, 0u), true, 1u)), Struct_2(vec2<i32>(-1i, -1i), 233f, Struct_1(vec2<i32>(6741i, 0i), vec2<u32>(1u, 18193u), true, 4294967295u), Struct_1(vec2<i32>(0i, 2147483647i), vec2<u32>(11980u, 12261u), false, 36555u)), Struct_2(vec2<i32>(-28719i, -6457i), -498f, Struct_1(vec2<i32>(-14091i, -1i), vec2<u32>(47741u, 0u), false, 56581u), Struct_1(vec2<i32>(11987i, -9635i), vec2<u32>(52160u, 66431u), true, 28629u)), Struct_2(vec2<i32>(0i, -1098i), -395f, Struct_1(vec2<i32>(-71160i, -1i), vec2<u32>(45975u, 0u), true, 4294967295u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<u32>(0u, 1u), true, 1u)), Struct_2(vec2<i32>(-31724i, 75619i), 746f, Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), vec2<u32>(4294967295u, 26142u), false, 1u), Struct_1(vec2<i32>(1i, 1i), vec2<u32>(16775u, 27949u), false, 12190u)), Struct_2(vec2<i32>(-1i, 0i), 1075f, Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<u32>(32323u, 4294967295u), false, 1u), Struct_1(vec2<i32>(10994i, -32533i), vec2<u32>(4294967295u, 55402u), true, 4294967295u)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), 182f, Struct_1(vec2<i32>(-17945i, -27861i), vec2<u32>(4294967295u, 0u), false, 56140u), Struct_1(vec2<i32>(-33464i, 1i), vec2<u32>(113350u, 6565u), false, 0u)), Struct_2(vec2<i32>(14522i, 17030i), 318f, Struct_1(vec2<i32>(i32(-2147483648), 30989i), vec2<u32>(31544u, 69702u), false, 1360u), Struct_1(vec2<i32>(0i, 8854i), vec2<u32>(0u, 4294967295u), true, 4395u)), Struct_2(vec2<i32>(-28401i, 26292i), -1073f, Struct_1(vec2<i32>(17032i, i32(-2147483648)), vec2<u32>(8475u, 4294967295u), true, 68581u), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec2<u32>(41968u, 66550u), true, 1u)), Struct_2(vec2<i32>(1i, -1i), 1591f, Struct_1(vec2<i32>(1i, 2147483647i), vec2<u32>(0u, 10217u), false, 0u), Struct_1(vec2<i32>(2147483647i, 0i), vec2<u32>(1u, 65704u), false, 4294967295u)));

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> bool {
    var var_0 = arg_2.x;
    return any(!(!vec4<bool>(all(vec3<bool>(false, true, arg_0)), !arg_1, false, false)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32) -> bool {
    global0 = global2.x > u_input.d.x;
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    let var_0 = Struct_1(vec2<i32>(59813i, arg_0 ^ (i32(-1i) * -global2.x)), ~u_input.b.xy, any(select(vec4<bool>(true, all(vec3<bool>(true, false, false)), 40680u != u_input.b.x, any(vec4<bool>(true, false, true, true))), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), false), false)), 1u << (firstTrailingBit(36917u) % 32u));
    var var_1 = 26288i;
    return any(vec3<bool>(true, any(select(select(vec2<bool>(true, false), vec2<bool>(var_0.c, false), false), select(vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, false), false), true)), _wgslsmith_mult_i32(5876i, -var_0.a.x) > -1i));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    let var_0 = -2147483647i;
    let var_1 = select(select(vec4<bool>(func_2(arg_2, false, vec2<i32>(var_0, -47949i)), func_3(reverseBits(0i), _wgslsmith_f_op_vec3_f32(vec3<f32>(751f, arg_0.a.b, -1524f) - vec3<f32>(-146f, 720f, arg_0.a.b)), _wgslsmith_div_u32(arg_1.x, 20987u)), arg_0.b.a.d.c, arg_0.b.a.d.c), select(!select(vec4<bool>(arg_2, false, true, arg_2), vec4<bool>(arg_2, false, false, arg_0.a.c.c), false), vec4<bool>(arg_0.a.c.c, select(false, true, false), !arg_0.b.a.c.c, arg_2), !select(vec4<bool>(arg_2, arg_2, arg_0.a.d.c, arg_0.a.c.c), vec4<bool>(true, false, arg_0.b.a.d.c, arg_0.b.a.c.c), false)), !(!vec4<bool>(arg_2, arg_0.a.c.c, arg_0.b.a.d.c, false))), !(!(!(!vec4<bool>(true, false, false, arg_0.b.a.c.c)))), !arg_2);
    global0 = true;
    var var_2 = Struct_4(arg_0.a, Struct_3(arg_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.b.x, arg_0.a.b, arg_0.b.b.x, arg_0.a.b), arg_0.b.b)) - vec4<f32>(343f, arg_0.b.a.b, arg_0.a.b, 1103f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.x, arg_0.b.b.x, arg_0.a.b, arg_0.b.b.x))))), 1u), _wgslsmith_add_vec3_u32(firstTrailingBit(~firstLeadingBit(arg_1)), arg_0.c));
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) * 275f), 762f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f), 263f), _wgslsmith_f_op_f32(func_1(Struct_4(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], Struct_3(global1[_wgslsmith_index_u32(4294967295u, 15u)], vec4<f32>(293f, -1479f, 337f, 1525f), 57761u), u_input.b), vec3<u32>(4294967295u, u_input.b.x, 4294967295u), true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(736f)))))));
    var var_1 = Struct_2(global2.xy, var_0.x, Struct_1(global2.xx, select((vec2<u32>(15555u, 5883u) | vec2<u32>(1u, u_input.b.x)) >> (~u_input.b.xx % vec2<u32>(32u)), ~u_input.b.yy, true), false, _wgslsmith_add_u32(71026u, 1u) ^ ~firstTrailingBit(u_input.b.x)), Struct_1(min(select(vec2<i32>(u_input.c, global2.x) >> (u_input.b.xz % vec2<u32>(32u)), global2.yy, any(vec3<bool>(true, false, true))), reverseBits(vec2<i32>(u_input.d.x, u_input.c))), vec2<u32>(1u, _wgslsmith_mod_u32(4294967295u, 35943u)) & _wgslsmith_div_vec2_u32(~u_input.b.zx, u_input.b.yy), true, 28899u));
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.c.b.x, 1u, 0u), 15u)], Struct_3(global1[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 23956u) ^ u_input.b.x), 15u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, 520f, var_0.x, var_1.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, var_1.b, 202f, 1079f) - vec4<f32>(1000f, var_0.x, var_0.x, var_1.b))) * vec4<f32>(-412f, _wgslsmith_f_op_f32(f32(-1f) * -1390f), var_1.b, -651f)), u_input.b.x), ~vec3<u32>(abs(_wgslsmith_div_u32(0u, var_1.d.b.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(49913u, 64231u, 108261u, 4294967295u), vec4<u32>(u_input.b.x, 0u, 0u, 28760u)), ~(~var_1.c.b.x)));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(630f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(493f)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-969f)))), var_2.b.a.b)));
    var var_5 = Struct_5(Struct_2(max(var_1.a, var_2.b.a.c.a), -586f, var_1.d, var_2.a.c), ~(abs(36568u) >> (var_2.c.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.a.b + var_2.a.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-464f + 1562f), _wgslsmith_f_op_f32(461f - var_5.a.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(trunc(var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(337f * -300f)))))), var_5.a.a.x, _wgslsmith_f_op_vec4_f32(-var_2.b.b));
}

