struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_3(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(1000f)), -1000f, _wgslsmith_f_op_f32(1428f * _wgslsmith_f_op_f32(1000f + -537f)), -646f)), false, _wgslsmith_div_u32(u_input.d, ~(~u_input.a)) == firstLeadingBit(reverseBits(~95951u)), ~(-1i | _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -6192i, u_input.c, -7578i), vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i))) <= reverseBits(-33942i));
    var var_1 = var_0;
    let var_2 = Struct_1(u_input.e.x, vec4<bool>(!var_0.b, select(any(select(vec4<bool>(true, false, true, arg_0), vec4<bool>(var_1.b, var_0.c, false, var_1.b), vec4<bool>(true, arg_0, false, var_1.b))), 1u == _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20615u, 1161u, 34954u), u_input.e), !all(vec3<bool>(true, true, false))), false & var_1.c, true && var_0.b), 323f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), var_1.a.a.x), -633f);
    var var_3 = _wgslsmith_f_op_f32(1232f * 733f);
    var var_4 = -reverseBits(abs(-13645i));
    return true;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(488f, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -1308f, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 378f, -567f, -192f)))));
    var var_1 = vec2<i32>(1i, 14315i) << (u_input.b.yx % vec2<u32>(32u));
    var var_2 = Struct_3(Struct_2(var_0.a), any(select(select(vec2<bool>(false, false), select(vec2<bool>(true, arg_2.x), arg_2.xz, arg_2.x), true), arg_2.yy, vec2<bool>(false, false & arg_2.x))), any(!select(vec4<bool>(arg_2.x, true, false, false), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false))), all(!vec2<bool>(!arg_2.x, arg_2.x)));
    var_2 = Struct_3(var_2.a, true, all(vec4<bool>(!func_3(false), (arg_0 != u_input.c) != !arg_2.x, (2147483647i >= u_input.c) && (79421i != u_input.c), false)), !all(vec3<bool>(any(arg_2.zx), any(vec3<bool>(true, true, false)), false)));
    var_1 = vec2<i32>(0i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(u_input.c, 2147483647i), arg_0, 0i)), min(reverseBits(-vec3<i32>(var_1.x, 1i, -61456i)), vec3<i32>(i32(-1i) * -67340i, _wgslsmith_dot_vec3_i32(vec3<i32>(33671i, -28528i, 2147483647i), vec3<i32>(-2147483647i, -6968i, 34025i)), -28063i & u_input.c))));
    return u_input.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: Struct_4) -> Struct_1 {
    var var_0 = vec4<f32>(-1803f, _wgslsmith_f_op_f32(-arg_1.d.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -874f), _wgslsmith_f_op_f32(-arg_2.x), u_input.c <= 0i))), -211f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))))));
    let var_1 = select(vec2<bool>(false, all(arg_1.d.b)), arg_3.d.b.zz, select(vec2<bool>(false, func_3(arg_1.e.d) | arg_3.e.b), arg_1.d.b.yy, arg_3.d.b.xw));
    var var_2 = !(arg_3.a >= (24857u & ~arg_1.b.x));
    var_2 = select(false, all(vec3<bool>(true, true, false)), true);
    var var_3 = vec3<bool>(!(!(!(u_input.c >= -46094i))), false, false);
    return arg_3.d;
}

fn func_1(arg_0: i32, arg_1: i32) -> u32 {
    let var_0 = Struct_4(select(~((4294967295u & u_input.a) >> (~4294967295u % 32u)), u_input.e.x, true || !(u_input.c <= 0i)), u_input.e.xxw, any(!vec3<bool>(true, 4294967295u == u_input.a, true)), func_4(_wgslsmith_sub_u32(func_2(2444i, _wgslsmith_f_op_f32(round(-604f)), vec3<bool>(true, true, true)), 0u), Struct_4(_wgslsmith_div_u32(4294967295u, u_input.a) | ~u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), u_input.b), true, Struct_1(u_input.b.x & 4294967295u, vec4<bool>(true, true, true, true), true, -580f), Struct_3(Struct_2(vec4<f32>(610f, -860f, 626f, -1284f)), true, true, u_input.c <= 12811i)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1667f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + -180f)), -435f), Struct_4(u_input.d, firstLeadingBit(abs(vec3<u32>(u_input.a, 7964u, u_input.a))), func_3(false) | true, Struct_1(u_input.e.x, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), 19442u == u_input.d, _wgslsmith_div_f32(371f, -188f)), Struct_3(Struct_2(vec4<f32>(-307f, -498f, 239f, 372f)), true, select(true, true, true), true))), Struct_3(Struct_2(vec4<f32>(802f, _wgslsmith_f_op_f32(-344f * -406f), 208f, _wgslsmith_div_f32(2614f, -1161f))), true, ~(u_input.d & 1u) >= u_input.b.x, true));
    var var_1 = ~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, var_0.a), vec3<u32>(4294967295u, var_0.b.x, var_0.d.a)) ^ max(68359u, 1u << (u_input.a % 32u))));
    var_1 = min(_wgslsmith_mod_u32(0u, ~(~124777u)), 1u);
    let var_2 = Struct_1(abs(reverseBits(u_input.b.x)), var_0.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.a.a.x)) <= 1280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.a.a.x) - var_0.e.a.a.x));
    var_1 = 0u;
    return 11021u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = func_1(u_input.c, u_input.c) & u_input.e.x;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1288f * 1104f), _wgslsmith_f_op_f32(-478f + 274f), 1135f, _wgslsmith_f_op_f32(107f - 363f)))), all(select(!func_4(26621u, Struct_4(u_input.d, vec3<u32>(u_input.d, u_input.b.x, u_input.e.x), true, Struct_1(u_input.b.x, vec4<bool>(true, true, true, false), false, -229f), Struct_3(Struct_2(vec4<f32>(-1616f, -921f, -2073f, 977f)), true, false, false)), vec3<f32>(418f, -1296f, -572f), Struct_4(6572u, u_input.e.yyy, false, Struct_1(1u, vec4<bool>(true, false, false, false), true, -1069f), Struct_3(Struct_2(vec4<f32>(1003f, 801f, 1236f, 478f)), false, true, true))).b.zxx, vec3<bool>(true, false, true), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)))), true, false);
    let var_2 = firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -25083i, -21509i), vec3<i32>(u_input.c, -18067i, u_input.c))), 0i));
    let var_3 = _wgslsmith_clamp_i32(min(max(~1i, _wgslsmith_mult_i32(72587i, -6122i) & var_2), u_input.c), _wgslsmith_add_i32(-(~(-22893i)) << (u_input.b.x % 32u), i32(-1i) * -29943i), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1000f - var_1.a.a.x), -157f));
}

