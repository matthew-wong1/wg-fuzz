struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_sub_vec4_i32(select(-(vec4<i32>(u_input.a, 0i, global0[_wgslsmith_index_u32(arg_0.x, 21u)], global0[_wgslsmith_index_u32(arg_2.x, 21u)]) << (vec4<u32>(45712u, 1340u, arg_2.x, arg_0.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -17587i, 20826i, -1i)), ~vec4<i32>(76653i, 2147483647i, -1i, -59584i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(arg_2.x, 21u)], global0[_wgslsmith_index_u32(arg_0.x, 21u)], 17124i)), arg_1.x), _wgslsmith_mult_vec4_i32(~(-vec4<i32>(2147483647i, 13860i, global0[_wgslsmith_index_u32(arg_2.x, 21u)], 2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1172u, 21u)], -2571i, 1i, u_input.a), -vec4<i32>(0i, -3698i, 17047i, 33177i)))), Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 21u)], 1i) & (vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 21u)]) ^ vec2<i32>(-21619i, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-15701i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 21u)], -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 21u)], u_input.a)) >> (arg_0.zz % vec2<u32>(32u))), ~arg_2, any(vec2<bool>(true, all(arg_1.wy)))));
    global0 = array<i32, 21>();
    var_0 = Struct_3(-var_0.a, var_0.b);
    return (35567u ^ _wgslsmith_dot_vec2_u32(var_0.b.b.wy, vec2<u32>(arg_0.x, ~4294967295u))) < (~_wgslsmith_mod_u32(~arg_0.x, var_0.b.b.x >> (var_0.b.b.x % 32u)) >> (9671u % 32u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = ~92921u;
    var var_1 = any(select(vec2<bool>(true, true), vec2<bool>(func_3(_wgslsmith_div_vec3_u32(vec3<u32>(16343u, 39761u, 18437u), vec3<u32>(68668u, 64520u, 51102u)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), false), vec4<u32>(1u, 1u, 1u, 1u)), false), true));
    let var_2 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_div_i32(17688i, abs(i32(-1i) * -2147483647i))), ~1i);
    var var_3 = all(vec4<bool>(true, func_3(vec3<u32>(~0u, 4294967295u, ~0u), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), vec4<u32>(1u, 1u, 1u, 1u)), all(vec4<bool>(false, select(true, false, true), false, true)), false));
    let var_4 = Struct_1(vec2<i32>(reverseBits(var_2), countOneBits(max(_wgslsmith_sub_i32(4594i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(40614u, 21u)], 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 21u)], 4994i))))), vec4<u32>(11778u, 16080u, 0u, ~(21289u << (1u % 32u))), all(!vec3<bool>(any(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, false)), false)));
    return var_4;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2507f + -1029f) - _wgslsmith_f_op_f32(trunc(148f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(865f)), _wgslsmith_f_op_f32(f32(-1f) * -310f)))) - _wgslsmith_f_op_f32(381f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(551f, 430f)))))));
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f - _wgslsmith_f_op_f32(trunc(1f))));
    var var_1 = ~abs(firstLeadingBit(-(8267i ^ global0[_wgslsmith_index_u32(arg_0, 21u)])));
    return ~arg_1.b.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>, arg_3: bool) -> vec2<f32> {
    let var_0 = Struct_4(Struct_2(select(!vec2<bool>(false, arg_3), !(!vec2<bool>(arg_3, false)), arg_3), 1i, arg_0.yx), Struct_3(~max(firstTrailingBit(vec4<i32>(u_input.a, 84i, 2147483647i, -22539i)), vec4<i32>(2147483647i, u_input.a, global0[_wgslsmith_index_u32(arg_1.x, 21u)], global0[_wgslsmith_index_u32(arg_2.x, 21u)]) ^ vec4<i32>(global0[_wgslsmith_index_u32(0u, 21u)], u_input.a, 9590i, u_input.a)), Struct_1(vec2<i32>(36801i, abs(global0[_wgslsmith_index_u32(arg_1.x, 21u)])), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1281f), vec4<f32>(733f, arg_0.x, -421f, arg_0.x))).b, true)));
    global0 = array<i32, 21>();
    var var_1 = Struct_3(reverseBits((_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a, 0i, u_input.a), var_0.b.a) & vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 21u)], global0[_wgslsmith_index_u32(64758u, 21u)], u_input.a, u_input.a)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.b.b.x, 0u, var_0.b.b.b.x, arg_1.x), ~var_0.b.b.b) % vec4<u32>(32u))), Struct_1(vec2<i32>(i32(-1i) * -var_0.b.a.x, min(global0[_wgslsmith_index_u32(select(0u, 4294967295u, false), 21u)], ~(-1i))), _wgslsmith_mod_vec4_u32(vec4<u32>(select(0u, arg_2.x, arg_3), 2027u, arg_2.x, var_0.b.b.b.x), var_0.b.b.b), any(var_0.a.a)));
    var_1 = var_0.b;
    var var_2 = firstLeadingBit(~var_1.b.b);
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.xy * _wgslsmith_f_op_vec2_f32(abs(arg_0.zy))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.a.c * vec2<f32>(var_0.a.c.x, -542f))))), var_0.a.c)));
}

fn func_1() -> Struct_2 {
    global0 = array<i32, 21>();
    global0 = array<i32, 21>();
    return Struct_2(vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true)) || all(vec4<bool>(true, true, true, false)), true), u_input.a, _wgslsmith_f_op_vec2_f32(func_5(vec3<f32>(1f, 1f, 1f), vec3<u32>(1u, 1u, ~55704u), vec2<u32>(0u, func_4(1u, func_2(vec4<f32>(291f, -274f, -528f, -2302f)))), func_3(vec3<u32>(max(52183u, 60464u), 44931u, 1u), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), true), vec4<u32>(1u, 1u, 1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    let var_1 = var_0;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f + -1056f)), _wgslsmith_f_op_f32(floor(-164f)));
    var var_3 = Struct_5(Struct_4(func_1(), Struct_3(min(-vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], 0i), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], 2543i, -811i, 1i), vec4<i32>(64873i, global0[_wgslsmith_index_u32(895u, 21u)], 24328i, global0[_wgslsmith_index_u32(4294967295u, 21u)]))), Struct_1(-vec2<i32>(u_input.a, -2147483647i), select(vec4<u32>(0u, 6502u, 22389u, 12671u), vec4<u32>(1u, 1u, 37259u, 4294967295u), vec4<bool>(false, false, true, true)), false))), _wgslsmith_f_op_f32(-352f - var_1));
    let var_4 = vec2<i32>(2147483647i, i32(-1i) * -32836i);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(0u, var_3.a.b.b.b.x ^ 0u, reverseBits(var_3.a.b.b.b.x), 0u)) >> (var_3.a.b.b.b % vec4<u32>(32u)), func_2(vec4<f32>(var_3.b, _wgslsmith_f_op_f32(var_1 * -636f), var_2, -1010f)).b.x, var_3.a.a.c, vec4<f32>(-1222f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(386f)))) + var_3.b), 1155f));
}

