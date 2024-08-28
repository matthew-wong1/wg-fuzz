struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> u32 {
    let var_0 = false;
    let var_1 = 1000f;
    return 1u;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(216f * -438f), _wgslsmith_f_op_f32(652f + arg_0.a.x), 418f);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-548f)) + _wgslsmith_f_op_f32(-arg_0.a.x)))) * arg_1.a.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.a.x)))), 1761f)), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, -965f))))));
    let var_1 = Struct_3(~reverseBits(reverseBits(firstTrailingBit(vec4<u32>(41110u, u_input.b.x, 4294967295u, 1u)))), _wgslsmith_mult_i32(-abs(-30564i), ~(-36575i)));
    var_0 = vec3<f32>(-2033f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * 1689f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)) + -1583f)), _wgslsmith_f_op_f32(trunc(-1221f)));
    var_0 = vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(-594f)));
    return !vec4<bool>(true, (u_input.b.x >= ~46467u) & !select(false, false, false), any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), false)), true);
}

fn func_1() -> i32 {
    var var_0 = vec3<bool>(false, func_2() >= _wgslsmith_sub_u32(~select(1u, u_input.b.x, false), func_2()), false);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(-696f, _wgslsmith_f_op_f32(-1099f - 1000f))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(152f, -1314f), -1694f))))));
    let var_2 = any(!select(!func_3(var_1, var_1), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, true)), !(!vec4<bool>(true, var_0.x, var_0.x, var_0.x))));
    let var_3 = vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(abs(u_input.b.x) | (countOneBits(u_input.b.x) | u_input.b.x), 0u));
    var_0 = vec3<bool>(func_3(var_1, Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-1466f - -989f), 820f, 1000f))).x, false, false);
    return -9813i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 1i) | vec3<i32>(u_input.a, 0i, 22575i), abs(vec3<i32>(0i, -11676i, 287i))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -1362i, 40952i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), ~u_input.a), _wgslsmith_mult_i32(28597i, -36773i), abs(1i))), vec3<i32>(1i, 0i, func_1()));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1549f))), vec2<i32>(-18606i, 0i), Struct_1(~(~(~vec2<u32>(0u, 44446u))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~(~u_input.b.x), countOneBits(55452u), ~vec4<i32>(countOneBits(u_input.a), var_0.x >> (u_input.b.x % 32u), 31094i, 0i)));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(ceil(614f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), var_1.a))))));
    var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_2)))) + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(615f, var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -952f), func_3(Struct_4(vec3<f32>(var_1.a, var_2, -2085f)), Struct_4(vec3<f32>(var_1.a, 1546f, var_2))).x))), var_2), vec2<i32>(2147483647i, (i32(-1i) * -20648i) & ~_wgslsmith_sub_i32(u_input.a, var_1.c.e.x)), var_1.c);
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 761f, var_1.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(215f, -1000f, 611f))))), !(!vec3<bool>(var_1.c.b.x, var_1.c.b.x, var_1.c.b.x))))));
    var var_4 = !(all(select(vec3<bool>(var_1.c.b.x, var_1.c.b.x, var_1.c.b.x), vec3<bool>(true, true, var_1.c.b.x), var_3.a.x < var_2)) || false);
    var var_5 = vec3<i32>(var_0.x, abs(var_0.x), -_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(7920i, var_0.x), _wgslsmith_add_i32(var_0.x, -28591i)), 2147483647i));
    var_1 = Struct_2(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.a.x, var_1.a, true)))), vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.c.e.yxy, vec3<i32>(-var_5.x, 2466i, _wgslsmith_mod_i32(u_input.a, var_1.c.e.x))), u_input.a), Struct_1(~(~(~var_1.c.a)), vec2<bool>(func_3(Struct_4(vec3<f32>(var_3.a.x, -937f, 942f)), Struct_4(var_3.a)).x, select(u_input.b.x <= var_1.c.c, true, var_2 < 551f)), ~(~1u), _wgslsmith_mod_u32(u_input.b.x, var_1.c.c), vec4<i32>(i32(-1i) * -13925i, 0i, i32(-1i) * -2147483647i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.e);
}

