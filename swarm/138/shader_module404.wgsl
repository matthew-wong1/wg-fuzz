struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -44891i), vec2<i32>(-24097i, 7064i), vec4<f32>(-721f, 1107f, -610f, -1000f), -325f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec3<i32> {
    global0 = Struct_3(_wgslsmith_div_vec3_i32(~reverseBits(vec3<i32>(2147483647i, -22587i, u_input.a) << (vec3<u32>(arg_0, 20646u, 16880u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-47800i, arg_2.b.x, u_input.a, 2877i), vec4<i32>(global0.a.x, arg_1.b.x, -2147483647i, arg_2.a.x)), 37715i, u_input.a), vec3<i32>(-arg_1.b.x, 54053i, u_input.a))), (firstLeadingBit(global0.a.xx) & vec2<i32>(u_input.a, reverseBits(-1i))) << (_wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0, u_input.b), vec2<u32>(arg_0, arg_0), vec2<u32>(4294967295u, 0u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1187u, 1u), ~vec2<u32>(u_input.b, 75600u))) % vec2<u32>(32u)), arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))));
    global0 = arg_1;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.c));
    var_0 = global0.c;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(238f, global0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.d, -1905f)) * _wgslsmith_div_f32(arg_1.d, arg_3.a.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -146f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(782f, 846f, global0.d, 1880f))))));
    return -global0.a;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.c;
    global0 = Struct_3(max(countOneBits(~global0.a), _wgslsmith_mult_vec3_i32(global0.a, func_3(reverseBits(arg_3.b), Struct_3(global0.a, vec2<i32>(global0.a.x, 1i), global0.c, 139f), Struct_3(vec3<i32>(global0.b.x, 35794i, 1i), global0.b, global0.c, -474f), Struct_2(arg_3)))), -vec2<i32>(~(-50992i) & global0.b.x, -4538i), vec4<f32>(_wgslsmith_f_op_f32(trunc(1708f)), _wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(f32(-1f) * -861f), _wgslsmith_f_op_f32(f32(-1f) * -128f)), _wgslsmith_f_op_f32(-402f * _wgslsmith_div_f32(915f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.d, var_0.x), 483f)))));
    return arg_3;
}

fn func_1() -> vec4<bool> {
    var var_0 = func_2(any(select(vec2<bool>(true, false), vec2<bool>(1i <= u_input.a, any(vec2<bool>(true, false))), true)), -650f, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(max(-1534f, global0.c.x))) - global0.d)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(global0.c.x - -606f)) + _wgslsmith_f_op_f32(min(-179f, _wgslsmith_f_op_f32(782f * global0.d)))), u_input.b, vec3<f32>(_wgslsmith_f_op_f32(exp2(global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_div_f32(790f, -567f)), global0.d), _wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(max(193f, global0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-776f, -147f, global0.d)))))));
    global0 = Struct_3(max(global0.a, vec3<i32>(~u_input.a, global0.b.x, global0.a.x)), global0.a.zz ^ global0.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(-256f)), _wgslsmith_f_op_f32(abs(var_0.e.x)), -209f, _wgslsmith_f_op_f32(trunc(440f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global0.c)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global0.c)))), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, 0u == u_input.b, true, all(vec3<bool>(true, true, false))), abs(global0.b.x) >= -u_input.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-117f, _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(abs(var_0.a)))))))));
    let var_1 = Struct_2(func_2(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))), _wgslsmith_f_op_f32(global0.c.x + -940f), -408f, func_2(false, _wgslsmith_f_op_f32(-global0.c.x), global0.d, func_2(any(vec2<bool>(false, false)), -1403f, _wgslsmith_div_f32(var_0.d, global0.c.x), func_2(true, var_0.a, var_0.c.x, Struct_1(var_0.a, 1u, vec3<f32>(var_0.e.x, var_0.d, -205f), -1000f, vec3<f32>(-2851f, 587f, -287f)))))));
    var_0 = func_2(true, -527f, -1089f, var_1.a);
    var var_2 = ~(~vec3<u32>(~var_1.a.b << (u_input.b % 32u), 4294967295u, max(var_0.b, var_1.a.b)));
    return !(!vec4<bool>(true, !any(vec2<bool>(false, true)), true, var_2.x >= (116684u & var_1.a.b)));
}

fn func_4(arg_0: bool) -> Struct_3 {
    var var_0 = select(vec3<bool>(all(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(false, arg_0), arg_0)), u_input.b >= 4294967295u, global0.d <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(388f + global0.c.x))), select(!select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, arg_0, arg_0), arg_0 | arg_0), !select(func_1().wzx, !vec3<bool>(arg_0, false, false), func_1().zzy), vec3<bool>(false, false, false)), arg_0);
    global0 = Struct_3(-select(firstTrailingBit(global0.a) << (~vec3<u32>(0u, 38351u, 4680u) % vec3<u32>(32u)), reverseBits(global0.a), select(func_1().wxz, !vec3<bool>(false, arg_0, var_0.x), true)), global0.a.xy, vec4<f32>(_wgslsmith_f_op_f32(-global0.d), global0.c.x, -1616f, global0.c.x), global0.c.x);
    let var_1 = Struct_2(func_2(false, _wgslsmith_f_op_f32(-1742f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x))), global0.d, Struct_1(1000f, u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1148f, -570f, global0.c.x))), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_vec3_f32(step(global0.c.yzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, global0.d, global0.d)))))));
    var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(!(!arg_0), true, false), !(!func_1().xwz));
    var var_2 = u_input.b;
    return Struct_3(-global0.a, vec2<i32>(u_input.a, u_input.a | -_wgslsmith_mult_i32(global0.a.x, u_input.a)), global0.c, _wgslsmith_f_op_f32(step(global0.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global0.c.x)), var_1.a.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = func_4(all(select(vec4<bool>(true, true, true, true), func_1(), vec4<bool>(true, true, true, all(vec2<bool>(false, true))))));
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(global0.a.x, var_1.b.x, 14952i)), abs(vec3<i32>(-1i, u_input.a, 2147483647i))), global0.a << (~vec3<u32>(4294967295u, var_0, 39257u) % vec3<u32>(32u))), vec3<i32>(2147483647i, var_1.b.x, ~(~0i))), ~6108i);
    global0 = func_4(true);
    global0 = func_4(true);
    let var_3 = ~(~vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_0, 30504u), vec3<u32>(var_0, 33490u, var_0)), ~u_input.b, _wgslsmith_add_u32(34543u ^ u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 14719u, 24085u, u_input.b), vec4<u32>(var_0, u_input.b, u_input.b, 1u)))));
    global0 = func_4(all(vec4<bool>(true, all(vec4<bool>(true, true, true, true)), true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false)))));
    global0 = Struct_3(abs(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, 1i, u_input.a), vec3<i32>(u_input.a, -34539i, var_1.a.x) & var_1.a), var_1.a)), abs(vec2<i32>(_wgslsmith_mult_i32(1i, 1i), var_1.b.x)) << (abs(vec2<u32>(35884u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-806f, var_1.c.x))), global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, global0.d) - _wgslsmith_f_op_f32(max(global0.d, -515f))), 668f) - _wgslsmith_f_op_vec4_f32(-global0.c)), global0.d);
    global0 = Struct_3(var_1.a, var_1.a.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -771f, -665f, -2196f) - vec4<f32>(var_1.d, global0.d, var_1.c.x, global0.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, var_1.c.x, -2299f, global0.c.x) * vec4<f32>(var_1.c.x, var_1.c.x, global0.c.x, 466f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(744f)) + _wgslsmith_f_op_f32(-func_2(any(vec3<bool>(false, false, true)), -2173f, _wgslsmith_f_op_f32(max(-1000f, global0.d)), func_2(true, -469f, -561f, Struct_1(-1592f, var_0, vec3<f32>(1537f, -2001f, 1460f), var_1.d, vec3<f32>(-781f, var_1.c.x, var_1.c.x)))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x, _wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(4294967295u, abs(var_3.x), 1u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(45410u, 8804u, 1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 0u, var_0), countOneBits(vec3<u32>(0u, var_3.x, var_3.x))), abs(firstLeadingBit(var_3)))), ~(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_3.x), vec2<u32>(4996u, u_input.b)), select(vec2<u32>(var_0, 1u), var_3.zx, vec2<bool>(false, true))) & (vec2<u32>(88642u, 49449u) << ((var_3.yy | vec2<u32>(var_0, 4294967295u)) % vec2<u32>(32u)))));
}

