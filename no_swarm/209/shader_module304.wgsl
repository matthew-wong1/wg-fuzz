struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(-130f, 524f, -1160f), vec2<f32>(1207f, 2122f), 1821u, false, -1540f);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-338f, 1116f, -463f), vec2<f32>(-117f, -376f), 0u, false, 294f);

var<private> global2: Struct_2;

var<private> global3: Struct_1;

var<private> global4: array<Struct_3, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    global4 = array<Struct_3, 25>();
    global4 = array<Struct_3, 25>();
    global3 = global2.b;
    var var_0 = ~(-_wgslsmith_mod_i32(1i, ~1i)) | _wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(abs(-1i), -2147483647i, min(61868i, 19662i)));
    let var_1 = global4[_wgslsmith_index_u32(4294967295u, 25u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e - global2.a.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.e)));
}

fn func_2() -> i32 {
    var var_0 = -17530i;
    let var_1 = 13926i;
    var_0 = _wgslsmith_mod_i32(countOneBits(firstLeadingBit(max(~0i, 19337i))), var_1);
    var_0 = var_1;
    global2 = Struct_2(Struct_1(global2.a.a, vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1123f - -636f))), 27672u, true, _wgslsmith_f_op_f32(871f - _wgslsmith_f_op_f32(round(1000f)))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.a.e, -505f, global2.b.b.x), vec3<f32>(-1624f, 1151f, global3.a.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-868f, 640f, global0.b.x) - vec3<f32>(-498f, 1602f, 194f))))), vec2<f32>(1365f, _wgslsmith_f_op_f32(1f - global3.a.x)), global3.c ^ 62143u, global3.d, global0.b.x));
    return _wgslsmith_dot_vec4_i32(max(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(0i, 2147483647i, -42573i), min(-2147483647i, 2147483647i), _wgslsmith_mult_i32(var_1, var_1), min(1i, var_1)), (vec4<i32>(1i, var_1, 2895i, 1i) ^ vec4<i32>(var_1, 10641i, var_1, var_1)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, 0u), vec4<u32>(global1.c, 49692u, 46295u, 1u)) % vec4<u32>(32u))), -(vec4<i32>(var_1, 2147483647i, -1i, -2147483647i) << (select(vec4<u32>(4294967295u, 48685u, global3.c, 1u), vec4<u32>(0u, global3.c, 0u, global0.c), vec4<bool>(true, global2.b.d, true, true)) % vec4<u32>(32u)))), vec4<i32>(26933i, _wgslsmith_mult_i32(1i, -(var_1 >> (u_input.a % 32u))), -2147483647i, 63961i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> bool {
    var var_0 = global2.b;
    let var_1 = global1.c;
    var var_2 = all(vec4<bool>(global0.d, !any(vec2<bool>(true, true)), _wgslsmith_mult_i32(func_2(), arg_1.x & 0i) < _wgslsmith_mult_i32(-2147483647i, -1i), true));
    let var_3 = Struct_2(global2.a, Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, var_0.a, vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(527f, 1408f, global2.a.e))), _wgslsmith_div_vec3_f32(global0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.e, 918f, global1.b.x) - global2.a.a)))), vec2<f32>(_wgslsmith_div_f32(-886f, _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(129f)))), reverseBits(1u), 1262f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), global0.e));
    let var_4 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(var_0.c, _wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, var_3.a.c), _wgslsmith_add_u32(global3.c, global1.c))), _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, global3.c) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), vec2<u32>(1u, global3.c))), vec2<u32>(~(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, var_3.a.c, 29396u, 0u), vec4<u32>(1u, 53874u, 26377u, global2.b.c) ^ vec4<u32>(37924u, 4294967295u, u_input.b, global2.a.c)))));
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-global3.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.b.x, global3.b.x))), _wgslsmith_f_op_f32(trunc(916f))) * vec2<f32>(global0.a.x, 1231f)), 4294967295u, false, global3.a.x);
    var var_1 = vec2<bool>(all(!vec3<bool>(false, global1.d, all(vec4<bool>(false, var_0.d, true, true)))), !(!func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(321f, global2.b.b.x, global1.e), vec3<f32>(var_0.b.x, var_0.b.x, -849f))), -vec2<i32>(37018i, -2147483647i))));
    global1 = var_0;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-400f, var_0.b.x, _wgslsmith_f_op_f32(abs(840f))))), var_0.a.yz, min(firstTrailingBit(0u), u_input.a), false, -1096f), Struct_1(global0.a, global0.a.yz, abs(global0.c), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.e, global3.e))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_0.a + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(global0.a, global0.a))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.e, _wgslsmith_f_op_f32(round(1078f)), _wgslsmith_f_op_f32(-global1.e)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global2.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -176f)) - global1.a));
    global1 = var_0;
    let var_4 = !select(any(vec4<bool>(global0.d, false, true, global2.b.d)), countOneBits(-1i) < func_2(), global1.d) | !var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<u32>(firstTrailingBit(0u), global3.c, _wgslsmith_div_u32(0u, var_2.b.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, var_2.a.c, 0u, global3.c), vec4<u32>(35208u, 27945u, 17247u, var_0.c)))), -reverseBits(i32(-1i) * -29413i), _wgslsmith_f_op_f32(max(var_3.x, -579f)), vec4<f32>(2052f, 168f, var_3.x, _wgslsmith_f_op_f32(trunc(639f))));
}

