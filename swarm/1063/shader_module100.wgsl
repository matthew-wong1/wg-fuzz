struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-14415i, -18659i, 1i, 36733i), vec3<f32>(-858f, 1018f, 576f), vec3<i32>(1i, -1i, i32(-2147483648)), vec2<f32>(784f, 971f));

var<private> global1: u32 = 36365u;

var<private> global2: array<vec3<i32>, 27>;

var<private> global3: array<u32, 22>;

var<private> global4: array<i32, 11>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(max(2319f, global0.d.x)), 0u >= global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 22u)]))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global0.b.x) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, 1412f), global0.b.zz, vec2<bool>(arg_0, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.yy - vec2<f32>(global0.d.x, 1753f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f - _wgslsmith_f_op_f32(trunc(181f))) + global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))));
    global1 = 36306u;
    global2 = array<vec3<i32>, 27>();
    global3 = array<u32, 22>();
    global2 = array<vec3<i32>, 27>();
    return !(!vec4<bool>(arg_0 && !arg_0, select(global4[_wgslsmith_index_u32(u_input.d, 11u)] > 0i, arg_0, true), arg_0, (73624u << (global3[_wgslsmith_index_u32(35426u, 22u)] % 32u)) != abs(global3[_wgslsmith_index_u32(u_input.b, 22u)])));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec3<f32> {
    var var_0 = vec3<u32>(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 17344u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 22u)], 22u)]) ^ vec3<u32>(global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(u_input.d, 22u)]), countOneBits(vec3<u32>(30961u, u_input.b, 16811u))), vec3<u32>(reverseBits(u_input.c.x), 41948u ^ u_input.d, 2761u)), _wgslsmith_add_u32(_wgslsmith_sub_u32(0u & u_input.c.x, max(23831u, u_input.d)), _wgslsmith_clamp_u32(~u_input.d, global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(90379u, u_input.c.x, 17892u), 22u)], global3[_wgslsmith_index_u32(u_input.b, 22u)] >> (0u % 32u)))) << ((vec3<u32>(~7366u, (u_input.c.x & u_input.d) & ~13080u, ~global3[_wgslsmith_index_u32(0u, 22u)]) >> (~(~(~vec3<u32>(16631u, 24831u, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = firstLeadingBit(vec3<u32>(global3[_wgslsmith_index_u32(u_input.d, 22u)], _wgslsmith_add_u32(~_wgslsmith_mult_u32(1u, 0u), ~_wgslsmith_add_u32(106519u, global3[_wgslsmith_index_u32(1u, 22u)])), ~(~(~var_0.x))));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.x, arg_1, -1373f), vec3<f32>(-803f, 575f, -1000f)))))), global0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.x, arg_1))), _wgslsmith_div_vec2_f32(global0.b.yy, global0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.b.xx)) * vec2<f32>(1602f, 245f)))));
    let var_1 = Struct_1(arg_0, _wgslsmith_f_op_vec3_f32(-global0.b), vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_div_i32(global4[_wgslsmith_index_u32(0u, 11u)], u_input.e), max(global0.a.x, ~u_input.a)), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(var_0.zx, u_input.c), u_input.d), 11u)], 32082i), global0.d);
    var var_2 = Struct_1(-vec4<i32>(~var_1.a.x, 0i, -24760i, 1i) & global0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global0.b)) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_1, 321f)))), arg_1, 1064f)), (_wgslsmith_sub_vec3_i32(vec3<i32>(-13537i, 7274i, -32646i), global0.c) ^ _wgslsmith_clamp_vec3_i32(abs(var_1.a.yzx), vec3<i32>(arg_0.x, u_input.e, -1i), vec3<i32>(var_1.c.x, var_1.a.x, global0.c.x))) >> (~vec3<u32>(1u, _wgslsmith_div_u32(u_input.c.x, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 51627u), vec3<u32>(global3[_wgslsmith_index_u32(u_input.b, 22u)], 32553u, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(exp2(var_1.b.zx)));
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec3<i32> {
    global2 = array<vec3<i32>, 27>();
    var var_0 = arg_1;
    var var_1 = global0.b.yy;
    let var_2 = _wgslsmith_add_u32(~firstTrailingBit(u_input.b), 0u);
    global0 = arg_0;
    return vec3<i32>(global0.a.x, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_2, firstLeadingBit(var_2)), 11u)], _wgslsmith_add_i32(arg_1.a.x, _wgslsmith_sub_i32(~(-arg_1.c.x), reverseBits(_wgslsmith_mod_i32(17311i, 1i)))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> StorageBuffer {
    let var_0 = -_wgslsmith_mult_vec3_i32((vec3<i32>(-1i) * -global0.c) | (global0.c ^ -global0.c), -global0.c);
    var var_1 = func_1(false).x;
    let var_2 = -func_4(Struct_1(-_wgslsmith_mod_vec4_i32(global0.a, vec4<i32>(-2147483647i, 2147483647i, var_0.x, -22179i)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(global0.a, global0.b.x)))), global0.c, global0.b.zx), Struct_1(vec4<i32>(1i, _wgslsmith_sub_i32(var_0.x, u_input.a), u_input.a, ~2147483647i), vec3<f32>(904f, 529f, _wgslsmith_f_op_f32(step(arg_1.x, global0.b.x))), global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, global0.d.x))))), global0.c.x);
    let var_3 = ~(~84807u >> (_wgslsmith_dot_vec2_u32(~(~u_input.c), u_input.c) % 32u));
    let var_4 = ~select(~vec2<u32>(14368u, var_3) >> (~u_input.c % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(7810u, var_3) ^ u_input.c, ~u_input.c), vec2<u32>(reverseBits(15280u), 1u)), !(!(!vec2<bool>(arg_0, true))));
    return StorageBuffer(_wgslsmith_dot_vec3_i32(reverseBits(var_0) ^ countOneBits(var_2), ~global0.c), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(any(func_1(_wgslsmith_clamp_u32(4294967295u, 1u, global3[_wgslsmith_index_u32(0u, 22u)]) < 0u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 611f) - global0.b.yy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, -627f) * global0.d))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.d.x, 217f)))));
}

