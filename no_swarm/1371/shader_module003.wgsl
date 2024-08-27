struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 24>;

var<private> global2: vec4<f32>;

var<private> global3: f32;

var<private> global4: f32 = 2462f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.yx), _wgslsmith_f_op_vec2_f32(global2.xy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, global2.x)) - arg_1.b.zx)))));
    var var_1 = ~_wgslsmith_mult_u32(~select(u_input.b.x, firstTrailingBit(1u), true), u_input.b.x);
    return 945f;
}

fn func_2() -> vec4<i32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(131146u, 24u)])))) + global2.x));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(8307u, u_input.b.x), 24u)];
    var var_1 = 1544f;
    var var_2 = -4255i;
    let var_3 = global1[_wgslsmith_index_u32(0u, 24u)];
    return -vec4<i32>(_wgslsmith_mod_i32(max(var_3.a.x, 0i), _wgslsmith_div_i32(var_0.a.x, 0i)) >> (_wgslsmith_mult_u32(countOneBits(u_input.b.x), u_input.b.x >> (10527u % 32u)) % 32u), select(2234i, ~2147483647i, true), 2147483647i, _wgslsmith_div_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, 0i), vec3<i32>(0i, u_input.a, var_0.a.x))), _wgslsmith_add_i32(var_0.a.x, ~1i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = -959f;
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), 616f, global2.x, 1033f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(291f * -619f), arg_2.x, _wgslsmith_div_f32(-613f, -156f), global2.x) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(483f, -1400f, arg_2.x, global2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, global2.x, arg_2.x, arg_2.x), vec4<f32>(arg_2.x, arg_2.x, -281f, arg_2.x), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, 641f, arg_2.x, -206f))))), true));
    var var_1 = Struct_1(firstLeadingBit(arg_3.zy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-3133f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global2.x, global2.x), global2.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_2.x, 2196f, global2.x) + vec4<f32>(arg_2.x, -231f, 568f, -1000f))))), true);
    global0 = var_1.c;
    global3 = -1000f;
    return Struct_1(vec2<i32>(_wgslsmith_mult_i32(9987i, -min(u_input.c, -18410i)), arg_1), _wgslsmith_f_op_vec4_f32(var_1.b - var_1.b), var_1.c);
}

fn func_1() -> vec2<bool> {
    let var_0 = vec3<i32>(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a >> (u_input.b.x % 32u), u_input.c, ~u_input.a), select(abs(vec3<i32>(-2147483647i, u_input.d, -38314i)), vec3<i32>(-1i, 0i, u_input.a), vec3<bool>(true, false, true)))), -_wgslsmith_sub_i32(-28739i, _wgslsmith_sub_i32(u_input.d, ~u_input.d)), u_input.d);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-756f, _wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_div_f32(global2.x, 423f), -771f))));
    let var_1 = func_4(_wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.b.x, 30522u, 0u) | vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(0u, 48557u, 1u)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)))), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.xz))), firstTrailingBit(-func_2()));
    let var_2 = global1[_wgslsmith_index_u32(56176u ^ _wgslsmith_dot_vec4_u32(((vec4<u32>(1711u, u_input.b.x, 0u, u_input.b.x) & vec4<u32>(u_input.b.x, 5791u, 1u, u_input.b.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 43770u, u_input.b.x, 4294967295u), vec4<u32>(4294967295u, 57956u, 7765u, 1u)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, 0u, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x) | _wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x, abs(4294967295u) & _wgslsmith_mult_u32(u_input.b.x, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(61655u, 2284u), ~u_input.b))), 24u)];
    return select(!(!vec2<bool>(var_2.c, any(vec4<bool>(true, true, false, var_2.c)))), !vec2<bool>(var_1.c, (var_2.c || var_1.c) || (var_1.c != var_2.c)), var_2.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = ~firstTrailingBit(32190u | ~(u_input.b.x & u_input.b.x));
    var_0 = abs(~4294967295u);
    return reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(5929i, arg_0.x), -u_input.c), vec2<i32>(func_4(vec3<u32>(u_input.b.x, u_input.b.x, 41828u), u_input.c, global2.ww, vec4<i32>(2147483647i, -1i, -1i, arg_0.x)).a.x, -1i), arg_0) | vec2<i32>(_wgslsmith_clamp_i32(-4931i, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.d), _wgslsmith_mod_i32(-1i, -2147483647i)), 1i ^ ~arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<i32>(select(_wgslsmith_mod_i32(u_input.d, u_input.d), ~firstTrailingBit(2147483647i), any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), _wgslsmith_div_i32(u_input.c, -2147483647i | u_input.c) >> (27988u % 32u)), all(select(func_1(), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, false))), false)), _wgslsmith_f_op_f32(trunc(func_4(vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 116059u), ~u_input.b.x), ~1i, vec2<f32>(1882f, _wgslsmith_div_f32(-1694f, -477f)), vec4<i32>(-1i, i32(-1i) * -524i, _wgslsmith_dot_vec4_i32(vec4<i32>(-71217i, u_input.a, u_input.c, u_input.c), vec4<i32>(u_input.a, u_input.d, u_input.d, u_input.d)), u_input.a)).b.x)));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, ~(~(~vec2<u32>(u_input.b.x, u_input.b.x)))), 24u)];
    let var_2 = vec3<bool>(var_1.c, true, !(0u == u_input.b.x));
    let var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 24u)];
    let var_4 = vec2<bool>(-2147483647i >= abs(min(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, var_0.x, 15628i), vec3<i32>(45911i, 11477i, var_1.a.x)), func_5(vec2<i32>(var_3.a.x, 0i), var_2.x, -493f).x)), !(!var_2.x));
    global0 = true;
    var var_5 = vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~57190u), u_input.b.x, firstLeadingBit(u_input.b.x), 4294967295u) >> (vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 4294967295u), ~u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, ~u_input.b.x, u_input.a);
}

