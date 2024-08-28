struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: array<Struct_2, 26>;

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(1000f, -1370f, 1116f), vec3<u32>(4294967295u, 14959u, 39451u), false, -23716i), Struct_1(vec3<f32>(-1235f, -1000f, -3227f), vec3<u32>(74480u, 0u, 4294967295u), true, 1i), Struct_1(vec3<f32>(258f, 1383f, 797f), vec3<u32>(1u, 1u, 51583u), false, 8899i), Struct_1(vec3<f32>(-419f, 1577f, -1266f), vec3<u32>(0u, 4294967295u, 0u), true, 21798i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    global3 = array<Struct_1, 4>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -440f))))) < _wgslsmith_f_op_f32(f32(-1f) * -877f);
    var var_1 = ~(~20786u);
    var_1 = ~47242u;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, _wgslsmith_add_i32(u_input.a.x, firstTrailingBit(2147483647i))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 1u), ~global1[_wgslsmith_index_u32(4294967295u, 8u)]), ~13532u, ~(~0u)) % vec3<u32>(32u)), -vec3<i32>(firstTrailingBit(_wgslsmith_add_i32(-43996i, 52705i)), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~u_input.a.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 29365i, u_input.a.x, -1i), vec4<i32>(30531i, 71158i, u_input.a.x, -2637i))));
    return _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(10217u, 8u)], _wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(1u, 8u)] & global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]) ^ vec3<u32>(~82672u, ~23022u, 1u)) << (vec3<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30926u, 1u), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(68005u, 4294967295u), 8u)]), 0u), select(66658u, 4294967295u, ~u_input.a.x == ~u_input.a.x)) % vec3<u32>(32u));
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, 579f, 514f))))))), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(44775u, 8u)], _wgslsmith_add_vec3_u32(func_3(), _wgslsmith_mod_vec3_u32(global1[_wgslsmith_index_u32(1270u, 8u)] ^ global1[_wgslsmith_index_u32(1u, 8u)], ~global1[_wgslsmith_index_u32(39688u, 8u)]))), true, -6069i);
    let var_1 = reverseBits(_wgslsmith_mod_i32(-(var_0.d | -37189i) >> (func_3().x % 32u), u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_0.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a))), ~vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, 1u, 69197u), vec4<u32>(var_0.b.x, 1u, 13363u, 1u)), ~abs(var_0.b.x)), ~(-88751i) > select(~var_0.d, var_0.d, any(select(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), vec4<bool>(true, var_0.c, true, false), false))), firstLeadingBit(countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, var_1), 21763i))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - var_2.a), var_2.b, true, -(~var_1));
    return !(!select(select(vec3<bool>(var_0.c, false, var_2.c), vec3<bool>(true, var_0.c, var_3.c), all(vec4<bool>(var_2.c, false, var_0.c, var_0.c))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), var_2.c), true));
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -458f))) * 252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1568f)), _wgslsmith_div_f32(-445f, -548f), -548f));
    var var_1 = Struct_2(_wgslsmith_div_vec2_i32((vec2<i32>(-6320i, u_input.a.x) >> (firstTrailingBit(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(8012u, 4294967295u)), vec2<u32>(21024u, 32224u), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(53171u, 0u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(~u_input.a.zx, ~(~u_input.a.yy), _wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(42750i, u_input.a.x)))), ~4294967295u, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1361f, -316f, var_0.x)), var_0.xxw), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(28396u, 3469u), vec2<u32>(7337u, 45232u)), vec2<u32>(1u, 1u)), 8u)], arg_0.x, min(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), select(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(firstTrailingBit(-u_input.a.x), 0i, -27488i), arg_0), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1105f, -1063f)))), vec3<u32>(0u, 63260u, 1u), arg_0.x, (u_input.a.x & _wgslsmith_div_i32(-39262i, u_input.a.x)) << (~1u % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1357f, var_0.x), var_1.c.a.xx) + vec2<f32>(_wgslsmith_f_op_f32(-1024f * -1354f), _wgslsmith_f_op_f32(trunc(var_1.e.a.x)))) - vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -548f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.e.a.yx)) - var_1.c.a.zz)) - var_1.c.a.zy));
    let var_3 = u_input.a;
    global0 = array<Struct_1, 24>();
    return global2[_wgslsmith_index_u32(1u & (_wgslsmith_div_u32(_wgslsmith_mult_u32(34474u, ~var_1.e.b.x), 1u) | var_1.c.b.x), 26u)];
}

fn func_1(arg_0: u32) -> i32 {
    var var_0 = func_4(select(func_2(), vec3<bool>(true, true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true))), vec3<bool>(!(arg_0 <= arg_0), true, !(arg_0 != arg_0))));
    let var_1 = u_input.a.x;
    global0 = array<Struct_1, 24>();
    global3 = array<Struct_1, 4>();
    global1 = array<vec3<u32>, 8>();
    return -_wgslsmith_mod_i32(~((var_0.a.x ^ u_input.a.x) << (arg_0 % 32u)), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(1u, 26u)];
    var var_1 = global2[_wgslsmith_index_u32(min(var_0.b, 37878u), 26u)];
    var var_2 = vec4<u32>(~1u, 1u, ~var_0.b, var_1.b);
    let var_3 = Struct_2(vec2<i32>(-6230i >> (~(var_1.e.b.x & 0u) % 32u), abs(func_1(var_1.c.b.x))), var_2.x, var_1.e, -var_1.d >> (vec3<u32>(var_0.c.b.x, min(var_1.e.b.x, var_0.b), 1u) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(43778u, 24u)]);
    let var_4 = var_0.c.c;
    global3 = array<Struct_1, 4>();
    global3 = array<Struct_1, 4>();
    let var_5 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~(~(~6577u)), 52606u), _wgslsmith_div_vec2_f32(var_5.a.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, -534f), vec2<f32>(var_0.c.a.x, 1457f)))))), var_0.c.a.x);
}

