struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_mod_u32(2673u, u_input.b);
    var var_2 = Struct_2(global1.d.a.zx, global1.d.c.x, global1.d.a.x, Struct_1(vec3<i32>(-2147483647i, -global1.d.a.x, global1.d.a.x), select(select(select(vec4<bool>(global1.d.b.x, false, global1.d.b.x, false), global1.d.b, vec4<bool>(true, arg_0, global1.d.b.x, global1.d.b.x)), vec4<bool>(false, global1.d.b.x, arg_0, true), false == global1.d.b.x), vec4<bool>(global1.d.c.x == 4294967295u, all(global1.d.b.zyw), true, global1.d.b.x), any(vec3<bool>(arg_0, global1.d.b.x, global1.d.b.x))), vec2<u32>(u_input.b, 1u), _wgslsmith_f_op_vec4_f32(-global1.d.d)));
    var_1 = abs(~(~u_input.b));
    global1 = Struct_2(vec2<i32>(min(-2147483647i, -var_2.d.a.x), ~((28323i & var_2.a.x) >> (~91415u % 32u))), global1.d.c.x, _wgslsmith_mult_i32(-58553i, 11209i), Struct_1(global1.d.a, global1.d.b, firstTrailingBit(vec2<u32>(global1.d.c.x | var_2.b, _wgslsmith_add_u32(u_input.b, 7527u))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.d.d.x, _wgslsmith_f_op_f32(global1.d.d.x * arg_1), _wgslsmith_f_op_f32(sign(global1.d.d.x)), global1.d.d.x), var_2.d.d))));
    return min(~5138u, global1.b) | global1.b;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = (global1.c >> (1u % 32u)) >= -63487i;
    var_0 = !(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.d.c.x, u_input.b, global1.d.c.x, global1.b), vec4<u32>(global1.b, 102149u, 21015u, 0u)) > global1.d.c.x) && select(true, !(true && !arg_2), false);
    global1 = Struct_2(global1.a, u_input.b >> ((u_input.b ^ func_3(any(vec3<bool>(false, true, global1.d.b.x)), -276f)) % 32u), u_input.a, Struct_1(_wgslsmith_add_vec3_i32(countOneBits(global1.d.a), vec3<i32>(-19704i, select(global1.a.x, u_input.a, false), _wgslsmith_dot_vec4_i32(vec4<i32>(32129i, 2147483647i, global1.c, global1.a.x), vec4<i32>(14687i, 0i, u_input.a, u_input.a)))), !select(!global1.d.b, select(vec4<bool>(false, true, false, arg_2), vec4<bool>(true, arg_2, global1.d.b.x, arg_2), false), select(vec4<bool>(global1.d.b.x, false, arg_2, true), global1.d.b, global1.d.b)), _wgslsmith_sub_vec2_u32(global1.d.c ^ global1.d.c, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.d.c.x), global1.d.c)) << (~(~global1.d.c) % vec2<u32>(32u)), vec4<f32>(global1.d.d.x, arg_0, 754f, -530f)));
    var var_1 = Struct_2(vec2<i32>(global1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1957i, select(global1.c, -43626i, false), -12151i), vec3<i32>(global1.a.x, _wgslsmith_mod_i32(-1i, u_input.a), _wgslsmith_add_i32(-20734i, global1.c)))), u_input.b, u_input.a, global1.d);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0), global1.d.d.x);
    return var_1.d;
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = global1.d.c.x;
    global1 = Struct_2(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(arg_0.a.a.x, arg_0.b.x), vec2<i32>(85727i, -14031i)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 41674u, arg_0.a.c.x), vec3<u32>(90939u, arg_0.a.c.x, 22577u)), _wgslsmith_dot_vec2_u32(vec2<u32>(88450u, 0u), arg_0.a.c)) % vec2<u32>(32u))), 1u, _wgslsmith_div_i32(~(~func_2(963f, 0u, true).a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, ~(-46510i), ~global1.d.a.x, u_input.a ^ u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(global1.d.a.x, 1i, -1i, -1i), vec4<i32>(-60191i, arg_0.a.a.x, 0i, 18832i)) >> (select(vec4<u32>(global1.b, arg_0.a.c.x, global1.d.c.x, 1u), vec4<u32>(11547u, 4294967295u, 7472u, u_input.b), false) % vec4<u32>(32u)))), func_2(-1847f, ~0u, select(true, any(vec2<bool>(arg_0.a.b.x, global1.d.b.x)), false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d.d));
    var var_2 = global1.d.b.x;
    global1 = Struct_2(global1.a, ~(~_wgslsmith_mult_u32(u_input.b, 12745u)), firstLeadingBit(~abs(u_input.a)) | -arg_0.a.a.x, func_2(465f, global1.b, all(!(!arg_0.a.b.zzw))));
    return func_2(_wgslsmith_f_op_f32(var_1.x + arg_0.a.d.x), 0u, arg_0.a.b.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_1 {
    global0 = arg_0.x;
    global0 = global1.d.d.x;
    var var_0 = func_2(575f, 462u, !global1.d.b.x);
    global1 = Struct_2(~(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.a.x, -2147483647i), vec2<i32>(u_input.a, 22154i)), ~vec2<i32>(-3866i, global1.a.x))), ~0u, 0i, arg_2.a);
    global1 = Struct_2(_wgslsmith_clamp_vec2_i32(~(~arg_2.b), global1.d.a.yx, -vec2<i32>(func_4(Struct_3(arg_2.a, arg_2.b)).a.x, var_0.a.x)), ~(~arg_2.a.c.x), firstLeadingBit(global1.a.x >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.c.x, var_0.c.x, arg_2.a.c.x), vec4<u32>(arg_2.a.c.x, var_0.c.x, u_input.b, u_input.b)), 4294967295u) % 32u)), Struct_1(global1.d.a, !(!(!arg_2.a.b)), global1.d.c, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1.d.d.x, 762f)), arg_2.a.d.x, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(162f + arg_0.x)), var_0.d)));
    return Struct_1(~vec3<i32>(var_0.a.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b.x, var_0.a.x, var_0.a.x, u_input.a), vec4<i32>(global1.c, 0i, 1i, arg_2.b.x)), ~arg_2.a.a.x, true), 2714i), !func_2(_wgslsmith_f_op_f32(abs(arg_2.a.d.x)), _wgslsmith_sub_u32(u_input.b, 1u) & func_2(var_0.d.x, var_0.c.x, arg_1.x).c.x, true).b, vec2<u32>(u_input.b, max(arg_2.a.c.x, ~(u_input.b & 43386u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2026f, 652f, global1.d.d.x, arg_2.a.d.x)))) - _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.d.x, -1303f, var_0.d.x, var_0.d.x)))) + _wgslsmith_f_op_vec4_f32(ceil(func_4(arg_2).d))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d.d.xyz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(969f, -944f, global1.d.d.x))) * global1.d.d.xxy), select(vec4<bool>(select(!global1.d.b.x, true, false), true | global1.d.b.x, u_input.a <= 2147483647i, true), global1.d.b, true), Struct_3(func_4(Struct_3(func_2(global1.d.d.x, u_input.b, global1.d.b.x), global1.d.a.yy)), _wgslsmith_clamp_vec2_i32(global1.d.a.yy, vec2<i32>(firstTrailingBit(u_input.a), 1i), vec2<i32>(40902i, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.d.d.x - var_0.d.x)));
    let var_2 = _wgslsmith_f_op_f32(-global1.d.d.x);
    var var_3 = global1.d;
    var var_4 = var_3.b.zz;
    return Struct_2(min(-vec2<i32>(var_0.a.x, -11495i), vec2<i32>(2147483647i, global1.c)) << (var_3.c % vec2<u32>(32u)), u_input.b, _wgslsmith_div_i32(firstTrailingBit(min(u_input.a, var_0.a.x)) ^ global1.c, -19595i), Struct_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, -8414i, 8572i) | global1.d.a, -(~var_0.a)), global1.d.b, _wgslsmith_mod_vec2_u32(firstTrailingBit(var_3.c & var_3.c), global1.d.c), vec4<f32>(-1193f, _wgslsmith_div_f32(550f, -1515f), 855f, var_0.d.x)));
}

fn func_6(arg_0: Struct_2) -> i32 {
    var var_0 = global1.d.d;
    let var_1 = !all(!vec3<bool>(!arg_0.d.b.x, false, true));
    let var_2 = _wgslsmith_f_op_f32(floor(var_0.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1441f, arg_0.d.d.x, -1000f, var_2))) + arg_0.d.d) + _wgslsmith_f_op_vec4_f32(-arg_0.d.d))) * _wgslsmith_f_op_vec4_f32(-arg_0.d.d));
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d.d.x))) + -657f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x - -1138f), _wgslsmith_f_op_f32(-var_2)))))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(-_wgslsmith_add_i32(~(21458i | u_input.a), -63068i), func_6(func_1()));
    let var_1 = ~(-vec4<i32>(_wgslsmith_sub_i32(u_input.a, -1i), ~u_input.a, 1i, u_input.a) >> ((vec4<u32>(52327u, ~u_input.b, u_input.b, firstLeadingBit(u_input.b)) >> (firstLeadingBit(~vec4<u32>(u_input.b, 0u, 4294967295u, u_input.b)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global1 = func_1();
    var var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, _wgslsmith_div_u32(1u, global1.b), _wgslsmith_mult_u32(u_input.b, global1.d.c.x)), select(vec3<u32>(28687u, _wgslsmith_mod_u32(u_input.b, global1.b), 4294967295u), max(vec3<u32>(1u, global1.d.c.x, 4294967295u) << (vec3<u32>(u_input.b, 0u, 34131u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(global1.d.c.x, global1.b, u_input.b))), vec3<bool>(all(global1.d.b.yz), true, true)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b, 62827u, 28823u), firstTrailingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)))), ~countOneBits(vec3<u32>(~u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b), global1.d.c.x)));
    var var_3 = global1.d;
    let var_4 = Struct_2(vec2<i32>(10872i, i32(-1i) * -1i), _wgslsmith_div_u32(49630u, var_2.x), global1.c, Struct_1(-_wgslsmith_clamp_vec3_i32(global1.d.a, abs(vec3<i32>(var_1.x, var_3.a.x, 1i)), ~vec3<i32>(u_input.a, 0i, var_0.x)), func_4(Struct_3(func_1().d, global1.a | var_1.wx)).b, var_3.c, vec4<f32>(_wgslsmith_f_op_f32(min(global1.d.d.x, var_3.d.x)), func_1().d.d.x, _wgslsmith_f_op_f32(select(var_3.d.x, var_3.d.x, true)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.d.d.x * var_3.d.x))))));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d.x) + _wgslsmith_f_op_f32(abs(1474f))), -491f, _wgslsmith_mult_u32(u_input.b ^ global1.b, ~var_2.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_4.d.d.zww), _wgslsmith_f_op_vec3_f32(-var_3.d.xyw))), reverseBits(max(vec4<i32>(2147483647i >> (global1.d.c.x % 32u), -54010i, u_input.a, var_3.a.x), select(vec4<i32>(var_0.x, var_1.x, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global1.c, -2147483647i, var_3.a.x), vec4<i32>(var_4.a.x, 1i, 93155i, var_1.x)), select(vec4<bool>(true, var_3.b.x, var_4.d.b.x, true), var_3.b, vec4<bool>(var_3.b.x, false, var_3.b.x, true))))));
}

