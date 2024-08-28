struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = false;
    global0 = -1081f;
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_div_i32(-3261i, abs(1i)), 1i, ~0i), select(vec2<u32>(max(u_input.a.x, ~4294967295u), firstTrailingBit(u_input.b.x)), u_input.a, !all(vec3<bool>(true, true, true))), u_input.a.x);
    var var_2 = any(vec4<bool>(select(true, true, u_input.a.x > _wgslsmith_mod_u32(21125u, var_1.b.x)), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true));
    let var_3 = Struct_1(~vec3<i32>(var_1.a.x, -1i, -_wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(var_1.a.x, var_1.a.x, 0i))), select(vec2<u32>(38133u, var_1.b.x), var_1.b, select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), !all(vec4<bool>(false, true, false, false)))), ~(~_wgslsmith_add_u32(~u_input.a.x, select(u_input.a.x, 0u, false))));
    return -1596f > _wgslsmith_f_op_f32(round(234f));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<i32> {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(412f)), -1543f)))));
    let var_0 = u_input.b.x;
    var var_1 = select(vec4<bool>(true, false | (all(vec3<bool>(false, false, false)) || false), true, any(vec2<bool>(true, true))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), func_3() | (21097u <= u_input.b.x)), select(vec4<bool>(false, false, true, !all(vec2<bool>(false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), !vec4<bool>(func_3(), 19229u >= arg_3.b.x, true, u_input.b.x <= u_input.a.x)));
    var var_2 = u_input.b.x;
    let var_3 = arg_3;
    return vec4<i32>(reverseBits(-14843i), 0i, _wgslsmith_mult_i32(-1715i, arg_1.x), -2147483647i);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -(vec4<i32>(-1i) * -(~func_2(vec4<u32>(arg_0.c, u_input.b.x, u_input.a.x, 60184u), vec2<i32>(18985i, arg_0.a.x), vec2<i32>(arg_0.a.x, 8089i), Struct_1(arg_0.a, vec2<u32>(u_input.a.x, arg_0.b.x), 1u))));
    global0 = -1502f;
    var var_1 = var_0.x;
    var var_2 = vec4<u32>(~(~arg_0.b.x), u_input.a.x, 91226u, 17644u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(946f)) + _wgslsmith_div_f32(442f, -476f)));
    return Struct_1(vec3<i32>(var_0.x, 0i, -1i), ~reverseBits(vec2<u32>(1u, var_2.x)) << (~(arg_0.b & vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_add_u32(~var_2.x, ~u_input.b.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = ~u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-149f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -647f))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2689f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(round(-288f)))))));
    let var_2 = func_1(Struct_1(_wgslsmith_div_vec3_i32(select(arg_3, vec3<i32>(2147483647i, arg_3.x, arg_3.x), vec3<bool>(true, false, true)), -arg_3) << (vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, var_0), _wgslsmith_sub_u32(arg_1.c, 0u), max(arg_1.c, 75393u)) % vec3<u32>(32u)), ~_wgslsmith_clamp_vec2_u32(arg_1.b, u_input.a, abs(vec2<u32>(4294967295u, 4294967295u))), select(arg_0, 371u, all(vec4<bool>(false, false, true, false)))));
    var var_3 = ~_wgslsmith_mod_vec4_i32(-vec4<i32>(~arg_1.a.x, -2147483647i, var_2.a.x, 29665i), select(~vec4<i32>(var_2.a.x, -3292i, -2147483647i, arg_1.a.x), -vec4<i32>(-18801i, 1i, -9519i, 46493i), true) | vec4<i32>(~arg_3.x, var_2.a.x | arg_3.x, -1i, ~arg_2));
    global0 = -1164f;
    return ~(~(-select(-vec3<i32>(arg_1.a.x, var_3.x, arg_3.x), ~vec3<i32>(arg_3.x, arg_3.x, 0i), 33089u == arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 37223u;
    var var_1 = Struct_1(func_4(u_input.a.x, func_1(Struct_1(vec3<i32>(2147483647i, 25439i, -36056i), u_input.b, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.a.x)))), -1i, vec3<i32>(1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 59668i, 0i), vec3<i32>(2147483647i, -2147483647i, 2147483647i)), -5426i)), firstTrailingBit(func_1(Struct_1(vec3<i32>(-21010i, -1i, -31609i) >> (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), abs(u_input.a), u_input.b.x)).b), _wgslsmith_mult_u32(10523u, _wgslsmith_add_u32(13858u, _wgslsmith_add_u32(u_input.b.x, u_input.a.x))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-567f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-890f + 1732f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) + _wgslsmith_f_op_f32(sign(-1000f)))), false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1046f + -151f) * _wgslsmith_f_op_f32(f32(-1f) * -788f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1750f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(840f - 749f) * _wgslsmith_f_op_f32(select(1000f, -870f, true))))));
    var var_3 = func_1(func_1(func_1(func_1(Struct_1(vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x), u_input.b, 4294967295u)))));
    let var_4 = _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-9355i, abs(var_3.a.x), var_1.a.x), var_3.a), reverseBits(-max(var_3.a, var_1.a))) >> (~vec3<u32>(var_1.c, countOneBits(~0u), var_3.c) % vec3<u32>(32u));
    let var_5 = var_3.b.x;
    let var_6 = ~func_4(firstTrailingBit(8047u), func_1(func_1(func_1(Struct_1(var_1.a, var_3.b, 16138u)))), var_3.a.x, (vec3<i32>(var_4.x, -27715i, var_4.x) << (vec3<u32>(1u, var_1.c, 4294967295u) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(0u, 12696u, 1u)), select(vec3<u32>(4294967295u, var_3.c, 0u), vec3<u32>(var_1.b.x, var_3.b.x, 38849u), false)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(~(vec3<u32>(67519u, 27964u, 1u) & ~vec3<u32>(var_3.b.x, 4294967295u, 15542u)), (select(vec3<u32>(34897u, u_input.a.x, var_1.b.x), vec3<u32>(0u, 46135u, 4294967295u), false) << ((vec3<u32>(u_input.b.x, 4163u, 4294967295u) ^ vec3<u32>(54465u, u_input.b.x, var_1.c)) % vec3<u32>(32u))) | vec3<u32>(1u, 0u, ~46547u)), 1i);
}

