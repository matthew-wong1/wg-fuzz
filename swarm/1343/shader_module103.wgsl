struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec4<f32>(265f, 714f, -882f, -1000f), false), Struct_1(false, vec4<f32>(1278f, -1000f, 110f, -355f), false), Struct_1(false, vec4<f32>(1458f, -1218f, -853f, 1015f), true), Struct_1(true, vec4<f32>(2606f, 1093f, 310f, -2281f), false), Struct_1(true, vec4<f32>(164f, -368f, -245f, -315f), true), Struct_1(true, vec4<f32>(-223f, 1108f, -123f, 1246f), true), Struct_1(false, vec4<f32>(-525f, 1661f, 1000f, -1000f), true), Struct_1(true, vec4<f32>(-421f, 695f, -934f, -640f), false), Struct_1(false, vec4<f32>(561f, 748f, -908f, -2072f), false), Struct_1(false, vec4<f32>(-1000f, 365f, -798f, 834f), true), Struct_1(true, vec4<f32>(421f, -550f, -319f, 1220f), false), Struct_1(false, vec4<f32>(-302f, 106f, -437f, 763f), true), Struct_1(false, vec4<f32>(831f, -880f, -1871f, 783f), false), Struct_1(false, vec4<f32>(-354f, 413f, 1834f, 477f), true), Struct_1(true, vec4<f32>(-243f, -1205f, -100f, 789f), false), Struct_1(false, vec4<f32>(329f, 1100f, -1209f, 581f), true), Struct_1(true, vec4<f32>(1000f, -1000f, -1973f, -238f), true), Struct_1(true, vec4<f32>(487f, -566f, -565f, 468f), true), Struct_1(false, vec4<f32>(437f, -1000f, 516f, 328f), false), Struct_1(true, vec4<f32>(-1054f, 182f, -490f, -1627f), true), Struct_1(false, vec4<f32>(161f, 593f, 2006f, 1585f), false), Struct_1(false, vec4<f32>(1229f, 102f, 765f, -1159f), false), Struct_1(true, vec4<f32>(-1141f, -324f, 1091f, -142f), true), Struct_1(false, vec4<f32>(-1062f, 378f, -751f, 650f), true), Struct_1(true, vec4<f32>(603f, 389f, 687f, -323f), true), Struct_1(false, vec4<f32>(705f, 1055f, 838f, -1052f), false), Struct_1(true, vec4<f32>(1257f, -786f, -761f, -894f), false), Struct_1(false, vec4<f32>(-1332f, 493f, -727f, -904f), false), Struct_1(true, vec4<f32>(-972f, -661f, -1006f, 694f), false), Struct_1(false, vec4<f32>(1076f, -873f, -680f, 1000f), false), Struct_1(true, vec4<f32>(-683f, 376f, -1311f, -1142f), true));

var<private> global2: Struct_1 = Struct_1(true, vec4<f32>(-810f, 1867f, 645f, -736f), false);

var<private> global3: array<u32, 28>;

var<private> global4: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(0i, i32(-2147483648), 2147483647i, 0i), vec4<i32>(13690i, i32(-2147483648), 0i, -45484i), vec4<i32>(-4935i, -1i, 2147483647i, 0i), vec4<i32>(-16949i, 1i, 2147483647i, -21105i), vec4<i32>(-47117i, -52923i, 31779i, i32(-2147483648)));

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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global1 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global2.b.wyz, vec3<f32>(-612f, global2.b.x, global2.b.x), all(vec4<bool>(false, true, global2.a, false))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global2.b.yxz)) * _wgslsmith_f_op_vec3_f32(-global2.b.www))))));
    global4 = array<vec4<i32>, 5>();
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global2.b.wwy))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-925f - var_0.x))), -456f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.x, -1036f) * _wgslsmith_f_op_f32(exp2(global2.b.x))), 306f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + 769f))));
    var var_1 = Struct_1(global2.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-223f, global2.b.x, 977f, -2268f))), vec4<f32>(_wgslsmith_f_op_f32(626f + -888f), -1287f, -434f, _wgslsmith_f_op_f32(sign(global2.b.x))), !(!vec4<bool>(true, global2.c, true, true)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global2.b)))), ((u_input.c.x | _wgslsmith_add_i32(-2147483647i, u_input.c.x)) | u_input.c.x) > u_input.c.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1104f)))), var_0.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: vec3<i32>) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = Struct_1(any(!select(vec4<bool>(true, global2.a, global2.c, true), vec4<bool>(true, global2.a, global2.a, global2.c), global2.a)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(arg_1 + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_1, vec4<f32>(540f, arg_1.x, 263f, global2.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, arg_1.x, arg_1.x) - vec4<f32>(161f, arg_1.x, arg_1.x, -1282f)))))), !global2.c);
    let var_2 = global0[_wgslsmith_index_u32(abs(46245u), 10u)];
    var var_3 = Struct_1(global2.c, vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), 1000f)) * _wgslsmith_f_op_f32(select(-1764f, _wgslsmith_f_op_f32(-arg_1.x), var_1.a || var_1.a)))), true);
    var var_4 = global1[_wgslsmith_index_u32(~(~(~(~_wgslsmith_sub_u32(1u, u_input.b.x)))), 31u)];
    return 0u | reverseBits(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 28u)], 4294967295u, arg_0.x, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 28u)], 1u, 29238u, 0u)), _wgslsmith_dot_vec2_u32(u_input.b << (vec2<u32>(arg_0.x, arg_0.x) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 11130u), u_input.b))));
}

fn func_1() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(14651u, 31u)];
    var var_1 = true;
    var_1 = _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32((u_input.b.x | global3[_wgslsmith_index_u32(28729u, 28u)]) >> (~u_input.b.x % 32u), func_2(u_input.b, var_0.b, u_input.d, reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, -25967i))))) > global3[_wgslsmith_index_u32(select(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(~1u, 1u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(2416u, 10249u)), abs(vec2<u32>(1u, global3[_wgslsmith_index_u32(u_input.d, 28u)]))) | 4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b.x))) == _wgslsmith_f_op_f32(f32(-1f) * -1677f)), 28u)];
    let var_2 = global0[_wgslsmith_index_u32(~1u, 10u)];
    let var_3 = Struct_1(!(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) <= ~global3[_wgslsmith_index_u32(~0u, 28u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, 1040f, -185f, 2033f)))))), false);
    return Struct_1(!select(all(vec4<bool>(true, false, global2.a, true)), true, !(1850f < var_3.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x - var_3.b.x), _wgslsmith_f_op_f32(-2845f + var_2.b.x), 214f, 331f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(var_3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, global2.b.x, global2.b.x, var_0.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0.b, vec4<f32>(-1000f, var_0.b.x, var_3.b.x, 1371f))) - vec4<f32>(-1178f, 1933f, -1000f, var_3.b.x))))), !var_2.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3())))), arg_2.b.x, arg_2.b.x);
    global1 = array<Struct_1, 31>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yxz)), func_1().b.wzx, vec3<bool>(arg_3 != arg_1.x, select(arg_0.a, global2.c, false), global2.a))) - vec3<f32>(func_1().b.x, _wgslsmith_f_op_f32(step(-1320f, _wgslsmith_f_op_f32(round(arg_3)))), _wgslsmith_f_op_f32(ceil(global2.b.x)))));
    global1 = array<Struct_1, 31>();
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2.b, global2.b) - _wgslsmith_f_op_vec4_f32(-arg_2.b)), global2.a);
    return global3[_wgslsmith_index_u32(min(~(~1u), u_input.d & ~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(abs(u_input.a.x), 28u)], reverseBits(4294967295u), 0u)), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 5>();
    global3 = array<u32, 28>();
    let var_0 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41722u, 28u)], 10u)];
    let var_1 = vec4<u32>(~firstLeadingBit(3070u), 1u, abs(func_4(func_1(), var_0.b.yw, func_1(), -1370f)), global3[_wgslsmith_index_u32(1u, 28u)]);
    var var_2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-103f, _wgslsmith_f_op_f32(exp2(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x + global2.b.x), _wgslsmith_f_op_f32(var_0.b.x - global2.b.x))), true);
    var var_3 = -u_input.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, i32(-1i) * -2147483647i, firstTrailingBit(~global4[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-2878f)), _wgslsmith_f_op_f32(trunc(var_2.b.x)))))), vec2<f32>(_wgslsmith_f_op_f32(func_1().b.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(var_2.b.x)), _wgslsmith_f_op_f32(exp2(var_2.b.x)), global2.a))), var_2.b.x));
}

