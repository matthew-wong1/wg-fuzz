struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-482f, 1883f), 20852u, Struct_2(Struct_1(vec4<u32>(16094u, 30918u, 1u, 4294967295u), vec2<i32>(2147483647i, 2639i), vec2<f32>(-180f, 337f))), vec3<f32>(-1618f, -1000f, -2440f));

var<private> global1: Struct_3 = Struct_3(vec2<f32>(-294f, 1249f), 14295u, Struct_2(Struct_1(vec4<u32>(28820u, 4294967295u, 2271u, 1u), vec2<i32>(-1i, 1i), vec2<f32>(1035f, -529f))), vec3<f32>(2446f, 112f, -1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> vec3<bool> {
    var var_0 = ~(~u_input.b.x);
    var var_1 = global0.c.a;
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1003f, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.zy) * _wgslsmith_f_op_vec2_f32(-global1.a)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-632f, 649f), _wgslsmith_f_op_vec2_f32(-var_1.c)))))), var_1.a.x, Struct_2(Struct_1(countOneBits(firstTrailingBit(global0.c.a.a)), _wgslsmith_add_vec2_i32(var_1.b | vec2<i32>(1i, global1.c.a.b.x), select(global0.c.a.b, global1.c.a.b, true)), global1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_1, global1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f * -3062f)), _wgslsmith_f_op_f32(-global0.c.a.c.x))));
    global0 = Struct_3(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, arg_1))))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), _wgslsmith_clamp_vec3_u32(~var_1.a.yzy, global0.c.a.a.wyw, var_1.a.xzw))), global0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(950f + 531f)), global1.a.x, global0.c.a.c.x));
    var_1 = global1.c.a;
    return select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), all(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, true))), vec3<bool>(!(!any(vec4<bool>(true, true, false, false))), true, true));
}

fn func_2() -> Struct_1 {
    var var_0 = abs(global1.c.a.b);
    var var_1 = -global0.c.a.b.x != global1.c.a.b.x;
    let var_2 = Struct_4(_wgslsmith_dot_vec3_u32(global1.c.a.a.ywx, _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, u_input.b.x, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(global0.c.a.a.x, global1.c.a.a.x, 29863u), global1.c.a.a.xwy)), u_input.a)), func_3(global1.b, _wgslsmith_f_op_f32(319f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.c.x, 329f, 250f, 1000f)))), 4294967295u), 0i, global0.c.a.b);
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 914f)))), ~82639u, Struct_2(Struct_1(~(~vec4<u32>(17951u, 4294967295u, u_input.a.x, 37652u)), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(8041i, 1i), vec2<i32>(1i, global0.c.a.b.x))), vec2<f32>(1f, _wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_vec3_f32(-global0.d));
    let var_3 = Struct_4(4294967295u, !vec3<bool>(!var_2.b.x, !(!var_2.b.x), true), firstLeadingBit(~var_0.x), _wgslsmith_div_vec2_i32(vec2<i32>(~0i | global1.c.a.b.x, _wgslsmith_dot_vec3_i32(max(vec3<i32>(5442i, var_0.x, var_0.x), vec3<i32>(var_2.c, global1.c.a.b.x, -15932i)), vec3<i32>(var_2.d.x, global1.c.a.b.x, -1i) ^ vec3<i32>(global1.c.a.b.x, 15456i, 8887i))), global0.c.a.b));
    return Struct_1(global1.c.a.a, vec2<i32>(var_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c | 0i, 1i, var_2.d.x), countOneBits(~vec3<i32>(global0.c.a.b.x, var_3.c, var_2.d.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.c.a.c.x, -832f), vec2<f32>(global1.d.x, 2031f))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.d.x, -1000f))), true)), vec2<f32>(_wgslsmith_f_op_f32(round(1189f)), global0.c.a.c.x), vec2<bool>(!var_2.b.x, var_2.b.x))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_3 {
    return Struct_3(arg_0.a, ~arg_0.b >> (44669u % 32u), arg_0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-742f, arg_0.c.a.c.x, global1.c.a.c.x)) + vec3<f32>(_wgslsmith_f_op_f32(global1.c.a.c.x - 729f), 1000f, arg_0.a.x)))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> Struct_4 {
    global0 = func_4(Struct_3(global0.d.xx, min(global0.c.a.a.x | u_input.a.x, ~global1.b | u_input.b.x), global1.c, global1.d), func_2(), max(firstLeadingBit(global1.c.a.b.x >> (u_input.a.x % 32u)), ~global0.c.a.b.x), i32(-1i) * -abs(arg_2.x));
    let var_0 = Struct_4(~u_input.b.x, select(vec3<bool>(select(true, !arg_1, all(vec4<bool>(true, true, true, arg_0))), arg_0, arg_0), vec3<bool>((global1.c.a.a.x ^ u_input.b.x) >= ~4294967295u, all(vec4<bool>(arg_1, arg_0, arg_0, arg_0)) & true, false), false), 0i, _wgslsmith_add_vec2_i32(~global1.c.a.b, vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, global1.c.a.b.x, arg_2.x), arg_2), _wgslsmith_sub_vec3_i32(arg_2, arg_2)), 1i)));
    global1 = func_4(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-215f, 326f) - global0.d.zz) * _wgslsmith_div_vec2_f32(vec2<f32>(2189f, global1.d.x), vec2<f32>(408f, global1.a.x))), u_input.a.x, Struct_2(global0.c.a), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global1.d.x, global1.d.x))))), func_2(), -(~var_0.d.x), 35946i), global0.c.a, -(1i >> (~abs(u_input.a.x) % 32u)), var_0.c);
    global0 = Struct_3(global1.d.yz, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~(~u_input.b.x), u_input.b.x), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global0.c.a.a.yy, vec2<u32>(var_0.a, u_input.a.x)), abs(55677u))), Struct_2(global0.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d.x, 1245f, global1.c.a.c.x)))))));
    var var_1 = select(!vec4<bool>(!arg_1, arg_0, var_0.b.x, all(!vec4<bool>(var_0.b.x, arg_1, var_0.b.x, false))), vec4<bool>(!(-580f > global1.d.x), all(!select(var_0.b.zx, var_0.b.yx, arg_1)), all(vec2<bool>(all(vec4<bool>(arg_0, var_0.b.x, false, arg_0)), var_0.b.x && arg_1)), true), true);
    return Struct_4(max(select(0u << (global1.c.a.a.x % 32u), var_0.a, arg_0) | func_4(Struct_3(vec2<f32>(651f, 1792f), global1.c.a.a.x, global0.c, vec3<f32>(-1000f, 636f, -1000f)), func_2(), ~var_0.c, -global1.c.a.b.x).c.a.a.x, ~(_wgslsmith_div_u32(global1.c.a.a.x, global1.c.a.a.x) | ~global0.c.a.a.x)), !vec3<bool>(true, any(vec3<bool>(true, true, true)), (var_0.d.x != 0i) && select(false, false, false)), _wgslsmith_div_i32(~firstTrailingBit(_wgslsmith_mod_i32(1i, -2147483647i)), _wgslsmith_dot_vec3_i32(-arg_2, firstLeadingBit(vec3<i32>(global0.c.a.b.x, -5648i, -1i))) << (global0.b % 32u)), ~(~(-vec2<i32>(arg_2.x, var_0.c))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> vec2<bool> {
    global1 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.a.c.x, 152f) * vec2<f32>(-382f, global0.d.x)))), u_input.b.x, func_4(func_4(Struct_3(vec2<f32>(global0.c.a.c.x, 875f), global0.b, Struct_2(Struct_1(vec4<u32>(global1.b, arg_0.a, global1.b, arg_0.a), global1.c.a.b, vec2<f32>(global1.c.a.c.x, 1578f))), vec3<f32>(global0.c.a.c.x, -360f, global0.c.a.c.x)), func_4(Struct_3(global1.a, arg_0.a, global1.c, vec3<f32>(global0.a.x, 528f, -306f)), Struct_1(u_input.b, vec2<i32>(26626i, -7271i), global1.c.a.c), arg_1.d.x, 7612i).c.a, reverseBits(arg_1.d.x), ~global0.c.a.b.x), Struct_1(global1.c.a.a, arg_1.d, _wgslsmith_f_op_vec2_f32(max(global0.c.a.c, vec2<f32>(578f, -2056f)))), ~func_4(Struct_3(global0.d.xz, 0u, global0.c, global1.d), Struct_1(global1.c.a.a, vec2<i32>(23654i, global1.c.a.b.x), global0.c.a.c), -1i, arg_0.d.x).c.a.b.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.d.x, arg_1.c, 36856i, 0i), vec4<i32>(global1.c.a.b.x, -1i, arg_1.d.x, -1i), true), select(vec4<i32>(16477i, -1i, global1.c.a.b.x, arg_0.c), vec4<i32>(global0.c.a.b.x, global1.c.a.b.x, global1.c.a.b.x, global1.c.a.b.x), arg_0.b.x))).c, vec3<f32>(_wgslsmith_f_op_f32(select(func_4(Struct_3(global0.a, 24042u, global1.c, vec3<f32>(global0.a.x, 3259f, -517f)), Struct_1(vec4<u32>(global0.b, global0.b, 4294967295u, 144867u), arg_0.d, vec2<f32>(global1.c.a.c.x, -1241f)), 1i, global1.c.a.b.x).a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.d.x < global0.c.a.c.x)), _wgslsmith_div_f32(-818f, _wgslsmith_f_op_f32(round(384f))), global1.c.a.c.x)), func_4(Struct_3(global1.d.yx, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 36673u, 1137u), _wgslsmith_sub_vec3_u32(global0.c.a.a.zwy, u_input.b.wyw)), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(461f, 900f, -474f))), func_4(func_4(func_4(Struct_3(global0.c.a.c, u_input.a.x, Struct_2(Struct_1(u_input.b, vec2<i32>(-50467i, 1i), vec2<f32>(global1.c.a.c.x, 539f))), vec3<f32>(global1.a.x, global1.d.x, 788f)), Struct_1(global0.c.a.a, vec2<i32>(1i, 0i), global1.c.a.c), global1.c.a.b.x, 0i), global0.c.a, _wgslsmith_clamp_i32(arg_0.c, arg_0.c, arg_0.c), 1i), func_2(), reverseBits(-40397i << (1u % 32u)), ~(~global0.c.a.b.x)).c.a, min(-2147483647i, -7024i), abs(arg_0.d.x)).c.a, global1.c.a.b.x, countOneBits(-reverseBits(global0.c.a.b.x)));
    global1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(800f - -1142f), _wgslsmith_f_op_f32(f32(-1f) * -887f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.c.a.c.x, -842f, arg_1.b.x)))))), ~firstLeadingBit(firstLeadingBit(~23549u)), func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.a)) - _wgslsmith_div_vec2_f32(global1.a, global1.d.xx)), _wgslsmith_add_u32(0u, 1u), global1.c, vec3<f32>(2704f, _wgslsmith_f_op_f32(136f * 1312f), global0.a.x)), Struct_1(u_input.b, _wgslsmith_sub_vec2_i32(vec2<i32>(11947i, arg_0.c), arg_0.d) & vec2<i32>(-1i, arg_0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.c.a.c.x)))), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i & arg_1.d.x, reverseBits(global1.c.a.b.x)), ~(-2147483647i)), 22503i).c, vec3<f32>(1635f, _wgslsmith_f_op_f32(-global0.a.x), -647f));
    global0 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_dot_vec3_u32(u_input.b.wzz, ~(~global1.c.a.a.xzz)), global0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(global0.c.a.c.x + global1.c.a.c.x), -1245f) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c.a.c.x, 140f, global0.a.x) - vec3<f32>(global0.a.x, -324f, global0.d.x)))))), Struct_1(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(global1.a + vec2<f32>(global1.a.x, -669f)), 1u, func_4(Struct_3(global1.d.yx, global1.b, Struct_2(Struct_1(u_input.b, global1.c.a.b, vec2<f32>(global1.a.x, global1.c.a.c.x))), global1.d), global0.c.a, global1.c.a.b.x, arg_1.d.x).c, _wgslsmith_f_op_vec3_f32(-global1.d)), global0.c.a, arg_1.c, countOneBits(1i)).c.a.a, ~vec2<i32>(1i, 8945i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.a)))), max((i32(-1i) * -5641i) & (i32(-1i) * -arg_0.d.x), _wgslsmith_add_i32(global1.c.a.b.x, reverseBits(_wgslsmith_mult_i32(41717i, global0.c.a.b.x)))), arg_1.d.x);
    global1 = Struct_3(vec2<f32>(global1.c.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x)))), 1u, func_4(func_4(Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global0.d.x) - vec2<f32>(global0.a.x, -408f)), arg_1.a, func_4(Struct_3(vec2<f32>(213f, global0.c.a.c.x), arg_1.a, Struct_2(Struct_1(u_input.b, vec2<i32>(arg_0.d.x, 1i), vec2<f32>(-440f, 265f))), global1.d), global1.c.a, -27563i, arg_0.d.x).c, vec3<f32>(-1759f, global1.d.x, global0.c.a.c.x)), func_2(), -40563i, max(-1523i, -1i)), Struct_1(~abs(vec4<u32>(global0.c.a.a.x, 42110u, u_input.a.x, arg_2)), vec2<i32>(7479i, firstTrailingBit(0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 1546f))), 4522i, firstLeadingBit(1i << (max(arg_1.a, 17227u) % 32u))).c, vec3<f32>(global1.d.x, global0.d.x, -307f));
    global1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), -1000f), arg_0.a, Struct_2(Struct_1(~u_input.b, vec2<i32>(~9342i, arg_0.d.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, -306f) + global0.c.a.c))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.a.c.x, global1.a.x, global1.d.x)))), global1.d)));
    return func_1(arg_0.b.x, false, ~(-(_wgslsmith_sub_vec3_i32(vec3<i32>(-3188i, arg_0.c, arg_0.c), vec3<i32>(arg_1.d.x, -1i, global1.c.a.b.x)) & (vec3<i32>(76436i, global0.c.a.b.x, 40144i) ^ vec3<i32>(arg_1.d.x, arg_1.c, global1.c.a.b.x))))).b.yx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-325f, _wgslsmith_f_op_f32(step(1429f, 137f)));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -519f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(280f, global0.c.a.c.x)))))));
    var var_1 = vec3<i32>(global0.c.a.b.x, abs(global0.c.a.b.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -13434i, 2147483647i) | ~vec3<i32>(global0.c.a.b.x, 1i, global1.c.a.b.x), abs(countOneBits(vec3<i32>(global0.c.a.b.x, global1.c.a.b.x, global0.c.a.b.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(1003f, var_0.x), global1.a), _wgslsmith_div_vec2_f32(global1.d.xy, vec2<f32>(global0.d.x, global1.c.a.c.x)), true)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(254f, var_0.x))))), global0.d.yx, func_5(Struct_4(~global0.c.a.a.x, vec3<bool>(false, false, false), _wgslsmith_mod_i32(-21572i, global0.c.a.b.x), countOneBits(vec2<i32>(var_1.x, global1.c.a.b.x))), func_1(false, 9947i == global1.c.a.b.x, max(vec3<i32>(-9500i, -25828i, var_1.x), vec3<i32>(global1.c.a.b.x, global0.c.a.b.x, global1.c.a.b.x))), global0.c.a.a.x))));
    var_1 = vec3<i32>(global1.c.a.b.x, firstTrailingBit(select(-13880i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.c.a.b.x, global0.c.a.b.x, 2147483647i, global1.c.a.b.x)), vec4<i32>(-73528i, 2147483647i, 28561i, 0i)), global1.a.x < -940f)), _wgslsmith_clamp_i32(2147483647i, -9366i, var_1.x));
    let var_2 = select(select(vec4<bool>(!(u_input.b.x != 4294967295u), _wgslsmith_f_op_f32(743f - var_0.x) < -954f, global0.c.a.a.x != ~1u, true), vec4<bool>(true, func_1(true, all(vec3<bool>(false, false, false)), max(vec3<i32>(global1.c.a.b.x, global1.c.a.b.x, var_1.x), vec3<i32>(var_1.x, global1.c.a.b.x, global1.c.a.b.x))).b.x, true, true), !vec4<bool>(true, false, u_input.a.x < 22818u, all(vec2<bool>(false, false)))), vec4<bool>(true, true, true, true), !vec4<bool>(!all(vec4<bool>(false, false, true, false)), select(true, true, true), _wgslsmith_mult_u32(global1.c.a.a.x, 0u) == _wgslsmith_div_u32(4294967295u, u_input.a.x), !all(vec4<bool>(true, false, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-935f))), -51767i, _wgslsmith_f_op_f32(f32(-1f) * -765f));
}

