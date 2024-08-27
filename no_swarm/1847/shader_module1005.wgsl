struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 17> = array<i32, 17>(1i, i32(-2147483648), -1308i, i32(-2147483648), -1i, 15733i, -46045i, -1i, i32(-2147483648), -51781i, -1i, 1i, 37905i, 17208i, -25728i, i32(-2147483648), 2147483647i);

var<private> global2: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-1132f, 653f), vec2<f32>(-1000f, 318f), vec2<f32>(-1373f, 437f), vec2<f32>(-1000f, -1399f), vec2<f32>(1017f, -808f), vec2<f32>(-361f, 247f), vec2<f32>(-397f, -2701f), vec2<f32>(304f, 362f), vec2<f32>(-451f, -777f), vec2<f32>(-1255f, -996f), vec2<f32>(276f, -1273f), vec2<f32>(-928f, -476f), vec2<f32>(-1085f, 1556f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_2.wyx;
    var var_1 = select(vec2<bool>(true, false), var_0.xy, arg_2.zx);
    global1 = array<i32, 17>();
    global0 = global2[_wgslsmith_index_u32(abs(arg_1), 13u)];
    let var_2 = vec3<bool>(!(var_1.x & false), any(select(!select(arg_2.xw, var_0.yz, true), !(!vec2<bool>(var_1.x, false)), !(!var_0.xy))), var_1.x);
    return 54190u;
}

fn func_2() -> Struct_1 {
    global2 = array<vec2<f32>, 13>();
    var var_0 = 113f;
    global2 = array<vec2<f32>, 13>();
    var var_1 = Struct_4(~(_wgslsmith_sub_u32(~u_input.a.x, 0u << (u_input.a.x % 32u)) ^ 0u), _wgslsmith_f_op_f32(-global0.x), vec3<u32>(u_input.b.x & max(~u_input.a.x, 73348u), u_input.a.x, u_input.b.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    return Struct_1(vec4<u32>(reverseBits(var_1.c.x), func_3(Struct_4(var_1.a | 50689u, _wgslsmith_div_f32(740f, var_1.b), ~vec3<u32>(u_input.a.x, 523u, var_1.a)), min(abs(4684u), ~4294967295u), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), true)), 48056u, select(_wgslsmith_mult_u32(17098u, u_input.b.x >> (19115u % 32u)), u_input.b.x, !all(vec4<bool>(true, false, false, false)))), vec2<u32>((var_1.c.x | 2411u) | 4294967295u, select(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a), ~vec4<u32>(var_1.c.x, u_input.b.x, 36251u, 23064u)), 43788u, true)), vec4<i32>(1i, (_wgslsmith_sub_i32(12539i, 40869i) << (_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) % 32u)) & global1[_wgslsmith_index_u32(81026u, 17u)], max(2147483647i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(14745u, 17u)], global1[_wgslsmith_index_u32(var_1.c.x, 17u)], -12214i), vec3<i32>(2147483647i, -52809i, global1[_wgslsmith_index_u32(0u, 17u)]))), reverseBits(global1[_wgslsmith_index_u32(1u, 17u)])), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), true), true));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global1 = array<i32, 17>();
    let var_0 = ~max(~u_input.a.x, 456u);
    let var_1 = Struct_2(Struct_1(select(u_input.a, vec4<u32>(4294967295u, 6552u, u_input.b.x ^ var_0, min(u_input.b.x, arg_0.a)), vec4<bool>(true, true, false, false)), vec2<u32>(0u, ~(~34137u)), vec4<i32>(~(~global1[_wgslsmith_index_u32(u_input.b.x, 17u)]), global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(var_0, 17u)], (global1[_wgslsmith_index_u32(8435u, 17u)] ^ global1[_wgslsmith_index_u32(115890u, 17u)]) & -global1[_wgslsmith_index_u32(0u, 17u)]), !vec2<bool>(all(vec2<bool>(false, true)), true)), func_2(), u_input.a.x, arg_0.b, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(arg_0.c.x, arg_0.a), ~4294967295u, 28510u, ~4294967295u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, u_input.a.x, 0u, arg_0.c.x), u_input.a)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u), arg_0.c.zx, vec2<u32>(4294967295u, var_0)), firstLeadingBit(firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(1575u, 17u)], 0i, global1[_wgslsmith_index_u32(9073u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))) << (u_input.a % vec4<u32>(32u)), vec2<bool>(true, true)));
    var var_2 = 1769f;
    let var_3 = Struct_4(~arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b)) - var_1.d), _wgslsmith_add_vec3_u32(~u_input.a.yxz, _wgslsmith_div_vec3_u32(u_input.b, vec3<u32>(u_input.a.x, ~u_input.a.x, ~arg_0.a))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_4(u_input.a.x, -553f, _wgslsmith_sub_vec3_u32(u_input.a.zyw, reverseBits(vec3<u32>(1u, u_input.a.x, u_input.b.x)))));
    global2 = array<vec2<f32>, 13>();
    let var_1 = Struct_4(min(u_input.b.x, ~_wgslsmith_mod_u32(u_input.b.x, ~4294967295u)), var_0.d, vec3<u32>(4294967295u, firstTrailingBit(49u), ~55008u) | firstLeadingBit(~func_1(Struct_4(1u, 1227f, vec3<u32>(0u, 4294967295u, u_input.b.x))).a.a.yxy));
    var var_2 = func_1(Struct_4(~(_wgslsmith_clamp_u32(1u, 29242u, u_input.a.x) << (abs(var_1.c.x) % 32u)), -690f, _wgslsmith_mult_vec3_u32(u_input.a.wzx, countOneBits(vec3<u32>(var_1.c.x, var_0.e.a.x, 16223u))))).b;
    let var_3 = Struct_2(Struct_1(vec4<u32>(1u, 0u, _wgslsmith_clamp_u32(var_2.b.x, max(var_2.b.x, 71837u), 1u), var_2.b.x), _wgslsmith_mod_vec2_u32(vec2<u32>(~var_2.b.x, ~1u), ~select(u_input.b.xx, vec2<u32>(1u, u_input.a.x), var_0.e.d)), -func_1(var_1).e.c, !func_2().d), var_0.b, 1u, -234f, func_2());
    let var_4 = func_1(Struct_4(_wgslsmith_sub_u32(~var_1.c.x, _wgslsmith_div_u32(1u, u_input.a.x)), -1184f, ~var_3.e.a.xzy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, -545f, global0.x, var_1.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0.d, 938f, var_4.a.d.x)), func_1(var_1).d, global0.x, _wgslsmith_div_f32(var_3.d, -217f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-772f, var_3.d, var_0.d, 380f)))) * vec4<f32>(var_4.d, _wgslsmith_f_op_f32(func_1(var_1).d + _wgslsmith_f_op_f32(-var_1.b)), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1316f))), _wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.a.x ^ var_1.c.x, ~0u), 17u)], var_0.b.c.x, -2147483647i, 1i), var_2.c), -(~vec3<i32>(max(global1[_wgslsmith_index_u32(var_2.a.x, 17u)], 0i), reverseBits(var_0.b.c.x), -5284i)));
}

