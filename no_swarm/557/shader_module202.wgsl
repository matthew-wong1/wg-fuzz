struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
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

var<private> global0: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(84420i, -4124i), vec2<i32>(-1557i, 6057i), vec2<i32>(0i, -1i), vec2<i32>(0i, -42732i), vec2<i32>(-29776i, 2147483647i), vec2<i32>(0i, 73155i), vec2<i32>(i32(-2147483648), -1897i), vec2<i32>(60853i, -471i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(32316i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-24100i, 66111i), vec2<i32>(0i, 14997i), vec2<i32>(-4886i, 39519i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 0i));

var<private> global1: i32 = -46616i;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> i32 {
    global0 = array<vec2<i32>, 17>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(244f, 798f, 115f, -2341f))))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(454f, -1451f, 1075f, 1512f), vec4<f32>(-1050f, 693f, 137f, 1330f), vec4<bool>(true, arg_1, arg_1, true))), vec4<f32>(1375f, 182f, 450f, 723f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1412f, 1002f, -156f, -1000f) * vec4<f32>(654f, 709f, 1025f, 119f)))), arg_1))));
    var var_1 = vec2<u32>(~(79258u >> (u_input.a.x % 32u)), u_input.a.x & _wgslsmith_clamp_u32(~45780u, 4294967295u, 0u));
    global0 = array<vec2<i32>, 17>();
    let var_2 = true;
    return 50409i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global0 = array<vec2<i32>, 17>();
    var var_0 = ~vec4<u32>(41367u, ~4294967295u, u_input.a.x, ~reverseBits(u_input.a.x)) >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 2496u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 9546u, 0u), firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))))) % vec4<u32>(32u));
    global1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(21923i, u_input.c.x)), vec2<i32>(u_input.b, u_input.b) & vec2<i32>(u_input.c.x, u_input.b), vec2<bool>(false, true)), global0[_wgslsmith_index_u32(var_0.x, 17u)]), i32(-1i) * -u_input.b) | -func_3(firstLeadingBit(select(vec3<i32>(-1i, u_input.c.x, u_input.b), vec3<i32>(u_input.b, 4005i, 16073i), vec3<bool>(false, false, false))), all(vec2<bool>(true, true)));
    return u_input.c.x & max(_wgslsmith_div_i32(1i, 49200i), ~(37728i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, -1i), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    global1 = _wgslsmith_div_i32(~countOneBits(firstLeadingBit(-2147483647i)), -u_input.b);
    global1 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1103f, 611f, 305f, 954f)))) & max(~(-2147483647i), min(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -2147483647i) & global0[_wgslsmith_index_u32(arg_0.x, 17u)], max(global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global0[_wgslsmith_index_u32(arg_0.x, 17u)]))));
    let var_0 = reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 79849u, 16520u), ~vec3<u32>(arg_0.x, 1u, arg_0.x)), vec3<u32>(firstLeadingBit(2819u), arg_0.x | arg_0.x, ~arg_0.x)), min(max(~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), arg_0 | u_input.a), ~min(vec3<u32>(0u, 1816u, u_input.a.x), vec3<u32>(11425u, 32815u, 4294967295u))), min(firstTrailingBit(u_input.a), vec3<u32>(4294967295u, 0u, u_input.a.x) ^ ~vec3<u32>(0u, 4294967295u, arg_0.x))));
    return _wgslsmith_add_vec2_u32(firstLeadingBit(~u_input.a.zz & (var_0.xy ^ arg_0.zx)), ~vec2<u32>(~arg_0.x, arg_0.x)) << (vec2<u32>(u_input.a.x, ~1u) % vec2<u32>(32u));
}

fn func_4(arg_0: vec2<u32>) -> i32 {
    let var_0 = select(u_input.c.x != (i32(-1i) * -func_2(Struct_1(vec4<f32>(1631f, -1262f, -1000f, 316f)))), all(!vec3<bool>(true, u_input.c.x == 1i, any(vec2<bool>(false, true)))), true);
    let var_1 = -_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.b ^ countOneBits(u_input.c.x), -min(-7010i, -2147483647i)), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 34184i), -global0[_wgslsmith_index_u32(u_input.a.x, 17u)]));
    global0 = array<vec2<i32>, 17>();
    let var_2 = abs(~(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x), ~u_input.a, u_input.a) >> (select(u_input.a, reverseBits(u_input.a), !vec3<bool>(var_0, false, true)) % vec3<u32>(32u))));
    global0 = array<vec2<i32>, 17>();
    return select(var_1.x, -15557i, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 17>();
    global0 = array<vec2<i32>, 17>();
    global1 = 2147483647i;
    global1 = func_4(firstLeadingBit(func_1(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(10775u, u_input.a.x, u_input.a.x)))) & ~vec2<u32>(countOneBits(4294967295u), select(u_input.a.x, 10435u, false)));
    var var_0 = -1586f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1949f)))));
}

