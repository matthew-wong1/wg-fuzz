struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> f32 {
    global1 = u_input.a.x >> (~109936u % 32u);
    let var_0 = !(~u_input.b <= u_input.a.x);
    let var_1 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(reverseBits(-2147483647i), -39860i >> ((arg_1.b.x >> (13417u % 32u)) % 32u)), u_input.a.x), ~select(_wgslsmith_sub_i32(u_input.b & u_input.b, abs(-34023i)), -u_input.b, _wgslsmith_mult_u32(arg_1.b.x, u_input.d.x) <= reverseBits(578u)), select(_wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_1.b.x, u_input.d.x, arg_1.b.x, arg_1.b.x) | vec4<u32>(u_input.d.x, 1u, 49006u, arg_1.b.x)), vec4<u32>(~u_input.d.x, 2600u, u_input.d.x, select(16805u, u_input.c, var_0))), reverseBits(abs(vec4<u32>(28523u, 86604u, u_input.c, arg_1.b.x)) ^ (vec4<u32>(4294967295u, u_input.c, 0u, 101894u) & vec4<u32>(0u, 35453u, u_input.d.x, arg_1.b.x))), false), _wgslsmith_div_f32(534f, arg_0.a.a.x), !all(select(vec2<bool>(var_0, false), select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), true), select(vec2<bool>(false, var_0), vec2<bool>(true, false), var_0))));
    return arg_1.a.a.x;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: f32, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(-1022f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(vec4<f32>(arg_2, -752f, arg_0, 1712f))), Struct_3(Struct_2(vec4<f32>(arg_0, arg_0, arg_0, arg_0)), vec3<u32>(8226u, 0u, u_input.d.x))))), -253f, -1300f));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a)), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) >> (vec3<u32>(u_input.d.x, _wgslsmith_mult_u32(~u_input.c, 0u), (u_input.d.x << (u_input.c % 32u)) >> (~u_input.d.x % 32u)) % vec3<u32>(32u)));
    let var_2 = all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, any(vec2<bool>(true, false)))), select(vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false)), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    global1 = -_wgslsmith_mod_i32(2147483647i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b, 0i, arg_1), reverseBits(-arg_1)));
    let var_3 = vec4<u32>(u_input.c, _wgslsmith_mult_u32(~4294967295u, ~var_1.b.x), 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(~11713u, 61879u), _wgslsmith_add_vec2_u32(u_input.d << (vec2<u32>(38674u, var_1.b.x) % vec2<u32>(32u)), vec2<u32>(var_1.b.x, 2269u))));
    return arg_1;
}

fn func_1() -> vec4<f32> {
    global0 = -2147483647i;
    var var_0 = ~countOneBits(1i);
    global1 = _wgslsmith_sub_i32(-func_2(_wgslsmith_f_op_f32(-354f * -1213f), u_input.a.x, _wgslsmith_f_op_f32(449f - -387f), _wgslsmith_div_vec2_i32(u_input.a.zw, vec2<i32>(u_input.a.x, -28325i))), select(u_input.b, u_input.b, !any(vec3<bool>(false, false, false)))) | _wgslsmith_mod_i32(u_input.b, i32(-1i) * -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1180f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-564f * -403f)))), 709f)));
    global0 = u_input.b & -30299i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), _wgslsmith_f_op_f32(floor(-415f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1059f))), _wgslsmith_f_op_f32(f32(-1f) * -230f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global0 = _wgslsmith_mod_i32(~var_0, ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~u_input.a.xzy, -vec3<i32>(1i, 2147483647i, -50172i)), u_input.a.wyx));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-388f, 1235f)), 649f), -369f, _wgslsmith_f_op_f32(f32(-1f) * -780f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-475f)) * 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-384f, 2226f, 1064f, 1199f)) * vec4<f32>(-488f, -499f, 231f, 1418f)) + vec4<f32>(-1000f, _wgslsmith_div_f32(181f, -554f), _wgslsmith_f_op_f32(round(878f)), _wgslsmith_div_f32(-160f, 966f)))));
    global0 = 1i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1691f, var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1310f, 760f, var_1.x, 1154f)))))));
    var var_3 = !select(true, _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(round(var_2.a.x))) != var_1.x, false);
    var var_4 = func_2(var_2.a.x, 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(643f * 1990f) - 265f)))), _wgslsmith_div_vec2_i32(max(u_input.a.yw, _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(u_input.b, 12702i)), vec2<i32>(u_input.b, var_0) ^ u_input.a.wy)), u_input.a.zy));
    var var_5 = 1u;
    let var_6 = Struct_2(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(var_6.a.yy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_1.yz, vec2<f32>(451f, 903f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.a.x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_6.a.x), _wgslsmith_f_op_f32(var_6.a.x - var_2.a.x)))))));
}

