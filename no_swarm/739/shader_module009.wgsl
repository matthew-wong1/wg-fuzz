struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: array<vec4<f32>, 4>;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<i32, 13> = array<i32, 13>(1i, i32(-2147483648), 58620i, 2147483647i, 1i, -1i, i32(-2147483648), -5241i, -30998i, -15268i, 9839i, 1i, -1i);

var<private> global4: array<u32, 21> = array<u32, 21>(46682u, 1u, 1u, 1u, 1u, 0u, 1u, 41991u, 4393u, 4294967295u, 4294967295u, 17235u, 4294967295u, 1u, 21767u, 9297u, 1u, 29764u, 0u, 4294967295u, 4294967295u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(min(arg_0.c, -677f));
    var var_1 = arg_0.d.x;
    var var_2 = Struct_1(_wgslsmith_sub_i32(u_input.a << (_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), arg_1.yz), arg_1.zx) % 32u), arg_0.e >> ((4294967295u >> (arg_1.x % 32u)) % 32u)), _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(global4[_wgslsmith_index_u32(arg_1.x, 21u)], 15050u, 77221u, global4[_wgslsmith_index_u32(0u, 21u)]), vec4<u32>(arg_1.x, 7230u, arg_1.x, arg_1.x)), ~vec4<u32>(51498u, 97918u, 4294967295u, 83944u) >> ((vec4<u32>(arg_1.x, 0u, global4[_wgslsmith_index_u32(76356u, 21u)], 0u) >> (vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(arg_1.x, 21u)], 0u, 18700u) % vec4<u32>(32u))) % vec4<u32>(32u))), 13u)], firstLeadingBit(24106i), firstLeadingBit(-2147483647i)), 1f, vec2<bool>(all(!vec3<bool>(false, arg_0.d.x, arg_0.d.x)), true), -1i);
    var var_3 = var_2.d;
    var_1 = -select(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, arg_0.e), vec2<i32>(-1i, 0i)), select(-39702i, select(-55400i, u_input.a, false), !arg_0.d.x), var_3.x) != -39215i;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0, arg_0.c, !(_wgslsmith_f_op_f32(ceil(var_2.c)) != -925f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(396f))), any(vec3<bool>(var_2.d.x, true, !arg_0.d.x && arg_0.d.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global3 = array<i32, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(global3[_wgslsmith_index_u32(46051u, 13u)], 1i, arg_1.c, arg_1.d, arg_1.b), _wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(73843u, 30u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(27061u, 21u)], 30u)]))), -1000f)), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 30u)], vec3<u32>(74482u, 4294967295u, 1u)), vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31546u, 21u)], 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(31246u, 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)])))), 21u)]);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> vec2<u32> {
    global4 = array<u32, 21>();
    global1 = array<vec4<f32>, 4>();
    var var_0 = select(~select(vec4<u32>(select(arg_2.x, 0u, false), ~1u, ~global4[_wgslsmith_index_u32(4294967295u, 21u)], arg_2.x), select(vec4<u32>(global4[_wgslsmith_index_u32(4754u, 21u)], 0u, global4[_wgslsmith_index_u32(1u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7782u, 21u)], 21u)]), ~vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], global4[_wgslsmith_index_u32(0u, 21u)], arg_2.x, 1270u), vec4<bool>(arg_0.d.x, arg_0.d.x, false, arg_0.d.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_0.d.x, arg_0.d.x, true, arg_0.d.x), arg_0.d.x), vec4<bool>(true, false, true, arg_0.d.x))), _wgslsmith_add_vec4_u32(vec4<u32>(~global4[_wgslsmith_index_u32(abs(34636u), 21u)], min(countOneBits(arg_2.x), _wgslsmith_mult_u32(arg_2.x, 50239u)), _wgslsmith_add_u32(arg_2.x, 4294967295u << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(59377u, 21u)], 21u)] % 32u)), abs(~global4[_wgslsmith_index_u32(56663u, 21u)])), vec4<u32>(select(39465u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(26311u, 21u)], 21u)], arg_0.d.x) & 4294967295u, max(arg_2.x, countOneBits(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_2.x, 21u)], 21u)])), _wgslsmith_sub_u32(arg_2.x, ~global4[_wgslsmith_index_u32(36478u, 21u)]), global4[_wgslsmith_index_u32(arg_2.x, 21u)])), true);
    global0 = array<vec3<u32>, 30>();
    var var_1 = _wgslsmith_div_f32(arg_0.c, arg_0.c);
    return arg_2 << (~vec2<u32>(arg_2.x, select(_wgslsmith_add_u32(var_0.x, 22442u), 1u, arg_0.d.x)) % vec2<u32>(32u));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_u32(~abs(func_4(func_2(vec4<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 13u)], -30818i, -2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(33200u, 21u)], 13u)]), Struct_1(u_input.a, global3[_wgslsmith_index_u32(35251u, 13u)], arg_0.x, arg_2, 2147483647i), vec2<i32>(9748i, u_input.a)), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 13u)], global3[_wgslsmith_index_u32(34929u, 13u)]), ~vec2<u32>(60203u, 22054u))), vec2<u32>(~_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 4294967295u, 1u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15791u, 21u)], 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 19545u), vec4<u32>(global4[_wgslsmith_index_u32(9112u, 21u)], global4[_wgslsmith_index_u32(0u, 21u)], 0u, 4294967295u)))) << (vec2<u32>(8732u, global4[_wgslsmith_index_u32(~19257u, 21u)]) % vec2<u32>(32u)));
    let var_1 = -_wgslsmith_mod_vec2_i32(firstLeadingBit(abs(-vec2<i32>(global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(var_0.x, 13u)]))), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(19254i, -15311i, u_input.a, -17608i), vec4<i32>(global3[_wgslsmith_index_u32(0u, 13u)], global3[_wgslsmith_index_u32(428u, 13u)], u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), select(vec4<i32>(global3[_wgslsmith_index_u32(0u, 13u)], -2147483647i, -11667i, u_input.a), vec4<i32>(global3[_wgslsmith_index_u32(24543u, 13u)], -2147483647i, 0i, -34971i), false)), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(var_0.x, 13u)], 31916i), abs(2147483647i))));
    global4 = array<u32, 21>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_i32(-_wgslsmith_add_vec2_i32(min(vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(0u, 13u)]), vec2<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 13u)], u_input.a)), select(vec2<i32>(-3210i, u_input.a), vec2<i32>(0i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24397u, 21u)], 13u)]), vec2<bool>(false, true))) >> (~(~(~vec2<u32>(global4[_wgslsmith_index_u32(28431u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)]))) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, global3[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 4u)], -365f, vec2<bool>(true, false)), 13u)]), -_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(18928u, 13u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 13u)], u_input.a), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(1u, 13u)], u_input.a))), vec2<i32>(u_input.a, u_input.a)));
    var var_1 = func_2(~((vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_0.x, -1i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(137773u, 21u)], 13u)])) >> (((vec4<u32>(global4[_wgslsmith_index_u32(59795u, 21u)], 1u, global4[_wgslsmith_index_u32(0u, 21u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)]) >> (vec4<u32>(38677u, 37443u, 4294967295u, global4[_wgslsmith_index_u32(47687u, 21u)]) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 39229u, 19560u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)]) % vec4<u32>(32u))) % vec4<u32>(32u))), func_2(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42119u, 21u)], 13u)], 15937i, global3[_wgslsmith_index_u32(1u, 13u)]), vec4<i32>(var_0.x, global3[_wgslsmith_index_u32(16840u, 13u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11114u, 21u)], 13u)], global3[_wgslsmith_index_u32(13113u, 13u)]), vec4<bool>(true, true, true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 13u)]), vec4<i32>(19839i, var_0.x, var_0.x, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15956u, 21u)], 13u)]), vec4<i32>(2147483647i, -4712i, -63045i, var_0.x)), vec4<i32>(u_input.a, -1i, 40133i, u_input.a) & vec4<i32>(var_0.x, 2147483647i, -26663i, -22850i)), func_2(vec4<i32>(u_input.a, -1i << (global4[_wgslsmith_index_u32(1u, 21u)] % 32u), countOneBits(-55124i), reverseBits(u_input.a)), Struct_1(~global3[_wgslsmith_index_u32(1u, 13u)], 17904i, 166f, vec2<bool>(false, true), 33167i), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 11749i), vec2<i32>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 13u)])), abs(vec2<i32>(17154i, 3523i)))), firstTrailingBit((vec2<i32>(-1i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 13u)]) | vec2<i32>(-80703i, global3[_wgslsmith_index_u32(1u, 13u)])) >> (_wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(109360u, 21u)], 0u)) % vec2<u32>(32u)))), min(max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 10279i), abs(vec2<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(11683u, 21u)], 21u)], 21u)], 13u)], 2147483647i))), select(vec2<i32>(var_0.x, 2254i) | vec2<i32>(13361i, u_input.a), vec2<i32>(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 13u)], 2147483647i), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, -2147483647i), _wgslsmith_div_i32(-global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(3968u, 21u)], 21u)], 21u)], 13u)], -8592i))));
    let var_2 = func_2(vec4<i32>(u_input.a, 17161i, var_0.x, 0i), func_2(select(max(vec4<i32>(var_0.x, global3[_wgslsmith_index_u32(58621u, 13u)], global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 21u)], 13u)], u_input.a), firstLeadingBit(vec4<i32>(var_0.x, 2147483647i, -2718i, 0i))), -select(vec4<i32>(var_1.e, u_input.a, 1i, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 21u)], 13u)]), vec4<i32>(u_input.a, 44308i, global3[_wgslsmith_index_u32(0u, 13u)], var_0.x), vec4<bool>(true, false, false, false)), !vec4<bool>(true, false, var_1.d.x, var_1.d.x)), func_2(vec4<i32>(~(-1i), 1i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_1.e), vec2<i32>(22144i, -4959i))), Struct_1(u_input.a, 10980i, _wgslsmith_f_op_f32(floor(-1091f)), vec2<bool>(false, false), _wgslsmith_add_i32(-31897i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-10435i, 2147483647i), vec2<i32>(var_0.x, -24810i)) << (vec2<u32>(global4[_wgslsmith_index_u32(1780u, 21u)], 1u) % vec2<u32>(32u))), ~firstTrailingBit(vec2<i32>(22545i, u_input.a))), _wgslsmith_div_vec2_i32(max(vec2<i32>(var_0.x, 2147483647i) ^ vec2<i32>(u_input.a, -2147483647i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(i32(-1i) * -41933i, var_1.b)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(global4[_wgslsmith_index_u32(0u, 21u)], 79510u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(5383u, 21u)], 21u)]), vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], 21u)], 1u)) % vec2<u32>(32u)), select(~vec2<u32>(0u, 92481u), vec2<u32>(14288u, 95740u), var_1.d)) % vec2<u32>(32u)));
    global3 = array<i32, 13>();
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(sign(var_3.c))))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(26628u, 21u)], 4294967295u), vec2<u32>(1027u, 6293u)) ^ vec2<u32>(1u, 1u), vec2<u32>(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)], global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(34710u, 21u)], 21u)], 21u)])), ~53802u);
}

