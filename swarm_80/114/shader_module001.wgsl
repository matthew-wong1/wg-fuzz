struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 5>;

var<private> global1: Struct_2 = Struct_2(27930u, false, Struct_1(706f, vec3<f32>(-959f, 415f, 178f), vec4<i32>(-18802i, 13826i, -6913i, i32(-2147483648))), Struct_1(-2323f, vec3<f32>(-1287f, 1464f, -657f), vec4<i32>(0i, -47898i, -41214i, -5644i)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    global0 = array<vec2<i32>, 5>();
    var var_0 = 24538u;
    let var_1 = ~(2883u << (global1.a % 32u));
    var var_2 = global1.b;
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.c.b, vec3<f32>(global1.d.b.x, -1273f, global1.d.b.x)) * global1.c.b)), firstLeadingBit(global1.d.c) ^ vec4<i32>(-arg_0, arg_0, _wgslsmith_dot_vec3_i32(global1.d.c.yww, vec3<i32>(1i, -23194i, -2147483647i)), arg_2.x)), vec2<u32>(~1u, firstLeadingBit(~25905u)), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(global1.a, global1.a, u_input.a.x)), select(_wgslsmith_div_vec3_u32(vec3<u32>(79940u, 0u, 0u), vec3<u32>(arg_1.x, arg_3, 0u)), max(vec3<u32>(arg_1.x, arg_1.x, u_input.a.x), vec3<u32>(u_input.a.x, global1.a, 8137u)), any(vec4<bool>(true, false, false, global1.b)))), ~vec3<u32>(1u, ~arg_3, 4294967295u)), ~1u);
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(_wgslsmith_mod_u32(countOneBits(u_input.a.x), func_3(global1.c.c.x, u_input.a, firstTrailingBit(global1.c.c.xx), u_input.a.x) & max(max(global1.a, global1.a), reverseBits(global1.a))), u_input.a.x != global1.a, Struct_1(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.d.b.x * -245f), global1.c.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d.b)) + global1.d.b), global1.d.c), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.b.x + 1161f))), global1.c.b, ~global1.c.c));
    let var_0 = global1.c;
    let var_1 = -1000f;
    global1 = Struct_2(51005u, global1.b, global1.d, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.c.b.x, global1.c.b.x)), _wgslsmith_f_op_f32(abs(1034f)), !global1.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.c.b, vec3<f32>(global1.c.b.x, 244f, -2522f))), var_0.b)), global1.c.c));
    let var_2 = ~u_input.a.x;
    return Struct_2(min(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(38103u, var_2, 80439u), vec3<u32>(u_input.a.x, var_2, 63316u)), vec3<u32>(global1.a, 0u, var_2)) >> (reverseBits(~4294967295u) % 32u), global1.a), true, global1.c, global1.c);
}

fn func_1() -> f32 {
    global1 = func_2();
    global0 = array<vec2<i32>, 5>();
    let var_0 = global1.c.c.x;
    var var_1 = global1.c.a;
    let var_2 = -25101i;
    return global1.d.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~(~(~_wgslsmith_div_u32(global1.a, u_input.a.x))), select(-(~0i), -26702i, true) >= ~global1.c.c.x, global1.d, Struct_1(-2673f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global1.c.a, -506f)), -460f, 456f)), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.c.c.x, -35201i, global1.d.c.x), global1.c.c.zzx), min(82851i, global1.d.c.x), 0i, global1.c.c.x))));
    global1 = Struct_2(~_wgslsmith_mod_u32(var_0.a, _wgslsmith_mod_u32(global1.a & 46123u, firstTrailingBit(u_input.a.x))), 20177u <= ~u_input.a.x, global1.d, Struct_1(_wgslsmith_div_f32(global1.c.a, var_0.c.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1452f, _wgslsmith_f_op_f32(f32(-1f) * -689f), _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.d.b)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.b, false), vec3<bool>(false, false, false), true), any(vec4<bool>(true, true, false, var_0.b))))), vec4<i32>(var_0.d.c.x, -1i, ~(~global1.c.c.x), -9036i)));
    global1 = Struct_2(4294967295u, !(!(~148169u != _wgslsmith_mult_u32(u_input.a.x, 39159u))), func_2().c, var_0.d);
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(select(var_0.c.b.x, _wgslsmith_f_op_f32(max(-767f, -1690f)), !(-93865i == global1.d.c.x)));
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(68671u, global1.a, 1u), vec3<u32>(var_1.a, 11809u, global1.a) ^ vec3<u32>(global1.a, 23635u, 4294967295u)), ~(~vec3<u32>(var_1.a, 36690u, u_input.a.x)), all(vec2<bool>(var_0.b, true)) == (0i != global1.c.c.x)), vec3<u32>(select(global1.a, u_input.a.x, false) >> (func_2().a % 32u), 58410u, min(74028u, ~151u))), select(~countOneBits(vec3<u32>(var_0.a, 63519u, 10387u)), ~abs(vec3<u32>(7327u, 57438u, 25805u)), all(!vec4<bool>(true, true, var_0.b, var_1.b))));
    let var_4 = Struct_3(false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1063f)), vec3<f32>(var_0.c.b.x, _wgslsmith_div_f32(2278f, -1024f), var_1.c.b.x), func_2().a | ~(var_3.x | 8414u), reverseBits(~(~18803u << (_wgslsmith_mod_u32(4294967295u, 4294967295u) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-905f, global1.c.b.x, -272f, 300f) * vec4<f32>(var_1.d.b.x, -1000f, -350f, global1.d.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.b.x, -471f, 1860f, -561f) + vec4<f32>(-2274f, 1000f, global1.c.b.x, var_0.c.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, -2551f, var_1.d.a, var_1.d.b.x) - vec4<f32>(193f, var_0.d.b.x, 270f, var_0.d.a)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.b.x, -438f, -578f, var_1.d.a))))));
}

