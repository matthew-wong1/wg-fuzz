struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-290f, -999f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(min(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, u_input.a.x, -57851i), vec4<i32>(23985i, u_input.a.x, u_input.b, -2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -22656i), vec4<i32>(0i, 1i, u_input.b, u_input.b))), -firstLeadingBit(1i)), i32(-1i) * -1i), -u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, i32(-1i) * -18283i), -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1239i, 14849i), vec3<i32>(u_input.b, 54122i, -39519i)), vec3<i32>(u_input.a.x, 25792i, 0i) << (arg_0.xwz % vec3<u32>(32u)))), -19060i);
    global0 = array<f32, 2>();
    var var_1 = var_0;
    let var_2 = u_input.b;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(-877f, global0[_wgslsmith_index_u32(1u, 2u)], any(vec3<bool>(true, true, true)))), Struct_2(any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec4<bool>(firstTrailingBit(81580i) < (var_0.c.x << (arg_0.x % 32u)), true, !any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~arg_0.xzz, vec3<u32>(arg_0.x, 12967u, arg_0.x)), 2u)], _wgslsmith_f_op_f32(-var_3.a)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(-284f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(reverseBits(vec4<u32>(47867u, 4294967295u, 24405u, 4294967295u))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(101f, arg_1), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6483u, 2u)])))));
    var var_1 = !vec4<bool>(true, true, any(vec2<bool>(true, true)), true);
    let var_2 = Struct_1(_wgslsmith_add_i32(0i, ~firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, u_input.b))), u_input.a.x, max(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, u_input.b, u_input.b), countOneBits(vec4<i32>(14348i, u_input.a.x, u_input.a.x, 24486i))), _wgslsmith_sub_i32(-u_input.a.x, _wgslsmith_mult_i32(-1i, 0i))), ~(-select(vec3<i32>(u_input.a.x, u_input.b, u_input.a.x), vec3<i32>(2147483647i, u_input.b, 2147483647i), var_1.zyz))), _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -9242i, -1i), vec3<i32>(33398i, u_input.b, 1i), vec3<i32>(u_input.b, 1i, 2147483647i)), vec3<i32>(u_input.b, 0i, 6716i)), ~(-vec3<i32>(u_input.b, u_input.a.x, u_input.a.x))));
    let var_3 = vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7683u, 3733u, 0u), ~vec4<u32>(4294967295u, 0u, 15077u, 48946u)) | countOneBits(firstTrailingBit(4294967295u))) | _wgslsmith_mod_vec2_u32(abs(min(_wgslsmith_mult_vec2_u32(vec2<u32>(16670u, 75624u), vec2<u32>(0u, 14891u)), vec2<u32>(1u, 1u))), vec2<u32>(4294967295u, 1u));
    global0 = array<f32, 2>();
    return Struct_2(false, !(!select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(false, var_1.x, var_1.x, var_1.x))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    global0 = array<f32, 2>();
    var var_0 = Struct_3(arg_0.a, Struct_2(false, !arg_2.b));
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(1u), 0u), firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 19750u), _wgslsmith_add_vec2_u32(vec2<u32>(57882u, 0u), vec2<u32>(0u, 18057u))), vec2<u32>(14088u, _wgslsmith_dot_vec2_u32(vec2<u32>(59261u, 1u), vec2<u32>(12830u, 79746u))))));
    var var_2 = arg_3;
    global0 = array<f32, 2>();
    return -21715i;
}

fn func_5(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global0 = array<f32, 2>();
    let var_0 = Struct_2(true, vec4<bool>(true, all(vec3<bool>(all(vec4<bool>(false, false, true, false)), true, true)), true || (global0[_wgslsmith_index_u32(12028u, 2u)] < _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(37694u, 2u)]))), false));
    var var_1 = select(_wgslsmith_dot_vec4_i32(~(-select(vec4<i32>(-43391i, -1i, 1i, arg_1), vec4<i32>(1i, 0i, -31970i, 1i), vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.a))), vec4<i32>(i32(-1i) * -13715i, u_input.b, i32(-1i) * -arg_1, firstLeadingBit(-arg_1))), _wgslsmith_div_i32(arg_0.x, arg_0.x), var_0.a);
    var_1 = 18621i;
    var var_2 = Struct_1(arg_1, u_input.a.x, vec3<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(-36982i, arg_1, arg_1) & vec3<i32>(arg_0.x, 17435i, 2147483647i)) & ~vec3<i32>(0i, arg_0.x, 0i), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, arg_1), ~arg_0.x, func_4(Struct_3(1000f, Struct_2(false, var_0.b)), var_0, Struct_2(var_0.b.x, vec4<bool>(true, var_0.b.x, var_0.b.x, false)), Struct_1(arg_0.x, -1i, vec3<i32>(u_input.b, 1i, 2147483647i), arg_1)))), abs(reverseBits(reverseBits(2147483647i))), firstTrailingBit(~0i) & func_4(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 2u)], Struct_2(true, vec4<bool>(var_0.a, false, var_0.b.x, false))), var_0, func_2(vec3<f32>(-1658f, global0[_wgslsmith_index_u32(72519u, 2u)], 811f), global0[_wgslsmith_index_u32(66600u, 2u)]), Struct_1(-10i, arg_0.x, vec3<i32>(arg_1, u_input.b, -68940i), 0i))), arg_0.x);
    return Struct_1(abs(~_wgslsmith_clamp_i32(func_4(Struct_3(global0[_wgslsmith_index_u32(26609u, 2u)], var_0), var_0, var_0, Struct_1(1i, var_2.b, var_2.c, arg_0.x)), 2147483647i, arg_1)), -arg_0.x, vec3<i32>(countOneBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(38847i, 18900i, arg_0.x, var_2.d)), ~vec4<i32>(-45340i, 1i, var_2.a, 24956i))), 1i, abs(var_2.c.x)), -13162i);
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = func_5(u_input.a, func_4(Struct_3(arg_0.a, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-692f, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)])), _wgslsmith_f_op_f32(trunc(-413f)))), func_2(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), 885f, arg_0.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_0.a)), global0[_wgslsmith_index_u32(~4294967295u, 2u)], arg_0.b.b.x & true))), Struct_2(true, select(!vec4<bool>(arg_0.b.a, true, arg_0.b.a, false), arg_0.b.b, arg_2.b)), Struct_1(38782i, ~(-2147483647i), vec3<i32>(u_input.a.x ^ u_input.a.x, abs(u_input.b), ~arg_3), 29980i)));
    let var_1 = min(69675u, ~(~1u) << (_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u)) % 32u)) | 23061u;
    let var_2 = -17027i;
    global0 = array<f32, 2>();
    var var_3 = arg_2;
    return Struct_1(_wgslsmith_div_i32(2266i, 1i), max(~_wgslsmith_add_i32(arg_3 | 16701i, u_input.a.x), 1i), ~vec3<i32>(select(-23420i, 15289i ^ var_0.c.x, !var_3.a), u_input.a.x, ~(-1i)), 40690i);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> bool {
    var var_0 = all(!func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(11167u, 2u)], 1985f, global0[_wgslsmith_index_u32(arg_1, 2u)]), vec3<f32>(global0[_wgslsmith_index_u32(12266u, 2u)], global0[_wgslsmith_index_u32(1u, 2u)], 383f))), 572f).b);
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(arg_1, 2u)], 1731f, global0[_wgslsmith_index_u32(arg_1, 2u)]), vec3<f32>(global0[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23402u, 2u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 2u)]))), 846f))), global0[_wgslsmith_index_u32(1u, 2u)]);
    var var_2 = global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(arg_1, ~(~abs(arg_1))), abs(arg_1)), 2u)];
    var var_3 = select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.b.yy), var_1.b.wz, var_1.b.xz), var_1.b.zz, !vec2<bool>(true, all(!vec2<bool>(var_1.a, false))));
    var_0 = true;
    return all(!(!select(select(var_1.b, var_1.b, vec4<bool>(false, var_1.a, true, true)), var_1.b, var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(vec2<bool>(true, true)), !func_6(func_1(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 2u)], Struct_2(false, vec4<bool>(true, false, true, false))), 469f, Struct_2(true, vec4<bool>(false, true, false, true)), ~(-2147483647i)), 0u >> (countOneBits(1u) % 32u), vec4<i32>(-1i ^ u_input.b, abs(u_input.b), u_input.a.x, -21773i)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(~4294967295u, 2u)]))), vec2<u32>(~(~(~24521u)), 19960u), vec2<f32>(global0[_wgslsmith_index_u32(~1u, 2u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f * -2013f)), -1570f))), countOneBits(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(36924u, 1u, 0u, 23203u)), 22419u << (1u % 32u))));
}

