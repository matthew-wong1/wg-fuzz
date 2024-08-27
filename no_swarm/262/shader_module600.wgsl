struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = abs(u_input.c) << (~_wgslsmith_add_u32(u_input.a, u_input.a) % 32u);
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0, 29u)] + arg_2) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(44701u), 29u)])), _wgslsmith_f_op_f32(step(arg_2, arg_2)));
    let var_2 = -vec4<i32>(-21979i, 30699i, ~u_input.b.x, select(_wgslsmith_mod_i32(~(-2147483647i), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(50856i, 25913i))), ~1i, all(!vec3<bool>(false, arg_1, true))));
    return _wgslsmith_mod_u32(~firstLeadingBit(var_0 & 0u) ^ firstLeadingBit(max(57190u, 1u) ^ _wgslsmith_mod_u32(1u, var_0)), _wgslsmith_add_u32(74926u, var_0 << (1u % 32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec4<u32>(func_3(Struct_1(true), true, global0[_wgslsmith_index_u32(~countOneBits(u_input.a), 29u)]), 1u, ~u_input.d.x, 1u);
    let var_1 = 0u;
    let var_2 = Struct_1(abs(0u) < (_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(u_input.d.x, 10601u, var_0.x)) | 73489u));
    let var_3 = 383f;
    return var_2;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(!(u_input.a <= u_input.d.x));
    var var_1 = func_2();
    var var_2 = _wgslsmith_sub_i32(-2147483647i, ((u_input.b.x >> (u_input.d.x % 32u)) << (min(0u, u_input.c) % 32u)) << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) <= reverseBits(1i);
    var var_3 = func_2();
    var_1 = Struct_1(false);
    return StorageBuffer(~(-countOneBits(vec4<i32>(-4105i, u_input.b.x, u_input.b.x, -1i))) >> (abs(vec4<u32>(~26131u, 4294967295u, max(55840u, 38590u), ~u_input.a)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 29>();
    let x = u_input.a;
    s_output = func_1();
}

