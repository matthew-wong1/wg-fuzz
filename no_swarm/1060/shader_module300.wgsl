struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(449f, _wgslsmith_f_op_f32(-602f * _wgslsmith_div_f32(-512f, -867f))))) - -634f);
}

fn func_2() -> i32 {
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-392f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_1 = true | any(!(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)));
    var_1 = any(!vec3<bool>(_wgslsmith_f_op_f32(-var_0) >= -484f, true, true));
    var var_2 = select(~vec2<u32>(4294967295u, ~(~16393u)), max(abs(u_input.a.yy), vec2<u32>(u_input.d.x & ~u_input.a.x, ~1u)), vec2<bool>(true, select(true, all(vec3<bool>(true, true, true)), true) || true));
    var var_3 = Struct_1(firstLeadingBit(reverseBits(u_input.b)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(37826u, u_input.d.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 4294967295u, u_input.d.x, u_input.a.x), u_input.d))));
    var var_4 = Struct_1(vec4<i32>(_wgslsmith_sub_i32(abs(1i), firstLeadingBit(u_input.b.x)), _wgslsmith_div_i32(u_input.b.x ^ -u_input.c.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, var_3.a.x, u_input.b.x)), min(vec3<i32>(1i, -2147483647i, -2532i), u_input.b.xzw))), -func_2(), var_3.a.x), ~var_2.x >> (firstTrailingBit(~0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)));
}

