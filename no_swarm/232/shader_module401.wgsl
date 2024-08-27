struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 28> = array<i32, 28>(1i, i32(-2147483648), -1i, -74845i, -9248i, 17021i, i32(-2147483648), 20316i, -21951i, 36411i, i32(-2147483648), 54946i, i32(-2147483648), 1i, 1i, 2147483647i, 26175i, 1i, 7023i, i32(-2147483648), -3860i, -7666i, -11187i, -8105i, -44167i, -26941i, i32(-2147483648), -1i);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(true);
    let var_1 = -_wgslsmith_mod_vec2_i32(select(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(0u, 28u)]), vec2<i32>(1i, 2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.b, 1i)) << (_wgslsmith_div_vec2_u32(vec2<u32>(71544u, arg_0), vec2<u32>(arg_0, arg_0)) % vec2<u32>(32u)), global0.a), vec2<i32>(u_input.a, 14265i));
    var var_2 = select(!vec2<bool>((u_input.a == 0i) && (arg_1.x != -759f), global0.a), !vec2<bool>(any(select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(true, false, var_0.a, arg_2), vec4<bool>(var_0.a, false, global0.a, arg_2))), var_0.a), false);
    let var_3 = u_input.a;
    var var_4 = ~global1[_wgslsmith_index_u32(arg_0, 28u)];
    return -1i;
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = arg_0;
    return firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(2507u, 63246u), firstLeadingBit(vec2<u32>(4294967295u, 6504u))), abs(vec2<u32>(4294967295u, 42692u)), ~vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(~firstLeadingBit(vec2<u32>(11960u, 20330u)), vec2<u32>(~4316u, ~10852u))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(func_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(6549u, 46476u, 54317u), vec3<u32>(4294967295u, arg_0, arg_0)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, arg_0, 61862u), vec3<u32>(arg_0, 1u, 46085u))), 26u)]), min(arg_0 | 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 134560u, arg_0), vec4<u32>(53404u, arg_0, arg_0, 4294967295u))), ~0u), arg_0), 6u)];
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-231f - 1604f)), 612f, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1000f, -1093f)), -1458f))))), _wgslsmith_div_f32(-1694f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(295f, -459f))))), false));
    let var_2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(max(~7772u, arg_0), 28u)], abs(reverseBits(arg_2)), _wgslsmith_add_i32(-u_input.a, -2147483647i), -2147483647i), select(~vec4<i32>(0i, u_input.a, -2147483647i, 42557i), vec4<i32>(23471i, firstTrailingBit(u_input.b), global1[_wgslsmith_index_u32(firstTrailingBit(arg_0), 28u)], global1[_wgslsmith_index_u32(arg_0, 28u)] << (arg_0 % 32u)), select(!vec4<bool>(var_0.a, arg_1.a, false, false), vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), true)));
    global2 = array<Struct_1, 6>();
    let var_3 = ~vec3<u32>(5200u, _wgslsmith_div_u32(~abs(30009u), ~arg_0), ~arg_0);
    return Struct_1(select(true, (var_2.x >> (arg_0 % 32u)) <= 14450i, !any(vec2<bool>(global0.a, arg_1.a))) | true);
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = !(!(!vec4<bool>(true, true, !arg_0.a, all(vec2<bool>(global0.a, global0.a)))));
    global0 = Struct_1(!((_wgslsmith_dot_vec3_u32(vec3<u32>(36039u, 25007u, 34606u), vec3<u32>(49854u, 4294967295u, 4294967295u)) | select(1u, 0u, false)) == 4294967295u));
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, ~(-1i)), global1[_wgslsmith_index_u32(46587u, 28u)]), min(-(global1[_wgslsmith_index_u32(1u, 28u)] & select(51019i, u_input.b, var_0.x)), -(~u_input.b >> (100383u % 32u))), max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, 10494u), 28u)], u_input.b));
    global3 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~(-vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 56028i, 22243i, var_1.x)), -(~vec4<i32>(-2147483647i, 43028i, u_input.a, 2147483647i))), vec4<i32>(_wgslsmith_add_i32(var_1.x, 0i), i32(-1i) * -1i, ~global1[_wgslsmith_index_u32(1u, 28u)], -(var_1.x & var_1.x))) & _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(firstTrailingBit(67029i), 1i, ~(-2147483647i), 1i)), ~vec4<i32>(~global1[_wgslsmith_index_u32(4294967295u, 28u)], max(-29499i, 19500i), countOneBits(var_1.x), 0i));
    return _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_clamp_u32(35382u, 4294967295u, 4294967295u)), firstTrailingBit(29536u), 47824u), _wgslsmith_clamp_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(28122u, 0u), vec2<u32>(55469u, 4294967295u)), 1u), 0u, _wgslsmith_div_u32(func_3(arg_0), func_3(Struct_1(var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 17794u), vec2<u32>(1u, 1u)));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_0.x, 28u)] ^ func_1(1u, vec3<f32>(1384f, -1183f, -224f), global0.a), -27979i), func_1(_wgslsmith_add_u32(countOneBits(73866u), _wgslsmith_div_u32(var_0.x, 0u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-878f, 1206f, -929f)), true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(~var_0.x), var_0.x), 28u)], u_input.a) >> ((vec4<u32>(func_4(func_2(var_0.x, global2[_wgslsmith_index_u32(12866u, 6u)], 6667i)), 4294967295u, firstTrailingBit(var_0.x & var_0.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(25756u, 9625u, 0u), vec3<u32>(var_0.x, 76127u, 0u)), firstLeadingBit(72419u))) ^ ~(~(~vec4<u32>(4294967295u, 6995u, 98019u, var_0.x)))) % vec4<u32>(32u));
    var var_2 = func_2(var_0.x, global2[_wgslsmith_index_u32(var_0.x, 6u)], global1[_wgslsmith_index_u32(var_0.x, 28u)]);
    var_0 = _wgslsmith_add_vec2_u32(~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(34462u, var_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(52058u, 1u)), ~vec2<u32>(var_0.x, 22675u))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(40502u, 94867u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 4294967295u), ~(vec2<u32>(var_0.x, var_0.x) | vec2<u32>(47077u, var_0.x))), _wgslsmith_clamp_vec2_u32(~(vec2<u32>(11847u, var_0.x) & vec2<u32>(57887u, var_0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0.x), vec2<u32>(var_0.x, var_0.x) << (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), reverseBits(reverseBits(vec2<u32>(var_0.x, 27575u))))));
    var var_3 = func_2(_wgslsmith_mod_u32(_wgslsmith_sub_u32(30224u, ~var_0.x), var_0.x) << (_wgslsmith_add_u32(func_3(func_2(var_0.x, global2[_wgslsmith_index_u32(28089u, 6u)], 2147483647i)), var_0.x ^ var_0.x) % 32u), Struct_1(true), 2147483647i ^ _wgslsmith_dot_vec4_i32(~(-vec4<i32>(global1[_wgslsmith_index_u32(54445u, 28u)], -1i, u_input.a, -13874i)), vec4<i32>(var_1.x, -36622i, _wgslsmith_div_i32(-15649i, 184i), min(46377i, u_input.b))));
    let var_4 = -494f;
    let var_5 = vec4<f32>(var_4, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(357f, _wgslsmith_f_op_f32(-var_4), true)), -810f)), -384f, 534f);
    var var_6 = func_2(~_wgslsmith_add_u32(firstLeadingBit(1u), reverseBits(firstLeadingBit(var_0.x))), func_2(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 83543u, 24519u, 49711u))), func_2(var_0.x, func_2(39345u, func_2(1u, global2[_wgslsmith_index_u32(44095u, 6u)], -2147483647i), global1[_wgslsmith_index_u32(var_0.x, 28u)] | 0i), select(0i, u_input.a, true) ^ var_1.x), -2147483647i), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(var_5))))))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(select(vec4<u32>(4230u, 60192u, var_0.x, 28692u), vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<bool>(false, false, true, var_6.a)), ~vec4<u32>(var_0.x, 0u, 36287u, var_0.x), vec4<bool>(false, false, false, global0.a)), vec4<u32>(4294967295u, ~var_0.x, 86017u << (var_0.x % 32u), ~4294967295u)), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(54370u, var_0.x, 1u, 52869u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 54774u), vec4<u32>(var_0.x, 0u, 73303u, 63684u))), countOneBits(vec4<u32>(var_0.x, 0u, 4294967295u, 15302u)) ^ vec4<u32>(7366u, 58425u, var_0.x, var_0.x))), vec2<i32>(firstTrailingBit(i32(-1i) * -36276i), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~var_0.x, 28u)], _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, var_1.x, -39848i, global1[_wgslsmith_index_u32(var_0.x, 28u)]), vec4<i32>(0i, global1[_wgslsmith_index_u32(var_0.x, 28u)], var_1.x, -36831i)), vec4<i32>(1i, global1[_wgslsmith_index_u32(var_0.x, 28u)], 1i, var_1.x)))), ~(~select(vec4<u32>(var_0.x, 4294967295u, var_0.x, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 32564u, var_0.x, var_0.x), vec4<u32>(0u, var_0.x, 23781u, var_0.x)), select(vec4<bool>(var_2.a, var_6.a, global0.a, var_6.a), vec4<bool>(true, false, true, var_6.a), vec4<bool>(var_6.a, false, var_3.a, true)))), 58688i);
}

