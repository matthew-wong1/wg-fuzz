struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(-873f, 746f, vec3<u32>(7941u, 21735u, 21501u), 1073f);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    global2 = arg_1;
    global2 = arg_1;
    let var_0 = Struct_2(vec4<i32>(u_input.a, -21748i, 15299i, countOneBits(firstLeadingBit(63928i))) >> (abs(~abs(vec4<u32>(4294967295u, u_input.e, u_input.c.x, 59630u))) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1080f))), 1000f, _wgslsmith_f_op_f32(-1349f * -547f)), true, select(1u, min(4294967295u, _wgslsmith_dot_vec3_u32(global1.c, global2.c)) ^ (_wgslsmith_dot_vec2_u32(global2.c.yz, global2.c.yy) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, 105217u, global1.c.x, 60178u), vec4<u32>(u_input.e, global1.c.x, global2.c.x, global1.c.x))), !all(vec3<bool>(false, false, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.yz)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-102f, 1447f), var_0.b.yz)) + vec2<f32>(global2.a, 832f)), var_0.b.xz)), var_0.b.xy, vec2<bool>(all(!vec4<bool>(var_0.c, true, var_0.c, false)), var_0.c))));
    var var_2 = true;
    return vec2<bool>(true, false);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1062f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b * global2.a)))) * global2.d));
    var var_1 = select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(func_3(~u_input.d.x, Struct_1(-842f, 824f, global1.c, var_0)), vec2<bool>(true, true), -529f >= _wgslsmith_f_op_f32(-global1.b)), false);
    var var_2 = Struct_2(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -52744i, u_input.b.x, u_input.d.x), abs(vec4<i32>(u_input.b.x, u_input.a, -1i, u_input.a)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 901f, global2.b)))), _wgslsmith_f_op_f32(trunc(931f)) == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1040f, global1.d))))), global2.c.x);
    global0 = _wgslsmith_sub_i32(u_input.b.x, firstLeadingBit(var_2.a.x)) == ~26093i;
    let var_3 = firstLeadingBit(vec4<u32>(~0u, ~1925u, u_input.c.x, select(4294967295u, ~global2.c.x, true) ^ ~14748u));
    return Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -314f))), 167f, ~(u_input.c >> (((global1.c >> (global1.c % vec3<u32>(32u))) & global2.c) % vec3<u32>(32u))), var_0);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_4 {
    global0 = true;
    global2 = arg_1;
    return Struct_4(Struct_2(firstTrailingBit(abs(u_input.b)), _wgslsmith_div_vec3_f32(vec3<f32>(func_2().d, _wgslsmith_f_op_f32(min(-1000f, -611f)), _wgslsmith_f_op_f32(f32(-1f) * -213f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b, 1901f, global1.a), vec3<f32>(-363f, global2.d, 1322f), arg_0)))), all(vec4<bool>(arg_0, arg_0, true, true)), global1.c.x), _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(~global2.c, u_input.c), global2.c & ~arg_1.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.b.x, -u_input.a), u_input.d.zxx), _wgslsmith_f_op_f32(floor(1196f)) < -1467f, 1489u);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = func_4(true, func_2());
    var var_1 = Struct_4(func_4((_wgslsmith_clamp_i32(-15990i, -1i, u_input.d.x) >= -var_0.c) == (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.d.x), var_0.a.a.zy) < ~u_input.a), Struct_1(109f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.b + global2.b))), vec3<u32>(1u, 1u, 68190u), _wgslsmith_f_op_f32(ceil(-2153f)))).a, 62089u, -_wgslsmith_div_i32(firstLeadingBit(~var_0.a.a.x), i32(-1i) * -u_input.b.x), !all(select(select(vec2<bool>(arg_0.c, var_0.a.c), vec2<bool>(arg_0.c, var_0.a.c), arg_0.c), select(vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(true, var_0.a.c), arg_0.c), var_0.d)), 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(-func_2().b);
    global0 = !(func_3(var_1.a.a.x, Struct_1(-1316f, global2.a, vec3<u32>(38338u, 4294967295u, arg_0.d), -116f)).x || any(select(vec2<bool>(true, true), func_3(arg_0.a.x, Struct_1(global1.d, 1152f, vec3<u32>(958u, global1.c.x, 0u), -716f)), true)));
    global1 = func_2();
    return Struct_1(222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)) - global1.d)), abs(_wgslsmith_sub_vec3_u32(arg_1.zyz, global2.c << (~vec3<u32>(4294967295u, u_input.c.x, 12386u) % vec3<u32>(32u)))), 394f);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4) -> vec3<f32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-341f * arg_1.a.b.x), -1000f), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec3_f32(select(func_4(global1.c.x <= arg_0.c.x, func_2()).a.b, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.a.b - arg_1.a.b))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))), func_3(countOneBits(2147483647i), arg_0).x)), vec2<bool>(!any(select(vec3<bool>(false, true, arg_1.a.c), vec3<bool>(arg_1.d, true, false), true)), false), max(4294967295u, u_input.c.x), -(~vec3<i32>(u_input.d.x, arg_1.c ^ arg_1.c, -arg_1.a.a.x)), _wgslsmith_add_i32(u_input.a, _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_clamp_i32(u_input.a, 0i, 2147483647i), u_input.b.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(1608i, arg_1.c, arg_1.a.a.x, u_input.d.x), vec4<i32>(2147483647i, -2147483647i, -1i, u_input.b.x) ^ vec4<i32>(2871i, arg_1.a.a.x, u_input.d.x, -37090i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(-582f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1128f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global2.b));
    let var_3 = (func_4(!arg_1.a.c, func_1(arg_1.a, ~vec4<u32>(arg_0.c.x, global2.c.x, global1.c.x, arg_1.e))).a.b.x >= arg_1.a.b.x) | false;
    global0 = false;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), 648f), global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-818f, global2.d, 510f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.d, -259f, 900f))) + vec3<f32>(global2.b, -1219f, 676f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_5(func_1(Struct_2(u_input.b, vec3<f32>(global2.d, global1.d, -837f), true, 0u), vec4<u32>(global1.c.x, u_input.e, global2.c.x, global1.c.x)), func_4(true, Struct_1(global1.b, global2.d, global2.c, global1.a)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2202f, -271f, 682f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-204f, -1000f, -1338f))), func_3(31026i, Struct_1(global2.d, 1624f, vec3<u32>(global1.c.x, u_input.c.x, 1u), -1431f)).x)))))));
    var var_1 = !(reverseBits(-u_input.a) < ~(-(~u_input.b.x)));
    var_1 = true;
    var var_2 = Struct_4(func_4(!(true | any(vec4<bool>(true, true, false, true))), func_2()).a, _wgslsmith_add_u32(_wgslsmith_mult_u32(~global2.c.x, _wgslsmith_mult_u32(global2.c.x, 1u)) & 1u, func_4(!(u_input.b.x == u_input.a), func_1(Struct_2(vec4<i32>(u_input.d.x, 17024i, 4229i, 0i), vec3<f32>(-1491f, global2.d, global1.d), true, 7041u), ~vec4<u32>(global1.c.x, 4294967295u, 26951u, global2.c.x))).e), 0i, true, 19125u);
    let var_3 = var_2.a.a.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(min(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_mult_vec2_u32(global1.c.xy, vec2<u32>(648u, u_input.e))), func_1(Struct_2(u_input.d, vec3<f32>(-528f, global2.a, 1000f), var_2.a.c, 0u), vec4<u32>(var_2.e, u_input.e, var_2.e, global2.c.x)).c.zx >> (~global2.c.xz % vec2<u32>(32u)))), -var_2.a.a.x, global2.d, vec4<u32>(~(1u & global1.c.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(1u, u_input.e)), 69404u), ~2831u), global2.c.x, 1u));
}

