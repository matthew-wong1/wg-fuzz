struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, vec4<u32>(0u, 0u, 4484u, 4294967295u), vec2<u32>(0u, 6489u));

var<private> global1: vec3<f32>;

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-229f, 437f, 1009f), vec3<f32>(-1523f, 384f, -287f), vec3<f32>(1083f, -1577f, 484f), vec3<f32>(-416f, 418f, 1047f), vec3<f32>(-413f, 195f, 665f), vec3<f32>(-563f, -807f, 906f), vec3<f32>(-1000f, 1792f, 604f), vec3<f32>(431f, 756f, 429f), vec3<f32>(-1761f, 132f, 1764f), vec3<f32>(286f, -653f, -270f), vec3<f32>(262f, -198f, 1222f), vec3<f32>(-1176f, -894f, 1000f), vec3<f32>(-217f, -912f, 784f), vec3<f32>(596f, 2309f, -675f), vec3<f32>(2071f, -458f, -337f), vec3<f32>(-859f, -354f, -866f), vec3<f32>(-1971f, -1501f, 651f), vec3<f32>(-1000f, 224f, -1000f), vec3<f32>(956f, 191f, -493f));

var<private> global3: array<u32, 19> = array<u32, 19>(55620u, 4294967295u, 4294967295u, 26395u, 0u, 0u, 0u, 93828u, 4294967295u, 0u, 40844u, 110366u, 18293u, 1u, 73950u, 1u, 158210u, 68024u, 33362u);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(min(_wgslsmith_div_vec4_i32(-vec4<i32>(39067i, u_input.a, global0.a, 23083i), firstTrailingBit(vec4<i32>(u_input.a, u_input.a, -1i, 1i) ^ vec4<i32>(1i, global0.a, global0.a, -5147i))), max(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -10618i, 14665i, -9413i), vec4<i32>(u_input.a, -21965i, global0.a, global0.a)), ~(vec4<i32>(71257i, -23048i, -2147483647i, -1i) << (global0.b % vec4<u32>(32u))))), -40146i, vec2<bool>(4294967295u > max(global3[_wgslsmith_index_u32(28487u, 19u)], ~global0.b.x), false));
    var_0 = Struct_1(var_0.a, var_0.b, select(select(!(!vec2<bool>(var_0.c.x, false)), vec2<bool>(all(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x)), !var_0.c.x), 44063u <= _wgslsmith_dot_vec2_u32(vec2<u32>(94627u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec2<u32>(global0.c.x, global3[_wgslsmith_index_u32(4294967295u, 19u)]))), !(!(!var_0.c)), var_0.c));
    var var_1 = global0.b;
    global1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(666f, global1.x) - 1467f), _wgslsmith_f_op_f32(round(global1.x))), global1.x), 365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(587f)) + -843f) - _wgslsmith_f_op_f32(step(global1.x, global1.x))));
    var var_2 = Struct_1(-min(abs(var_0.a), vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(24761i, -2147483647i, u_input.a, var_0.a.x)), var_0.b, -8613i, u_input.a << (var_1.x % 32u))), abs(-55530i), !var_0.c);
    return 32765u;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * 731f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-841f - 1000f) - _wgslsmith_f_op_f32(round(global1.x)))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(110258u, 87937u)), global0.b.zy) | func_3();
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, func_3()), 19u)] - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -790f, 1f) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-162f, global1.x, global1.x)))))));
    let var_3 = -13616i;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), global1.x, global1.x) * vec3<f32>(_wgslsmith_f_op_f32(var_2.x - global1.x), _wgslsmith_f_op_f32(ceil(-2109f)), 1240f))));
    return abs(vec2<i32>(global0.a, -20398i));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(3504i << (_wgslsmith_mod_u32(4294967295u, global0.b.x) % 32u), u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(-arg_1), reverseBits(-1i)), ~firstLeadingBit(vec2<i32>(2147483647i, global0.a))), -select(vec2<i32>(2147483647i | u_input.a, -902i), func_2(arg_0, true, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a, -1i, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, -2147483647i, 10476i, u_input.a))), select(true, any(vec4<bool>(false, true, false, true)), false)));
    let var_1 = Struct_1(_wgslsmith_div_vec4_i32(select(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1821i, arg_0.a, 35064i, -83225i), vec4<i32>(global0.a, arg_1, 4031i, 1i)), ~(-vec4<i32>(arg_1, arg_0.a, 1i, -2147483647i)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false)), -(vec4<i32>(-2147483647i, 2848i, arg_1, 2140i) & vec4<i32>(1i, -1i, u_input.a, arg_1))), _wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(global0.a, -14755i, u_input.a)), (_wgslsmith_mult_vec3_i32(vec3<i32>(-7720i, arg_1, 5531i), vec3<i32>(0i, 1i, 30802i)) | vec3<i32>(-54242i, 27161i, -41294i)) >> (select(global0.b.wwz, _wgslsmith_add_vec3_u32(vec3<u32>(17997u, 73176u, 4294967295u), vec3<u32>(0u, global3[_wgslsmith_index_u32(37321u, 19u)], 0u)), all(vec2<bool>(false, false))) % vec3<u32>(32u))), select(select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, false), false), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false))), vec2<bool>(true, true), _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x)) < _wgslsmith_f_op_f32(-global1.x)), vec2<bool>(false, global0.a > u_input.a)));
    let var_2 = arg_0.b.zzz;
    var var_3 = arg_0;
    let var_4 = var_1;
    return !(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 19u)] >> (51496u % 32u), global0.b.x, global3[_wgslsmith_index_u32(global0.b.x & arg_0.c.x, 19u)]), var_2) < var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-156f, 402f);
    var var_1 = i32(-1i) * -5534i;
    var var_2 = false & func_1(Struct_2(global0.a, vec4<u32>(max(31268u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9456u, 19u)], 19u)]), ~global3[_wgslsmith_index_u32(global0.b.x, 19u)], ~36518u, ~26175u), select(vec2<u32>(0u, global3[_wgslsmith_index_u32(global0.c.x, 19u)]), vec2<u32>(global3[_wgslsmith_index_u32(101598u, 19u)], 1u), vec2<bool>(false, true)) & vec2<u32>(global0.b.x, global0.c.x)), 57193i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-934f, var_0, _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(select(global1.x, -1067f, false)))));
    var var_3 = Struct_2(-35558i, vec4<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(~4294967295u, 19u)]), 19u)], ~(~select(global3[_wgslsmith_index_u32(26487u, 19u)], 4294967295u, false))), vec2<u32>(global0.c.x, global0.b.x));
    var_3 = Struct_2(~_wgslsmith_add_i32(firstLeadingBit(-u_input.a), _wgslsmith_clamp_i32(-2147483647i, ~(-36582i), _wgslsmith_dot_vec3_i32(vec3<i32>(-9469i, 1i, 1i), vec3<i32>(-5144i, 0i, -29458i)))), var_3.b & ~(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.b.x, global0.b.x, 39324u, 1u), vec4<u32>(11958u, var_3.b.x, 0u, 0u)) & (vec4<u32>(var_3.b.x, global0.b.x, 1u, 34310u) << (vec4<u32>(global0.b.x, 44679u, var_3.b.x, global0.c.x) % vec4<u32>(32u)))), vec2<u32>(~(var_3.b.x | global3[_wgslsmith_index_u32(1u, 19u)]), _wgslsmith_mod_u32(1u, 1259u)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -338f))) * -770f);
    var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-20632i, func_2(Struct_2(-2147483647i, vec4<u32>(11239u, 16697u, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(var_3.c.x, 19u)]), var_3.b.wy), false, vec4<i32>(global0.a, global0.a, var_3.a, 10543i)).x, _wgslsmith_mult_i32(-1i, var_3.a), -15105i), vec4<i32>(69197i, abs(global0.a), _wgslsmith_mult_i32(var_3.a, var_3.a), _wgslsmith_clamp_i32(var_3.a, u_input.a, 8826i)), abs(vec4<i32>(u_input.a, 25739i, global0.a, var_3.a)) & max(vec4<i32>(u_input.a, -1i, -2147483647i, global0.a), vec4<i32>(-1i, 2147483647i, -2147483647i, -1i))), vec4<i32>(_wgslsmith_mult_i32(1i, ~34251i), var_3.a, -select(38867i, -31532i, true), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.a, -5734i), vec3<i32>(u_input.a, 29456i, u_input.a)), i32(-1i) * -1i)));
    var_4 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(578f, _wgslsmith_f_op_f32(var_0 + 1831f)))), vec3<u32>(global0.c.x, 15281u, 31142u));
}

