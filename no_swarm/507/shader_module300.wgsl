struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-12492i, -4094i, 1i, i32(-2147483648), 2147483647i, i32(-2147483648), -55910i, 37528i, 58581i, -26050i);

var<private> global1: array<i32, 31>;

var<private> global2: array<Struct_1, 11>;

var<private> global3: i32 = -6236i;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.b, _wgslsmith_mult_u32(0u, u_input.b)), abs(~vec2<u32>(u_input.a, u_input.b))), _wgslsmith_div_vec2_u32(~max(vec2<u32>(0u, 31908u), vec2<u32>(u_input.a, 45234u)), ~vec2<u32>(0u, 97249u) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.a, 10795u)))) & reverseBits(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.d), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 5494u), vec2<u32>(0u, 1u))));
    let var_1 = ~u_input.c.zy;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_i32(vec3<i32>(~global1[_wgslsmith_index_u32(4294967295u, 31u)], u_input.c.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.d, 31u)])), vec3<i32>(-20598i, countOneBits(var_1.x), 0i >> (u_input.d % 32u))), 1f, _wgslsmith_f_op_f32(select(-485f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(593f, _wgslsmith_div_f32(1774f, 771f))), -653f)), firstLeadingBit(~global1[_wgslsmith_index_u32(var_0.x, 31u)]) == -2147483647i)), -1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-346f)) - _wgslsmith_div_f32(-674f, -2076f))), 765f, 0u == (_wgslsmith_clamp_u32(var_0.x, var_0.x, 0u) >> (abs(u_input.d) % 32u)))));
}

