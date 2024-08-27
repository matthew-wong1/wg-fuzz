struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -60256i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<f32>) -> vec2<i32> {
    global0 = -47658i;
    var var_0 = Struct_1(-(~(-9193i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, -1054f, arg_1.b.x, 2283f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-847f, arg_2.x, arg_0, -710f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(390f, arg_2.x, arg_3.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(min(arg_2, vec4<f32>(arg_2.x, -317f, arg_1.b.x, arg_0)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1233f, arg_2.x, arg_2.x, -551f))))), true && (arg_2.x <= arg_3.x)))));
    var var_1 = countOneBits(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(46303i), 35959i), -1i, var_0.a, ~(-2147483647i)));
    let var_2 = arg_1;
    global0 = 1i;
    return ~vec2<i32>(-2147483647i, var_0.a);
}

fn func_2(arg_0: u32, arg_1: u32) -> u32 {
    global0 = 324i;
    var var_0 = Struct_1(_wgslsmith_clamp_i32(u_input.a ^ u_input.a, _wgslsmith_mod_i32(-(~u_input.a), _wgslsmith_mod_i32(countOneBits(17771i), ~(-11613i))), -(-u_input.a ^ u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, -1000f, _wgslsmith_div_f32(1000f, 329f), _wgslsmith_f_op_f32(-978f + -695f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(430f, 472f, 400f, 201f) - vec4<f32>(-440f, 1000f, -1043f, 2010f))))))));
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(-1i) ^ var_0.a, -u_input.a << (arg_0 % 32u), -33936i, 0i), vec4<i32>(var_0.a, 36551i, -38486i, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(var_0.a, -2147483647i)), func_3(var_0.b.x, Struct_1(0i, var_0.b), vec4<f32>(var_0.b.x, var_0.b.x, 1150f, -166f), vec3<f32>(-270f, var_0.b.x, 772f))))), min(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-28616i, -12192i), vec2<i32>(45300i, -1i)), _wgslsmith_div_i32(1i, -14948i), _wgslsmith_add_i32(-1i, u_input.a), ~u_input.a), abs(select(firstTrailingBit(vec4<i32>(var_0.a, 0i, u_input.a, var_0.a)), vec4<i32>(var_0.a, u_input.a, u_input.a, -37819i) & vec4<i32>(u_input.a, -1i, var_0.a, u_input.a), true))));
    let var_2 = _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(arg_0, _wgslsmith_add_u32(arg_0, 29348u), ~1u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 25809u, 0u) & vec3<u32>(arg_1, arg_0, arg_0), reverseBits(vec3<u32>(arg_1, 73993u, 0u))), ~abs(vec3<u32>(33297u, arg_1, arg_1)), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false))) << (abs(~(vec3<u32>(arg_1, arg_1, 4294967295u) >> (vec3<u32>(arg_0, arg_1, arg_1) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    var var_3 = Struct_1(0i, var_0.b);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 1u), arg_1, arg_0, abs(~6892u)), vec4<u32>(0u, arg_0, 10877u ^ arg_1, arg_1));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(1u, 1u), func_2(1u, _wgslsmith_div_u32(0u, select(abs(4294967295u), abs(4294967295u), all(vec2<bool>(false, true))))));
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, any(vec2<bool>(true, true)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, true, false)), false)), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true))), !vec2<bool>(true, !any(vec2<bool>(false, false))));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, i32(-1i) * -32124i)), vec3<i32>(u_input.a, u_input.a, 42736i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1485f, 524f, _wgslsmith_f_op_f32(1050f + 500f), _wgslsmith_f_op_f32(ceil(-1084f))))));
    var var_3 = var_2.b.zx;
    let var_4 = !(!select(false, var_1.x, (var_1.x && false) && false));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1146f))))), !(2147483647i <= u_input.a) && true)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))))));
    var var_1 = func_1();
    var var_2 = -1133f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b.x)));
    let var_3 = vec2<f32>(var_1.b.x, var_1.b.x);
    var_0 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~1u), 1u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(13076u, 0u))), _wgslsmith_f_op_f32(-var_1.b.x), firstTrailingBit(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a, -17160i, var_1.a), vec3<i32>(9303i, u_input.a, u_input.a) >> (vec3<u32>(1u, 28127u, 17830u) % vec3<u32>(32u)), -vec3<i32>(64026i, var_1.a, u_input.a))) & select(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a, var_1.a, var_1.a), vec3<i32>(u_input.a, u_input.a, var_1.a) | vec3<i32>(u_input.a, 44564i, 2147483647i)), ~(vec3<i32>(u_input.a, 2147483647i, var_1.a) >> (vec3<u32>(0u, 30065u, 15593u) % vec3<u32>(32u))), true));
}

