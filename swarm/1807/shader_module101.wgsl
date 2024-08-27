struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, false, false), -816f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    return _wgslsmith_sub_i32(~u_input.a, _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i, ~_wgslsmith_mult_i32(u_input.c, u_input.b.x)), abs(~(-2147483647i))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = ~_wgslsmith_div_vec4_i32(select(~countOneBits(vec4<i32>(-1663i, -41797i, u_input.b.x, 6500i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 23824i, -25624i, u_input.d.x), reverseBits(vec4<i32>(2147483647i, -51481i, -1i, 59557i))), false), vec4<i32>(15453i, _wgslsmith_mod_i32(-1i, u_input.b.x), -func_3(), u_input.a));
    let var_2 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(-8387i, -1i, -21728i, u_input.b.x), -vec4<i32>(var_1.x >> (64253u % 32u), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), firstLeadingBit(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.b.x), vec3<i32>(0i, 50691i, 11342i)))), vec4<i32>(68899i, ~(i32(-1i) * -2147483647i), _wgslsmith_add_i32(30424i, _wgslsmith_div_i32(var_1.x, -u_input.a)), ~(~(var_1.x & -2147483647i))));
    var_0 = Struct_1(vec3<bool>(arg_1.a.b.x & false, select(!(1638f != global0.c), true, ~var_1.x == _wgslsmith_mult_i32(-1i, -46874i)), true), arg_0.a, 379f);
    var_0 = arg_1.a;
    return _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(1u, 1u, 1u, 1u), reverseBits(vec4<u32>(42135u, 1u, 19521u, 3986u)), select(vec4<bool>(arg_1.d.a.x, global0.a.x, arg_1.d.b.x, arg_0.a.x), vec4<bool>(arg_1.a.a.x, var_0.b.x, arg_1.d.a.x, var_0.a.x), var_0.b.x))) >> (vec4<u32>(~(~firstTrailingBit(4294967295u)), 1u, _wgslsmith_div_u32(abs(1u), ~1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 14660u), reverseBits(vec2<u32>(11151u, 4294967295u))) ^ _wgslsmith_mod_u32(36581u, 62958u)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) * _wgslsmith_f_op_f32(-global0.c)) * 878f))));
    var var_1 = global0.b.yz;
    let var_2 = Struct_1(global0.a, !vec3<bool>(any(select(vec4<bool>(var_1.x, true, false, global0.b.x), vec4<bool>(arg_1, var_1.x, true, false), vec4<bool>(false, var_1.x, false, false))), var_1.x, select(global0.c == var_0, false, global0.a.x)), _wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(floor(-669f)))));
    var var_3 = var_2;
    var var_4 = arg_0.ww;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c - var_2.c))))) * 1f);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(!global0.b, vec3<bool>(~u_input.d.x >= u_input.a, true && (arg_2.b.x || global0.b.x), arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1649f - -241f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.c))), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_u32(func_2(arg_2, Struct_2(arg_2, vec4<f32>(arg_1.c, 1818f, -1502f, arg_2.c), arg_2, Struct_1(vec3<bool>(arg_2.b.x, arg_2.b.x, false), arg_1.b, 2172f))), ~vec4<u32>(79020u, 13517u, 35138u, 74174u)), true)), arg_2.c), arg_1, Struct_1(!(!arg_1.b), !vec3<bool>(arg_1.a.x, all(vec3<bool>(true, arg_2.a.x, global0.a.x)), true), global0.c));
    let var_1 = Struct_1(arg_2.b, vec3<bool>(false, !select(false, false, all(global0.b.zy)), true), _wgslsmith_div_f32(var_0.b.x, 183f));
    global0 = arg_2;
    return Struct_1(!(!global0.a), select(vec3<bool>(false, all(arg_1.b.xx), ~70550u > func_2(Struct_1(var_0.d.a, vec3<bool>(arg_1.a.x, global0.a.x, arg_1.b.x), -924f), Struct_2(Struct_1(vec3<bool>(false, false, global0.b.x), vec3<bool>(var_0.a.a.x, true, false), global0.c), vec4<f32>(arg_0, arg_2.c, -2152f, arg_0), var_0.d, var_1)).x), vec3<bool>(false, !select(arg_1.a.x, true, var_0.d.a.x), global0.a.x), select(select(select(var_0.d.b, var_1.a, arg_1.b), vec3<bool>(false, true, false), 1i == u_input.d.x), vec3<bool>(any(var_0.a.b.zx), arg_1.b.x & false, true), true)), _wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_2.c, _wgslsmith_f_op_f32(271f + arg_1.c)))))));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = abs(_wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 18070u), _wgslsmith_sub_vec2_u32(vec2<u32>(20376u, 20095u), vec2<u32>(1u, 1u))), select(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_clamp_u32(1u, 0u, 37940u), 1u), false)));
    var var_1 = func_2(func_1(_wgslsmith_f_op_f32(func_4(firstTrailingBit(vec4<u32>(var_0.x, var_0.x, var_0.x, 1u) & vec4<u32>(18535u, 25475u, 0u, 17905u)), true)), arg_0, func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c))), arg_0, func_1(_wgslsmith_f_op_f32(global0.c * -126f), func_1(-519f, Struct_1(global0.a, arg_0.a, arg_0.c), arg_0), arg_0))), Struct_2(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c)) * _wgslsmith_f_op_f32(floor(-995f))), Struct_1(global0.b, vec3<bool>(arg_0.a.x, false, arg_0.b.x), _wgslsmith_div_f32(arg_0.c, arg_0.c)), func_1(_wgslsmith_f_op_f32(-arg_0.c), func_1(1000f, arg_0, Struct_1(arg_0.a, global0.b, arg_0.c)), func_1(1526f, arg_0, Struct_1(vec3<bool>(global0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, true, false), global0.c)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, 1285f, global0.c, 111f) * vec4<f32>(arg_0.c, 1762f, -1023f, 801f))))), func_1(321f, func_1(_wgslsmith_f_op_f32(967f * -1085f), arg_0, Struct_1(vec3<bool>(true, false, true), global0.b, 142f)), arg_0), arg_0)).x;
    let var_2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d.x, u_input.c, u_input.c), vec3<i32>(31431i, 1i, reverseBits(u_input.d.x))), ~_wgslsmith_clamp_i32(abs(-10620i), -u_input.d.x, -u_input.a), countOneBits(u_input.a), 2147483647i));
    let var_3 = Struct_2(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -840f))), arg_0, Struct_1(select(arg_0.a, !global0.b, !global0.a.x), select(global0.a, global0.a, true), _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(round(global0.c))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-987f, global0.c, 544f, global0.c) + vec4<f32>(global0.c, -482f, -588f, -113f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(954f, 1365f, arg_0.c, 1000f), vec4<f32>(global0.c, 1569f, global0.c, -2059f)))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.c, _wgslsmith_f_op_f32(arg_0.c + global0.c), 1000f, _wgslsmith_f_op_f32(step(-267f, arg_0.c)))))), func_1(_wgslsmith_f_op_f32(ceil(448f)), Struct_1(select(arg_0.b, !vec3<bool>(arg_0.b.x, true, true), true), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c)))), arg_0), arg_0);
    let var_4 = Struct_2(Struct_1(!arg_0.b, !global0.b, -1064f), vec4<f32>(_wgslsmith_f_op_f32(-var_3.c.c), -126f, global0.c, _wgslsmith_f_op_f32(select(-874f, 1992f, arg_0.a.x))), arg_0, arg_0);
    return func_1(arg_0.c, func_1(var_4.c.c, Struct_1(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1090f), Struct_1(var_3.a.a, vec3<bool>(var_3.c.b.x, false, false), global0.c), func_1(arg_0.c, var_3.c, Struct_1(vec3<bool>(false, true, var_4.c.a.x), arg_0.b, arg_0.c))).b, !func_1(arg_0.c, arg_0, var_3.d).b, var_3.a.c), func_1(_wgslsmith_f_op_f32(var_4.a.c * _wgslsmith_div_f32(var_4.a.c, 169f)), func_1(1096f, var_3.d, Struct_1(arg_0.b, vec3<bool>(global0.a.x, true, var_4.d.a.x), arg_0.c)), func_1(_wgslsmith_f_op_f32(-global0.c), func_1(929f, var_3.a, arg_0), func_1(arg_0.c, var_3.c, var_4.a)))), func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - -2583f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1497f))))), func_1(var_4.c.c, func_1(_wgslsmith_f_op_f32(1410f + var_4.b.x), func_1(global0.c, Struct_1(vec3<bool>(false, arg_0.b.x, true), vec3<bool>(global0.a.x, arg_0.a.x, global0.b.x), arg_0.c), Struct_1(vec3<bool>(false, true, false), vec3<bool>(var_3.c.b.x, arg_0.a.x, var_4.c.b.x), arg_0.c)), func_1(-337f, Struct_1(var_4.c.b, vec3<bool>(arg_0.a.x, var_4.d.b.x, arg_0.a.x), -169f), Struct_1(var_3.a.a, global0.a, -537f))), var_3.a), Struct_1(!(!var_4.c.a), global0.a, 907f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, 876f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.c), 453f, global0.a.x == global0.b.x)))));
    global0 = func_5(func_1(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(round(1585f))), Struct_1(global0.a, !select(global0.a, global0.b, global0.a.x), _wgslsmith_f_op_f32(floor(1430f))), Struct_1(!(!global0.a), !global0.b, 253f)));
    var_0 = global0.c;
    let var_1 = global0.b;
    global0 = func_1(func_5(Struct_1(func_1(-171f, func_1(global0.c, Struct_1(vec3<bool>(false, var_1.x, global0.b.x), vec3<bool>(global0.b.x, false, false), global0.c), Struct_1(vec3<bool>(false, var_1.x, var_1.x), global0.b, global0.c)), Struct_1(vec3<bool>(true, var_1.x, false), vec3<bool>(false, false, false), 1052f)).a, func_1(_wgslsmith_f_op_f32(min(global0.c, -120f)), func_1(global0.c, Struct_1(vec3<bool>(false, var_1.x, var_1.x), global0.a, 1617f), Struct_1(vec3<bool>(var_1.x, false, global0.a.x), vec3<bool>(var_1.x, var_1.x, var_1.x), -1000f)), func_5(Struct_1(global0.a, vec3<bool>(global0.b.x, true, true), -335f))).b, _wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(func_4(vec4<u32>(7523u, 4294967295u, 51209u, 1u), global0.b.x))))).c, Struct_1(func_5(Struct_1(!vec3<bool>(false, global0.a.x, false), func_5(Struct_1(vec3<bool>(false, global0.b.x, var_1.x), global0.b, global0.c)).b, _wgslsmith_div_f32(1898f, 1722f))).a, !global0.b, -756f), Struct_1(global0.a, select(!(!vec3<bool>(var_1.x, global0.a.x, global0.a.x)), global0.a, global0.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.c))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_sub_i32(u_input.a, 18548i), reverseBits(_wgslsmith_mod_i32(33462i, _wgslsmith_sub_i32(31571i, u_input.c))), 0u);
}

