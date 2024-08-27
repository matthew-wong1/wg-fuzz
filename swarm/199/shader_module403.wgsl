struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    global0 = Struct_1(vec2<u32>(global0.a.x, global0.a.x), ((i32(-1i) * -1i) << (reverseBits(~global0.a.x) % 32u)) | global0.b, arg_0 & (_wgslsmith_sub_u32(u_input.a, 4294967295u) ^ 4294967295u));
    var var_0 = _wgslsmith_dot_vec3_u32(min(firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, 56340u)) | select(~vec3<u32>(arg_0, u_input.a, 41046u), ~vec3<u32>(110412u, arg_0, 21419u), true), ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, arg_0, 24916u), vec3<u32>(0u, u_input.a, arg_0), vec3<u32>(arg_0, 13908u, u_input.a)), vec3<u32>(u_input.a, 8299u, u_input.a))), max(countOneBits((vec3<u32>(u_input.a, 0u, 0u) >> (vec3<u32>(1u, 81813u, u_input.a) % vec3<u32>(32u))) | reverseBits(vec3<u32>(71981u, u_input.a, 45741u))), ~vec3<u32>(1u, global0.a.x, ~32868u)));
    global0 = Struct_1(vec2<u32>(min(u_input.a, global0.a.x), max(arg_0, ~select(global0.c, 43518u, false))), ~_wgslsmith_mod_i32(2147483647i, ~u_input.b) | firstTrailingBit(_wgslsmith_add_i32(~1i, 58617i)), 0u);
    let var_1 = Struct_3(vec2<i32>(u_input.c.x, (u_input.b ^ firstLeadingBit(global0.b)) >> (countOneBits(u_input.a ^ arg_0) % 32u)), Struct_1(vec2<u32>(_wgslsmith_div_u32(~arg_0, 0u), 9812u), -1i, 0u & ~min(arg_0, 4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)) + _wgslsmith_f_op_f32(f32(-1f) * -1074f)))), select(!select(select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, true, true), vec3<bool>(true, arg_2, false)), vec3<bool>(arg_2, false, true), true), !(!(!vec3<bool>(true, true, arg_2))), !(true & arg_2)), _wgslsmith_f_op_vec4_f32(arg_1 * arg_1));
    var var_2 = arg_2;
    return 51477u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: f32) -> Struct_4 {
    global0 = Struct_1(_wgslsmith_mult_vec2_u32(~_wgslsmith_clamp_vec2_u32(global0.a, global0.a, global0.a), min(~vec2<u32>(u_input.a, global0.c), global0.a)) << (global0.a % vec2<u32>(32u)), 0i, reverseBits(abs(global0.c)));
    var var_0 = arg_2;
    let var_1 = firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_div_u32(~global0.a.x, 1u) ^ func_3(1u, vec4<f32>(-548f, arg_0.x, -816f, -393f), any(vec4<bool>(false, true, true, true))), 36769u));
    return Struct_4(false, global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_2, 835f), _wgslsmith_f_op_f32(arg_0.x + arg_2)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_2))))), arg_0.zw, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), true)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(195f * -845f), _wgslsmith_f_op_f32(arg_0.x * arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(767f, _wgslsmith_f_op_f32(-arg_2))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-491f)))))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, -25432i, arg_1.x) << (vec4<u32>(global0.a.x, global0.a.x, 4294967295u, var_1) % vec4<u32>(32u)), u_input.c), _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstLeadingBit(arg_1.x), abs(u_input.c.x)), arg_1.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> Struct_5 {
    global0 = arg_1.b;
    global0 = Struct_1(~arg_0.b, i32(-1i) * -global0.b, ~arg_3);
    let var_0 = -167f;
    global0 = arg_1.b;
    var var_1 = max(vec4<u32>(abs(~(~21601u)), 0u | (~57519u ^ (arg_1.b.a.x >> (arg_3 % 32u))), _wgslsmith_add_u32(_wgslsmith_mod_u32(39347u, ~36319u), 13694u), func_2(_wgslsmith_div_vec4_f32(arg_1.e, vec4<f32>(1450f, 384f, arg_0.d.x, 386f)), u_input.c.wyz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d.x - var_0)))).b.x), ~countOneBits(vec4<u32>(_wgslsmith_add_u32(global0.c, 1u), _wgslsmith_mult_u32(u_input.a, 33808u), _wgslsmith_mult_u32(0u, arg_0.b.x), arg_3)));
    return Struct_5(Struct_4(!any(vec4<bool>(true, arg_0.a, true, arg_0.a)), ~vec2<u32>(global0.a.x, var_1.x), _wgslsmith_f_op_vec2_f32(-arg_0.c), _wgslsmith_f_op_vec2_f32(-arg_0.d), vec2<i32>(u_input.b, -2147483647i) >> (~min(arg_0.b, var_1.yw) % vec2<u32>(32u))), Struct_1(vec2<u32>(countOneBits(0u), firstTrailingBit(~4294967295u)), abs(u_input.b), 1u));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_4, arg_2: f32) -> Struct_2 {
    let var_0 = arg_2;
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, 150f, arg_2, 2313f)), vec4<f32>(-415f, -663f, -639f, 1562f)), vec4<f32>(355f, _wgslsmith_f_op_f32(f32(-1f) * -1885f), _wgslsmith_f_op_f32(round(var_0)), arg_0.a.d.x), !(!vec4<bool>(arg_0.a.a, true, false, true)))))), ~(u_input.c.xxw >> (select(abs(vec3<u32>(13876u, 4294967295u, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(18425u, 21203u, 1u), vec3<u32>(arg_1.b.x, 53006u, 27622u)), false) % vec3<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(arg_2 - arg_2))))).b;
    var var_2 = Struct_1(~arg_0.b.a, -50061i, 4294967295u);
    let var_3 = func_4(arg_0.a, Struct_3(func_4(func_4(arg_1, Struct_3(u_input.c.zx, arg_0.b, var_0, vec3<bool>(arg_0.a.a, false, true), vec4<f32>(-1000f, arg_1.d.x, arg_1.c.x, -162f)), 0u != var_2.c, 1u >> (1u % 32u)).a, Struct_3(vec2<i32>(-1i, u_input.b), arg_0.b, arg_0.a.d.x, vec3<bool>(false, true, arg_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, -1530f, -536f, -2086f) - vec4<f32>(arg_1.c.x, arg_2, arg_2, 1000f))), true, 58587u).a.e, arg_0.b, -1000f, !(!select(vec3<bool>(true, true, arg_1.a), vec3<bool>(true, true, arg_0.a.a), arg_0.a.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1.d.x, 1000f, arg_1.d.x) * vec4<f32>(245f, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x))), vec4<f32>(226f, arg_1.d.x, func_2(vec4<f32>(arg_1.d.x, arg_1.d.x, -1872f, 319f), vec3<i32>(1i, global0.b, arg_1.e.x), -1026f).d.x, -519f), arg_1.a != true))), true, 0u).a;
    return Struct_2(func_4(Struct_4(func_4(arg_0.a, Struct_3(vec2<i32>(u_input.c.x, var_3.e.x), Struct_1(vec2<u32>(0u, global0.c), arg_1.e.x, var_3.b.x), var_3.d.x, vec3<bool>(false, var_3.a, arg_0.a.a), vec4<f32>(-1000f, arg_1.c.x, 1427f, -562f)), !var_3.a, u_input.a).a.a, ~(~vec2<u32>(var_1.x, 1u)), vec2<f32>(1f, 1f), vec2<f32>(-195f, -249f), arg_1.e), Struct_3(vec2<i32>(func_4(Struct_4(arg_1.a, global0.a, var_3.d, vec2<f32>(-802f, arg_2), arg_0.a.e), Struct_3(vec2<i32>(-20806i, u_input.c.x), Struct_1(vec2<u32>(1u, arg_0.a.b.x), -2147483647i, 1995u), arg_1.d.x, vec3<bool>(false, false, false), vec4<f32>(arg_1.c.x, var_0, arg_2, -692f)), true, 33855u).b.b, var_3.e.x ^ arg_1.e.x), arg_0.b, _wgslsmith_div_f32(2820f, _wgslsmith_f_op_f32(arg_1.c.x - var_3.c.x)), select(select(vec3<bool>(false, false, true), vec3<bool>(var_3.a, var_3.a, true), true), !vec3<bool>(true, arg_0.a.a, var_3.a), select(vec3<bool>(arg_0.a.a, false, arg_0.a.a), vec3<bool>(arg_0.a.a, arg_0.a.a, true), arg_0.a.a)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, -607f, 612f, -762f)))))), true, 4294967295u).b, Struct_1(~(~var_1 >> (var_3.b % vec2<u32>(32u))), abs(-1437i), ~(_wgslsmith_add_u32(18817u, var_2.a.x) & arg_1.b.x)), vec2<bool>(global0.b != ~(var_3.e.x >> (4294967295u % 32u)), func_4(var_3, Struct_3(-var_3.e, func_4(arg_1, Struct_3(u_input.c.xy, arg_0.b, -1291f, vec3<bool>(false, var_3.a, false), vec4<f32>(-1618f, -102f, arg_2, -404f)), true, 1u).b, arg_1.d.x, vec3<bool>(arg_0.a.a, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, -311f, arg_1.c.x) * vec4<f32>(arg_0.a.c.x, 327f, arg_1.c.x, arg_1.d.x))), var_3.a, ~1u).a.a));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, -371f) + vec2<f32>(1373f, -1248f))), vec2<f32>(-1401f, _wgslsmith_f_op_f32(1527f - -126f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-620f, -450f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(356f, -155f) * vec2<f32>(-452f, 1000f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1523f, -1000f) + vec2<f32>(2267f, 1395f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-972f, -168f) * vec2<f32>(-180f, -889f)))), true)))));
    var var_1 = func_5(func_4(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, -2289f, -452f, -1467f))), _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b, 0i, global0.b), ~u_input.c.yxx), var_0.x), Struct_3(-(~u_input.c.wz), Struct_1(~vec2<u32>(52035u, u_input.a), abs(-21749i), ~arg_1), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(false, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -123f, var_0.x) + vec4<f32>(-159f, -788f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))), u_input.b > u_input.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~global0.a.x, 2161u), _wgslsmith_sub_u32(abs(76935u), global0.a.x))), Struct_4(any(select(vec4<bool>(true, true, false, false), !vec4<bool>(false, false, arg_0, arg_0), arg_0)), abs(vec2<u32>(arg_2.x, select(4294967295u, 70135u, arg_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1338f, var_0.x) + vec2<f32>(var_0.x, -271f))), vec2<f32>(var_0.x, -1000f), false)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, -866f))))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(2147483647i, u_input.c.x)) | vec2<i32>(_wgslsmith_mod_i32(0i, u_input.b), u_input.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-695f))))));
    var var_2 = false;
    let var_3 = -reverseBits(~vec3<i32>(-43705i, global0.b, var_1.b.b) << (_wgslsmith_mod_vec3_u32(arg_2, arg_2) % vec3<u32>(32u))) & vec3<i32>(0i, 2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, u_input.c), -_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(var_1.b.b, var_1.b.b, -1i, global0.b))));
    global0 = Struct_1(vec2<u32>(_wgslsmith_mod_u32(func_3(~0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1000f, -1367f)), var_0.x <= var_0.x), arg_1), 40812u), _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(_wgslsmith_div_i32(var_1.b.b, u_input.c.x), ~(-1i)), -var_1.a.b << (4294967295u % 32u)), var_1.b.b), ~u_input.a);
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1f), _wgslsmith_f_op_f32(trunc(570f))), vec3<f32>(_wgslsmith_f_op_f32(-564f - var_0.x), 709f, _wgslsmith_f_op_f32(max(-561f, _wgslsmith_f_op_f32(var_0.x + -630f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(-283f, -904f))), _wgslsmith_f_op_f32(-183f - -523f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-434f, _wgslsmith_f_op_f32(-667f + 1402f), -2140f) * _wgslsmith_f_op_vec3_f32(func_1(true, ~u_input.a, vec3<u32>(4148u, u_input.a, 1u)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-436f, -1000f, 1177f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(385f, 1000f, 287f) - vec3<f32>(285f, -1000f, -525f))) - vec3<f32>(_wgslsmith_f_op_f32(1939f - 1061f), -595f, -1593f)))));
    global0 = Struct_1(global0.a, 1i, _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(~32074u, func_3(65315u, vec4<f32>(-1866f, var_0.x, 1568f, -765f), false) & global0.a.x)));
    var var_1 = 622f;
    var var_2 = select(!(all(vec3<bool>(true, true, true)) & (u_input.b >= -5200i)), all(select(func_5(Struct_5(Struct_4(false, vec2<u32>(global0.c, global0.a.x), vec2<f32>(702f, var_0.x), var_0.zx, u_input.c.wy), Struct_1(vec2<u32>(32868u, global0.c), u_input.b, 3473u)), Struct_4(false, vec2<u32>(6856u, 58655u), var_0.zz, vec2<f32>(-435f, var_0.x), u_input.c.xx), -797f).c, vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) < _wgslsmith_f_op_f32(trunc(-1000f))) | true;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(751f))));
    let var_3 = global0.c;
    global0 = Struct_1(~(vec2<u32>(~39215u, global0.a.x & global0.c) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(global0.a, vec2<u32>(global0.a.x, 9856u), global0.a), abs(vec2<u32>(4294967295u, global0.a.x))) % vec2<u32>(32u))), _wgslsmith_mod_i32(-2147483647i, func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -792f, var_0.x, 576f) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), u_input.c.zwz, _wgslsmith_f_op_f32(f32(-1f) * -708f)).e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~u_input.a, 16309u), func_2(vec4<f32>(var_0.x, 324f, var_0.x, var_0.x), vec3<i32>(u_input.c.x, -28821i, 2627i), var_0.x).b.x << (59615u % 32u), global0.c), max(vec3<u32>(1u, global0.c, reverseBits(38859u)), vec3<u32>(global0.a.x, u_input.a, ~global0.a.x))));
    var var_4 = Struct_4(!any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), true)), global0.a, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -468f), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(f32(-1f) * -544f))), vec2<i32>(global0.b >> (global0.a.x % 32u), ~(-8200i) | u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c.xzx));
}

