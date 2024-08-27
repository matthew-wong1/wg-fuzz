struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: array<vec3<i32>, 22>;

var<private> global2: Struct_4 = Struct_4(48815i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = Struct_4(-775i << (_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) % 32u));
    let var_2 = vec2<bool>(any(!arg_0), all(!arg_0));
    global1 = array<vec3<i32>, 22>();
    var var_3 = 4294967295u;
    return var_2;
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = !(!select(vec2<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, true)));
    var var_1 = Struct_4(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-2147483647i | u_input.a, global2.a), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global2.a, u_input.a)), ~vec2<i32>(global2.a, -1i), vec2<i32>(global2.a, global2.a))), vec2<i32>(~(~(-37720i)), ~global2.a)));
    let var_2 = _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x));
    let var_3 = -8859i;
    let var_4 = Struct_2(Struct_1(~(~(~vec4<u32>(100810u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)], 1u))), all(!func_3(vec2<bool>(var_0.x, true), 261f, 4294967295u, Struct_1(vec4<u32>(44303u, 41093u, global0[_wgslsmith_index_u32(124909u, 15u)], 4294967295u), var_0.x, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], 0u, 13600u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)])))), vec4<u32>(global0[_wgslsmith_index_u32(~7313u, 15u)], ~(~26824u), ~global0[_wgslsmith_index_u32(u_input.b.x, 15u)] | countOneBits(global0[_wgslsmith_index_u32(18013u, 15u)]), global0[_wgslsmith_index_u32(~u_input.b.x | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 23086u, 0u, 34323u), vec4<u32>(29062u, 1u, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), 15u)], 15u)])));
    return Struct_4(global2.a);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> f32 {
    let var_0 = ~reverseBits(_wgslsmith_div_vec3_u32(arg_0.a.wyx, arg_0.a.wxw));
    global0 = array<u32, 15>();
    let var_1 = func_2(arg_2.a);
    var var_2 = ~reverseBits(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x & arg_0.a.x), 15u)]), 22u)]);
    global1 = array<vec3<i32>, 22>();
    return 995f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 15u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 15u)], u_input.b.x), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1796u), false, select(~vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 85999u), ~(~vec4<u32>(81169u, 55937u, 0u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), true)));
    let var_1 = var_0.a.c | (abs(vec4<u32>(~4294967295u, 1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(30827u, 67750u)), reverseBits(var_0.a.a.x))) ^ countOneBits(_wgslsmith_sub_vec4_u32(var_0.a.c, vec4<u32>(var_0.a.c.x, u_input.b.x, u_input.b.x, 47677u))));
    global0 = array<u32, 15>();
    global1 = array<vec3<i32>, 22>();
    var var_2 = var_0.a.b;
    var_2 = (u_input.a >> (_wgslsmith_mod_u32(u_input.b.x, abs(var_0.a.c.x)) % 32u)) >= 0i;
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(var_1, var_0.a.b, vec4<u32>(var_0.a.c.x, var_0.a.a.x, global0[_wgslsmith_index_u32(87806u, 15u)], var_0.a.c.x)), false, Struct_3(vec4<f32>(-931f, -535f, 2961f, -356f), -18168i, vec3<bool>(var_0.a.b, false, false)))) + -707f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -450f)))));
    let x = u_input.a;
    s_output = StorageBuffer(961f, -vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global2.a, u_input.a, 3743i), vec4<i32>(1i, global2.a, -41272i, -7261i)), -12479i), firstTrailingBit(1i) << (1u % 32u), -vec2<i32>(max(u_input.a, u_input.a) | -13366i, -59408i), -1000f);
}

