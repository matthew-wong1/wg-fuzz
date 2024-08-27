struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(23997u, 1u, 4294967295u, 1u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(-1i, u_input.b.x) ^ _wgslsmith_add_i32(u_input.b.x, u_input.a.x), _wgslsmith_div_i32(u_input.b.x, u_input.a.x), -32060i), vec4<i32>(1i, -min(u_input.a.x, u_input.b.x), -19011i, u_input.b.x)), ~1i);
    let var_1 = Struct_3(vec4<u32>((~global0[_wgslsmith_index_u32(23395u, 4u)] >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(868u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)]) % 32u)) >> (~(~global0[_wgslsmith_index_u32(45669u, 4u)]) % 32u), countOneBits(~global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(18844u, 4u)], 3850u), 4u)], global0[_wgslsmith_index_u32(~4294967295u, 4u)]), 4u)] << (firstTrailingBit(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 4u)], 4u)], global0[_wgslsmith_index_u32(26558u, 4u)], true)) % 32u), 4294967295u), vec2<i32>(13659i, u_input.b.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a ^ ((firstLeadingBit(vec3<i32>(var_1.b.x, u_input.a.x, var_1.b.x)) | u_input.a) >> (var_1.a.zxz % vec3<u32>(32u))), _wgslsmith_mult_u32(var_1.a.x, (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(3193u, 4u)], 1u) ^ var_1.a.x) >> ((abs(global0[_wgslsmith_index_u32(53361u, 4u)]) ^ ~4294967295u) % 32u)), var_1.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f - _wgslsmith_div_f32(-895f, 638f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(598f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-260f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f + 491f))))));
}

