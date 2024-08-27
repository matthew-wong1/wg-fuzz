struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(-1527i, 2147483647i, 1i, 49207i, 1i, 26730i, 14546i, -19076i, 14007i, 22482i, -37185i, 6143i, -3716i, 55071i, 0i, -176i, -47632i, 0i, 1i, -1i, -6230i, -34368i);

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(0u, 17498u), vec2<u32>(9097u, 1u), vec2<u32>(33446u, 1u), vec2<u32>(59936u, 36586u), vec2<u32>(1u, 34827u), vec2<u32>(1u, 53266u), vec2<u32>(0u, 75146u), vec2<u32>(4979u, 74501u), vec2<u32>(0u, 23439u));

var<private> global2: array<bool, 32>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> bool {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(countOneBits(1i), _wgslsmith_div_i32(~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 22u)], arg_2), -19787i)), -select(_wgslsmith_mult_i32(-arg_2, _wgslsmith_add_i32(arg_2, global0[_wgslsmith_index_u32(1u, 22u)])), -43989i, global2[_wgslsmith_index_u32(abs(u_input.c ^ arg_0), 32u)]));
    let var_1 = vec2<bool>(any(!vec2<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 32u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 32u)])), true)), !select(_wgslsmith_mod_i32(arg_2, arg_2) != select(arg_2, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true), false, !global2[_wgslsmith_index_u32(arg_0, 32u)] && true));
    var var_2 = 1532f;
    var var_3 = !(!vec4<bool>(var_1.x, global2[_wgslsmith_index_u32(arg_1.x, 32u)], all(select(vec2<bool>(var_1.x, false), vec2<bool>(false, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 32u)]))), !any(vec4<bool>(var_1.x, var_1.x, false, var_1.x))));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f * 896f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(618f, 211f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -657f) + -334f))), -222f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-917f - 233f) - _wgslsmith_f_op_f32(-906f * -566f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(334f)), -1693f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(346f - -383f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(448f, -235f) - _wgslsmith_f_op_f32(min(1041f, 498f))))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    global1 = array<vec2<u32>, 9>();
    global1 = array<vec2<u32>, 9>();
    global0 = array<i32, 22>();
    global2 = array<bool, 32>();
    global3 = array<Struct_1, 11>();
    return !vec2<bool>(select(all(select(vec2<bool>(false, false), vec2<bool>(arg_1, false), arg_1)), false, true), (_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(62088u, 22u)], global0[_wgslsmith_index_u32(9695u, 22u)], 16235i, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<i32>(global0[_wgslsmith_index_u32(98739u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])) >= global0[_wgslsmith_index_u32(u_input.b.x, 22u)]) || select(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)])), true, global0[_wgslsmith_index_u32(1u, 22u)] >= -2147483647i));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = all(func_4(Struct_1(arg_1.a), func_3(~(47922u & arg_0), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.c, u_input.b.x, arg_0, 6701u)), ~vec4<u32>(35636u, arg_0, 1u, 1u)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(21792u, 22u)], global0[_wgslsmith_index_u32(38991u, 22u)])), vec3<i32>(-9902i, -4637i, 12920i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, arg_1.a)))), Struct_1(_wgslsmith_f_op_f32(-arg_1.a))));
    global0 = array<i32, 22>();
    global3 = array<Struct_1, 11>();
    global0 = array<i32, 22>();
    var var_1 = arg_1;
    return arg_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = array<bool, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - arg_0.a);
    let var_1 = (~(~(~vec4<u32>(u_input.c, u_input.b.x, u_input.c, u_input.c))) ^ vec4<u32>(u_input.b.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), 73083u, max(u_input.b.x, u_input.c) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4754u, u_input.a.x, 29743u), vec4<u32>(u_input.c, u_input.b.x, 1u, 18431u)))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(~1u, 10364u, 46495u, ~u_input.b.x) | ~(~vec4<u32>(1u, 71946u, u_input.b.x, 1u)), vec4<u32>(u_input.a.x | ~u_input.a.x, ~u_input.a.x, 4294967295u, ~(~1u)));
    global0 = array<i32, 22>();
    let var_2 = func_2(~(~6096u), func_2(~var_1.x | abs(min(17674u, 0u)), global3[_wgslsmith_index_u32(u_input.a.x, 11u)]));
    return func_2(reverseBits(var_1.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1166f - var_2.a))) - var_2.a)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> u32 {
    let var_0 = abs(_wgslsmith_div_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(294i, 7703i)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global0[_wgslsmith_index_u32(1u, 22u)]), vec2<i32>(-25035i, global0[_wgslsmith_index_u32(35032u, 22u)]), -vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 22u)], 11998i)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(arg_0.a, arg_0.a)) * _wgslsmith_f_op_f32(arg_3 * _wgslsmith_f_op_f32(arg_1.a * 908f))) + _wgslsmith_f_op_f32(-func_2(~63432u, func_5(arg_1)).a)));
    global1 = array<vec2<u32>, 9>();
    let var_2 = var_0;
    var var_3 = u_input.a.x;
    return 0u;
}

fn func_1(arg_0: u32, arg_1: bool) -> u32 {
    let var_0 = -2147483647i;
    global2 = array<bool, 32>();
    var var_1 = -663f;
    let var_2 = vec3<bool>(true, false, all(select(select(vec4<bool>(true, arg_1, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, arg_1, global2[_wgslsmith_index_u32(1u, 32u)], true), false), vec4<bool>(global2[_wgslsmith_index_u32(48947u, 32u)], false, arg_1, false)), vec4<bool>(!arg_1, global2[_wgslsmith_index_u32(27445u, 32u)] == global2[_wgslsmith_index_u32(u_input.a.x, 32u)], arg_1, true), arg_1)));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(642f, -1059f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-533f)), 301f, false)) * -1282f));
    return func_6(func_5(func_2(arg_0, Struct_1(330f))), Struct_1(1000f), global2[_wgslsmith_index_u32(reverseBits(u_input.b.x), 32u)] | false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(798f, 627f)))))));
}

fn func_7(arg_0: vec3<bool>) -> StorageBuffer {
    global3 = array<Struct_1, 11>();
    global0 = array<i32, 22>();
    var var_0 = !select(vec4<bool>(all(!arg_0), ~u_input.b.x == reverseBits(u_input.a.x), true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(firstTrailingBit(~0u), 32u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)]) >= _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), func_3(max(u_input.b.x, 1u), abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a.x, u_input.c)), global0[_wgslsmith_index_u32(u_input.b.x, 22u)])), vec4<bool>(!arg_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 32u)] && true, global2[_wgslsmith_index_u32(~(~4294967295u), 32u)], ~67759i > _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 22u)], 7656i)));
    let var_1 = func_2(4294967295u & _wgslsmith_mod_u32(55073u, _wgslsmith_add_u32(u_input.c, ~1u)), global3[_wgslsmith_index_u32(max(4294967295u, abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a.x, 56597u, u_input.a.x, u_input.b.x), vec4<u32>(51804u, u_input.c, u_input.b.x, 1u)), vec4<u32>(u_input.c, u_input.a.x, 37072u, 7830u)))), 11u)]);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) * _wgslsmith_f_op_f32(var_1.a + -628f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1241f, -275f)))))));
    return StorageBuffer(~vec4<i32>(global0[_wgslsmith_index_u32(~4294967295u, 22u)], _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(17734u, 22u)], 0i), max(-1i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.c, 22u)])), -52947i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(vec3<bool>(global2[_wgslsmith_index_u32(~func_1(firstLeadingBit(41580u), true == global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), 32u)], func_4(func_5(Struct_1(-758f)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x, 1u), 32u)], _wgslsmith_f_op_f32(floor(-3307f)), func_5(func_2(u_input.b.x, Struct_1(2231f)))).x, 0u >= u_input.a.x));
}

