struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<bool>(false, false, false), vec3<f32>(-1795f, -1362f, -654f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-2137f, -1223f, 326f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(1042f, -631f, 1000f)), Struct_3(vec3<bool>(true, false, true), vec3<f32>(240f, -275f, -985f)), Struct_3(vec3<bool>(false, true, true), vec3<f32>(-677f, -1000f, 1000f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(519f, 899f, 510f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(1196f, -851f, -306f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(106f, 1548f, -337f)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(759f, -1034f, -557f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(150f, 2641f, -894f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-1000f, -2047f, -239f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(671f, -1008f, -1444f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(-290f, 282f, 103f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-2997f, 654f, -175f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(-1000f, 447f, 157f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-1667f, 1000f, 409f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-404f, -2115f, 640f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(-1569f, -1328f, -729f)), Struct_3(vec3<bool>(false, false, true), vec3<f32>(1317f, 1000f, -468f)), Struct_3(vec3<bool>(false, true, false), vec3<f32>(1072f, -1643f, 1616f)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(282f, 711f, 555f)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(-273f, -1099f, 386f)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(1000f, 1662f, 208f)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-829f, -1000f, -965f)));

var<private> global2: Struct_3 = Struct_3(vec3<bool>(false, true, true), vec3<f32>(450f, -1000f, -115f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = Struct_5(vec3<u32>(~(~_wgslsmith_sub_u32(u_input.d, global0.b)), ~(~1u), u_input.a.x), Struct_1(292f, u_input.a.x), arg_0 >> ((~4294967295u << (~(global0.b << (global0.b % 32u)) % 32u)) % 32u));
    let var_1 = Struct_3(!select(global2.a, select(vec3<bool>(global2.a.x, false, true), vec3<bool>(true, global2.a.x, global2.a.x), !global2.a), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, global2.a.x)))), global2.b);
    var_0 = Struct_5(firstLeadingBit(countOneBits(select(var_0.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(15418u, global0.b, 9453u), var_0.a, vec3<u32>(u_input.e, 4294967295u, 43671u)), select(var_1.a, var_1.a, global2.a.x)))), Struct_1(var_1.b.x, 15201u), firstLeadingBit(u_input.b.x));
    global2 = Struct_3(select(!vec3<bool>(any(vec4<bool>(var_1.a.x, true, true, global2.a.x)), true, var_1.a.x), select(!vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(all(vec3<bool>(global2.a.x, false, global2.a.x)), any(vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x)), true), var_1.a), false & var_1.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global2.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, var_1.b.x, var_0.b.a))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1107f, -1432f, 418f) + var_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, var_0.b.a, arg_1)))))));
    var var_2 = var_0.b;
    return 1521f;
}

fn func_2() -> f32 {
    let var_0 = max(-u_input.b, u_input.b | u_input.b);
    global2 = global1[_wgslsmith_index_u32(1u, 24u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(-2147483647i, global0.a)))), _wgslsmith_div_f32(-262f, -1517f)))));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_4 {
    var var_0 = arg_2.e;
    global1 = array<Struct_3, 24>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, -695f, global2.b.x))))), !((_wgslsmith_sub_u32(0u, global0.b) << (4294967295u % 32u)) == ~28351u), 0u, arg_2.d, arg_2.e);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec2<u32> {
    global1 = array<Struct_3, 24>();
    var var_0 = true;
    var_0 = global2.a.x != all(global2.a);
    var var_1 = func_4(false, select(global2.a, !(!(!vec3<bool>(true, false, global2.a.x))), global2.a), Struct_4(_wgslsmith_f_op_vec3_f32(floor(global2.b)), !any(global2.a.zy), _wgslsmith_sub_u32(u_input.e, global0.b >> (~4294967295u % 32u)), Struct_1(arg_1.a, abs(_wgslsmith_dot_vec2_u32(u_input.a, arg_0.wy))), Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.b.yy + global2.b.zx), vec2<f32>(-1367f, -876f), vec2<bool>(global2.a.x, global2.a.x))), _wgslsmith_mod_vec4_u32(firstLeadingBit(arg_0), abs(vec4<u32>(arg_0.x, 35029u, 4294967295u, 2376u))), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, arg_1.a, global0.a, 1000f) + vec4<f32>(885f, 922f, global0.a, arg_1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, 1656f, -2256f, global2.b.x)), vec4<f32>(130f, global0.a, -1004f, -1642f)))))));
    global0 = func_4(!(!(!(!var_1.b))), global2.a, func_4(func_4(true, select(vec3<bool>(false, var_1.b, var_1.b), global2.a, true), func_4(var_1.b, !vec3<bool>(true, var_1.b, true), Struct_4(vec3<f32>(-489f, var_1.e.c, -1000f), var_1.b, 73197u, Struct_1(-816f, arg_1.b), Struct_2(var_1.a.xy, arg_0, 446f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.c, global2.b.x, 306f, 352f) - vec4<f32>(946f, arg_1.a, 906f, arg_1.a))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(f32(-1f) * -171f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_1.a.x)).b, select(select(global2.a, vec3<bool>(var_1.b, true, global2.a.x), select(vec3<bool>(false, false, var_1.b), vec3<bool>(var_1.b, true, false), global2.a)), !(!vec3<bool>(global2.a.x, var_1.b, var_1.b)), vec3<bool>(true, global2.a.x, true)), Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-100f, 407f, global2.b.x), vec3<f32>(var_1.d.a, var_1.d.a, -733f)), var_1.a)), any(vec2<bool>(true, true)), ~1u, arg_1, Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(365f, -2295f), var_1.a.zx), vec4<u32>(14542u, 0u, 24404u, 0u) << (arg_0 % vec4<u32>(32u)), _wgslsmith_f_op_f32(arg_1.a - -1285f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -685f, 275f, -1088f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.x, global2.b.x, arg_1.a, global0.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a, 465f, arg_1.a, 1649f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(198f - -1643f), _wgslsmith_f_op_f32(max(362f, arg_1.a)), _wgslsmith_f_op_f32(abs(var_1.d.a)))))).d;
    return vec2<u32>(~arg_0.x, ~arg_2) >> (vec2<u32>(firstTrailingBit(abs(arg_2)), var_1.c) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(global2.b, true, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(func_1(min(vec4<u32>(u_input.d, 4294967295u, 4294967295u, 0u), vec4<u32>(1045u, global0.b, 5440u, global0.b)), Struct_1(global2.b.x, u_input.d), 40145u, u_input.b.x ^ u_input.b.x), u_input.a), u_input.d), func_4(any(vec3<bool>(true, global0.b >= u_input.e, !global2.a.x)), select(!(!vec3<bool>(global2.a.x, false, false)), global2.a, true), Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global2.b, global2.b))), global2.a.x, 1u, func_4(true, !vec3<bool>(true, global2.a.x, global2.a.x), func_4(global2.a.x, vec3<bool>(global2.a.x, global2.a.x, global2.a.x), Struct_4(global2.b, true, 6971u, Struct_1(192f, 24906u), Struct_2(vec2<f32>(global2.b.x, global2.b.x), vec4<u32>(4294967295u, 11989u, global0.b, global0.b), global0.a)), vec4<f32>(global0.a, global2.b.x, 470f, global0.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.b.x, -185f, -1576f, global0.a)))).d, Struct_2(_wgslsmith_div_vec2_f32(global2.b.xy, vec2<f32>(649f, global2.b.x)), vec4<u32>(0u, global0.b, 4294967295u, 0u), -1698f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))).d, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a)) * global2.b.zy), firstLeadingBit(~vec4<u32>(global0.b, global0.b, 1u, 74042u)) | vec4<u32>(_wgslsmith_mult_u32(u_input.d, u_input.e), global0.b, ~u_input.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b.x)))));
    var_0 = func_4(global2.a.x, !(!vec3<bool>(all(vec4<bool>(true, var_0.b, false, var_0.b)), var_0.b | global2.a.x, true)), func_4(true, !global2.a, func_4(var_0.b, select(global2.a, global2.a, select(vec3<bool>(global2.a.x, global2.a.x, true), vec3<bool>(false, true, true), vec3<bool>(true, global2.a.x, true))), Struct_4(_wgslsmith_f_op_vec3_f32(var_0.a + global2.b), var_0.b, var_0.d.b, var_0.d, Struct_2(vec2<f32>(-1148f, global2.b.x), vec4<u32>(u_input.d, 16268u, 141161u, 8351u), 2466f)), vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2295f), global2.b.x, _wgslsmith_div_f32(global2.b.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, var_0.a.x, -150f, -2340f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2.b.x, global0.a)), global0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_div_f32(var_0.d.a, global2.b.x))), var_0.e.a.x, _wgslsmith_f_op_f32(ceil(-2025f)))));
    global1 = array<Struct_3, 24>();
    var var_1 = var_0.d;
    var var_2 = func_4(true, vec3<bool>(any(vec2<bool>(var_0.b, false)), var_0.b, any(select(!vec4<bool>(false, global2.a.x, true, var_0.b), !vec4<bool>(global2.a.x, var_0.b, false, false), !vec4<bool>(false, global2.a.x, global2.a.x, var_0.b)))), func_4(global2.a.x, global2.a, func_4(true, select(!vec3<bool>(var_0.b, global2.a.x, var_0.b), vec3<bool>(false, false, global2.a.x), global2.a), Struct_4(vec3<f32>(377f, 1020f, var_0.e.a.x), all(vec4<bool>(global2.a.x, var_0.b, true, true)), global0.b << (global0.b % 32u), Struct_1(650f, var_0.e.b.x), Struct_2(global2.b.yz, var_0.e.b, 369f)), vec4<f32>(_wgslsmith_f_op_f32(-1000f - var_0.d.a), _wgslsmith_f_op_f32(var_0.e.c + var_0.a.x), -1039f, _wgslsmith_f_op_f32(var_1.a + var_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, global0.a, 1000f, var_1.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(103f, 510f, 372f, 1399f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1170f, 283f, global2.b.x, 948f), vec4<f32>(699f, var_1.a, var_1.a, var_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(960f, var_1.a, 1000f, -415f))))));
    var var_3 = select(global2.a, vec3<bool>(any(select(global2.a, select(vec3<bool>(true, global2.a.x, var_2.b), vec3<bool>(global2.a.x, var_2.b, var_0.b), global2.a), all(vec3<bool>(true, var_0.b, var_0.b)))), !all(vec2<bool>(var_0.b, false)), true), true);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.d.a, -1170f)), 573f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-894f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.c, 1056f) - _wgslsmith_f_op_f32(var_0.e.c + var_2.d.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, ~vec2<u32>(var_2.c, global0.b) & ~(~var_0.e.b.zx), max(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, 25306u, 4294967295u) << (var_2.e.b.zwy % vec3<u32>(32u))), var_2.e.b.ywx), 4294967295u), vec2<u32>(~(~abs(100020u)), min(~_wgslsmith_mod_u32(var_1.b, u_input.e), 4294967295u)));
}

