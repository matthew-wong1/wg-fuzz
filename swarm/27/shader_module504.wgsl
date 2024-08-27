struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1288f, vec2<bool>(false, true), 28499u, 16232i);

var<private> global1: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_4) -> bool {
    let var_0 = _wgslsmith_add_i32(~3414i, 1i);
    let var_1 = vec3<bool>(!(!any(!arg_3.a.b)), global0.b.x, true);
    global1 = vec4<f32>(_wgslsmith_div_f32(arg_1.a, 530f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1091f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_3.a.a, 1197f, true))))), _wgslsmith_f_op_f32(min(385f, _wgslsmith_f_op_f32(arg_1.a - 616f)))), 357f, _wgslsmith_f_op_f32(f32(-1f) * -943f));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xww)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1014f, _wgslsmith_f_op_f32(floor(arg_3.a.a)), _wgslsmith_f_op_f32(step(global1.x, -1064f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - global0.a)), -224f)));
    let var_3 = ~4294967295u;
    return (_wgslsmith_div_i32(arg_1.d, abs(arg_0.x)) <= -1i) || all(!select(select(var_1, vec3<bool>(arg_1.b.x, true, arg_3.a.b.x), global0.b.x), vec3<bool>(true, true, true), any(vec3<bool>(false, arg_3.a.b.x, true))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = -_wgslsmith_div_i32(_wgslsmith_mult_i32(-29830i, abs(~arg_2.c.d)), _wgslsmith_div_i32(select(arg_0.d, arg_2.b.a.d, true) ^ _wgslsmith_div_i32(arg_0.d, -1i), arg_0.d));
    let var_1 = Struct_3(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 76036u, arg_2.a.x, 19294u) ^ max(arg_2.a, arg_2.a), ~vec4<u32>(arg_2.c.c, 803u, 4294967295u, global0.c)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.a)), vec2<bool>(true, global0.b.x), ~min(arg_3.e.c, 4294967295u), abs(global0.d)), select(!all(vec3<bool>(global0.b.x, false, arg_3.a.b.x)), !(arg_0.b.x | global0.b.x), !arg_0.b.x), arg_3.e.d, true, Struct_1(global1.x, !arg_0.b, 4968u, reverseBits(-2891i))), arg_2.b.e);
    var var_2 = vec4<bool>(true, arg_0.b.x, false, var_1.b.d & (func_3(-vec3<i32>(arg_0.d, -1i, global0.d), Struct_1(514f, vec2<bool>(arg_3.a.b.x, var_1.b.a.b.x), 79501u, global0.d), -50745i, Struct_4(arg_3.a, arg_0.d)) | var_1.c.b.x));
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-374f))))), _wgslsmith_f_op_f32(abs(1072f)), arg_2.c.a, _wgslsmith_f_op_f32(-global0.a)));
    let var_3 = Struct_4(arg_0, global0.d);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -530f)), -817f, 2683f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.b.a.a))))), vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1753f * _wgslsmith_f_op_f32(global1.x * global1.x))), _wgslsmith_f_op_f32(floor(var_1.c.a)), 1162f));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -517f), vec2<bool>(func_3(vec3<i32>(global0.d, global0.d, 43437i), Struct_1(411f, global0.b, 96222u, 0i), global0.d, Struct_4(Struct_1(-1000f, vec2<bool>(false, true), u_input.b.x, 2147483647i), global0.d)), func_3(vec3<i32>(-47218i, -2332i, -1i), Struct_1(global1.x, global0.b, u_input.b.x, 2147483647i), global0.d, Struct_4(Struct_1(873f, vec2<bool>(true, global0.b.x), u_input.b.x, global0.d), -38846i))), global0.c, global0.d), _wgslsmith_mult_u32(1u, 1u) >> ((~85106u | min(global0.c, global0.c)) % 32u), Struct_3(firstTrailingBit(abs(vec4<u32>(66456u, global0.c, u_input.b.x, global0.c))), Struct_2(Struct_1(-179f, global0.b, 0u, 1i), global0.b.x, global0.d, true, Struct_1(global0.a, global0.b, u_input.a, global0.d)), Struct_1(961f, global0.b, u_input.a, global0.d)), Struct_2(Struct_1(_wgslsmith_f_op_f32(global1.x * global0.a), global0.b, global0.c, select(global0.d, global0.d, global0.b.x)), global0.b.x, 1i, false, Struct_1(_wgslsmith_f_op_f32(arg_0.x + global1.x), select(vec2<bool>(global0.b.x, true), vec2<bool>(false, global0.b.x), false), 6672u, global0.d)))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(select(-322f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1550f)), 694f)), all(vec3<bool>(global0.b.x, global0.b.x, false))))), global0.b, ~global0.c, ~select(firstLeadingBit(global0.d), -global0.d, global0.a >= arg_0.x) ^ global0.d);
    let var_1 = global0.c;
    let var_2 = _wgslsmith_mod_vec4_u32((firstTrailingBit(~vec4<u32>(global0.c, 1u, u_input.a, 11528u)) | ~_wgslsmith_div_vec4_u32(vec4<u32>(global0.c, var_0.c, global0.c, 0u), vec4<u32>(1u, 16031u, 71562u, 13513u))) << (~vec4<u32>(1u, ~var_0.c, 36519u, 8504u) % vec4<u32>(32u)), vec4<u32>(global0.c, _wgslsmith_div_u32(4294967295u, global0.c), 1u, ~var_0.c << (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 29096u), u_input.b) % 32u)) << (vec4<u32>(var_0.c, global0.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, var_0.c, 1u, 10078u), ~vec4<u32>(1u, 9066u, 29726u, var_0.c)), 4294967295u) % vec4<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), !vec2<bool>(all(vec4<bool>(true, false, global0.b.x, global0.b.x)), all(select(vec3<bool>(false, global0.b.x, global0.b.x), vec3<bool>(true, false, true), vec3<bool>(false, true, global0.b.x)))), 0u, var_0.d << (_wgslsmith_add_u32(4294967295u, max(countOneBits(24023u), min(u_input.b.x, 44690u))) % 32u));
    return Struct_3(abs(vec4<u32>(firstTrailingBit(countOneBits(var_0.c)), _wgslsmith_mult_u32(1u, 1u), firstLeadingBit(~global0.c), var_2.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f - global1.x), vec2<bool>(!var_0.b.x, any(vec2<bool>(var_0.b.x, global0.b.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 5800u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global0.c, 4294967295u), var_2.yzx, vec3<u32>(4294967295u, var_0.c, var_2.x))), _wgslsmith_mult_i32(var_0.d, 3056i)), true, abs(~40351i), !var_0.b.x, Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-878f * arg_0.x))), select(!global0.b, var_0.b, !vec2<bool>(var_0.b.x, var_0.b.x)), 60376u, reverseBits(max(-17396i, -2147483647i)))), Struct_1(global0.a, global0.b, 1u, global0.d));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_2) -> Struct_4 {
    var var_0 = -851f;
    var var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, max(u_input.b.x, global0.c) << (_wgslsmith_div_u32(arg_2.a.c, 0u) % 32u)), _wgslsmith_clamp_vec2_u32(~arg_1.a.wy, select(vec2<u32>(1u, arg_2.e.c), arg_1.a.wz, vec2<bool>(arg_2.e.b.x, arg_1.b.d)), ~arg_1.a.yy) & arg_1.a.xx), max(_wgslsmith_mod_vec2_u32(countOneBits(u_input.b), min(~u_input.b, vec2<u32>(18102u, arg_0.e.c))), func_2(vec2<f32>(arg_2.a.a, -1130f)).a.yx ^ select(u_input.b >> (arg_1.a.xx % vec2<u32>(32u)), vec2<u32>(6035u, 16603u), select(vec2<bool>(arg_2.b, global0.b.x), arg_0.a.b, true))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.e.a)) * 1987f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(-1701f, arg_1.c.b, select(7632u, global0.c, false), ~11217i), _wgslsmith_div_u32(~var_1.x, ~1u), arg_1, func_2(vec2<f32>(601f, -1000f)).b)).x)));
    let var_3 = global0.b;
    return Struct_4(arg_1.b.a, ~(~2147483647i));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_4 {
    return func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(global1.x)), select(vec2<bool>(false, false), global0.b, global0.b.x), arg_1.x, 1i & ~arg_0.x), !global0.b.x, firstTrailingBit(~global0.d), (~global0.c << (global0.c % 32u)) >= _wgslsmith_div_u32(countOneBits(u_input.a), ~u_input.a), Struct_1(348f, global0.b, 30363u, global0.d | -5226i)), func_2(_wgslsmith_f_op_vec2_f32(global1.yy - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(global1.wy, global1.xy))))), func_2(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(-1898f, !vec2<bool>(global0.b.x, false), _wgslsmith_sub_u32(global0.c, 1u), arg_0.x << (global0.c % 32u)), ~106061u | u_input.a, Struct_3(~vec4<u32>(u_input.a, u_input.a, 1u, 0u), func_2(vec2<f32>(1000f, 423f)).b, func_2(vec2<f32>(global0.a, global0.a)).b.e), Struct_2(Struct_1(294f, global0.b, global0.c, 22083i), true, min(20686i, arg_0.x), true, Struct_1(global0.a, vec2<bool>(false, false), 11817u, arg_0.x)))).ww).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.a, 81214u);
    var var_1 = func_1(vec2<i32>(select(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, global0.d), vec2<i32>(2147483647i, -8534i)), true), global0.d), vec3<u32>(~(~_wgslsmith_mod_u32(4294967295u, global0.c)), global0.c >> (u_input.b.x % 32u), firstTrailingBit(~u_input.a)));
    let var_2 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(~func_2(vec2<f32>(449f, 755f)).b.c, 1i), firstTrailingBit(~vec2<i32>(-2147483647i, global0.d)) | vec2<i32>(abs(0i), 811i)), vec2<i32>(-var_1.b, _wgslsmith_mod_i32(-2147483647i, ~(-2424i))) >> ((u_input.b >> (vec2<u32>(u_input.a, _wgslsmith_div_u32(var_1.a.c, 290u)) % vec2<u32>(32u))) % vec2<u32>(32u)), !(!func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, global1.x) - global1.zy)).b.e.b));
    var_1 = Struct_4(func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, global1.x) - global1.ww)), vec2<f32>(-516f, _wgslsmith_f_op_f32(-607f - -106f)))).b.e, global0.d);
    var var_3 = Struct_3(vec4<u32>(_wgslsmith_add_u32(u_input.a, ~0u), u_input.b.x, 41741u, var_1.a.c), Struct_2(Struct_1(-1267f, !select(vec2<bool>(var_1.a.b.x, global0.b.x), global0.b, vec2<bool>(var_1.a.b.x, var_1.a.b.x)), 22283u, ~(-32619i)), true, ~(~global0.d), global0.b.x, Struct_1(global0.a, func_1(reverseBits(vec2<i32>(var_1.b, 2147483647i)), vec3<u32>(29730u, 1u, global0.c)).a.b, ~1u, 8823i)), func_5(Struct_2(var_1.a, func_5(Struct_2(var_1.a, global0.b.x, var_2.x, true, Struct_1(global0.a, vec2<bool>(global0.b.x, var_1.a.b.x), 40579u, global0.d)), Struct_3(vec4<u32>(21197u, global0.c, u_input.b.x, 4294967295u), Struct_2(var_1.a, var_1.a.b.x, var_1.a.d, true, Struct_1(-2091f, vec2<bool>(true, global0.b.x), 17400u, var_1.a.d)), Struct_1(-290f, global0.b, 1u, -12108i)), func_2(vec2<f32>(496f, -389f)).b).a.b.x, var_2.x, true, Struct_1(_wgslsmith_f_op_f32(round(global0.a)), func_2(vec2<f32>(global0.a, global0.a)).c.b, func_5(Struct_2(var_1.a, true, global0.d, var_1.a.b.x, var_1.a), Struct_3(vec4<u32>(var_1.a.c, 4294967295u, var_1.a.c, 7056u), Struct_2(Struct_1(1363f, vec2<bool>(false, global0.b.x), 1u, -17293i), true, var_1.a.d, global0.b.x, Struct_1(-1240f, var_1.a.b, 142396u, 2147483647i)), var_1.a), Struct_2(Struct_1(global1.x, global0.b, 29233u, 31388i), true, var_2.x, false, Struct_1(global1.x, vec2<bool>(true, true), 4942u, -31539i))).a.c, global0.d)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 970f))), Struct_2(Struct_1(global1.x, func_1(vec2<i32>(global0.d, -2147483647i), vec3<u32>(var_1.a.c, 0u, 24378u)).a.b, _wgslsmith_add_u32(u_input.b.x, 51523u), var_2.x >> (0u % 32u)), select(!var_1.a.b.x, var_1.a.b.x, false), -20095i, _wgslsmith_add_u32(8609u, u_input.a) < _wgslsmith_mod_u32(22073u, 39407u), Struct_1(var_1.a.a, !var_1.a.b, var_1.a.c, -1i))).a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec2<u32>(var_1.a.c, ~(var_3.b.e.c << (0u % 32u)) & firstTrailingBit(4294967295u)));
}

