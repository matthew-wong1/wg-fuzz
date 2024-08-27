struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_3,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(26330u, vec4<f32>(677f, 798f, -1688f, -854f), vec2<i32>(19150i, 1i)), Struct_3(1u, vec4<f32>(-771f, -403f, 670f, 1344f), vec2<i32>(48011i, -13050i)), Struct_3(84012u, vec4<f32>(1568f, -446f, -113f, -692f), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(0u, vec4<f32>(352f, -510f, 460f, 688f), vec2<i32>(1i, 0i)), Struct_3(1u, vec4<f32>(824f, -194f, -1513f, 947f), vec2<i32>(2147483647i, 0i)));

var<private> global1: bool;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = ~abs(abs(1u));
    global0 = array<Struct_3, 5>();
    var var_1 = Struct_2(Struct_1(26272u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x)))), vec4<u32>(15220u, ~(~var_0), 0u, ~_wgslsmith_mod_u32(u_input.b, arg_0.a)), ~max(vec2<u32>(4294967295u, 84492u), vec2<u32>(93023u, 0u)) ^ firstLeadingBit(vec2<u32>(arg_0.a, 1u) | vec2<u32>(u_input.a, 10651u)), ~(~(~vec2<u32>(arg_0.a, 1u)))), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), 1u);
    global0 = array<Struct_3, 5>();
    var var_2 = select(reverseBits(arg_0.c) << (~abs(vec2<u32>(39872u, 16704u)) % vec2<u32>(32u)), ~firstLeadingBit(_wgslsmith_sub_vec2_i32(arg_0.c, vec2<i32>(arg_0.c.x, 667i))), select(vec2<bool>(var_1.b, var_1.b != true), !(!select(vec2<bool>(false, var_1.b), vec2<bool>(var_1.b, false), var_1.b)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), var_1.b), vec2<bool>(false, false), var_1.b)));
    return arg_0.c;
}

fn func_4(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<i32>) -> u32 {
    let var_0 = 788f;
    let var_1 = u_input.b;
    let var_2 = 285f;
    var var_3 = select(vec3<bool>(all(vec3<bool>(true, true, true)), false, true), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(any(vec4<bool>(true, true, false, false)), false, any(vec2<bool>(true, false))), vec3<bool>(true, true, any(vec4<bool>(true, true, false, true))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), true)), !(!(arg_2.x < 26611i))), !(_wgslsmith_div_f32(-175f, -699f) == _wgslsmith_f_op_f32(max(-646f, var_0))));
    global1 = true;
    return ~(u_input.a << (max(~19823u, firstTrailingBit(_wgslsmith_div_u32(4294967295u, 4294967295u))) % 32u));
}

fn func_2() -> f32 {
    let var_0 = vec2<u32>(func_4(1i, min(~vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(~vec2<i32>(25804i, 1i), func_3(Struct_3(u_input.a, vec4<f32>(-1232f, 1000f, 145f, 500f), vec2<i32>(64272i, 1i))))), -vec4<i32>(0i, -62615i, 557i, -55454i) << ((~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) ^ ~vec4<u32>(4294967295u, 103585u, u_input.b, u_input.b)) % vec4<u32>(32u))), 1u);
    global0 = array<Struct_3, 5>();
    var var_1 = 4294967295u;
    let var_2 = Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 482f) + 1009f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1224f * -361f)))))), abs(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.a), vec4<u32>(4294967295u, 64462u, 1u, var_0.x)))), abs(vec2<u32>(4294967295u, abs(~var_0.x))), vec2<u32>(4294967295u, ~var_0.x));
    global0 = array<Struct_3, 5>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(323f + var_2.b))) + _wgslsmith_f_op_f32(var_2.b + -677f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2052f) - _wgslsmith_f_op_f32(f32(-1f) * -711f)) - var_2.b)));
}

fn func_5(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_4(554f);
    let var_1 = select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), select(vec4<bool>(false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))), any(vec4<bool>(false, false, false, true)) & true), select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)), true), !select(any(vec2<bool>(true, false)), _wgslsmith_clamp_i32(-34771i, 0i, 39158i) < -2147483647i, false));
    var var_2 = Struct_1(~u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(floor(1000f)))))), vec4<u32>(~max(func_4(4005i, vec2<i32>(-3049i, 3931i), vec4<i32>(-28788i, 7631i, 1i, 0i)), max(4294967295u, u_input.b)), countOneBits(_wgslsmith_mod_u32(4294967295u, u_input.a)), select(u_input.a, 39858u, all(var_1.zzz)), 1u), vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(u_input.b, countOneBits(0u))), u_input.a), select(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(1u, 37841u)), select(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, 25461u), var_1.x))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(11839u, u_input.a)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), select(vec2<bool>(arg_0 > 3102f, any(var_1.wz)), vec2<bool>(true, var_1.x | var_1.x), true)));
    var var_3 = ~var_2.c.xx << (var_2.e % vec2<u32>(32u));
    var_3 = firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 1u, 25186u, var_3.x), max(var_2.c, ~vec4<u32>(u_input.b, 1u, 78684u, var_2.a))), select(firstTrailingBit(~u_input.b), u_input.b, any(!var_1))));
    return Struct_1(u_input.a, 1000f, _wgslsmith_mult_vec4_u32(vec4<u32>(40031u, ~var_3.x, ~3497u, ~0u) & vec4<u32>(u_input.b << (u_input.b % 32u), _wgslsmith_sub_u32(u_input.b, 0u), func_4(0i, vec2<i32>(-10169i, 1i), vec4<i32>(-2064i, 20128i, -30491i, -2147483647i)), countOneBits(var_2.a)), var_2.c), vec2<u32>(var_3.x, var_2.d.x), vec2<u32>(u_input.b, ~(~4294967295u)));
}

fn func_1() -> vec4<f32> {
    var var_0 = !(!select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))));
    global1 = any(select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, true), true)) | var_0.x;
    let var_1 = func_5(_wgslsmith_f_op_f32(func_2()));
    var var_2 = func_5(-580f);
    var var_3 = Struct_1(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-267f, var_2.b), _wgslsmith_f_op_f32(exp2(var_2.b)), true))), var_1.c, min(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.e.x, u_input.a) | ~vec2<u32>(0u, u_input.b), vec2<u32>(~u_input.b, ~var_1.a)), vec2<u32>(firstTrailingBit(var_2.c.x), max(32493u, 51031u)) ^ var_2.e), vec2<u32>(47999u, ~var_2.a));
    return vec4<f32>(-1994f, var_3.b, -1762f, 1816f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) - vec4<f32>(func_5(_wgslsmith_f_op_f32(abs(2435f))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1838f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - -1457f), -1562f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-826f, -231f, 424f, 1503f)))))));
    let var_1 = func_5(_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = -vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(func_3(Struct_3(var_1.e.x, vec4<f32>(var_1.b, var_1.b, 814f, -698f), vec2<i32>(-11769i, -2147483647i))).x, -12470i), min(i32(-1i) * -1i, 0i), -32414i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-7432i, 30778i, 9085i), vec3<i32>(34987i, 0i, 2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 11572i, -18468i), vec3<i32>(1i, 1i, 32448i), vec3<i32>(0i, -2147483647i, -1i))), abs(-vec3<i32>(36998i, 2147483647i, 18936i))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(14571i, 646i, -2147483647i), select(vec3<i32>(-2147483647i, 0i, 2147483647i), vec3<i32>(0i, -35726i, -2147483647i), vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true))), -vec3<i32>(0i, -49276i, 0i)));
    let var_3 = var_1;
    let var_4 = var_2;
    var var_5 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b, var_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -456f), true))));
    let var_6 = countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(-21306i, var_4.x)), min(-2147483647i, var_4.x) | _wgslsmith_add_i32(var_4.x, var_4.x), ~(-1i), -4628i), select(vec4<i32>(var_2.x, var_2.x, 23497i, 13280i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, var_4.x, -51622i, 8862i), vec4<i32>(var_4.x, -2590i, -25754i, var_2.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)) & vec4<i32>(2147483647i, _wgslsmith_mult_i32(var_4.x, var_4.x), -var_4.x, 28554i << (0u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(1i << (~var_5.d.x % 32u), 1210f, var_1.e.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1()).x + _wgslsmith_f_op_f32(exp2(var_1.b))), _wgslsmith_f_op_f32(min(var_5.b, _wgslsmith_f_op_f32(-var_0.x))))));
}

