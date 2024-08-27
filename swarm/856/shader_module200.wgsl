struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    let var_0 = select(vec4<u32>(1u, ~u_input.a.x, u_input.b.x, u_input.b.x) >> (min(min(select(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.b.x, u_input.a.x, 48226u, 27175u), vec4<bool>(true, false, false, false)), firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 78276u))), ~min(vec4<u32>(0u, 1u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 35796u, u_input.a.x))) % vec4<u32>(32u)), vec4<u32>(abs(u_input.a.x), u_input.b.x, u_input.b.x, _wgslsmith_div_u32(~1u, u_input.a.x)) ^ ((~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u) >> (vec4<u32>(4294967295u, 4294967295u, 24201u, 12831u) % vec4<u32>(32u))) | vec4<u32>(abs(u_input.b.x), ~u_input.a.x, 13204u, u_input.b.x)), vec4<bool>(true, true, true, true));
    var var_1 = vec4<i32>(u_input.c, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c, -45811i), (u_input.c >> (4294967295u % 32u)) & -2147483647i, select(select(u_input.c, 1411i, true), 0i, true)) ^ firstLeadingBit(~_wgslsmith_add_i32(u_input.c, u_input.c)), abs(u_input.c), u_input.c);
    let var_2 = 2147483647i;
    let var_3 = vec3<bool>(!(!any(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), true, true);
    var var_4 = -(-1i | _wgslsmith_dot_vec4_i32(~firstLeadingBit(vec4<i32>(2147483647i, -40027i, 0i, 51579i)), abs(vec4<i32>(18626i, 0i, 13997i, 1i))));
    return _wgslsmith_sub_vec2_u32(~var_0.wx, ~vec2<u32>(0u, var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    let var_0 = arg_0.b.x;
    var var_1 = ~(~max(func_3(), ~_wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(36372u, u_input.a.x))));
    var var_2 = Struct_3(Struct_2(Struct_1(select(arg_0.a, vec4<bool>(arg_0.a.x, false, arg_1.x, false), true), vec3<f32>(-118f, _wgslsmith_f_op_f32(min(-109f, arg_0.b.x)), 357f)), any(vec4<bool>(arg_1.x, true, true, arg_1.x)) || arg_1.x, 1u, var_0));
    var var_3 = -min(-(select(vec4<i32>(u_input.c, u_input.c, 71964i, 0i), vec4<i32>(-1i, 71255i, 1i, 4892i), false) >> (reverseBits(vec4<u32>(0u, 66160u, var_2.a.c, u_input.a.x)) % vec4<u32>(32u))), reverseBits(vec4<i32>(u_input.c, -u_input.c, ~(-2857i), u_input.c << (0u % 32u))));
    var_2 = Struct_3(Struct_2(Struct_1(!(!vec4<bool>(var_2.a.a.a.x, true, var_2.a.b, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.b, arg_0.b))), true, _wgslsmith_add_u32(u_input.a.x, firstTrailingBit(var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x * -720f)))));
    return var_3.x >> (_wgslsmith_add_u32(4696u, _wgslsmith_dot_vec2_u32(u_input.b, ~reverseBits(vec2<u32>(31684u, 52590u)))) % 32u);
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = ~(~(~vec4<u32>(~arg_1, arg_1, 34385u, ~104462u)));
    var var_1 = -1i;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(step(-2233f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2303f, 1000f, var_2)), 1056f)), -534f))));
    var_1 = ~(~_wgslsmith_add_i32(countOneBits(arg_2), -78541i & func_2(Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-565f, 453f, 1301f)), vec3<bool>(true, var_2, var_2))));
    return Struct_2(Struct_1(!select(select(vec4<bool>(false, var_2, true, false), vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(true, var_2, var_2, var_2)), !vec4<bool>(var_2, false, false, var_2), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-401f - 1495f), _wgslsmith_f_op_f32(816f + -840f), -615f))), max(select(~638i, 1i, var_2), _wgslsmith_mod_i32(arg_2, arg_2)) == -1i, 66333u, 169f);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-1155f + func_1(~(-vec4<i32>(-500i, u_input.c, u_input.c, u_input.c)), arg_0.c, 23601i).a.b.x);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1078f, _wgslsmith_div_f32(-1009f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))), true || (_wgslsmith_sub_i32(u_input.c, -34356i) == func_2(arg_0.a, arg_0.a.a.xyz)))) - _wgslsmith_div_f32(1495f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)) + _wgslsmith_f_op_f32(1531f + var_0))));
    var var_2 = true;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1769f), -1668f));
    let var_3 = -1526f;
    return _wgslsmith_add_i32(max(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-12562i, 2147483647i, 26938i, u_input.c), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c))), -(_wgslsmith_mod_i32(8465i, u_input.c) >> (u_input.b.x % 32u))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1118f, -720f, true || !any(vec2<bool>(false, true)))));
    var var_1 = func_4(func_1(min(~vec4<i32>(43131i, u_input.c, u_input.c, -31556i), -vec4<i32>(-2147483647i, 10674i, 3045i, -38174i)) | (-vec4<i32>(0i, 29300i, -1i, -35328i) ^ select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(30909i, u_input.c, 1i, -1i), vec4<bool>(true, true, true, true))), 1u, -u_input.c | _wgslsmith_mult_i32(-u_input.c, u_input.c)));
    let var_2 = 1u;
    var_1 = countOneBits(i32(-1i) * -12134i);
    let var_3 = ~vec3<i32>(~(~1i), -4900i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-51782i, -1i, -2147483647i, 1i), ~vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) >> (_wgslsmith_add_u32(~var_2, firstTrailingBit(var_2)) % 32u));
    let var_4 = func_1(vec4<i32>(-5252i, -_wgslsmith_mod_i32(0i, -16677i), var_3.x, var_3.x) | select(reverseBits(vec4<i32>(-1i, u_input.c, 16588i, 2147483647i)), min(vec4<i32>(-2147483647i, -26017i, -6676i, -2147483647i), vec4<i32>(u_input.c, 1i, -2147483647i, u_input.c)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true)), reverseBits(var_2) ^ 13813u, var_3.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_div_u32(43815u, ~u_input.b.x), u_input.a.x, u_input.a.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1u, var_2), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_2, 54132u, 0u), vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(u_input.b.x, var_2, 1u))) & ~vec3<u32>(u_input.a.x, 1u, var_2), u_input.a), _wgslsmith_add_vec3_i32(~var_3, var_3) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_div_i32(var_3.x, var_3.x), -2147483647i), var_3), reverseBits(_wgslsmith_mult_i32(var_3.x, _wgslsmith_mod_i32(var_3.x, -37519i))));
}

