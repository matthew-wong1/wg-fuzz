struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 32>;

var<private> global2: array<f32, 6> = array<f32, 6>(708f, 1809f, 929f, -620f, 689f, 2162f);

var<private> global3: f32 = -553f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = false;
    var var_1 = u_input.c.x >> (~(~4294967295u) % 32u);
    global2 = array<f32, 6>();
    var var_2 = countOneBits(u_input.e.zz);
    global1 = array<f32, 32>();
    return abs(~select(~select(u_input.c, u_input.c, vec4<bool>(false, arg_2.d, true, arg_2.d)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, 34401u, 0u, arg_2.c), _wgslsmith_mult_vec4_u32(vec4<u32>(95467u, 22381u, 38706u, 44920u), vec4<u32>(24885u, 0u, arg_1.c, arg_1.c))), _wgslsmith_sub_i32(arg_0, u_input.d.x) == (i32(-1i) * -1i)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = ~(~func_3(88119i, Struct_1(_wgslsmith_div_f32(-625f, -1411f), _wgslsmith_f_op_f32(-arg_0.x), ~arg_1.x, select(false, false, true), _wgslsmith_f_op_vec3_f32(arg_0.wxz * vec3<f32>(arg_0.x, -493f, arg_0.x))), Struct_1(global2[_wgslsmith_index_u32(firstLeadingBit(arg_1.x), 6u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(25994u, 32u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), u_input.c.zw), false, _wgslsmith_f_op_vec3_f32(ceil(arg_0.xzz)))));
    global2 = array<f32, 6>();
    var var_1 = firstTrailingBit(select(vec4<i32>(~u_input.e.x, ~u_input.b.x, u_input.d.x, -59425i), ~(-abs(vec4<i32>(9409i, u_input.a.x, u_input.b.x, -1i))), select(vec4<bool>(u_input.c.x != 0u, true, true, false), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_div_i32(0i, abs(-12072i));
    return Struct_1(571f, 214f, _wgslsmith_add_u32((4294967295u & ~var_2.x) | 19025u, 1u), !(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))) || (-1i == _wgslsmith_mod_i32(var_3, u_input.d.x))), arg_0.xyz);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    var var_0 = arg_1.e;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-369f))))) * -2200f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(425f, arg_1.b), 495f)) - var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(countOneBits(~0u), 32u)] * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1277f)), _wgslsmith_f_op_f32(720f + -1992f), arg_1.d))))));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 781f);
    return 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(11626u >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 46191u, u_input.c.x), vec4<u32>(9575u, u_input.c.x, u_input.c.x, 15746u)) % 32u), 6u)]));
    let var_1 = -375f;
    var var_2 = _wgslsmith_div_i32(abs(u_input.a.x), _wgslsmith_mod_i32(u_input.e.x, -2147483647i)) >> (_wgslsmith_clamp_u32(u_input.c.x, ~func_4(~u_input.d.x, func_2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], -828f, var_0, var_0), vec4<u32>(u_input.c.x, 0u, 10055u, 1u)), vec2<i32>(u_input.d.x, u_input.b.x)), _wgslsmith_clamp_u32(60544u, ~u_input.c.x, (u_input.c.x ^ u_input.c.x) & _wgslsmith_div_u32(u_input.c.x, u_input.c.x))) % 32u);
    var_2 = 1i;
    let var_3 = _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(4294967295u, 32u)], -160f, any(vec2<bool>(true, all(vec2<bool>(false, true))))));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u) ^ (0u >> (u_input.c.x % 32u)), 6u)] + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(abs(u_input.c.x), 6u)], _wgslsmith_div_f32(var_0, 435f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-662f, _wgslsmith_f_op_f32(-1000f - var_3), true)))), _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(min(1271f, _wgslsmith_f_op_f32(f32(-1f) * -263f)))), 4294967295u, false, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 12714u), 92141u | u_input.c.x), 32u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1302f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1350f, 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1, 1157f)) - _wgslsmith_f_op_f32(1607f + -970f)), global1[_wgslsmith_index_u32(~(~u_input.c.x), 32u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(213f, _wgslsmith_f_op_f32(f32(-1f) * -876f));
    global3 = global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 32u)];
    global2 = array<f32, 6>();
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x ^ u_input.c.x, 4294967295u), u_input.c.ww)), 23401u << (u_input.c.x % 32u), ~(~4294967295u), ~(~4294967295u));
    var var_2 = u_input.c;
    var var_3 = func_1();
    var var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, ~u_input.e.x), -_wgslsmith_mod_vec2_i32(u_input.d.wz, ~vec2<i32>(u_input.b.x, u_input.a.x))));
}

