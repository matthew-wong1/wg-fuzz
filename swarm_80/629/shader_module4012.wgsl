struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, true, true, true, false, false, true, true, true, false, false, true, true, true, true, false, false, true, false, true, true, false, true, true, false, false, true, true);

var<private> global1: array<i32, 23> = array<i32, 23>(1201i, 2147483647i, -30715i, 25416i, 26507i, 1i, -35242i, 22928i, -13463i, -32574i, -1i, 1i, -19054i, 0i, 2147483647i, 1i, i32(-2147483648), -52654i, 1i, 30026i, -6419i, -15585i, -24393i);

var<private> global2: array<bool, 11>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = -abs(arg_0.e.a.www);
    let var_1 = arg_0.d;
    var var_2 = var_1.c.x;
    var var_3 = abs(max(~(-vec2<i32>(u_input.a, 0i)), vec2<i32>(-u_input.a, _wgslsmith_div_i32(52344i, -2147483647i))) ^ vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -1i, u_input.a, 1i)), max(var_1.a, vec4<i32>(0i, 26521i, u_input.a, -37516i))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), 1u), 23u)]));
    global1 = array<i32, 23>();
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = select(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, func_3(Struct_2(vec4<u32>(0u, 1u, 51801u, 1u), Struct_1(vec4<i32>(-1i, -1i, -2147483647i, global1[_wgslsmith_index_u32(3932u, 23u)]), vec2<i32>(-2147483647i, -16813i), vec3<f32>(1593f, 1220f, 1568f), false, vec3<u32>(1u, 51339u, 0u)), global1[_wgslsmith_index_u32(4294967295u, 23u)], Struct_1(vec4<i32>(22779i, u_input.a, u_input.a, u_input.a), vec2<i32>(-20536i, -1i), vec3<f32>(-773f, -2094f, 883f), global2[_wgslsmith_index_u32(1u, 11u)], vec3<u32>(61107u, 4294967295u, 1148u)), Struct_1(vec4<i32>(u_input.a, -1i, -28426i, global1[_wgslsmith_index_u32(1u, 23u)]), vec2<i32>(1557i, global1[_wgslsmith_index_u32(17855u, 23u)]), vec3<f32>(1697f, -458f, -1595f), global2[_wgslsmith_index_u32(4294967295u, 11u)], vec3<u32>(4294967295u, 22883u, 53064u)))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 67571u, 0u), vec3<u32>(0u, 0u, 47059u)) % 32u)), 23u)], -global1[_wgslsmith_index_u32(~(30674u << (firstTrailingBit(1u) % 32u)), 23u)], true);
    let var_1 = _wgslsmith_add_i32(u_input.a, ~abs(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -12946i, global1[_wgslsmith_index_u32(87118u, 23u)]), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(17163u, 23u)], u_input.a)), _wgslsmith_mod_i32(-80422i, u_input.a))));
    global1 = array<i32, 23>();
    var var_2 = Struct_2(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(countOneBits(abs(~vec4<i32>(-55736i, 39314i, 14621i, var_1))), select(abs(vec2<i32>(var_1, 1i)), reverseBits(vec2<i32>(var_0, 70270i)), global2[_wgslsmith_index_u32(~(~25824u), 11u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(915f, 1960f, -1226f), vec3<f32>(-949f, 769f, 173f))))), all(vec3<bool>(!global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(~1u, 11u)])), vec3<u32>(func_3(Struct_2(vec4<u32>(3748u, 1u, 4294967295u, 0u), Struct_1(vec4<i32>(-1i, global1[_wgslsmith_index_u32(19974u, 23u)], 18449i, 32409i), vec2<i32>(1i, -1i), vec3<f32>(1000f, 1499f, -783f), false, vec3<u32>(22757u, 46187u, 89055u)), var_1, Struct_1(vec4<i32>(var_0, global1[_wgslsmith_index_u32(0u, 23u)], u_input.a, var_1), vec2<i32>(52997i, var_0), vec3<f32>(-251f, 728f, 1846f), global0[_wgslsmith_index_u32(1u, 28u)], vec3<u32>(6347u, 4294967295u, 0u)), Struct_1(vec4<i32>(-1i, var_1, var_1, 0i), vec2<i32>(var_0, 2147483647i), vec3<f32>(1011f, -150f, 173f), true, vec3<u32>(62257u, 0u, 0u)))), _wgslsmith_mod_u32(select(1u, 25705u, global0[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_clamp_u32(22434u, 1u, 11476u)), 4294967295u)), ~var_0, Struct_1(vec4<i32>(-27325i, firstLeadingBit(-1i), var_0 | _wgslsmith_mod_i32(-2147483647i, 5660i), ~var_0), ~abs(vec2<i32>(var_1, 18850i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-227f, -1156f, -2785f)))))), false || global2[_wgslsmith_index_u32(abs(1u), 11u)], reverseBits(vec3<u32>(1u, 41723u, firstTrailingBit(0u)))), Struct_1(countOneBits(~select(vec4<i32>(global1[_wgslsmith_index_u32(90963u, 23u)], -43195i, -1i, 54356i), vec4<i32>(35831i, 1i, var_1, global1[_wgslsmith_index_u32(1u, 23u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 11u)], false, true))), _wgslsmith_clamp_vec2_i32(reverseBits(~vec2<i32>(global1[_wgslsmith_index_u32(50083u, 23u)], -2147483647i)), max(vec2<i32>(var_0, 20330i), _wgslsmith_clamp_vec2_i32(vec2<i32>(5594i, var_1), vec2<i32>(5685i, 2147483647i), vec2<i32>(-29011i, u_input.a))), vec2<i32>(reverseBits(-30899i), -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1582f, -247f)))), all(vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(4294967295u, 11u)] & global0[_wgslsmith_index_u32(65085u, 28u)], true, global0[_wgslsmith_index_u32(~4294967295u, 28u)])), ~vec3<u32>(1u, 1u, 1u)));
    var_2 = Struct_2(var_2.a, var_2.b, firstTrailingBit(_wgslsmith_add_i32(var_2.b.b.x, -2147483647i)) << (var_2.d.e.x % 32u), Struct_1(firstLeadingBit(~(-var_2.e.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(var_2.b.b), ~var_2.d.b), u_input.a), _wgslsmith_f_op_vec3_f32(-var_2.b.c), true, vec3<u32>(4294967295u, _wgslsmith_add_u32(58645u ^ var_2.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.a.x, 3178u, var_2.b.e.x), var_2.a)), countOneBits(4294967295u))), var_2.d);
    return var_2.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<bool, 28>();
    global2 = array<bool, 11>();
    let var_0 = ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, select(firstTrailingBit(arg_1.e.x), arg_1.e.x | 4294967295u, true)), ~4294967295u, reverseBits(4294967295u), _wgslsmith_div_u32(~(~80464u), 61835u >> (arg_1.e.x % 32u)));
    let var_1 = all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_1.e.x, 11u)], false, !all(vec2<bool>(true, global0[_wgslsmith_index_u32(45677u, 28u)]))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(arg_1.e.x, 28u)], arg_1.d, true))), ((global1[_wgslsmith_index_u32(arg_1.e.x, 23u)] ^ u_input.a) >> (~38212u % 32u)) > ~(-32811i)));
    global1 = array<i32, 23>();
    return select(vec2<bool>(!global0[_wgslsmith_index_u32(1u, 28u)] | (_wgslsmith_f_op_f32(select(571f, arg_1.c.x, true)) < _wgslsmith_f_op_f32(floor(arg_1.c.x))), false), !vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.e.x, 28u)], true, false, global0[_wgslsmith_index_u32(7758u, 28u)])), true), select(vec2<bool>(func_2().d, arg_1.d), !vec2<bool>(var_1, global2[_wgslsmith_index_u32(var_0.x, 11u)]), vec2<bool>(!var_1, !arg_1.d)));
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global1 = array<i32, 23>();
    var var_0 = !any(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -663f, 523f, 1638f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1562f, -559f, -659f) - vec4<f32>(-201f, -744f, 531f, 244f))), func_2()));
    let var_1 = false;
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(select(-(vec3<i32>(75620i, 2147483647i, global1[_wgslsmith_index_u32(arg_0, 23u)]) & vec3<i32>(u_input.a, 2147483647i, -11703i)), vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 6852u), 23u)], u_input.a, global1[_wgslsmith_index_u32(~0u, 23u)]), var_1), _wgslsmith_mod_vec3_i32(func_2().a.ywx, -_wgslsmith_add_vec3_i32(vec3<i32>(-103112i, -29828i, -37537i), vec3<i32>(global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(1u, 23u)])))), vec3<i32>(global1[_wgslsmith_index_u32(max(1u, func_3(Struct_2(vec4<u32>(1u, arg_0, arg_0, 18166u), Struct_1(vec4<i32>(32386i, global1[_wgslsmith_index_u32(arg_0, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(7646u, 23u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 23u)], -21383i), vec3<f32>(436f, -933f, -1615f), global0[_wgslsmith_index_u32(20553u, 28u)], vec3<u32>(arg_0, arg_0, arg_0)), u_input.a, Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(arg_0, 23u)], u_input.a, 6171i, global1[_wgslsmith_index_u32(arg_0, 23u)]), vec2<i32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(24911u, 23u)]), vec3<f32>(-189f, -133f, -656f), var_1, vec3<u32>(43806u, 44035u, arg_0)), Struct_1(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a), vec2<i32>(-5842i, global1[_wgslsmith_index_u32(arg_0, 23u)]), vec3<f32>(-1000f, 202f, -1072f), var_1, vec3<u32>(76067u, 10453u, 4294967295u))))), 23u)], abs(global1[_wgslsmith_index_u32(71289u, 23u)]), _wgslsmith_sub_i32(~17856i << (max(8910u, arg_0) % 32u), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(40337u, 57560u, 1u), 23u)])));
    var var_3 = Struct_1(vec4<i32>(_wgslsmith_mult_i32(-u_input.a, 1i), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-14700i, global1[_wgslsmith_index_u32(41794u, 23u)], var_2.x), var_2)), min(2147483647i, u_input.a >> (~arg_0 % 32u)), var_2.x | -(1i | global1[_wgslsmith_index_u32(arg_0, 23u)])), -var_2.zx, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(627f)))))), 1f), global0[_wgslsmith_index_u32(~9264u, 28u)] | global0[_wgslsmith_index_u32(~reverseBits(~4294967295u), 28u)], select(_wgslsmith_mod_vec3_u32(~(vec3<u32>(6684u, 0u, arg_0) >> (vec3<u32>(arg_0, 0u, 72932u) % vec3<u32>(32u))), vec3<u32>(30716u, 13313u, _wgslsmith_add_u32(1u, arg_0))), reverseBits(vec3<u32>(max(1u, arg_0), arg_0, arg_0)), !global2[_wgslsmith_index_u32((arg_0 << (54126u % 32u)) & _wgslsmith_add_u32(arg_0, arg_0), 11u)]));
    return select(select(select(select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 11u)], var_1), var_3.d), vec3<bool>(true, global0[_wgslsmith_index_u32(var_3.e.x, 28u)], var_1)), !select(vec3<bool>(true, var_1, var_3.d), vec3<bool>(true, false, false), global2[_wgslsmith_index_u32(89069u, 11u)]), func_2().d), select(vec3<bool>(true, false, false), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(var_3.e.x, 28u)], var_1), !vec3<bool>(var_3.d, true, global2[_wgslsmith_index_u32(4294967295u, 11u)]), global0[_wgslsmith_index_u32(0u, 28u)]), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(arg_0, 11u)])), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(var_3.e.x, 28u)], false, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(23004u, 11u)]), vec3<bool>(false, var_3.d, true)), select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], var_1, false), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(arg_0, 11u)]), vec3<bool>(global2[_wgslsmith_index_u32(49507u, 11u)], global0[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(var_3.e.x, 11u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0, 28u)], true)), !vec3<bool>(true, global0[_wgslsmith_index_u32(4651u, 28u)], true)), select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 28u)], var_1, var_1), select(vec3<bool>(global2[_wgslsmith_index_u32(22222u, 11u)], var_3.d, true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 28u)], true, global0[_wgslsmith_index_u32(0u, 28u)]), true), var_3.d & global2[_wgslsmith_index_u32(1u, 11u)]))), !(!select(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(28810u, 28u)]), vec3<bool>(var_1, true, var_1), vec3<bool>(true, var_1, false)), select(vec3<bool>(global0[_wgslsmith_index_u32(5267u, 28u)], global2[_wgslsmith_index_u32(6912u, 11u)], false), vec3<bool>(var_1, global2[_wgslsmith_index_u32(var_3.e.x, 11u)], var_3.d), true), vec3<bool>(false, var_3.d, global2[_wgslsmith_index_u32(arg_0, 11u)]))), !vec3<bool>(true | (var_3.e.x < var_3.e.x), global0[_wgslsmith_index_u32(18963u, 28u)], true));
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: i32) -> Struct_2 {
    let var_0 = -682f;
    global2 = array<bool, 11>();
    var var_1 = vec4<i32>(arg_2, select(max(-arg_2, arg_1.x), u_input.a, !(var_0 > -1957f) && (func_2().d && arg_0)), -2147483647i, ~reverseBits(_wgslsmith_div_i32(-2147483647i, 2147483647i)));
    var var_2 = var_0;
    global2 = array<bool, 11>();
    return Struct_2(select(abs(reverseBits(vec4<u32>(1844u, 0u, 72585u, 1u))), reverseBits(~countOneBits(vec4<u32>(1u, 7077u, 7258u, 1u))), arg_0), Struct_1(select(arg_1, _wgslsmith_div_vec4_i32(arg_1 >> (vec4<u32>(98603u, 18597u, 0u, 28838u) % vec4<u32>(32u)), vec4<i32>(global1[_wgslsmith_index_u32(43283u, 23u)], 29030i, -59612i, global1[_wgslsmith_index_u32(4294967295u, 23u)]) >> (vec4<u32>(35072u, 2314u, 91484u, 1u) % vec4<u32>(32u))), all(vec4<bool>(global2[_wgslsmith_index_u32(35539u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], false, global0[_wgslsmith_index_u32(30721u, 28u)])) || global0[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_add_vec2_i32(arg_1.zx >> (vec2<u32>(35916u, 1u) % vec2<u32>(32u)), vec2<i32>(arg_2, global1[_wgslsmith_index_u32(~82053u, 23u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 - 255f), _wgslsmith_div_f32(var_0, -1507f), var_0) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, var_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-555f, 1848f, -151f) + vec3<f32>(1263f, var_0, var_0)))), all(vec3<bool>(!global0[_wgslsmith_index_u32(71748u, 28u)], false, true)), ~(~(~vec3<u32>(55349u, 37500u, 36127u)))), arg_1.x, func_2(), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(!select(func_1(0u), vec3<bool>(true, true, true), !vec3<bool>(global0[_wgslsmith_index_u32(16835u, 28u)], true, true))), max(select(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 60536i, -1i, u_input.a), vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(42722u, 23u)], 36019i, 2018i)), ~select(vec4<i32>(-1i, -2147483647i, -1i, global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], -2147483647i, u_input.a, 31321i), vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], true)), (global0[_wgslsmith_index_u32(35855u, 28u)] & true) & all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(19164u, 28u)], false, false))), min(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, 0i) >> (vec4<u32>(23002u, 2894u, 75972u, 0u) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, 0i, u_input.a), vec4<i32>(-5123i, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(5878u, 23u)], global1[_wgslsmith_index_u32(101533u, 23u)])))), ~abs(global1[_wgslsmith_index_u32(~0u >> (_wgslsmith_mod_u32(1u, 6428u) % 32u), 23u)]));
    global0 = array<bool, 28>();
    var var_1 = Struct_1(-_wgslsmith_mult_vec4_i32(var_0.d.a, ~var_0.d.a), max(max(~vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.e.x, 23u)], 10379i), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 43648i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-14875i, u_input.a), var_0.e.b, var_0.e.b))), firstLeadingBit(~(-vec2<i32>(2147483647i, -28387i)))), _wgslsmith_f_op_vec3_f32(var_0.e.c - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1431f, var_0.d.c.x, var_0.e.c.x))))), !(!global2[_wgslsmith_index_u32(4294967295u, 11u)]), ~var_0.a.xxy);
    global1 = array<i32, 23>();
    global2 = array<bool, 11>();
    var var_2 = func_5(true, _wgslsmith_mod_vec4_i32(var_0.d.a, -abs(var_1.a)), min(max(1i, var_0.e.a.x), _wgslsmith_mult_i32(var_1.b.x, ~min(2147483647i, global1[_wgslsmith_index_u32(var_0.a.x, 23u)]))));
    let var_3 = var_2.e;
    var_2 = func_5(!global2[_wgslsmith_index_u32(~(~(~15689u)), 11u)], ~select(abs(~var_3.a), var_0.b.a, vec4<bool>(true, true, !var_1.d, true)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(func_2().e, ~var_3.a.wwz, reverseBits(~min(var_3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -55439i, var_3.b.x), vec3<i32>(u_input.a, var_0.b.a.x, 0i)))), 51643u, var_2.d.e.xy);
}

