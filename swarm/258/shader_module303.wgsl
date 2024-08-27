struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: bool = true;

var<private> global2: Struct_5;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global1 = true;
    global1 = !(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.e, global2.d.a.d.x), u_input.e, 1u), 18u)] || !(global0[_wgslsmith_index_u32(4294967295u, 18u)] & global0[_wgslsmith_index_u32(u_input.a, 18u)]));
    var var_0 = ~_wgslsmith_mod_u32(u_input.b.x, 31922u);
    var_0 = 4294967295u;
    let var_1 = Struct_1(global2.b.d.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.b.a.c.x, global2.c))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.d.d.b.x, -929f, global2.d.b.d.c.x))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.b.a.b.x, 552f, -1410f) - global2.b.d.c))))), ~max(global2.d.d.d, global2.d.d.d), ~global2.d.d.e);
    return _wgslsmith_dot_vec4_i32(-(countOneBits(vec4<i32>(-1i, -2147483647i, global2.b.c, var_1.a.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(25567i, 2147483647i, global2.b.a.a.x, -21555i), vec4<i32>(global2.b.d.a.x, var_1.a.x, -43490i, -44417i) & vec4<i32>(3453i, var_1.a.x, -19398i, var_1.a.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, global2.b.a.a.x, var_1.a.x) ^ vec3<i32>(global2.d.b.c, var_1.a.x, global2.a)), vec3<i32>(global2.a | var_1.a.x, 50205i, firstLeadingBit(0i))), ~(~var_1.a.x), -(~(14472i << (u_input.c.x % 32u))), 5803i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_5) -> bool {
    global2 = arg_1;
    var var_0 = Struct_4(vec3<u32>(arg_0.x, global2.b.a.d.x, ~reverseBits(global2.d.d.e)) >> ((_wgslsmith_mult_vec3_u32(u_input.d.zzw, vec3<u32>(arg_0.x, 4294967295u, global2.d.b.a.d.x)) | ~global2.b.d.d.xzz) % vec3<u32>(32u)), vec4<u32>(~1u, ~(~1u), ~_wgslsmith_add_u32(0u, abs(u_input.a)), 4294967295u), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(20484u, u_input.b.x), abs(arg_1.d.b.a.d.x), u_input.d.x), vec3<u32>(arg_1.b.d.d.x, countOneBits(26631u), _wgslsmith_add_u32(u_input.b.x, 4294967295u)), global2.b.a.d.wxx), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.x, global2.d.a.d.x), _wgslsmith_add_u32(u_input.b.x, 22439u), 0u), arg_1.d.b.d.d.yzx)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2676f, 1842f, arg_1.b.b, global2.c)) * global2.b.a.c), global2.d);
    global2 = arg_1;
    let var_1 = Struct_5(~func_3(), Struct_2(Struct_1(global2.b.a.a | min(vec2<i32>(0i, -650i), var_0.e.b.d.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.d.wxx))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d.b.d.c.x, -1411f, -1000f, 321f), var_0.e.b.a.c) - global2.d.a.c), ~(~vec4<u32>(arg_1.d.a.e, global2.d.d.e, u_input.d.x, arg_0.x)), select(1u & arg_0.x, _wgslsmith_mult_u32(arg_0.x, global2.d.d.d.x), true)), 248f, global2.b.a.a.x, Struct_1(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(27239i, -3656i)), select(vec2<i32>(global2.a, 1i), vec2<i32>(-8596i, global2.a), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 18u)], true))), arg_1.b.a.c.xwy, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_div_f32(-680f, -158f), 239f, _wgslsmith_f_op_f32(-arg_1.b.a.b.x)), vec4<u32>(arg_1.b.d.e, u_input.d.x, ~arg_0.x, ~u_input.a), _wgslsmith_clamp_u32(abs(global2.b.d.d.x), 1u, abs(var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x - _wgslsmith_f_op_f32(-var_0.e.a.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.b.d.b.x)))))), global2.d, ~30063i);
    let var_2 = firstLeadingBit(~_wgslsmith_clamp_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e, arg_1.b.d.a.x, 0i, arg_1.a), vec4<i32>(2147483647i, 1283i, var_0.e.d.a.x, -1i))), _wgslsmith_mult_vec4_i32(max(vec4<i32>(var_1.a, arg_1.b.a.a.x, global2.e, var_1.d.c.x), vec4<i32>(-51051i, arg_1.a, 0i, arg_1.a)), -vec4<i32>(global2.e, arg_1.a, global2.b.d.a.x, var_0.e.b.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-6776i, -33510i, 13778i, 2147483647i) << (var_0.b % vec4<u32>(32u)), reverseBits(vec4<i32>(26430i, 0i, global2.a, -1i)))));
    return (_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.b.a.a.x, var_0.e.d.a.x), (global2.e >> (u_input.d.x % 32u)) >> ((var_1.d.b.d.e >> (arg_0.x % 32u)) % 32u)) << ((_wgslsmith_dot_vec2_u32(u_input.c.yz, arg_0) & ~u_input.e) % 32u)) < arg_1.e;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_2 {
    let var_0 = global2.b;
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(arg_0.a.x, -1i, global2.d.c.x, 2147483647i)), vec4<i32>(~var_0.c, _wgslsmith_mult_i32(-1i, 5486i), i32(-1i) * -1i, 1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1373i, global2.a, arg_0.a.x, -8633i) >> (vec4<u32>(84313u, 47227u, 32894u, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(arg_0.a.x, 1i, arg_2, var_0.d.a.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.a.x, -1i, arg_2, -3392i), vec4<i32>(17351i, -2147483647i, arg_0.a.x, var_0.d.a.x)), -vec4<i32>(7975i, arg_1, arg_0.a.x, 2147483647i), vec4<i32>(arg_0.a.x, 1i, global2.b.d.a.x, var_0.a.a.x) << (var_0.a.d % vec4<u32>(32u))))), select(~(-select(vec4<i32>(2147483647i, arg_2, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_1, global2.a, -2147483647i, -10735i), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(arg_0.d.x, 18u)], false, false))), ~select(~vec4<i32>(global2.b.c, 1549i, var_0.a.a.x, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-40001i, 3822i, arg_0.a.x, -46352i), vec4<i32>(1i, 2147483647i, 7493i, global2.e)), !vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)])), !(!func_2(vec2<u32>(0u, 60554u), Struct_5(1i, global2.b, global2.d.a.c.x, global2.d, arg_0.a.x)))), vec4<i32>(-18404i, _wgslsmith_add_i32(0i, _wgslsmith_mod_i32(~arg_0.a.x, i32(-1i) * -1i)), var_0.d.a.x, 2147483647i));
    let var_2 = global0[_wgslsmith_index_u32(39617u, 18u)];
    var var_3 = _wgslsmith_mult_i32(arg_1, abs(arg_2));
    var var_4 = false;
    return Struct_2(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f))), -2026f)), i32(-1i) * -firstTrailingBit(1i >> (1u % 32u)), Struct_1(-vec2<i32>(-16495i, ~global2.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + -1462f), 626f, arg_0.c.x))), var_0.d.c, vec4<u32>(~var_0.d.e, u_input.c.x ^ firstLeadingBit(var_0.d.e), 16389u, u_input.e), ~countOneBits(31079u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 18>();
    let var_0 = Struct_3(global2.d.b.d, func_1(global2.b.a, 8290i, countOneBits(global2.a)), global2.d.d.a >> (u_input.c.yx % vec2<u32>(32u)), func_1(Struct_1(-global2.d.b.a.a, global2.b.d.b, vec4<f32>(-1603f, -117f, global2.d.a.b.x, 1255f), global2.d.a.d, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 92158u, 7960u), global2.b.a.d.yxw), _wgslsmith_mult_u32(1u, 4294967295u))), global2.a, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(global2.d.c.x, global2.e), i32(-1i) * -2147483647i)).d);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.d.c.x - var_0.b.a.c.x) + _wgslsmith_f_op_f32(trunc(873f))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.a) << (_wgslsmith_div_u32(~u_input.b.x, u_input.e) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.a.c.x))), var_0.a.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) + var_0.b.b)), -(~_wgslsmith_div_vec4_i32(-vec4<i32>(var_0.c.x, -2147483647i, 1i, var_0.d.a.x), abs(vec4<i32>(-2147483647i, 14059i, 0i, 60915i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f - -282f)), _wgslsmith_f_op_f32(sign(101f)))) - global2.c), var_0.d.d.x);
}

