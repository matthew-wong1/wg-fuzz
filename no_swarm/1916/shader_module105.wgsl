struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), 2147483647i, 1i, i32(-2147483648));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = vec3<u32>(39657u >> (u_input.b % 32u), firstLeadingBit(~(~arg_0.d.a.x)), 27351u) | _wgslsmith_sub_vec3_u32(firstLeadingBit((vec3<u32>(var_0.d.a.x, u_input.b, arg_2.a.x) << (vec3<u32>(57291u, 9644u, 12727u) % vec3<u32>(32u))) << (vec3<u32>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x) % vec3<u32>(32u))), ~vec3<u32>(4294967295u, min(79602u, 41001u), var_0.d.a.x));
    let var_3 = 160f;
    let var_4 = !(!(!select(select(vec4<bool>(false, true, var_0.d.b.a, true), vec4<bool>(arg_2.b.a, arg_2.b.a, false, true), vec4<bool>(false, var_0.d.b.a, var_1.d.c.c, true)), !vec4<bool>(var_0.d.b.c, true, var_0.d.c.a, false), vec4<bool>(false, var_1.d.b.a, false, arg_2.c.c))));
    return !vec3<bool>((-565f < _wgslsmith_f_op_f32(sign(arg_2.c.b))) | var_4.x, all(var_4.zxx), all(select(select(var_4.wz, var_4.zx, false), var_4.wy, true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), -1149f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), true)), vec2<f32>(1057f, 697f)), -global0.wwz, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(arg_1 * arg_1)))), Struct_2(arg_0.wy ^ _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 19192u), vec2<u32>(8439u, arg_0.x), ~vec2<u32>(u_input.b, 1u)), Struct_1(any(vec2<bool>(false, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) - _wgslsmith_f_op_f32(select(arg_1, 1000f, false))), true), Struct_1(true, arg_1, true)));
    global0 = vec4<i32>(-14406i, 0i, select(_wgslsmith_mult_i32(-2106i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.b.xz, vec2<i32>(global0.x, -1i)), vec2<i32>(-1i, -19934i) ^ global0.yz)), var_0.b.x, false), ~var_0.b.x);
    let var_1 = _wgslsmith_div_f32(var_0.a.x, arg_1);
    var var_2 = vec2<bool>(u_input.b < _wgslsmith_mod_u32(~firstTrailingBit(var_0.d.a.x), arg_0.x), !var_0.d.c.c);
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.c))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) * _wgslsmith_f_op_f32(1221f - -1559f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1)), -1000f)))), -select(select(global0.wyw, _wgslsmith_div_vec3_i32(global0.wyw, global0.zyx), func_3(Struct_4(var_0.a, var_0.b, vec2<f32>(arg_1, var_1), var_0.d), vec2<i32>(-42124i, var_0.b.x), var_0.d)), var_0.b, 21015u >= select(arg_0.x, arg_0.x, var_0.d.c.a)), var_0.a, Struct_2(~vec2<u32>(arg_0.x, ~var_0.d.a.x), Struct_1(all(select(vec2<bool>(true, false), vec2<bool>(false, var_2.x), vec2<bool>(true, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2505f) * _wgslsmith_f_op_f32(abs(-623f))), var_2.x), var_0.d.b));
    return var_0.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_5) -> vec4<i32> {
    let var_0 = func_2(~vec4<u32>(_wgslsmith_mult_u32(~arg_3.e.a.x, 71096u), arg_2.a.x, 1u, _wgslsmith_dot_vec4_u32(arg_3.c << (arg_3.c % vec4<u32>(32u)), vec4<u32>(0u, arg_3.b, arg_1, arg_1))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1235f + arg_3.e.b.b)), arg_2.b.a)))));
    let var_1 = func_2(~firstTrailingBit(arg_3.c), _wgslsmith_f_op_f32(f32(-1f) * -458f));
    global0 = _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(abs(_wgslsmith_mod_i32(u_input.a, global0.x)), global0.x, 33188i, abs(~1i))), vec4<i32>(~firstTrailingBit(-5271i), -52841i, global0.x, ~global0.x) ^ _wgslsmith_clamp_vec4_i32(min(max(vec4<i32>(2147483647i, 24584i, u_input.a, -1i), vec4<i32>(34652i, -1i, 1i, global0.x)), max(vec4<i32>(u_input.a, u_input.a, global0.x, -24282i), vec4<i32>(global0.x, 2147483647i, u_input.a, -1i))), -firstTrailingBit(vec4<i32>(u_input.a, -6370i, global0.x, -1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-672i, -1i, u_input.a), global0.zxx), 1i, select(global0.x, 1i, true), select(-24404i, u_input.a, false))));
    let var_2 = ~(-1327i);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-905f, 1099f, -323f, -197f))))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.b, -406f, 945f, var_1.c.b) + vec4<f32>(-790f, 1000f, 956f, var_1.b.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(732f, 772f, -1077f, arg_3.d.b.b), vec4<f32>(arg_2.c.b, arg_3.e.c.b, 137f, -826f))), arg_2.b.c | arg_0.x))), vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.d.c.b, -1356f) - 1220f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.a.x * -1053f))), _wgslsmith_div_f32(1422f, _wgslsmith_f_op_f32(max(var_0.c.b, var_1.c.b))))));
    return -_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_2, 2147483647i, global0.x, -15835i), ~vec4<i32>(-11445i, 1566i, u_input.a, global0.x)), vec4<i32>(-1i, global0.x, -2147483647i >> (min(arg_3.e.a.x, var_0.a.x) % 32u), var_2));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(vec4<i32>(global0.x, global0.x, (global0.x ^ -1i) & _wgslsmith_dot_vec2_i32(global0.yw, global0.xw), 1i) | _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(5674i, u_input.a, 53494i, 0i), vec4<i32>(1i, u_input.a, global0.x, 0i)), func_1(vec2<bool>(true, true), 0u, Struct_2(vec2<u32>(0u, u_input.b), Struct_1(true, 467f, false), Struct_1(false, 1590f, false)), Struct_5(vec3<f32>(-1000f, -486f, 1000f), 38959u, vec4<u32>(u_input.b, u_input.c, 40496u, 77857u), Struct_2(vec2<u32>(u_input.b, 4294967295u), Struct_1(true, 1079f, true), Struct_1(false, 1087f, true)), Struct_2(vec2<u32>(u_input.b, u_input.c), Struct_1(true, -308f, false), Struct_1(true, 1000f, true))))));
    let var_0 = global0.xzx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2028f - _wgslsmith_div_f32(-213f, 1638f)))));
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(~vec4<u32>(0u, 0u, 1u, u_input.c), _wgslsmith_f_op_f32(ceil(-535f))).c.b))));
    let var_2 = Struct_2(abs(~reverseBits(~vec2<u32>(4294967295u, u_input.c))), Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -816f))), false), Struct_1(false, 687f, true));
    let var_3 = _wgslsmith_clamp_vec3_i32(-firstLeadingBit(vec3<i32>(i32(-1i) * -80333i, var_0.x, ~var_0.x)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 13281i)), ~vec3<i32>(var_0.x, var_0.x, -26655i)), vec3<i32>(1i, var_0.x, global0.x) & vec3<i32>(global0.x, 2147483647i, 27461i), _wgslsmith_mult_vec3_i32(~vec3<i32>(-23783i, -21901i, var_0.x), -vec3<i32>(-25160i, var_0.x, u_input.a))), global0.xyx), vec3<i32>(u_input.a, max(var_0.x, -firstLeadingBit(-20520i)), 63202i));
    let var_4 = _wgslsmith_add_vec2_u32(select(_wgslsmith_clamp_vec2_u32(~var_2.a, var_2.a, ~abs(vec2<u32>(59223u, 4294967295u))), (var_2.a ^ ~var_2.a) | var_2.a, select(all(select(vec4<bool>(true, var_2.c.c, false, true), vec4<bool>(true, var_2.b.a, var_2.b.c, var_2.b.a), var_2.c.c)), any(!vec2<bool>(false, var_2.c.c)), any(select(vec4<bool>(var_2.b.c, var_2.c.c, var_2.c.a, false), vec4<bool>(true, var_2.c.a, true, false), var_2.b.c)))), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.a, vec2<u32>(23964u, u_input.c)), vec2<u32>(var_2.a.x, 1u)), ~var_2.a));
    let var_5 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1027f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b.b * _wgslsmith_f_op_f32(-var_2.b.b)), func_2(vec4<u32>(9604u, 11276u, u_input.b, var_4.x) | vec4<u32>(var_2.a.x, var_4.x, 4294967295u, 4294967295u), _wgslsmith_f_op_f32(round(-266f))).b.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1452f))))), func_2(vec4<u32>(var_2.a.x, 7975u, var_4.x, 0u) << (abs(vec4<u32>(4294967295u, u_input.b, 28802u, 48493u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.b * 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -926f))).c.b)));
    var var_6 = func_3(Struct_4(_wgslsmith_f_op_vec2_f32(var_5.wy + vec2<f32>(_wgslsmith_f_op_f32(var_2.c.b * var_5.x), _wgslsmith_f_op_f32(trunc(-1458f)))), -(select(vec3<i32>(12732i, 2147483647i, -34424i), global0.zxz, false) ^ select(vec3<i32>(u_input.a, 0i, var_0.x), global0.yyy, var_2.c.a)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, -219f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c.b, var_2.c.b))))), Struct_2(vec2<u32>(var_2.a.x, ~36606u), var_2.b, func_2(vec4<u32>(4294967295u, 28163u, var_4.x, 11637u), _wgslsmith_f_op_f32(f32(-1f) * -1712f)).c)), _wgslsmith_add_vec2_i32(vec2<i32>(-15397i ^ ~var_3.x, 84531i), (var_0.xx | -global0.yx) << (vec2<u32>(~var_4.x, 82127u) % vec2<u32>(32u))), func_2(min(~abs(vec4<u32>(u_input.b, 62449u, var_2.a.x, var_2.a.x)), ~vec4<u32>(16863u, u_input.b, var_2.a.x, var_2.a.x) << (vec4<u32>(26870u, var_4.x, 1u, 22003u) % vec4<u32>(32u))), var_2.c.b)).xy;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a.x, var_2.a.x, 32252u, var_4.x) | vec4<u32>(var_2.a.x, var_4.x, var_4.x, 1u), reverseBits(vec4<u32>(u_input.b, 14687u, u_input.c, u_input.c))) & vec4<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.c, 5412u), ~var_4.x, 28742u >> (var_4.x % 32u))));
}

