struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-525f, -1551f));

var<private> global2: array<f32, 24>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(arg_0.a.a);
    let var_2 = arg_0;
    var var_3 = var_2.c;
    var var_4 = var_2.d;
    return arg_0.d.x;
}

fn func_1() -> StorageBuffer {
    global0 = u_input.d;
    return StorageBuffer(~vec4<u32>(~u_input.b, firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.a.x), vec2<u32>(u_input.c.x, 65431u)), _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.a.x))), u_input.a.x), ~(vec4<u32>(~u_input.c.x, func_2(Struct_2(Struct_1(global1.a), vec3<i32>(u_input.d, -1i, u_input.d), Struct_1(vec2<f32>(659f, 108f)), vec4<u32>(u_input.c.x, u_input.b, 38694u, u_input.b), Struct_1(global1.a)), vec4<i32>(u_input.d, 2147483647i, -3342i, u_input.d), false), func_2(Struct_2(Struct_1(vec2<f32>(892f, global2[_wgslsmith_index_u32(u_input.a.x, 24u)])), vec3<i32>(36405i, 1i, u_input.d), Struct_1(global1.a), vec4<u32>(0u, 25770u, 4294967295u, u_input.c.x), Struct_1(vec2<f32>(-785f, 249f))), vec4<i32>(-29057i, 0i, u_input.d, u_input.d), true), u_input.b) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.b), ~vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.b)) % vec4<u32>(32u))), ~43347u, _wgslsmith_clamp_i32(u_input.d ^ _wgslsmith_mod_i32(max(u_input.d, 28012i), -u_input.d), ~(-1i), u_input.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -1015f)), global1.a)));
    var var_2 = ~vec4<u32>((u_input.a.x << (u_input.b % 32u)) >> (~u_input.c.x % 32u), _wgslsmith_sub_u32(u_input.a.x >> (1u % 32u), _wgslsmith_sub_u32(4294967295u, 77169u)), ~u_input.a.x, 1u) ^ ~(~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.c.x, u_input.b), vec4<u32>(u_input.c.x, 1u, 1u, 0u)) << (vec4<u32>(6748u, 100529u, u_input.b, u_input.a.x) % vec4<u32>(32u))));
    var var_3 = vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.d, -64544i, -1i), ~(-vec3<i32>(1i, u_input.d, 1i))), -13982i);
    let var_4 = var_2.wxw;
    let x = u_input.a;
    s_output = func_1();
}

