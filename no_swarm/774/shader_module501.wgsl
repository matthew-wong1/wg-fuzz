struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3>;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(Struct_1(1u, vec3<bool>(false, true, false), 452f), -1544f, vec3<f32>(1048f, 641f, 186f), vec2<u32>(1637u, 10576u)), Struct_2(Struct_1(28660u, vec3<bool>(false, true, false), -1685f), -167f, vec3<f32>(909f, 553f, -608f), vec2<u32>(0u, 54918u)), Struct_2(Struct_1(4294967295u, vec3<bool>(true, true, true), -792f), -1762f, vec3<f32>(461f, -139f, -1609f), vec2<u32>(0u, 4294967295u)), Struct_2(Struct_1(0u, vec3<bool>(false, true, true), -711f), 356f, vec3<f32>(444f, 1162f, 1296f), vec2<u32>(4294967295u, 11874u)), Struct_2(Struct_1(25042u, vec3<bool>(true, false, true), -850f), 131f, vec3<f32>(641f, -1000f, 1192f), vec2<u32>(4294967295u, 7775u)), Struct_2(Struct_1(5912u, vec3<bool>(false, true, false), -755f), -742f, vec3<f32>(-544f, -1122f, 557f), vec2<u32>(44632u, 5222u)), Struct_2(Struct_1(1556u, vec3<bool>(true, false, true), -296f), -1000f, vec3<f32>(-676f, 867f, 541f), vec2<u32>(1u, 0u)), Struct_2(Struct_1(16961u, vec3<bool>(true, false, true), 706f), 235f, vec3<f32>(-1998f, 595f, -802f), vec2<u32>(48230u, 5932u)));

var<private> global2: array<vec3<u32>, 32>;

var<private> global3: array<i32, 6> = array<i32, 6>(1i, 37953i, -1i, 1i, i32(-2147483648), i32(-2147483648));

var<private> global4: array<f32, 10> = array<f32, 10>(393f, -1318f, -474f, -1173f, 666f, 1199f, -485f, 2397f, 681f, -1000f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>) -> bool {
    global3 = array<i32, 6>();
    global0 = array<vec3<u32>, 3>();
    var var_0 = min(_wgslsmith_mod_i32(-11737i, abs(36694i)), global3[_wgslsmith_index_u32(~15327u, 6u)] | global3[_wgslsmith_index_u32(abs(~4294967295u), 6u)]);
    return arg_0.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = select(!select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true), !vec3<bool>(true, func_3(vec2<bool>(true, true), vec2<i32>(global3[_wgslsmith_index_u32(0u, 6u)], -2147483647i)), false), any(vec3<bool>(true, true, true)));
    global3 = array<i32, 6>();
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, countOneBits(select(61054u, u_input.b, true)), _wgslsmith_div_u32(u_input.b, u_input.b), _wgslsmith_sub_u32(max(16962u, 1u), _wgslsmith_mult_u32(u_input.b, 4294967295u))), max(vec4<u32>(u_input.b, ~u_input.d, u_input.b & 4294967295u, ~0u), countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(52245u, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.d, u_input.d, u_input.b, u_input.b))))), 8u)];
    let var_2 = true;
    let var_3 = vec2<bool>(true, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 20478u, 45878u), ~global0[_wgslsmith_index_u32(~89146u, 3u)]) < (~(~4294967295u) ^ var_1.d.x));
    return global1[_wgslsmith_index_u32(reverseBits(select(var_1.d.x, 43344u, false)), 8u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(~(reverseBits(vec4<i32>(-46449i, -1i, global3[_wgslsmith_index_u32(arg_1.a, 6u)], global3[_wgslsmith_index_u32(arg_1.a, 6u)])) << (vec4<u32>(28988u, arg_1.a, arg_2.a, arg_1.a) % vec4<u32>(32u)))), ~_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 6u)], 48632i, global3[_wgslsmith_index_u32(arg_1.a, 6u)], global3[_wgslsmith_index_u32(0u, 6u)]), -vec4<i32>(u_input.c, 1i, u_input.a, 2147483647i)) >> (~max(vec4<u32>(arg_2.a, 339u, u_input.d, arg_0.d.x), ~vec4<u32>(8094u, 74940u, 13983u, u_input.b)) % vec4<u32>(32u)));
    let var_1 = ~arg_1.a;
    var var_2 = var_1;
    global3 = array<i32, 6>();
    let var_3 = Struct_2(func_2(_wgslsmith_f_op_f32(abs(-1040f))).a, 1000f, arg_0.c, vec2<u32>(4294967295u, u_input.b));
    return _wgslsmith_mult_i32(-30339i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c));
}

fn func_1() -> vec2<i32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, abs(u_input.b)), 10u)], _wgslsmith_f_op_f32(f32(-1f) * -2333f)))), Struct_1(_wgslsmith_add_u32(_wgslsmith_div_u32(9255u, 10547u) & _wgslsmith_clamp_u32(u_input.d, 0u, u_input.d), ~_wgslsmith_mult_u32(43776u, 1u)), vec3<bool>(true, true, true), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~0u), 40946u), 10u)]), Struct_4(~(~_wgslsmith_div_u32(u_input.b, 42913u))));
    let var_1 = ~u_input.d;
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(~(~u_input.b), 8u)], vec2<i32>(-1i) * -(~vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(var_1, 6u)]) << (~vec2<u32>(u_input.b, 27160u) % vec2<u32>(32u))), vec2<f32>(global4[_wgslsmith_index_u32(var_1 & var_1, 10u)], global4[_wgslsmith_index_u32(45849u, 10u)]), abs(~(-_wgslsmith_clamp_i32(1i, global3[_wgslsmith_index_u32(1u, 6u)], -8632i))));
    global0 = array<vec3<u32>, 3>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(166f * _wgslsmith_f_op_f32(f32(-1f) * -893f)));
    return ~vec2<i32>(var_2.d ^ ((0i >> (0u % 32u)) | u_input.c), _wgslsmith_add_i32(-u_input.a, -24300i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, (4294967295u == u_input.b) == true), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.b, u_input.b), !(!vec3<bool>(false, false, var_0.x)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~(~54759u), 10u)])), 444f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global4[_wgslsmith_index_u32(0u, 10u)], global4[_wgslsmith_index_u32(u_input.b, 10u)]))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-908f, global4[_wgslsmith_index_u32(u_input.d, 10u)], -1710f))))), ~vec2<u32>(_wgslsmith_sub_u32(91860u, _wgslsmith_add_u32(u_input.b, u_input.b)), countOneBits(_wgslsmith_add_u32(1u, 18846u))));
    let var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(func_1()), ~(-_wgslsmith_mod_vec2_i32(vec2<i32>(96445i, -60136i), vec2<i32>(44995i, global3[_wgslsmith_index_u32(3799u, 6u)])))), _wgslsmith_add_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(u_input.c, -1i)) & vec2<i32>(global3[_wgslsmith_index_u32(2158u ^ u_input.b, 6u)], 1i), vec2<i32>(-1i) * -vec2<i32>(u_input.a, 1i)));
    let var_3 = global1[_wgslsmith_index_u32(u_input.d, 8u)];
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) - global4[_wgslsmith_index_u32(0u, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_3.d.x, 10u)]), -593f), _wgslsmith_f_op_f32(var_3.c.x - -556f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a.c, 809f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_4 + 1000f))), _wgslsmith_f_op_f32(var_3.a.c + _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(var_1.a.a, 10u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4 * -624f) + global4[_wgslsmith_index_u32(u_input.d, 10u)]), 250f)), vec3<f32>(_wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(select(-1368f, _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(6230u << (u_input.d % 32u), 10u)])), func_3(var_1.a.b.xx, var_2) | !var_1.a.b.x)), var_3.c.x), var_3.c.x, vec4<i32>(_wgslsmith_clamp_i32(1i, 1i, abs(-21896i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(12150u, u_input.b), vec2<u32>(var_1.a.a, 0u)) % 32u)), -(firstTrailingBit(0i) >> (_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(58739u, 32u)], vec3<u32>(u_input.b, 37400u, 24757u)) % 32u)), -28832i, 8935i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f + 821f)));
}

