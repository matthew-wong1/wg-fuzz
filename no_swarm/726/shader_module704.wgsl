struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_3, 15>;

var<private> global2: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(-39415i, -44156i), Struct_1(0i, -1i), Struct_1(0i, -33718i), Struct_1(34916i, -1i), Struct_1(21659i, 1i), Struct_1(-37283i, -1i), Struct_1(20384i, -37614i), Struct_1(-1203i, -71208i), Struct_1(-1i, 2147483647i), Struct_1(45383i, 2147483647i), Struct_1(i32(-2147483648), -12614i), Struct_1(-1i, -8842i), Struct_1(1i, 12822i), Struct_1(-38087i, 57862i), Struct_1(2348i, -31461i), Struct_1(i32(-2147483648), 49488i), Struct_1(2147483647i, i32(-2147483648)), Struct_1(-49093i, 21124i), Struct_1(0i, 1i), Struct_1(21737i, 0i), Struct_1(0i, 5581i), Struct_1(2147483647i, i32(-2147483648)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 22>();
    var var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 15919u), abs(vec2<u32>(4294967295u, 31937u))), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(52058u, 1u)], global0[_wgslsmith_index_u32(71021u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 1u)], 1u)]), 1u)], 48220u, 28681u), ~(~countOneBits(vec4<u32>(83196u, 0u, 0u, u_input.c)))), 1u, 49043u);
    var var_1 = ~vec3<u32>(1u, min(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(20843u, 1u)], 66801u) >> (vec3<u32>(u_input.a, var_0.x, 10797u) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, u_input.c, 17421u))) << (vec3<u32>(abs(~58604u) ^ abs(firstTrailingBit(u_input.c)), ~(~1u), _wgslsmith_sub_u32(~u_input.c & u_input.a, u_input.a)) % vec3<u32>(32u));
    var var_2 = -1i;
    var_1 = ~vec3<u32>(min(u_input.c, global0[_wgslsmith_index_u32(~0u, 1u)]), var_1.x, 0u);
    return 1000f;
}

fn func_2() -> f32 {
    global1 = array<Struct_3, 15>();
    let var_0 = -951f;
    let var_1 = countOneBits(~(~(~global0[_wgslsmith_index_u32(~u_input.c, 1u)])));
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(~global0[_wgslsmith_index_u32(27702u, 1u)]), 15u)];
    global1 = array<Struct_3, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2334f, _wgslsmith_f_op_f32(func_3()))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<u32> {
    global2 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global2 = array<Struct_1, 22>();
    let var_1 = ~1u & (_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, ~global0[_wgslsmith_index_u32(22595u, 1u)]), firstLeadingBit(max(vec2<u32>(8527u, 1u), vec2<u32>(arg_0.x, u_input.c)))) | arg_0.x);
    return abs(firstLeadingBit(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 1>();
    let var_0 = _wgslsmith_mod_u32(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(func_1(vec2<u32>(5924u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 1u)], 1u)]), vec4<bool>(false, true, true, false), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 22u)]), vec2<u32>(u_input.a, 1u) << (vec2<u32>(15309u, 17533u) % vec2<u32>(32u))), 1u)], 1u, reverseBits(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(24185u, 1u)], u_input.c)) >= abs(~u_input.c)), u_input.c);
    var var_1 = countOneBits(-1i);
    global2 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(u_input.a, ~_wgslsmith_add_u32(var_0 | var_0, 12178u & global0[_wgslsmith_index_u32(var_0, 1u)]), ~62847u, max(0u, _wgslsmith_sub_u32(u_input.c >> (0u % 32u), var_0 ^ u_input.a))), 1i);
}

