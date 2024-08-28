struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec2<i32> {
    return u_input.a.ww << (countOneBits(countOneBits((vec2<u32>(arg_0, arg_0) | vec2<u32>(arg_0, 1u)) | vec2<u32>(56950u, arg_0))) % vec2<u32>(32u));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = reverseBits(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, 1u, 1u, 1u)), reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = Struct_2(Struct_1(var_0.yx, var_0.x, _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec3_i32(u_input.a.wzx, vec3<i32>(104005i, u_input.a.x, arg_0)) | ~u_input.a.x)), Struct_1(~(~abs(vec2<u32>(var_0.x, var_0.x))), 0u, -max(18560i, -1i)), Struct_1(vec2<u32>(countOneBits(1u), (var_0.x | var_0.x) << (4294967295u % 32u)), 34449u, _wgslsmith_sub_i32(u_input.a.x, -arg_0)));
    var_0 = vec4<u32>(var_1.c.a.x, var_0.x << ((var_1.c.b & ~var_0.x) % 32u), ~0u, 45706u);
    var var_2 = any(!vec3<bool>(all(vec3<bool>(true, true, true)), true, true));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2779f + -591f) + -358f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1283f + 4199f), _wgslsmith_f_op_f32(751f + 833f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(1000f - 384f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1387f))));
    return 1u;
}

fn func_1() -> u32 {
    let var_0 = -vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-u_input.a.xw, func_2(4294967295u, u_input.a.x, vec3<i32>(7670i, 31643i, 2147483647i), vec2<i32>(u_input.a.x, 0i))), -2147483647i, select(_wgslsmith_sub_i32(1i, u_input.a.x), func_2(0u, u_input.a.x, u_input.a.xzx, u_input.a.yz).x, true)), ~20972i);
    var var_1 = _wgslsmith_f_op_f32(852f - 751f);
    var var_2 = Struct_5(Struct_1(vec2<u32>(func_3(-23430i), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), 1u, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, var_0.x, -28088i, var_0.x), u_input.a), firstLeadingBit(vec4<i32>(var_0.x, 13891i, 2147483647i, 1303i))), ~u_input.a.x)));
    let var_3 = Struct_1(reverseBits(var_2.a.a), ~_wgslsmith_div_u32(func_3(32108i | var_2.a.c), ~var_2.a.a.x), -min(-7980i | abs(var_0.x), ~(-u_input.a.x)));
    var var_4 = _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(1i, 1i)) > (var_3.c >> ((4294967295u & ~(~var_2.a.b)) % 32u));
    return _wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b, reverseBits(reverseBits(~20563u)), 0u), max(abs((vec3<u32>(var_3.a.x, 1u, 0u) | vec3<u32>(var_2.a.a.x, 67187u, 0u)) >> (~vec3<u32>(var_2.a.b, 38670u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(firstLeadingBit(var_3.a.x), var_3.a.x, _wgslsmith_clamp_u32(34856u, 0u, min(7511u, var_3.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(func_1(), _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(2298u, 29417u, 0u)), abs(vec3<u32>(~18433u, min(1u, 1u), 8151u))), min(32308u, ~(~4294967295u)), ~1u);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, _wgslsmith_f_op_f32(-1832f * 299f)))));
    let var_2 = any(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), all(vec3<bool>(true, true, false)))), vec3<bool>(any(vec3<bool>(true, false, true)), true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true)));
    var var_3 = u_input.a.wyy;
    var_1 = Struct_3(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, -1120f, var_1.a.x))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2059f, -664f, 465f)))))), vec3<i32>(1i, abs(52085i), i32(-1i) * -func_2(var_0.x, 2147483647i, vec3<i32>(u_input.a.x, -33508i, var_3.x), u_input.a.ww).x), ~vec3<u32>(~(~28294u), 22735u, abs(~var_0.x)));
}

