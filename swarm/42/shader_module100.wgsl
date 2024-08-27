struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = true;
    var var_1 = arg_3.b.a;
    var_1 = arg_3.b.b;
    global0 = vec2<i32>(arg_3.d | 11672i, 0i);
    var_1 = Struct_1(arg_0.b.a.a);
    return vec4<bool>(false, !select(true, !arg_0.b.c, true), any(!(!(!arg_2.e.yyw))), all(arg_2.e.zz));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> vec4<bool> {
    global0 = vec2<i32>(select(_wgslsmith_sub_i32(abs(global0.x) >> (select(4294967295u, arg_0, true) % 32u), 1i), -2147483647i, arg_1), ~global0.x);
    var var_0 = Struct_4(arg_1, -(~global0.x), Struct_1(-1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-148f))), select(!select(select(vec4<bool>(true, false, arg_1, true), vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), func_3(Struct_3(vec2<u32>(u_input.a, u_input.a), Struct_2(Struct_1(356f), Struct_1(-1000f), true, u_input.a), arg_1, 0i), 4294967295u, Struct_4(arg_1, 1i, Struct_1(718f), -440f, vec4<bool>(true, arg_1, arg_1, arg_1)), Struct_3(vec2<u32>(13221u, arg_2.x), Struct_2(Struct_1(-1222f), Struct_1(171f), true, u_input.a), false, 2147483647i)), any(vec3<bool>(true, arg_1, arg_1))), !vec4<bool>(!arg_1, true, !arg_1, arg_1 | arg_1), vec4<bool>(arg_1, func_3(Struct_3(arg_2.yy, Struct_2(Struct_1(1633f), Struct_1(-386f), true, 27429u), false, 1277i), ~arg_0, Struct_4(true, 2147483647i, Struct_1(-1586f), 253f, vec4<bool>(false, arg_1, arg_1, false)), Struct_3(vec2<u32>(arg_2.x, 2280u), Struct_2(Struct_1(-1958f), Struct_1(119f), arg_1, u_input.a), arg_1, 2147483647i)).x, global0.x > -global0.x, func_3(Struct_3(arg_2.xz, Struct_2(Struct_1(-1400f), Struct_1(-1475f), arg_1, 4294967295u), arg_1, 0i), 4294967295u, Struct_4(true, global0.x, Struct_1(-633f), -1000f, vec4<bool>(false, arg_1, arg_1, arg_1)), Struct_3(arg_2.zx, Struct_2(Struct_1(176f), Struct_1(619f), false, 1u), true, 0i)).x && arg_1)));
    var var_1 = reverseBits(firstTrailingBit(~abs(vec4<i32>(1353i, var_0.b, var_0.b, 52466i)))) << ((~(vec4<u32>(0u, arg_0, arg_0, arg_2.x) << (vec4<u32>(u_input.a, arg_0, 4294967295u, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(u_input.a, arg_0, arg_0, ~(u_input.a >> (arg_2.x % 32u)))) % vec4<u32>(32u));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1401f))))))), var_0.c, any(var_0.e), u_input.a);
    global0 = vec2<i32>(-(max(var_1.x, var_0.b | var_0.b) >> (u_input.a % 32u)), global0.x);
    return var_0.e;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = global0.x;
    var_0 = -2147483647i;
    var var_2 = select(select(func_2(~countOneBits(arg_1), arg_0 || true, ~vec4<u32>(u_input.a, u_input.a, u_input.a, 107511u)), vec4<bool>(arg_0 || any(vec2<bool>(arg_0, arg_0)), false && func_2(u_input.a, arg_0, vec4<u32>(67447u, 10534u, u_input.a, 42247u)).x, false, arg_0), !select(vec4<bool>(arg_0, arg_0, arg_0, false), !vec4<bool>(false, arg_0, false, true), select(arg_0, true, arg_0))), !vec4<bool>(all(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, false))), arg_0, false, arg_0), vec4<bool>(~global0.x < 5263i, !(!(!arg_0)), true, true));
    global0 = _wgslsmith_sub_vec2_i32(~reverseBits(-vec2<i32>(arg_3, 40454i)), abs(~_wgslsmith_add_vec2_i32(vec2<i32>(arg_3, -1i), vec2<i32>(global0.x, -30559i)))) & vec2<i32>(global0.x, arg_3);
    return Struct_1(-159f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1038f), _wgslsmith_f_op_f32(286f * 1173f)))))), func_1(true, firstLeadingBit(~u_input.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-750f * 524f))), firstLeadingBit(-6827i)), true, u_input.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(461f - var_0.a.a), var_0.a.a));
    var var_2 = Struct_4(true, 1i, Struct_1(_wgslsmith_f_op_f32(trunc(var_1.x))), var_0.b.a, vec4<bool>(var_0.c, var_0.c, func_2(countOneBits(min(0u, 47847u)), func_3(Struct_3(vec2<u32>(u_input.a, u_input.a), Struct_2(var_0.a, Struct_1(var_0.b.a), var_0.c, u_input.a), var_0.c, global0.x), 1u, Struct_4(var_0.c, -1i, Struct_1(-423f), -138f, vec4<bool>(var_0.c, var_0.c, var_0.c, false)), Struct_3(vec2<u32>(u_input.a, 63739u), Struct_2(var_0.a, Struct_1(var_0.a.a), true, u_input.a), true, global0.x)).x, firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 37800u, 0u, u_input.a), vec4<u32>(4294967295u, 1u, var_0.d, 41645u)))).x, all(!vec3<bool>(var_0.c, true, var_0.c)) | !any(vec3<bool>(true, false, var_0.c))));
    global0 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(33186i, global0.x), vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, var_2.b)) ^ select(vec2<i32>(var_2.b, -19611i), vec2<i32>(global0.x, 2147483647i), var_0.c))), vec2<i32>(95718i, -_wgslsmith_mult_i32(~21400i, max(var_2.b, 1i))), firstTrailingBit(firstLeadingBit(countOneBits(firstLeadingBit(vec2<i32>(global0.x, -12679i))))));
    let var_3 = vec2<u32>(24980u, 26706u & ~countOneBits(1u >> (var_0.d % 32u)));
    var var_4 = Struct_2(var_2.c, var_2.c, true, var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, var_0.d, var_0.d, 26853u), ~vec4<u32>(86922u, 9237u, var_4.d, u_input.a)), abs(vec4<u32>(4294967295u, 36472u, var_4.d, 16050u)) & _wgslsmith_add_vec4_u32(vec4<u32>(12765u, 0u, 0u, 78028u), vec4<u32>(6897u, 12272u, 0u, u_input.a))) & vec4<u32>(var_0.d, ~var_4.d, ~firstTrailingBit(0u), ~(~var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1228f)))))) + _wgslsmith_div_f32(-330f, _wgslsmith_f_op_f32(f32(-1f) * -632f))), var_3, -(~(~vec2<i32>(-14889i, -2147483647i))));
}

