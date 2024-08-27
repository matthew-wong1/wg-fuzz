struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(59816u, 82786u), vec2<u32>(38223u, 57575u), vec2<u32>(70038u, 19760u), vec2<u32>(0u, 4689u), vec2<u32>(8074u, 1u), vec2<u32>(0u, 5156u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 10425u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 3958u), vec2<u32>(12008u, 1u), vec2<u32>(73197u, 76895u), vec2<u32>(30574u, 86306u), vec2<u32>(1u, 82703u), vec2<u32>(27193u, 1u), vec2<u32>(0u, 4294967295u));

var<private> global2: array<u32, 26> = array<u32, 26>(34734u, 98845u, 1u, 4294967295u, 21913u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 6481u, 24434u, 0u, 4317u, 1u, 4294967295u, 4294967295u, 4294967295u, 11875u, 52101u, 1u, 71346u, 36582u, 34738u, 1u, 2033u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global0 = vec2<i32>(46644i, 22221i);
    let var_0 = -global0.x;
    return 1u;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec4<u32>) -> StorageBuffer {
    var var_0 = 5942i;
    let var_1 = Struct_3(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(global0.x, -9039i, arg_1.x)) & (7707i ^ global0.x), abs(global0.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2091f, 1534f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1719f, -804f)))))));
    let var_3 = Struct_1(_wgslsmith_mod_u32(arg_0, _wgslsmith_mod_u32(~arg_2.x | ~1641u, ~39322u)));
    let var_4 = _wgslsmith_mult_i32(-arg_1.x, arg_1.x) < global0.x;
    return StorageBuffer(vec3<u32>(0u, 4294967295u, ~global2[_wgslsmith_index_u32(func_1(vec2<u32>(arg_2.x, 39723u)), 26u)]), ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let x = u_input.a;
    s_output = func_2(u_input.d.x, vec4<i32>(~(~(i32(-1i) * -2147483647i)), u_input.a, global0.x, global0.x), _wgslsmith_div_vec4_u32(min(abs(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)], 26u)], u_input.d.x, 21834u, 28641u) ^ vec4<u32>(53230u, 20212u, u_input.b, 0u)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, 1u) & vec4<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 26u)], 24357u, 1u, global2[_wgslsmith_index_u32(u_input.d.x, 26u)])), vec4<u32>(~_wgslsmith_mod_u32(30432u, u_input.d.x), ~39595u << (countOneBits(global2[_wgslsmith_index_u32(u_input.b, 26u)]) % 32u), ~func_1(vec2<u32>(0u, 4294967295u)), ~(~global2[_wgslsmith_index_u32(u_input.d.x, 26u)]))));
}

