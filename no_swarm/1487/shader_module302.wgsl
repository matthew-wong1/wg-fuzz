struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-24345i, -19570i, i32(-2147483648), -27327i, 51418i, 9500i, 22751i, 2147483647i);

var<private> global1: i32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(i32(-1i) * -29507i);
    var var_1 = 11046u;
    var var_2 = !(!select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_3 = Struct_4(-544f);
    global0 = array<i32, 8>();
    return Struct_2(_wgslsmith_div_i32(-851i >> (1u % 32u), 0i | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, var_0.a, u_input.e.x, -2147483647i) >> (u_input.c % vec4<u32>(32u)), ~vec4<i32>(global0[_wgslsmith_index_u32(0u, 8u)], 28080i, 3562i, u_input.e.x))));
}

fn func_3(arg_0: Struct_4) -> f32 {
    global1 = u_input.e.x;
    let var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(97590u >= u_input.d.x, false), all(vec4<bool>(true, true, true, true))), vec2<bool>(!(u_input.d.x == u_input.d.x), (u_input.c.x ^ 1u) != u_input.c.x), !vec2<bool>(all(vec2<bool>(false, false)), all(vec2<bool>(false, true)))), !vec2<bool>(~4294967295u == u_input.a.x, any(vec2<bool>(true, true))), vec2<bool>(true, true));
    global1 = global0[_wgslsmith_index_u32(u_input.b, 8u)];
    var var_1 = arg_0.a;
    var var_2 = Struct_3(Struct_2(u_input.e.x), var_0);
    return 534f;
}

fn func_2() -> vec2<bool> {
    var var_0 = !(!all(select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)))));
    var var_1 = vec4<f32>(-532f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(891f, 387f)) + -1886f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1274f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)))), _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(f32(-1f) * -906f))))), -347f);
    global1 = ~_wgslsmith_add_i32(-min(u_input.e.x, abs(-38855i)), u_input.e.x);
    let var_2 = 1u;
    var var_3 = select(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), u_input.d.x < u_input.b), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), false), !select(vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(false, true, false), all(vec4<bool>(false, false, false, true)) || true), true);
    return select(var_3.zy, select(vec2<bool>(true, true), var_3.zx, !var_3.x), true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(370f, _wgslsmith_f_op_f32(-1347f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-718f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1068f)))), _wgslsmith_f_op_f32(900f - -1237f));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_div_f32(-116f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x);
    let var_1 = true;
    var var_2 = abs(vec2<i32>(_wgslsmith_mod_i32(u_input.e.x, _wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_1.a.a, 0i), u_input.e), min(vec2<i32>(1i, 0i), u_input.e))), 2147483647i));
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec4_u32(u_input.c, firstLeadingBit(vec4<u32>(4294967295u, 5846u, 6387u, u_input.c.x))), u_input.a.x, max(~countOneBits(firstLeadingBit(54261u)), u_input.a.x), _wgslsmith_add_u32((~25388u >> (u_input.a.x % 32u)) >> (~4294967295u % 32u), ~abs(~742u)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1437f), _wgslsmith_f_op_f32(floor(-148f))), var_0.x, -485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - -1728f)), vec4<f32>(-125f, var_0.x, 221f, var_0.x))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-176f + _wgslsmith_f_op_f32(270f + var_0.x)))), 731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(588f - 1220f))), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(_wgslsmith_add_vec3_i32(-countOneBits(-vec3<i32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], u_input.e.x)), vec3<i32>(28563i, 1i, u_input.e.x)), vec3<i32>(-3030i, ~global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.e.x) << (vec3<u32>(firstLeadingBit(71490u ^ u_input.c.x), ~0u & (u_input.b ^ 16511u), 13894u) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -360f), -330f, -779f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1699f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(func_1(), func_2()), Struct_3(Struct_2(2147483647i), vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1092f, 1397f, -363f))))));
    global0 = array<i32, 8>();
    global1 = ~1i;
    global1 = 1i;
    let var_2 = _wgslsmith_sub_vec3_i32(-vec3<i32>(-21219i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-22740i, u_input.e.x), u_input.e), ~u_input.e), max(-2147483647i, -19979i)), vec3<i32>(var_0.x, _wgslsmith_clamp_i32(1i << (min(u_input.c.x, 0u) % 32u), 34532i & var_0.x, global0[_wgslsmith_index_u32(u_input.d.x, 8u)]), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.e.x), vec3<i32>(-1i, u_input.e.x, var_0.x)), vec3<i32>(62601i, u_input.e.x, var_0.x))));
    var_1 = vec4<f32>(-139f, var_1.x, var_1.x, 998f);
    global0 = array<i32, 8>();
    global1 = 26049i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.wwx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-1018f, -524f, var_1.x), var_1.wxx))) - _wgslsmith_f_op_vec3_f32(sign(var_1.zwz)))));
}

