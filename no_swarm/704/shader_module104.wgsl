struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_0.d.yxy;
    global0 = vec4<bool>(global0.x, false && !arg_0.c.d, global0.x && !(!all(global0.zy)), global0.x);
    let var_1 = Struct_5(~abs(-59422i) | -(-arg_0.a.x | abs(arg_0.d.x)));
    var var_2 = arg_1.x;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e.x) - _wgslsmith_f_op_f32(-400f * -857f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.a.x + arg_0.c.b))))), -239f);
    return vec4<bool>(global0.x != false, all(global0.wz), global0.x || any(vec4<bool>(!global0.x, true, -47673i >= var_1.a, all(global0.xxz))), u_input.a >= (u_input.a << (select(~6425u, ~4294967295u, any(vec3<bool>(true, global0.x, false))) % 32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(664f * arg_3.x), -1216f)), arg_3.x));
    var var_1 = Struct_2(arg_3, -1i, firstTrailingBit(~(vec4<u32>(arg_0.x, 20522u, arg_0.x, arg_0.x) >> ((vec4<u32>(0u, 1u, arg_0.x, arg_0.x) & vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u)) % vec4<u32>(32u)))), -vec3<i32>(_wgslsmith_mult_i32(-24758i << (1u % 32u), _wgslsmith_add_i32(u_input.a, -35783i)), u_input.b, u_input.b));
    let var_2 = vec3<bool>(!all(!(!global0.yy)), all(select(vec4<bool>(true, true, any(vec2<bool>(true, false)), arg_0.x <= arg_0.x), func_3(Struct_3(var_1.d.yy, global0.x, Struct_1(vec2<f32>(var_1.a.x, var_1.a.x), -936f, vec4<u32>(var_1.c.x, 4294967295u, 0u, 1u), arg_2.x), vec4<i32>(var_1.b, u_input.b, arg_1.a, 2147483647i), vec2<f32>(-1268f, var_1.a.x)), arg_0.xx >> (arg_0.yx % vec2<u32>(32u))), true)), all(arg_2));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -2415f)))), firstLeadingBit(0i), max(~var_1.c, var_1.c) ^ ~(~(~vec4<u32>(var_1.c.x, var_1.c.x, 70720u, var_1.c.x))), var_1.d);
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, var_1.a.x) + _wgslsmith_div_f32(arg_3.x, -511f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(f32(-1f) * -1401f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1675f))) * _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(232f * _wgslsmith_div_f32(-1241f, var_1.a.x)))), 2147483647i, vec4<u32>(_wgslsmith_dot_vec2_u32(max(abs(arg_0.zx), max(var_1.c.xx, arg_0.zz)), vec2<u32>(select(var_1.c.x, var_1.c.x, true), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c.x, arg_0.x, var_1.c.x, var_1.c.x), vec4<u32>(4294967295u, var_1.c.x, 4294967295u, var_1.c.x)))), countOneBits(var_1.c.x << (arg_0.x % 32u)) ^ (~var_1.c.x ^ countOneBits(11650u)), _wgslsmith_add_u32(arg_0.x, 47498u), _wgslsmith_clamp_u32(1u, arg_0.x, _wgslsmith_mod_u32(1773u, _wgslsmith_mod_u32(1u, 34357u)))), vec3<i32>(var_1.d.x, -arg_1.a | _wgslsmith_dot_vec2_i32(var_1.d.xz | var_1.d.zz, vec2<i32>(var_1.b, var_1.b)), 28141i));
    return vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), 1208f, _wgslsmith_f_op_f32(f32(-1f) * -408f));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> vec4<u32> {
    global1 = _wgslsmith_div_u32(arg_1, 28153u);
    let var_0 = global0.yyw;
    global0 = vec4<bool>(var_0.x && any(vec3<bool>(false, true, var_0.x)), all(vec3<bool>(any(vec2<bool>(false, false)), var_0.x, any(select(vec4<bool>(var_0.x, var_0.x, false, global0.x), vec4<bool>(global0.x, var_0.x, false, global0.x), global0.x)))), false, all(vec4<bool>(all(global0.wxx), select(global0.x && var_0.x, true, var_0.x), true, var_0.x)));
    var var_1 = Struct_4(arg_0.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_4(select(vec3<u32>(arg_1, arg_1, 26028u), abs(vec3<u32>(1u, arg_1, arg_1)), !var_0.x), Struct_4(~u_input.a), !func_3(Struct_3(vec2<i32>(21648i, u_input.a), false, Struct_1(vec2<f32>(-1431f, 911f), 176f, vec4<u32>(68222u, 21895u, arg_1, arg_1), var_0.x), vec4<i32>(43198i, 1i, arg_0.a, 2147483647i), vec2<f32>(808f, 1024f)), vec2<u32>(arg_1, arg_1)), vec4<f32>(_wgslsmith_f_op_f32(max(642f, -607f)), 506f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-1251f, -618f))))))));
    return countOneBits(~vec4<u32>(0u, _wgslsmith_add_u32(~76649u, arg_1), arg_1, arg_1));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -252f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(279f * _wgslsmith_div_f32(238f, -1725f)) - -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-415f, -1182f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(503f)), _wgslsmith_f_op_f32(abs(929f)))))), func_2(Struct_5(u_input.b), 14024u) ^ _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(17284u, 0u, 0u, 15758u), vec4<u32>(56718u, 24301u, 36381u, 2074u), vec4<bool>(global0.x, true, global0.x, true)), reverseBits(vec4<u32>(44962u, 0u, 65641u, 36340u))), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(select(-853f, -431f, true)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(864f + -513f) * 542f))));
    var var_1 = var_0.c.x;
    global0 = select(!vec4<bool>(var_0.d, ~1i != u_input.b, select(true, global0.x, var_0.d) | true, true), !vec4<bool>(global0.x, global0.x, false, !global0.x), false);
    return var_0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<f32>(530f, _wgslsmith_f_op_f32(sign(1180f)), _wgslsmith_f_op_f32(select(-669f, 1947f, global0.x)), -1000f), ~(~(-33656i)), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), countOneBits(vec4<u32>(55689u, 0u, 1u, 56478u)), ~vec4<u32>(1u, 71682u, 1u, 4294967295u)), vec4<u32>(1u, 49864u, ~0u, min(3339u, 74907u))) & vec4<u32>(2764u, func_1() & 63975u, 23692u, ~(~22250u)), firstTrailingBit(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, -85035i), vec3<i32>(u_input.b, u_input.b, -1i)), vec3<i32>(11351i, u_input.b, u_input.a)) & _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), ~vec3<i32>(43413i, -70396i, 2147483647i))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(634f, var_0.a.x, 400f, var_0.a.x) + vec4<f32>(-767f, var_0.a.x, var_0.a.x, var_0.a.x))) + vec4<f32>(1806f, 825f, 1012f, var_0.a.x)), u_input.b, func_2(Struct_5(firstTrailingBit(var_0.d.x & u_input.a)), ~0u), countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, var_0.d.x) & vec3<i32>(u_input.a, u_input.a, var_0.d.x), -vec3<i32>(11175i, u_input.a, var_0.b))) << (var_0.c.yzx % vec3<u32>(32u)));
    let var_1 = select(func_2(Struct_5(_wgslsmith_dot_vec3_i32(var_0.d, ~vec3<i32>(-16033i, -2147483647i, u_input.b))), 4294967295u).zx, vec2<u32>(~reverseBits(1u), ~var_0.c.x), var_0.c.x < var_0.c.x);
    let var_2 = ~var_0.c;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(901f, -1876f))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.a.zz, vec2<f32>(1821f, -545f)), _wgslsmith_f_op_vec2_f32(-var_0.a.zx)), var_0.a.wx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1157f) + var_0.a.x)), vec4<u32>(55635u, max(var_1.x, ~abs(var_0.c.x)), abs(var_2.x), var_0.c.x), all(global0.wz));
    var var_4 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(max(0u, var_1.x) | func_1()), -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.d, vec3<i32>(1i, 1i, 1i)), var_0.d));
}

