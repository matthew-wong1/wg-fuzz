struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    return vec2<i32>(-1i) * -(~(~(~vec2<i32>(-14571i, 1i))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<bool>(arg_1.a.x, !arg_0.x, arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_1 = 1000f;
    var_1 = 1f;
    var var_2 = Struct_2(arg_1.a, func_3(firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 34029u, 4294967295u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 24654u, u_input.a), vec4<u32>(23794u, 1u, 4294967295u, u_input.a))))));
    return u_input.a | ~(~(~(u_input.a | 86125u)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(select(!arg_0.a, vec4<bool>(false, !all(arg_0.a.ywx), arg_0.a.x, true), arg_0.a.x));
    let var_1 = arg_0;
    let var_2 = ~(vec4<u32>(func_2(var_1.a.yx, arg_0), abs(5197u), ~u_input.a, min(u_input.a, u_input.a)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, u_input.a)), u_input.a, u_input.a, _wgslsmith_mult_u32(0u, 4294967295u))) >> (countOneBits(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), abs(vec4<u32>(u_input.a, u_input.a, 3875u, u_input.a)))) % vec4<u32>(32u));
    var_0 = Struct_1(!vec4<bool>(false, any(!vec4<bool>(false, arg_0.a.x, false, true)), true, var_0.a.x));
    let var_3 = 1i;
    return select(vec4<bool>(any(var_1.a), !var_0.a.x, (var_2.x >> (~4294967295u % 32u)) >= ~reverseBits(4294967295u), _wgslsmith_mult_u32(u_input.a, u_input.a) > 1u), !vec4<bool>(true, any(arg_0.a.wxz), var_0.a.x, true), var_0.a);
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -838f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1192f)), -112f, true)), 664f)) - _wgslsmith_f_op_f32(-768f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1632f) - -1117f))));
    let var_1 = vec3<u32>(~u_input.a, ~reverseBits((4294967295u | u_input.a) ^ ~58639u), firstTrailingBit(abs(u_input.a)));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1512f - var_0.x), -1639f), var_0))), var_0);
    var_2 = var_0;
    let var_3 = Struct_2(select(!(!(!vec4<bool>(arg_0.a.x, true, arg_0.a.x, false))), select(vec4<bool>(arg_0.a.x, true, !arg_0.a.x, false), arg_0.a, !func_1(Struct_1(vec4<bool>(false, false, arg_0.a.x, arg_0.a.x)))), any(select(select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, false), false), arg_0.a, select(arg_0.a, arg_0.a, arg_0.a)))), vec2<i32>(_wgslsmith_mult_i32(-select(0i, 40528i, arg_0.a.x), _wgslsmith_sub_i32(15047i >> (u_input.a % 32u), 0i)), -1i));
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), true)), vec4<bool>(true, select(true, true, any(vec2<bool>(false, false))), func_4(Struct_1(func_1(Struct_1(vec4<bool>(true, false, true, false))))), !(!any(vec2<bool>(true, true)))), !func_4(Struct_1(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(select(vec4<bool>(var_0.x | true, all(func_1(Struct_1(vec4<bool>(true, var_0.x, false, var_0.x)))), (u_input.a & u_input.a) != 12245u, var_0.x && var_0.x), vec4<bool>(all(!var_0), any(var_0.xy), true, var_0.x), func_1(Struct_1(vec4<bool>(false, var_0.x, false, var_0.x))).x));
    let var_2 = Struct_2(var_1.a, _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(~abs(vec2<i32>(-2147483647i, 1i)), -vec2<i32>(-12205i, 2147483647i)), vec2<i32>(-reverseBits(-1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(6301i, 34092i, -2147483647i, 0i), vec4<i32>(0i, 0i, -1i, -1i)))));
    var var_3 = vec4<i32>(reverseBits(var_2.b.x & var_2.b.x) | var_2.b.x, ~firstLeadingBit(0i), -var_2.b.x, 1i);
    var_3 = -select(~(~(~vec4<i32>(-2147483647i, var_3.x, 718i, var_3.x))), vec4<i32>(abs(i32(-1i) * -8122i), abs(_wgslsmith_dot_vec2_i32(var_2.b, vec2<i32>(1i, -45650i))), -42814i, ~(~var_2.b.x)), var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(322f, 1000f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1744f + _wgslsmith_f_op_f32(f32(-1f) * -232f)) + _wgslsmith_f_op_f32(f32(-1f) * -549f)), _wgslsmith_f_op_f32(630f * _wgslsmith_f_op_f32(floor(-1582f))), -758f), select(reverseBits(~select(vec2<u32>(u_input.a, 0u), vec2<u32>(6173u, u_input.a), var_1.a.yw)), ~vec2<u32>(_wgslsmith_clamp_u32(0u, 19684u, 1u), ~65249u), false), u_input.a, 8128u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-675f + -1069f), _wgslsmith_f_op_f32(abs(-1000f)))), -475f));
}

