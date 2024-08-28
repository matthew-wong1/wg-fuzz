struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(Struct_1(select(!(!vec3<bool>(arg_0.c.x, arg_0.c.x, arg_1.a.x)), vec3<bool>(false, true, true), all(vec3<bool>(arg_1.a.x, true, arg_1.c.x))), abs(vec3<i32>(arg_0.a.b.x, arg_0.a.b.x, max(arg_0.a.b.x, arg_1.b.x))), vec2<bool>(arg_0.a.c.x, arg_0.c.x)), firstLeadingBit(firstLeadingBit(24243u)) >> (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(u_input.a, u_input.a)), 17495u, ~(~u_input.a)) % 32u), !arg_0.c);
    global0 = -var_0.a.b;
    var var_1 = _wgslsmith_div_f32(-799f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(331f)) - _wgslsmith_f_op_f32(-350f + 2302f)));
    let var_2 = -356f;
    var_0 = arg_0;
    return arg_0.a.a;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = Struct_1(select(!vec3<bool>(true, true, any(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), func_3(Struct_2(Struct_1(vec3<bool>(true, true, true), vec3<i32>(global0.x, global0.x, 1450i), vec2<bool>(true, false)), u_input.a, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(global0.x, -15748i, -15752i), vec2<bool>(true, true))), true), select(vec3<bool>(1i != arg_0, true, true), vec3<bool>(true, true, true), func_3(Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<i32>(-2147483647i, u_input.b, u_input.c), vec2<bool>(false, false)), 4294967295u, vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(-32194i, global0.x, 0i), vec2<bool>(false, true))))), max(_wgslsmith_div_vec3_i32(~(~vec3<i32>(arg_0, -1i, -2147483647i)), vec3<i32>(2147483647i, firstTrailingBit(global0.x), ~u_input.c)), ~firstTrailingBit(max(vec3<i32>(u_input.b, 1i, -1i), vec3<i32>(0i, global0.x, arg_0)))), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-594f, _wgslsmith_f_op_f32(abs(701f)))) + _wgslsmith_f_op_f32(1588f + 1f)), -1389f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(913f * -306f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -400f), _wgslsmith_f_op_f32(round(663f)), var_0.c.x)))))));
    var var_2 = Struct_3(Struct_1(vec3<bool>(true, true, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.b.x, _wgslsmith_div_i32(-1503i, u_input.c), 1874i << (u_input.a % 32u)), ~select(vec3<i32>(var_0.b.x, u_input.b, 2147483647i), vec3<i32>(1i, 71025i, 2147483647i), vec3<bool>(true, var_0.a.x, true)), _wgslsmith_sub_vec3_i32(min(var_0.b, var_0.b), vec3<i32>(24133i, u_input.b, 1i) & var_0.b)), vec2<bool>(false, false)), 58747i, _wgslsmith_div_vec3_i32((~vec3<i32>(2147483647i, var_0.b.x, global0.x) >> (vec3<u32>(0u, u_input.a, 36595u) % vec3<u32>(32u))) & abs(abs(vec3<i32>(var_0.b.x, -2147483647i, -2147483647i))), firstTrailingBit(var_0.b) ^ var_0.b), Struct_1(!var_0.a, ((vec3<i32>(2147483647i, arg_0, -1i) | vec3<i32>(var_0.b.x, var_0.b.x, -43851i)) >> (vec3<u32>(u_input.a, 67926u, u_input.a) % vec3<u32>(32u))) ^ var_0.b, select(!select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(false, true), var_0.a.x), vec2<bool>(false, true), all(select(vec3<bool>(true, false, var_0.c.x), vec3<bool>(false, var_0.a.x, var_0.c.x), true)))), Struct_2(Struct_1(func_3(Struct_2(Struct_1(vec3<bool>(var_0.a.x, var_0.c.x, true), var_0.b, vec2<bool>(true, true)), u_input.a, vec4<bool>(true, var_0.c.x, true, true)), Struct_1(var_0.a, vec3<i32>(32933i, -7238i, -57355i), var_0.c)), var_0.b, var_0.c), ~u_input.a, select(!(!vec4<bool>(var_0.a.x, false, true, true)), select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.c.x, var_0.c.x), vec4<bool>(true, var_0.a.x, true, true), vec4<bool>(var_0.c.x, false, true, true)), vec4<bool>(false, false, false, var_0.c.x), var_0.a.x & var_0.a.x), vec4<bool>(var_0.c.x, true, var_0.a.x, true))));
    var var_3 = all(vec2<bool>(!(!all(vec2<bool>(var_2.a.a.x, true))), var_0.c.x));
    var var_4 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(323u, var_2.e.b), select(vec2<u32>(35030u, 1u), vec2<u32>(u_input.a, u_input.a), var_2.a.c)), vec2<u32>(4294967295u, 1u) | abs(vec2<u32>(var_2.e.b, 25044u))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(var_2.e.b, 0u), select(vec2<u32>(26801u, var_2.e.b), vec2<u32>(1u, u_input.a), var_0.a.xx))), vec2<u32>(~_wgslsmith_mod_u32(var_2.e.b, u_input.a | var_2.e.b), var_2.e.b), ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.a, 37212u), var_2.e.b), ~vec2<u32>(0u, var_2.e.b) & vec2<u32>(4294967295u, 4294967295u)));
    return 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = Struct_2(Struct_1(vec3<bool>(func_3(Struct_2(Struct_1(arg_3.a, vec3<i32>(5385i, global0.x, u_input.b), vec2<bool>(arg_2.x, var_0)), arg_1.x, vec4<bool>(false, arg_3.a.x, false, var_0)), Struct_1(arg_3.a, vec3<i32>(global0.x, global0.x, 13664i), arg_2.zz)).x, (var_0 | var_0) | true, arg_3.a.x), _wgslsmith_div_vec3_i32(firstLeadingBit(arg_3.b), vec3<i32>(-2147483647i, u_input.b << (4294967295u % 32u), -global0.x)), func_3(Struct_2(arg_3, 35577u, vec4<bool>(arg_3.c.x, true, arg_3.c.x, true)), Struct_1(vec3<bool>(arg_3.a.x, var_0, false), countOneBits(arg_3.b), !vec2<bool>(true, var_0))).zz), 0u, select(vec4<bool>(all(!vec4<bool>(true, true, false, arg_3.a.x)), true, true, var_0), select(!select(vec4<bool>(false, var_0, true, arg_3.c.x), vec4<bool>(false, true, arg_3.c.x, arg_3.c.x), var_0), select(!vec4<bool>(true, true, var_0, arg_3.a.x), !vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), arg_3.a.x), false), select(!select(vec4<bool>(false, true, false, true), vec4<bool>(arg_3.c.x, false, arg_2.x, arg_2.x), true), vec4<bool>(true, true, true, !arg_3.a.x), !(!vec4<bool>(arg_2.x, false, arg_3.c.x, arg_3.c.x)))));
    let var_2 = reverseBits(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.b, var_1.b, 0u, arg_0.x)), ~reverseBits(vec4<u32>(arg_0.x, 17805u, 4294967295u, var_1.b))));
    var_1 = Struct_2(Struct_1(func_3(Struct_2(arg_3, 4294967295u, select(vec4<bool>(false, false, true, arg_2.x), var_1.c, vec4<bool>(true, arg_3.a.x, var_0, true))), Struct_1(arg_3.a, arg_3.b, func_3(Struct_2(Struct_1(var_1.c.wzx, vec3<i32>(0i, var_1.a.b.x, arg_3.b.x), arg_2.zy), 8389u, vec4<bool>(var_1.a.c.x, false, var_1.a.c.x, var_0)), Struct_1(vec3<bool>(arg_2.x, arg_2.x, false), vec3<i32>(0i, arg_3.b.x, 9385i), vec2<bool>(false, arg_2.x))).zx)), vec3<i32>(37570i, 2147483647i, -12189i), !select(var_1.a.a.yy, vec2<bool>(arg_2.x, false), var_1.a.a.x)), ~arg_0.x, select(vec4<bool>(arg_2.x, !(!var_1.a.c.x), all(!var_1.c.zxw), func_2(global0.x) != ~1u), select(var_1.c, select(select(var_1.c, var_1.c, var_0), var_1.c, arg_3.a.x), true), true));
    let var_3 = Struct_3(arg_3, firstLeadingBit(-2557i), firstLeadingBit(~firstLeadingBit(~vec3<i32>(-20818i, arg_3.b.x, u_input.c))), Struct_1(!func_3(Struct_2(var_1.a, 53962u, vec4<bool>(var_0, arg_3.a.x, true, true)), Struct_1(arg_2, vec3<i32>(global0.x, -29831i, arg_3.b.x), vec2<bool>(var_1.a.c.x, arg_2.x))), var_1.a.b, arg_2.zy), Struct_2(arg_3, ~_wgslsmith_mult_u32(0u, ~var_1.b), vec4<bool>(any(arg_2.zz), true, !arg_2.x, !(var_2.x > u_input.a))));
    return _wgslsmith_mult_u32(~_wgslsmith_mult_u32(var_3.e.b >> (44057u % 32u), _wgslsmith_clamp_u32(60832u, 1u, 1u)) & 32665u, ~(~abs(~16725u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec4<u32> {
    var var_0 = func_4(~vec2<u32>(76380u, _wgslsmith_div_u32(arg_3, u_input.a)), vec2<u32>(29001u, func_2(-7407i)), !arg_1.a, arg_1);
    var_0 = 69767u;
    global0 = vec3<i32>(global0.x, 3860i, global0.x);
    let var_1 = ~(~reverseBits(vec2<u32>(arg_3, arg_3)) | ~(~vec2<u32>(0u, u_input.a) >> (vec2<u32>(arg_3, arg_3) % vec2<u32>(32u))));
    global0 = arg_1.b;
    return reverseBits(abs(~vec4<u32>(1u, 51456u, ~0u, max(8745u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~func_1(1f, Struct_1(vec3<bool>(false, true, true), vec3<i32>(u_input.b, -26399i, global0.x), vec2<bool>(true, true)), any(vec3<bool>(false, true, true)), _wgslsmith_mod_u32(1u, u_input.a)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(7509u, u_input.a, u_input.a, u_input.a), countOneBits(vec4<u32>(25158u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_1 = Struct_2(Struct_1(vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, true))), abs(vec3<i32>(6829i << (u_input.a % 32u), ~(-26565i), -u_input.c)), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)))), ~u_input.a, select(!vec4<bool>(true, any(vec3<bool>(false, true, false)), false, true), select(vec4<bool>(true, u_input.b <= 2198i, any(vec3<bool>(true, false, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, all(vec2<bool>(true, false)), true)), vec4<bool>(!any(vec3<bool>(false, true, true)), true, false, true)));
    global0 = var_1.a.b;
    var var_2 = Struct_2(var_1.a, func_1(-1708f, var_1.a, false, 15515u).x, vec4<bool>(true, true, func_3(Struct_2(var_1.a, 54133u, vec4<bool>(true, var_1.a.a.x, true, true)), var_1.a).x, !func_3(Struct_2(var_1.a, 4294967295u, vec4<bool>(true, var_1.a.c.x, var_1.a.c.x, var_1.c.x)), var_1.a).x));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -707f);
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(194f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(979f)) - _wgslsmith_f_op_f32(ceil(425f)))), _wgslsmith_f_op_f32(116f - var_3), -718f) - vec4<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3)) + 1715f), -569f, 617f));
    var var_5 = Struct_3(Struct_1(vec3<bool>(var_2.c.x, !var_2.c.x && select(var_2.a.c.x, true, var_2.c.x), reverseBits(var_2.b) > _wgslsmith_clamp_u32(var_0.x, var_1.b, var_0.x)), -(abs(var_2.a.b) | vec3<i32>(-85919i, -19207i, -11590i)), var_1.a.a.yx), var_1.a.b.x, var_1.a.b ^ (var_2.a.b & _wgslsmith_div_vec3_i32(vec3<i32>(-3621i, 21020i, var_2.a.b.x), -vec3<i32>(1i, u_input.c, u_input.c))), var_2.a, Struct_2(var_2.a, 22680u, vec4<bool>(true, !var_2.c.x, var_1.a.a.x, func_3(Struct_2(var_1.a, 27305u, var_2.c), var_1.a).x)));
    var_2 = var_5.e;
    var var_6 = var_2.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~var_1.b), 3880u, var_0.x, _wgslsmith_dot_vec3_u32(var_0.xyw, firstLeadingBit(var_0.wwz))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_4))), 1u);
}

