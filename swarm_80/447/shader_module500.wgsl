struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1156f;

var<private> global2: array<Struct_3, 4>;

var<private> global3: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(32766u, 1u, 85040u), vec3<u32>(4294967295u, 53526u, 4294967295u), vec3<u32>(1995u, 47528u, 36010u), vec3<u32>(39551u, 4294967295u, 55778u), vec3<u32>(41093u, 1625u, 1u), vec3<u32>(1u, 4294967295u, 38189u), vec3<u32>(4294967295u, 2088u, 3147u), vec3<u32>(20621u, 107435u, 4294967295u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global3 = array<vec3<u32>, 8>();
    global2 = array<Struct_3, 4>();
    global1 = _wgslsmith_f_op_f32(836f * global0.a.x);
    let var_0 = ~(~(25097u << (u_input.d.x % 32u)));
    var var_1 = Struct_4(131142u, vec4<f32>(-1468f, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(-global0.a.x)), -100f, global0.a.x), _wgslsmith_add_vec4_u32(u_input.d, ~(~(~vec4<u32>(u_input.b, var_0, 1u, u_input.d.x)))), false, u_input.c);
    return select(global0.d, vec4<bool>(true, false, (_wgslsmith_f_op_f32(-1637f * -1757f) == var_1.b.x) || false, all(global0.d.xxz)), global0.d.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: f32, arg_3: u32) -> u32 {
    global3 = array<vec3<u32>, 8>();
    let var_0 = u_input.d;
    let var_1 = ~(-u_input.c.zy);
    let var_2 = Struct_2(Struct_1(global0.a, _wgslsmith_clamp_u32(min(global0.b, arg_3 & 4294967295u), _wgslsmith_mult_u32(34184u, 1u), 46508u), !(!(!vec2<bool>(true, global0.d.x))), vec4<bool>(false, all(select(arg_0, vec3<bool>(true, global0.c.x, arg_0.x), global0.c.x)), select(arg_0.x || arg_0.x, any(global0.c), false), all(vec4<bool>(global0.d.x, global0.d.x, arg_0.x, global0.d.x)))), Struct_1(global0.a, countOneBits(1u), vec2<bool>(arg_0.x, global0.c.x), !func_3()));
    let var_3 = var_2;
    return u_input.d.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: Struct_2) -> bool {
    let var_0 = Struct_4(1u, vec4<f32>(-781f, arg_3.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3.a.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.b.a.x), 728f)), arg_3.b.a.x), firstTrailingBit(~u_input.d), all(select(vec2<bool>(any(global0.c), arg_0.x & global0.d.x), !vec2<bool>(arg_3.b.d.x, arg_2.x), global0.c)), -vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.c.x, 9857i, u_input.a), vec4<i32>(-1710i, u_input.a, u_input.a, u_input.c.x)), u_input.a, -19918i) << (vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(34483u, u_input.d.x, arg_1.x, 34660u), vec4<u32>(global0.b, 4294967295u, 27030u, arg_1.x)), vec4<u32>(u_input.b, u_input.b, 51451u, arg_1.x) << (u_input.d % vec4<u32>(32u))), u_input.b, _wgslsmith_sub_u32(arg_3.b.b, 32856u ^ arg_1.x)) % vec3<u32>(32u)));
    let var_1 = select(arg_0.yz, global0.d.yx, arg_2.zy);
    var var_2 = ~vec3<u32>(func_2(vec3<bool>(true, any(vec3<bool>(false, true, var_0.d)), arg_0.x), 1i, 1505f, 65433u), min(_wgslsmith_mod_u32(reverseBits(arg_3.a.b), _wgslsmith_add_u32(u_input.d.x, arg_3.a.b)), abs(1u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 44988u), firstLeadingBit(vec2<u32>(49710u, 19262u))));
    var_2 = vec3<u32>(firstTrailingBit(~u_input.b), 1u, 4294967295u);
    let var_3 = vec4<bool>(_wgslsmith_f_op_f32(-1126f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-537f, arg_3.a.a.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1850f, 905f)) + 1f)), var_1.x, global0.d.x, arg_2.x);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_div_vec2_u32(u_input.d.yx, u_input.d.xz));
    global0 = Struct_1(global0.a, 1u, !select(vec2<bool>(true, all(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true))), vec2<bool>(func_1(global0.d.wzz, vec3<u32>(84413u, u_input.b, 4294967295u), vec3<bool>(true, true, false), Struct_2(Struct_1(global0.a, global0.b, vec2<bool>(global0.d.x, false), vec4<bool>(global0.c.x, true, global0.d.x, global0.d.x)), Struct_1(global0.a, 36706u, global0.c, vec4<bool>(false, global0.d.x, true, global0.c.x)))), true), all(global0.d.yx)), global0.d);
    var var_1 = ~abs(vec4<i32>(-(~(-36550i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e, u_input.a), vec3<i32>(-1i, u_input.a, u_input.c.x)), ~u_input.a, ~_wgslsmith_div_i32(-22712i, -1i)));
    var var_2 = true;
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), 220f), 13643u, global0.c, func_3());
    var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(1i, u_input.a, -20967i, -u_input.a) & vec4<i32>(4073i, select(var_1.x ^ 60083i, u_input.c.x, true), ~var_1.x, 16395i), vec4<i32>(2147483647i, _wgslsmith_mod_i32(~select(u_input.e, u_input.e, global0.c.x), 30381i), ~u_input.e, 38094i ^ _wgslsmith_mod_i32(~u_input.a, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(-(var_1.x ^ min(-u_input.e, var_1.x | u_input.e)), vec4<f32>(-2199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global0.a.x, 492f), u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(636f, global0.a.x)))))) * global0.a.x), vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.d.xxy | vec3<u32>(4294967295u, 1095u, var_0.x), select(vec3<u32>(global0.b, 4294967295u, 4294967295u), vec3<u32>(4294967295u, u_input.b, 0u), global0.d.yzy)), global0.b), ~(~44497u) << (countOneBits(var_0.x) % 32u), _wgslsmith_dot_vec3_u32(u_input.d.yzw, vec3<u32>(firstTrailingBit(var_0.x), ~8703u, global0.b))));
}

