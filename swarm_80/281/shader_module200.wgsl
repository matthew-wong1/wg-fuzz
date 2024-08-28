struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_2(u_input.b, _wgslsmith_clamp_i32(~u_input.b.x & firstLeadingBit(-2147483647i), abs(38577i), ~1i) & u_input.d.x, u_input.b.x);
    var var_1 = _wgslsmith_dot_vec3_i32(~vec3<i32>(abs(u_input.d.x ^ 1i), _wgslsmith_mod_i32(~u_input.a, abs(35668i)), ~(~u_input.d.x)), -((-var_0.a.yyw ^ vec3<i32>(0i, 2147483647i, var_0.c)) ^ -select(vec3<i32>(u_input.d.x, var_0.b, 30685i), vec3<i32>(2147483647i, -51363i, u_input.b.x), true)));
    var_1 = ~u_input.d.x;
    global0 = ~countOneBits(u_input.b.x);
    global0 = u_input.a >> (~(~_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x))) % 32u);
    return countOneBits(~reverseBits(4294967295u));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: i32) -> i32 {
    let var_0 = u_input.c.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(123f)))), _wgslsmith_f_op_f32(trunc(arg_1.x)))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(floor(-1232f))), -1672f, _wgslsmith_f_op_f32(trunc(arg_1.x)));
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-494f, arg_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - _wgslsmith_f_op_f32(-var_1.x)))), -576f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(-1161f, 848f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), 236f, -316f))));
    var var_3 = Struct_4(var_1.yy, true);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-592f - arg_1.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))))));
    return abs(-(~firstTrailingBit(1i)));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_mult_vec2_i32(abs(-(~vec2<i32>(u_input.a, -1i) << (~vec2<u32>(u_input.c.x, 17229u) % vec2<u32>(32u)))), vec2<i32>(u_input.d.x, -11443i));
    let var_2 = true;
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_div_u32(~u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e), u_input.c))), ~(~_wgslsmith_add_u32(u_input.e, 1u)) << (~reverseBits(1u) % 32u));
    var var_4 = 1i;
    return func_4(Struct_5(_wgslsmith_mult_u32(4294967295u ^ func_3(-1394f), var_3.x), ~abs(vec4<u32>(u_input.e, 62065u, u_input.e, u_input.c.x)), Struct_1(arg_0, select(min(u_input.b.xwy, vec3<i32>(-45015i, 12049i, u_input.a)), vec3<i32>(u_input.d.x, var_1.x, -56988i) ^ u_input.d, select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, true, false), var_2)), ~(~var_3.x), u_input.b.zww, vec2<u32>(66917u, u_input.c.x)), vec2<bool>(false, !var_2), ~_wgslsmith_mod_i32(1i, u_input.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1535f + 1253f), _wgslsmith_f_op_f32(round(-861f)), _wgslsmith_f_op_f32(min(-392f, -297f))), vec3<f32>(-739f, -726f, 1f), vec3<bool>(all(vec3<bool>(true, var_2, false)), any(vec3<bool>(false, true, var_2)), var_2))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2160f, 348f, 505f))))), 1i ^ arg_0);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> f32 {
    var var_0 = Struct_1(arg_2.a.x, vec3<i32>(_wgslsmith_mult_i32(~arg_1, -2147483647i), ~arg_1, 1i), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.e, ~63450u, u_input.e), vec3<u32>(62248u, 4294967295u, ~1u)), arg_2.a.yxx, u_input.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-776f)), _wgslsmith_f_op_f32(f32(-1f) * -1868f), _wgslsmith_f_op_f32(f32(-1f) * -184f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1470f, -1000f, 116f) * vec3<f32>(320f, -1000f, 347f)), vec3<f32>(144f, 1336f, -241f), true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(-503f, -691f)), _wgslsmith_f_op_f32(-1610f + 471f)))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-866f + 396f), vec2<i32>(var_0.d.x, _wgslsmith_dot_vec2_i32(var_0.b.zx, arg_2.a.xw)), Struct_1(~arg_2.b, var_0.d ^ abs(max(arg_2.a.xwy, vec3<i32>(7484i, arg_2.c, arg_2.b))), ~_wgslsmith_mod_u32(var_0.e.x, 75692u) & arg_3, u_input.d, _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(var_0.c, u_input.e), 0u), var_0.e)), -reverseBits(~_wgslsmith_div_i32(4772i, u_input.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))))));
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), -1395f, _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_div_f32(var_1.x, -1000f))), _wgslsmith_div_f32(-2545f, 1871f))));
    let var_4 = !(!(!(!select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_0, true, arg_0), arg_0))));
    return _wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1173f)) + _wgslsmith_div_f32(var_3.x, var_3.x)) * _wgslsmith_f_op_f32(trunc(var_2.a))))));
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global0 = -9582i;
    let var_0 = _wgslsmith_f_op_f32(func_5(false, u_input.a, Struct_2(vec4<i32>(0i, 0i, -1i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.a), vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.d.x), _wgslsmith_clamp_i32(-1i, -1924i, -25709i), u_input.d.x | u_input.b.x)), func_2(u_input.b.x)), ~_wgslsmith_div_u32(~u_input.c.x, reverseBits(~u_input.c.x))));
    global0 = -1i;
    var var_1 = max((_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.c.x, 5710u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.e, 63753u, 0u)) >> ((~vec4<u32>(41156u, u_input.e, 1u, u_input.e) | (vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x) ^ vec4<u32>(4294967295u, u_input.c.x, 51472u, u_input.e))) % vec4<u32>(32u))) >> (vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.e, u_input.e), vec3<u32>(14854u, 35849u, u_input.e))), u_input.e, abs(countOneBits(54154u)), u_input.e) % vec4<u32>(32u)), ~(~vec4<u32>(~0u, u_input.e, u_input.c.x, 0u << (u_input.e % 32u))));
    global0 = ~1i;
    return vec3<i32>(2147483647i, abs(u_input.b.x), 35754i);
}

fn func_6(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_5 {
    let var_0 = Struct_2(select(-reverseBits(vec4<i32>(1i, 17888i, arg_2.a, u_input.a)), u_input.b, false), u_input.b.x, -2088i);
    let var_1 = select(vec3<bool>(true, arg_0.x, arg_0.x | false), vec3<bool>(any(select(select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, false)), arg_0.wx, vec2<bool>(true, false))), !(!arg_0.x), all(!arg_0.xwy)), select(arg_0.wxz, vec3<bool>(arg_0.x | all(vec2<bool>(arg_0.x, true)), !(arg_1 > -1120f), arg_0.x), select(!vec3<bool>(true, arg_0.x, false), vec3<bool>(!arg_0.x, !arg_0.x, 21011i > u_input.a), arg_0.x | select(true, false, arg_0.x))));
    let var_2 = func_4(Struct_5(_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_2.e.x, 39092u), arg_2.e.x) << (u_input.e % 32u), ~abs(firstTrailingBit(vec4<u32>(71067u, 4294967295u, u_input.e, u_input.c.x))), Struct_1(var_0.c, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, arg_2.a, var_0.c), vec3<i32>(-4461i, 13537i, -1i)), abs(0u), _wgslsmith_mod_vec3_i32(-vec3<i32>(20632i, -16259i, 2147483647i), select(var_0.a.xxw, u_input.b.xwx, vec3<bool>(false, false, true))), firstLeadingBit(countOneBits(arg_2.e))), var_1.zy, 3986i), vec3<f32>(_wgslsmith_f_op_f32(select(arg_1, arg_1, arg_1 < _wgslsmith_f_op_f32(-arg_1))), arg_1, 1073f), ~0i);
    global0 = _wgslsmith_sub_i32(-(~var_2), -abs(abs(max(var_0.b, 3244i))));
    var var_3 = max(0u, 100055u);
    return Struct_5(1u, vec4<u32>(~(~(~48634u)), 0u, 4294967295u, _wgslsmith_mod_u32(19496u, min(~29406u, _wgslsmith_div_u32(34064u, u_input.c.x)))), arg_2, select(!vec2<bool>(false, !var_1.x), !arg_0.zy, select(true, arg_0.x, true)), ~_wgslsmith_dot_vec3_i32(arg_2.b, _wgslsmith_mod_vec3_i32(var_0.a.xwx & vec3<i32>(-2147483647i, arg_2.d.x, -25329i), func_1(arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1314f), -252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1348f, -392f)))) - _wgslsmith_f_op_f32(f32(-1f) * -321f))));
    let var_1 = func_6(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(u_input.b.x, min(vec3<i32>(2147483647i, u_input.b.x << (u_input.c.x % 32u), -2147483647i), firstLeadingBit(vec3<i32>(u_input.d.x, 30206i, -1i))), ~firstTrailingBit(201u), func_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-552f, 371f))), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(4294967295u, u_input.e))), vec2<u32>(max(68433u, 70604u), 0u))), vec3<u32>(select(49687u, ~u_input.e, true), 4294967295u, ((u_input.c.x << (4294967295u % 32u)) ^ u_input.c.x) << (_wgslsmith_mult_u32(1u << (u_input.c.x % 32u), _wgslsmith_add_u32(u_input.c.x, u_input.e)) % 32u)));
    let var_2 = select(vec2<bool>(true, var_1.d.x), vec2<bool>(var_1.c.a >= -_wgslsmith_clamp_i32(u_input.d.x, -25468i, -1i), var_1.d.x), !var_1.d);
    global0 = -2147483647i;
    global0 = _wgslsmith_sub_i32((~_wgslsmith_clamp_i32(u_input.b.x, u_input.d.x, 0i) ^ _wgslsmith_div_i32(var_1.c.a & -1i, -3107i)) >> (u_input.e % 32u), var_1.e | firstTrailingBit(u_input.b.x & (-9491i >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_div_u32(~0u, var_1.a), ~_wgslsmith_dot_vec3_u32(vec3<u32>(35096u, 12166u, 3849u), vec3<u32>(var_1.a, var_1.a, var_1.a))), _wgslsmith_f_op_vec4_f32(-var_0));
}

