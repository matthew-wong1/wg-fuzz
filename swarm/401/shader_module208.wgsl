struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_3.a;
    global0 = -arg_3.a.a;
    var_0 = Struct_1(_wgslsmith_mult_vec4_i32(select(min(-vec4<i32>(1i, var_0.a.x, -2147483647i, u_input.a), -var_0.a), vec4<i32>(1i, arg_3.a.a.x, arg_3.b.x, reverseBits(u_input.a)), !(0i != u_input.b)), vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.b.x, 1i, -1i, global0.x), arg_3.a.a), -40012i, var_0.a.x & 2147483647i, -(~(-45284i)))), ~reverseBits(~(var_0.b | vec3<u32>(50585u, arg_3.a.b.x, var_0.b.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2279f, _wgslsmith_f_op_f32(step(arg_3.a.c.x, arg_3.a.c.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_3.a.c.x, 1202f))), var_0.c), arg_3.a.c), vec4<bool>(all(arg_3.a.e.xyy), var_0.e.x, true, any(!(!arg_0))));
    let var_1 = var_0.d;
    let var_2 = arg_3.a;
    return vec4<i32>(-1i) * -vec4<i32>(0i, -20259i, -(i32(-1i) * -11233i), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_1.x), vec2<i32>(var_0.a.x, global0.x))));
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = any(!vec4<bool>(true, arg_0.e.x, arg_0.e.x, arg_0.e.x));
    let var_1 = arg_0.e.www;
    let var_2 = arg_0.c.x;
    return vec4<i32>(2147483647i, arg_0.a.x, -2147483647i, arg_0.a.x);
}

fn func_2() -> vec3<u32> {
    global0 = _wgslsmith_clamp_vec4_i32(func_4(Struct_1(firstTrailingBit(func_3(vec2<bool>(true, false), global0.zyz, true, Struct_2(Struct_1(vec4<i32>(10641i, 14075i, u_input.b, 1448i), vec3<u32>(24528u, 68443u, 504u), vec2<f32>(1348f, 1574f), vec2<f32>(1000f, 1643f), vec4<bool>(true, false, false, false)), vec2<i32>(u_input.a, 1i)))), vec3<u32>(1u, 1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(2650f - 207f), -419f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1954f, 191f))), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, global0.x, global0.x), max(vec4<i32>(0i, -66476i, 2147483647i, -53726i), vec4<i32>(global0.x, 9205i, global0.x, 26016i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.b, global0.x), vec4<i32>(global0.x, -6225i, 1i, 1i))) >> (vec4<u32>(4294967295u, 14940u, min(92000u, 0u), 19852u) % vec4<u32>(32u)), abs(vec4<i32>(1i, 2147483647i, u_input.b, 20046i)) & select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global0.x, 17811i, -1i), vec4<i32>(2147483647i, -1i, global0.x, u_input.b)), func_4(Struct_1(vec4<i32>(-1i, 56808i, 2147483647i, u_input.b), vec3<u32>(4294967295u, 4294967295u, 23654u), vec2<f32>(-968f, -877f), vec2<f32>(-1000f, 672f), vec4<bool>(false, true, false, false))), vec4<bool>(false, false, true, false)), true), func_4(Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, global0.x), global0.zww), -u_input.b, _wgslsmith_sub_i32(global0.x, -10006i), global0.x << (38556u % 32u)), vec3<u32>(_wgslsmith_mod_u32(12349u, 1u), max(85128u, 4294967295u), ~14183u), vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-665f, 696f))), vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))))));
    return ~(~vec3<u32>(_wgslsmith_mult_u32(~4294967295u, ~82356u), 0u, 4294967295u));
}

fn func_1() -> i32 {
    let var_0 = select(-15298i, -2147483647i, true);
    let var_1 = 1u;
    var var_2 = Struct_1(vec4<i32>(firstLeadingBit(var_0), 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0, -2147483647i, 0i), vec4<i32>(global0.x, var_0, var_0, global0.x)), ~(i32(-1i) * -51170i)), _wgslsmith_mod_vec3_u32(firstLeadingBit(func_2()), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 0u, min(var_1, var_1)), vec3<u32>(firstTrailingBit(0u), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1, var_1, var_1), vec4<u32>(var_1, 113088u, var_1, var_1))), _wgslsmith_div_vec3_u32(~vec3<u32>(71202u, var_1, var_1), firstTrailingBit(vec3<u32>(0u, 1u, var_1))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -558f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-383f + 1176f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-931f, -147f)))))), select(select(vec4<bool>(true, any(vec3<bool>(false, false, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))), true));
    let var_3 = ~_wgslsmith_mult_vec3_i32(var_2.a.xwy, (vec3<i32>(-1i) * -vec3<i32>(global0.x, 2147483647i, -2147483647i)) ^ global0.wwx);
    let var_4 = vec3<bool>(!var_2.e.x, var_2.e.x, true);
    return countOneBits(global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(firstTrailingBit(vec4<i32>(u_input.b, func_1(), reverseBits(1i), i32(-1i) * -global0.x)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.b, -1i), vec4<i32>(35619i, u_input.a, global0.x, 2159i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<i32>(-u_input.a, _wgslsmith_div_i32(-7958i, global0.x), -u_input.b, 0i), func_4(Struct_1(vec4<i32>(0i, -11518i, global0.x, -61032i), vec3<u32>(1u, 26095u, 20534u), vec2<f32>(-856f, -258f), vec2<f32>(-2671f, 1644f), vec4<bool>(true, true, true, true)))), _wgslsmith_mod_vec4_i32(vec4<i32>(20369i, 27903i | global0.x, ~u_input.a, global0.x), vec4<i32>(u_input.a, ~2147483647i, u_input.a | u_input.a, min(1i, 2147483647i)))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(548f, -204f, -1398f));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, -25035i, u_input.a, global0.x) << (vec4<u32>(0u, 1u, 0u, 36621u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.a, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-35057i, 1i, u_input.b, u_input.b), vec4<i32>(u_input.a, -2147483647i, global0.x, 0i)))), firstTrailingBit(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.yy))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-152f))))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, 1196f < var_0.x, all(vec4<bool>(true, false, true, false)), false), !any(vec2<bool>(false, false)))), global0.wy);
    var var_2 = Struct_2(var_1.a, var_1.a.a.yw);
    var var_3 = Struct_2(Struct_1(select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(var_2.a.a, var_1.a.a), _wgslsmith_clamp_vec4_i32(var_2.a.a, var_1.a.a, var_1.a.a)), vec4<i32>(-19506i, -41564i, ~var_2.a.a.x, ~var_2.a.a.x), select(vec4<bool>(var_2.a.e.x, false, var_2.a.e.x, var_1.a.e.x), var_2.a.e, !var_2.a.e)), ~vec3<u32>(var_1.a.b.x >> (var_2.a.b.x % 32u), firstTrailingBit(var_1.a.b.x), abs(var_2.a.b.x)), var_2.a.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.a.d.x, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.c.x, var_1.a.c.x) * var_1.a.d))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_2.a.c)) * var_1.a.d)), vec4<bool>((-208f != var_1.a.d.x) & true, any(select(var_2.a.e.yx, var_1.a.e.ww, false)), all(var_2.a.e.zz), any(var_2.a.e.zwz))), global0.yz);
    let var_4 = ~(~_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, var_2.a.b.x, 53726u), 4294967295u));
    let var_5 = var_1.a.a.xyy;
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-259f, var_1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1589f, var_2.a.d.x, var_2.a.c.x) + vec3<f32>(505f, -1204f, 559f))))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.d.x) * _wgslsmith_f_op_f32(floor(var_3.a.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -1954f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a.d.x - 1751f), _wgslsmith_f_op_f32(f32(-1f) * -763f), !var_2.a.e.x)), var_3.a.c.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(322f)), u_input.a);
}

