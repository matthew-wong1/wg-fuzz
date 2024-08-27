struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

var<private> global1: u32 = 0u;

var<private> global2: array<bool, 18> = array<bool, 18>(true, true, false, false, true, false, true, false, true, false, true, true, true, true, false, false, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> i32 {
    global0 = array<vec2<f32>, 31>();
    var var_0 = vec4<i32>(u_input.b, countOneBits(u_input.b), -2147483647i, firstTrailingBit(abs(-(~arg_1.a.x))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, ~(_wgslsmith_mod_u32(arg_1.b.a, _wgslsmith_add_u32(4294967295u, arg_1.b.a)) | _wgslsmith_add_u32(~32866u, arg_1.c.a))), 31u)];
    global2 = array<bool, 18>();
    global0 = array<vec2<f32>, 31>();
    return -34328i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(vec3<i32>(-max(_wgslsmith_div_i32(2147483647i, u_input.a), u_input.a), abs(-(~(-104261i))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_3(true, Struct_2(vec3<i32>(u_input.b, u_input.a, u_input.a), Struct_1(arg_0, 638f), Struct_1(0u, -1447f))), max(0i, -31840i)), reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), vec2<i32>(2147483647i, -44944i))))), Struct_1(0u, _wgslsmith_div_f32(-1728f, 1f)), Struct_1((abs(arg_0) >> ((arg_0 ^ u_input.c.x) % 32u)) | 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f * 557f) + 135f))));
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.c.b));
    var var_2 = Struct_1(76181u, -252f);
    let var_3 = Struct_2(vec3<i32>(-(~1i), 2147483647i, (u_input.b ^ ~u_input.a) << (abs(u_input.c.x & 55879u) % 32u)), var_0.b, var_0.b);
    var var_4 = 0i;
    return Struct_1(_wgslsmith_dot_vec3_u32(u_input.c >> (~countOneBits(u_input.c) % vec3<u32>(32u)), u_input.c), 384f);
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = array<vec2<f32>, 31>();
    global1 = u_input.c.x;
    let var_0 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1245f * _wgslsmith_f_op_f32(f32(-1f) * -778f))));
    var var_1 = func_2(~u_input.c.x);
    let var_2 = var_0;
    return Struct_2(vec3<i32>(arg_0, -u_input.b, u_input.b), func_2(1u), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c.x;
    let var_0 = func_1(u_input.b);
    var var_1 = Struct_3(min(vec4<i32>(i32(-1i) * -48650i, (u_input.a << (1015u % 32u)) | var_0.a.x, u_input.a, var_0.a.x), vec4<i32>(select(select(46196i, u_input.a, global2[_wgslsmith_index_u32(u_input.c.x, 18u)]), ~u_input.b, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], global2[_wgslsmith_index_u32(var_0.b.a, 18u)], false))), _wgslsmith_mod_i32(~var_0.a.x, u_input.a), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b, u_input.a), countOneBits(var_0.a.x)), _wgslsmith_add_i32(-2147483647i, u_input.a) | abs(0i))), func_1(0i).b);
    global2 = array<bool, 18>();
    let var_2 = var_1.a.x;
    global2 = array<bool, 18>();
    global2 = array<bool, 18>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.b + var_1.b.b) - _wgslsmith_f_op_f32(var_0.c.b * -1538f)), 128f, _wgslsmith_f_op_f32(f32(-1f) * -882f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~var_0.b.a, 4294967295u, _wgslsmith_mult_u32(var_1.b.a, 1u)) | _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(4294967295u, 0u, u_input.c.x))), func_2(4294967295u).a & abs(4294967295u), vec2<u32>(0u >> (_wgslsmith_div_u32(31734u, ~60923u) % 32u), (u_input.c.x << (4294967295u % 32u)) ^ 12923u), -1364f);
}

