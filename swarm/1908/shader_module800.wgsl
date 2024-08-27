struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> i32 {
    let var_0 = Struct_2(Struct_1(abs(-2805i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_1.c.b.x)), -1062f, -748f))), arg_1.c, arg_1.a, Struct_1(-arg_0, vec3<f32>(_wgslsmith_f_op_f32(step(1085f, -1311f)), -1019f, 1000f)), Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.yy, vec2<i32>(1i, u_input.d.x)) | vec2<i32>(arg_0, arg_0), vec2<i32>(2147483647i, _wgslsmith_add_i32(42012i, u_input.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.d.x, -1686f, arg_1.a.b.x))), _wgslsmith_f_op_vec3_f32(-arg_1.e.xwx)))));
    return _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, var_0.c.a, ~firstLeadingBit(arg_0)), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.e.a, 1308i, arg_1.c.a, u_input.c), vec4<i32>(-33557i, 1i, -2147483647i, 18603i)), vec4<i32>(var_0.e.a, 2147483647i, arg_0, arg_0)) >> (u_input.b % 32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = -1i;
    var_0 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_mod_i32(-2147483647i, u_input.d.x ^ _wgslsmith_mult_i32(29091i, u_input.d.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(max(~vec2<i32>(0i, u_input.d.x), ~u_input.d.xy), select(~u_input.d.zy, u_input.d.xx & u_input.d.xy, !vec2<bool>(false, arg_0))), abs(abs(u_input.d.xy))));
    var_0 = _wgslsmith_add_i32(u_input.d.x, _wgslsmith_add_i32(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d.x, -1i), 66833i), u_input.d.x));
    var_0 = u_input.c;
    var var_1 = !vec3<bool>(false, !(func_3(-2147483647i, Struct_3(Struct_1(u_input.d.x, vec3<f32>(2441f, 531f, -486f)), false, Struct_1(15063i, vec3<f32>(-569f, 212f, -150f)), vec3<f32>(-279f, -659f, 255f), vec4<f32>(-1210f, 1200f, -809f, -1000f))) < -u_input.d.x), all(select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, false, arg_0, true), !arg_0)));
    return Struct_1(firstLeadingBit(u_input.d.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(847f, 1357f))))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = arg_2.x;
    var var_1 = 35533u;
    var var_2 = true;
    var_0 = true;
    var_0 = false;
    return func_2(arg_2.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = Struct_4(arg_1, Struct_1(~(-2147483647i), vec3<f32>(-2710f, arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-695f, _wgslsmith_f_op_f32(-func_1(vec2<u32>(0u, 8754u), vec4<f32>(595f, -2686f, arg_1.b.x, arg_1.b.x), vec2<bool>(false, arg_2), arg_1.b.xz).b.x), arg_2))), u_input.d.x);
    var var_1 = -(-func_3(_wgslsmith_sub_i32(0i, -21275i), Struct_3(arg_1, arg_2, Struct_1(-3187i, vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)), vec3<f32>(335f, var_0.b.b.x, -607f), vec4<f32>(var_0.c, -229f, arg_1.b.x, arg_1.b.x))) | func_3(u_input.c, Struct_3(func_2(false), false, var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-224f, arg_1.b.x, arg_1.b.x) - vec3<f32>(-147f, 1000f, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-493f, 1000f, var_0.a.b.x, arg_1.b.x) * vec4<f32>(var_0.b.b.x, arg_1.b.x, var_0.c, arg_1.b.x)))));
    let var_2 = Struct_3(func_1(_wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a, u_input.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.b), u_input.a)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1024f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - _wgslsmith_f_op_f32(sign(-943f))), -323f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - 893f) - var_0.c)), select(select(select(vec2<bool>(false, arg_2), vec2<bool>(true, arg_2), vec2<bool>(true, true)), vec2<bool>(arg_2, true), arg_2), select(!vec2<bool>(true, arg_2), !vec2<bool>(arg_2, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), false)), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(var_0.b.b.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, -811f) - _wgslsmith_f_op_vec2_f32(select(var_0.b.b.xz, vec2<f32>(-168f, arg_1.b.x), true))), select(!vec2<bool>(false, arg_2), vec2<bool>(false, arg_2), any(vec4<bool>(false, false, false, false)))))), !all(select(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(false, arg_2, false), false), !vec3<bool>(arg_2, arg_2, arg_2), false)), func_2(any(select(select(vec4<bool>(arg_2, arg_2, true, true), vec4<bool>(false, true, arg_2, false), arg_2), !vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(exp2(arg_1.b.x)), 300f)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.b.x))), arg_1.b.x)), _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(trunc(var_0.a.b.x))), _wgslsmith_f_op_f32(1095f * -417f), _wgslsmith_f_op_f32(-var_0.a.b.x)));
    var_1 = var_0.d >> (~min(~(~u_input.a.x), _wgslsmith_add_u32(10712u, u_input.b)) % 32u);
    var var_3 = var_2;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.e.x, var_2.c.b.x, arg_2)), _wgslsmith_f_op_f32(step(421f, _wgslsmith_div_f32(var_0.b.b.x, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(step(var_3.a.b.x, 674f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(select(countOneBits(vec4<i32>(12477i, u_input.d.x, 15414i, u_input.d.x)), max(vec4<i32>(u_input.d.x, u_input.d.x, -24741i, 28748i), vec4<i32>(0i, 40809i, u_input.c, 0i)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true)), func_1(u_input.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-105f, -553f, -709f, -167f), vec4<f32>(-499f, -1376f, 504f, 834f))), vec2<bool>(true, true), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -1000f), vec2<f32>(-225f, -1655f))), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(576f, -1803f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -196f), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-718f)))));
    let var_1 = any(vec3<bool>(false, false, !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    var var_2 = Struct_3(func_2(all(vec2<bool>(true, any(vec2<bool>(var_1, false))))), var_1, Struct_1(_wgslsmith_dot_vec2_i32(reverseBits(-u_input.d.xy), u_input.d.xx), vec3<f32>(var_0.x, 743f, var_0.x)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 1399f, var_0.x))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-951f, var_0.x, 1553f), var_0.xyz)))), vec3<f32>(-1037f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), var_0.x))), var_0);
    let var_3 = select(select(select(vec2<bool>(true, var_2.b), select(vec2<bool>(true, var_1), vec2<bool>(var_2.b, var_1), true), !vec2<bool>(var_2.b, var_1)), vec2<bool>(var_2.b, true), any(vec4<bool>(false, var_1, 65575u < u_input.b, false))), select(!vec2<bool>(any(vec3<bool>(true, true, true)), u_input.d.x > var_2.a.a), !vec2<bool>(var_1, var_2.b & var_2.b), var_2.b), vec2<bool>(!var_1, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(u_input.c & 0i) | u_input.d.x, 1i, -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(0i, -15135i), _wgslsmith_sub_i32(reverseBits(u_input.c), var_2.c.a), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, u_input.d.x, -1i, -29712i)), firstTrailingBit(vec4<i32>(0i, 1i, u_input.c, u_input.d.x))))), 820f);
}

