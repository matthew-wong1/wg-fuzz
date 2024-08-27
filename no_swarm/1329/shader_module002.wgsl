struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), arg_0.c.a.x);
    let var_1 = Struct_3(~_wgslsmith_sub_u32(350u, 0u), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1497f, arg_1), _wgslsmith_f_op_f32(-945f + arg_1), arg_2.d.x || arg_0.b.x)), -442f), arg_0.c.a.x, Struct_1(countOneBits(max(~arg_0.c.a, -vec3<i32>(arg_0.c.a.x, -1i, -7869i))), arg_2.d, _wgslsmith_div_f32(280f, _wgslsmith_f_op_f32(f32(-1f) * -192f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1, -2523f)), _wgslsmith_f_op_f32(-arg_1)), arg_0.b), arg_2.d);
    var var_2 = 1u;
    var_2 = min(~abs(var_1.a), min(~1u, (_wgslsmith_mod_u32(var_1.a, 1u) >> (~0u % 32u)) << (0u % 32u)));
    var_2 = _wgslsmith_add_u32(53320u, ~var_1.a);
    return ~firstLeadingBit(vec2<u32>(firstTrailingBit(~12839u), min(~0u, var_1.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32) -> f32 {
    let var_0 = Struct_3(arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1460f * -112f), 692f) * vec2<f32>(_wgslsmith_f_op_f32(step(1110f, -1000f)), -409f))), max(firstTrailingBit(u_input.a.x), firstLeadingBit(-31527i)), Struct_1(vec3<i32>(~(-43406i), -2147483647i, _wgslsmith_sub_i32(u_input.b.x, 62100i)) ^ max(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, -27318i), vec3<i32>(-1i, u_input.b.x, u_input.a.x)), vec3<i32>(40708i, -40254i, 2147483647i)), select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), true), true, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), vec3<bool>(all(vec2<bool>(true, true)), select(true, true, true), true));
    let var_1 = Struct_3(var_0.a, var_0.b, _wgslsmith_mod_i32(u_input.a.x, ~0i), Struct_1(abs(firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c, 0i, u_input.b.x), vec3<i32>(6262i, -1i, var_0.c)))), var_0.d.b, var_0.e.x, vec3<bool>(false, false, true)), var_0.d.b);
    let var_2 = vec4<bool>(any(!vec4<bool>(true, true, var_0.e.x, true)), true | var_0.e.x, !var_0.d.b.x, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1621f, var_1.b.x, 1026f, 145f) - vec4<f32>(473f, var_0.b.x, var_1.b.x, var_0.b.x)))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.xyz)) * var_3.xwx);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2350f)) - var_3.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    let var_0 = any(vec2<bool>(_wgslsmith_f_op_f32(-1538f + _wgslsmith_f_op_f32(f32(-1f) * -180f)) <= _wgslsmith_f_op_f32(func_4(func_3(arg_1, 2328f, arg_1.c), ~49854u)), all(!select(arg_1.c.b.xx, vec2<bool>(arg_1.c.d.x, arg_1.c.d.x), arg_1.c.d.zz))));
    let var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 64958u, 1u), _wgslsmith_mod_vec3_u32(arg_2.xyz << (arg_2.yzw % vec3<u32>(32u)), reverseBits(select(arg_2.xzy, min(arg_2.yxz, vec3<u32>(arg_2.x, arg_2.x, 33580u)), var_0))));
    let var_2 = Struct_3(~(_wgslsmith_dot_vec3_u32(arg_2.zyy, vec3<u32>(46721u, arg_1.a, var_1)) >> (0u % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1052f, _wgslsmith_div_f32(794f, 1260f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-401f, 254f), vec2<f32>(1674f, 136f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1339f, 334f)))), -3870i, arg_1.c, select(arg_1.c.b, arg_1.b, !(!any(vec4<bool>(false, false, true, true)))));
    var var_3 = ~_wgslsmith_add_i32(arg_0.x ^ -(i32(-1i) * -17813i), -_wgslsmith_add_i32(min(arg_0.x, -2147483647i), ~u_input.a.x));
    var var_4 = vec3<i32>(u_input.a.x, arg_0.x | ~(-8768i), -(_wgslsmith_dot_vec2_i32(-u_input.a.wx, -u_input.a.xz) >> (~arg_1.a % 32u)));
    return 0u << (_wgslsmith_mod_u32(var_1, arg_2.x) % 32u);
}

fn func_5(arg_0: vec3<i32>, arg_1: u32) -> vec3<bool> {
    let var_0 = !(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), u_input.b.x < arg_0.x)));
    let var_1 = Struct_3(~(~(4294967295u >> (arg_1 % 32u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(589f, -1000f) * vec2<f32>(307f, -524f))))))), select(1i, u_input.a.x, false) << (31385u % 32u), Struct_1(abs(vec3<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(-1i, arg_0.x, arg_0.x, -2147483647i)), max(u_input.a.x, 28088i))), !vec3<bool>(any(var_0), true, true), !(true || all(vec3<bool>(true, var_0.x, var_0.x))), var_0.xww), !vec3<bool>(!var_0.x, all(select(vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, false), var_0.x)), true));
    var var_2 = 5416u;
    let var_3 = Struct_2(arg_1 ^ var_1.a, select(!var_0.yzw, vec3<bool>(var_1.e.x, all(vec3<bool>(var_1.e.x, false, false)), false), true), Struct_1(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_0.x, var_1.c), var_1.d.a)), min(vec3<i32>(u_input.b.x, var_1.c, u_input.a.x), -vec3<i32>(52498i, var_1.c, u_input.b.x))), vec3<bool>(true, !all(vec3<bool>(true, true, var_0.x)), var_1.d.b.x), var_0.x, var_0.wxz));
    let var_4 = var_3;
    return var_4.c.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> Struct_1 {
    return Struct_1(~_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(-19054i, u_input.a.x), arg_0.x), vec3<i32>(u_input.a.x, u_input.b.x, -2147483647i) >> (firstTrailingBit(vec3<u32>(25228u, 10435u, 5307u)) % vec3<u32>(32u))), func_5(vec3<i32>(0i, u_input.b.x, _wgslsmith_add_i32(31704i, ~0i)), _wgslsmith_add_u32(1u, func_2(vec4<i32>(arg_0.x, 0i, -18585i, u_input.b.x), Struct_2(50378u, vec3<bool>(false, arg_1, arg_1), Struct_1(vec3<i32>(u_input.b.x, u_input.a.x, 1i), vec3<bool>(arg_1, arg_1, false), arg_1, vec3<bool>(arg_1, true, arg_1))), vec4<u32>(1944u, 71325u, 1u, 42593u))) & max(func_3(Struct_2(19729u, vec3<bool>(arg_1, arg_1, arg_1), Struct_1(vec3<i32>(-25968i, 7577i, 2147483647i), vec3<bool>(arg_1, arg_1, arg_1), arg_1, vec3<bool>(arg_1, true, arg_1))), -1379f, Struct_1(vec3<i32>(1i, u_input.b.x, 29065i), vec3<bool>(arg_1, arg_1, arg_1), true, vec3<bool>(false, arg_1, true))).x, ~20406u)), !all(!func_5(u_input.b.yyw, 52203u).xx), select(!(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, arg_1), vec3<bool>(true, false, arg_1))), select(vec3<bool>(false | arg_1, !arg_1, false), func_5(u_input.b.wxw, 37182u), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, true, false), true)), arg_1 & !arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), abs(~vec3<u32>(0u, 0u, 101139u))), 1u);
    var var_1 = Struct_2(var_0.x, !vec3<bool>(true || select(true, true, false), true, all(vec3<bool>(false, true, false))), func_1(u_input.a, !select(true, false, any(vec4<bool>(false, true, false, false)))));
    let var_2 = 94421u;
    let var_3 = abs(_wgslsmith_div_vec3_i32(u_input.a.yzw, u_input.a.xyz));
    let var_4 = ~firstTrailingBit(var_0.x);
    let var_5 = Struct_3(~var_2, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-183f, 1000f) + vec2<f32>(-1000f, 866f)))), vec2<f32>(-644f, -417f), false)), var_1.c.a.x, Struct_1(vec3<i32>(var_1.c.a.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, -2147483647i, 4626i, u_input.a.x)) >> ((var_4 | var_1.a) % 32u), countOneBits(var_3.x) | max(var_1.c.a.x, var_1.c.a.x)), var_1.c.d, any(select(!vec4<bool>(var_1.b.x, var_1.c.b.x, false, var_1.b.x), !vec4<bool>(var_1.b.x, false, true, var_1.b.x), select(vec4<bool>(false, false, var_1.b.x, var_1.c.c), vec4<bool>(var_1.c.d.x, var_1.b.x, var_1.c.d.x, var_1.c.d.x), vec4<bool>(var_1.c.b.x, var_1.c.b.x, false, var_1.b.x)))), !var_1.c.b), !(!var_1.c.b));
    var var_6 = _wgslsmith_mult_i32(select(-firstTrailingBit(_wgslsmith_div_i32(-40168i, 3060i)), -var_5.d.a.x ^ 66740i, var_5.d.c), _wgslsmith_mult_i32(5038i, firstLeadingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, var_1.c.a.x, var_1.c.a.x), vec3<i32>(var_1.c.a.x, var_3.x, -2147483647i), false), vec3<i32>(var_5.c, -42702i, 0i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1951f * var_5.b.x), _wgslsmith_f_op_f32(func_4(var_0, var_1.a))))), var_5.b.x, _wgslsmith_f_op_f32(-719f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1213f, var_5.b.x), -117f)))), 49245u);
}

