struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<i32, 1> = array<i32, 1>(2147483647i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(f32(-1f) * -1120f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f + -2216f)))), vec2<i32>(_wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -69908i, -6349i, global1[_wgslsmith_index_u32(39865u, 1u)]), vec4<i32>(global1[_wgslsmith_index_u32(0u, 1u)], 1i, 25467i, 1i)), -(global1[_wgslsmith_index_u32(0u, 1u)] & global1[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_mod_i32(firstTrailingBit(-global1[_wgslsmith_index_u32(1u, 1u)]), -_wgslsmith_add_i32(-12544i, -46931i))));
    var var_1 = any(vec2<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))) == true));
    let var_2 = _wgslsmith_mod_vec2_u32(~countOneBits(firstLeadingBit(vec2<u32>(25484u, 11486u))) << (_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(1u, 0u), ~vec2<u32>(83477u, 1u), vec2<bool>(true, true)), ~vec2<u32>(1u, 33225u), countOneBits(~vec2<u32>(4294967295u, 25086u))) % vec2<u32>(32u)), abs(firstTrailingBit(vec2<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 1u))));
    let var_3 = all(select(vec3<bool>(false || (-2147483647i <= var_0.b.x), !any(vec3<bool>(false, true, false)), true), vec3<bool>(true, select(true, var_0.a.x > -259f, true), ~global1[_wgslsmith_index_u32(7626u, 1u)] < ~(-21460i)), true));
    global0 = u_input.a;
    return -1i;
}

fn func_2() -> vec2<i32> {
    global0 = _wgslsmith_add_i32(-14997i, max(~(~_wgslsmith_div_i32(0i, u_input.a)), ~func_3()));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-312f, 1164f) * -1357f))));
    let var_1 = Struct_1(vec2<f32>(1f, 1f), abs(firstTrailingBit(-reverseBits(vec2<i32>(-1i, global1[_wgslsmith_index_u32(41819u, 1u)])))));
    let var_2 = ~vec3<u32>(~(~1u) << (0u % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(24604u, 7267u, 65511u)), abs(vec3<u32>(67446u, 1u, 1u))) >> (~(~1u) % 32u), ~1u);
    var var_3 = var_2.x;
    return _wgslsmith_mult_vec2_i32(reverseBits(var_1.b), var_1.b);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = -2147483647i;
    global1 = array<i32, 1>();
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(1u, firstTrailingBit(7560u), _wgslsmith_mult_u32(38994u, 1u), ~36805u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(54522u, 0u), 1u, _wgslsmith_clamp_u32(0u, 1u, 20170u), countOneBits(0u)), select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, 26355u), any(vec4<bool>(false, false, true, false)))), vec4<u32>(1u, 1u, 1u, 1u)));
    global1 = array<i32, 1>();
    global0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(552i, reverseBits(~(-2147483647i)), -39124i), u_input.a) >> (var_0.x % 32u);
    return Struct_1(vec2<f32>(_wgslsmith_div_f32(-567f, -166f), arg_0.a.x), vec2<i32>(arg_0.b.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 1u)], arg_0.b.x, u_input.a, -2147483647i), vec4<i32>(u_input.a, -12646i, -2147483647i, global1[_wgslsmith_index_u32(var_0.x, 1u)])) ^ arg_0.b.x));
}

fn func_1() -> u32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -230f));
    var var_2 = func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1237f)), _wgslsmith_div_vec2_f32(vec2<f32>(-414f, -1912f), vec2<f32>(-2208f, 1000f)))), _wgslsmith_sub_vec2_i32(~func_2(), vec2<i32>(u_input.a, u_input.a))));
    var var_3 = vec3<i32>(select(_wgslsmith_clamp_i32(-33170i | _wgslsmith_add_i32(u_input.a, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, global1[_wgslsmith_index_u32(var_0, 1u)]), vec3<i32>(var_2.b.x, -1i, u_input.a)), -global1[_wgslsmith_index_u32(var_0, 1u)]), -u_input.a ^ (_wgslsmith_add_i32(-12155i, 2292i) ^ var_2.b.x), true), ~var_2.b.x, 0i);
    global0 = countOneBits(-15939i);
    return 1u;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: u32) -> f32 {
    global1 = array<i32, 1>();
    let var_0 = func_4(func_4(func_4(func_4(Struct_1(vec2<f32>(arg_1, arg_1), vec2<i32>(-2147483647i, -2147483647i))))));
    var var_1 = var_0;
    global0 = abs(-1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1), arg_0)))));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u >> (0u % 32u), 1u, 1u)), ~vec3<u32>(1u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-721f - _wgslsmith_f_op_f32(sign(157f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1220f + 780f))))));
    global0 = -(~(-(~u_input.a)));
    global0 = 51676i;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(709f)), -733f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1677f, 672f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1160f, 608f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1440f, -2201f), vec2<f32>(-293f, 740f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-289f, 1301f), vec2<f32>(1309f, 1000f), false))), true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)), _wgslsmith_f_op_f32(func_5(-154f, _wgslsmith_f_op_f32(f32(-1f) * -1216f), true, func_1())))));
    let var_3 = !all(select(vec2<bool>(any(vec2<bool>(false, false)), -569f < var_2.x), vec2<bool>(true, true), true));
    global1 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.x);
}

