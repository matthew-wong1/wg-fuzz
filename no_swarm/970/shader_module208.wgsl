struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = any(vec3<bool>(true, true, true));
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = func_1(~u_input.a);
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.x)))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, 866f) * 125f)));
    let var_3 = Struct_3(arg_0, abs(~vec2<u32>(arg_0.a.x, 0u)), arg_1);
    var_2 = (var_1.a == true) || !func_1(~_wgslsmith_sub_u32(4294967295u, u_input.b));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), 121f, _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x)), -704f));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(true);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-792f)) - _wgslsmith_f_op_f32(f32(-1f) * -1394f)))), -392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) + -235f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -504f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(true)), Struct_1(false), u_input.c.x, vec4<f32>(-1438f, 195f, -125f, -1426f))), vec4<f32>(-886f, -525f, 983f, 1270f)))))));
    var var_2 = ~firstLeadingBit((~vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) ^ abs(vec4<i32>(1i, -1i, 2147483647i, u_input.c.x))) | abs(countOneBits(vec4<i32>(1i, -66363i, u_input.c.x, u_input.c.x))));
    var_0 = Struct_1(true);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_1.zwz, var_1.xyz)), _wgslsmith_f_op_vec3_f32(-var_1.zxx));
    return i32(-1i) * -6178i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(0i);
    var var_1 = Struct_1(all(vec4<bool>(true, !any(vec3<bool>(false, false, false)), true, func_1(u_input.b) || false)));
    var_0 = i32(-1i) * -2147483647i;
    var var_2 = Struct_1(true);
    let var_3 = all(!vec3<bool>((u_input.c.x > -59720i) | var_1.a, max(u_input.a, u_input.b) > _wgslsmith_sub_u32(u_input.a, u_input.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-58262i, _wgslsmith_dot_vec4_i32(vec4<i32>(11475i, u_input.c.x, -1i, u_input.c.x) << (vec4<u32>(u_input.b, 61720u, 62434u, u_input.b) % vec4<u32>(32u)), -vec4<i32>(u_input.c.x, -51321i, u_input.c.x, u_input.c.x)), ~u_input.c.x, func_2()), vec4<i32>(u_input.c.x, 10365i, u_input.c.x, -24544i) >> (reverseBits(~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1422u)) % vec4<u32>(32u))));
}

