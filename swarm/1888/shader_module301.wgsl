struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1120f, -113f, -1755f, 1560f), vec4<f32>(807f, 717f, 333f, -1104f), vec4<f32>(112f, 1431f, 129f, 853f), vec4<f32>(570f, 719f, -526f, 1605f), vec4<f32>(203f, 1608f, -823f, 2384f), vec4<f32>(-1007f, 480f, -975f, -1000f), vec4<f32>(1369f, 1376f, -1000f, 432f), vec4<f32>(-1806f, 933f, -1678f, -1435f), vec4<f32>(-1627f, 2638f, 1436f, -1585f), vec4<f32>(1000f, -1161f, 385f, -600f), vec4<f32>(-247f, -711f, 1445f, -1038f), vec4<f32>(-1638f, -1368f, 576f, 395f), vec4<f32>(614f, -634f, 385f, -1702f), vec4<f32>(1125f, 2882f, 1000f, 791f), vec4<f32>(-786f, 228f, -151f, 574f), vec4<f32>(863f, 2521f, 705f, 774f), vec4<f32>(-1009f, 1267f, 423f, -586f), vec4<f32>(806f, -916f, 2205f, 489f), vec4<f32>(-515f, -1173f, -1112f, 496f), vec4<f32>(674f, 408f, -1000f, 263f), vec4<f32>(392f, 237f, -673f, -1110f), vec4<f32>(206f, -499f, 1000f, 1858f), vec4<f32>(-286f, 138f, -1042f, 143f), vec4<f32>(-307f, -283f, -922f, 1535f), vec4<f32>(1246f, -462f, 1633f, 1149f), vec4<f32>(194f, -311f, 331f, 1588f), vec4<f32>(224f, 1000f, -674f, -1691f), vec4<f32>(-1176f, 465f, 1406f, 104f), vec4<f32>(327f, -693f, -1599f, -869f), vec4<f32>(-1040f, 1412f, -544f, 714f));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = vec4<bool>(true, true, true, !(92482u >= firstTrailingBit(min(4294967295u, 4549u))));
    global0 = Struct_4(Struct_1(0u, true, -(~(~vec2<i32>(2147483647i, -29027i)))), global4.a, true, global0.d, _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(select(global0.e, ~vec2<u32>(global4.a.a, 5727u), true), vec2<u32>(~arg_0.a.a, 31450u)), global0.e & global0.e));
    global0 = Struct_4(global4.c, Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a, global0.e.x, global0.a.a, 83051u), vec4<u32>(global0.a.a, 22715u, arg_0.a.a, 4u)), global0.d.a.a, 1u), global1.x, firstLeadingBit(select(vec2<i32>(arg_0.a.c.x, global0.a.c.x), vec2<i32>(50759i, 29578i), select(global4.d, vec2<bool>(global1.x, false), true)))), any(global1.yw), Struct_2(Struct_1(global0.a.a, 3964u >= (global4.c.a ^ global0.e.x), vec2<i32>(0i, ~global0.d.a.c.x)), 49580i, arg_0.a, var_0.yx), vec2<u32>(31580u, ~arg_0.a.a));
    let var_1 = arg_0;
    let var_2 = !vec4<bool>(any(select(!vec4<bool>(true, var_1.a.b, true, var_0.x), vec4<bool>(var_0.x, global1.x, global4.c.b, global1.x), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, true, true, var_1.a.b), vec4<bool>(var_1.a.b, arg_0.a.b, var_1.a.b, false)))), true, false, global0.a.b);
    return var_2.wwx;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(57530u, global0.d.a.a, 1u), vec3<u32>(global4.a.a, global4.c.a, 0u)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(global4.a.a, global4.a.a, 27804u), vec3<u32>(76707u, global4.c.a, 0u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(1u, global0.d.a.a, global0.e.x))), ~firstTrailingBit(vec3<u32>(global0.e.x, 13056u, 27780u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(6561u, 18923u, global0.e.x), vec3<u32>(3620u, 42536u, global0.a.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1)), 1471f), arg_1), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(1677f * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -342f)))) + vec3<f32>(817f, -316f, _wgslsmith_f_op_f32(arg_1 + arg_1))), func_3(Struct_3(Struct_1(~global0.b.a, true, abs(vec2<i32>(u_input.a.x, global4.b)))))));
    global2 = 745f;
    var var_2 = Struct_2(global0.a, u_input.a.x, global0.b, select(vec2<bool>(!all(vec2<bool>(arg_0.x, false)), false), vec2<bool>(true, func_3(Struct_3(global4.a)).x), global1.x));
    let var_3 = _wgslsmith_f_op_f32(sign(-1534f));
    return Struct_3(global4.a);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(global4.a);
    var var_1 = (~arg_0.b ^ -2147483647i) ^ var_0.a.c.x;
    let var_2 = func_2(!(!(!global0.d.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1472f * _wgslsmith_f_op_f32(f32(-1f) * -1812f)), -593f)));
    let var_3 = 2147483647i;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1860f, 154f)), 637f));
    return arg_0;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = func_2(arg_0.d.d, -417f).a;
    let var_1 = firstLeadingBit(i32(-1i) * -firstTrailingBit(_wgslsmith_mod_i32(2147483647i, arg_0.a.c.x)));
    var var_2 = false;
    var var_3 = -21136i;
    var var_4 = arg_2;
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 30>();
    global4 = global0.d;
    let var_0 = all(!vec4<bool>(true, global0.e.x <= min(global0.b.a, global4.a.a), any(!vec3<bool>(false, global1.x, true)), _wgslsmith_clamp_u32(global4.c.a, global4.a.a, 1u) >= (0u ^ global4.a.a)));
    let var_1 = func_4(Struct_4(global4.a, Struct_1(~global4.a.a, true, vec2<i32>(~42814i, global4.b << (21739u % 32u))), 4294967295u < select(_wgslsmith_sub_u32(global0.e.x, global4.a.a), ~1u, true), func_1(global0.d), ~(~(vec2<u32>(global0.e.x, global0.b.a) | global0.e))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(59967u, global4.a.a, global0.a.a)), ~vec3<u32>(0u, 1u, global4.c.a), firstTrailingBit(~vec3<u32>(global4.a.a, global0.e.x, 30105u))), ~(~vec3<u32>(23981u, global0.a.a, 1u) >> (~vec3<u32>(1u, global4.c.a, 1u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(trunc(104f)), func_2(!global4.d, -1211f));
    let var_2 = global0.a.c;
    let var_3 = -1165f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_2.x, u_input.a.x, global4.c.c.x), vec3<i32>(u_input.a.x, 0i, -2147483647i), global1.yzx), vec3<i32>(var_1.a.c.x, u_input.a.x, var_2.x)) >> (var_1.c.a % 32u), min(-(var_2.x << (1u % 32u)), _wgslsmith_div_i32(global4.a.c.x >> (global4.a.a % 32u), u_input.a.x)), func_2(func_3(func_2(vec2<bool>(global1.x, var_1.a.b), -584f)).yz, var_3).a.c.x, _wgslsmith_add_i32(global4.b, -4459i)), vec4<u32>(_wgslsmith_mult_u32(~global0.b.a, 1u) << (reverseBits(1u) % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(5095u, 53524u, global0.d.c.a, global0.e.x), firstLeadingBit(vec4<u32>(1u, global4.c.a, 4294967295u, 0u))), _wgslsmith_clamp_u32(~_wgslsmith_div_u32(global0.d.c.a, 0u), ~abs(4199u), countOneBits(countOneBits(41091u))), abs(global4.c.a)), func_4(Struct_4(Struct_1(~var_1.a.a, true, vec2<i32>(var_1.c.c.x, global4.a.c.x)), Struct_1(~global0.a.a, global4.d.x, -global4.a.c), all(global4.d), var_1, abs(vec2<u32>(1u, 34315u))), vec3<u32>(4294967295u, ~global4.c.a & var_1.a.a, global0.d.a.a), var_3, Struct_3(global0.a)).a.c);
}

