struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 30> = array<u32, 30>(4294967295u, 1u, 0u, 1u, 3430u, 4294967295u, 4294967295u, 0u, 4294967295u, 72413u, 19456u, 0u, 4294967295u, 4294967295u, 1u, 4294967295u, 5322u, 4908u, 35354u, 0u, 4294967295u, 0u, 0u, 74089u, 15607u, 51374u, 4294967295u, 4294967295u, 17011u, 35192u);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<i32>(27561i, -1i, -36396i), 4294967295u), Struct_1(vec3<i32>(0i, -7628i, -1i), 52375u), Struct_1(vec3<i32>(1i, i32(-2147483648), -14881i), 37448u), Struct_1(vec3<i32>(-1i, 47134i, 2147483647i), 0u), Struct_1(vec3<i32>(44261i, -1i, -18884i), 0u), Struct_1(vec3<i32>(-1i, -1i, 1i), 27099u), Struct_1(vec3<i32>(-38105i, 30418i, 44458i), 0u), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), 4294967295u), Struct_1(vec3<i32>(32739i, 1i, 1i), 47236u), Struct_1(vec3<i32>(-1i, i32(-2147483648), 47516i), 0u), Struct_1(vec3<i32>(50796i, -19092i, 0i), 0u), Struct_1(vec3<i32>(i32(-2147483648), -10166i, 0i), 4294967295u), Struct_1(vec3<i32>(-13014i, i32(-2147483648), -1i), 4294967295u), Struct_1(vec3<i32>(-6501i, 2147483647i, 2147483647i), 25547u), Struct_1(vec3<i32>(20141i, 4907i, -1i), 0u), Struct_1(vec3<i32>(-26716i, -1i, -38627i), 11223u), Struct_1(vec3<i32>(-14770i, 12902i, 39476i), 0u), Struct_1(vec3<i32>(2800i, 0i, 18674i), 0u), Struct_1(vec3<i32>(i32(-2147483648), 1i, 2147483647i), 61336u), Struct_1(vec3<i32>(i32(-2147483648), -24914i, -33745i), 1u), Struct_1(vec3<i32>(25205i, 2147483647i, 0i), 42388u), Struct_1(vec3<i32>(16590i, -10782i, i32(-2147483648)), 6688u), Struct_1(vec3<i32>(-1i, 2147483647i, 2147483647i), 4294967295u), Struct_1(vec3<i32>(16637i, -56890i, 53762i), 20852u), Struct_1(vec3<i32>(-56768i, -6032i, -47110i), 1u), Struct_1(vec3<i32>(-62136i, 32231i, 2147483647i), 0u), Struct_1(vec3<i32>(-52962i, 35281i, -9006i), 63919u), Struct_1(vec3<i32>(-16193i, -6338i, -4661i), 4294967295u), Struct_1(vec3<i32>(-61579i, 3515i, 2147483647i), 42374u), Struct_1(vec3<i32>(-1i, 1566i, 87i), 4294967295u));

var<private> global3: vec3<i32> = vec3<i32>(-89445i, -51373i, -1i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    global1 = array<u32, 30>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-497f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * -639f))), 1953f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-422f))));
    global2 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1262f, 739f)))))));
    var var_2 = Struct_1(~firstTrailingBit(vec3<i32>(u_input.a.x & u_input.a.x, -global3.x, global3.x)), 14307u);
    return firstLeadingBit(_wgslsmith_add_u32(~1u << (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 30u)], 10264u, 0u)), max(vec4<u32>(1u, var_2.b, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57735u, 30u)], 30u)]), vec4<u32>(1u, var_2.b, global1[_wgslsmith_index_u32(var_2.b, 30u)], var_2.b))) % 32u), ~12834u));
}

fn func_4(arg_0: u32, arg_1: f32) -> f32 {
    global2 = array<Struct_1, 30>();
    var var_0 = all(!(!vec3<bool>(true, arg_0 > arg_0, true)));
    var var_1 = global2[_wgslsmith_index_u32(~4294967295u, 30u)];
    global3 = abs(var_1.a);
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(reverseBits(var_1.a), var_1.a), ~_wgslsmith_mult_u32(func_3(), 54489u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -680f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-u_input.b ^ firstLeadingBit(u_input.b), u_input.b), reverseBits(select(-u_input.b, ~vec3<i32>(-1i, 0i, 26976i), true))), 28417u | ~_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(4294967295u, 30u)], 0u));
    let var_1 = -45773i;
    var var_2 = _wgslsmith_f_op_f32(func_4(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1008f * -574f))))))));
    var var_3 = countOneBits(~(~(~(vec3<u32>(var_0.b, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 30u)]) >> (vec3<u32>(41083u, 1u, var_0.b) % vec3<u32>(32u))))));
    var var_4 = Struct_1(u_input.b, var_3.x);
    return var_0;
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = select(arg_2.a, ~vec3<i32>(i32(-1i) * -u_input.a.x, -1i, firstLeadingBit(~global3.x)), !((global3.x >> (4294967295u % 32u)) > _wgslsmith_dot_vec3_i32(u_input.b << (vec3<u32>(1u, 49154u, 4294967295u) % vec3<u32>(32u)), u_input.b)));
    var var_1 = arg_2;
    var var_2 = vec2<bool>(var_1.a.x == -2353i, any(!vec3<bool>(true, select(true, false, false), true)));
    global1 = array<u32, 30>();
    global3 = -(~_wgslsmith_add_vec3_i32(arg_2.a, vec3<i32>(-2147483647i, var_0.x, 1i)) | vec3<i32>(_wgslsmith_div_i32(-35949i, global3.x << (40039u % 32u)), ~1i, global3.x));
    return vec2<u32>(1u, arg_2.b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = ~(-33762i);
    let var_1 = select(vec2<bool>(true, 23504u < arg_1.b), vec2<bool>(true, true | ((0u ^ arg_1.b) == _wgslsmith_dot_vec4_u32(vec4<u32>(15958u, 15677u, 7663u, 8068u), vec4<u32>(0u, global1[_wgslsmith_index_u32(arg_1.b, 30u)], 0u, 4294967295u)))), true);
    var var_2 = 404f;
    var var_3 = func_5(-9630i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-155f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-116f - 1196f), _wgslsmith_f_op_f32(1268f - 210f))), _wgslsmith_f_op_f32(f32(-1f) * -169f), arg_0)), func_2());
    global1 = array<u32, 30>();
    return func_2();
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = true;
    global3 = u_input.b;
    global2 = array<Struct_1, 30>();
    global0 = -537f;
    return -global3.xx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 30>();
    global3 = reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 18948i, u_input.a.x, -36753i) << (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(88918u, 30u)], 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21914u, 30u)], 30u)], 30u)], 41159u) % vec4<u32>(32u)), vec4<i32>(-47100i, u_input.a.x, u_input.b.x, -12675i)), vec4<i32>(global3.x, u_input.a.x, ~(-7428i), reverseBits(u_input.a.x))), ~(~(-15142i)), global3.x));
    var var_0 = _wgslsmith_clamp_vec2_i32(func_6(_wgslsmith_mod_vec3_u32(min(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38557u, 30u)], 30u)], 30u)], 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23644u, 30u)], 30u)], 30u)]), vec3<u32>(global1[_wgslsmith_index_u32(0u, 30u)], 31786u, 4294967295u)), _wgslsmith_div_vec3_u32(~vec3<u32>(60655u, global1[_wgslsmith_index_u32(19645u, 30u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), vec3<u32>(global1[_wgslsmith_index_u32(80991u, 30u)], global1[_wgslsmith_index_u32(8826u, 30u)], 30556u))), global2[_wgslsmith_index_u32(~(~(~global1[_wgslsmith_index_u32(1u, 30u)])), 30u)], func_1(true, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u >> (0u % 32u), global1[_wgslsmith_index_u32(14353u, 30u)]), 30u)], vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, -55487i, -40440i, global3.x), vec4<i32>(u_input.b.x, -2147483647i, global3.x, -36323i)))), vec4<i32>(max(global3.x | u_input.a.x, _wgslsmith_sub_i32(-37824i, global3.x)), -1i, -19041i, ~(-u_input.b.x))), ~func_1((i32(-1i) * -10589i) == u_input.b.x, Struct_1(-vec3<i32>(0i, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(109431u, 30u)], 30u)]), _wgslsmith_add_vec2_i32(abs(vec2<i32>(global3.x, 20192i)), vec2<i32>(1i, -2147483647i))).a.yz, global3.xy);
    global1 = array<u32, 30>();
    let var_1 = global2[_wgslsmith_index_u32(16626u, 30u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(-44845i, var_1.a.x), var_0.x), ~_wgslsmith_add_i32(11868i, func_2().a.x)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_1.b, global1[_wgslsmith_index_u32(1u, 30u)]), vec4<u32>(var_1.b, 0u, var_1.b, global1[_wgslsmith_index_u32(var_1.b, 30u)])), vec4<u32>(global1[_wgslsmith_index_u32(29374u, 30u)], 1u, var_1.b, global1[_wgslsmith_index_u32(1u, 30u)])), select(var_1.b, global1[_wgslsmith_index_u32(firstTrailingBit(global1[_wgslsmith_index_u32(4294967295u, 30u)]), 30u)], false)), 30u)] | min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 4294967295u, global1[_wgslsmith_index_u32(0u, 30u)]), firstLeadingBit(vec3<u32>(var_1.b, var_1.b, 74829u))), 30u)], 94304u));
}

