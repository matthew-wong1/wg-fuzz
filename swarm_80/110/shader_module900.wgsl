struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -9392i;

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(9804u, 4294967295u, 26614u, 1u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(21139u, 4294967295u, 4294967295u, 52158u), vec4<u32>(6986u, 0u, 4294967295u, 32341u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<u32>(21909u, 4294967295u, 20127u, 4294967295u), vec4<u32>(3802u, 1970u, 14435u, 13686u), vec4<u32>(1035u, 4294967295u, 6604u, 4294967295u));

var<private> global3: array<f32, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> i32 {
    global2 = array<vec4<u32>, 8>();
    let var_0 = true;
    var var_1 = _wgslsmith_div_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 8u)], ~vec4<u32>(23148u, _wgslsmith_div_u32(1u, 84327u), min(u_input.a, u_input.a & u_input.a), 1u));
    global3 = array<f32, 7>();
    let var_2 = vec2<bool>(!var_0, var_0);
    return ~(-4581i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(7484u, 7u)]), u_input.b.x);
    var var_1 = vec4<bool>(true, true, true, true);
    global1 = ~u_input.a;
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~u_input.b.x, u_input.b.x << (1u % 32u), var_0.b), 0i, u_input.b.x), ~(~(u_input.b.x & 0i))), -20971i, ~reverseBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), u_input.b.zx), func_1())), max(abs(-6131i), u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(111910u);
}

