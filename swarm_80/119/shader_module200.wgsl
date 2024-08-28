struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> bool {
    let var_0 = vec2<bool>((u_input.b < 38008u) || ((~1u | u_input.c) > ~(~u_input.e)), !any(vec2<bool>(true, true)));
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_i32(-arg_1.a, arg_1.a, (firstLeadingBit(vec3<i32>(arg_2, u_input.d.x, -46380i)) | arg_1.a) >> (reverseBits(vec3<u32>(u_input.b, u_input.e, u_input.c)) % vec3<u32>(32u))), arg_1.b, -672f);
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.a.zx, arg_1.a.yx), 0i);
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> vec3<bool> {
    var var_0 = Struct_3(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), true), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1013f * 1086f))) <= 1492f));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(var_0.a);
    let var_1 = arg_0.x;
    let var_2 = any(select(vec2<bool>(var_0.a.x, var_0.a.x), !var_0.a.zz, var_0.a.x)) && true;
    return vec3<bool>(select(select(var_0.a.x, func_3(_wgslsmith_clamp_i32(var_1, arg_0.x, var_1), Struct_2(arg_0.wxw, Struct_1(-2177f), 431f), reverseBits(1i), _wgslsmith_f_op_f32(step(-907f, -1386f))), !(false || var_2)), true, true), func_3(_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1838i), u_input.d)), arg_0.x), Struct_2(arg_0.zxy, Struct_1(1262f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1144f))), -234i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1432f))), false);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(select(select(func_2(vec4<i32>(0i, u_input.d.x, u_input.d.x, -5245i) ^ vec4<i32>(-2147483647i, u_input.d.x, 17388i, -1i), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 65240u), vec2<u32>(u_input.e, u_input.e))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), true, true), select(func_2(~vec4<i32>(u_input.d.x, -2147483647i, u_input.d.x, 0i), u_input.c), !func_2(vec4<i32>(2147483647i, u_input.d.x, 8113i, u_input.d.x), u_input.c), false)));
    let var_1 = ~u_input.a.x;
    let var_2 = ~_wgslsmith_add_vec3_u32(u_input.a.xzw, vec3<u32>(u_input.e, 13160u, ~var_1));
    let var_3 = abs(~vec3<i32>(u_input.d.x, u_input.d.x, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -3117i, 0i, 18572i), vec4<i32>(u_input.d.x, -29274i, u_input.d.x, u_input.d.x)))));
    let var_4 = vec3<f32>(-162f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f * -452f))));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2529f), var_4.x), u_input.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_4.x, -102f, 442f))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_4.x), _wgslsmith_div_f32(var_4.x, var_4.x), var_4.x), vec3<f32>(403f, var_4.x, 1740f), true))), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

