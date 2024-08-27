struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(14696u, 0u, 0u, 0u);

var<private> global2: bool = false;

var<private> global3: Struct_1;

var<private> global4: u32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec2<bool> {
    global4 = global3.c.x;
    global3 = Struct_1(global3.a, -1i, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 1u, _wgslsmith_div_u32(9255u, 1u)), ~(~(~global3.c)), global1.yzw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1357f, -211f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-global3.d.x))))), all(select(vec2<bool>(true, all(vec4<bool>(global3.e, true, global3.e, true))), select(!vec2<bool>(false, global3.e), !vec2<bool>(global3.e, global3.e), select(vec2<bool>(global3.e, true), vec2<bool>(global3.e, global3.e), vec2<bool>(global3.e, false))), any(vec3<bool>(true, true, global3.e)))));
    global3 = Struct_1(abs(_wgslsmith_mod_vec2_i32(global3.a, ~vec2<i32>(global3.a.x, global3.b))) >> (global1.yx % vec2<u32>(32u)), _wgslsmith_dot_vec3_i32(min(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x) >> ((global1.ywx << (global1.wxx % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.wwx, vec3<i32>(-2147483647i, u_input.b.x, 2147483647i)), -u_input.c.zyy, _wgslsmith_mult_vec3_i32(vec3<i32>(global3.b, -2147483647i, global3.a.x), vec3<i32>(1i, global3.b, 2147483647i)))), u_input.b.wwx), global3.c, arg_1, global3.e);
    let var_0 = -1551f;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), var_0));
    return !select(!select(vec2<bool>(true, true), !vec2<bool>(global3.e, global3.e), global3.e), vec2<bool>((global3.a.x >= global3.a.x) & global3.e, global3.e), select(true, !(global3.e && global3.e), false));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    global2 = all(vec3<bool>(false | (arg_0.c.x < (arg_0.c.x << (4294967295u % 32u))), any(vec2<bool>(any(vec4<bool>(false, global3.e, arg_0.e, false)), global3.e)), false));
    global1 = ~((vec4<u32>(firstTrailingBit(arg_1), 5089u & arg_0.c.x, global3.c.x, arg_0.c.x) << ((reverseBits(vec4<u32>(global1.x, 4294967295u, 4292u, u_input.a.x)) ^ vec4<u32>(1u, 4294967295u, 0u, 1u)) % vec4<u32>(32u))) | reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(global3.c.x, 47207u, 68580u, arg_1), ~vec4<u32>(arg_1, arg_1, 4294967295u, 56318u))));
    let var_0 = -24264i;
    var var_1 = _wgslsmith_dot_vec2_u32(~(~(~select(u_input.a, vec2<u32>(arg_1, arg_0.c.x), false))), _wgslsmith_sub_vec2_u32(select(vec2<u32>(global3.c.x ^ global1.x, _wgslsmith_div_u32(u_input.a.x, global3.c.x)), u_input.a, select(vec2<bool>(arg_0.e, global3.e), func_3(0u, arg_0.d), global3.e)), global1.ww & vec2<u32>(_wgslsmith_add_u32(global1.x, 0u), global3.c.x << (u_input.a.x % 32u))));
    var var_2 = select(vec4<bool>(any(!vec4<bool>(false, arg_0.e, true, arg_0.e)), all(select(select(vec2<bool>(false, false), vec2<bool>(global3.e, false), false), vec2<bool>(true, true), global3.e)), !arg_0.e, (arg_0.e == (arg_0.a.x <= 20046i)) | (!global3.e & (4294967295u != u_input.a.x))), select(vec4<bool>(arg_0.e != true, false & all(vec4<bool>(true, global3.e, true, arg_0.e)), !(false | global3.e), true), vec4<bool>(true, true, true, arg_0.e), vec4<bool>(false, global3.e, !global3.e & false, arg_0.e)), global3.e);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global3.d.x)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1057f, -1158f) - _wgslsmith_f_op_f32(-arg_0.d.x))), -617f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.d.x))) - _wgslsmith_f_op_f32(-global3.d.x)), global3.d.x);
}

fn func_1() -> u32 {
    var var_0 = global3.a;
    global3 = Struct_1(-u_input.b.yz | ~u_input.b.wx, 16089i, global1.yyz, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.d.x, -728f)) + _wgslsmith_f_op_f32(floor(215f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(797f, -1449f)))), global3.d.x, -504f), _wgslsmith_f_op_vec4_f32(func_2(Struct_1(_wgslsmith_mult_vec2_i32(global3.a, global3.a), _wgslsmith_mod_i32(-68590i, -19117i), vec3<u32>(u_input.a.x, global3.c.x, global1.x), global3.d, global3.e & false), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, 33049u), abs(1u)))), !(!(!vec4<bool>(global3.e, global3.e, global3.e, global3.e))))), false);
    global3 = Struct_1(~abs(-max(u_input.b.xy, vec2<i32>(21443i, 38687i))), 1i, abs(vec3<u32>(_wgslsmith_div_u32(32010u, global3.c.x), 38762u, u_input.a.x)), global3.d, any(!(!select(vec2<bool>(true, global3.e), vec2<bool>(global3.e, false), vec2<bool>(false, true)))));
    var var_1 = Struct_1(_wgslsmith_div_vec2_i32(min(reverseBits(vec2<i32>(u_input.c.x, -39347i)), global3.a & vec2<i32>(-2147483647i, u_input.c.x)), ~global3.a) << (select(u_input.a, global1.wz, true & (u_input.b.x < u_input.b.x)) % vec2<u32>(32u)), ~abs(var_0.x), global1.yzw, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(vec2<i32>(-10230i, 0i), 1i, vec3<u32>(59606u, 0u, global3.c.x), global3.d, global3.e), 14819u)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1996f, global3.d.x, global3.d.x, global3.d.x))))), global3.e);
    global4 = countOneBits(4294967295u);
    return _wgslsmith_sub_u32(~((_wgslsmith_mult_u32(var_1.c.x, 1u) ^ (global3.c.x ^ global3.c.x)) | _wgslsmith_div_u32(firstTrailingBit(32915u), _wgslsmith_add_u32(var_1.c.x, var_1.c.x))), global3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(16951u, global1.x), 9931u & func_1()), (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global1.x, 4294967295u, u_input.a.x), vec4<u32>(global3.c.x, global3.c.x, 61850u, u_input.a.x)) ^ 69955u) & 1u, 23833u, _wgslsmith_add_u32(firstLeadingBit(global3.c.x) << (global3.c.x % 32u), 63761u));
    global1 = ~firstTrailingBit((min(vec4<u32>(2570u, global1.x, 75092u, global1.x), vec4<u32>(4266u, 4294967295u, 56755u, u_input.a.x)) ^ (vec4<u32>(global3.c.x, global1.x, 40132u, global1.x) & vec4<u32>(global1.x, 4294967295u, u_input.a.x, global3.c.x))) ^ select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 44900u, 121285u), vec4<u32>(0u, 1u, global3.c.x, 13136u)), vec4<u32>(0u, global3.c.x, u_input.a.x, 35244u) | vec4<u32>(33689u, 1u, 109024u, u_input.a.x), vec4<bool>(global3.e, true, global3.e, true)));
    let var_0 = vec2<bool>(global3.e, false);
    global4 = abs(_wgslsmith_div_u32(u_input.a.x >> (global1.x % 32u), u_input.a.x));
    let var_1 = !func_3(select(global1.x, ~countOneBits(global1.x), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.d) + _wgslsmith_f_op_vec4_f32(-global3.d)));
    global3 = Struct_1(vec2<i32>(-abs(-1i), -2147483647i), u_input.c.x, vec3<u32>(~1u, 0u, global1.x), global3.d, global3.e);
    global0 = 1609f;
    global1 = vec4<u32>(global1.x, u_input.a.x, _wgslsmith_div_u32(~_wgslsmith_sub_u32(select(u_input.a.x, global1.x, true), _wgslsmith_mult_u32(18397u, global1.x)), ~(~0u) ^ u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 0u, global1.x, 4294967295u), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3.c.x, global1.x, 2077u, global1.x), vec4<u32>(global1.x, u_input.a.x, 0u, 1u)), ~vec4<u32>(20216u, 34153u, 0u, 4294967295u))) >> (~7702u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

