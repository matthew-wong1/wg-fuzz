struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<i32>, 25>;

var<private> global4: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(4294967295u, 31466u), vec2<u32>(10413u, 5324u), vec2<u32>(0u, 1u), vec2<u32>(0u, 15203u), vec2<u32>(4294967295u, 0u), vec2<u32>(1446u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    global0 = array<Struct_3, 24>();
    global0 = array<Struct_3, 24>();
    global1 = array<vec3<bool>, 8>();
    var var_0 = abs(reverseBits(u_input.a.xz));
    var var_1 = abs(global2.x & 74415i);
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    global1 = array<vec3<bool>, 8>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(128f, _wgslsmith_f_op_f32(func_3(vec2<f32>(-563f, 817f))), any(vec4<bool>(true, false, false, false))))))));
    var var_1 = global0[_wgslsmith_index_u32(~43811u, 24u)];
    global3 = array<vec4<i32>, 25>();
    var var_2 = _wgslsmith_mult_vec2_u32(min(~vec2<u32>(0u << (u_input.c.x % 32u), _wgslsmith_add_u32(var_1.b.a.a, var_1.b.c.a)), countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 0u), u_input.d.xw))), u_input.a.xz ^ vec2<u32>(reverseBits(abs(u_input.d.x)), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(117421u, var_1.b.c.a, 124677u, 4294967295u)), min(u_input.d, vec4<u32>(var_1.b.b.a, var_1.b.c.a, u_input.d.x, var_1.b.c.a)))));
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.b.a.a, 49826u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.a.a, 0u, 122906u), u_input.a.yxx)), _wgslsmith_f_op_f32(f32(-1f) * -1668f)), var_1.b.c, var_1.b.b, var_1.b.d);
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_3, 24>();
    var var_0 = func_2();
    global1 = array<vec3<bool>, 8>();
    return Struct_3(vec4<bool>(!var_0.d, var_0.d, var_0.d, true), Struct_2(func_2().a, var_0.a, func_2().b, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = func_1();
    global4 = array<vec2<u32>, 6>();
    let var_2 = Struct_1(40266u, 861f);
    global4 = array<vec2<u32>, 6>();
    let var_3 = vec2<i32>(-(u_input.e.x ^ u_input.e.x), ~10659i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(var_1.b.c.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.wwy, vec3<u32>(var_1.b.b.a, 0u, var_2.a)), firstTrailingBit(17909u), _wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(0u, var_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1447f, -1891f, var_1.b.b.b, 216f), vec4<f32>(var_2.b, 1451f, var_2.b, var_1.b.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.a.b, var_1.b.c.b, var_1.b.c.b, 781f), vec4<f32>(-1417f, -1435f, var_1.b.b.b, -1000f))), true))));
}

