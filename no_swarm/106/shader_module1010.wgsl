struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: f32;

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: array<vec4<u32>, 5>;

var<private> global4: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-1342f, 78366u), Struct_1(-1289f, 2234u), Struct_1(-360f, 0u), Struct_1(-387f, 79099u), Struct_1(-1000f, 2333u), Struct_1(793f, 0u), Struct_1(1716f, 1u), Struct_1(981f, 30400u), Struct_1(1414f, 1u), Struct_1(-1288f, 4294967295u), Struct_1(610f, 4294967295u), Struct_1(-732f, 31009u), Struct_1(-411f, 61245u), Struct_1(-925f, 1u), Struct_1(1338f, 12177u), Struct_1(775f, 0u), Struct_1(-441f, 0u), Struct_1(1643f, 1u), Struct_1(-2745f, 39094u), Struct_1(-1786f, 37373u), Struct_1(794f, 1u), Struct_1(-407f, 1u), Struct_1(569f, 4294967295u), Struct_1(1092f, 31306u), Struct_1(-847f, 0u), Struct_1(-223f, 14437u), Struct_1(-535f, 4294967295u), Struct_1(-162f, 4294967295u), Struct_1(-1176f, 27641u), Struct_1(-1248f, 66546u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> bool {
    global4 = array<Struct_1, 30>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.c.b, _wgslsmith_mod_u32(~arg_2.c.b, 0u)), 24u)];
    let var_1 = -6560i;
    global2 = array<vec3<i32>, 24>();
    let var_2 = arg_1;
    return all(select(vec4<bool>((u_input.c ^ 68523i) > ~35967i, -var_0.x >= -5629i, !arg_2.e.x, true), select(arg_0, !vec4<bool>(arg_2.e.x, false, true, arg_2.e.x), false), arg_0));
}

fn func_3() -> u32 {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1727f))))));
    return u_input.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    global2 = array<vec3<i32>, 24>();
    let var_0 = firstLeadingBit(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, 37114i)), vec4<i32>(-31781i, -9008i, u_input.c, u_input.c) >> (vec4<u32>(arg_1.c.b, arg_0.b, u_input.a.x, arg_1.c.b) % vec4<u32>(32u))), vec4<i32>(u_input.c >> (26997u % 32u), _wgslsmith_mod_i32(-5422i, u_input.c), -21116i, 1i))) & ~min(-vec4<i32>(-31951i, u_input.c, u_input.c, u_input.c), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, u_input.c, 15416i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 88132i, -1i, 23458i), vec4<i32>(-2147483647i, -42861i, u_input.c, 0i))));
    var var_1 = arg_2.d.b;
    let var_2 = ~(~((var_0.xy << (u_input.a.yy % vec2<u32>(32u))) | vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, -2390i, 3875i), i32(-1i) * -4405i)));
    let var_3 = !vec4<bool>(all(!vec2<bool>(false, arg_1.e.x)) || true, arg_1.e.x, arg_2.e.x & (all(vec4<bool>(false, arg_2.e.x, false, true)) && true), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: bool) -> u32 {
    let var_0 = -40276i;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f));
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(50961u, 1u), _wgslsmith_add_vec2_u32(u_input.b, u_input.b)), firstLeadingBit(firstLeadingBit(u_input.b))), 28u)], Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-312f * -1061f), arg_1.x ^ u_input.d), Struct_2(global0[_wgslsmith_index_u32(func_3(), 28u)], Struct_1(465f, 4294967295u), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 30u)], Struct_1(-1553f, 4294967295u), vec3<bool>(true, true, true)), Struct_2(global0[_wgslsmith_index_u32(arg_1.x, 28u)], Struct_1(-1119f, 1u), global4[_wgslsmith_index_u32(~4294967295u, 30u)], global4[_wgslsmith_index_u32(1u, 30u)], !vec3<bool>(true, arg_2, false)))), arg_1.x), global4[_wgslsmith_index_u32(~1u, 30u)], global0[_wgslsmith_index_u32(~(~select(arg_1.x, 4294967295u, arg_2)) & ~u_input.a.x, 28u)], select(vec3<bool>(true, true, !any(vec2<bool>(arg_2, arg_2))), vec3<bool>(select(false, false, false), false, 1u <= ~arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) + 1283f) < _wgslsmith_f_op_f32(round(1790f))));
    var var_2 = 583f;
    global1 = 1197f;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1940f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1992f, 222f))))), 1u);
    var var_1 = Struct_1(587f, func_2(vec3<i32>(23012i, select(2147483647i, -11450i, func_1(vec4<bool>(false, true, false, true), vec4<f32>(var_0.a, 1000f, var_0.a, var_0.a), Struct_2(global4[_wgslsmith_index_u32(0u, 30u)], global4[_wgslsmith_index_u32(var_0.b, 30u)], global4[_wgslsmith_index_u32(u_input.a.x, 30u)], global4[_wgslsmith_index_u32(u_input.a.x, 30u)], vec3<bool>(false, true, false)), -251f)), ~u_input.c), countOneBits(vec2<u32>(u_input.b.x, var_0.b) ^ firstLeadingBit(vec2<u32>(var_0.b, var_0.b))), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)) | false));
    var var_2 = vec2<i32>(-1i, select(-2517i, ~_wgslsmith_add_i32(1i, u_input.c), func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -704f, var_0.a, var_1.a) + vec4<f32>(var_0.a, -1000f, 3044f, -1913f))), Struct_2(Struct_1(var_0.a, 25074u), Struct_1(var_1.a, 1u), global4[_wgslsmith_index_u32(min(0u, var_0.b), 30u)], Struct_1(var_1.a, u_input.d), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), -2756f)));
    let var_3 = countOneBits(vec3<u32>(var_0.b, _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(1u, var_0.b, var_1.b, 0u)), countOneBits(firstTrailingBit(u_input.a))), _wgslsmith_mod_u32(var_1.b, ~u_input.d)));
    var_0 = global4[_wgslsmith_index_u32(reverseBits(~u_input.b.x), 30u)];
    var var_4 = ~(-6630i);
    global4 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~((abs(vec4<i32>(-2147483647i, -8174i, var_2.x, 29176i)) << (~global3[_wgslsmith_index_u32(var_1.b, 5u)] % vec4<u32>(32u))) >> (global3[_wgslsmith_index_u32(0u, 5u)] % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a, 1422f, -226f), vec3<f32>(var_1.a, var_1.a, 795f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 236f, 393f)), true)))), select(vec2<u32>(var_1.b, ~select(var_1.b, 61329u, false)), _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 70457u), vec2<u32>(3211u, 4294967295u)), vec2<u32>(var_0.b, ~var_0.b)), true));
}

