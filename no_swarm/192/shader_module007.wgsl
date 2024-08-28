struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> f32 {
    let var_0 = ~_wgslsmith_clamp_i32(-_wgslsmith_sub_i32(arg_2, -1i), -2147483647i, arg_2);
    var var_1 = any(!(!arg_3.b.a));
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.b, -u_input.a.wx);
    let var_3 = Struct_3(arg_3.c.a, _wgslsmith_f_op_f32(f32(-1f) * -2215f));
    let var_4 = var_3;
    return _wgslsmith_f_op_f32(-arg_3.b.b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-24367i, ~_wgslsmith_mod_i32(-10856i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)), u_input.b.x, ~u_input.b.x), ~(-_wgslsmith_mult_vec4_i32(~u_input.a, u_input.a)), ~_wgslsmith_add_vec4_i32(~(~u_input.a), -vec4<i32>(u_input.b.x, 34096i, u_input.b.x, -2147483647i)));
    var var_1 = Struct_2(firstLeadingBit(select(u_input.a.wyw, vec3<i32>(37934i, u_input.a.x, 2147483647i >> (0u % 32u)), select(arg_1.a, !vec3<bool>(arg_1.a.x, arg_0.a.x, true), all(vec4<bool>(arg_1.a.x, arg_0.a.x, arg_1.a.x, arg_0.a.x))))), _wgslsmith_mod_vec3_i32(u_input.a.zyx, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i >> (u_input.c % 32u), -6348i), vec3<i32>(-var_0.x, var_0.x, -1i))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-127f, 801f, arg_0.b, -1772f) + vec4<f32>(arg_1.b, arg_0.b, -975f, 222f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b, -1866f, 421f, -680f))))), 30607i, ~(~abs(9865u)), vec4<f32>(-443f, arg_0.b, arg_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b + -1013f), -945f, any(vec4<bool>(arg_1.a.x, true, false, true)))))));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1.c.d.x));
    var_2 = _wgslsmith_div_f32(1f, var_1.c.d.x);
    var var_3 = Struct_3(!vec3<bool>(u_input.e.x >= _wgslsmith_clamp_u32(u_input.e.x, 1u, 1u), true, any(select(vec2<bool>(true, true), arg_1.a.zz, arg_1.a.zy))), -2507f);
    return -113f;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_4(u_input.e.zw, Struct_3(vec3<bool>(arg_0, false, !arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-609f)) + 1720f)), Struct_3(vec3<bool>(!(!arg_0), false, (arg_0 == false) != any(vec4<bool>(false, false, true, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec3<bool>(true, true, arg_0), 124f), Struct_3(vec3<bool>(false, false, arg_0), -1011f))) * _wgslsmith_f_op_f32(select(-1000f, 1109f, false)))));
    var var_1 = select(u_input.a.ywz, ~countOneBits(u_input.a.xzx), vec3<bool>(all(!vec4<bool>(true, false, var_0.b.a.x, arg_0)), true, true)) ^ u_input.a.wyy;
    var_1 = abs(vec3<i32>(var_1.x, _wgslsmith_mult_i32(u_input.b.x | firstLeadingBit(-8873i), select(_wgslsmith_add_i32(u_input.a.x, -1i), var_1.x & -7160i, any(vec2<bool>(var_0.b.a.x, var_0.b.a.x)))), ~(-min(u_input.b.x, var_1.x))));
    var_0 = Struct_4(~_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, 0u), vec2<u32>(4294967295u, var_0.a.x)), var_0.a), var_0.c, var_0.c);
    var var_2 = reverseBits(~var_0.a);
    return _wgslsmith_f_op_f32(func_1(!((var_0.a.x ^ 236u) != u_input.c), -u_input.b.x, 0i ^ countOneBits(~(-u_input.a.x)), Struct_4(~firstTrailingBit(vec2<u32>(var_0.a.x, var_2.x)) >> (min(vec2<u32>(var_2.x, var_2.x) ^ var_0.a, select(vec2<u32>(var_0.a.x, var_2.x), vec2<u32>(u_input.d, 0u), vec2<bool>(arg_0, true))) % vec2<u32>(32u)), var_0.c, var_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1527f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(false, u_input.b.x, 0i, Struct_4(u_input.e.wy, Struct_3(vec3<bool>(false, false, true), 815f), Struct_3(vec3<bool>(true, false, false), -1230f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1645f + 590f), _wgslsmith_f_op_f32(673f + -178f))), !all(vec3<bool>(false, false, false))))), -599f, _wgslsmith_f_op_f32(f32(-1f) * -142f));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(all(vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2042f, _wgslsmith_f_op_f32(f32(-1f) * -923f), true))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, u_input.b.x, ~0i, Struct_4(u_input.e.wy, Struct_3(vec3<bool>(false, true, false), 807f), Struct_3(vec3<bool>(false, false, true), var_0.x)))) - _wgslsmith_f_op_f32(func_2(u_input.d != u_input.e.x))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -710f), 1424f)), -816f, _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var_0 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(min(-1263f, var_0.x)))), _wgslsmith_f_op_f32(var_0.x + var_0.x));
    var var_1 = all(select(vec3<bool>(true, true, true), !vec3<bool>(true, all(vec3<bool>(false, false, false)), true), true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(-20238i, 74024i, 21246i, u_input.a.x) << (vec4<u32>(u_input.d, u_input.e.x, 4294967295u, u_input.e.x) % vec4<u32>(32u))) ^ ~(-17108i ^ (-38165i | u_input.b.x)));
}

