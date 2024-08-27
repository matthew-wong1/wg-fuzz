struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(0u, vec2<i32>(-44573i, 41800i)), vec2<f32>(1579f, 321f), true, Struct_1(33533u, vec2<i32>(33502i, -33282i))), Struct_2(Struct_1(18511u, vec2<i32>(-9349i, -42959i)), vec2<f32>(-110f, -1252f), false, Struct_1(39962u, vec2<i32>(1i, 47387i))), Struct_2(Struct_1(35466u, vec2<i32>(2147483647i, 25004i)), vec2<f32>(-427f, 446f), true, Struct_1(53304u, vec2<i32>(15502i, -17903i))), Struct_2(Struct_1(4294967295u, vec2<i32>(0i, -1i)), vec2<f32>(-456f, 1100f), false, Struct_1(29272u, vec2<i32>(0i, 43665i))), Struct_2(Struct_1(0u, vec2<i32>(-1i, -36897i)), vec2<f32>(-708f, -423f), true, Struct_1(18074u, vec2<i32>(-31784i, 2147483647i))), Struct_2(Struct_1(1u, vec2<i32>(-37292i, 2147483647i)), vec2<f32>(-1059f, 315f), true, Struct_1(19542u, vec2<i32>(19814i, 1i))), Struct_2(Struct_1(0u, vec2<i32>(2147483647i, 2147483647i)), vec2<f32>(-760f, 575f), false, Struct_1(4294967295u, vec2<i32>(2147483647i, 9039i))), Struct_2(Struct_1(25005u, vec2<i32>(i32(-2147483648), 1i)), vec2<f32>(152f, -927f), false, Struct_1(4294967295u, vec2<i32>(1i, 74388i))), Struct_2(Struct_1(55102u, vec2<i32>(-51615i, 1i)), vec2<f32>(1229f, 184f), false, Struct_1(77730u, vec2<i32>(39513i, 0i))), Struct_2(Struct_1(4294967295u, vec2<i32>(1i, 0i)), vec2<f32>(398f, -628f), true, Struct_1(1u, vec2<i32>(2147483647i, -1i))), Struct_2(Struct_1(27240u, vec2<i32>(2147483647i, -27274i)), vec2<f32>(-1540f, -1000f), false, Struct_1(1u, vec2<i32>(-1i, 41402i))), Struct_2(Struct_1(42086u, vec2<i32>(31451i, 13268i)), vec2<f32>(-867f, 2322f), true, Struct_1(9003u, vec2<i32>(-1i, -16940i))), Struct_2(Struct_1(0u, vec2<i32>(21854i, 2147483647i)), vec2<f32>(769f, 167f), false, Struct_1(53012u, vec2<i32>(i32(-2147483648), -12952i))), Struct_2(Struct_1(28451u, vec2<i32>(-7080i, -37920i)), vec2<f32>(952f, 642f), false, Struct_1(4294967295u, vec2<i32>(-13860i, -66347i))), Struct_2(Struct_1(44148u, vec2<i32>(2147483647i, 1i)), vec2<f32>(-396f, 845f), true, Struct_1(0u, vec2<i32>(-1i, 19972i))), Struct_2(Struct_1(30878u, vec2<i32>(0i, 1i)), vec2<f32>(1645f, 1332f), true, Struct_1(4294967295u, vec2<i32>(-1i, 2147483647i))), Struct_2(Struct_1(1u, vec2<i32>(2147483647i, 1i)), vec2<f32>(684f, 208f), false, Struct_1(0u, vec2<i32>(39958i, i32(-2147483648)))), Struct_2(Struct_1(27091u, vec2<i32>(-1i, -30581i)), vec2<f32>(-257f, 1152f), false, Struct_1(4294967295u, vec2<i32>(41551i, -62769i))), Struct_2(Struct_1(47980u, vec2<i32>(-25648i, -27303i)), vec2<f32>(626f, -381f), true, Struct_1(17763u, vec2<i32>(-25424i, 1i))), Struct_2(Struct_1(37428u, vec2<i32>(i32(-2147483648), 0i)), vec2<f32>(-1000f, 628f), false, Struct_1(0u, vec2<i32>(0i, 2147483647i))));

var<private> global1: array<Struct_2, 1>;

var<private> global2: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(1u, ~(~_wgslsmith_dot_vec2_u32(global2.xy, vec2<u32>(global2.x, global2.x)))), u_input.a.zx);
    var var_1 = arg_0.x;
    var var_2 = Struct_1(~reverseBits(~var_0.a | var_0.a), var_0.b);
    let var_3 = Struct_2(Struct_1(_wgslsmith_mod_u32((29331u << (global2.x % 32u)) | global2.x, firstTrailingBit(global2.x)), var_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2053f, 1139f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1116f, -1000f) + vec2<f32>(-227f, -345f))))), any(vec4<bool>(0i <= countOneBits(var_0.b.x), any(!vec4<bool>(true, false, arg_0.x, false)), !(arg_0.x != arg_0.x), !any(vec2<bool>(false, true)))), var_0);
    global2 = countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(max(4294967295u, var_3.a.a), var_3.d.a | var_2.a, var_0.a), select(~(~vec3<u32>(var_3.d.a, 4294967295u, 21477u)), vec3<u32>(min(0u, 15749u), _wgslsmith_add_u32(29009u, var_3.d.a), global2.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_3.c), arg_0.x), arg_0, !arg_0))));
    return ~(_wgslsmith_dot_vec3_u32(min(min(vec3<u32>(0u, global2.x, 54538u), vec3<u32>(global2.x, 33217u, var_3.a.a)), firstTrailingBit(vec3<u32>(71821u, var_0.a, 4294967295u))), vec3<u32>(~var_2.a, 1u, 29008u)) >> (select(var_2.a, ~reverseBits(4294967295u), arg_0.x) % 32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), true & any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)))), !select(vec2<bool>(true, arg_0.x >= arg_0.x), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(arg_2 <= -828f, any(vec2<bool>(false, true))), vec2<bool>(true, true), false));
    var var_1 = vec2<u32>(func_3(select(!select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false)), !select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x)), vec3<bool>(true, false, true))), countOneBits(arg_0.x));
    let var_2 = reverseBits(vec3<u32>(arg_3.x, ~reverseBits(func_3(vec3<bool>(var_0.x, false, false))), var_1.x));
    var var_3 = any(select(select(vec2<bool>(true, var_2.x == 18949u), !select(var_0, vec2<bool>(var_0.x, var_0.x), var_0.x), any(select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(false, true, true, var_0.x), vec4<bool>(true, true, var_0.x, true)))), vec2<bool>(any(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, false, var_0.x), var_0.x)), false), !vec2<bool>(true, var_0.x != true)));
    let var_4 = Struct_1(firstLeadingBit(_wgslsmith_mult_u32(1u, global2.x & var_1.x)), ~vec2<i32>(1i, u_input.a.x));
    return var_4;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global2 = ~(~(~(~(~vec3<u32>(global2.x, arg_0.d.a, 1u)))));
    var var_0 = false;
    var var_1 = Struct_1(select(1u, arg_0.d.a ^ 1u, false), u_input.a.yy);
    var_1 = func_2(abs(global2.zx & ~vec2<u32>(1u, global2.x)), ~4294967295u, arg_0.b.x, countOneBits(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, global2.x, 25193u, global2.x) ^ vec4<u32>(0u, global2.x, 0u, global2.x), vec4<u32>(arg_0.a.a, 37846u, arg_0.d.a, 31430u), true), vec4<u32>(~37518u, ~1u, _wgslsmith_sub_u32(global2.x, var_1.a), 1u), vec4<u32>(global2.x, ~global2.x, 0u, arg_0.a.a))));
    global0 = array<Struct_2, 20>();
    return arg_0.a;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = (vec3<u32>(func_4(global1[_wgslsmith_index_u32(~global2.x, 1u)]).a, countOneBits(arg_1.a) >> (4294967295u % 32u), 1u) << (vec3<u32>(57555u, global2.x, arg_1.a >> (~4294967295u % 32u)) % vec3<u32>(32u))) << ((_wgslsmith_mult_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, arg_1.a), vec3<u32>(global2.x, 49675u, 1u)), vec3<u32>(~arg_3.a, 23502u, _wgslsmith_sub_u32(1u, arg_3.a))) >> ((~_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.a, 8312u, global2.x), vec3<u32>(25640u, arg_3.a, arg_1.a)) & ~firstTrailingBit(vec3<u32>(16308u, arg_1.a, 4294967295u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(arg_1.a << (~0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, global2.x, 43618u) & vec3<u32>(var_0.x, arg_3.a, var_0.x), firstLeadingBit(vec3<u32>(arg_1.a, 14240u, arg_3.a)))), ~4294967295u)), 1u)];
    var var_2 = -arg_1.b.x;
    global2 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~reverseBits(vec3<u32>(1u, 41928u, 57809u)), min(~vec3<u32>(52666u, var_0.x, 4294967295u), vec3<u32>(24243u, 82u, 1u)) >> ((~vec3<u32>(4294967295u, global2.x, 14282u) >> ((vec3<u32>(45971u, 27061u, var_1.d.a) | vec3<u32>(global2.x, 1u, 60951u)) % vec3<u32>(32u))) % vec3<u32>(32u))), reverseBits(max(~vec3<u32>(12112u, arg_1.a, var_1.a.a) & ~vec3<u32>(51207u, arg_3.a, var_0.x), ~_wgslsmith_mod_vec3_u32(vec3<u32>(46359u, global2.x, arg_3.a), vec3<u32>(34391u, 1u, 15803u)))));
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(global2.x), 20u)];
    return var_1.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = arg_0.b.x;
    global2 = arg_2.www;
    global2 = _wgslsmith_div_vec3_u32(arg_2.zxy, firstLeadingBit(arg_2.wyy));
    global2 = arg_2.xyw;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1110f, _wgslsmith_f_op_f32(round(arg_3)), -594f, _wgslsmith_f_op_f32(ceil(-1000f)))));
    return func_5(select(arg_1.x & arg_1.x, arg_1.x, select(true, false, !arg_1.x && arg_1.x)), func_4(Struct_2(func_2(arg_2.wz, 4294967295u, -1064f, vec4<u32>(global2.x, arg_0.a, 57476u, global2.x)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_3)), arg_1.x, arg_0)), vec4<bool>(arg_1.x, any(select(arg_1, arg_1, all(vec4<bool>(false, true, arg_1.x, true)))), !arg_1.x, false), Struct_1(~arg_2.x, vec2<i32>(-u_input.a.x, i32(-1i) * -52131i) << (~(vec2<u32>(7279u, 1u) >> (vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -789f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(global2.x, vec2<i32>(2147483647i, 14178i)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(162f, -215f))), any(vec4<bool>(true, true, false, true)), func_1(Struct_1(18370u, vec2<i32>(u_input.a.x, u_input.a.x)), vec3<bool>(true, true, true), vec4<u32>(global2.x, global2.x, 53743u, global2.x), -807f)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(22394u, global2.x), global2.yx)), _wgslsmith_mult_u32(global2.x, func_1(Struct_1(global2.x, u_input.a.xy), vec3<bool>(false, true, true), vec4<u32>(59960u, global2.x, global2.x, 4294967295u), -1122f).a)))), _wgslsmith_f_op_f32(func_6(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(global2.x, ~global2.x), func_1(Struct_1(global2.x, vec2<i32>(33040i, u_input.a.x)), vec3<bool>(true, true, true), vec4<u32>(global2.x, 0u, 4294967295u, 4294967295u), 698f).a), 1u)], _wgslsmith_add_vec2_u32(global2.zz, global2.xz), func_4(global1[_wgslsmith_index_u32(~(37343u | global2.x), 1u)]).a)), _wgslsmith_f_op_f32(func_6(global1[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~global2.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, global2.x), global2.xy)), select(vec2<u32>(global2.x, global2.x), global2.xx, vec2<bool>(false, false)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(0u, 35997u)) % vec2<u32>(32u))), global2.x)), -1390f);
    global2 = ~(~(vec3<u32>(1u, ~global2.x, _wgslsmith_mult_u32(616u, global2.x)) & ~countOneBits(vec3<u32>(global2.x, 51376u, 1u))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(633f, var_0.x, var_0.x, -410f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -2248f, -2133f, -1000f))), vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -184f, _wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(36283u, u_input.a.xx), vec2<f32>(853f, 1104f), true, Struct_1(32149u, u_input.a.yy)), vec2<u32>(0u, 31767u), 44201u)), _wgslsmith_div_f32(795f, 731f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -368f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(global2.x, vec2<i32>(71531i, u_input.a.x)), var_0.yx, true, Struct_1(global2.x, u_input.a.zx)), reverseBits(global2.yy), ~16997u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), 978f))), !(~global2.x <= _wgslsmith_add_u32(90406u, global2.x)))));
    let var_1 = !vec2<bool>(false, any(vec2<bool>(true, true)));
    global0 = array<Struct_2, 20>();
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(var_0.zy));
    global1 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_2.x) * var_2.x))), _wgslsmith_add_vec4_i32(abs(max(vec4<i32>(17881i, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(1u, global2.x, 21008u, 1456u) % vec4<u32>(32u)), vec4<i32>(21464i, u_input.a.x, -38218i, 0i))), ~(~(-vec4<i32>(64394i, -2147483647i, u_input.a.x, u_input.a.x)))), var_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-672f, var_2.x, _wgslsmith_f_op_f32(var_2.x - 349f)) + vec3<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(global2.x, vec2<i32>(u_input.a.x, u_input.a.x)), vec2<f32>(1276f, var_0.x), var_1.x, Struct_1(4294967295u, vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_add_vec2_u32(vec2<u32>(68699u, global2.x), global2.xz), global2.x)), var_0.x, var_2.x)));
}

