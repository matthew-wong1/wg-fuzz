struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = select(select(vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, u_input.b.x, u_input.b.x, 31098i), vec4<i32>(u_input.b.x, -3860i, u_input.b.x, -10157i)), u_input.b.x << (~0u % 32u), 35707i), ~select(-u_input.b, ~vec3<i32>(-1i, u_input.b.x, u_input.b.x), false), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)))), vec3<i32>(-_wgslsmith_mod_i32(i32(-1i) * -29793i, u_input.b.x), -16690i, _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.b.x, select(u_input.b.x, 2147483647i, true)), u_input.b.x >> (4294967295u % 32u))), true & (u_input.c <= min(1u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(53696u, u_input.a.x, 0u, 881u)))));
    var_0 = vec3<i32>(u_input.b.x, -u_input.b.x, u_input.b.x);
    let var_1 = Struct_3(var_0.x);
    var_0 = u_input.b;
    let var_2 = u_input.b.x >> (~(~(~u_input.a.x)) % 32u);
    return ((-2147483647i ^ firstLeadingBit(_wgslsmith_mult_i32(-20042i, u_input.b.x))) < 46746i) | ((i32(-1i) * -u_input.b.x) <= _wgslsmith_dot_vec2_i32(-var_0.zz, select(select(u_input.b.yy, vec2<i32>(var_1.a, var_1.a), vec2<bool>(true, false)), ~var_0.zy, any(vec4<bool>(false, false, false, false)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_u32(~(~(vec4<u32>(30403u, arg_0.a, 25783u, arg_0.c.x) | vec4<u32>(u_input.a.x, arg_0.a, 29575u, u_input.c))), arg_3.a.c) & vec4<u32>(_wgslsmith_dot_vec2_u32(select(select(arg_3.a.c.zz, vec2<u32>(30719u, 55205u), arg_2.x), ~vec2<u32>(31355u, u_input.c), func_3(-224f)), ~(vec2<u32>(4294967295u, 34604u) << (vec2<u32>(21396u, arg_0.c.x) % vec2<u32>(32u)))), _wgslsmith_sub_u32(abs(select(arg_0.a, arg_3.b.x, arg_1.x)), arg_3.d), ~arg_0.c.x, 1u);
    let var_1 = ~(-2905i);
    var_0 = ~_wgslsmith_div_vec4_u32(u_input.a, firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(54440u, 3452u, arg_0.c.x, 8528u), vec4<u32>(4294967295u, 4294967295u, 1u, 10986u), arg_0.c)));
    var_0 = ~abs(u_input.a);
    var var_2 = arg_3;
    return Struct_2(Struct_1(~(arg_3.d ^ select(0u, 46759u, true)), 1i != var_1, vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(countOneBits(arg_3.b.zx), min(vec2<u32>(var_0.x, 0u), vec2<u32>(arg_0.c.x, arg_3.b.x))), ~var_2.c, _wgslsmith_add_u32(~arg_3.a.a, 1u))), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(u_input.a.wxy | vec3<u32>(1u, 25023u, 24024u), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 0u, 61758u), vec3<u32>(u_input.c, arg_0.a, 9175u))), countOneBits(vec3<u32>(3833u, u_input.c, var_0.x)) & arg_0.c.xwx), _wgslsmith_sub_u32(13894u, firstTrailingBit(~var_0.x << (u_input.c % 32u))), arg_3.b.x);
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = func_2(arg_0.a, vec4<bool>(!any(!vec2<bool>(arg_0.a.b, true)), false && (any(vec4<bool>(arg_0.a.b, arg_0.a.b, true, true)) != true), true, true), select(select(select(vec4<bool>(true, arg_0.a.b, arg_0.a.b, arg_0.a.b), select(vec4<bool>(true, true, arg_0.a.b, false), vec4<bool>(true, true, arg_0.a.b, arg_0.a.b), arg_0.a.b), arg_0.a.b), !(!vec4<bool>(arg_0.a.b, false, true, true)), select(select(vec4<bool>(true, true, arg_0.a.b, true), vec4<bool>(arg_0.a.b, arg_0.a.b, false, arg_0.a.b), false), !vec4<bool>(false, arg_0.a.b, arg_0.a.b, arg_0.a.b), !vec4<bool>(true, false, arg_0.a.b, arg_0.a.b))), !vec4<bool>(arg_0.a.b, func_2(arg_0.a, vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), Struct_2(Struct_1(36344u, false, arg_0.a.c), vec3<u32>(arg_0.b.x, 1u, u_input.c), arg_0.b.x, 4294967295u)).a.b, arg_0.a.b, all(vec3<bool>(true, arg_0.a.b, arg_0.a.b))), select(!(!arg_0.a.b), !arg_0.a.b, false)), func_2(func_2(func_2(func_2(arg_0.a, vec4<bool>(true, false, arg_0.a.b, arg_0.a.b), vec4<bool>(arg_0.a.b, arg_0.a.b, true, false), Struct_2(Struct_1(u_input.c, arg_0.a.b, vec4<u32>(u_input.c, u_input.c, u_input.c, 0u)), vec3<u32>(arg_0.c, arg_0.a.c.x, 0u), u_input.a.x, u_input.c)).a, select(vec4<bool>(false, false, arg_0.a.b, true), vec4<bool>(arg_0.a.b, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.a.b), vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b), true), Struct_2(Struct_1(u_input.c, arg_0.a.b, vec4<u32>(arg_0.d, 25591u, 97096u, 12252u)), vec3<u32>(u_input.a.x, u_input.c, u_input.c), 1u, arg_0.d)).a, select(vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, true), !vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, true), select(vec4<bool>(false, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<bool>(false, true, true, false), vec4<bool>(false, true, arg_0.a.b, false))), vec4<bool>(arg_0.a.b, true, true, arg_0.a.b), Struct_2(Struct_1(40893u, true, u_input.a), vec3<u32>(arg_0.b.x, arg_0.c, u_input.c), arg_0.a.a, _wgslsmith_dot_vec3_u32(u_input.a.xxw, u_input.a.wyy))).a, !(!select(vec4<bool>(false, false, false, arg_0.a.b), vec4<bool>(arg_0.a.b, arg_0.a.b, false, arg_0.a.b), true)), select(select(select(vec4<bool>(arg_0.a.b, arg_0.a.b, false, true), vec4<bool>(arg_0.a.b, true, arg_0.a.b, arg_0.a.b), vec4<bool>(false, arg_0.a.b, false, true)), !vec4<bool>(true, true, false, arg_0.a.b), true), !vec4<bool>(false, true, true, arg_0.a.b), !select(vec4<bool>(arg_0.a.b, arg_0.a.b, true, arg_0.a.b), vec4<bool>(arg_0.a.b, true, arg_0.a.b, true), vec4<bool>(arg_0.a.b, arg_0.a.b, false, arg_0.a.b))), Struct_2(func_2(arg_0.a, select(vec4<bool>(true, false, false, arg_0.a.b), vec4<bool>(arg_0.a.b, arg_0.a.b, false, true), arg_0.a.b), vec4<bool>(true, arg_0.a.b, true, true), Struct_2(Struct_1(arg_0.c, false, arg_0.a.c), vec3<u32>(74286u, 1u, arg_0.c), arg_0.d, arg_0.d)).a, select(~arg_0.b, countOneBits(arg_0.b), !vec3<bool>(arg_0.a.b, arg_0.a.b, false)), u_input.c, ~1u)));
    var var_1 = !var_0.a.b;
    var_1 = false;
    let var_2 = Struct_1(~(~_wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(0u, arg_0.a.c.x))), var_0.a.b, arg_0.a.c);
    var_1 = select(true, var_0.a.b, true);
    return _wgslsmith_sub_i32(~u_input.b.x, 2147483647i) << (var_2.a % 32u);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_add_vec4_i32(-vec4<i32>(func_4(func_2(Struct_1(49495u, false, u_input.a), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), Struct_2(Struct_1(u_input.a.x, false, u_input.a), vec3<u32>(u_input.a.x, 0u, u_input.a.x), 4294967295u, 1u))), 1i << (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), u_input.b.xx), -14403i), max(vec4<i32>(1i, -62109i, abs(-15631i), ~(-84076i)) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(-(~u_input.b.x), abs(_wgslsmith_add_i32(u_input.b.x, u_input.b.x)), -10543i >> (min(u_input.a.x, 4865u) % 32u), -2147483647i)));
    var_0 = ~(-select(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(28598i, u_input.b.x, var_0.x, var_0.x)), countOneBits(vec4<i32>(22874i, var_0.x, var_0.x, u_input.b.x))), ~vec4<i32>(-34460i, -2147483647i, 11127i, 1i) ^ vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, var_0.x), false));
    var_0 = -vec4<i32>(u_input.b.x & u_input.b.x, u_input.b.x, -1i, abs(_wgslsmith_add_i32(43761i, var_0.x))) & (firstLeadingBit(vec4<i32>(abs(14461i), -var_0.x, var_0.x, ~u_input.b.x)) >> (vec4<u32>(0u, firstLeadingBit(1u), 41579u, _wgslsmith_mod_u32(~42201u, 22168u)) % vec4<u32>(32u)));
    var_0 = -_wgslsmith_add_vec4_i32(vec4<i32>(11589i, 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(83445i, -12214i, 0i), u_input.b | vec3<i32>(u_input.b.x, 9785i, var_0.x)), 40911i), abs(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -22733i, var_0.x, -2147483647i), vec4<i32>(59791i, var_0.x, 0i, 1i)), firstLeadingBit(vec4<i32>(var_0.x, 18150i, u_input.b.x, 2147483647i)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(108f, -2283f, true)), 1782f));
    return Struct_3(firstTrailingBit(_wgslsmith_dot_vec3_i32(~(-u_input.b), var_0.zww)));
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = func_2(func_2(func_2(Struct_1(u_input.c, true, select(u_input.a, u_input.a, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), func_2(func_2(Struct_1(4294967295u, true, vec4<u32>(u_input.a.x, u_input.a.x, 24637u, 1u)), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), Struct_2(Struct_1(u_input.a.x, true, u_input.a), vec3<u32>(4294967295u, u_input.c, 8898u), u_input.a.x, 0u)).a, vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), Struct_2(Struct_1(u_input.c, true, vec4<u32>(1u, 1u, 4294967295u, 41911u)), vec3<u32>(61552u, u_input.a.x, 35662u), 108537u, u_input.c))).a, vec4<bool>((arg_1 <= arg_1) && true, all(vec4<bool>(true, true, true, true)), func_2(func_2(Struct_1(u_input.c, true, u_input.a), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), Struct_2(Struct_1(0u, false, vec4<u32>(u_input.a.x, 51459u, u_input.c, u_input.c)), u_input.a.xxx, 12960u, 92417u)).a, vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), Struct_2(Struct_1(3988u, true, u_input.a), vec3<u32>(u_input.a.x, 30300u, 62019u), u_input.c, u_input.c)).a.b, true), vec4<bool>(any(vec3<bool>(true, false, true)), true, 1i == arg_0.a, true), Struct_2(Struct_1(1u, 8154u >= u_input.a.x, u_input.a), abs(u_input.a.ywx), ~func_2(Struct_1(38265u, true, u_input.a), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), Struct_2(Struct_1(u_input.a.x, false, vec4<u32>(42225u, 97843u, 1u, u_input.c)), u_input.a.yyy, u_input.a.x, 4294967295u)).d, u_input.a.x)).a, vec4<bool>(_wgslsmith_f_op_f32(sign(-670f)) <= arg_1, func_3(-510f), true, any(!select(vec2<bool>(true, false), vec2<bool>(true, false), true))), select(vec4<bool>(true && any(vec2<bool>(false, true)), true, any(vec2<bool>(false, true)), false), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), true), Struct_2(Struct_1((u_input.a.x | u_input.c) & ~u_input.c, false, u_input.a), u_input.a.xzw, 7902u, _wgslsmith_add_u32(u_input.a.x, 0u ^ u_input.a.x))).a;
    let var_1 = vec4<i32>(-arg_3.a, 0i, _wgslsmith_clamp_i32(~(-(~arg_2.x)), -2147483647i, _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), ~u_input.b)), arg_2.x | countOneBits(i32(-1i) * -arg_0.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(251f, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 950f, -285f), vec3<f32>(-2793f, arg_1, 993f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-112f, 204f, -545f))))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(815f, _wgslsmith_f_op_f32(-883f - arg_1), _wgslsmith_f_op_f32(-1000f + 443f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(179f, 560f, arg_1) * vec3<f32>(arg_1, arg_1, arg_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1317f, arg_1, arg_1))), !select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(true, true, true), false))))));
    let var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yx, ~abs(var_0.c.yw)) ^ vec2<u32>(var_0.a, ~(~var_0.c.x)), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(min(var_0.c.x, u_input.c), u_input.c ^ var_0.a), var_0.c.x ^ 9594u), u_input.a.zz));
    var var_4 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, ~abs(1u), var_3.x, ~(27030u >> (u_input.c % 32u))), ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.c.zx, vec2<u32>(0u, 31941u)), reverseBits(8656u), 2239u));
    return u_input.b.yx;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: i32) -> vec2<f32> {
    var var_0 = false;
    let var_1 = func_2(Struct_1(~(~u_input.a.x), false, vec4<u32>(~u_input.c, _wgslsmith_mod_u32(u_input.c, 93323u), ~u_input.a.x, u_input.a.x)), vec4<bool>(true, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), func_3(_wgslsmith_f_op_f32(min(581f, 338f))) || any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), true), func_3(_wgslsmith_f_op_f32(floor(-1000f)))), func_2(func_2(func_2(Struct_1(46275u, true, vec4<u32>(4294967295u, u_input.c, u_input.c, 1u)), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), Struct_2(Struct_1(u_input.a.x, false, vec4<u32>(u_input.c, 4294967295u, u_input.a.x, 1u)), u_input.a.zwy, u_input.a.x, u_input.a.x)).a, vec4<bool>(any(vec4<bool>(true, true, false, false)), false, true, true), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), Struct_2(func_2(Struct_1(7616u, true, vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a.x)), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), Struct_2(Struct_1(u_input.c, false, vec4<u32>(u_input.c, 45939u, u_input.c, u_input.c)), u_input.a.yxx, u_input.c, 51801u)).a, firstTrailingBit(u_input.a.xzy), ~u_input.c, _wgslsmith_dot_vec3_u32(u_input.a.xzw, vec3<u32>(u_input.c, 0u, u_input.c)))).a, vec4<bool>(true, true, func_3(_wgslsmith_f_op_f32(157f + 1541f)), -2147483647i >= _wgslsmith_mult_i32(16579i, arg_0.x)), vec4<bool>(any(vec3<bool>(true, false, false)), !any(vec4<bool>(true, false, true, false)), true, all(vec2<bool>(true, false)) && true), Struct_2(func_2(Struct_1(1u, true, u_input.a), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), Struct_2(Struct_1(171081u, true, vec4<u32>(1u, 0u, u_input.a.x, u_input.c)), u_input.a.xyx, 41408u, 24669u)).a, vec3<u32>(0u | u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), u_input.a.yw), u_input.c), u_input.a.x, u_input.a.x)));
    var_0 = any(vec4<bool>(all(!vec2<bool>(var_1.a.b, false)) || false, false && all(!vec2<bool>(true, var_1.a.b)), !(!(var_1.a.b | var_1.a.b)), (select(23334u, var_1.a.a, true) << (u_input.c % 32u)) == (_wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(33925u, u_input.c, var_1.b.x)) >> (_wgslsmith_add_u32(17239u, u_input.c) % 32u))));
    var_0 = !(964f <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1378f)))));
    var_0 = !(true & (-2488i > ~max(arg_0.x, 2147483647i)));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(445f)) + _wgslsmith_f_op_f32(abs(-405f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -403f), 546f)) * vec2<f32>(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-1000f + 216f), true)), -766f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1081f, -2091f))))))));
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = select(!vec2<bool>(all(!vec3<bool>(arg_1.b, arg_3, arg_1.b)), (u_input.b.x < arg_2.a) | func_2(Struct_1(arg_1.c.x, arg_1.b, arg_1.c), vec4<bool>(false, arg_3, true, true), vec4<bool>(false, false, false, arg_1.b), Struct_2(Struct_1(29067u, arg_1.b, vec4<u32>(14146u, 12630u, 4294967295u, u_input.c)), u_input.a.yxw, 4294967295u, 1u)).a.b), vec2<bool>(arg_3, false), any(!vec4<bool>(arg_1.b, arg_3, false, arg_3)));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    let var_2 = func_5(Struct_3(arg_2.a), _wgslsmith_f_op_vec2_f32(func_6(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(28240i, arg_2.a) >> (~u_input.a.x % 32u)), arg_2, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.a, 29040i, 2147483647i, -370i)), abs(vec4<i32>(1i, u_input.b.x, 0i, 2147483647i))))).x, vec2<i32>(reverseBits(_wgslsmith_clamp_i32(-30929i, ~u_input.b.x, arg_2.a)), _wgslsmith_div_i32(arg_2.a & -45532i, arg_2.a)), arg_2);
    var_1 = 1102f;
    var_1 = -1209f;
    return func_2(func_2(arg_1, !vec4<bool>(all(var_0), any(vec2<bool>(false, false)), false, arg_3), !(!select(vec4<bool>(true, false, arg_3, true), vec4<bool>(var_0.x, true, arg_3, var_0.x), vec4<bool>(var_0.x, arg_3, var_0.x, arg_3))), Struct_2(arg_1, ~arg_1.c.zxz << (~u_input.a.wxz % vec3<u32>(32u)), abs(_wgslsmith_div_u32(51587u, arg_1.a)), ~(~61788u))).a, vec4<bool>(any(vec4<bool>(any(vec2<bool>(false, true)), false, true, func_2(Struct_1(arg_1.a, false, vec4<u32>(0u, 1u, arg_1.a, 22541u)), vec4<bool>(false, arg_1.b, false, true), vec4<bool>(arg_1.b, var_0.x, arg_1.b, false), Struct_2(Struct_1(53141u, true, u_input.a), arg_1.c.yyx, 49569u, arg_1.c.x)).a.b)), arg_3 | true, arg_1.b, select(true, func_2(Struct_1(1u, true, u_input.a), vec4<bool>(false, arg_1.b, false, false), vec4<bool>(false, arg_1.b, var_0.x, arg_3), func_2(arg_1, vec4<bool>(true, var_0.x, arg_3, false), vec4<bool>(true, var_0.x, true, arg_1.b), Struct_2(Struct_1(4294967295u, true, arg_1.c), u_input.a.wwy, 39972u, 53238u))).a.b, false)), !(!(!(!vec4<bool>(false, true, arg_3, false)))), func_2(arg_1, !vec4<bool>(select(true, arg_3, false), false || arg_1.b, true, arg_1.b), select(select(select(vec4<bool>(false, arg_1.b, arg_3, arg_3), vec4<bool>(arg_1.b, true, var_0.x, arg_3), vec4<bool>(true, false, arg_1.b, false)), select(vec4<bool>(var_0.x, true, arg_1.b, var_0.x), vec4<bool>(false, false, arg_1.b, false), false), true), vec4<bool>(any(vec4<bool>(true, true, false, true)), arg_1.b, true, arg_3), false), Struct_2(arg_1, _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 1791u), u_input.a.zwy) >> (u_input.a.www % vec3<u32>(32u)), _wgslsmith_mult_u32(14844u, u_input.a.x) | 4294967295u, countOneBits(4294967295u)))).a;
}

fn func_8(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec2<u32>(max(arg_3.c.x, 117517u), 0u & _wgslsmith_add_u32(54346u, arg_0.a));
    var var_1 = arg_3.c.yx;
    let var_2 = arg_0.b;
    var var_3 = func_2(Struct_1(~var_0.x, !(!(var_1.x == u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, arg_3.a, arg_3.c.x, var_0.x), arg_3.c) ^ (arg_3.c << ((arg_3.c | u_input.a) % vec4<u32>(32u)))), !select(!vec4<bool>(var_2, var_2, arg_3.b, false), select(vec4<bool>(arg_1, arg_1, true, false), select(vec4<bool>(arg_3.b, true, arg_3.b, false), vec4<bool>(arg_1, true, true, var_2), vec4<bool>(arg_1, arg_3.b, var_2, var_2)), arg_1 & arg_1), true), vec4<bool>(!arg_3.b | true, true, true, func_7(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_6(vec2<i32>(-57012i, 0i), Struct_3(-1i), 1i)))), func_7(vec2<f32>(345f, -261f), Struct_1(4294967295u, var_2, vec4<u32>(0u, u_input.a.x, var_0.x, var_0.x)), func_1(), arg_1), func_1(), 2417i >= abs(u_input.b.x)).b), func_2(Struct_1(_wgslsmith_clamp_u32(var_0.x | 1u, arg_3.c.x, var_1.x), arg_3.b, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.a, arg_3.c), vec4<u32>(1u, 0u, 54868u, 1u) >> (arg_3.c % vec4<u32>(32u)))), !vec4<bool>(true, any(vec4<bool>(arg_0.b, var_2, true, arg_1)), false, true), vec4<bool>(arg_2.x == _wgslsmith_sub_i32(arg_2.x, arg_2.x), any(select(vec3<bool>(arg_0.b, var_2, var_2), vec3<bool>(var_2, false, var_2), arg_1)), arg_0.b, true), func_2(arg_3, select(!vec4<bool>(arg_1, false, var_2, false), vec4<bool>(var_2, arg_0.b, var_2, arg_3.b), vec4<bool>(false, arg_1, arg_1, true)), select(select(vec4<bool>(false, var_2, true, arg_1), vec4<bool>(true, false, true, true), true), select(vec4<bool>(true, arg_1, arg_3.b, var_2), vec4<bool>(arg_0.b, true, true, arg_0.b), arg_3.b), vec4<bool>(arg_0.b, true, false, true)), func_2(Struct_1(arg_3.a, true, arg_0.c), vec4<bool>(arg_0.b, true, false, arg_0.b), vec4<bool>(false, arg_0.b, arg_1, var_2), func_2(Struct_1(0u, arg_0.b, vec4<u32>(0u, 8257u, 15378u, 0u)), vec4<bool>(false, arg_3.b, arg_1, false), vec4<bool>(var_2, arg_1, true, var_2), Struct_2(Struct_1(73657u, false, vec4<u32>(0u, 1u, 1u, 4294967295u)), arg_0.c.zzx, 55685u, var_0.x))))));
    var var_4 = func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(407f)), -3734f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-593f, 892f), vec2<f32>(973f, 231f)))))))), func_2(Struct_1(var_3.a.c.x, true, ~abs(var_3.a.c)), !select(vec4<bool>(arg_1, var_3.a.b, arg_1, true), !vec4<bool>(false, var_2, true, arg_3.b), var_2 && var_2), vec4<bool>(func_7(_wgslsmith_f_op_vec2_f32(-vec2<f32>(669f, 433f)), func_2(Struct_1(var_3.b.x, arg_3.b, vec4<u32>(0u, 1u, 18169u, 4294967295u)), vec4<bool>(true, false, arg_1, arg_0.b), vec4<bool>(true, arg_1, arg_1, arg_1), Struct_2(Struct_1(32957u, true, arg_0.c), var_3.b, arg_3.a, 4294967295u)).a, Struct_3(u_input.b.x), arg_1 | arg_3.b).b, var_3.a.b, var_2, arg_1), func_2(arg_0, !vec4<bool>(arg_3.b, true, true, true), select(select(vec4<bool>(var_2, arg_3.b, true, arg_3.b), vec4<bool>(true, var_3.a.b, false, var_3.a.b), vec4<bool>(false, var_2, true, arg_3.b)), select(vec4<bool>(true, true, false, var_2), vec4<bool>(arg_3.b, var_2, var_2, var_3.a.b), arg_1), any(vec2<bool>(true, arg_0.b))), func_2(arg_0, !vec4<bool>(arg_1, true, false, true), vec4<bool>(true, true, false, var_2), Struct_2(Struct_1(0u, false, arg_3.c), vec3<u32>(4294967295u, u_input.a.x, 0u), u_input.a.x, u_input.a.x)))).a, Struct_3(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, arg_2.x), vec2<i32>(arg_2.x, u_input.b.x)) << (arg_3.c.xz % vec2<u32>(32u)), arg_2.yx)), false);
    return Struct_2(arg_3, var_4.c.zxz, 41574u, select(var_0.x, 4294967295u, var_3.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(_wgslsmith_f_op_vec2_f32(func_6(func_5(Struct_3(-30215i), _wgslsmith_div_f32(-3164f, -622f), u_input.b.yz, func_1()), func_1(), _wgslsmith_div_i32(~(-1742i), -1i))), func_2(func_2(func_2(Struct_1(4294967295u, true, u_input.a), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), Struct_2(Struct_1(62883u, false, vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.c)), vec3<u32>(0u, u_input.c, u_input.c), 1u, 1u)).a, vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), Struct_2(Struct_1(4294967295u, true, vec4<u32>(u_input.c, u_input.a.x, u_input.c, u_input.c)), vec3<u32>(21972u, 0u, 4294967295u), u_input.c, 4294967295u)).a, select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true), Struct_2(Struct_1(1u, true, vec4<u32>(1u, u_input.c, u_input.c, u_input.a.x)), ~vec3<u32>(u_input.c, 4294967295u, 4294967295u), func_2(Struct_1(u_input.a.x, false, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), Struct_2(Struct_1(u_input.a.x, true, vec4<u32>(u_input.c, 4294967295u, 4294967295u, 25149u)), u_input.a.yyw, u_input.c, 29983u)).b.x, ~1u)).a, func_1(), !(!any(vec3<bool>(true, true, false)))), true, -abs(select(u_input.b, u_input.b, false)) << (u_input.a.wwx % vec3<u32>(32u)), func_7(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1379f, 967f) * vec2<f32>(-624f, -404f))))), func_7(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2511f, 1093f), vec2<f32>(1000f, -1448f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-786f, 839f), vec2<f32>(1000f, 589f), false))), Struct_1(_wgslsmith_add_u32(u_input.a.x, 36230u), u_input.c >= u_input.a.x, ~vec4<u32>(u_input.c, 7802u, u_input.c, u_input.c)), func_1(), !func_7(vec2<f32>(-458f, 703f), Struct_1(u_input.a.x, true, u_input.a), Struct_3(u_input.b.x), true).b), func_1(), true));
    var var_1 = _wgslsmith_add_u32(reverseBits(_wgslsmith_div_u32(1u, ~var_0.a.a)) ^ (_wgslsmith_div_u32(0u, var_0.b.x) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14215u, var_0.a.a, 1u), vec4<u32>(81713u, u_input.c, u_input.c, 31668u))), ~((var_0.c | 0u) >> (~21793u % 32u)));
    var var_2 = var_0.b.zy;
    let var_3 = !vec3<bool>(true, func_2(var_0.a, !select(vec4<bool>(true, var_0.a.b, var_0.a.b, false), vec4<bool>(var_0.a.b, true, false, var_0.a.b), vec4<bool>(var_0.a.b, var_0.a.b, true, var_0.a.b)), select(select(vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, var_0.a.b), vec4<bool>(var_0.a.b, var_0.a.b, false, false), true), !vec4<bool>(var_0.a.b, var_0.a.b, true, var_0.a.b), any(vec2<bool>(false, false))), func_8(func_2(Struct_1(62740u, var_0.a.b, u_input.a), vec4<bool>(false, true, true, var_0.a.b), vec4<bool>(var_0.a.b, false, false, false), Struct_2(Struct_1(var_2.x, var_0.a.b, u_input.a), vec3<u32>(var_0.a.c.x, 0u, u_input.c), var_0.d, 11322u)).a, false, reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i)), func_8(var_0.a, var_0.a.b, u_input.b, var_0.a).a)).a.b, func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(619f, 1756f) * vec2<f32>(-1573f, 258f))), var_0.a, func_1(), !var_0.a.b).b);
    let var_4 = u_input.a.zz;
    var_1 = var_4.x;
    var var_5 = Struct_3(_wgslsmith_sub_i32(abs(u_input.b.x), -4638i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b.x) | 1i, ~(~(~(vec2<i32>(2147483647i, u_input.b.x) ^ u_input.b.xz))), 3045i, reverseBits(78723u));
}

