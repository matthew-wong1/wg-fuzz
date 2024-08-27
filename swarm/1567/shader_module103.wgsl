struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> i32 {
    let var_0 = 0i << (firstTrailingBit(~52264u) % 32u);
    global0 = array<f32, 16>();
    let var_1 = vec3<bool>(arg_0, false == select(-var_0 > _wgslsmith_div_i32(1i, -1i), var_0 != arg_2.x, true), 4424u <= u_input.a.x);
    global0 = array<f32, 16>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-169f, _wgslsmith_f_op_f32(min(arg_1, 422f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(757f))))) * -1633f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))))) + arg_1), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1))))));
    return countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(36865i, 29063i), (u_input.b >> (7848u % 32u)) ^ u_input.b), _wgslsmith_dot_vec2_i32((arg_2.xx ^ arg_2.xy) ^ (arg_2.zz ^ vec2<i32>(-33646i, -1i)), vec2<i32>(u_input.b & arg_2.x, 0i))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    let var_0 = vec2<u32>(~u_input.a.x, u_input.a.x);
    global0 = array<f32, 16>();
    global0 = array<f32, 16>();
    var var_1 = _wgslsmith_div_i32(2147483647i, 85665i);
    var var_2 = _wgslsmith_div_i32(func_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_f_op_f32(-892f + arg_3))), -(vec3<i32>(-1i, -20200i, u_input.b) & vec3<i32>(-16877i, arg_1.x, 7200i)) ^ -(vec3<i32>(-2147483647i, -57849i, arg_1.x) | vec3<i32>(u_input.b, -8949i, 1i))), -(arg_1.x & -(~u_input.b)));
    return Struct_2(!vec3<bool>(!(!arg_2), true, all(vec4<bool>(false, true, arg_0, arg_2))), Struct_1(~(~var_0 & ~vec2<u32>(1u, u_input.a.x)), arg_2, var_0.x), 393f);
}

fn func_1() -> vec4<i32> {
    global0 = array<f32, 16>();
    let var_0 = func_2(true, _wgslsmith_mod_vec2_i32(select(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 91744i), vec2<i32>(-13604i, 1i)), firstTrailingBit(vec2<i32>(1i, u_input.b)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))), vec2<i32>(0i, ~(-17792i) | -u_input.b)), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(365f, global0[_wgslsmith_index_u32(2141u << (u_input.a.x % 32u), 16u)])) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~48095u, 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)])))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c, var_0.c, -170f), vec3<f32>(-262f, -2003f, 2019f)))))) + vec3<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), 583f)));
    var var_2 = !(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(50411i, -2845i, 1i, u_input.b)), vec4<i32>(29755i, 8510i, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(1i, 12652i, -31053i, 26222i)), vec4<i32>(u_input.b, u_input.b, 1i, u_input.b) | vec4<i32>(0i, 42123i, u_input.b, u_input.b), countOneBits(vec4<i32>(u_input.b, 3696i, u_input.b, u_input.b)))) == (28857i >> (~(~0u) % 32u)));
    var var_3 = true;
    return _wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.b, u_input.b, -37667i, 2147483647i)) << (countOneBits(vec4<u32>(4294967295u, var_0.b.a.x, 49110u, var_0.b.a.x)) % vec4<u32>(32u)), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b), vec4<i32>(0i, 19907i, 5929i, 2147483647i))), _wgslsmith_div_vec4_i32(~select(~vec4<i32>(u_input.b, u_input.b, 2147483647i, 43809i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -26054i, 2147483647i, 37998i), vec4<i32>(u_input.b, 25249i, -23208i, -2147483647i)), var_0.b.b), max(firstLeadingBit(vec4<i32>(19985i, u_input.b, u_input.b, 4430i)), vec4<i32>(u_input.b, abs(u_input.b), u_input.b, u_input.b << (u_input.a.x % 32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    let var_0 = func_3(any(select(func_2(true || arg_2, arg_1.zx, !arg_0.b, -779f).a, vec3<bool>(true, arg_0.b, true), !(!vec3<bool>(arg_0.b, arg_2, arg_2)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(8790u, 16u)] - -1648f))) * _wgslsmith_f_op_f32(-266f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))), global0[_wgslsmith_index_u32(45447u, 16u)]), firstTrailingBit(reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, u_input.b, -1i), vec3<i32>(-1i, arg_1.x, u_input.b) << (vec3<u32>(41480u, arg_0.c, arg_0.a.x) % vec3<u32>(32u))))));
    let var_1 = _wgslsmith_mult_i32(1i, -1i);
    var var_2 = func_2(all(vec4<bool>(true, true, any(!vec3<bool>(false, arg_2, arg_0.b)), arg_0.b)), _wgslsmith_mod_vec2_i32(arg_1.xx, arg_1.yy), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 16u)] - global0[_wgslsmith_index_u32(u_input.a.x, 16u)]))) + global0[_wgslsmith_index_u32(~(1u ^ arg_0.c), 16u)])).b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x);
    let var_1 = -17115i;
    let var_2 = ~vec2<u32>(firstLeadingBit(1u), var_0);
    var var_3 = Struct_1(~vec2<u32>(var_0 << ((1u << (var_2.x % 32u)) % 32u), ~0u), false, var_2.x);
    var var_4 = Struct_2(vec3<bool>(var_3.b, true, select(33035u != firstLeadingBit(var_2.x), !any(vec4<bool>(var_3.b, false, var_3.b, false)), !all(vec3<bool>(var_3.b, var_3.b, var_3.b)))), func_4(Struct_1(vec2<u32>(var_0, ~u_input.a.x), true, ~abs(2727u)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, 27763i, -7266i, -2147483647i), vec4<i32>(-1i, var_1, 2147483647i, var_1))) | (func_1() ^ vec4<i32>(var_1, u_input.b, 0i, -2147483647i)), all(vec3<bool>(!var_3.b, true, var_3.b))), _wgslsmith_f_op_f32(-2008f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u << (1u % 32u), 16u)]) - global0[_wgslsmith_index_u32(func_4(Struct_1(var_2, true, u_input.a.x), -vec4<i32>(var_1, var_1, var_1, 2147483647i), var_3.b).a.x, 16u)])));
    var var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, var_1 << (1u % 32u)), vec2<i32>(firstLeadingBit(-1i), func_3(true, 1148f, vec3<i32>(u_input.b, var_1, 2147483647i))))));
}

