struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1> = array<bool, 1>(true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<f32> {
    let var_0 = i32(-1i) * -13655i;
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    let var_1 = Struct_3(select(select(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false, false), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec3<bool>(global0[_wgslsmith_index_u32(47356u, 1u)], global0[_wgslsmith_index_u32(4362u, 1u)], true), true), select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 1u)], true), vec3<bool>(true, true, true), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]))), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(54971u, 1u)], global0[_wgslsmith_index_u32(12122u, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32(6257u, 1u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(53392u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], false), vec3<bool>(false, false, true), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 1u)], true)), select(vec3<bool>(global0[_wgslsmith_index_u32(1943u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 1u)]), global0[_wgslsmith_index_u32(0u, 1u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.a), 1u)]), !select(select(vec3<bool>(global0[_wgslsmith_index_u32(69069u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)]), global0[_wgslsmith_index_u32(1u, 1u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(47910u, 1u)])), global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(global0[_wgslsmith_index_u32((0u >> (u_input.a % 32u)) ^ 0u, 1u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], false, true)), select(any(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), !global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(abs(u_input.a), 1u)]))), select(!vec4<bool>(global0[_wgslsmith_index_u32(min(u_input.a, 1u), 1u)], u_input.b.x >= -2147483647i, false, true), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(83721u, 1u)], true, true, global0[_wgslsmith_index_u32(40759u, 1u)])), !(!vec4<bool>(global0[_wgslsmith_index_u32(8562u, 1u)], global0[_wgslsmith_index_u32(26568u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false, global0[_wgslsmith_index_u32(9760u, 1u)], global0[_wgslsmith_index_u32(14165u, 1u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(99599u, 1u)], false, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(29421u, 1u)], true, false), true), true)), vec4<bool>(global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(56333u, 37880u)), 1u)], true, all(select(vec2<bool>(false, global0[_wgslsmith_index_u32(2048u, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]))), global0[_wgslsmith_index_u32(21058u, 1u)])), var_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1804f + -1423f), 905f))), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(33330u, 1u)], false, true, true)), true | global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 1u)], global0[_wgslsmith_index_u32(59989u, 1u)], true), any(!(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(45336u, 1u)], true, true))), Struct_1(vec3<f32>(-1402f, _wgslsmith_f_op_f32(step(-1375f, -761f)), 231f), vec2<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], true, false))))), 1i);
    let var_2 = abs(_wgslsmith_div_vec2_i32(u_input.b.zx, u_input.b.yz)) << (vec2<u32>(max(_wgslsmith_mult_u32(u_input.a, ~u_input.a), 40662u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 47663u, 39503u)) ^ abs(vec3<u32>(u_input.a, u_input.a, 1u)), vec3<u32>(u_input.a, u_input.a, 20512u))) % vec2<u32>(32u));
    return var_1.d.d.a;
}

fn func_2() -> Struct_3 {
    var var_0 = vec4<i32>(select(u_input.b.x, ~(-max(u_input.b.x, 6896i)), !(true | global0[_wgslsmith_index_u32(1u, 1u)])), -16094i, -17034i, -1i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, -2274f, -467f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1019f, 756f, 526f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(9693u, 0u, u_input.a)), 1u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1315f, _wgslsmith_f_op_f32(abs(1026f)), 715f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1508f, 1080f, -2575f) * vec3<f32>(1079f, 424f, -1000f)), vec3<f32>(-1608f, -1119f, -880f)))), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], !global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(true, abs(u_input.a) > firstTrailingBit(u_input.a)), !select(vec2<bool>(true, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)]), true), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 1u)], false))));
    let var_2 = select(vec4<bool>(!any(!vec3<bool>(false, true, var_1.b.x)), true, var_1.b.x, global0[_wgslsmith_index_u32(u_input.a, 1u)]), select(select(select(vec4<bool>(true, var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 1u)], false), vec4<bool>(false, false, var_1.b.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]), !var_1.b.x), select(select(vec4<bool>(false, true, true, var_1.b.x), vec4<bool>(false, var_1.b.x, false, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(global0[_wgslsmith_index_u32(31916u, 1u)], var_1.b.x, var_1.b.x, var_1.b.x)), vec4<bool>(true, true, false, var_1.b.x), u_input.a != u_input.a), select(!vec4<bool>(false, var_1.b.x, global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], true, true, global0[_wgslsmith_index_u32(0u, 1u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec4<bool>(var_1.b.x, global0[_wgslsmith_index_u32(0u, 1u)], false, false), vec4<bool>(var_1.b.x, false, false, var_1.b.x)))), vec4<bool>(false, false, true, select(true, true, !global0[_wgslsmith_index_u32(1u, 1u)])), !vec4<bool>(!var_1.b.x, var_1.b.x, true, true)), select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)] || false, !global0[_wgslsmith_index_u32(u_input.a, 1u)], true, true), !vec4<bool>(false, true, false, any(vec3<bool>(global0[_wgslsmith_index_u32(38983u, 1u)], true, true))), !all(vec3<bool>(true, false, var_1.b.x))));
    var_0 = -(vec4<i32>(_wgslsmith_add_i32(i32(-1i) * -7003i, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(28743i, u_input.b.x, 32837i), countOneBits(vec3<i32>(u_input.b.x, 2147483647i, var_0.x))), var_0.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b), vec3<i32>(26621i, 2147483647i, 24601i) & vec3<i32>(-1i, -39727i, var_0.x))) >> ((countOneBits(~vec4<u32>(u_input.a, 76975u, u_input.a, u_input.a)) ^ ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)), all(vec2<bool>(var_1.b.x, var_2.x))))), var_1.b);
    return Struct_3(var_2.wxy, !select(select(select(vec4<bool>(var_2.x, true, global0[_wgslsmith_index_u32(u_input.a, 1u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 1u)], var_3.b.x), global0[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 1u)], var_3.b.x, false, var_2.x), var_2, vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 1u)], false, true)), select(vec4<bool>(false, true, true, var_3.b.x), var_2, var_3.b.x)), select(!vec4<bool>(true, var_1.b.x, global0[_wgslsmith_index_u32(1u, 1u)], false), vec4<bool>(true, var_1.b.x, false, false), !var_3.b.x), vec4<bool>(false, true, !var_3.b.x, var_1.b.x || true)), -13986i, Struct_2(-256f, select(vec4<bool>(u_input.b.x == 47341i, any(var_1.b), !var_1.b.x, var_1.b.x), !var_2, !var_2), var_3.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-960f, var_3.a.x, 777f))), select(var_2.xw, var_1.b, true))), min(u_input.b.x, u_input.b.x));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = 896f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.d.d.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + arg_0.d.d.a.x), _wgslsmith_f_op_f32(947f + -147f)))), !arg_0.d.c)) - var_0);
    global0 = array<bool, 1>();
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, abs(_wgslsmith_div_u32(4294967295u, 1u)), u_input.a) << (~_wgslsmith_add_vec3_u32(~vec3<u32>(51550u, 64760u, u_input.a), reverseBits(vec3<u32>(u_input.a, u_input.a, 1u))) % vec3<u32>(32u)), ~vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 4294967295u, select(u_input.a | u_input.a, u_input.a >> (u_input.a % 32u), true)));
    var var_3 = ~(vec4<u32>(u_input.a, u_input.a, var_2.x, u_input.a << (reverseBits(59214u) % 32u)) ^ firstTrailingBit(~(~vec4<u32>(1u, u_input.a, 4294967295u, 4294967295u))));
    return !vec3<bool>(any(arg_0.b), true, true);
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(func_4(func_2()), !(!func_2().b), i32(-1i) * -1i, func_2().d, ~u_input.b.x);
    global0 = array<bool, 1>();
    var_0 = func_2();
    let var_1 = var_0.d.d.a;
    let var_2 = _wgslsmith_sub_u32(~arg_0, reverseBits(38479u));
    return Struct_3(func_4(Struct_3(select(vec3<bool>(true, var_0.d.c, false), !vec3<bool>(true, global0[_wgslsmith_index_u32(21307u, 1u)], var_0.d.b.x), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 1u)], false)), var_0.d.b, u_input.b.x, func_2().d, 1i)), !vec4<bool>(!all(var_0.a.xy), func_2().a.x, true, !any(var_0.b.zyz)), var_0.c, func_2().d, -32658i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.a);
    let var_1 = Struct_1(var_0.d.d.a, select(vec2<bool>(true, true), var_0.b.wx, !(41005u <= abs(u_input.a))));
    var var_2 = Struct_3(var_0.d.b.ywy, vec4<bool>(var_0.d.d.b.x, global0[_wgslsmith_index_u32(max(~(u_input.a | 74731u), u_input.a | 11096u), 1u)], global0[_wgslsmith_index_u32(u_input.a >> (1u % 32u), 1u)], !(func_2().b.x | all(vec2<bool>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.a, 1u)])))), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_0.c, -2147483647i, u_input.b.x, u_input.b.x) | (vec4<i32>(-1i, var_0.e, 27635i, u_input.b.x) & vec4<i32>(u_input.b.x, u_input.b.x, -1i, var_0.c))), _wgslsmith_sub_vec4_i32(select(~vec4<i32>(var_0.c, var_0.c, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -20520i, 18258i, -2147483647i), !global0[_wgslsmith_index_u32(0u, 1u)]), ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.c, 0i, 49931i), vec4<i32>(u_input.b.x, var_0.c, 45977i, 2147483647i)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d.d.a.x), _wgslsmith_f_op_f32(-722f * var_0.d.d.a.x)) * 864f), vec4<bool>(true, true, var_1.b.x, func_1(12083u).b.x), !(var_0.c < 2147483647i) && !var_0.b.x, func_2().d.d), var_0.e);
    var var_3 = !select(true, true, all(vec3<bool>(var_0.b.x, false, false)) || (!var_2.b.x || false));
    var var_4 = var_0.e;
    global0 = array<bool, 1>();
    let var_5 = Struct_3(var_2.b.zxy, func_2().d.b, ~(-u_input.b.x), var_2.d, ~u_input.b.x);
    var_0 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.d.d.a.x + var_1.a.x))))), var_0.d.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(333f)), var_1.a.x)) + var_1.a.x), var_5.d.a), _wgslsmith_f_op_f32(795f + -155f));
}

