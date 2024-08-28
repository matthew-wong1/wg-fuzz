struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 30> = array<f32, 30>(-612f, -1515f, 1000f, -1319f, 1000f, 1316f, -1000f, 1094f, -1231f, 446f, 1084f, -669f, 1000f, 1247f, -168f, -620f, 1000f, 368f, -1362f, -1451f, -474f, 724f, -1644f, -370f, -865f, 304f, -160f, -351f, 192f, 650f);

var<private> global2: vec3<f32> = vec3<f32>(-321f, -229f, -571f);

var<private> global3: array<u32, 27> = array<u32, 27>(56530u, 50339u, 18043u, 119948u, 36184u, 4294967295u, 0u, 22420u, 14025u, 0u, 0u, 83644u, 63169u, 0u, 0u, 1u, 11996u, 4294967295u, 32902u, 0u, 14815u, 23226u, 4294967295u, 43373u, 1u, 1u, 2984u);

var<private> global4: Struct_1 = Struct_1(true, i32(-2147483648), -1573f);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: vec3<bool>) -> f32 {
    let var_0 = Struct_1(false, ~_wgslsmith_mult_i32(28364i << (global0.x % 32u), _wgslsmith_mult_i32(i32(-1i) * -10334i, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))), _wgslsmith_div_f32(global2.x, -580f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2171f))));
}

fn func_3() -> vec4<f32> {
    let var_0 = 1u;
    let var_1 = _wgslsmith_div_f32(-388f, _wgslsmith_f_op_f32(floor(-1000f)));
    global1 = array<f32, 30>();
    let var_2 = vec2<bool>((_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, var_0), 30u)]) >= 558f) && all(!select(vec3<bool>(global4.a, true, true), vec3<bool>(true, global4.a, false), global4.a)), true);
    var var_3 = !(!vec2<bool>(all(select(var_2, var_2, var_2)), global4.a));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1573f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * global1[_wgslsmith_index_u32(25061u, 30u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, var_0), global0.yx), 30u)], _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global0.x, 30u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-2118f))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(714f, -594f))), global2.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -1148f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c, -764f, global4.c, var_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-354f, -1413f, -1000f, global2.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, var_1, -476f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 30u)]))))), !select(vec4<bool>(false, var_3.x, var_2.x, var_3.x), vec4<bool>(false, global4.a, true, var_2.x), true))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32((~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 0u, 39769u, global0.x) << (~vec4<u32>(1u, global0.x, 58700u, global0.x) % vec4<u32>(32u))) & ~(~vec4<u32>(10155u, 29360u, 10263u, global3[_wgslsmith_index_u32(38885u, 27u)])), countOneBits(firstTrailingBit(~vec4<u32>(global0.x, global0.x, global3[_wgslsmith_index_u32(global0.x, 27u)], global0.x)))), ~(~(~firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 27u)], 49653u, 4294967295u, 70389u)))));
    global2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(ceil(-239f)) != 1573f, vec4<bool>(arg_0.a, global4.a, arg_3.a, global4.a), !vec3<bool>(arg_0.a, false, false))), _wgslsmith_f_op_f32(arg_2.c - arg_1), arg_3.c), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1254f + arg_2.c)), -238f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(208f, arg_0.c, arg_2.c) * vec3<f32>(global2.x, global1[_wgslsmith_index_u32(40005u, 30u)], -278f))))), !global4.a));
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -741f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + arg_3.c) * _wgslsmith_f_op_f32(1258f - -1057f)), 107f, -686f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()))), vec4<f32>(global4.c, arg_1, global2.x, global2.x));
    var var_1 = vec3<bool>(!arg_2.a, arg_0.a, arg_2.a);
    global4 = arg_0;
    return Struct_1(true, i32(-1i) * -(i32(-1i) * -u_input.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(arg_0.c * global4.c))), _wgslsmith_f_op_f32(-global2.x), false)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = global0.x;
    let var_2 = func_1(Struct_1(global1[_wgslsmith_index_u32(44091u, 30u)] < global2.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, 0i)), u_input.a), _wgslsmith_add_vec2_i32(abs(u_input.a), u_input.a)), global4.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), func_1(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.c), _wgslsmith_f_op_f32(1000f + var_0.c))), func_1(func_1(func_1(Struct_1(false, arg_0.b, arg_0.c), global2.x, Struct_1(global4.a, 2147483647i, global4.c), var_0), -329f, func_1(arg_0, 448f, arg_0, arg_0), Struct_1(var_0.a, -45000i, -1651f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), func_1(func_1(var_0, 661f, var_0, Struct_1(true, -2147483647i, arg_0.c)), _wgslsmith_div_f32(585f, global4.c), arg_0, arg_0), var_0), var_0), func_1(func_1(arg_0, _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(~4294967295u, 30u)], global2.x)), func_1(func_1(Struct_1(false, 2147483647i, 1565f), global1[_wgslsmith_index_u32(35038u, 30u)], Struct_1(true, -15680i, 1115f), var_0), global2.x, Struct_1(false, u_input.a.x, 2114f), Struct_1(false, var_0.b, -176f)), Struct_1(arg_0.a, 1i, _wgslsmith_f_op_f32(var_0.c + global2.x))), _wgslsmith_f_op_f32(-arg_0.c), Struct_1(var_0.a, ~81004i, func_1(func_1(Struct_1(global4.a, -8367i, global2.x), -1456f, var_0, arg_0), -154f, arg_0, arg_0).c), arg_0));
    let var_3 = vec2<i32>(~abs(2147483647i >> (global3[_wgslsmith_index_u32(1u, 27u)] % 32u)), -2147483647i) | u_input.a;
    let var_4 = vec3<u32>(min(global3[_wgslsmith_index_u32(global0.x, 27u)], 0u), 0u, 30157u);
    return Struct_1((false || (_wgslsmith_f_op_f32(f32(-1f) * -107f) > arg_0.c)) & true, var_0.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~(~global0.zxw)), _wgslsmith_mult_vec3_u32(var_4, vec3<u32>(global3[_wgslsmith_index_u32(~5437u, 27u)], _wgslsmith_sub_u32(global0.x, 47178u), _wgslsmith_div_u32(54154u, var_4.x)))), 30u)]);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1039f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1429f) + arg_0.c), _wgslsmith_f_op_f32(-1070f * _wgslsmith_f_op_f32(global2.x - -1000f)), 338f)));
    global3 = array<u32, 27>();
    var var_1 = !any(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_2.x, true, arg_2.x), arg_2.wwy), !arg_2.wzz, vec3<bool>(false, all(arg_2.ywz), any(vec2<bool>(true, global4.a)))));
    let var_2 = func_4(arg_0);
    let var_3 = func_1(Struct_1(((true || global4.a) && true) & all(select(arg_2.ww, arg_2.yx, false)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c))), _wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3()).x, -486f), Struct_1(!func_1(Struct_1(var_2.a, -1i, var_0.x), global2.x, var_2, Struct_1(global4.a, 3915i, 154f)).a, 29579i, func_4(arg_0).c), Struct_1(true, _wgslsmith_div_i32(abs(_wgslsmith_mod_i32(u_input.b, -1i)), i32(-1i) * -u_input.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f + _wgslsmith_div_f32(arg_0.c, 499f)), global4.c))));
    return 81741u;
}

fn func_6(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    global1 = array<f32, 30>();
    var var_0 = Struct_1(func_1(Struct_1(!arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(19110i, -7650i), u_input.a), _wgslsmith_f_op_f32(min(621f, -1000f))), 1000f, func_1(func_1(Struct_1(false, global4.b, -1000f), global1[_wgslsmith_index_u32(0u, 30u)], Struct_1(arg_0, 1i, global4.c), Struct_1(arg_1, u_input.b, global2.x)), func_4(Struct_1(arg_0, -28454i, global2.x)).c, func_4(Struct_1(false, u_input.b, 625f)), Struct_1(global4.a, global4.b, global2.x)), Struct_1(arg_1, 33577i >> (arg_3 % 32u), _wgslsmith_f_op_f32(exp2(global4.c)))).c > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(arg_3), 30u)]), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global4.c, -843f), _wgslsmith_f_op_f32(select(874f, 1213f, global4.a)), !arg_0)), any(!vec4<bool>(global4.a, false, false, global4.a)))), u_input.a.x, func_1(Struct_1(_wgslsmith_f_op_f32(round(763f)) < -282f, _wgslsmith_mult_i32(16764i, global4.b) & u_input.a.x, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(func_4(Struct_1(global4.a, global4.b, global4.c)).c, -1475f) + global2.x), func_4(func_1(func_4(Struct_1(global4.a, global4.b, -741f)), _wgslsmith_div_f32(827f, global1[_wgslsmith_index_u32(arg_3, 30u)]), func_1(Struct_1(false, -9210i, global4.c), -1297f, Struct_1(global4.a, u_input.a.x, global1[_wgslsmith_index_u32(arg_2.x, 30u)]), Struct_1(true, 42404i, 204f)), Struct_1(arg_0, global4.b, 699f))), Struct_1(80684u < arg_3, _wgslsmith_mod_i32(u_input.b, _wgslsmith_mult_i32(4034i, -28017i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.x))))).c);
    var var_1 = -2434f;
    var_0 = Struct_1(true, abs(reverseBits(u_input.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(594f, _wgslsmith_f_op_f32(trunc(561f))) - 577f))));
    var_1 = -944f;
    return func_4(Struct_1(true, countOneBits(global4.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, false, vec3<u32>(abs(57484u), global3[_wgslsmith_index_u32(func_5(func_4(func_1(Struct_1(global4.a, 1i, global1[_wgslsmith_index_u32(0u, 30u)]), 1542f, Struct_1(global4.a, u_input.a.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], 30u)]), Struct_1(false, global4.b, -1210f))), select(27149i, -u_input.a.x, global4.a || true), !vec4<bool>(global4.a, false, global4.a, global4.a), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 27u)]), 27u)], ~(~firstLeadingBit(33768u))), _wgslsmith_sub_u32(28112u, global0.x));
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(~_wgslsmith_mult_vec4_i32(~vec4<i32>(-14247i, 0i, global4.b, 20332i), vec4<i32>(3550i, 0i, u_input.a.x, global4.b))), min(vec4<i32>(2147483647i, var_0.b, reverseBits(firstLeadingBit(global4.b)), ~var_0.b), vec4<i32>(func_1(var_0, _wgslsmith_f_op_f32(-980f + global2.x), var_0, Struct_1(global4.a, -23674i, var_0.c)).b, -2147483647i, ~(-global4.b), var_0.b)));
    let var_2 = true;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-871f, 456f, global2.x))))));
    var var_3 = _wgslsmith_f_op_f32(max(global4.c, _wgslsmith_f_op_f32(global2.x * global4.c)));
    let var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(var_4.a, vec4<bool>(var_2, true, global4.a, true), vec3<bool>(false, global4.a, var_4.a))), var_0.c, var_4.c, 342f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1530f, 822f, 729f, -1477f) * vec4<f32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 27u)], 30u)], var_0.c, -1000f, 460f))))) + vec4<f32>(761f, _wgslsmith_f_op_f32(-696f - _wgslsmith_div_f32(var_0.c, global1[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f + var_0.c) + _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(floor(-1475f)))));
}

