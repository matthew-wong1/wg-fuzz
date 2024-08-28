struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = ~vec3<u32>(u_input.c.x & 4294967295u, 45053u, u_input.c.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2377f)));
    let var_1 = -2147483647i << (_wgslsmith_div_u32(~(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x)), u_input.c.x) % 32u);
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(388f, -1000f), _wgslsmith_f_op_f32(round(1646f))))))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = -u_input.b;
    return ~firstLeadingBit(firstLeadingBit(max(13354u, _wgslsmith_div_u32(42980u, 11232u))));
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(func_3(), u_input.c.x | 0u, ~60772u, u_input.c.x)), u_input.c), u_input.c);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -357f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -378f))), _wgslsmith_f_op_f32(ceil(1f))) + vec2<f32>(522f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -812f))))), vec4<bool>(any(vec2<bool>(true, true)) | ((arg_0.x | arg_0.x) >= _wgslsmith_dot_vec4_i32(vec4<i32>(32912i, 27241i, -2147483647i, arg_0.x), vec4<i32>(u_input.b.x, u_input.d, arg_0.x, 30881i))), all(vec3<bool>(true, true, true)), false, any(vec2<bool>(true, true))));
    let var_2 = Struct_1(var_1.a, var_1.b);
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1009f * var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, 1177f)) * var_1.a.x)), select(select(var_2.b, var_1.b, var_1.b.x), var_1.b, var_2.b));
    return _wgslsmith_clamp_u32(u_input.c.x, 1u, ~u_input.c.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = u_input.b.wwz;
    var_0 = arg_3.www;
    let var_1 = 29343u;
    var_0 = u_input.b.yxx;
    let var_2 = vec3<i32>(-1i, countOneBits(_wgslsmith_mod_i32(-20137i, ~u_input.b.x << (func_2(vec2<i32>(-8279i, -7134i)) % 32u))), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_3.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, arg_3.x, arg_1.x, -1i), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(var_0.x, 1i, var_0.x, -2147483647i)))), -(~_wgslsmith_add_i32(arg_1.x, u_input.a))));
    return vec2<u32>(_wgslsmith_mod_u32(~u_input.c.x, 1u), ~countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x, var_1), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~0u, u_input.c.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c.x & _wgslsmith_div_u32(53449u, 36738u), u_input.c.x | (u_input.c.x & u_input.c.x)), abs(30780u) | _wgslsmith_mod_u32(firstTrailingBit(0u), u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~(1u << (u_input.c.x % 32u)), ~(~(var_0.x << (3305u % 32u)))), vec2<u32>(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(70234u, _wgslsmith_dot_vec2_u32(vec2<u32>(10701u, ~1u), select(func_1(vec3<bool>(true, false, true), u_input.b.yz, Struct_1(vec2<f32>(1841f, 700f), vec4<bool>(true, false, false, true)), u_input.b), var_0.yx, any(vec3<bool>(false, true, true))))), ~vec3<i32>(abs(~68411i), -13352i, u_input.d), ~var_0.yx);
}

