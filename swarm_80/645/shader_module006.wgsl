struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u);

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 30> = array<u32, 30>(0u, 4294967295u, 4294967295u, 0u, 86767u, 54417u, 1u, 1u, 1u, 0u, 0u, 33983u, 1u, 13997u, 35200u, 70446u, 21292u, 19119u, 6353u, 108373u, 33520u, 65952u, 67318u, 59407u, 1u, 58238u, 15572u, 27293u, 1u, 1802u);

var<private> global3: array<bool, 11> = array<bool, 11>(false, true, true, true, false, true, true, false, true, false, true);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    global3 = array<bool, 11>();
    return _wgslsmith_mult_i32(abs(u_input.c.x), countOneBits(u_input.c.x << (33468u % 32u)) | _wgslsmith_add_i32(min(0i, global1.x ^ 0i), global1.x));
}

fn func_3() -> i32 {
    global1 = ~(u_input.c ^ u_input.c) | -(vec4<i32>(52471i, -u_input.a, func_2(vec3<u32>(16513u, 4294967295u, 23707u)), _wgslsmith_sub_i32(u_input.c.x, -32253i)) >> (firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, global0.a, global2[_wgslsmith_index_u32(4294967295u, 30u)]) & vec4<u32>(global0.a, 41825u, u_input.b.x, 66719u)) % vec4<u32>(32u)));
    return _wgslsmith_sub_i32(78854i << (max(~global0.a, global2[_wgslsmith_index_u32(select(~0u, 48716u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3611u, global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), vec2<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 30u)])), 11u)]), 30u)]) % 32u), 33003i);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    let var_0 = vec2<u32>(countOneBits(~global0.a), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_2.a, 0u | (u_input.b.x << (66368u % 32u)), 10680u) & _wgslsmith_mult_u32(arg_2.a, firstLeadingBit(~global0.a)), 30u)]);
    global1 = vec4<i32>(func_2(~vec3<u32>(var_0.x, _wgslsmith_mod_u32(arg_2.a, 1u), ~57338u)), abs(-func_2(vec3<u32>(arg_2.a, u_input.b.x, 4294967295u))) ^ (_wgslsmith_sub_i32(func_3(), select(-45002i, global1.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(761u, 30u)], 11u)])) & min(~0i, ~global1.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global1.ywx, -(~u_input.c.wwy)), u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, global1.x)), -u_input.c.x);
    let var_1 = var_0.x;
    let var_2 = arg_2;
    global3 = array<bool, 11>();
    return !(!any(vec2<bool>(global3[_wgslsmith_index_u32(global0.a, 11u)], true))) == global3[_wgslsmith_index_u32(4294967295u, 11u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = 4294967295u;
    global2 = array<u32, 30>();
    global2 = array<u32, 30>();
    let var_1 = vec4<bool>((true && global3[_wgslsmith_index_u32(arg_1.x, 11u)]) & true, all(select(select(!vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 11u)], true), vec3<bool>(global3[_wgslsmith_index_u32(39143u, 11u)], arg_2, true), arg_2 && arg_2), select(select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(58732u, 11u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(9508u, 11u)], arg_2), vec3<bool>(arg_2, arg_2, false)), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<bool>(arg_2, global3[_wgslsmith_index_u32(arg_1.x, 11u)], arg_2)), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(47747u, 11u)], true)))), arg_2, func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 1899f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2377f, arg_0.x) + arg_0.x))), Struct_1(u_input.b.x), arg_0.yx));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -1176f) * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(select(arg_0, arg_0, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(448f, arg_0.x, -1146f) + arg_0)))));
    return Struct_1(~4294967295u);
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_u32(firstLeadingBit(abs(abs(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 30u)], 3662u)))), firstLeadingBit(vec3<u32>(34145u, ~global0.a, ~56451u))));
    global2 = array<u32, 30>();
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~0u, func_4(vec3<f32>(1445f, 2382f, -231f), vec3<u32>(u_input.b.x, 71139u, 0u), global3[_wgslsmith_index_u32(0u, 11u)]).a, ~arg_0.a, ~u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global0.a, global2[_wgslsmith_index_u32(1u, 30u)], var_1.a) << (vec4<u32>(29709u, 17432u, var_0.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(17777u, 29287u, 1446u, 15029u), vec4<u32>(4479u, 4294967295u, global2[_wgslsmith_index_u32(6672u, 30u)], 27665u)))), max(countOneBits(~vec4<u32>(0u, 797u, u_input.b.x, 3997u)), reverseBits(select(vec4<u32>(80948u, global2[_wgslsmith_index_u32(var_1.a, 30u)], var_0.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, 9859u, 0u), vec4<bool>(global3[_wgslsmith_index_u32(12287u, 11u)], true, false, true))))));
    let var_2 = 1562f;
    return vec2<bool>(global3[_wgslsmith_index_u32(28037u, 11u)], (-global1.x < -1i) && (firstLeadingBit(global1.x) >= 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 30>();
    let var_0 = !select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x ^ global2[_wgslsmith_index_u32(1u, 30u)], 11u)] == true), func_5(func_4(vec3<f32>(1000f, 1170f, 621f), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 11273u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), vec3<u32>(global2[_wgslsmith_index_u32(94975u, 30u)], 0u, global2[_wgslsmith_index_u32(0u, 30u)])), func_1(vec3<f32>(-801f, -2033f, 843f), -914f, Struct_1(5645u), vec2<f32>(-119f, 2268f)))), vec2<bool>(true, _wgslsmith_f_op_f32(612f * -235f) <= _wgslsmith_f_op_f32(select(-1311f, 112f, false))));
    let var_1 = select(vec2<i32>((u_input.a & -1i) >> (~12862u % 32u), u_input.c.x) ^ ~u_input.c.wy, u_input.c.yx, func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-756f * -338f), _wgslsmith_f_op_f32(459f * 1540f), _wgslsmith_f_op_f32(min(1453f, 700f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1257f, -1000f, 872f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, 1331f, -993f)))))), 214f, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 165f, -580f))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1935u, global0.a), u_input.b), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)] >> (42090u % 32u), global0.a), any(!vec3<bool>(var_0.x, true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(564f, 1125f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(167f, 1485f)), vec2<f32>(1967f, -766f), !var_0.x)))));
    let var_2 = ~(16001u | global0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-811f, 1000f, -420f, -1138f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(970f, -1197f, -1444f, 931f) + vec4<f32>(-766f, 331f, -582f, 404f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(296f, -1100f, 796f, 1980f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(391f, 1227f, 345f, -722f))))))))));
    let var_4 = func_4(_wgslsmith_f_op_vec3_f32(var_3.ywz * vec3<f32>(-895f, var_3.x, -1683f)), ~firstTrailingBit(vec3<u32>(~1u, ~4294967295u, ~1u)), all(vec2<bool>(!global3[_wgslsmith_index_u32(u_input.b.x, 11u)], true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(1u, var_4.a)), vec2<u32>(0u, 0u)), ~(vec2<u32>(u_input.b.x, global0.a) | select(u_input.b, vec2<u32>(19963u, global2[_wgslsmith_index_u32(u_input.b.x, 30u)]), var_0))), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) + var_3.x)), 536f, var_3.x));
}

