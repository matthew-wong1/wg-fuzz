struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool) -> Struct_4 {
    return Struct_4(firstTrailingBit(vec2<i32>(select(0i, -35242i, true), reverseBits(-48330i))));
}

fn func_3() -> i32 {
    var var_0 = 1153f;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(272f, -1452f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1608f)), -1442f)))) + 149f)));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1316f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(497f, 1413f)))), -304f))));
    var var_1 = Struct_2(!select(false, true, true));
    return -41665i;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_4(_wgslsmith_div_vec2_i32(~vec2<i32>(firstLeadingBit(1i), 1i), vec2<i32>(2147483647i, func_3()) << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, u_input.a.x) | u_input.a.yy) % vec2<u32>(32u))));
    let var_1 = true;
    var_0 = func_1(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.xy << (u_input.a.zx % vec2<u32>(32u))), arg_0)), ~4073u, var_1);
    let var_2 = Struct_1(min(-1i, _wgslsmith_div_i32(-1i, ~var_0.a.x)), vec3<f32>(-2552f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1047f * _wgslsmith_f_op_f32(select(952f, 1210f, true))))), _wgslsmith_f_op_f32(select(-1800f, _wgslsmith_f_op_f32(f32(-1f) * -1848f), var_1 && true))), vec3<bool>(!var_1, !all(vec2<bool>(var_1, true)), false));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.b.x, -1464f, 144f, var_2.b.x), vec4<f32>(2252f, var_2.b.x, -1514f, 158f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2275f, -2230f, var_2.b.x, 1592f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x)) - _wgslsmith_div_f32(181f, var_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1577f))))), 476f, _wgslsmith_f_op_f32(select(var_2.b.x, var_2.b.x, any(!vec4<bool>(var_1, var_2.c.x, true, var_1))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.a.yy);
    var var_1 = func_1(u_input.a.yz, ~0u, true);
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~4294967295u), 4294967295u & u_input.a.x, 4294967295u), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.zz), ~7692u, min(u_input.a.x, 4294967295u)) ^ vec3<u32>(4294967295u, func_2(0u), 240u)), u_input.a.x);
    var var_2 = u_input.a.x;
    var_1 = Struct_4(vec2<i32>(~_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.a, var_1.a, var_1.a), var_1.a), firstLeadingBit(func_3())));
    var_0 = vec2<u32>(func_2(~countOneBits(~u_input.a.x)), (u_input.a.x | 1u) >> (~23171u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-223f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-264f - 1711f)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(-362f, 435f, true)), false)))), ~(~(~_wgslsmith_clamp_u32(4294967295u, var_0.x, var_0.x))), vec2<u32>(select(_wgslsmith_add_u32(0u, func_2(47767u)), 13479u, false), u_input.a.x), var_1.a.x, _wgslsmith_add_u32(var_0.x, _wgslsmith_clamp_u32(firstLeadingBit(4294967295u), 1u, 26413u) << (var_0.x % 32u)));
}

