struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_1(~vec4<u32>(~abs(0u), reverseBits(u_input.a.x) ^ u_input.a.x, 34111u, _wgslsmith_mod_u32(~19748u, ~global0.a.x)));
    var_0 = Struct_1(~var_0.a);
    global0 = Struct_1(~min(var_0.a, ~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 4294967295u)));
    var var_1 = vec3<i32>(~0i, _wgslsmith_div_i32(-arg_0.x, arg_0.x) ^ -select(arg_0.x, arg_0.x, true), select(~arg_0.x, 0i, false));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(16201u, global0.a.x) & global0.a.x, ~global0.a.x), ~(~_wgslsmith_clamp_u32(1u, var_0.a.x, 14518u)), global0.a.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, global0.a), abs(1u))));
    return ~15644u;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: f32) -> vec2<bool> {
    global0 = Struct_1((~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global0.a.x)) ^ vec4<u32>(func_3(vec2<i32>(arg_2, 2147483647i)), _wgslsmith_div_u32(global0.a.x, global0.a.x), global0.a.x, ~85939u)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 30355u, u_input.a.x), global0.a ^ ~vec4<u32>(u_input.a.x, 0u, u_input.a.x, global0.a.x)) % vec4<u32>(32u)));
    global0 = Struct_1(u_input.a);
    global0 = Struct_1(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 58812u, 106181u, 0u), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(0u, 0u, 49194u, 2985u))), ~select(vec4<u32>(u_input.a.x, global0.a.x, u_input.a.x, 8615u), vec4<u32>(global0.a.x, u_input.a.x, global0.a.x, 4294967295u), false), vec4<u32>(0u, global0.a.x, global0.a.x, 27698u) & vec4<u32>(u_input.a.x, u_input.a.x, global0.a.x, 12638u)), vec4<u32>(_wgslsmith_mod_u32(~30642u, ~u_input.a.x), 0u, ~(~u_input.a.x), 0u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true)), false), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false))));
    global0 = Struct_1(~u_input.a);
    global0 = Struct_1(u_input.a);
    return select(!vec2<bool>(select(arg_2 > arg_0, true, true), false), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
}

fn func_1() -> Struct_1 {
    let var_0 = select(vec4<bool>(true, any(func_2(-2215i, -802f, -1i, -1176f)) & true, true, any(vec3<bool>(true, func_2(1i, -854f, 2147483647i, 213f).x, any(vec2<bool>(false, true))))), !vec4<bool>((global0.a.x == 1u) && func_2(-37790i, -864f, 0i, -863f).x, all(vec2<bool>(true, true)), false, true), vec4<bool>(true, all(vec2<bool>(true, func_2(0i, 1008f, -1i, -1053f).x)), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))));
    let var_1 = false;
    global0 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(2387u, max(abs(1u), global0.a.x), global0.a.x ^ ~1u, 7750u), _wgslsmith_add_vec4_u32(~select(vec4<u32>(1u, 22109u, 4294967295u, 9023u), global0.a, var_1), _wgslsmith_mod_vec4_u32(u_input.a, global0.a) | u_input.a)));
    global0 = Struct_1(global0.a);
    var var_2 = var_1;
    return Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x << (~global0.a.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global0.a.x, 1u, global0.a.x), ~u_input.a.x, 1u), 7074u, ~_wgslsmith_dot_vec4_u32(global0.a, global0.a)), vec4<u32>(42732u, ~firstLeadingBit(69888u), ~1u, u_input.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-258f)))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(413f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1051f)), _wgslsmith_f_op_f32(trunc(-1000f))))));
    let var_1 = vec2<u32>(~arg_1.a.x, ~arg_2.a.x);
    var var_2 = var_0.x;
    var var_3 = func_1();
    var var_4 = arg_0;
    return Struct_1(vec4<u32>(1u, 0u, 53665u, ~4294967295u) ^ select(_wgslsmith_mult_vec4_u32(abs(global0.a), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, arg_1.a.x, 49982u), var_4.a)), ~(~global0.a), ~18435u == arg_1.a.x));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = select(~_wgslsmith_mod_vec4_i32(min(vec4<i32>(-3012i, 3501i, 13775i, -14852i), vec4<i32>(0i, 0i, 2147483647i, -16300i)), abs(vec4<i32>(-23429i, -2147483647i, -2147483647i, 50869i))) << (arg_0.a % vec4<u32>(32u)), -(abs(min(vec4<i32>(-41234i, 36985i, 0i, 6154i), vec4<i32>(-43570i, -2147483647i, 14600i, 8142i))) << (~_wgslsmith_clamp_vec4_u32(arg_2.a, u_input.a, arg_0.a) % vec4<u32>(32u))), !(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))));
    let var_1 = func_4(arg_0, func_4(arg_2, arg_0, arg_0, func_1()), arg_2, func_4(arg_0, func_1(), Struct_1(u_input.a), func_1()));
    let var_2 = func_4(func_4(arg_2, arg_2, Struct_1(abs(~vec4<u32>(u_input.a.x, global0.a.x, var_1.a.x, arg_0.a.x))), Struct_1(func_4(var_1, arg_2, var_1, func_1()).a)), func_4(var_1, arg_2, func_1(), func_4(func_1(), var_1, var_1, func_1())), func_4(Struct_1(select(vec4<u32>(4294967295u, arg_2.a.x, arg_1, 42339u), vec4<u32>(var_1.a.x, arg_1, var_1.a.x, arg_1), true) & vec4<u32>(arg_1, 4294967295u, var_1.a.x, arg_1)), Struct_1(select(var_1.a, vec4<u32>(var_1.a.x, 1u, arg_2.a.x, global0.a.x), false) & _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_0.a.x, 13788u, u_input.a.x), vec4<u32>(arg_1, global0.a.x, u_input.a.x, 15992u), vec4<u32>(arg_0.a.x, 92246u, arg_2.a.x, 0u))), Struct_1(abs(~arg_0.a)), Struct_1(select(vec4<u32>(arg_1, u_input.a.x, global0.a.x, arg_1), arg_0.a, vec4<bool>(true, false, true, false)) & global0.a)), func_1());
    let var_3 = ~2147483647i;
    return func_4(Struct_1(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_1, 45136u, 83733u, 11140u)), abs(min(vec4<u32>(var_2.a.x, global0.a.x, global0.a.x, 1u), var_2.a)), u_input.a)), var_1, func_4(func_4(Struct_1(vec4<u32>(254u, arg_1, arg_1, 4294967295u)), Struct_1(arg_0.a & var_2.a), func_4(func_4(arg_2, Struct_1(var_1.a), Struct_1(vec4<u32>(arg_1, global0.a.x, var_2.a.x, 0u)), Struct_1(u_input.a)), func_1(), arg_0, Struct_1(arg_2.a)), arg_2), func_4(func_1(), var_2, arg_0, var_1), Struct_1(var_1.a), arg_2), func_4(arg_0, func_4(arg_0, func_4(func_4(var_2, var_2, var_1, arg_0), arg_2, arg_2, Struct_1(vec4<u32>(arg_0.a.x, 80154u, arg_2.a.x, arg_2.a.x))), func_1(), var_1), func_4(Struct_1(vec4<u32>(global0.a.x, 7164u, 0u, arg_2.a.x)), func_1(), Struct_1(~vec4<u32>(global0.a.x, global0.a.x, 1u, 0u)), Struct_1(firstLeadingBit(global0.a))), func_4(Struct_1(~vec4<u32>(u_input.a.x, arg_1, 0u, var_1.a.x)), arg_0, func_1(), func_4(arg_0, Struct_1(vec4<u32>(98342u, arg_0.a.x, 17337u, arg_0.a.x)), var_1, var_2))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = func_4(arg_0, func_4(arg_0, func_5(func_5(Struct_1(vec4<u32>(3955u, 36923u, 58920u, 13623u)), global0.a.x, arg_2, _wgslsmith_f_op_vec2_f32(vec2<f32>(-319f, 244f) - vec2<f32>(-1426f, 646f))), ~_wgslsmith_dot_vec4_u32(arg_0.a, arg_0.a), Struct_1(arg_0.a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(278f, 1039f)))), func_4(Struct_1(~vec4<u32>(arg_2.a.x, 55524u, 27560u, arg_0.a.x)), arg_0, arg_2, Struct_1(vec4<u32>(49169u, 0u, global0.a.x, 69477u))), func_5(func_4(Struct_1(vec4<u32>(u_input.a.x, 61965u, arg_0.a.x, 11017u)), arg_0, Struct_1(vec4<u32>(arg_1.a.x, 4294967295u, u_input.a.x, 0u)), arg_0), ~(~1u), func_5(arg_1, firstTrailingBit(4294967295u), arg_0, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1082f, 796f)))), vec2<f32>(1f, 1f))), arg_1, arg_1);
    global0 = func_5(arg_1, ~(~(~(97882u >> (arg_1.a.x % 32u)))), arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1936f, -1000f) - vec2<f32>(-351f, -321f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1567f, 604f) - vec2<f32>(-873f, 247f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(704f, -714f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(224f, -721f)))));
    global0 = Struct_1(select(_wgslsmith_clamp_vec4_u32(func_5(arg_0, 0u, arg_0, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-466f, 328f), vec2<f32>(-927f, -1331f)))).a, select(u_input.a, vec4<u32>(0u, 31726u, 1u, 1u), vec4<bool>(true, true, true, true)), reverseBits(arg_2.a) ^ vec4<u32>(u_input.a.x, arg_1.a.x, arg_2.a.x, 24390u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0.a, arg_1.a), vec4<u32>(1u, 4294967295u, ~arg_2.a.x, global0.a.x)), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    let var_0 = select(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, all(vec4<bool>(true, true, true, true)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, any(vec3<bool>(true, false, false))), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)))), vec4<bool>(any(vec3<bool>(false, false, true)), any(vec4<bool>(true, true, true, true)), true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true))), func_2(min(19181i, -2147483647i), _wgslsmith_div_f32(-2517f, 1000f), abs(-15976i), -1000f).x), !vec4<bool>(true, all(vec4<bool>(false, true, true, true)), false, true), true));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f), -939f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-188f)) + _wgslsmith_f_op_f32(-1515f * -305f))))));
    return Struct_1(~abs(~(~arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_1((_wgslsmith_div_vec4_u32(vec4<u32>(64685u, 0u, global0.a.x, u_input.a.x), u_input.a) << (_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(global0.a.x, 11072u, 3128u, u_input.a.x)) % vec4<u32>(32u))) ^ ~u_input.a), func_5(func_4(func_1(), func_1(), Struct_1(vec4<u32>(42858u, 4294967295u, global0.a.x, 20344u) << (global0.a % vec4<u32>(32u))), Struct_1(~u_input.a)), ~global0.a.x, func_4(Struct_1(vec4<u32>(global0.a.x, global0.a.x, 26710u, u_input.a.x)), func_1(), Struct_1(u_input.a >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), func_1()), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 847f) + vec2<f32>(391f, -1000f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-982f, -497f) - vec2<f32>(467f, 1057f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 2364f))), select(func_2(-1i, 1084f, 33219i, -322f), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))))), Struct_1(vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, func_1().a.x, 0u), global0.a.x, global0.a.x)));
    let var_0 = ~12228i;
    let var_1 = -586f;
    let var_2 = Struct_1(func_1().a);
    global0 = func_4(var_2, Struct_1(abs(global0.a) ^ func_4(var_2, func_1(), var_2, func_5(Struct_1(u_input.a), 43048u, Struct_1(global0.a), vec2<f32>(var_1, 652f))).a), var_2, func_5(func_6(Struct_1(vec4<u32>(37673u, global0.a.x, global0.a.x, 4294967295u)), Struct_1(~vec4<u32>(u_input.a.x, 1u, var_2.a.x, 586u)), var_2), ~1u >> (_wgslsmith_clamp_u32(1u, _wgslsmith_clamp_u32(var_2.a.x, 69430u, var_2.a.x), func_1().a.x) % 32u), func_4(func_4(var_2, var_2, var_2, var_2), Struct_1(func_6(Struct_1(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 18730u)), Struct_1(global0.a), Struct_1(vec4<u32>(var_2.a.x, var_2.a.x, 1u, 1u))).a), Struct_1(vec4<u32>(var_2.a.x, global0.a.x, 0u, var_2.a.x) >> (global0.a % vec4<u32>(32u))), Struct_1(~vec4<u32>(var_2.a.x, var_2.a.x, 4294967295u, var_2.a.x))), vec2<f32>(var_1, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(floor(var_1))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(13247u, 1u, global0.a.x, var_2.a.x), ~(~(~vec4<u32>(4294967295u, 1u, 12571u, 4294967295u))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec2<bool>(true, true))))), -(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 39065i, var_0), vec3<i32>(-17577i, 63645i, 5567i)) | -vec3<i32>(var_0, -31i, 1i)) | ((reverseBits(vec3<i32>(var_0, 2147483647i, var_0)) ^ vec3<i32>(2147483647i, var_0, var_0)) << (func_1().a.zxy % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -23566i ^ var_0, var_0 >> (0u % 32u)) >> (vec3<u32>(1u, 0u, min(44880u, global0.a.x)) % vec3<u32>(32u)), countOneBits(min(-vec3<i32>(var_0, 6983i, var_0), vec3<i32>(7309i, var_0, var_0) ^ vec3<i32>(var_0, var_0, var_0)))), vec3<i32>((i32(-1i) * -1i) ^ var_0, var_0, (var_0 & 27799i) & -37477i) ^ vec3<i32>(-35601i | -var_0, ~(-10427i) >> (func_4(var_2, var_2, var_2, Struct_1(vec4<u32>(53281u, global0.a.x, 13253u, var_2.a.x))).a.x % 32u), _wgslsmith_mult_i32(var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -18595i), vec3<i32>(var_0, 1i, 29853i)))));
}

