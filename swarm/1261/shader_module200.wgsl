struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global1: array<bool, 28>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -256f))), Struct_2(_wgslsmith_f_op_f32(round(-863f))), Struct_2(arg_1.x));
    let var_1 = Struct_1(!(!select(vec2<bool>(arg_0.x, false), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 28u)]), !global1[_wgslsmith_index_u32(1u, 28u)])), select(true, true && !arg_0.x, all(!(!vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(110247u, 28u)], var_0.a, arg_0.x)))), vec3<bool>(true, all(vec3<bool>(arg_0.x, arg_0.x, var_0.a)), !all(!vec3<bool>(arg_0.x, true, var_0.a))), vec4<f32>(_wgslsmith_div_f32(-695f, -115f), 918f, _wgslsmith_f_op_f32(1f * var_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1684f, -285f)), _wgslsmith_f_op_f32(-1679f + arg_1.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c.a - var_0.c.a), 1990f)))));
    var var_2 = Struct_1(select(!(!vec2<bool>(global1[_wgslsmith_index_u32(0u, 28u)], var_1.a.x)), !select(var_1.c.zy, select(vec2<bool>(true, false), var_1.c.xy, vec2<bool>(false, false)), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], var_1.a.x, true))), var_1.a.x), true, !arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(var_1.d * _wgslsmith_div_vec4_f32(var_1.d, arg_1)), _wgslsmith_f_op_vec4_f32(max(var_1.d, var_1.d)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_1.d, arg_1)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_1.d + vec4<f32>(var_0.b.a, -1531f, var_1.d.x, arg_1.x)), _wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(-1531f, -1232f, -1000f, var_0.c.a), true)), vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(4294967295u, 28u)]))))));
    var_2 = Struct_1(vec2<bool>(true, true), false, vec3<bool>(!(var_1.b || true) | (-514f == _wgslsmith_f_op_f32(var_1.d.x + var_2.d.x)), any(!arg_0), !arg_0.x), vec4<f32>(var_2.d.x, _wgslsmith_f_op_f32(round(var_0.c.a)), _wgslsmith_f_op_f32(f32(-1f) * -404f), var_1.d.x));
    var var_3 = Struct_4(false, var_0.b, var_0.c);
    return arg_2.x;
}

fn func_2() -> Struct_4 {
    let var_0 = -101f;
    global0 = array<vec2<bool>, 28>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 28u)];
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(~func_3(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 28u)], true), vec4<f32>(341f, -280f, -928f, -602f), vec3<u32>(0u, u_input.b, u_input.b), global1[_wgslsmith_index_u32(4294967295u, 28u)]), ~_wgslsmith_mod_u32(33386u, 4294967295u))), abs(vec2<u32>(countOneBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, u_input.b)))) << (select(~(~vec2<u32>(u_input.b, 1u)), vec2<u32>(max(4294967295u, 0u), _wgslsmith_mult_u32(3951u, 1u)), vec2<bool>(true, true)) % vec2<u32>(32u)));
    return Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(var_3.x, 23203u), ~(~2688u), 4294967295u), 28u)] || global1[_wgslsmith_index_u32(~(~10485u), 28u)], Struct_2(832f), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + -1632f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = 974f;
    let var_2 = 48103u;
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1200f * var_0.b.a))))))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.a, 415f)) > _wgslsmith_f_op_f32(var_0.b.a - 200f), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x * 335f), 2254f, false)), _wgslsmith_f_op_f32(var_0.b.a * var_0.c.a)))), Struct_2(740f));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-var_0.c.a)), Struct_1(!select(arg_1.xy, vec2<bool>(arg_1.x, global1[_wgslsmith_index_u32(var_2, 28u)]), arg_1.xz), !any(!global0[_wgslsmith_index_u32(u_input.b, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(max(~var_2, 4294967295u), 28u)], true, !arg_1.x), vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(-747f)), var_3.b.a, _wgslsmith_f_op_f32(-var_3.b.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    global1 = array<bool, 28>();
    let var_0 = firstLeadingBit(u_input.b);
    let var_1 = select(!select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], arg_1.b.b, false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 28u)], true, true), vec4<bool>(arg_1.b.c.x, false, true, global1[_wgslsmith_index_u32(1u, 28u)])), select(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 28u)], false, arg_1.b.b, arg_1.b.b), vec4<bool>(arg_1.b.a.x, true, false, true), vec4<bool>(false, arg_1.b.c.x, global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])), false), vec4<bool>(!arg_1.b.c.x, global1[_wgslsmith_index_u32(~8218u, 28u)], true, all(vec3<bool>(arg_1.b.b, global1[_wgslsmith_index_u32(1u, 28u)], true))), vec4<bool>(func_2().a, func_2().a, any(arg_1.b.c), all(vec4<bool>(false, global1[_wgslsmith_index_u32(67026u, 28u)], false, global1[_wgslsmith_index_u32(1u, 28u)])))), !select(vec4<bool>(false, false, arg_1.b.a.x, true), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(var_0, 28u)], true), vec4<bool>(true, true, true, true), true), any(!arg_1.b.c)), !(false != !any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(63563u, 28u)], false))));
    return ~(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_0, 1i), vec3<i32>(0i, 9007i, u_input.a)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -33849i, -89638i), vec3<i32>(27947i, u_input.a, 35466i)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_0, arg_0) | vec3<i32>(arg_0, -17665i, u_input.a), vec3<i32>(arg_0, arg_0, -4885i) >> (vec3<u32>(var_0, var_0, 4294967295u) % vec3<u32>(32u)))) >> (abs(4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(751f - -1000f) - -427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_2 = !vec2<bool>(true, func_4(-2147483647i, func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)], true), vec4<f32>(-415f, 1921f, -1312f, var_1.a)), Struct_2(var_1.a)) != u_input.a);
    let var_3 = _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, u_input.a, u_input.a), ~vec3<i32>(-33832i, -38564i, u_input.a)), ~(u_input.a & 1i)) | _wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.a) ^ (u_input.a ^ 0i), u_input.a);
    var var_4 = var_2;
    var var_5 = Struct_5(-520f, func_2().a & global1[_wgslsmith_index_u32(abs(13490u), 28u)], _wgslsmith_mod_vec4_i32(~vec4<i32>(var_3 & -24968i, u_input.a, u_input.a, _wgslsmith_mod_i32(var_3, -19025i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_3, u_input.a, var_3, var_3)) >> (reverseBits(vec4<u32>(68221u, u_input.b, 19299u, 1u)) % vec4<u32>(32u)), ~(-vec4<i32>(0i, 63038i, -1i, 1i)), ~(-vec4<i32>(u_input.a, 4251i, u_input.a, -1663i)))), all(vec4<bool>(true, 1i <= (var_3 >> (50261u % 32u)), all(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, 22377u), _wgslsmith_clamp_u32(u_input.b, 20581u, u_input.b), ~0u), 28u)])));
    let var_6 = func_2();
    global0 = array<vec2<bool>, 28>();
    var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.b), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer((~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(0u, 46910u)) | vec2<u32>(~86769u, ~u_input.b)) >> (~vec2<u32>(u_input.b, ~0u) % vec2<u32>(32u)), -1108i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(step(var_1.a, -606f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_5.a))))) + func_1(!select(vec4<bool>(var_0, var_4.x, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, var_2.x)), vec3<bool>(func_2().a, all(vec3<bool>(var_4.x, var_5.d, false)), var_6.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-524f, 1364f, var_5.a, 129f))))).a.a), u_input.b);
}

