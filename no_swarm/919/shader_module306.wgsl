struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = ~(~firstTrailingBit(select(1u, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.c), all(vec4<bool>(true, true, true, false)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, 1000f, -649f, -1279f), vec4<f32>(1000f, -904f, 866f, -470f)))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-460f, 1000f), _wgslsmith_f_op_f32(step(-328f, _wgslsmith_div_f32(-499f, 540f))), true)), 780f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-618f, -238f), 566f))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, 4294967295u != u_input.a.x, false, select(true, true, false)), vec4<bool>(all(vec3<bool>(false, true, false)), all(vec4<bool>(true, true, true, true)), true, 71640u != _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)))));
    var var_2 = -670f;
    let var_3 = !vec2<bool>(!any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false)), u_input.c == ~4294967295u);
    var var_4 = Struct_1(any(vec3<bool>(true, true, ~u_input.b == -2147483647i)));
    return vec3<u32>(u_input.c, ~(firstLeadingBit(~u_input.c) >> (u_input.a.x % 32u)), min(64112u, ~0u));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_div_i32(u_input.e.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-34502i, u_input.b, -42647i, 14593i), vec4<i32>(-31383i, 2147483647i, 6434i, -2147483647i), vec4<bool>(false, false, false, true)), -vec4<i32>(24273i, 41778i, u_input.d, -1020i)), -firstLeadingBit(u_input.d)) << (~(~u_input.a.x) % 32u));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-250f, 1000f, 1659f) * vec3<f32>(1592f, 582f, 1918f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(325f)), _wgslsmith_f_op_f32(ceil(-1106f)), _wgslsmith_f_op_f32(-2107f + -832f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(1213f, _wgslsmith_f_op_f32(floor(1983f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1398f, 503f)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -2546f)))));
    var_0 = -2147483647i;
    let var_2 = min(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c, 84368u) >> (firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.a.wxw, vec3<u32>(u_input.a.x, u_input.a.x, u_input.c))) % vec3<u32>(32u)), u_input.a.wzy), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(func_3(-23424i), max(vec3<u32>(u_input.a.x, u_input.c, 28464u), u_input.a.zxx)), u_input.a.wzz));
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(~(~10710u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), u_input.a), u_input.a)) << (countOneBits(1u) % 32u), var_2.x, func_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.d, 8166i, 0i), _wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.b, u_input.d, -22731i, u_input.b)), vec4<i32>(u_input.e.x, u_input.b, u_input.d, -1i)))).x);
    return u_input.a.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_sub_vec2_u32(arg_0, ~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(45935u, 84406u)), vec2<u32>(2985u, u_input.a.x) & arg_0) >> ((_wgslsmith_mod_vec2_u32(select(u_input.a.yz, vec2<u32>(0u, arg_0.x), vec2<bool>(arg_1, arg_1)), u_input.a.zx) >> (_wgslsmith_mod_vec2_u32(u_input.a.zz, _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(0u, 1u), vec2<u32>(arg_0.x, 27682u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = -firstTrailingBit(0i);
    return 4613u;
}

fn func_1() -> vec4<i32> {
    global0 = firstTrailingBit(func_4(vec2<u32>(func_2(), 80119u), true, -firstLeadingBit(firstLeadingBit(u_input.e.xz))));
    var var_0 = -29384i;
    var var_1 = Struct_1(all(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)))));
    var_1 = Struct_1(any(select(!(!vec3<bool>(false, false, var_1.a)), !vec3<bool>(false, false, var_1.a), !select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a)))));
    var_1 = Struct_1(var_1.a);
    return vec4<i32>(-2147483647i, ~(-33913i), u_input.b ^ u_input.d, max(u_input.d, 11189i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_u32(u_input.a.x, ~(~(~0u)));
    let var_0 = false;
    var var_1 = u_input.a;
    global0 = var_1.x;
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(46696i, _wgslsmith_mult_i32(-1i, u_input.d), u_input.b >> (u_input.c % 32u), -2147483647i), _wgslsmith_mult_vec4_i32(func_1(), vec4<i32>(u_input.e.x, 2147483647i, u_input.e.x, -1i) >> (vec4<u32>(0u, 15497u, u_input.c, 1u) % vec4<u32>(32u)))), ~abs(_wgslsmith_div_vec4_i32(vec4<i32>(-61579i, 2147483647i, u_input.e.x, 0i), vec4<i32>(u_input.d, u_input.b, 0i, u_input.b)))) & vec4<i32>(~u_input.e.x, u_input.d, ~_wgslsmith_sub_i32(2147483647i, 32003i | u_input.d), _wgslsmith_add_i32(select(u_input.b, -33306i, var_0) & u_input.b, -15000i));
    var var_3 = Struct_1(true);
    let var_4 = _wgslsmith_mod_vec2_u32(select(~(~vec2<u32>(u_input.a.x, var_1.x)), var_1.wx, !(!(!vec2<bool>(var_3.a, var_3.a)))), vec2<u32>(abs(~0u), var_1.x) >> ((vec2<u32>(4294967295u, ~var_1.x) << (~(vec2<u32>(0u, u_input.c) ^ u_input.a.zx) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_3 = Struct_1(select(true, abs(func_2()) == _wgslsmith_clamp_u32(~var_1.x, _wgslsmith_clamp_u32(var_1.x, var_4.x, 0u), var_4.x & u_input.c), var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-1700i | var_2.x, -u_input.e.x, var_2.x, -11973i), _wgslsmith_dot_vec2_u32(select(var_1.wy, var_4, true), countOneBits(~vec2<u32>(u_input.c, 0u))));
}

