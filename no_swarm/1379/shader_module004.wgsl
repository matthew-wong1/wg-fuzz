struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, true, true, true, false, false, true, true, false, false, false, false, true, false, true, true, true, true, true, false, false, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<bool> {
    var var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(~(~7178i), -43377i), ~reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -36894i), vec2<i32>(-2147483647i, -23535i))), _wgslsmith_add_vec2_i32(select(vec2<i32>(-20794i, 7914i), vec2<i32>(-26155i, 1i), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(9290u, 24u)])) | vec2<i32>(-2147483647i, -57692i), vec2<i32>(i32(-1i) * -21542i, reverseBits(-2147483647i))));
    var_0 = _wgslsmith_clamp_vec2_i32(-(vec2<i32>(54727i, 0i | var_0.x) | vec2<i32>(_wgslsmith_mod_i32(1i, -2147483647i), ~var_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(-var_0.x, _wgslsmith_add_i32(-var_0.x, var_0.x)), ~_wgslsmith_div_vec2_i32(~vec2<i32>(var_0.x, 44875i), vec2<i32>(-1i, var_0.x))), abs(vec2<i32>(1i, 1i)));
    let var_1 = Struct_2(Struct_1(all(vec3<bool>(global0[_wgslsmith_index_u32(51430u, 24u)] && false, global0[_wgslsmith_index_u32(u_input.a >> (52006u % 32u), 24u)], !global0[_wgslsmith_index_u32(u_input.a, 24u)])), select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], false, global0[_wgslsmith_index_u32(59022u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 24u)], false), global0[_wgslsmith_index_u32(32941u, 24u)]), true)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 4294967295u, 23777u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), ~(vec4<u32>(u_input.a, 105973u, u_input.a, u_input.a) | vec4<u32>(6594u, 14390u, 1u, 28771u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(784f))))))), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(var_0.x, 0i, -1i, 28372i)), ~vec4<i32>(var_0.x, var_0.x, var_0.x, -1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(692i, -var_0.x, -2147483647i, 0i), vec4<i32>(abs(var_0.x), var_0.x << (u_input.a % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-32952i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), firstLeadingBit(var_0.x)))), firstTrailingBit(~select(max(0u, u_input.a), 4294967295u, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(45840u, 24u)])))));
    var var_2 = var_1;
    let var_3 = var_2.a;
    return vec3<bool>(!all(select(vec2<bool>(var_3.a, true), !vec2<bool>(var_1.a.a, true), var_2.a.b.xw)), false, true);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = 88689u;
    let var_1 = func_3();
    let var_2 = arg_0;
    var var_3 = var_2.a;
    var var_4 = arg_0;
    return Struct_1(func_3().x, var_2.a.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(func_2(arg_1).a & true, arg_2.b.b), firstLeadingBit(~(~max(arg_1.b, arg_1.b))), arg_1.c, arg_1.d, 1u);
    var_0 = arg_1;
    var_0 = Struct_2(func_2(arg_1), vec4<u32>(55299u, abs(~_wgslsmith_div_u32(45303u, var_0.b.x)), 1u, _wgslsmith_dot_vec4_u32(arg_1.b, select(var_0.b, select(vec4<u32>(4294967295u, 0u, 4294967295u, arg_1.e), arg_1.b, vec4<bool>(false, arg_0.a, true, arg_2.b.a)), all(vec3<bool>(arg_1.a.a, arg_2.a.a, false))))), _wgslsmith_f_op_f32(select(var_0.c, var_0.c, var_0.a.b.x)), _wgslsmith_mult_vec4_i32(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.d.x, 1i, var_0.d.x, -1i), vec4<i32>(var_0.d.x, 0i, arg_1.d.x, var_0.d.x), vec4<i32>(27051i, 0i, var_0.d.x, -1i))), ~firstTrailingBit(arg_1.d)), max(arg_1.b.x, max(var_0.e, ~arg_1.b.x)));
    var var_1 = arg_1;
    var var_2 = -20562i;
    return Struct_3(arg_1.a, arg_0, !vec3<bool>(false, false, any(arg_2.c.yx)));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = func_4(func_2(Struct_2(Struct_1(true, !vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)], true)), vec4<u32>(u_input.a, u_input.a, countOneBits(u_input.a), u_input.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1421f + -435f))), vec4<i32>(1099i, 1i, 1i, i32(-1i) * -16762i), ~u_input.a)), Struct_2(Struct_1(any(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)], true, global0[_wgslsmith_index_u32(u_input.a, 24u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false, global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)]), global0[_wgslsmith_index_u32(u_input.a, 24u)])), vec4<bool>(true, global0[_wgslsmith_index_u32(~28274u, 24u)], func_2(Struct_2(Struct_1(true, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)])), vec4<u32>(u_input.a, 4294967295u, 0u, 0u), 833f, vec4<i32>(-1i, -8640i, -1i, -12163i), u_input.a)).a, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)], false)))), min(min(vec4<u32>(6555u, u_input.a, 27004u, 1u), vec4<u32>(32290u, 3536u, u_input.a, u_input.a)) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 47198u, 0u, 4294967295u)), min(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(65428u, u_input.a, u_input.a, 0u), abs(vec4<u32>(u_input.a, 1u, 0u, 1u)))), -1061f, vec4<i32>(12322i, -2147483647i, abs(-5618i), ~(~36342i)), _wgslsmith_mult_u32(u_input.a, ~(~1u))), Struct_3(func_2(Struct_2(func_2(Struct_2(Struct_1(false, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 24u)], true, false)), vec4<u32>(u_input.a, u_input.a, 63414u, 1u), 158f, vec4<i32>(-27248i, -1i, 19568i, -1i), u_input.a)), max(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.a), vec4<u32>(26343u, 4294967295u, 12186u, u_input.a)), _wgslsmith_f_op_f32(sign(-368f)), vec4<i32>(1i, 1i, 1i, 1i), 4294967295u)), func_2(Struct_2(func_2(Struct_2(Struct_1(false, vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])), vec4<u32>(u_input.a, 94577u, u_input.a, 4294967295u), 1374f, vec4<i32>(-2416i, -8631i, -1i, 1i), 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(12382u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 59135u, 4294967295u)), _wgslsmith_f_op_f32(abs(-1897f)), ~vec4<i32>(-5728i, -1i, -17179i, -1i), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(0u, 346u, 57872u, u_input.a)))), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 24u)], func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 24u)], vec4<bool>(false, true, global0[_wgslsmith_index_u32(89255u, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)])), vec4<u32>(u_input.a, 35413u, u_input.a, u_input.a), -377f, vec4<i32>(-8764i, -16404i, 2147483647i, -4038i), u_input.a)).b.x)));
    return Struct_1(any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 24u)] | global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(16379u, 24u)])), vec4<bool>(!global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(61645u, countOneBits(u_input.a)), 24u)], !func_2(Struct_2(var_0.a, vec4<u32>(47572u, 575u, 4294967295u, 19421u), -160f, vec4<i32>(13210i, -2147483647i, -2147483647i, 2147483647i), 16199u)).a, func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.a, 24u)], var_0.b.b), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), _wgslsmith_f_op_f32(-954f - 2070f), vec4<i32>(0i, 6369i, 385i, 2147483647i), ~u_input.a)).a, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 712f;
    var var_1 = Struct_2(func_1(), select(~countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), ~(~(~vec4<u32>(44516u, u_input.a, 1u, u_input.a))), vec4<bool>(!func_4(Struct_1(false, vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(4294967295u, 24u)])), Struct_2(Struct_1(false, vec4<bool>(global0[_wgslsmith_index_u32(43129u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], false, true)), vec4<u32>(u_input.a, 68236u, 0u, u_input.a), 150f, vec4<i32>(-2908i, -1i, 11925i, 1463i), 3035u), Struct_3(Struct_1(true, vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 24u)], true, true)), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 24u)], vec4<bool>(global0[_wgslsmith_index_u32(3293u, 24u)], true, true, true)), vec3<bool>(true, false, true))).a.b.x, true, global0[_wgslsmith_index_u32(5120u, 24u)], true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -432f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-367f, -494f)))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(902i, -1i, -2147483647i, 0i), vec4<i32>(0i, 21974i, -9274i, 0i)), reverseBits(2147483647i), abs(14240i), _wgslsmith_clamp_i32(-2147483647i, -41601i, -16125i)), vec4<i32>(i32(-1i) * -8052i, countOneBits(19357i), i32(-1i) * -26425i, 1i)), ~abs(vec4<i32>(2147483647i, 14241i, -1i, -35380i))), 22782u);
    var_0 = 925f;
    var var_2 = Struct_3(Struct_1(1u >= ~(u_input.a ^ u_input.a), vec4<bool>(var_1.a.b.x, ~6589u <= var_1.e, min(2147483647i, var_1.d.x) != (var_1.d.x << (27050u % 32u)), true)), func_4(var_1.a, Struct_2(func_2(Struct_2(Struct_1(true, var_1.a.b), var_1.b, -398f, var_1.d, var_1.e)), ~vec4<u32>(u_input.a, 27343u, 0u, 1u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c))), var_1.d, 4294967295u), Struct_3(var_1.a, func_2(Struct_2(Struct_1(true, vec4<bool>(var_1.a.a, false, var_1.a.a, global0[_wgslsmith_index_u32(18916u, 24u)])), vec4<u32>(var_1.e, 4294967295u, u_input.a, 9028u), 301f, vec4<i32>(13114i, var_1.d.x, -35759i, var_1.d.x), 4294967295u)), !(!vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 24u)], true)))).b, var_1.a.b.yyy);
    var var_3 = var_1.d.x << (4294967295u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(-var_1.d.yzw | _wgslsmith_add_vec3_i32(var_1.d.xww, var_1.d.wxw), ~(var_1.d.xwy << (vec3<u32>(var_1.b.x, u_input.a, u_input.a) % vec3<u32>(32u)))), _wgslsmith_div_vec3_i32(-(vec3<i32>(var_1.d.x, 2341i, var_1.d.x) << (vec3<u32>(u_input.a, 17402u, 21005u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.d.x, var_1.d.x, 12898i), var_1.d.zxx))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.c, var_1.c, -452f), vec3<f32>(565f, var_1.c, -261f), var_2.a.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-302f, var_1.c, -446f) * vec3<f32>(-187f, var_1.c, var_1.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c, var_1.c, -1377f), vec3<f32>(-300f, var_1.c, -1000f))))))), _wgslsmith_mult_vec4_u32(~vec4<u32>(var_1.e, ~20510u, 0u, 4294967295u & u_input.a), ~abs(vec4<u32>(0u, var_1.e, 1u, var_1.b.x) & var_1.b)), var_1.d.x);
}

