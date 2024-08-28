struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_4;

var<private> global2: array<vec2<f32>, 32>;

var<private> global3: array<vec4<i32>, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: Struct_4) -> f32 {
    var var_0 = Struct_1(global1.e.x, global1.a, arg_2.e.xx, vec2<bool>(!all(vec4<bool>(true, true, true, true)), false), !select(vec2<bool>(true, true), arg_2.e.xy, arg_2.e.xx));
    global1 = arg_2;
    return _wgslsmith_f_op_f32(abs(-981f));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    global0 = vec2<u32>(1u, global0.x >> (max(4294967295u, 34226u) % 32u));
    let var_0 = !global1.e.x;
    let var_1 = Struct_3(Struct_1(arg_0.x < _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, arg_0.x) - _wgslsmith_f_op_f32(-global1.c.x)), 1407f, global1.e.xz, !(!select(global1.e.yx, vec2<bool>(var_0, false), global1.e.x)), !(!(!global1.e.yx))), u_input.a.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-130f))), countOneBits(global1.d.x));
    var var_2 = select(select(vec3<bool>(true & !var_0, any(vec4<bool>(false, true, true, false)), !all(vec4<bool>(var_1.a.c.x, var_1.a.c.x, false, var_0))), !global1.e, select(true, true, all(vec4<bool>(true, var_1.a.d.x, true, true)) || (arg_0.x <= global1.c.x))), global1.e, vec3<bool>(true, true, var_1.a.a));
    global0 = var_1.b;
    return 5155u;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, firstTrailingBit(~(~global0.x))), vec2<u32>(func_3(vec2<f32>(-1290f, global1.c.x), 1i), global0.x));
    global2 = array<vec2<f32>, 32>();
    global3 = array<vec4<i32>, 5>();
    return Struct_3(Struct_1(false, 884f, !global1.e.yz, !vec2<bool>(false, global1.e.x), !(!global1.e.xy)), select(vec2<u32>(~4294967295u, 4294967295u), u_input.d.zx ^ _wgslsmith_mult_vec2_u32(u_input.d.yz, ~vec2<u32>(0u, 1u)), global1.e.x), -422f, 29426i);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~(~u_input.b)), 86841u, _wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(71633u, u_input.b, arg_0.b.x, arg_0.b.x))), abs(~vec4<u32>(74384u, arg_0.b.x, global0.x, u_input.d.x))), abs(~45936u)), ~(~(~vec4<u32>(global0.x, arg_0.b.x, 34466u, u_input.d.x) ^ vec4<u32>(4294967295u, 21268u, global0.x, global0.x))));
    var var_1 = Struct_4(global1.a, global1.b, vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(arg_0.b.x, 505f, Struct_4(global1.c.x, global3[_wgslsmith_index_u32(arg_0.b.x, 5u)], vec4<f32>(global1.a, 416f, arg_0.c, 135f), global1.b.wx, global1.e))) * 1015f)), 232f, _wgslsmith_f_op_f32(sign(func_2().a.b)), 451f), -_wgslsmith_mod_vec2_i32(vec2<i32>(39873i, arg_0.d) >> (vec2<u32>(1u, var_0.x) % vec2<u32>(32u)), global1.d), !global1.e);
    var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), arg_0.a.b) - 452f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1116f)))), global3[_wgslsmith_index_u32(~u_input.d.x >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global0.x, arg_0.b.x, 78153u) ^ vec4<u32>(46170u, 0u, 1u, var_0.x), vec4<u32>(38518u, 4294967295u, 1u, global0.x)) % 32u), 5u)], _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c)))), _wgslsmith_sub_vec2_i32(~countOneBits(var_1.b.zw), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_1.d, var_1.d) << (arg_0.b % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(select(global1.b.xy, global1.b.yz, var_1.e.x), global1.d, vec2<i32>(74052i, -47456i)))), vec3<bool>(true, func_2().a.a, var_1.e.x || !any(vec3<bool>(true, global1.e.x, false))));
    global2 = array<vec2<f32>, 32>();
    var var_2 = _wgslsmith_f_op_f32(floor(var_1.c.x));
    return Struct_2(Struct_1(func_2().a.c.x, 728f, select(var_1.e.yz, !select(arg_0.a.d, vec2<bool>(var_1.e.x, global1.e.x), var_1.e.zy), vec2<bool>(var_1.e.x, arg_0.a.d.x)), var_1.e.xx, arg_0.a.c));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_u32(min(~abs(72723u), select(global0.x, u_input.b, func_2().a.a)), _wgslsmith_clamp_u32(0u, ~_wgslsmith_sub_u32(0u, u_input.b), 70241u)) ^ 0u;
    let var_2 = Struct_4(-146f, _wgslsmith_mult_vec4_i32(global1.b << (max(vec4<u32>(1u, u_input.d.x, 9286u, 1u) >> (vec4<u32>(791u, global0.x, 41720u, 43355u) % vec4<u32>(32u)), min(vec4<u32>(1u, 4294967295u, u_input.d.x, var_0.b.x), vec4<u32>(global0.x, 4294967295u, 1u, 30502u))) % vec4<u32>(32u)), select(-vec4<i32>(u_input.c, -14941i, -2147483647i, 70098i) | vec4<i32>(u_input.c, arg_2.x, u_input.c, u_input.c), -global1.b, !(u_input.c > 42779i))), global1.c, _wgslsmith_mod_vec2_i32(-global1.d, vec2<i32>(min(abs(arg_2.x), ~global1.b.x), _wgslsmith_mod_i32(~u_input.c, _wgslsmith_mult_i32(var_0.d, -2147483647i)))), !global1.e);
    var var_3 = Struct_5(var_2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.c.wx)) + vec2<f32>(513f, var_2.a)), global1.c.zx)), ~(~abs(_wgslsmith_mod_u32(var_0.b.x, var_0.b.x))));
    var_0 = Struct_3(func_2().a, ~vec2<u32>(_wgslsmith_mult_u32(global0.x, global0.x), global0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.b.x - var_2.c.x), _wgslsmith_f_op_f32(max(arg_0.x, var_3.b.x))))), var_2.b.x);
    return vec3<bool>(arg_1.a.e.x, any(select(select(!vec3<bool>(var_0.a.e.x, var_0.a.a, var_2.e.x), select(vec3<bool>(global1.e.x, true, false), var_3.a, vec3<bool>(var_0.a.a, arg_1.a.a, var_0.a.a)), var_2.e), !var_2.e, func_4(func_2()).a.c.x)), var_2.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(global1.a, global1.c.x);
    var var_1 = !global1.e;
    var var_2 = Struct_5(global1.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, 345f)), var_0)))) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(354f * 251f), 375f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, global1.c.x, Struct_4(-451f, vec4<i32>(global1.d.x, global1.b.x, u_input.c, global1.b.x), global1.c, global1.b.wx, global1.e)))))), 4294967295u);
    var_1 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, 1000f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 390f, 111f) * global1.c.xxx), global1.c.xxy)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), var_2.b.x, 472f))), func_4(func_2()), vec4<i32>(u_input.c & abs(u_input.c & u_input.c), -(global1.b.x >> (var_2.c % 32u)), global1.d.x, i32(-1i) * -31996i));
    let var_3 = func_4(func_2());
    global1 = Struct_4(984f, (_wgslsmith_sub_vec4_i32(global1.b ^ vec4<i32>(u_input.c, u_input.c, 37973i, -28047i), global3[_wgslsmith_index_u32(~18388u, 5u)]) & select(reverseBits(global1.b), global1.b, !vec4<bool>(global1.e.x, global1.e.x, var_1.x, false))) & vec4<i32>(~min(0i, -2147483647i), abs(~2273i), u_input.c, global1.b.x), global1.c, global1.b.zx, select(var_2.a, vec3<bool>(false, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f) <= var_2.b.x), !(!(!global1.e))));
    let var_4 = ~_wgslsmith_sub_i32(u_input.c, i32(-1i) * -14889i) == _wgslsmith_mod_i32(_wgslsmith_add_i32(-u_input.c, u_input.c), (u_input.c ^ global1.b.x) ^ -2147483647i);
    var var_5 = Struct_4(var_0.x, vec4<i32>(min(firstLeadingBit(countOneBits(0i)), ~global1.b.x), _wgslsmith_mod_i32(global1.d.x, -35820i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, global1.b.x), global1.b.zx), global1.b.wy), 0i), global1.c, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-global1.b, ~vec4<i32>(global1.b.x, global1.b.x, global1.b.x, global1.d.x)), _wgslsmith_add_vec4_i32(global1.b, global3[_wgslsmith_index_u32(17069u, 5u)]) >> (~vec4<u32>(64587u, 1u, 4294967295u, 1u) % vec4<u32>(32u))), ~max(global1.b.x, u_input.c) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global1.d.x, global1.b.x, u_input.c), vec4<i32>(u_input.c, u_input.c, -33922i, global1.d.x))), vec3<bool>(global1.e.x, var_4, false));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstLeadingBit(~global1.d.x), u_input.c), reverseBits(global1.d), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -min(1i, var_5.d.x), u_input.c), vec3<i32>(~(-var_5.d.x), firstLeadingBit(~global1.d.x), ~u_input.c & var_5.b.x)), u_input.d.x);
}

