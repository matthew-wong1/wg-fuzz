struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7>;

var<private> global1: i32;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: i32 = 0i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = ~(~(abs(vec2<u32>(u_input.b, u_input.b)) ^ vec2<u32>(min(u_input.d, u_input.e), 3628u)));
    var var_1 = Struct_5(Struct_3(Struct_2(Struct_1(global2.x, _wgslsmith_div_vec2_u32(var_0, vec2<u32>(u_input.d, var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.x, 1186f), vec2<f32>(arg_1.x, arg_0.x)))), ~_wgslsmith_add_u32(~1u, ~u_input.b), Struct_1(all(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, true), global2.x)), ~(~vec2<u32>(var_0.x, 0u)))));
    var var_2 = Struct_4(_wgslsmith_div_vec2_f32(arg_0.zx, vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(var_1.a.b.x, _wgslsmith_f_op_f32(124f * 275f)))));
    var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(158f, -1640f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-812f)), _wgslsmith_f_op_f32(select(arg_0.x, -456f, false)), all(vec4<bool>(true, true, false, true))))) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1125f, var_1.a.b.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(-799f, -269f), vec2<f32>(-298f, -1499f)))))));
    let var_3 = 1000f;
    return _wgslsmith_clamp_vec3_i32(-reverseBits(u_input.a.zzw), u_input.a.xxy, vec3<i32>(_wgslsmith_div_i32(1i, 4992i), 0i, _wgslsmith_sub_i32(u_input.a.x, ~0i))) << (reverseBits(_wgslsmith_mod_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, 18689u, 0u)), ~select(vec3<u32>(72385u, var_1.a.c, u_input.d), vec3<u32>(0u, 4294967295u, 0u), vec3<bool>(var_1.a.d.a, global2.x, true)))) % vec3<u32>(32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec3<bool>) -> u32 {
    let var_0 = firstTrailingBit(-u_input.c) & _wgslsmith_mod_vec2_i32(firstTrailingBit(u_input.c >> (~vec2<u32>(arg_1.a.d.b.x, arg_0.x) % vec2<u32>(32u))), ~(~u_input.a.zy) >> (vec2<u32>(~arg_0.x, arg_0.x) % vec2<u32>(32u)));
    global1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(u_input.a.x), i32(-1i) * -2147483647i, reverseBits(-2147483647i)), u_input.a.xxx), ~u_input.a.x);
    let var_1 = Struct_1(!(!select(arg_2.x, true, arg_2.x) | global2.x), ~countOneBits(~vec2<u32>(4294967295u, 33678u)));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, arg_1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.b.x)) * _wgslsmith_f_op_f32(-arg_1.a.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x), vec4<f32>(-620f, arg_1.a.b.x, -1276f, arg_1.a.b.x)))))));
    global0 = array<vec4<i32>, 7>();
    return max(~firstLeadingBit(_wgslsmith_mod_u32(u_input.d, arg_0.x) ^ arg_1.a.d.b.x), ~arg_1.a.c);
}

fn func_1() -> Struct_1 {
    global3 = u_input.c.x;
    var var_0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.a.ww << (~vec2<u32>(21943u, u_input.d) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(-vec2<i32>(48029i, u_input.c.x), abs(u_input.a.yw))), vec2<i32>(-u_input.a.x, _wgslsmith_add_i32(~firstLeadingBit(u_input.c.x), u_input.a.x)));
    global0 = array<vec4<i32>, 7>();
    var var_1 = _wgslsmith_sub_u32(13509u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d ^ u_input.d, func_2(vec3<u32>(u_input.e, u_input.d, u_input.e), Struct_5(Struct_3(Struct_2(Struct_1(global2.x, vec2<u32>(u_input.d, 36403u))), vec2<f32>(-1112f, 1482f), 1u, Struct_1(false, vec2<u32>(4294967295u, u_input.b)))), vec3<bool>(global2.x, true, false))), 7118u | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(29350u, 0u))), 28352u));
    let var_2 = Struct_3(Struct_2(Struct_1(global2.x, abs(vec2<u32>(u_input.e, 19179u)) | select(vec2<u32>(1u, 0u), vec2<u32>(u_input.e, u_input.b), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(1002f, -1000f, global2.x)), -1000f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1888f), _wgslsmith_f_op_f32(select(2368f, -1209f, false))))), vec2<f32>(1f, 1f)), ~u_input.e, Struct_1(!all(vec2<bool>(global2.x, global2.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)), ~vec2<u32>(59534u, u_input.e)) | vec2<u32>(46932u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 24368u, 0u, 1u), vec4<u32>(1595u, 0u, u_input.e, 30705u)))));
    return Struct_1(true, _wgslsmith_mult_vec2_u32(vec2<u32>(59569u, var_2.d.b.x), select(vec2<u32>(u_input.d, u_input.d), vec2<u32>(7492u, 34597u), !vec2<bool>(var_2.d.a, var_2.a.a.a)) & vec2<u32>(abs(var_2.c), ~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = u_input.a.x;
    var var_1 = Struct_3(Struct_2(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(251f, -250f) * vec2<f32>(-171f, 760f)))))), firstLeadingBit(var_0.b.x), func_1());
    var_1 = Struct_3(Struct_2(func_1()), var_1.b, ~(~(~4294967295u)), func_1());
    var var_2 = -vec3<i32>(-2147483647i, _wgslsmith_div_i32(abs(u_input.c.x) >> (_wgslsmith_add_u32(u_input.d, var_1.a.a.b.x) % 32u), min(abs(u_input.a.x), _wgslsmith_div_i32(u_input.c.x, u_input.c.x))), -2147483647i);
    let var_3 = global2.x;
    global0 = array<vec4<i32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(335f, _wgslsmith_f_op_f32(f32(-1f) * -1429f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-621f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.b.x), -920f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1692f)), -2008f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_1.b.x, -1000f) - vec3<f32>(-139f, -688f, var_1.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-1441f, var_1.b.x, 1162f), _wgslsmith_div_vec3_f32(vec3<f32>(2059f, var_1.b.x, 655f), vec3<f32>(1117f, var_1.b.x, var_1.b.x))))), select(select(!vec3<bool>(false, true, global2.x), select(vec3<bool>(false, false, var_1.a.a.a), vec3<bool>(global2.x, true, false), true), select(vec3<bool>(var_1.a.a.a, false, var_0.a), vec3<bool>(var_1.a.a.a, var_0.a, var_1.a.a.a), vec3<bool>(global2.x, var_0.a, var_0.a))), vec3<bool>(any(vec4<bool>(false, false, false, var_0.a)), true | var_1.a.a.a, !var_1.a.a.a), vec3<bool>(var_1.d.a, select(global2.x, var_1.a.a.a, var_0.a), true)))));
}

