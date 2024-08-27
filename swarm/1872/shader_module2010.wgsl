struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.b, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.b, u_input.b, 4294967295u)))), 0u, abs(u_input.b), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b), 1u) ^ firstLeadingBit(u_input.b)), select(vec4<u32>(5922u, _wgslsmith_mod_u32(~35114u, u_input.b), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, u_input.b), ~11359u), ~u_input.b), countOneBits(min(vec4<u32>(4294967295u, u_input.b, u_input.b, 40933u) & vec4<u32>(54176u, 0u, 10370u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 48999u, 34513u, 4294967295u)))), ~(~1i) > _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 12437i, -32993i, 0i), abs(vec4<i32>(u_input.a, u_input.a, 3828i, -48847i)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1585f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(399f, 807f))))))));
    var var_2 = ~(~(~u_input.a));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(325f, _wgslsmith_f_op_f32(f32(-1f) * -853f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(~abs(_wgslsmith_clamp_vec2_u32(var_0.zy, var_0.wy, vec2<u32>(u_input.b, 44699u))), var_0.zx), abs(firstLeadingBit(~u_input.a)), -714f, 387f, ~4294967295u);
}

