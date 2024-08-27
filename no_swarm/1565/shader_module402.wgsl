struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: vec4<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> Struct_1 {
    var var_0 = vec2<bool>(arg_1 && true, false);
    var var_1 = Struct_1(u_input.c.x, vec2<f32>(-990f, 1665f));
    return Struct_1(~var_1.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(598f, 376f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = u_input.c.x;
    var_0 = ~_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(89157u, arg_1), u_input.c.yx) & ~0u), arg_2.a, reverseBits(53458u));
    var var_1 = u_input.c.x;
    let var_2 = -20039i;
    var var_3 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))), 866f), select(select(!select(vec4<bool>(true, arg_0, true, true), vec4<bool>(false, arg_0, false, false), false), select(select(vec4<bool>(arg_0, true, false, false), vec4<bool>(false, false, arg_0, false), vec4<bool>(false, arg_3, true, arg_3)), vec4<bool>(false, true, arg_3, arg_0), select(vec4<bool>(false, true, false, false), vec4<bool>(arg_0, arg_3, false, arg_3), vec4<bool>(true, true, true, false))), select(vec4<bool>(arg_0, false, false, arg_0), select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_3, false, false, arg_0), false), !vec4<bool>(arg_3, arg_3, false, arg_0))), select(!select(vec4<bool>(false, arg_0, true, true), vec4<bool>(arg_0, true, arg_3, arg_3), arg_3), select(select(vec4<bool>(arg_3, arg_0, arg_3, false), vec4<bool>(arg_3, arg_3, true, arg_0), arg_0), !vec4<bool>(arg_0, arg_0, false, false), !arg_0), select(vec4<bool>(arg_0, false, false, true), !vec4<bool>(arg_3, true, true, false), arg_0)), select(vec4<bool>(true, arg_2.a >= arg_1, arg_0, any(vec4<bool>(arg_0, arg_3, arg_0, arg_0))), !select(vec4<bool>(true, false, arg_0, false), vec4<bool>(arg_0, arg_3, arg_0, arg_3), vec4<bool>(false, false, arg_3, false)), _wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x) != _wgslsmith_f_op_f32(-arg_2.b.x))), false, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, 4857i, reverseBits(var_2), ~(-13918i)), -_wgslsmith_div_vec4_i32(vec4<i32>(-78828i, 2147483647i, u_input.d.x, var_2), vec4<i32>(var_2, 2147483647i, u_input.d.x, -10969i))) ^ min(vec4<i32>(~0i, -1i, 2147483647i, ~u_input.b), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 12884i, -7931i, var_2)), Struct_3(977f, Struct_2(Struct_1(~arg_1, _wgslsmith_f_op_vec2_f32(-arg_2.b))), vec4<bool>(any(select(vec2<bool>(arg_0, arg_3), vec2<bool>(false, false), vec2<bool>(false, true))), (0u ^ u_input.a) <= ~arg_1, false, true), Struct_2(arg_2)));
    return 32649u;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = ~vec4<u32>(reverseBits(reverseBits(27620u)), 33557u, u_input.c.x >> (arg_2.a.a % 32u), 2625u);
    var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(~0u, func_3(arg_3.c.x, arg_2.a.a, func_2(vec4<f32>(-472f, arg_3.a, 384f, arg_3.a), arg_3.c.x, 1u), arg_3.c.x), _wgslsmith_add_u32(13530u, u_input.a << (var_0.x % 32u)), ~max(arg_3.d.a.a, arg_2.a.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(~arg_2.a.a, ~15197u ^ u_input.a, 46128u, arg_2.a.a), ~vec4<u32>(1604u, arg_3.b.a.a, max(var_0.x, arg_2.a.a), ~var_0.x)));
    let var_1 = Struct_2(arg_2.a);
    var_0 = ~vec4<u32>(_wgslsmith_mod_u32(~11087u, _wgslsmith_mod_u32(min(arg_2.a.a, arg_2.a.a), ~var_1.a.a)), 1u, var_0.x & ~arg_2.a.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_1.a.a, var_1.a.a), _wgslsmith_sub_u32(u_input.c.x, arg_3.b.a.a)), 0u));
    var var_2 = arg_3;
    return any(!var_2.c.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -330f;
    var var_1 = select(vec3<bool>(all(vec3<bool>(true, all(vec2<bool>(false, true)), true)), true, false), vec3<bool>(true, true, true), all(vec3<bool>(func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -51674i, u_input.b), vec3<i32>(u_input.b, u_input.d.x, u_input.d.x)), 117f, Struct_2(Struct_1(1u, vec2<f32>(-743f, -1767f))), Struct_3(var_0, Struct_2(Struct_1(36394u, vec2<f32>(1335f, 1161f))), vec4<bool>(false, false, false, false), Struct_2(Struct_1(0u, vec2<f32>(-1575f, var_0))))), true, false)));
    var_1 = !(!(!(!vec3<bool>(false, var_1.x, true))));
    var_1 = vec3<bool>(false, all(vec2<bool>(~u_input.a <= _wgslsmith_add_u32(1u, 1u), true | !var_1.x)), var_1.x);
    var_1 = select(vec3<bool>(!var_1.x, true, var_1.x | (4294967295u >= ~u_input.c.x)), !select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(all(vec4<bool>(var_1.x, var_1.x, true, false)), !var_1.x, true), vec3<bool>(true, all(vec3<bool>(false, var_1.x, var_1.x)), true)), var_1.x);
    var var_2 = select(vec2<bool>(true, true), !var_1.yz, true);
    let x = u_input.a;
    s_output = StorageBuffer(-2185f, u_input.d, _wgslsmith_mult_i32(-8670i, -u_input.d.x));
}

