struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 0u, 779f, true, 1333f), Struct_1(vec3<u32>(0u, 0u, 48683u), 33070u, -647f, true, 958f), Struct_1(vec3<u32>(5164u, 128617u, 4294967295u), 26625u, 1300f, false, -1134f), Struct_1(vec3<u32>(0u, 1u, 1u), 1u, -1679f, false, -298f), Struct_1(vec3<u32>(29390u, 4294967295u, 2014u), 0u, -582f, true, 1005f), Struct_1(vec3<u32>(0u, 4054u, 7642u), 0u, -655f, false, 633f), Struct_1(vec3<u32>(4294967295u, 4838u, 4392u), 0u, -285f, true, -225f), Struct_1(vec3<u32>(4294967295u, 3194u, 35407u), 4294967295u, -1064f, true, 1282f));

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<u32, 14> = array<u32, 14>(3246u, 1u, 4294967295u, 4294967295u, 4294967295u, 0u, 51025u, 86072u, 4294967295u, 4294967295u, 63183u, 54926u, 4294967295u, 83134u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global1 = array<Struct_1, 17>();
    var var_0 = true;
    var var_1 = 0u;
    var_0 = !any(vec2<bool>((false || arg_2.d) | arg_2.d, arg_1));
    var_1 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(~34907u, 1u, ~global2[_wgslsmith_index_u32(1u, 14u)], u_input.b), vec4<u32>(arg_2.a.x >> (0u % 32u), max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 14u)], 14u)], u_input.b), u_input.b, 0u)), vec4<u32>(1u, arg_0.x, 60369u, max(0u, u_input.a)) & (vec4<u32>(u_input.a, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 14u)], arg_0.x) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, arg_2.a.x), vec4<u32>(arg_0.x, arg_0.x, 1u, global2[_wgslsmith_index_u32(arg_2.a.x, 14u)]))), select(!select(vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(arg_2.d, true, arg_1, true), arg_1), vec4<bool>(arg_1 & true, true, all(vec3<bool>(false, false, false)), false), select(vec4<bool>(arg_2.d, arg_1, arg_2.d, arg_1), select(vec4<bool>(arg_1, arg_2.d, false, arg_2.d), vec4<bool>(arg_2.d, arg_1, arg_2.d, false), vec4<bool>(arg_2.d, true, false, arg_1)), vec4<bool>(true, false, arg_1, true)))), ~countOneBits(vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(global2[_wgslsmith_index_u32(19133u, 14u)], u_input.b, arg_0.x)), ~1u, abs(75229u))));
    return ~(~(~_wgslsmith_div_vec3_u32(arg_2.a, vec3<u32>(u_input.b, arg_2.b, global2[_wgslsmith_index_u32(arg_0.x, 14u)]))) & arg_2.a);
}

fn func_2() -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(0u, 8u)];
    var_0 = Struct_1(func_3(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(17431u, 14u)], 34113u), vec2<u32>(52775u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a.x, 79039u), var_0.a.zy)) & _wgslsmith_sub_vec2_u32(vec2<u32>(0u, var_0.b), vec2<u32>(global2[_wgslsmith_index_u32(1u, 14u)], 1u) ^ vec2<u32>(2118u, 66884u)), !var_0.d, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, 38857u, 1u, 1u), vec4<u32>(u_input.a, var_0.b, 19412u, global2[_wgslsmith_index_u32(104365u, 14u)]), false), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 28839u, global2[_wgslsmith_index_u32(u_input.a, 14u)], u_input.b), vec4<u32>(u_input.b, var_0.b, 79211u, 0u)))), 8u)]), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(var_0.a << (var_0.a % vec3<u32>(32u)), vec3<u32>(65494u, 10802u, global2[_wgslsmith_index_u32(0u, 14u)]))), var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c, 1643f))))), false, var_0.e);
    var_0 = Struct_1(vec3<u32>(reverseBits(firstLeadingBit(u_input.b)), firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, 0u, u_input.b)), max(select(4294967295u, global2[_wgslsmith_index_u32(37196u, 14u)], false), ~var_0.a.x)) & var_0.a, u_input.b, _wgslsmith_f_op_f32(sign(1077f)), any(!select(vec4<bool>(var_0.d, false, false, var_0.d), !vec4<bool>(false, var_0.d, true, var_0.d), vec4<bool>(true, true, var_0.d, false))), -938f);
    global2 = array<u32, 14>();
    global1 = array<Struct_1, 17>();
    return !vec3<bool>(true, var_0.d, all(select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(false, false), var_0.d)) || false);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    var var_0 = select(!vec3<bool>(_wgslsmith_f_op_f32(192f + 2223f) == arg_0.x, false, true), !vec3<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, arg_1, arg_1, true), false)), true, false), !select(select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, arg_1, true), false), func_2(), select(arg_1, false, arg_1)), func_2(), func_2()));
    global0 = array<Struct_1, 8>();
    var var_1 = -1i;
    global2 = array<u32, 14>();
    let var_2 = arg_2.x;
    return Struct_1(countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.b, 35028u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(global2[_wgslsmith_index_u32(17308u, 14u)], u_input.b, global2[_wgslsmith_index_u32(u_input.a, 14u)], u_input.a))), select(~u_input.b, 13394u, all(vec3<bool>(false, var_0.x, var_0.x))), min(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(0u, 14u)], 1u, 32280u), vec4<u32>(u_input.a, u_input.b, global2[_wgslsmith_index_u32(0u, 14u)], u_input.a))))), 50586u, _wgslsmith_f_op_f32(-arg_0.x), true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(664f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1362f), _wgslsmith_f_op_f32(-arg_0.x)))) * 1316f));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = arg_1;
    global1 = array<Struct_1, 17>();
    let var_2 = min(reverseBits(max(-vec4<i32>(-2575i, 18874i, -1i, -2358i), abs(-vec4<i32>(1i, 43765i, -2147483647i, -62173i)))), vec4<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(28958i, 1i), ~(-34040i)), 18220i, 2147483647i) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4280u, 34909u, 39107u), vec4<u32>(4294967295u, arg_2.a.x, var_0.a.x, arg_0.a.x)), ~vec4<u32>(55950u, global2[_wgslsmith_index_u32(10293u, 14u)], u_input.b, global2[_wgslsmith_index_u32(u_input.b, 14u)])), max(~arg_0.b, firstLeadingBit(65048u)), _wgslsmith_add_u32(~0u, 29111u ^ u_input.a), arg_0.a.x) % vec4<u32>(32u)));
    global2 = array<u32, 14>();
    return global1[_wgslsmith_index_u32(~4981u, 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 17>();
    let var_0 = func_4(func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(658f, 892f, -971f))))), true, _wgslsmith_div_vec2_f32(vec2<f32>(-963f, _wgslsmith_f_op_f32(trunc(-1235f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1451f, -1003f) * vec2<f32>(447f, -211f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-359f, -1561f)), global2[_wgslsmith_index_u32(u_input.b, 14u)] <= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)]))), -1i), any(!vec3<bool>(true, func_1(vec3<f32>(624f, 331f, 667f), false, vec2<f32>(-115f, 378f), 2147483647i).d, all(vec3<bool>(false, true, false)))), Struct_1(~firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(0u, global2[_wgslsmith_index_u32(u_input.a, 14u)], 0u))), ~_wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2432f * -340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f * -472f))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-351f))))));
    let var_1 = ~(~var_0.a);
    var var_2 = -260f;
    let var_3 = vec4<bool>(var_0.d || (!func_2().x && any(select(vec3<bool>(false, true, false), vec3<bool>(var_0.d, var_0.d, false), var_0.d))), all(!vec4<bool>(func_2().x, var_0.d, var_0.d, 4294967295u == global2[_wgslsmith_index_u32(79454u, 14u)])), true, false);
    var var_4 = countOneBits((select(1i, _wgslsmith_clamp_i32(28909i, 1i, -2147483647i), var_0.d) & 1i) << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 74389u), vec2<u32>(u_input.a, 21148u)), countOneBits(10105u << (var_1.x % 32u))) % 32u));
    var var_5 = _wgslsmith_f_op_f32(round(var_0.c));
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.c, var_0.c, var_0.e, var_0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, -745f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e, var_0.e) - vec2<f32>(-1356f, var_0.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.e) - vec2<f32>(384f, var_0.c)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, -223f) * vec2<f32>(var_0.e, -146f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, -468f)), var_3.wx)))));
}

