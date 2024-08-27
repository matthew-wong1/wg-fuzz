struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 9> = array<f32, 9>(-123f, 1000f, -929f, 235f, 2193f, 1626f, 1000f, -109f, 835f);

var<private> global2: u32;

var<private> global3: i32 = -2626i;

var<private> global4: array<i32, 15> = array<i32, 15>(20149i, -1i, 1i, -14107i, 0i, -1i, 1i, -4446i, 1195i, -19158i, -42204i, -46946i, 19595i, 13761i, -73985i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_3) -> bool {
    var var_0 = select(select(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), any(vec4<bool>(false, true, false, false))), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), select(vec3<bool>(true, any(vec2<bool>(true, true)), arg_3.a.a.x < _wgslsmith_f_op_f32(sign(global0.a.a.x))), vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true), true), !vec3<bool>(any(vec2<bool>(false, true)) && all(vec2<bool>(false, true)), true, true));
    global4 = array<i32, 15>();
    let var_1 = !(!(!(!(!vec4<bool>(var_0.x, true, false, var_0.x)))));
    var var_2 = arg_3.a.a.x;
    var_2 = _wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-723f)))))));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(global0.a);
    var var_1 = 8781u;
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-global0.a.a), func_3(vec2<i32>(-24323i, -11795i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1893f, global0.a.a.x, global0.a.a.x, 416f) + vec4<f32>(var_0.a.a.x, var_0.a.a.x, -1743f, -2073f)), vec4<f32>(-576f, -1000f, global1[_wgslsmith_index_u32(65019u, 9u)], 416f), Struct_3(var_0.a)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), var_0.a.a.x), _wgslsmith_f_op_vec2_f32(-var_0.a.a))), vec2<bool>(!all(vec2<bool>(false, true)), true))), -global0.a.b, abs(var_0.a.c), _wgslsmith_clamp_u32(~max(_wgslsmith_dot_vec2_u32(u_input.d.xx, vec2<u32>(1u, 12445u)), 15314u), _wgslsmith_div_u32(firstTrailingBit(var_0.a.c.x), ~73645u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 30223u, 0u), u_input.d)), u_input.d.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<bool>) -> bool {
    return true;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = func_4(reverseBits(global4[_wgslsmith_index_u32(global0.a.d, 15u)]), func_2(), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.a.a, vec2<f32>(global0.a.a.x, -1040f)))), global0.a.b, global0.a.c, ~countOneBits(4294967295u)), reverseBits(global0.a.b.yzy)), arg_1);
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(global0.a.a * _wgslsmith_f_op_vec2_f32(global0.a.a - _wgslsmith_f_op_vec2_f32(ceil(global0.a.a)))), vec4<i32>(countOneBits(329i >> (u_input.d.x % 32u)), min(1i, ~u_input.a), abs(_wgslsmith_dot_vec3_i32(global0.a.b.yzw, global0.a.b.wxz)), min(global4[_wgslsmith_index_u32(16517u, 15u)], 27366i)), vec4<u32>(global0.a.d ^ _wgslsmith_sub_u32(13816u, u_input.d.x), ~20002u, _wgslsmith_clamp_u32(~5759u, global0.a.c.x, global0.a.c.x | global0.a.c.x), ~u_input.d.x), 59265u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(global0.a.d, 9u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(u_input.d.x, global0.a.d, 11582u)), 9u)], 296f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2352f, -1264f, global0.a.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.a.x, global1[_wgslsmith_index_u32(1u, 9u)], var_1.a.a.x) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], -1425f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1355f, var_1.a.a.x, 1176f)))))));
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_2.x) + _wgslsmith_div_vec2_f32(global0.a.a, vec2<f32>(var_2.x, -461f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-929f, 791f)) + var_2.zx), false | all(vec3<bool>(arg_1.x, false, true)))), var_1.a.b, ~vec4<u32>(global0.a.d, var_1.a.d, 31301u, _wgslsmith_dot_vec3_u32(global0.a.c.wxx, vec3<u32>(var_1.a.c.x, 22853u, 1u))), _wgslsmith_div_u32(u_input.d.x, global0.a.c.x)));
    var var_3 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, global0.a.b.x, var_1.a.b.x, 0i) & ~var_1.a.b, _wgslsmith_sub_vec4_i32(global0.a.b, vec4<i32>(var_1.a.b.x, global4[_wgslsmith_index_u32(35263u, 15u)], -44555i, 2147483647i))), 1i, select(abs(-23262i), 1i, false), -1i);
    return func_2();
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> f32 {
    global4 = array<i32, 15>();
    let var_0 = Struct_2(arg_2.a, arg_2.a.b.yxz >> (_wgslsmith_mult_vec3_u32(global0.a.c.xyw ^ _wgslsmith_div_vec3_u32(global0.a.c.zwy, arg_2.a.c.zzy), ~select(global0.a.c.xyw, vec3<u32>(4294967295u, 0u, 43249u), false)) % vec3<u32>(32u)));
    var var_1 = all(vec2<bool>(true, false));
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_2.a.c.x, firstLeadingBit(u_input.d.x)), ~min(4294967295u, _wgslsmith_add_u32(u_input.d.x, 24838u))), ~(~firstTrailingBit(~11677u)));
    var var_3 = vec4<bool>(true, true, 46201u <= var_0.a.c.x, any(select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, true, true)) & any(vec3<bool>(false, true, true)))));
    return 912f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(1i >> ((~55844u & (u_input.d.x ^ u_input.d.x)) % 32u), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, global0.a.d, u_input.d.x), vec3<u32>(u_input.d.x, 29611u, 4294967295u)), vec3<u32>(47213u, u_input.d.x, u_input.d.x)), 9u)] - global0.a.a.x), Struct_3(func_1(true, select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false))), global4[_wgslsmith_index_u32(~u_input.d.x, 15u)])) * _wgslsmith_f_op_f32(-global0.a.a.x));
    let var_1 = any(select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    var var_2 = abs(~_wgslsmith_sub_vec4_i32(global0.a.b, _wgslsmith_mult_vec4_i32(global0.a.b, vec4<i32>(global0.a.b.x, 2147483647i, u_input.a, -7484i))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-678f, func_2().a.x)), global0.a.a.x))));
    var var_4 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a), vec2<f32>(-456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f + 1784f)))), ~_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.c.x, 2147483647i, var_2.x, -56251i), global0.a.b, vec4<bool>(var_1, false, var_1, false)) & -global0.a.b, global0.a.b), firstLeadingBit(vec4<u32>(global0.a.c.x ^ 0u, 4294967295u, global0.a.c.x, 3283u) << (global0.a.c % vec4<u32>(32u))), reverseBits(firstTrailingBit(global0.a.c.x)));
    let var_5 = ~_wgslsmith_sub_vec3_u32(~firstLeadingBit(~vec3<u32>(64871u, 4294967295u, 4294967295u)), vec3<u32>(4294967295u, 18810u, _wgslsmith_clamp_u32(var_4.d, 35208u, 1u) >> (1u % 32u)));
    global4 = array<i32, 15>();
    var var_6 = ~vec2<u32>(37522u, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 1038f, global1[_wgslsmith_index_u32(0u, 9u)]))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) + _wgslsmith_f_op_f32(min(global0.a.a.x, _wgslsmith_f_op_f32(trunc(-301f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -558f) - _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.d.x, 9u)]))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1653f - global1[_wgslsmith_index_u32(var_4.d, 9u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 9u)])))), global0.a.a.x), -1194f), _wgslsmith_sub_i32(u_input.b & func_2().b.x, -55139i));
}

