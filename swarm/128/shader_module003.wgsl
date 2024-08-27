struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.a) * var_0.a));
    var var_2 = arg_2;
    let var_3 = vec4<i32>(u_input.b & u_input.a, ~_wgslsmith_div_i32(2147483647i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.b, 64251i) ^ ~(-13279i), u_input.d.x, u_input.b, u_input.b), vec4<i32>(select(~u_input.d.x, firstLeadingBit(u_input.d.x), 0u > u_input.c), u_input.d.x & u_input.b, u_input.a, u_input.b)), _wgslsmith_add_i32(firstTrailingBit(~(-18437i)), -max(u_input.a >> (u_input.c % 32u), _wgslsmith_add_i32(-18547i, -1i))));
    var var_4 = Struct_2(u_input.e, _wgslsmith_f_op_f32(-arg_0.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.a.x))))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(514f, 371f) * 809f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-388f, 132f)))), _wgslsmith_f_op_f32(f32(-1f) * -1011f)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)), 252f, 1324f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-659f, var_0.a.x, -839f, 1767f)))), vec4<f32>(_wgslsmith_f_op_f32(162f - var_0.a.x), var_0.a.x, _wgslsmith_f_op_f32(min(var_0.a.x, 1000f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x)), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x)), vec4<f32>(var_0.a.x, -705f, 1000f, -1730f))))))) * vec4<f32>(-424f, 485f, var_0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x)))))));
    var var_2 = Struct_2(u_input.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1319f)), -506f));
    var_2 = Struct_2(_wgslsmith_add_u32(~u_input.e, u_input.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f + _wgslsmith_f_op_f32(997f * -475f)))));
    var var_3 = Struct_2(var_2.a, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f))))));
    return ~4387u;
}

fn func_1() -> f32 {
    var var_0 = vec2<u32>(0u, func_2());
    return 400f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -38551i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1546f, 488f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, -1425f))) * vec2<f32>(-375f, 1f)))));
    let var_2 = -1536f;
    let var_3 = Struct_2(25553u << (~_wgslsmith_sub_u32(_wgslsmith_mult_u32(3906u, u_input.e), ~u_input.e) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * var_1.a.x));
    var_0 = min(-20692i, ~19650i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, var_3.a), vec2<u32>(var_3.a, ~1u)) % 32u));
    let var_4 = u_input.d.x;
    var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(18827i, -33883i, -1i, var_4), vec4<i32>(-15737i, var_4, 2147483647i, var_4)), ~vec4<i32>(-40562i, -2147483647i, 60i, var_4)) << (firstLeadingBit(vec4<u32>(12147u, var_3.a, 38263u, var_3.a) ^ vec4<u32>(1u, 72037u, u_input.e, var_3.a)) % vec4<u32>(32u)), ~firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-9880i, 57163i, u_input.a, var_4), vec4<i32>(u_input.b, -7442i, u_input.a, u_input.d.x)))), firstTrailingBit(var_4));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_4, u_input.a, abs(var_4) ^ countOneBits(5085i), -5563i), _wgslsmith_sub_i32(-2147483647i, -firstTrailingBit(firstLeadingBit(-1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -837f)), var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1260f), -217f, var_1.a.x) * vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(round(-414f)), var_1.a.x, -1191f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, _wgslsmith_f_op_f32(abs(-1801f)), _wgslsmith_f_op_f32(-var_3.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -1270f, -1068f))), vec3<f32>(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(round(-838f))), _wgslsmith_f_op_f32(-var_2)), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)))))));
}

