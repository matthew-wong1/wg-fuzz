struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2))) * -719f) - _wgslsmith_f_op_f32(abs(-260f)));
    var var_1 = Struct_2(_wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -39493i))), firstTrailingBit(u_input.b.x)), Struct_1(arg_1.a), vec2<f32>(-2034f, arg_2));
    var var_2 = select(select(vec4<bool>((arg_1.a.x || var_1.b.a.x) || var_1.b.a.x, var_1.b.a.x, var_1.c.x == _wgslsmith_f_op_f32(floor(arg_2)), all(!vec2<bool>(arg_1.a.x, false))), !select(!vec4<bool>(true, var_1.b.a.x, arg_1.a.x, arg_1.a.x), vec4<bool>(var_1.b.a.x, false, var_1.b.a.x, var_1.b.a.x), true), _wgslsmith_div_f32(1f, var_1.c.x) >= _wgslsmith_f_op_f32(-arg_2)), select(vec4<bool>(!(!arg_1.a.x), true, arg_1.a.x, false), !select(!vec4<bool>(var_1.b.a.x, true, arg_1.a.x, false), !vec4<bool>(var_1.b.a.x, true, true, false), false), vec4<bool>(true, true, any(!vec4<bool>(arg_1.a.x, var_1.b.a.x, true, var_1.b.a.x)), !any(vec4<bool>(arg_1.a.x, false, var_1.b.a.x, arg_1.a.x)))), var_1.b.a.x);
    let var_3 = ~var_1.a;
    let var_4 = arg_2;
    return !var_1.b.a;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = Struct_1(select(arg_0.b.a, !arg_0.b.a, select(arg_0.b.a, arg_0.b.a, arg_0.b.a)));
    var_1 = Struct_1(vec2<bool>(var_1.a.x, true));
    let var_2 = select(vec2<bool>(true, select(var_1.a.x, var_1.a.x, all(!vec3<bool>(false, arg_0.b.a.x, var_1.a.x)))), var_1.a, vec2<bool>(all(select(vec3<bool>(true, var_1.a.x, arg_0.b.a.x), vec3<bool>(false, arg_0.b.a.x, false), vec3<bool>(true, true, var_1.a.x))) && any(!vec3<bool>(true, false, var_1.a.x)), var_1.a.x));
    var_1 = arg_0.b;
    return !select(arg_0.b.a, vec2<bool>(all(vec3<bool>(false, true, arg_0.b.a.x)) || var_1.a.x, var_2.x), !func_3(5270i, Struct_1(var_1.a), arg_2));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_2(u_input.b.x, Struct_1(vec2<bool>(false, true)), vec2<f32>(293f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1415f, 1636f), _wgslsmith_f_op_f32(f32(-1f) * -1406f), false)))), reverseBits(u_input.a.x), -647f);
    var var_1 = -725f;
    var var_2 = u_input.b.x;
    var_2 = 0i;
    let var_3 = vec4<bool>(true, var_0.x, _wgslsmith_dot_vec4_i32(~u_input.b, ~(~vec4<i32>(-2147483647i, 0i, u_input.b.x, u_input.b.x))) <= abs(u_input.b.x ^ reverseBits(u_input.b.x)), !((true || any(vec3<bool>(var_0.x, true, var_0.x))) && true));
    return Struct_1(var_3.ww);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = -arg_1.a;
    var var_2 = -2147483647i;
    let var_3 = !(u_input.a.x <= select(~u_input.a.x, u_input.a.x, arg_0.a.x));
    var_1 = _wgslsmith_div_i32(-1i, -(6319i << (~(~u_input.a.x) % 32u)));
    return Struct_2(abs(abs(arg_1.a)), func_1(), _wgslsmith_f_op_vec2_f32(arg_1.c - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.c.x)), -1856f))));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~abs(~firstTrailingBit(~vec2<u32>(0u, u_input.a.x)));
    var var_1 = abs(4294967295u);
    var var_2 = -_wgslsmith_mult_i32(-arg_2.a, -_wgslsmith_mult_i32(16133i, u_input.b.x)) << (var_0.x % 32u);
    let var_3 = Struct_1(vec2<bool>(!(-19967i <= arg_1.a), all(select(!vec4<bool>(arg_3.b.a.x, false, arg_2.b.a.x, arg_1.b.a.x), vec4<bool>(arg_1.b.a.x, arg_1.b.a.x, false, true), select(vec4<bool>(arg_3.b.a.x, arg_3.b.a.x, true, arg_2.b.a.x), vec4<bool>(false, arg_1.b.a.x, arg_1.b.a.x, arg_3.b.a.x), vec4<bool>(true, true, arg_3.b.a.x, false))))));
    let var_4 = _wgslsmith_sub_vec3_i32(u_input.b.zyw, abs(vec3<i32>(0i, firstLeadingBit(min(arg_2.a, -1i)), arg_1.a)));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(u_input.b.x >> (u_input.a.x % 32u)) << (_wgslsmith_div_u32(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 13629u), 429u), 0u) % 32u);
    let var_1 = func_5(23407i << (u_input.a.x % 32u), func_4(func_1(), Struct_2(u_input.b.x, Struct_1(vec2<bool>(true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(-832f, 241f), _wgslsmith_f_op_vec2_f32(vec2<f32>(799f, -944f) + vec2<f32>(1190f, 777f)))), 1f <= _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-939f, -287f), -347f))), Struct_2(-_wgslsmith_mult_i32(~u_input.b.x, -var_0), Struct_1(vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(step(-936f, func_4(Struct_1(vec2<bool>(true, true)), Struct_2(var_0, Struct_1(vec2<bool>(true, true)), vec2<f32>(1471f, -586f)), false).c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(587f + 1099f))))), func_4(Struct_1(vec2<bool>(all(vec3<bool>(false, false, false)), true)), func_4(Struct_1(vec2<bool>(true, true)), Struct_2(_wgslsmith_clamp_i32(var_0, var_0, 1i), Struct_1(vec2<bool>(true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(-856f, -1000f), vec2<f32>(-1088f, 709f))), true), (select(0u, 75716u, false) > 45971u) & false));
    var var_2 = ~(~(~select(vec4<u32>(3875u, 4294967295u, 52529u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 7204u), true) ^ max(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 8301u, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u))));
    var var_3 = Struct_3(func_5(~(~(-26857i >> (1u % 32u))), func_4(Struct_1(select(vec2<bool>(var_1.a.x, false), var_1.a, var_1.a.x)), func_4(Struct_1(var_1.a), Struct_2(u_input.b.x, var_1, vec2<f32>(-477f, -1000f)), var_1.a.x), !any(var_1.a)), Struct_2(u_input.b.x, Struct_1(func_3(2147483647i, var_1, -430f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-950f, -1490f)))))), func_4(var_1, Struct_2(0i, func_5(u_input.b.x, Struct_2(u_input.b.x, Struct_1(vec2<bool>(var_1.a.x, false)), vec2<f32>(632f, 1032f)), Struct_2(1i, Struct_1(var_1.a), vec2<f32>(-778f, 963f)), Struct_2(1i, var_1, vec2<f32>(383f, -676f))), vec2<f32>(472f, 167f)), any(var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-u_input.b.xzy, -(vec3<i32>(12232i, -2147483647i, var_0) << (vec3<u32>(u_input.a.x, 4294967295u, 4294967295u) % vec3<u32>(32u)))) << (4294967295u % 32u));
}

