struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c.c.x);
    var_0 = -508f;
    var var_1 = Struct_1(vec2<i32>(-_wgslsmith_sub_i32(abs(arg_1.x), 2147483647i), -1i), _wgslsmith_f_op_f32(-arg_0.c.b), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.c.x), -1196f), -1472f));
    let var_2 = select(vec4<bool>(arg_0.b, false, !any(select(vec3<bool>(arg_0.b, arg_3, true), vec3<bool>(true, false, false), false)), true), select(!select(select(vec4<bool>(arg_3, arg_3, false, true), vec4<bool>(false, arg_0.b, arg_3, true), true), !vec4<bool>(arg_3, false, arg_3, arg_0.b), true), vec4<bool>((arg_3 || true) || any(vec4<bool>(arg_0.b, false, false, arg_0.b)), false, arg_3 & true, arg_0.b && any(vec4<bool>(arg_0.b, arg_0.b, false, true))), !(!select(vec4<bool>(true, arg_3, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, arg_0.b, false), arg_0.b))), arg_0.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-726f, -487f) + var_1.c))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b, var_1.c.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1227f, var_1.b)))))))));
    return abs(max(-1257i, 17898i));
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_div_i32(~(-u_input.b), func_3(Struct_3(vec3<u32>(u_input.c, u_input.c, u_input.c), true, Struct_1(vec2<i32>(u_input.b, -1i), 1433f, vec2<f32>(1997f, -173f))), _wgslsmith_add_vec2_i32(u_input.a.wz, u_input.a.zx), u_input.a.zx, true) & -reverseBits(-2147483647i)), u_input.a.x);
    let var_1 = Struct_1(-vec2<i32>(-281i, -u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2260f))), vec2<f32>(_wgslsmith_f_op_f32(step(912f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f) * 1000f)));
    var var_2 = _wgslsmith_f_op_f32(-615f + var_1.c.x);
    let var_3 = _wgslsmith_sub_u32(~(u_input.c & u_input.c), select(1u, firstLeadingBit(u_input.c), true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-160f, _wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_div_f32(var_1.b, var_1.b)))));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    let var_1 = Struct_3(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<u32>(0u, u_input.c, u_input.c)) << (~firstLeadingBit(vec3<u32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(0u, 4294967295u, 106377u) % vec3<u32>(32u))) % vec3<u32>(32u)), ((~4294967295u | u_input.c) ^ reverseBits(u_input.c & u_input.c)) == _wgslsmith_clamp_u32(0u, ~(u_input.c >> (u_input.c % 32u)), 0u), Struct_1(~countOneBits(vec2<i32>(3883i, 1i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f + -158f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, -544f) + vec2<f32>(var_0.x, 310f)), _wgslsmith_f_op_vec2_f32(var_0.zz - vec2<f32>(var_0.x, 1036f)))))));
    let var_2 = max(~var_1.a.zz, ~(~reverseBits(vec2<u32>(1u, u_input.c)) & var_1.a.yx));
    var var_3 = -var_1.c.a.x;
    var var_4 = Struct_3(~abs(~(~var_1.a)), var_1.b, Struct_1(abs(abs(-vec2<i32>(-40155i, u_input.a.x))), var_1.c.c.x, _wgslsmith_f_op_vec2_f32(ceil(var_0.yz))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(206f - var_1.c.b)) * _wgslsmith_div_f32(-401f, var_4.c.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_4.c.b - _wgslsmith_f_op_f32(abs(var_0.x))))) - -954f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (~(~u_input.c) != ~countOneBits(10359u)) & true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - 1f));
    let var_2 = Struct_2(Struct_1(vec2<i32>(countOneBits(u_input.b ^ u_input.b), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1))), vec2<f32>(var_1, var_1)));
    let var_3 = firstTrailingBit(~vec4<u32>(u_input.c, ~51717u, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c, u_input.c), ~u_input.c), u_input.c));
    let var_4 = var_2.a;
    var var_5 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.c.x, 603f, var_2.a.b, var_1) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(291f, var_1, -358f, -505f), vec4<f32>(-1000f, var_2.a.b, -396f, var_2.a.b)))) - vec4<f32>(-178f, _wgslsmith_f_op_f32(ceil(var_4.c.x)), var_4.b, _wgslsmith_f_op_f32(var_4.b - 309f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.a.b, var_4.b, var_4.c.x, var_2.a.c.x), vec4<f32>(724f, -1105f, var_2.a.c.x, -723f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.c.x, var_1, -1953f, -1185f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_4.c.x), _wgslsmith_f_op_f32(round(var_1)), -636f, var_4.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, var_4.c.x, 2191f, var_4.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, 1302f, -318f, 491f)))))), false));
    var_5 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -161f) * 1f) - var_4.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.c.x))), -1000f, -480f));
    let var_6 = !var_0;
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a, vec2<i32>(var_4.a.x, -30398i), vec3<i32>(-53316i, _wgslsmith_div_i32(u_input.a.x, func_3(Struct_3(var_3.xyx, var_0, Struct_1(vec2<i32>(var_4.a.x, -19042i), 1085f, var_4.c)), var_4.a, var_2.a.a, var_6)) & (var_2.a.a.x | -77049i), ~var_4.a.x));
}

