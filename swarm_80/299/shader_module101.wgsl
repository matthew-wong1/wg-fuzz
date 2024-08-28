struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-3314i, 0i);

var<private> global1: array<i32, 19> = array<i32, 19>(59518i, -10755i, 2147483647i, 13113i, -1i, 26837i, -32724i, 18375i, -7159i, 0i, 2147483647i, 37876i, 0i, 2147483647i, 0i, -1i, 1i, -1i, -63347i);

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 13>;

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, -1i, 72548u, true, -108f), Struct_1(false, 1i, 65490u, true, -768f), Struct_1(true, 2147483647i, 14010u, true, 1115f), Struct_1(true, 1i, 0u, true, 423f), Struct_1(true, 2147483647i, 4294967295u, false, 1388f), Struct_1(true, 0i, 4294967295u, true, 204f), Struct_1(true, i32(-2147483648), 0u, true, 342f), Struct_1(true, 4187i, 1u, true, -438f), Struct_1(true, 63123i, 948u, false, -144f), Struct_1(true, i32(-2147483648), 97116u, false, -705f), Struct_1(false, 7528i, 1u, true, -633f), Struct_1(false, 1i, 4294967295u, false, 1103f), Struct_1(true, 17441i, 2731u, true, -188f), Struct_1(false, -34243i, 4294967295u, false, -683f), Struct_1(false, 41254i, 19454u, false, 1339f), Struct_1(false, -42615i, 32324u, true, 1021f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.b.yzx;
    let var_1 = 1u;
    let var_2 = global3[_wgslsmith_index_u32(6967u, 13u)];
    var var_3 = var_2.e.yy;
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2.d.c, _wgslsmith_div_u32(7340u, 1u << (firstLeadingBit(var_0.x) % 32u))) & _wgslsmith_dot_vec2_u32(abs(var_0.zz), min(var_0.zy, var_0.xz)), 13u)];
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    global3 = array<Struct_2, 13>();
    let var_0 = arg_0.c;
    var var_1 = true;
    global0 = vec2<i32>(34683i, -global2.c.b);
    global3 = array<Struct_2, 13>();
    return var_0.c;
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(var_0.d.e, -247f);
    var var_2 = _wgslsmith_div_i32(0i, -_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, global0.x, -4308i), u_input.a.xxz) << (min(var_0.c.c, 1u) % 32u));
    let var_3 = true;
    var var_4 = true;
    return StorageBuffer(-231f, var_0.c.c, -firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.d, u_input.d) >> (u_input.b % vec4<u32>(32u))), global0.x << (func_3(Struct_2(firstTrailingBit(47503i), u_input.c < u_input.c, var_0.c, Struct_1(true, -1i, u_input.c, var_0.e.x, var_0.c.e), global2.e), 756f, 651f, vec4<bool>(true, any(vec4<bool>(var_3, var_3, true, true)), global2.c.d, any(vec4<bool>(false, global2.e.x, false, false)))) % 32u), vec3<f32>(_wgslsmith_div_f32(402f, _wgslsmith_f_op_f32(global2.c.e + -1800f)), _wgslsmith_f_op_f32(-global2.c.e), global2.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<u32>(firstTrailingBit(1u), 1u, _wgslsmith_sub_u32(abs(0u), global2.c.c) << (global2.d.c % 32u));
    let x = u_input.a;
    s_output = func_1();
}

