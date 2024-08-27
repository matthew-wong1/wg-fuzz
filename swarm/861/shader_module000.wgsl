struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> i32 {
    return -33942i;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(140f - 195f), -1000f, _wgslsmith_f_op_f32(-1314f - -249f), -422f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1899f, -386f, 112f, -1138f), vec4<f32>(-1028f, 532f, 456f, -1991f))) - vec4<f32>(-283f, -198f, -187f, -182f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-549f, 986f, 1000f, 841f) * vec4<f32>(720f, 821f, 264f, -851f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-657f, -1107f, -858f, 220f))), true)))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(-arg_0, ~(-18029i)), _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, -24677i, 0i, 38417i), vec4<i32>(arg_0, arg_0, 4758i, arg_0)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 6673i, -26948i, arg_0), -vec4<i32>(7810i, arg_0, arg_0, arg_0))), max(arg_0, func_3())), ~(vec3<i32>(arg_0, -arg_0, 1i) << (_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(21557u, 0u, 41837u), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)), vec3<u32>(u_input.b, u_input.a.x, 65248u)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1123f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), 1272f));
    let var_3 = Struct_2(~12920u, !vec3<bool>(true, all(vec2<bool>(true, true)), select(1451f < var_0.x, true, true)), Struct_1(_wgslsmith_mod_vec4_i32(-(vec4<i32>(arg_0, 0i, arg_0, -32850i) >> (vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.b) % vec4<u32>(32u))), vec4<i32>(~arg_0, var_1, arg_0, var_1)), vec2<bool>(true, true), vec2<bool>(false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -153f)))));
    var var_4 = firstTrailingBit(~_wgslsmith_add_vec4_u32((vec4<u32>(0u, 1u, var_3.a, 1049u) & vec4<u32>(0u, u_input.a.x, 29181u, 4294967295u)) | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, u_input.a.x, u_input.b), vec4<u32>(var_3.a, 29564u, var_3.a, u_input.a.x), vec4<u32>(2400u, 4294967295u, 24594u, 1u)), vec4<u32>(103002u, ~2784u, 0u, ~u_input.b)));
    return any(select(vec3<bool>(all(var_3.b), false, u_input.a.x >= 0u), vec3<bool>(var_3.c.c.x, _wgslsmith_clamp_i32(var_1, -2147483647i, -43949i) == (i32(-1i) * -14172i), true), var_3.c.c.x || select(true, any(vec2<bool>(var_3.b.x, var_3.b.x)), true)));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = !(!any(arg_2.b) | (!arg_2.c.b.x != func_2(1i))) && arg_2.c.b.x;
    let var_1 = arg_2.b;
    let var_2 = u_input.a;
    var var_3 = ~(~arg_2.c.a.ywx);
    var var_4 = _wgslsmith_sub_i32(var_3.x, _wgslsmith_dot_vec3_i32(arg_2.c.a.yww, vec3<i32>(~(~(-2147483647i)), _wgslsmith_sub_i32(46147i, _wgslsmith_add_i32(0i, 2147483647i)), -(~arg_2.c.a.x))));
    return !vec4<bool>(!(!var_0), any(vec4<bool>(any(arg_2.b), var_1.x, true, arg_0 > -2147483647i)), all(!vec4<bool>(false, arg_2.c.b.x, true, false)), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec4<bool>(false, true, true, true), func_1(-1i << (u_input.b % 32u), ~26807u, Struct_2(u_input.b, vec3<bool>(false, true, false), Struct_1(vec4<i32>(-13988i, 36109i, -16585i, 5962i), vec2<bool>(false, false), vec2<bool>(true, true)), 1465f), -510f), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))));
    let var_1 = 1i;
    let var_2 = firstTrailingBit(firstLeadingBit(-min(vec3<i32>(2147483647i, 2147483647i, -1i) & vec3<i32>(0i, -2147483647i, var_1), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1, -9854i, -1i), vec3<i32>(0i, 1i, var_1)))));
    var var_3 = Struct_2(~(0u << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(40693u, u_input.b, 4294967295u), vec3<u32>(87457u, 107103u, 55563u)), _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 4294967295u) % 32u)), var_0.ywx, Struct_1((vec4<i32>(var_1, var_1, var_2.x, var_1) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 34358i, var_1, var_1), vec4<i32>(74026i, 0i, var_2.x, var_1))) ^ vec4<i32>(-18976i, firstLeadingBit(var_1), ~var_2.x, -1i), select(var_0.yy, var_0.zy, !(!var_0.zy)), !vec2<bool>(true, false && var_0.x)), 1000f);
    let var_4 = vec3<u32>(u_input.b, var_3.a, 0u);
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(-47750i))), i32(-1i) * -25236i);
}

