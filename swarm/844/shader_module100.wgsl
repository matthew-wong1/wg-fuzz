struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false));

var<private> global1: array<Struct_1, 20>;

var<private> global2: i32;

var<private> global3: vec2<f32> = vec2<f32>(-1802f, -390f);

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: u32) -> i32 {
    global1 = array<Struct_1, 20>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 20u)];
    var var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 20u)];
    var var_2 = all(select(vec2<bool>(true, !all(global0[_wgslsmith_index_u32(arg_1, 7u)])), vec2<bool>(_wgslsmith_f_op_f32(1495f + global3.x) == global3.x, false), !vec2<bool>(!var_1.a, true)));
    let var_3 = 88865u;
    return min(u_input.c.x << (abs(min(1u, ~12866u)) % 32u), ~u_input.c.x);
}

fn func_2() -> u32 {
    let var_0 = 0u;
    var var_1 = global4[_wgslsmith_index_u32(max(countOneBits(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b & vec3<u32>(var_0, u_input.b.x, 14386u))), var_0), 9u)];
    var var_2 = -23162i & (func_3(4294967295u, _wgslsmith_div_u32(u_input.a, u_input.b.x) << (_wgslsmith_mod_u32(36745u, u_input.b.x) % 32u)) << (abs(1u) % 32u));
    var_2 = max(u_input.c.x, 0i);
    var var_3 = Struct_1(any(vec2<bool>(_wgslsmith_mod_i32(31084i, u_input.c.x) != ~u_input.c.x, all(vec4<bool>(false, false, true, var_1.a)))));
    return u_input.a;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<vec3<bool>, 7>();
    var var_0 = -267f;
    let var_1 = arg_2;
    let var_2 = Struct_1(all(select(vec4<bool>(false, arg_2.a, true, false), !(!vec4<bool>(true, var_1.a, var_1.a, arg_2.a)), !vec4<bool>(var_1.a, true, var_1.a, arg_2.a))));
    var var_3 = global4[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(_wgslsmith_div_u32(13019u, u_input.a) ^ arg_1.x, ~u_input.a | ~u_input.a) ^ ~_wgslsmith_div_u32(u_input.a, arg_1.x)), 9u)];
    return u_input.b.yy;
}

fn func_1() -> Struct_1 {
    var var_0 = reverseBits(_wgslsmith_dot_vec4_u32(abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(6210u, 64318u, u_input.b.x, 25759u), vec4<u32>(19294u, 35986u, 26748u, 1u))), vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, 13481u, 105232u), vec4<u32>(u_input.b.x, u_input.a, 0u, u_input.a)), 4294967295u, u_input.a) ^ ~(~vec4<u32>(u_input.a, 0u, 30101u, 0u))));
    var_0 = ~select(~_wgslsmith_dot_vec2_u32(vec2<u32>(24615u, 5250u), u_input.b.xz), u_input.a, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))) ^ 15340u;
    let var_1 = func_4(abs(~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.xx, vec2<i32>(0i, -2147483647i)), countOneBits(u_input.c.zy))), vec3<u32>(u_input.b.x, 1u, func_2()), Struct_1(false));
    var var_2 = ~min(_wgslsmith_dot_vec4_i32(-min(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 1i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 22454i)), max(abs(vec4<i32>(490i, 0i, u_input.c.x, u_input.c.x)), firstLeadingBit(vec4<i32>(-22139i, u_input.c.x, u_input.c.x, u_input.c.x)))), -40234i | (_wgslsmith_dot_vec2_i32(u_input.c.xx, u_input.c.xy) & -38951i));
    var_2 = ~u_input.c.x;
    return global1[_wgslsmith_index_u32(31080u, 20u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(-2234f >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x - global3.x)), false);
    global4 = array<Struct_1, 9>();
    var var_1 = -1i;
    var var_2 = func_1();
    let var_3 = ~3028u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(14524u, var_3, _wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.zy)), -firstLeadingBit(u_input.c.x), firstTrailingBit(vec3<u32>(u_input.a, var_3, ~(~0u))));
}

