struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6112u;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(-2147483647i, all(!vec3<bool>(arg_1.b || false, all(vec3<bool>(arg_1.b, true, true)), true)), arg_0.c);
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1792f, 293f, arg_0.c.x))))))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(337f - _wgslsmith_f_op_f32(632f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(round(670f))) * var_0.c.x), 1000f, _wgslsmith_f_op_f32(-301f + _wgslsmith_f_op_f32(-var_0.c.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.c.x)), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-857f))) + -1398f))));
    return -1000f;
}

fn func_2() -> Struct_1 {
    var var_0 = true;
    var var_1 = Struct_1(-24178i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 11550i, u_input.e.x), vec4<i32>(u_input.e.x, u_input.e.x, 0i, u_input.e.x)), -568i, firstLeadingBit(u_input.e.x)), ~(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, -1i) | vec4<i32>(u_input.e.x, 2147483647i, 11593i, -1i))) <= u_input.e.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(119f, _wgslsmith_f_op_f32(func_3(Struct_1(u_input.e.x, true, vec2<f32>(1332f, 210f)), Struct_1(u_input.e.x, true, vec2<f32>(802f, -670f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(963f, -1736f)))))));
    global0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.yy, select(min(u_input.b.yx, u_input.b.zy), u_input.b.zz, vec2<bool>(false, false))), select(~select(~vec2<u32>(u_input.a, u_input.c), max(vec2<u32>(u_input.b.x, u_input.c), u_input.b.xx), true), ~reverseBits(vec2<u32>(u_input.b.x, u_input.a)) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(24786u, 0u), vec2<u32>(38062u, u_input.a)), ~u_input.b.xy), vec2<bool>(select(false, var_1.b, var_1.b) & (var_1.b || var_1.b), var_1.b)));
    let var_2 = Struct_1(~u_input.e.x, !(_wgslsmith_mod_i32(~var_1.a, u_input.e.x) > -89437i), vec2<f32>(-708f, _wgslsmith_f_op_f32(var_1.c.x - -1413f)));
    var var_3 = var_2.a;
    return var_2;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(-1i, !all(vec2<bool>(arg_1.b, arg_1.b)), arg_1.c);
    var_0 = func_2();
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(ceil(-886f));
    let var_3 = arg_1.c.x;
    return false;
}

fn func_1() -> bool {
    global0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c, u_input.b.x), 1u << (~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a)), select(vec4<u32>(3562u, 3391u, 37361u, 10439u), vec4<u32>(21012u, u_input.c, 74419u, 2107u), false)) % 32u));
    global0 = ~_wgslsmith_mult_u32(countOneBits((u_input.b.x << (19847u % 32u)) << ((u_input.c << (59294u % 32u)) % 32u)), ~_wgslsmith_div_u32(u_input.d, 141762u));
    var var_0 = 749i ^ u_input.e.x;
    let var_1 = min(u_input.b.x, ~(~reverseBits(select(u_input.d, 42609u, false))));
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(min(-2147483647i, 27553i), ~(~_wgslsmith_add_i32(-2147483647i, u_input.e.x)), u_input.e.x, u_input.e.x), vec4<i32>(35781i, 34942i, abs(0i), 0i));
    return func_4(_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_2.x, 1i, var_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 65749i, 66022i, u_input.e.x), vec4<i32>(-14663i, u_input.e.x, 0i, var_2.x)))), select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, u_input.e.x, u_input.e.x, u_input.e.x), vec4<i32>(var_2.x, var_2.x, u_input.e.x, var_2.x)), vec4<i32>(1i, 1i, 0i, 1i), vec4<bool>(true, true, true, true)) & vec4<i32>(u_input.e.x, 0i, var_2.x, u_input.e.x & u_input.e.x), countOneBits(max(vec4<i32>(var_2.x, u_input.e.x, 9544i, u_input.e.x), ~vec4<i32>(var_2.x, 2147483647i, 43963i, var_2.x)))), func_2(), -(~vec3<i32>(-u_input.e.x, _wgslsmith_add_i32(u_input.e.x, 0i), -10804i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(func_1(), all(select(vec2<bool>(u_input.e.x == -21010i, func_1()), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1412f + 384f))), -1260f, _wgslsmith_f_op_f32(-1112f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-543f * -2789f) - _wgslsmith_div_f32(2954f, -1481f)))), 1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c, 4294967295u, 0u, 22364u) & vec4<u32>(0u, 1u, 56707u, 37023u)) >> (_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, 4294967295u, 4294967295u, 24564u)), vec4<u32>(u_input.a, u_input.c, u_input.d, u_input.b.x)) % vec4<u32>(32u)), (vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c) << (abs(vec4<u32>(4294967295u, u_input.c, u_input.b.x, 4294967295u)) % vec4<u32>(32u))) << (firstTrailingBit(~vec4<u32>(u_input.c, u_input.a, 41570u, u_input.d)) % vec4<u32>(32u))));
}

