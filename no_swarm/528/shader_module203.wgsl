struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1000f), Struct_1(-816f), Struct_1(583f), Struct_1(-586f), Struct_1(1432f), Struct_1(906f), Struct_1(-1206f), Struct_1(116f), Struct_1(-1000f), Struct_1(-1740f), Struct_1(1190f), Struct_1(315f), Struct_1(928f), Struct_1(115f), Struct_1(459f));

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_3, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>) -> bool {
    return !(global3.x & false);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_2, 19>();
    return u_input.a.x;
}

fn func_3(arg_0: Struct_2) -> i32 {
    global1 = array<Struct_1, 9>();
    var var_0 = arg_0.a.zz;
    return -2147483647i;
}

fn func_4(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(916f)) * -160f));
    var var_1 = vec2<u32>(reverseBits(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(4294967295u), ~1u), max(~select(vec2<u32>(29434u, 4294967295u), vec2<u32>(18042u, 87371u), true), min(vec2<u32>(1u, 1u), vec2<u32>(12643u, 81610u)))));
    let var_2 = Struct_2(!(!vec3<bool>(all(vec4<bool>(false, global3.x, global3.x, true)), true, select(true, global3.x, false))), _wgslsmith_f_op_f32(round(-1055f)));
    var_1 = firstTrailingBit(~vec2<u32>(abs(var_1.x), var_1.x));
    let var_3 = Struct_2(select(!(!vec3<bool>(true, global3.x, true)), !(!var_2.a), var_2.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f * var_0.a)))))));
    return Struct_3(global1[_wgslsmith_index_u32(0u | _wgslsmith_clamp_u32(~var_1.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(23557u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 18873u, var_1.x, var_1.x))), var_1.x), 9u)], _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-807f, 1323f, var_2.b, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(197f, -1592f, 535f, var_0.a) + _wgslsmith_div_vec4_f32(vec4<f32>(-1492f, var_3.b, var_3.b, var_2.b), vec4<f32>(var_0.a, -1452f, var_3.b, -179f)))), true)), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_1.x, 60682u, 38573u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(138840u, 88137u, var_1.x), vec3<u32>(0u, var_1.x, var_1.x))), vec3<u32>(~var_1.x & ~var_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 128245u, 18268u, 0u), vec4<u32>(0u, 1u, 4294967295u, var_1.x)), _wgslsmith_div_u32(var_1.x, _wgslsmith_div_u32(1u, 1u)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1439f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-917f, var_3.b, -367f), vec3<f32>(1842f, 207f, -755f))), vec3<f32>(_wgslsmith_f_op_f32(-var_2.b), -271f, var_3.b), var_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, var_3.b, var_3.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(vec2<bool>(!global3.x, all(vec3<bool>(!global3.x, true, true))), vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(633f - -1067f))) >= -186f, true), !global3.x);
    let var_0 = Struct_2(!(!vec3<bool>(true, true, func_1(Struct_1(271f), vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, false, global3.x, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-274f, _wgslsmith_f_op_f32(round(242f)), u_input.a.x >= u_input.a.x)))));
    var var_1 = 1008f;
    global4 = array<Struct_3, 28>();
    let var_2 = func_4(vec4<i32>(firstTrailingBit(func_2(global2[_wgslsmith_index_u32(82534u, 15u)], Struct_1(var_0.b))), func_3(Struct_2(var_0.a, var_0.b)) << (countOneBits(1u) % 32u), 1i, _wgslsmith_clamp_i32(-1i, ~(-12823i), u_input.a.x)) << (vec4<u32>(0u | firstTrailingBit(0u), ~(~4294967295u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(6599u, 4294967295u)), vec2<u32>(1u, 1u)), 3790u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-20162i, var_2.c.x, var_2.b.xzx, ~(~(~countOneBits(var_2.c.x))), ~_wgslsmith_add_vec2_u32(func_4(~vec4<i32>(-2147483647i, u_input.a.x, 0i, -1003i)).c.zz, ~max(var_2.c.xy, var_2.c.yx)));
}

