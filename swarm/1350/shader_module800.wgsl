struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> f32 {
    global0 = ~(~_wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(1u, u_input.c, u_input.a.x)) << (_wgslsmith_div_u32(1u, reverseBits(~u_input.a.x)) % 32u));
    global0 = u_input.a.x;
    global0 = max(~_wgslsmith_add_u32(u_input.a.x, 4294967295u), 4294967295u);
    var var_0 = -1i;
    global0 = 1u;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -747f), _wgslsmith_f_op_f32(min(-104f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) - _wgslsmith_f_op_f32(-497f + -625f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(393f * 185f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(firstTrailingBit(select(vec2<i32>(30934i, -41137i), vec2<i32>(u_input.b, -2147483647i), vec2<bool>(false, false))) & vec2<i32>(_wgslsmith_add_i32(u_input.d, u_input.b), u_input.d << (68145u % 32u))) | reverseBits((vec2<i32>(u_input.d, -2147483647i) | vec2<i32>(u_input.d, -64256i)) ^ ~(-vec2<i32>(22617i, u_input.d)));
    global0 = u_input.c;
    let var_1 = ~vec2<u32>(~u_input.c, 1969u);
    global0 = ~(~(~u_input.c ^ 24326u));
    global0 = 1u;
    global0 = var_1.x;
    global0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(vec2<u32>(u_input.a.x, 12546u ^ u_input.a.x)), u_input.a.yz, true), 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-160f - _wgslsmith_f_op_f32(-162f + -497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1074f, 383f))))), var_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) + -1053f)), _wgslsmith_f_op_f32(f32(-1f) * -982f))));
}

