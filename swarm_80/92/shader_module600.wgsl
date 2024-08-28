struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(true, 0i, 4294967295u, true), Struct_1(false, 1i, 19261u, false), vec2<u32>(57986u, 0u), Struct_1(false, 38164i, 0u, false), i32(-2147483648));

var<private> global1: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> bool {
    global0 = Struct_2(Struct_1(global0.a.a, ~(-_wgslsmith_mod_i32(global0.b.b, -2147483647i)), global0.a.c, arg_1.a.a), global0.d, vec2<u32>(_wgslsmith_mod_u32(max(abs(arg_1.a.c), ~global0.a.c), firstTrailingBit(abs(arg_1.a.c))), 41442u), global0.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, ~arg_1.a.b, u_input.b.x, u_input.b.x), ~arg_0));
    var var_0 = -arg_1.a.b;
    let var_1 = arg_1.a.c;
    global0 = Struct_2(global0.d, Struct_1(select(arg_0.x > 1i, true & arg_1.a.d, _wgslsmith_mult_u32(var_1, var_1) <= ~var_1), 3544i, 55440u, arg_1.a.a), vec2<u32>(4233u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~1u, ~var_1, _wgslsmith_clamp_u32(24894u, var_1, u_input.a)), ~abs(vec4<u32>(0u, u_input.a, u_input.a, arg_1.a.c)))), arg_1.a, global0.d.b);
    var var_2 = vec3<i32>(-_wgslsmith_mod_i32(global0.e, 0i), 0i, arg_0.x);
    return any(vec2<bool>(global0.d.d, select(all(select(vec3<bool>(false, arg_1.a.a, global0.d.a), vec3<bool>(arg_1.a.d, true, false), vec3<bool>(global0.d.a, false, global0.b.d))), arg_1.a.d, !(global0.b.d & true))));
}

fn func_2() -> Struct_4 {
    global0 = Struct_2(Struct_1(global0.d.d, _wgslsmith_mod_i32(~global0.d.b, 8815i | _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.b, -43980i, global0.b.b, 23366i), vec4<i32>(-34777i, u_input.b.x, 2147483647i, global0.b.b))), _wgslsmith_mult_u32(~global0.d.c, ~0u), global0.b.a), Struct_1(!(!(global0.a.d | global0.a.d)), ~u_input.b.x, 4294967295u, true), select(vec2<u32>(29149u, _wgslsmith_div_u32(global0.a.c << (global0.d.c % 32u), select(u_input.a, global0.a.c, global0.a.a))), ~global0.c, select(!(!vec2<bool>(global0.d.d, global0.a.a)), select(vec2<bool>(global0.a.a, global0.b.a), select(vec2<bool>(true, global0.a.a), vec2<bool>(global0.d.a, false), false), vec2<bool>(true, global0.d.a)), vec2<bool>(global0.b.a, true))), Struct_1(true, u_input.b.x, global0.a.c, select(!(!global0.b.d), true, true)), u_input.b.x);
    global0 = Struct_2(Struct_1(global0.b.d && !func_3(vec4<i32>(-22788i, global0.d.b, global0.e, 46393i), Struct_3(global0.d)), -59770i, firstLeadingBit(_wgslsmith_sub_u32(min(4294967295u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)))), false), Struct_1(all(select(!vec4<bool>(false, global0.a.d, global0.b.d, global0.b.d), !vec4<bool>(global0.d.d, global0.d.d, false, false), global0.b.a)), 1i | u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global0.a.c), global0.a.c & (634u | u_input.a)), select(select(false, all(vec4<bool>(global0.a.d, global0.d.d, true, global0.a.d)), false), global0.a.d, true)), vec2<u32>(u_input.a, _wgslsmith_div_u32(36257u << (1u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.a.c, global0.a.c, global0.d.c), vec4<u32>(4294967295u, global0.c.x, 4294967295u, u_input.a)))), Struct_1(select(any(!vec4<bool>(global0.a.d, false, global0.b.d, true)), true | !global0.a.d, true), global0.b.b, u_input.a, all(select(select(vec4<bool>(global0.a.a, global0.b.a, false, global0.d.a), vec4<bool>(true, true, global0.b.a, global0.b.d), vec4<bool>(false, true, global0.a.d, false)), !vec4<bool>(global0.d.a, global0.a.a, false, true), false))), -2147483647i);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(580f))));
    global0 = Struct_2(global0.a, global0.a, vec2<u32>(_wgslsmith_mult_u32(global0.d.c, (global0.b.c ^ 30939u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(12985u, u_input.a, u_input.a), vec3<u32>(u_input.a, global0.d.c, 1u))), _wgslsmith_div_u32(global0.c.x, _wgslsmith_dot_vec3_u32(min(vec3<u32>(1u, u_input.a, 8856u), vec3<u32>(u_input.a, 4294967295u, global0.b.c)), ~vec3<u32>(37281u, global0.c.x, 34206u)))), Struct_1(global0.a.a, 28891i, select(u_input.a, global0.d.c, false), !any(!vec3<bool>(false, global0.b.d, false))), ~(-_wgslsmith_mod_i32(i32(-1i) * -1i, -u_input.b.x)));
    var var_0 = Struct_2(Struct_1(false, ~(_wgslsmith_div_i32(-2147483647i, u_input.b.x) ^ u_input.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.c, 4294967295u), global0.c), false), Struct_1(_wgslsmith_f_op_f32(ceil(-1014f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(944f)) * _wgslsmith_f_op_f32(round(349f))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, u_input.b.x), global0.a.b), 0i), u_input.a, global0.b.a), vec2<u32>(global0.d.c, _wgslsmith_clamp_u32(global0.d.c, ~u_input.a, global0.c.x) << (u_input.a % 32u)), global0.d, reverseBits(~(-2147483647i)));
    return Struct_4(~_wgslsmith_mult_u32(~(~0u), ~_wgslsmith_sub_u32(26212u, global0.d.c)), u_input.b.xy, -1i);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_3) -> Struct_5 {
    let var_0 = Struct_5(vec3<u32>(arg_2.a.c, arg_1.a, arg_0.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(674f))), 2133f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 508f, true)) * _wgslsmith_f_op_f32(794f * 827f)))));
    var var_1 = 1u;
    let var_2 = Struct_2(Struct_1(false, ~0i, global0.c.x, any(!vec2<bool>(arg_2.a.d, global0.d.a))), Struct_1(!arg_2.a.a, min(arg_0.b.x, select(arg_2.a.b, arg_2.a.b, func_3(vec4<i32>(13355i, 0i, arg_0.c, u_input.b.x), Struct_3(global0.b)))), ~arg_2.a.c, false), ~vec2<u32>(25808u, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.a, 5527u, arg_1.a), vec3<u32>(global0.d.c, 0u, u_input.a))), Struct_1(true, abs(max(global0.b.b, arg_2.a.b)) << (firstTrailingBit(min(4294967295u, 4294967295u)) % 32u), 4294967295u, false), ~u_input.b.x);
    var var_3 = Struct_1(all(!select(!vec2<bool>(true, arg_2.a.a), !vec2<bool>(true, arg_2.a.a), func_3(vec4<i32>(0i, 520i, 1i, -2147483647i), Struct_3(Struct_1(global0.d.a, arg_0.c, arg_1.a, true))))), abs(-firstLeadingBit(0i)), 4294967295u, true);
    var_1 = ~12344u;
    return Struct_5(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1342f + -193f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, -227f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, 1334f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 764f, var_0.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1445f, var_0.b.x) * vec3<f32>(var_0.b.x, 897f, 895f))))));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_5) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(any(!(!vec4<bool>(global0.a.a, global0.a.a, false, true))), 11185i, _wgslsmith_dot_vec3_u32(arg_3.a ^ select(arg_3.a, vec3<u32>(arg_1, 62530u, 2483u), global0.b.a), ~abs(vec3<u32>(arg_3.a.x, arg_2.c, 76004u))), ~_wgslsmith_mod_u32(u_input.a, u_input.a) < arg_3.a.x));
    let var_1 = firstTrailingBit(~global0.e);
    var var_2 = min(_wgslsmith_dot_vec2_u32(min(global0.c, vec2<u32>(arg_0, 0u)), global0.c) | _wgslsmith_add_u32(arg_3.a.x, arg_3.a.x), ~u_input.a & _wgslsmith_sub_u32(arg_0, ~4294967295u)) != (1u & u_input.a);
    var var_3 = Struct_4(func_4(func_2(), Struct_4(global0.d.c ^ 0u, vec2<i32>(var_1 & arg_2.b, ~(-2147483647i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, arg_2.b, u_input.b.x, var_1), vec4<i32>(arg_2.b, arg_2.b, 1i, var_0.a.b))), var_0).a.x, vec2<i32>(-1i) * -u_input.b.xz, firstTrailingBit(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.b, u_input.b.x, -15635i), min(u_input.b, u_input.b)), vec3<i32>(1i, 3993i | arg_2.b, i32(-1i) * -27627i))));
    global0 = Struct_2(var_0.a, Struct_1(select(false, !all(vec2<bool>(false, false)), select(true, global0.a.a & global0.b.a, any(vec3<bool>(true, arg_2.a, false)))), 20141i, _wgslsmith_mod_u32(~(~46132u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.c, u_input.a), vec2<u32>(arg_2.c, 0u)) ^ (global0.a.c << (arg_1 % 32u))), arg_2.a), select(min(countOneBits(vec2<u32>(5143u, arg_2.c)), ~global0.c) & (~global0.c << (~vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), select(~global0.c, _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.c, var_0.a.c), vec2<u32>(19882u, global0.a.c)), !arg_2.a && global0.b.d), ((arg_2.c ^ arg_2.c) << (~var_3.a % 32u)) < arg_1), var_0.a, firstLeadingBit(~11304i));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    let var_0 = 0u;
    global0 = Struct_2(Struct_1(false, -u_input.b.x, 0u, _wgslsmith_f_op_f32(floor(arg_2)) >= _wgslsmith_f_op_f32(-918f * _wgslsmith_f_op_f32(310f + -1116f))), func_5(~var_0, select(~global0.a.c, ~1u << (global0.c.x % 32u), true), Struct_1(!select(global0.a.d, true, global0.b.a), -12083i, var_0, !(global0.a.a & global0.d.d)), func_4(func_2(), func_2(), Struct_3(global0.d))), select(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, u_input.a), arg_1.zx), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, ~var_0), global0.c), !select(select(vec2<bool>(global0.b.a, global0.d.a), vec2<bool>(false, true), global0.b.a), !vec2<bool>(true, global0.a.a), global0.a.a)), Struct_1(global0.b.d, ~(-1i), ~(~1u), true), (u_input.b.x << ((~global0.c.x >> (4294967295u % 32u)) % 32u)) ^ -_wgslsmith_mod_i32(u_input.b.x, -global0.e));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, 395f, -1295f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_2, -699f), vec3<f32>(arg_2, -986f, arg_0), vec3<bool>(global0.b.d, false, global0.d.d)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(554f, arg_0, arg_0) + vec3<f32>(arg_0, -489f, arg_0)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1038f)) * -1158f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(arg_2 * arg_2)))), global0.a.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_div_f32(274f, 1899f)) - vec3<f32>(_wgslsmith_f_op_f32(arg_2 * -382f), _wgslsmith_f_op_f32(min(arg_2, 1375f)), _wgslsmith_div_f32(arg_0, arg_0)))))));
    global1 = _wgslsmith_f_op_f32(select(214f, -533f, false));
    var var_2 = u_input.a;
    return Struct_2(func_5(68517u, _wgslsmith_sub_u32(countOneBits(40757u), ~_wgslsmith_div_u32(1u, arg_1.x)), Struct_1(func_5(var_0, ~var_0, global0.b, Struct_5(vec3<u32>(16735u, 1u, var_0), vec3<f32>(arg_0, 1050f, -1026f))).a, u_input.b.x, _wgslsmith_mult_u32(arg_1.x ^ 1u, firstLeadingBit(arg_1.x)), !global0.d.d | global0.a.d), func_4(func_2(), Struct_4(~arg_1.x, u_input.b.yx, u_input.b.x), Struct_3(func_5(130970u, 12240u, global0.d, Struct_5(arg_1.yww, vec3<f32>(153f, var_1.x, arg_0)))))), Struct_1(all(select(!vec3<bool>(true, global0.b.a, global0.b.a), vec3<bool>(true, global0.b.d, false), u_input.a != 4294967295u)), u_input.b.x, var_0, !((-1i << (global0.c.x % 32u)) >= u_input.b.x)), arg_1.yw, global0.b, min(-1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1662f + -372f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1284f)) - _wgslsmith_f_op_f32(max(967f, 1433f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1267f + -515f), 1989f))))), vec4<u32>(~(~(~0u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a >> (1u % 32u), u_input.a ^ global0.b.c), ~1u), global0.a.c, ~15704u & ~global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -457f));
    global0 = Struct_2(func_5(global0.d.c, 0u, Struct_1(true, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, 0i)), func_5(5591u, 27324u, Struct_1(global0.d.a, global0.d.b, u_input.a, global0.d.a), Struct_5(vec3<u32>(1u, u_input.a, u_input.a), vec3<f32>(426f, -812f, -764f))).b), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(111388u, 19949u), vec2<u32>(u_input.a, u_input.a)), 9218u), true), func_4(Struct_4(1u, _wgslsmith_mult_vec2_i32(u_input.b.zy, vec2<i32>(u_input.b.x, 25893i)), global0.b.b >> (59784u % 32u)), Struct_4(41688u ^ u_input.a, vec2<i32>(u_input.b.x, u_input.b.x), 1i), Struct_3(global0.b))), global0.a, vec2<u32>(select(1u, _wgslsmith_sub_u32(global0.d.c, 1u), true) << (_wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a)) % 32u), _wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a, 5772u), global0.c.x)), func_5(~(~(~1u)), u_input.a, func_5(u_input.a << (0u % 32u), _wgslsmith_mult_u32(54482u, global0.c.x) & 0u, global0.b, func_4(func_2(), func_2(), Struct_3(Struct_1(global0.d.d, 22113i, u_input.a, false)))), Struct_5(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4860u, 19160u), vec3<u32>(58745u, 29986u, global0.d.c)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 54506u, 58507u), vec3<u32>(4294967295u, u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1057f, 862f, -1109f))))), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(832f, -168f, 925f), vec3<f32>(109f, -1000f, 1586f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-105f, 243f, -570f)))), global0.b.d))));
}

