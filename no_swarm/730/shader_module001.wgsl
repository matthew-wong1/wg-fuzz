struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: Struct_3,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = Struct_4(Struct_3(Struct_2(Struct_1(any(vec3<bool>(false, arg_1.x, arg_1.x)), ~u_input.a.zw, ~vec3<i32>(-1071i, -9330i, 2147483647i), true, _wgslsmith_div_vec3_f32(vec3<f32>(901f, 287f, -182f), vec3<f32>(-1023f, 131f, 363f)))), _wgslsmith_mult_i32(arg_2.x, abs(_wgslsmith_dot_vec4_i32(u_input.a, arg_2))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1037f, 2263f, -438f))))), arg_0.x, 941f), -u_input.a, Struct_3(Struct_2(Struct_1(!arg_1.x, select(arg_2.wy, arg_2.yw, arg_1.x), _wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, arg_2.yzw), arg_2.x >= u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(838f, -1140f, -564f) + vec3<f32>(-1000f, 1890f, -1000f)))), arg_2.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-938f, -744f, -928f, -478f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, 157f, 2012f, -572f)) + vec4<f32>(-552f, 104f, 111f, -869f))), 67511u, _wgslsmith_f_op_f32(min(1f, 901f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1461f, _wgslsmith_f_op_f32(f32(-1f) * -608f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(107f, -364f))))));
    var var_1 = true;
    var_1 = arg_1.x;
    var var_2 = arg_1;
    let var_3 = var_0.a.a.a.e;
    return vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -462f), _wgslsmith_f_op_f32(max(var_0.a.c.x, -203f)))), var_0.a.e);
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1((arg_0.x || false) | true, firstTrailingBit(~reverseBits(vec2<i32>(u_input.b.x, u_input.b.x)) ^ abs(vec2<i32>(var_0, var_0))), -_wgslsmith_mod_vec3_i32(~vec3<i32>(36157i, u_input.b.x, var_0) & u_input.b, max(u_input.b, vec3<i32>(var_0, var_0, -31278i)) & (u_input.a.yxx & vec3<i32>(0i, u_input.b.x, 18314i))), false, _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.d.x, 1u, u_input.d.x), select(arg_0.xz, arg_0.zx, arg_0.xx), vec4<i32>(firstTrailingBit(reverseBits(1i)), _wgslsmith_dot_vec3_i32(u_input.b, -u_input.b), u_input.a.x, u_input.a.x))));
    let var_2 = vec2<bool>(arg_0.x, all(!vec2<bool>(arg_0.x, arg_0.x)) & any(vec2<bool>(var_1.d & false, arg_0.x)));
    var var_3 = Struct_2(var_1);
    var_3 = Struct_2(var_1);
    return Struct_3(Struct_2(var_3.a), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 724f, var_1.e.x, -224f)))), 4294967295u, var_3.a.e.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.d.x));
    var var_1 = Struct_4(func_2(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, arg_1.a.a.a.a, true), vec3<bool>(arg_1.a.a.a.d, arg_1.c.a.a.d, arg_1.c.a.a.a)), !vec3<bool>(arg_3.a.d, false, arg_3.a.a), vec3<bool>(true, true, !arg_3.a.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_1.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 86916i), ~arg_1.c.a.a.b)), max(u_input.a, u_input.a)), Struct_3(arg_1.c.a, arg_1.c.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.a.e.x, arg_1.a.c.x, 1088f, -220f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, -667f, -258f, arg_1.d.x) - arg_1.a.c))) - arg_1.a.c), 18652u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f + arg_3.a.e.x))))), arg_3.a.e.xx);
    var var_2 = min(arg_1.c.d, select(~(~(arg_1.a.d >> (arg_1.a.d % 32u))), _wgslsmith_add_u32(max(~2027u, ~var_1.c.d), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, var_1.c.d)), u_input.c.zw)), !var_1.a.a.a.a));
    var_2 = min(reverseBits(~41454u), ~4294967295u);
    var var_3 = arg_3.a;
    return arg_3;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-268f, -640f, _wgslsmith_f_op_f32(f32(-1f) * -180f), 958f)));
    let var_1 = false;
    let var_2 = func_4(vec2<bool>(false, (u_input.a.x >> (~u_input.d.x % 32u)) < 6632i), Struct_4(func_2(!vec3<bool>(var_1, var_1, var_1)), ~(~vec4<i32>(-43880i, u_input.a.x, u_input.b.x, u_input.b.x) ^ -vec4<i32>(u_input.a.x, u_input.b.x, 17877i, u_input.a.x)), Struct_3(func_2(!vec3<bool>(false, var_1, true)).a, _wgslsmith_div_i32(1i, -41102i << (0u % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2096f, -1715f, -133f, -244f) * vec4<f32>(var_0.x, var_0.x, var_0.x, 2216f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 283f, var_0.x, 818f), vec4<f32>(-337f, -183f, 996f, var_0.x))))), ~_wgslsmith_mult_u32(u_input.d.x, 50830u), _wgslsmith_f_op_f32(trunc(1173f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-435f + 216f), _wgslsmith_div_f32(var_0.x, 1000f)) - vec2<f32>(1066f, 885f))), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(abs(-2147483647i), u_input.b.x), _wgslsmith_clamp_i32(-14743i, -2147483647i, u_input.b.x) | _wgslsmith_div_i32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a.x), u_input.b.yy ^ u_input.b.zy), u_input.a.x << (max(u_input.c.x, 0u) % 32u)), u_input.a), Struct_2(Struct_1(!any(vec3<bool>(var_1, true, false)), firstTrailingBit(u_input.a.yz), -u_input.b, all(vec2<bool>(var_1, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -454f)))));
    let var_3 = countOneBits(u_input.b.x);
    var var_4 = vec4<bool>(any(select(!vec2<bool>(var_2.a.d, var_2.a.a), vec2<bool>(all(vec2<bool>(var_2.a.d, false)), any(vec3<bool>(var_1, false, false))), vec2<bool>(true, true))), any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_1, var_1), vec3<bool>(false, var_1, false)), select(vec3<bool>(var_2.a.a, var_2.a.d, var_1), vec3<bool>(var_1, var_2.a.d, true), vec3<bool>(false, true, var_1)), any(vec4<bool>(var_2.a.d, var_2.a.d, true, var_2.a.a)))) || var_1, false, var_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.e.x - -127f) * -623f)) + 233f) - -320f);
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = func_2(vec3<bool>(true, true, true));
    var var_1 = var_0.a.a.c.xy;
    let var_2 = var_0;
    var var_3 = vec3<bool>(true, !(var_0.e != arg_0), var_0.a.a.d);
    var var_4 = Struct_1(any(vec3<bool>(false, var_3.x, true)), ~var_0.a.a.c.zz, -var_0.a.a.c, false, _wgslsmith_f_op_vec3_f32(var_2.c.xxw * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1026f), -526f, _wgslsmith_f_op_f32(step(var_0.c.x, 201f))) + _wgslsmith_f_op_vec3_f32(func_2(vec3<bool>(var_3.x, var_3.x, false)).a.a.e - func_2(vec3<bool>(var_0.a.a.a, var_2.a.a.a, false)).a.a.e))));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), u_input.a, u_input.d.x, 4294967295u);
    var var_1 = func_2(!vec3<bool>(u_input.a.x > (-17615i & u_input.b.x), false, 2147483647i != select(-66981i, u_input.a.x, true))).a;
    var_1 = Struct_2(Struct_1(var_1.a.a && var_1.a.a, u_input.b.zy, -vec3<i32>(_wgslsmith_sub_i32(-17868i, var_1.a.b.x), max(1i, var_1.a.b.x), var_1.a.c.x), all(!vec4<bool>(var_1.a.d, true, false, var_1.a.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.e), var_1.a.e))));
    let var_2 = Struct_4(func_2(vec3<bool>(var_1.a.a, var_1.a.a, var_1.a.a)), vec4<i32>(var_1.a.c.x, u_input.b.x, _wgslsmith_mod_i32(-1i, -(~var_1.a.c.x)), var_1.a.c.x), Struct_3(func_4(vec2<bool>(!var_1.a.a, var_1.a.a && false), Struct_4(func_2(vec3<bool>(var_1.a.d, false, var_1.a.d)), vec4<i32>(-65881i, u_input.b.x, u_input.a.x, var_1.a.c.x), func_2(vec3<bool>(false, var_1.a.a, false)), vec2<f32>(var_1.a.e.x, -419f)), 1i, Struct_2(func_4(vec2<bool>(var_1.a.d, var_1.a.d), Struct_4(Struct_3(Struct_2(Struct_1(false, vec2<i32>(-17933i, 3550i), vec3<i32>(1i, u_input.a.x, 8238i), false, vec3<f32>(-753f, var_1.a.e.x, var_1.a.e.x))), u_input.a.x, vec4<f32>(417f, var_1.a.e.x, var_1.a.e.x, -1066f), 0u, var_1.a.e.x), u_input.a, Struct_3(Struct_2(Struct_1(false, vec2<i32>(19900i, u_input.a.x), var_1.a.c, false, var_1.a.e)), 0i, vec4<f32>(-620f, var_1.a.e.x, var_1.a.e.x, -1700f), 1101u, -1000f), var_1.a.e.xz), u_input.a.x, Struct_2(Struct_1(false, u_input.a.zw, vec3<i32>(-73846i, 53077i, u_input.b.x), var_1.a.d, var_1.a.e))).a)), ~u_input.a.x, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(var_1.a.e.x, -1445f), -761f, _wgslsmith_f_op_f32(-var_1.a.e.x), var_1.a.e.x))), 0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.e.x, var_1.a.e.x, var_1.a.d))), _wgslsmith_f_op_f32(-var_1.a.e.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a.e.xx), vec2<f32>(_wgslsmith_f_op_f32(var_1.a.e.x - _wgslsmith_div_f32(var_1.a.e.x, 326f)), 548f), !vec2<bool>(true, all(vec2<bool>(false, false))))));
    let var_3 = func_4(select(vec2<bool>(!any(vec4<bool>(var_2.a.a.a.a, false, true, var_2.c.a.a.d)), var_1.a.a), vec2<bool>(!(!var_2.a.a.a.a), var_1.a.a), true), var_2, var_1.a.c.x, func_4(!select(select(vec2<bool>(false, var_1.a.a), vec2<bool>(false, false), true), !vec2<bool>(var_1.a.d, var_2.c.a.a.d), select(false, var_1.a.d, var_2.c.a.a.a)), var_2, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.b, var_1.a.b.x, var_1.a.b.x), vec3<i32>(u_input.b.x, var_2.c.a.a.c.x, -16075i)), Struct_2(var_2.c.a.a))).a;
    let var_4 = ~(~min(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.c.d, 81414u, u_input.e, 0u), vec4<u32>(u_input.c.x, 4294967295u, var_0, 3755u))), _wgslsmith_add_vec4_u32(u_input.c, ~vec4<u32>(var_2.c.d, 4001u, 4294967295u, u_input.d.x))));
    var var_5 = var_2.c.a;
    let var_6 = func_4(select(!(!select(vec2<bool>(var_1.a.a, var_3.a), vec2<bool>(true, var_3.a), var_3.a)), select(!vec2<bool>(var_3.a, true), select(!vec2<bool>(true, var_3.a), select(vec2<bool>(var_2.a.a.a.a, var_5.a.a), vec2<bool>(var_2.a.a.a.a, var_5.a.d), true), vec2<bool>(var_2.c.a.a.d, var_3.a)), select(vec2<bool>(false, var_3.a), vec2<bool>(true, true), var_3.d)), vec2<bool>(true, true)), Struct_4(Struct_3(Struct_2(var_5.a), -var_5.a.b.x, var_2.c.c, _wgslsmith_div_u32(var_4.x, _wgslsmith_dot_vec4_u32(var_4, u_input.c)), var_1.a.e.x), var_2.b, func_2(select(select(vec3<bool>(false, var_3.d, false), vec3<bool>(var_1.a.a, var_3.a, var_3.a), vec3<bool>(var_3.a, var_1.a.d, true)), select(vec3<bool>(var_1.a.a, var_1.a.a, false), vec3<bool>(false, var_2.c.a.a.d, true), vec3<bool>(var_1.a.a, true, true)), true)), func_4(select(!vec2<bool>(var_5.a.a, true), vec2<bool>(var_1.a.a, false), var_5.a.d), var_2, -2147483647i, var_2.c.a).a.e.xx), var_2.b.x, Struct_2(var_1.a));
    let var_7 = _wgslsmith_f_op_f32(ceil(func_4(vec2<bool>(var_1.a.d, var_3.a), var_2, 0i, func_4(vec2<bool>(func_2(vec3<bool>(false, false, var_5.a.a)).a.a.d, all(vec3<bool>(true, false, var_3.d))), var_2, _wgslsmith_mod_i32(-2847i, 14990i), Struct_2(func_2(vec3<bool>(false, var_3.d, var_6.a.a)).a.a))).a.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d))))), u_input.c);
}

