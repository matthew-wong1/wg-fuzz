struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> i32 {
    let var_0 = !select(any(!select(arg_2, vec3<bool>(arg_2.x, false, arg_2.x), vec3<bool>(arg_2.x, true, arg_2.x))), any(vec4<bool>(!arg_2.x, any(vec2<bool>(arg_2.x, true)), true, arg_2.x | arg_2.x)), false);
    let var_1 = arg_2.x && !any(select(!vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, false, true, arg_2.x), false));
    let var_2 = vec2<i32>(u_input.b.x, ~(-2147483647i) ^ _wgslsmith_add_i32(u_input.b.x, 2147483647i));
    let var_3 = arg_0.x;
    var var_4 = Struct_5(Struct_3(_wgslsmith_f_op_f32(abs(-581f)), Struct_2(-(u_input.b & u_input.b), arg_2.zy, ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, arg_0.x, 24975u), vec4<u32>(1u, var_3, arg_0.x, 114811u))), Struct_2(select(-vec3<i32>(u_input.b.x, -3470i, -2147483647i), _wgslsmith_mod_vec3_i32(u_input.b, vec3<i32>(0i, -21407i, var_2.x)), !var_1), select(vec2<bool>(false, false), arg_2.yy, u_input.c <= 1u), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 4294967295u, var_3), vec4<u32>(24640u, 1u, 4294967295u, 55233u)), vec4<u32>(1u, 49894u, var_3, var_3))), _wgslsmith_dot_vec2_i32(abs(~u_input.a), u_input.a), all(select(vec4<bool>(var_0, var_1, var_1, false), !vec4<bool>(var_1, false, false, true), var_1))));
    return var_2.x;
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: i32, arg_3: vec3<bool>) -> f32 {
    let var_0 = ~arg_0.a.b.c.zz;
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-303f, _wgslsmith_f_op_f32(-arg_0.a.a), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -973f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x * -314f) * -574f))))));
    var var_2 = select(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.a.b.c, arg_0.a.b.c, arg_0.a.c.c), countOneBits(arg_0.a.c.c), firstLeadingBit(arg_0.a.c.c)), vec4<u32>(arg_0.a.c.c.x, abs(1u), 25261u, ~0u), all(vec2<bool>(false, arg_3.x))), arg_0.a.b.c, vec4<bool>(true && (false != arg_3.x), all(vec3<bool>(arg_0.a.e, arg_3.x, true)) & true, all(!vec3<bool>(arg_1.a, false, arg_3.x)), true)) >> (vec4<u32>(arg_0.a.c.c.x, 4294967295u, u_input.c, countOneBits(50564u)) % vec4<u32>(32u));
    var var_3 = arg_2;
    return _wgslsmith_f_op_f32(arg_0.a.a - -1208f);
}

fn func_2(arg_0: i32) -> vec4<f32> {
    var var_0 = arg_0;
    var_0 = _wgslsmith_dot_vec3_i32(u_input.b, ~(-(~(-u_input.b))));
    var var_1 = -454f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(_wgslsmith_f_op_f32(floor(-244f)), Struct_2(u_input.b, vec2<bool>(false, true), vec4<u32>(u_input.c, u_input.c, 64447u, 4294967295u)), Struct_2(u_input.b, vec2<bool>(false, false), vec4<u32>(u_input.c, u_input.c, 1u, u_input.c)), 1i, true)), Struct_1(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1121f, -1278f, -126f) * vec4<f32>(781f, -271f, -546f, -247f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(806f, -1191f, -249f, 1088f))))), ~vec3<i32>(u_input.a.x, u_input.b.x, arg_0) | u_input.b), -(~arg_0 ^ func_3(vec3<u32>(u_input.c, 31918u, 4721u), 1000f, vec3<bool>(false, true, true), -873f)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -23137i, u_input.a.x, -11202i), vec4<i32>(u_input.a.x, -32419i, arg_0, -16486i)) == abs(arg_0)))));
    var var_2 = u_input.c;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1025f + _wgslsmith_f_op_f32(f32(-1f) * -3096f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_3(-1713f, Struct_2(vec3<i32>(u_input.b.x, arg_0, -4323i), vec2<bool>(false, false), vec4<u32>(97340u, u_input.c, 4294967295u, 13050u)), Struct_2(u_input.b, vec2<bool>(false, true), vec4<u32>(u_input.c, 1u, 4294967295u, u_input.c)), u_input.a.x, true)), Struct_1(false, vec4<f32>(291f, -600f, 754f, 1000f), u_input.b), 2147483647i, vec3<bool>(true, false, true))), -120f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-405f, _wgslsmith_f_op_f32(floor(170f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(405f * 1170f)))));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = Struct_5(Struct_3(-147f, Struct_2(~abs(arg_1.c), !select(vec2<bool>(true, false), vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_1.a)), vec4<u32>(arg_0, 4294967295u, ~arg_0, ~42649u)), Struct_2(firstTrailingBit(_wgslsmith_mod_vec3_i32(arg_1.c, u_input.b)), select(!vec2<bool>(arg_1.a, true), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_1.a)), !vec2<bool>(arg_1.a, false)), vec4<u32>(abs(1u), 40589u, ~0u, u_input.c)), u_input.a.x, arg_1.a && (any(vec2<bool>(true, arg_1.a)) | true)));
    let var_1 = Struct_2(firstTrailingBit(~_wgslsmith_add_vec3_i32(var_0.a.b.a, arg_1.c) | u_input.b), vec2<bool>(true, true), max(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, 1u, u_input.c ^ 5700u), (var_0.a.b.c | var_0.a.b.c) >> ((var_0.a.c.c | vec4<u32>(u_input.c, 4294967295u, var_0.a.b.c.x, 59611u)) % vec4<u32>(32u))), ~abs(var_0.a.c.c)));
    var var_2 = var_1;
    var_0 = Struct_5(var_0.a);
    var_2 = var_0.a.b;
    return var_1;
}

fn func_1() -> Struct_3 {
    return Struct_3(-125f, func_5(4294967295u, Struct_1(true | all(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec4_f32(func_2(max(u_input.b.x, 0i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2147483647i, 36285i, 41462i), ~vec3<i32>(36005i, u_input.a.x, 2147483647i))), u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1232f, -1875f)), _wgslsmith_f_op_f32(f32(-1f) * -994f), -645f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(160f, -1010f, -1375f)))), Struct_2(~(-u_input.b), vec2<bool>(true, false), vec4<u32>(_wgslsmith_sub_u32(func_5(u_input.c, Struct_1(true, vec4<f32>(-339f, 1697f, -601f, 428f), vec3<i32>(42539i, u_input.a.x, 25613i)), vec2<i32>(u_input.a.x, u_input.a.x), vec3<f32>(-398f, 1441f, 537f)).c.x, func_5(25592u, Struct_1(true, vec4<f32>(469f, 502f, -869f, 2859f), vec3<i32>(-6787i, -36144i, 2147483647i)), vec2<i32>(u_input.b.x, 1i), vec3<f32>(155f, 617f, -245f)).c.x), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c))), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 0u, u_input.c, u_input.c)), max(vec4<u32>(49792u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 1u, 5643u, u_input.c))), ~1u)), -(~(~(13591i & u_input.b.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(469f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(287f)) - 1167f))));
    var var_1 = var_0;
    let var_2 = Struct_5(Struct_3(-2413f, var_1.a.c, var_1.a.b, _wgslsmith_div_i32(min(func_3(vec3<u32>(0u, var_0.a.c.c.x, u_input.c), var_0.b.x, vec3<bool>(var_1.a.c.b.x, true, false), var_0.a.a), reverseBits(var_1.a.b.a.x)), 1i), false));
    var_1 = Struct_4(var_2.a, var_1.b);
    var var_3 = Struct_2(func_1().c.a, !vec2<bool>(true | !var_0.a.e, var_0.a.c.b.x), var_0.a.b.c ^ vec4<u32>(var_1.a.c.c.x, min(~20899u, var_1.a.b.c.x), var_1.a.c.c.x, 4294967295u));
    var var_4 = Struct_1(true, _wgslsmith_f_op_vec4_f32(func_2(firstLeadingBit(_wgslsmith_mod_i32(65841i, 13288i) >> (u_input.c % 32u)))), abs(vec3<i32>(_wgslsmith_sub_i32(-21076i, 1i), var_0.a.d, var_2.a.d)));
    let var_5 = Struct_4(var_1.a, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer((func_3(vec3<u32>(var_3.c.x, var_0.a.b.c.x, 0u), _wgslsmith_f_op_f32(sign(var_2.a.a)), select(vec3<bool>(true, var_0.a.c.b.x, false), vec3<bool>(true, false, false), var_2.a.b.b.x), -1110f) & ~_wgslsmith_dot_vec2_i32(var_2.a.b.a.zx, var_5.a.c.a.xy)) >> (~func_5(u_input.c, Struct_1(false, var_4.b, vec3<i32>(var_2.a.c.a.x, var_4.c.x, var_4.c.x)), var_4.c.xy, _wgslsmith_f_op_vec3_f32(-var_4.b.wxw)).c.x % 32u));
}

