struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30931u;

var<private> global1: vec4<u32> = vec4<u32>(32962u, 0u, 1u, 4294967295u);

var<private> global2: array<vec2<f32>, 24>;

var<private> global3: array<bool, 1>;

var<private> global4: array<Struct_1, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec3<u32> {
    global0 = 16457u;
    let var_0 = u_input.b.x;
    var var_1 = -1000f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f * 1200f)))), _wgslsmith_f_op_f32(-522f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1661f)) + 495f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f + 1258f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1036f * -891f))) - 1791f));
    let var_3 = select(-vec2<i32>(1i, 1i) >> ((vec2<u32>(33963u, global1.x) >> (~vec2<u32>(9721u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), reverseBits(vec2<i32>(-78767i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -27854i, 0i), vec3<i32>(-2147483647i, 74624i, 28535i)))), all(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.xzy, vec3<u32>(u_input.b.x, 1u, global1.x)), 1u)], global3[_wgslsmith_index_u32(88586u, 1u)], false))) | vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -50320i, abs(1i)), 2147483647i);
    return abs(u_input.b);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_i32(max(arg_0, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, arg_0.x, arg_0.x), countOneBits(vec4<i32>(1i, arg_0.x, arg_0.x, 1i))), -1i, _wgslsmith_clamp_i32(-2147483647i, -2147483647i, 1i))), -(arg_0 ^ -vec3<i32>(-1i, 4931i, arg_0.x)));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(global1.xx, select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(43867u, 0u)), vec2<u32>(u_input.a.x, u_input.b.x), select(vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec2<bool>(false, global3[_wgslsmith_index_u32(global1.x, 1u)]), vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 1u)], true))) & global1.yx, all(vec4<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(73365u, 1u)], true)), true, !global3[_wgslsmith_index_u32(u_input.a.x, 1u)], arg_0.x >= -39960i))), func_2().xx), 21u)];
    let var_2 = var_1.c.x;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a), select(!(!var_1.b), var_1.b, select(vec3<bool>(all(vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(1u, 1u)])), false, !global3[_wgslsmith_index_u32(0u, 1u)]), !(!vec3<bool>(var_1.b.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], var_1.d.x)), vec3<bool>(var_1.d.x || false, select(global3[_wgslsmith_index_u32(5165u, 1u)], global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(1u, 1u)]), any(vec2<bool>(global3[_wgslsmith_index_u32(global1.x, 1u)], var_1.d.x))))), min(_wgslsmith_mod_vec2_i32(abs(arg_0.yx), vec2<i32>(_wgslsmith_add_i32(arg_0.x, 34070i), i32(-1i) * -1i)), select(select(arg_0.zy, var_1.c & arg_0.xy, true), vec2<i32>(arg_0.x, -arg_0.x), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), global1.x, u_input.a.x), 1u)])), select(!(!var_1.d), select(vec4<bool>(global1.x <= global1.x, true, true, true), select(!var_1.d, vec4<bool>(false, false, true, true), vec4<bool>(true, var_1.b.x, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], true)), global3[_wgslsmith_index_u32(global1.x, 1u)]), !var_1.d));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1885f, var_1.a.x, var_3.a.x, _wgslsmith_f_op_f32(-1497f + _wgslsmith_f_op_f32(-818f * -1290f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_3.a.x, -2708f, var_1.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 1605f, var_1.a.x, 1272f) + vec4<f32>(var_3.a.x, 1626f, var_1.a.x, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(select(1688f, -564f, true)), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_1.a.x + -1691f), -145f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(127f * -1210f), var_1.a.x, _wgslsmith_f_op_f32(-1001f + var_1.a.x), var_3.a.x), vec4<f32>(879f, _wgslsmith_f_op_f32(-var_1.a.x), 1000f, var_1.a.x))));
    return _wgslsmith_clamp_u32(u_input.a.x, 0u, ~(~global1.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    let var_0 = select(vec4<bool>(true, arg_0.c.x < ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.c.x, 42447i, arg_0.c.x), vec4<i32>(-1i, arg_0.c.x, -1i, arg_0.c.x)), arg_0.d.x, arg_0.d.x), arg_0.d, vec4<bool>(_wgslsmith_f_op_f32(-arg_0.a.x) > 1313f, all(select(arg_1, vec3<bool>(false, arg_1.x, true), all(arg_1.yx))), any(!select(arg_0.d, arg_0.d, vec4<bool>(false, false, false, arg_1.x))), any(select(select(arg_0.b, arg_1, false), vec3<bool>(true, false, arg_0.d.x), 688f <= arg_0.a.x))));
    var var_1 = global1.yy;
    var var_2 = select(~func_2(), u_input.b, !arg_0.b);
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~func_3(select(vec3<i32>(-11456i, arg_0.c.x, arg_0.c.x), vec3<i32>(-4539i, 1i, -21555i), arg_0.d.x))), var_2.x), 21u)];
    var_3 = global4[_wgslsmith_index_u32(var_2.x, 21u)];
    return firstTrailingBit(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(func_1(global4[_wgslsmith_index_u32(4294967295u, 21u)], select(vec3<bool>(true, global3[_wgslsmith_index_u32(18213u, 1u)], false), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 1u)], global3[_wgslsmith_index_u32(u_input.b.x, 1u)], global3[_wgslsmith_index_u32(global1.x, 1u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(global1.x, 1u)]))), global1.x), _wgslsmith_dot_vec3_u32(u_input.b, abs(vec3<u32>(global1.x, u_input.a.x, u_input.a.x) ^ vec3<u32>(44846u, global1.x, global1.x))), abs(104105u)), ~_wgslsmith_div_u32(1u, u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(239f)) - _wgslsmith_f_op_f32(floor(-140f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(957f - -1134f))), 1127f));
    global1 = firstTrailingBit(max(~(~select(vec4<u32>(107499u, 1u, 1u, 52074u), vec4<u32>(0u, 0u, 0u, 82449u), vec4<bool>(global3[_wgslsmith_index_u32(var_0, 1u)], true, global3[_wgslsmith_index_u32(15656u, 1u)], false))), ~(~(~vec4<u32>(global1.x, 0u, 1u, var_0)))));
    let var_2 = -(i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, -1i), 0i));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1627f - var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, 23844i), vec2<i32>(0i, -2147483647i), vec2<i32>(var_2, -21639i)), -vec2<i32>(var_2, var_2)), vec2<i32>(_wgslsmith_mult_i32(-26432i, var_2), ~var_2)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_2, -32050i), vec2<i32>(4794i, -2147483647i), vec2<i32>(1i, -33771i))) >> (vec2<u32>(var_0, ~u_input.b.x) % vec2<u32>(32u)), vec2<bool>(true, ~2147483647i >= (var_2 >> (var_0 % 32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, var_1.x, var_1.x, var_3) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, -2145f, 738f, 781f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-144f, -647f, -1000f, -638f), vec4<f32>(-2207f, var_1.x, 178f, -813f)) + vec4<f32>(var_3, -272f, var_1.x, var_1.x)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(44500u, var_0), ~_wgslsmith_mult_u32(0u, 24608u)) ^ max(var_0 & 4294967295u, ~39820u), func_2().x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_3, var_3, var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(281f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(1300f)), -872f), true && select(false, false, false)))));
}

