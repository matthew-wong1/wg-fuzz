struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-2421f, -874f, -171f, 816f, -480f, -526f, 1725f, -1000f, -994f, 722f, -804f, -379f, -1068f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec3<i32> {
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_0 = arg_1;
    return _wgslsmith_mult_vec3_i32(vec3<i32>(39872i, reverseBits(-u_input.a.x), u_input.a.x), abs(abs(-vec3<i32>(2147483647i, 0i, u_input.c)) << (vec3<u32>(~var_0.b, _wgslsmith_clamp_u32(46554u, 0u, 5311u), ~u_input.e) % vec3<u32>(32u))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = ~2132i;
    global0 = array<f32, 13>();
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(9980i, _wgslsmith_clamp_i32(select(min(2147483647i, u_input.c), u_input.b.x, true), 0i, (-20045i ^ u_input.b.x) >> (~arg_1.x % 32u)), u_input.b.x, _wgslsmith_div_i32(~u_input.c << (1u % 32u), 2147483647i)), _wgslsmith_sub_vec4_i32(firstLeadingBit(select(abs(vec4<i32>(u_input.c, u_input.c, u_input.b.x, u_input.b.x)), vec4<i32>(u_input.a.x, -4844i, u_input.a.x, u_input.b.x), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true))), vec4<i32>(u_input.c, ~u_input.a.x, 2147483647i, i32(-1i) * -u_input.c)));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(~(~arg_1.x), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(7176u, u_input.d, arg_1.x), vec3<u32>(u_input.e, arg_2.x, arg_1.x)) << (~27417u % 32u))), 22399u);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, global0[_wgslsmith_index_u32(arg_1.x, 13u)]) - _wgslsmith_f_op_vec2_f32(-arg_0.xx)), arg_0.wy)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.e, 4294967295u, 26973u), arg_1), vec3<u32>(0u, arg_1.x, 0u)), ~min(vec3<u32>(60368u, arg_1.x, 56984u), arg_1)), _wgslsmith_f_op_vec2_f32(-arg_0.ww), abs(_wgslsmith_clamp_vec3_u32(arg_1 << (vec3<u32>(u_input.e, u_input.d, arg_2.x) % vec3<u32>(32u)), vec3<u32>(0u, arg_2.x, 0u) >> (arg_1 % vec3<u32>(32u)), arg_1))));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(~u_input.d, ~arg_2.x), arg_1.x), _wgslsmith_clamp_u32(var_2.a.d.x, 4294967295u >> (u_input.e % 32u), 1u)), select(vec2<u32>(arg_1.x, var_2.a.d.x), arg_2, all(vec3<bool>(true, false, true))));
}

fn func_1() -> StorageBuffer {
    let var_0 = abs(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(13057i, 19224i, 10102i), func_2(969f, Struct_1(vec2<f32>(1000f, 731f), 0u, vec2<f32>(global0[_wgslsmith_index_u32(u_input.d, 13u)], -240f), vec3<u32>(u_input.e, 13325u, 4294967295u)))), u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -1i, 46418i), vec3<i32>(-18402i, u_input.b.x, u_input.c))));
    let var_1 = true;
    return StorageBuffer(func_3(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-201f - global0[_wgslsmith_index_u32(u_input.e, 13u)]) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(29100u, 13u)])), 1811f, global0[_wgslsmith_index_u32(1u, 13u)]), vec3<u32>(1u, 32288u, u_input.d), reverseBits(~vec2<u32>(u_input.e, u_input.d) ^ firstLeadingBit(vec2<u32>(1u, u_input.d)))), ~u_input.a | var_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

