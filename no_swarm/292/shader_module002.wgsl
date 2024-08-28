struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<vec3<i32>, 8>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 532f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(global2.b + arg_0.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2554f, _wgslsmith_f_op_f32(abs(1761f)), global2.b))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 2006f) - 1f)), arg_0.b));
    let var_3 = arg_0;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1326f, _wgslsmith_f_op_f32(706f - 2144f), _wgslsmith_f_op_f32(ceil(var_2))) * vec3<f32>(-679f, arg_0.b, _wgslsmith_f_op_f32(-arg_0.b))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global2.b, var_0.x), var_0.wyz) - _wgslsmith_div_vec3_f32(var_0.yyx, vec3<f32>(arg_0.b, -297f, -889f))) + var_0.wyw))));
    return u_input.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_2(!global2.a, global2.b);
    let var_2 = reverseBits(func_3(Struct_2(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -710f)), var_1.b));
    let var_3 = abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, u_input.d, -26512i) & vec4<i32>(35961i, var_2, -33735i, var_2), -vec4<i32>(-2147483647i, 0i, 73969i, -3281i) ^ ~vec4<i32>(var_2, 88935i, var_2, u_input.b.x)), _wgslsmith_mod_vec4_i32(reverseBits(min(vec4<i32>(var_2, -21681i, -2147483647i, u_input.c), vec4<i32>(40902i, u_input.b.x, var_2, 49559i))), min(-vec4<i32>(var_2, u_input.d, u_input.c, 1i), -vec4<i32>(var_2, u_input.c, u_input.c, var_2)))));
    var_0 = global2.a.x || var_1.a.x;
    return Struct_2(!vec3<bool>(all(!var_1.a), var_1.a.x, true), _wgslsmith_f_op_f32(round(1950f)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(reverseBits(arg_2.b.xy), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), arg_2.b), 28u)], 1u), vec3<u32>(arg_2.b.x & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 6432u, u_input.a.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(arg_2.b.x, 28u)], 63445u, arg_2.b.x), vec3<u32>(arg_2.a.x, u_input.a.x, 20190u) << (_wgslsmith_mult_vec3_u32(arg_2.b, u_input.a.xwy) % vec3<u32>(32u))), ~(~arg_2.b)), !global2.a.x && (min(arg_2.a.x << (u_input.a.x % 32u), _wgslsmith_mod_u32(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.a.x, 28u)], 28u)])) != ~u_input.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_2.d, vec4<f32>(_wgslsmith_f_op_f32(807f + global2.b), -879f, 1736f, arg_2.e))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -172f), 113f, _wgslsmith_f_op_f32(select(1098f, func_2().b, select(false, global2.a.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.b)))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1335f + global2.b), _wgslsmith_f_op_f32(abs(global2.b))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2608f - arg_2.d.x), -236f)))));
    global2 = arg_0;
    var_0 = Struct_1(~select(var_0.b.yz, ~var_0.b.zy, arg_2.c), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 20134u, u_input.a.x)) << ((~var_0.b << (firstTrailingBit(vec3<u32>(1u, 5055u, global0[_wgslsmith_index_u32(11670u, 28u)])) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a.xwz ^ arg_2.b), (var_0.a.x == ~1u) == true, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + arg_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + global2.b) + func_2().b)) * vec4<f32>(global2.b, var_0.e, 1f, global2.b)), global2.b);
    var var_1 = !select(global2.a, vec3<bool>(!var_0.c, arg_2.c, any(global2.a)), vec3<bool>(!(arg_1 < arg_1), all(!vec2<bool>(arg_2.c, arg_0.a.x)), !arg_0.a.x));
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.b.yx, _wgslsmith_mult_vec2_i32(u_input.b.zy, vec2<i32>(_wgslsmith_dot_vec3_i32(-global1[_wgslsmith_index_u32(u_input.a.x, 8u)], ~u_input.b), ~0i)));
    return _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32((firstLeadingBit(vec4<i32>(var_2, u_input.b.x, u_input.c, var_2)) >> (u_input.a % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2.a.x, 50425u, 1u, 0u), u_input.a | vec4<u32>(var_0.a.x, 22873u, 1u, u_input.a.x)) % vec4<u32>(32u)), ~(~min(vec4<i32>(-2147483647i, u_input.b.x, var_2, u_input.d), vec4<i32>(u_input.b.x, 2147483647i, var_2, -1i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-21243i, abs(u_input.d), -1i, abs(arg_1) | ~74986i), ~(~vec4<i32>(-65607i, var_2, u_input.c, var_2) << (countOneBits(u_input.a) % vec4<u32>(32u)))));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = func_2().b;
    let var_1 = -(~reverseBits(-(vec2<i32>(u_input.d, u_input.b.x) & vec2<i32>(-2147483647i, u_input.b.x))));
    global0 = array<u32, 28>();
    let var_2 = -vec2<i32>(_wgslsmith_mod_i32(~arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 29700i, 0i) ^ arg_1.wyw, _wgslsmith_mult_vec3_i32(vec3<i32>(-24669i, -2147483647i, u_input.c), vec3<i32>(u_input.c, var_1.x, u_input.c)))), arg_1.x);
    global1 = array<vec3<i32>, 8>();
    return func_2();
}

fn func_1() -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(52457u, 28u)];
    var var_1 = func_5(Struct_2(select(!select(global2.a, vec3<bool>(global2.a.x, true, true), vec3<bool>(global2.a.x, true, global2.a.x)), !global2.a, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-690f - global2.b), 171f, all(vec4<bool>(true, false, global2.a.x, global2.a.x)))))), ~func_4(func_2(), (u_input.d | u_input.c) & ~u_input.c, Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(0u, 28u)], u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u), global2.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1450f, 1753f, -156f, global2.b)), -1000f)));
    return func_5(func_5(func_2(), vec4<i32>(u_input.b.x, ~u_input.d, -27913i, _wgslsmith_mod_i32(u_input.c, _wgslsmith_mod_i32(46843i, u_input.c)))), -(~countOneBits(~vec4<i32>(u_input.c, -44610i, -6746i, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 28>();
    global2 = func_1();
    global0 = array<u32, 28>();
    global1 = array<vec3<i32>, 8>();
    global0 = array<u32, 28>();
    global1 = array<vec3<i32>, 8>();
    global2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.b.xy, countOneBits(select(_wgslsmith_add_vec2_i32(u_input.b.yx, vec2<i32>(u_input.c, u_input.b.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, -2147483647i), u_input.b.zx), select(global2.a.xz, global2.a.zz, global2.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, global2.b, -1362f, -870f)))));
}

