struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(42185u, 21547u, 4294967295u), vec3<u32>(4294967295u, 1u, 3211u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(44060u, 1134u, 46217u));

var<private> global1: array<u32, 24>;

var<private> global2: Struct_1 = Struct_1(false, vec3<i32>(-30208i, 0i, -51275i));

var<private> global3: vec4<f32> = vec4<f32>(849f, -667f, 1000f, 866f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    let var_0 = 1u;
    var var_1 = vec4<bool>(global2.a, any(vec3<bool>(var_0 != _wgslsmith_dot_vec2_u32(vec2<u32>(32536u, 56815u), vec2<u32>(52946u, 0u)), global2.a, any(vec4<bool>(false, global2.a, global2.a, arg_0.x)) || arg_0.x)), any(select(select(select(arg_0.zy, vec2<bool>(global2.a, true), arg_0.yx), vec2<bool>(global2.a, true), arg_0.xx), vec2<bool>(true, !arg_0.x), vec2<bool>(false, arg_0.x))), all(arg_0.yz));
    global0 = array<vec3<u32>, 4>();
    let var_2 = Struct_2(Struct_1(false, _wgslsmith_add_vec3_i32(firstLeadingBit(global2.b >> (u_input.a % vec3<u32>(32u))), global2.b)), Struct_1(false, _wgslsmith_div_vec3_i32(global2.b, -vec3<i32>(-2472i, global2.b.x, u_input.b.x))), Struct_1(true, -(~vec3<i32>(u_input.b.x, u_input.b.x, global2.b.x))));
    var var_3 = vec2<bool>(true, all(select(!select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(true, true, true, true), false), vec4<bool>(true, global2.b.x >= u_input.b.x, arg_0.x, true), !(!vec4<bool>(true, false, true, var_2.c.a)))));
    return -_wgslsmith_add_i32(-2147483647i, ~var_2.b.b.x) & -u_input.b.x;
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global3 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.x)))) * _wgslsmith_f_op_f32(global3.x * global3.x)) * -351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -640f) + -376f));
    global0 = array<vec3<u32>, 4>();
    let var_0 = Struct_2(Struct_1(any(select(!vec4<bool>(global2.a, false, global2.a, global2.a), select(vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(global2.a, true, false, global2.a), vec4<bool>(global2.a, true, true, false)), select(vec4<bool>(false, true, false, global2.a), vec4<bool>(global2.a, global2.a, global2.a, false), global2.a))), vec3<i32>(_wgslsmith_div_i32(abs(u_input.b.x), min(12284i, u_input.b.x)), -1i, func_3(vec3<bool>(global2.a, false, false)))), Struct_1(all(select(!vec2<bool>(global2.a, global2.a), select(vec2<bool>(false, global2.a), vec2<bool>(true, global2.a), global2.a), false)), vec3<i32>(min(select(986i, u_input.b.x, true), ~u_input.b.x), -global2.b.x, 1i)), Struct_1(global2.a, ~u_input.b));
    global0 = array<vec3<u32>, 4>();
    var var_1 = vec2<f32>(470f, -1000f);
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1671f, 589f) - _wgslsmith_f_op_vec2_f32(round(global3.wz))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global3.wz)))))), arg_1.a.b, arg_1.a.a);
    global0 = array<vec3<u32>, 4>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global3.x)), 1183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(-696f * -267f)))), -637f, 1184f);
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(681f, var_1.x, 530f, 1554f), vec4<f32>(global3.x, 455f, global3.x, 211f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, -318f, 413f, var_1.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(149f, 1000f, var_1.x, -1697f), vec4<f32>(-121f, -150f, var_1.x, global3.x), true)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-273f, 1020f, global3.x, global3.x) * vec4<f32>(var_1.x, var_1.x, global3.x, 1013f)))))));
    return !vec4<bool>(arg_1.a.a.a, any(select(vec3<bool>(arg_1.a.b.a, arg_1.a.c.a, false), vec3<bool>(arg_0.a, arg_0.a, true), true)), var_3.x > _wgslsmith_f_op_f32(-2025f - -1118f), true);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_3 {
    global2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-964f, 741f) - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(827f)))))));
    let var_0 = !((true & func_4(func_2(vec2<f32>(global3.x, -170f)), Struct_3(Struct_2(Struct_1(true, vec3<i32>(11800i, -13045i, global2.b.x)), Struct_1(true, u_input.b), Struct_1(true, vec3<i32>(u_input.b.x, -24499i, u_input.b.x))), -36081i, 4294967295u), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -10827i, u_input.b.x), u_input.b)).x) & true);
    var var_1 = Struct_3(Struct_2(Struct_1(!arg_1.x, vec3<i32>(global2.b.x, -4350i, 5201i) >> (vec3<u32>(u_input.c, 113542u, 51351u) % vec3<u32>(32u))), Struct_1(arg_1.x, abs(global2.b)), func_2(_wgslsmith_f_op_vec2_f32(-global3.xy))), firstLeadingBit(global2.b.x), u_input.a.x);
    var var_2 = 4965i;
    var var_3 = var_1.b >= -(abs(-var_1.b) & u_input.b.x);
    return Struct_3(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-191f, global3.x) - vec2<f32>(global3.x, 1878f))), var_1.a.b, func_2(vec2<f32>(203f, _wgslsmith_f_op_f32(f32(-1f) * -1924f)))), _wgslsmith_mult_i32(1i, -2147483647i), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, arg_0.x, u_input.a.x) | vec4<u32>(var_1.c, 12087u, arg_0.x, 4294967295u), ~vec4<u32>(1u, u_input.a.x, u_input.a.x, arg_0.x)), var_1.c));
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(4100u, u_input.c), u_input.c) >> (vec2<u32>(48620u, ~_wgslsmith_clamp_u32(4294967295u, 53073u, u_input.a.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(47566u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, 1u), u_input.a.zy, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8565u, 24u)], 24u)], global1[_wgslsmith_index_u32(1u, 24u)]))), select(max(vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(global1[_wgslsmith_index_u32(83797u, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)])), _wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)), vec2<u32>(17870u, u_input.a.x)), 310f == _wgslsmith_f_op_f32(sign(global3.x)))));
    let var_1 = func_5(_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(42373u, 4u)], _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, 1u), 24u)], 4u)], ~vec3<u32>(u_input.a.x, global1[_wgslsmith_index_u32(777u, 24u)], global1[_wgslsmith_index_u32(41345u, 24u)])))), select(select(select(!vec4<bool>(global2.a, false, global2.a, global2.a), !vec4<bool>(false, true, false, global2.a), select(vec4<bool>(true, global2.a, false, false), vec4<bool>(true, global2.a, global2.a, global2.a), vec4<bool>(global2.a, true, global2.a, global2.a))), !(!vec4<bool>(global2.a, global2.a, true, true)), vec4<bool>(all(vec3<bool>(global2.a, global2.a, false)), global2.a, true, global2.a)), select(func_4(func_2(global3.yy), Struct_3(Struct_2(Struct_1(false, vec3<i32>(2147483647i, global2.b.x, u_input.b.x)), Struct_1(global2.a, global2.b), Struct_1(false, global2.b)), -2147483647i, 58998u), min(u_input.b, global2.b)), !select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(global2.a, global2.a, global2.a, false), false), func_2(_wgslsmith_f_op_vec2_f32(-global3.zy)).a), true), max(~vec3<u32>(1u ^ u_input.c, ~0u, global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 24u)], 24u)], 24u)]), 24u)]), vec3<u32>(select(47825u, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(34431u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0, 24u)], 24u)], 24u)]), 24u)], any(vec3<bool>(true, false, global2.a))), reverseBits(global1[_wgslsmith_index_u32(var_0, 24u)] & 0u), _wgslsmith_dot_vec2_u32(~u_input.a.xx, vec2<u32>(4294967295u, u_input.a.x)))));
    global1 = array<u32, 24>();
    let var_2 = global3.zy;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -1417f, var_2.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(196f, global3.x, -1000f, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(344f, 395f, global3.x, -901f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-758f - global3.x), -1534f, -197f, global3.x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, 1210f, global3.x, global3.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 1768f, 1404f)))))));
    var var_0 = u_input.b.x;
    var var_1 = Struct_2(func_5(countOneBits(vec3<u32>(min(u_input.a.x, 1u), ~0u, ~global1[_wgslsmith_index_u32(4294967295u, 24u)])), select(vec4<bool>(2147483647i <= u_input.b.x, !global2.a, global2.a, global2.a || global2.a), vec4<bool>(global2.a, false, false && global2.a, func_2(vec2<f32>(global3.x, 1000f)).a), vec4<bool>(func_5(vec3<u32>(63530u, u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 24u)], 24u)]), vec4<bool>(global2.a, true, true, true), u_input.a).a.b.a, global2.a, global2.a, true)), u_input.a).a.a, Struct_1(global2.a, ~(~min(vec3<i32>(u_input.b.x, -2147483647i, global2.b.x), u_input.b))), func_2(vec2<f32>(global3.x, global3.x)));
    global1 = array<u32, 24>();
    let var_2 = var_1.b.b.zz;
    let var_3 = -1881f;
    var_0 = _wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_clamp_i32(func_5(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a) & min(global0[_wgslsmith_index_u32(61185u, 4u)], vec3<u32>(25612u, global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u)), vec4<bool>(func_2(vec2<f32>(2245f, 1052f)).a, select(false, var_1.c.a, true), true, !var_1.c.a), global0[_wgslsmith_index_u32(u_input.c, 4u)]).b, -12547i, 17448i), u_input.b.x);
    let var_4 = vec2<bool>(all(func_4(Struct_1(global2.a, ~vec3<i32>(var_1.b.b.x, 2147483647i, -1i)), func_5(min(u_input.a, vec3<u32>(1u, 58477u, u_input.a.x)), !vec4<bool>(global2.a, global2.a, false, global2.a), vec3<u32>(1u, u_input.a.x, 50343u)), var_1.c.b).zw), global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global3.xyw), vec2<i32>(-30671i, min(var_2.x, ~(-global2.b.x))));
}

