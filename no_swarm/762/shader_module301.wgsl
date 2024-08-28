struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    return Struct_2(Struct_1(1i, firstLeadingBit(~firstTrailingBit(39342i))), u_input.b.x);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> vec4<bool> {
    var var_0 = arg_2.x;
    var var_1 = Struct_5(Struct_3(arg_0, ~1u, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.a, arg_0.a.a, arg_0.a.a, arg_1) & vec4<i32>(arg_1, 65036i, 463i, -2147483647i), min(vec4<i32>(arg_0.a.a, arg_1, -2147483647i, arg_0.a.a), vec4<i32>(arg_0.a.b, arg_1, arg_1, 75315i))), arg_1 >> (arg_3 % 32u)), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, select(~u_input.b, firstLeadingBit(vec4<u32>(33690u, 13328u, 4294967295u, arg_3)), vec4<bool>(false, true, false, true)))), Struct_4(Struct_2(Struct_1(-57398i, ~arg_0.a.b), _wgslsmith_mult_u32(min(1u, arg_3), firstTrailingBit(arg_3)))), u_input.b.wxx, !(!vec4<bool>(arg_0.a.a == arg_0.a.b, true, all(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, false, false)))));
    var var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(arg_1, -30210i, arg_1, var_1.a.a.a.a), vec4<i32>(~arg_0.a.a, -22338i, 1i, -2147483647i)), -(vec4<i32>(arg_0.a.a, 2147483647i, arg_1, -17366i) >> ((u_input.b ^ vec4<u32>(arg_0.b, 1u, arg_0.b, 4294967295u)) % vec4<u32>(32u)))), max(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -5961i, arg_1), vec4<i32>(44661i, -14813i, 0i, arg_1)), -(~vec4<i32>(-2147483647i, arg_0.a.b, 11393i, -1i))), ~(-vec4<i32>(1820i, var_1.b.a.a.a, 2147483647i, -2147483647i)) >> (~(vec4<u32>(u_input.a.x, 34928u, 4294967295u, 12284u) >> (vec4<u32>(0u, 89436u, 19447u, var_1.a.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    var_1 = Struct_5(Struct_3(Struct_2(arg_0.a, ~arg_0.b), u_input.a.x, Struct_1(1i ^ ~var_1.a.c.b, _wgslsmith_div_i32(arg_0.a.a, var_2.x)), vec4<u32>(u_input.b.x, 0u, _wgslsmith_add_u32(var_1.c.x ^ 4294967295u, arg_0.b), 4294967295u)), var_1.b, u_input.b.xwx, vec4<bool>(true, !all(var_1.d.wzz), any(select(select(vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), var_1.d, false), vec4<bool>(var_1.d.x, var_1.d.x, true, false), var_1.d.x)), true && var_1.d.x));
    var var_3 = Struct_4(Struct_2(Struct_1(arg_1, abs(select(-22099i, arg_1, var_1.d.x))), arg_0.b | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.c.x), ~vec2<u32>(87810u, var_1.a.b))));
    return select(!(!var_1.d), select(vec4<bool>(true, !all(var_1.d), var_1.d.x || select(var_1.d.x, false, true), false), !select(select(var_1.d, vec4<bool>(var_1.d.x, var_1.d.x, var_1.d.x, var_1.d.x), var_1.d.x), select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_1.d.x, false, var_1.d.x), vec4<bool>(false, var_1.d.x, var_1.d.x, false)), select(var_1.d, vec4<bool>(var_1.d.x, true, var_1.d.x, var_1.d.x), var_1.d)), !var_1.d.x), !vec4<bool>(any(vec4<bool>(var_1.d.x, true, true, var_1.d.x)), true, true, _wgslsmith_f_op_f32(f32(-1f) * -2065f) >= arg_2.x));
}

fn func_1() -> Struct_2 {
    var var_0 = true;
    let var_1 = vec2<bool>(any(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true)))), any(!func_3(func_2(false), _wgslsmith_clamp_i32(0i, -2147483647i, -24408i), vec2<f32>(1532f, -1052f), 1u)));
    var_0 = true;
    var var_2 = func_2(true).a;
    let var_3 = 4294967295u;
    return Struct_2(func_2(all(vec2<bool>(!var_1.x, any(vec4<bool>(var_1.x, var_1.x, false, var_1.x))))).a, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(727f - -490f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-331f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-135f, 1124f, false)))))), _wgslsmith_f_op_f32(115f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1116f), -1513f, true)) - 312f)));
    var var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + -990f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1302f + 1000f) * _wgslsmith_f_op_f32(-836f + var_1))), 1268f)));
    let var_4 = Struct_5(Struct_3(Struct_2(var_0.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, var_0.b), u_input.b)), var_0.b, Struct_1(var_0.a.b, -66688i), select(~vec4<u32>(7983u, var_0.b, u_input.a.x, var_0.b) ^ ~vec4<u32>(1u, var_0.b, 25670u, 0u), ~(vec4<u32>(79972u, u_input.b.x, var_0.b, var_0.b) & vec4<u32>(38897u, u_input.a.x, var_0.b, var_0.b)), vec4<bool>(true, false, var_0.a.a == var_0.a.b, all(vec3<bool>(true, true, false))))), Struct_4(func_2(any(vec3<bool>(true, false, false)))), u_input.b.wxz, !func_3(var_0, func_1().a.a ^ firstTrailingBit(var_0.a.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 579f) * vec2<f32>(var_3.x, -1459f)))), ~var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b, max(countOneBits(~_wgslsmith_sub_u32(1425u, u_input.b.x)), 10084u));
}

