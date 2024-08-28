struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 19167i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> i32 {
    global0 = u_input.a.x;
    global0 = _wgslsmith_add_i32(abs(u_input.c.x), 37873i);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-588f, 2193f)), _wgslsmith_f_op_f32(max(-122f, -1578f)), _wgslsmith_f_op_f32(1121f * 1531f), _wgslsmith_f_op_f32(f32(-1f) * -1406f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(810f, 1000f, -347f, -324f))))), vec3<i32>(firstLeadingBit(-u_input.a.x), min(firstLeadingBit(1i), 1i), -1i));
    var var_1 = !((~(~u_input.b.x) == 4294967295u) || true);
    var_1 = any(!(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)), false)));
    return ~var_0.b.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, u_input.c.x | arg_1.b.x)), vec2<i32>(countOneBits(arg_1.b.x), 38286i)) << (u_input.b.x % 32u);
    global0 = abs(firstTrailingBit(u_input.d));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1.a)) * vec4<f32>(arg_1.a.x, 375f, 273f, _wgslsmith_f_op_f32(min(arg_1.a.x, arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(ceil(-709f)), arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)) * arg_1.a), any(vec3<bool>(true, true, true)))), vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(~16888i, i32(-1i) * -1i, _wgslsmith_mult_i32(arg_1.b.x, arg_1.b.x)), abs(~arg_1.b)), -6464i));
    let var_1 = -(i32(-1i) * -_wgslsmith_mod_i32(~arg_1.b.x, ~2147483647i));
    var var_2 = select(select(select(!vec3<bool>(arg_0, true, false), vec3<bool>(arg_0, u_input.b.x <= u_input.e.x, true), false), !select(!vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(true, arg_0, false), vec3<bool>(false, true, arg_0), false), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, true), vec3<bool>(true, true, false))), select(vec3<bool>(any(vec3<bool>(arg_0, arg_0, arg_0)), arg_0, u_input.e.x <= u_input.b.x), select(!vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, arg_0), false), !vec3<bool>(arg_0, arg_0, true)), select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, true), vec3<bool>(false, arg_0, false)), select(vec3<bool>(true, true, arg_0), vec3<bool>(false, arg_0, true), true), select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0))))), select(vec3<bool>(any(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, true), arg_0)), true, true), !select(vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0), true), !vec3<bool>(any(vec2<bool>(arg_0, true)), all(vec3<bool>(true, arg_0, arg_0)), select(arg_0, arg_0, arg_0))), !vec3<bool>(!(204f != arg_1.a.x), all(vec2<bool>(arg_0, false)), true));
    return firstLeadingBit(~_wgslsmith_dot_vec2_i32(var_0.b.xz, -(var_0.b.xx >> (u_input.e % vec2<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(u_input.e.x, ~0u);
    global0 = _wgslsmith_add_i32(i32(-1i) * -func_2(), -u_input.c.x);
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-523f + 606f))) * -254f), -2018f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + -1644f), 1056f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * 1912f)), min(vec3<i32>(50780i, u_input.c.x, u_input.d), -u_input.c));
    var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * var_1.a), vec3<i32>(1i, _wgslsmith_mod_i32(0i, u_input.c.x), func_3(select(true, var_1.a.x >= -436f, true), Struct_1(_wgslsmith_div_vec4_f32(var_1.a, var_1.a), -vec3<i32>(u_input.c.x, 1i, u_input.d)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 756f, _wgslsmith_f_op_f32(f32(-1f) * -1381f)))));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_2.x)), var_1.a.x))), _wgslsmith_f_op_f32(sign(var_2.x)), var_1.a.x, 786f), min(-vec3<i32>(~var_1.b.x, 18228i, var_1.b.x), u_input.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_2.a, u_input.c);
    global0 = -_wgslsmith_add_i32(50420i ^ arg_2.b.x, arg_0.b.x | -2147483647i);
    let var_1 = 31408i;
    let var_2 = func_1();
    let var_3 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true))));
    return 37764i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-func_4(func_1(), ~(~u_input.e), func_1()), u_input.d, ~_wgslsmith_div_i32(-1i, -1i << (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 371f, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1025f * 297f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) * 168f), _wgslsmith_f_op_f32(f32(-1f) * -1902f))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-2147483647i, u_input.a.x, u_input.d)), ~u_input.c), func_1().b) & u_input.c);
    var var_2 = func_1();
    var_1 = Struct_1(var_2.a, min(_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(u_input.c.x), -1i, -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_2.b.x, 13606i), -vec3<i32>(var_0.x, 1i, u_input.c.x))), vec3<i32>(1i, func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, var_2.b.x, var_2.b.x), -vec4<i32>(u_input.d, u_input.d, 12014i, var_2.b.x)))));
    var_0 = vec3<i32>(1i, ~(-39281i), -(var_0.x << ((1u | u_input.e.x) % 32u)));
    var var_3 = func_1();
    var_2 = func_1();
    let var_4 = -vec3<i32>(-2147483647i >> ((1u | ~u_input.b.x) % 32u), var_1.b.x ^ u_input.c.x, var_0.x);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_sub_u32(u_input.e.x, u_input.b.x), ~_wgslsmith_sub_u32(u_input.b.x, 6454u), reverseBits(4294967295u), min(u_input.e.x, ~u_input.b.x)), ~((vec4<u32>(u_input.b.x, 0u, u_input.b.x, 78917u) | vec4<u32>(u_input.b.x, u_input.e.x, u_input.e.x, 15480u)) << (~vec4<u32>(4294967295u, 0u, 18808u, u_input.e.x) % vec4<u32>(32u)))), var_3.a.yy, 2147483647i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-582f, _wgslsmith_f_op_f32(trunc(var_2.a.x)), -752f, var_1.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-109f, var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1222f), var_3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -2040f, 491f, 129f) + var_2.a)))), vec4<bool>(true, true, true, true))));
}

