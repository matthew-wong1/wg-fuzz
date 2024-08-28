struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 2> = array<u32, 2>(1u, 12572u);

var<private> global2: vec4<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> vec4<i32> {
    global0 = global2.x << (_wgslsmith_div_u32(~57380u, _wgslsmith_clamp_u32(u_input.a.x, 7085u, u_input.a.x)) % 32u);
    let var_0 = vec3<i32>(global2.x, -u_input.c, -33654i);
    var var_1 = Struct_1(vec4<bool>(true, ~73981u != global1[_wgslsmith_index_u32(1u, 2u)], select(min(43397i, -2147483647i) != u_input.b, !select(true, true, true), !any(vec3<bool>(true, false, true))), true), ~u_input.a.x);
    let var_2 = Struct_1(var_1.a, 48379u);
    var_1 = var_2;
    return abs(select(countOneBits(vec4<i32>(_wgslsmith_mult_i32(global2.x, global2.x), 17126i, ~18629i, reverseBits(-28147i))), ((vec4<i32>(-34914i, var_0.x, 0i, -5541i) & vec4<i32>(-8680i, 2147483647i, 26816i, var_0.x)) & vec4<i32>(-1i, -1i, global2.x, var_0.x)) ^ -reverseBits(vec4<i32>(global2.x, var_0.x, 0i, -46136i)), vec4<bool>(var_1.a.x, true, any(vec4<bool>(var_1.a.x, var_2.a.x, var_1.a.x, false)), true)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(arg_1.a, _wgslsmith_add_u32(~global1[_wgslsmith_index_u32(arg_1.b, 2u)] >> (_wgslsmith_sub_u32(1u, arg_1.b) % 32u), 0u));
    return arg_1;
}

fn func_1() -> bool {
    global0 = 2147483647i;
    let var_0 = _wgslsmith_dot_vec2_u32(abs(~u_input.a.xy), u_input.a.zx);
    global0 = ~u_input.b;
    let var_1 = Struct_1(!(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, false, false)))), abs(4294967295u));
    var var_2 = func_3(select(vec4<i32>(-3840i, global2.x, ~2147483647i, global2.x), _wgslsmith_add_vec4_i32(vec4<i32>(0i, -22002i, -5809i, -2147483647i) << (vec4<u32>(625u, 34446u, var_1.b, global1[_wgslsmith_index_u32(17905u, 2u)]) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, global2.x, global2.x), vec4<i32>(u_input.c, u_input.c, -10911i, u_input.b))), true) | max(-vec4<i32>(5829i, -32167i, global2.x, 48315i) ^ -vec4<i32>(u_input.c, global2.x, 27908i, 1i), func_2()), var_1, i32(-1i) * -1i);
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = ~select(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(66599u, global1[_wgslsmith_index_u32(84096u, 2u)]), 2u)], ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1.b, u_input.a.x), vec3<u32>(u_input.a.x, arg_0.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.b, 2u)], 2u)])), 0u)), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 1u, arg_0.b)), ~vec4<u32>(u_input.a.x, arg_0.b, 32688u, u_input.a.x) | _wgslsmith_mult_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 28803u, arg_1.b, 1u), vec4<u32>(u_input.a.x, arg_1.b, arg_0.b, global1[_wgslsmith_index_u32(21299u, 2u)]))), false);
    let var_1 = arg_1;
    var_0 = _wgslsmith_add_vec4_u32(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(62119u, 1u, var_1.b, var_1.b), vec4<u32>(1u, var_0.x, u_input.a.x, arg_0.b)), vec4<u32>(1u, 4294967295u, arg_1.b, arg_1.b)), firstTrailingBit(firstTrailingBit(vec4<u32>(75690u, 28601u, u_input.a.x, 65475u))), vec4<u32>(arg_0.b, var_1.b, 82784u, 40429u) << (~vec4<u32>(var_0.x, 34248u, var_0.x, var_1.b) % vec4<u32>(32u))), vec4<u32>(0u, var_0.x, ~0u, ~global1[_wgslsmith_index_u32(var_0.x, 2u)]) ^ ~(~vec4<u32>(1u, u_input.a.x, 31220u, 0u)), !select(!arg_1.a, select(arg_1.a, vec4<bool>(arg_1.a.x, false, arg_3, arg_1.a.x), arg_1.a), arg_2)), ~vec4<u32>(_wgslsmith_mult_u32(arg_0.b, 0u), u_input.a.x, min(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_0.zw, u_input.a.xx), 2u)], arg_1.b ^ 1u), max(15239u >> (1u % 32u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.b, var_0.x), 2u)])));
    global1 = array<u32, 2>();
    let var_2 = func_3(firstTrailingBit(_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, 31826i, 2147483647i, global2.x)), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.b, -45419i, -1i, global2.x), vec4<i32>(global2.x, 22055i, -3873i, -1i)))), func_3(vec4<i32>(-1i, _wgslsmith_div_i32(u_input.c, _wgslsmith_div_i32(21443i, u_input.c)), abs(1i) | global2.x, _wgslsmith_div_i32(~global2.x, countOneBits(u_input.b))), Struct_1(arg_1.a, ~var_1.b), _wgslsmith_sub_i32(-1i, u_input.c)), abs(u_input.c & abs(_wgslsmith_mult_i32(-2147483647i, -1i))));
    return Struct_1(arg_1.a, firstTrailingBit(~_wgslsmith_sub_u32(~var_2.b, _wgslsmith_sub_u32(2465u, var_0.x))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<u32, 2>();
    global1 = array<u32, 2>();
    global2 = ~(~_wgslsmith_add_vec4_i32(-vec4<i32>(52028i, 2147483647i, 0i, u_input.c), vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.b, 2147483647i, -6460i)));
    let var_0 = true;
    var var_1 = func_3(-vec4<i32>(1i ^ abs(u_input.c), -39110i, -2147483647i, _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(2147483647i, global2.x))), Struct_1(select(select(!vec4<bool>(false, arg_1.a.x, false, var_0), select(arg_2.a, vec4<bool>(arg_1.a.x, true, true, false), false), select(vec4<bool>(true, arg_1.a.x, var_0, true), arg_1.a, vec4<bool>(false, arg_1.a.x, false, false))), vec4<bool>(false, true, global2.x >= -2147483647i, var_0), true), u_input.a.x), _wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(global2.x, global2.x, -2147483647i, u_input.b))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(u_input.b, global2.x, 17278i, 2147483647i)), firstTrailingBit(vec4<i32>(u_input.c, global2.x, global2.x, 1i))), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.b, global2.x, -790i), vec4<i32>(u_input.c, -43358i, 2147483647i, 0i)), vec4<i32>(global2.x, u_input.c, u_input.c, 0i)), -vec4<i32>(-14483i, global2.x, 22801i, u_input.c))));
    return Struct_1(select(select(func_4(arg_1, arg_2, true, false).a, arg_2.a, func_4(func_4(arg_1, Struct_1(arg_1.a, u_input.a.x), true, false), func_4(Struct_1(var_1.a, 549u), Struct_1(var_1.a, 112u), arg_1.a.x, arg_2.a.x), true, any(var_1.a)).a), select(select(vec4<bool>(arg_1.a.x, var_1.a.x, false, false), !vec4<bool>(arg_2.a.x, false, false, var_1.a.x), false), var_1.a, vec4<bool>(true, true, true, false && arg_1.a.x)), arg_2.a), ~var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(-11622i);
    global0 = _wgslsmith_div_i32(1i, 1i);
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-457f, -273f, -398f, _wgslsmith_f_op_f32(833f - 1093f))))));
    let var_2 = global2.x;
    global2 = -_wgslsmith_mult_vec4_i32(~(vec4<i32>(global2.x, global2.x, u_input.b, global2.x) | ~vec4<i32>(-2147483647i, -17726i, -69368i, 31984i)), firstLeadingBit(vec4<i32>(1i, -39659i, 29617i, global2.x)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(15701u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u)));
    let var_3 = func_5(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-1002f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.x - 227f)))), 532f), func_4(Struct_1(vec4<bool>(false, all(vec4<bool>(true, true, true, false)), u_input.c >= global2.x, 71923u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16587u, 2u)], 2u)]), ~(~u_input.a.x)), Struct_1(vec4<bool>(true, true, true, true), global1[_wgslsmith_index_u32(4294967295u, 2u)]), all(vec2<bool>(true, func_1())), true), func_3(vec4<i32>(1i, _wgslsmith_clamp_i32(firstTrailingBit(2147483647i), abs(0i), -2147483647i), u_input.b, u_input.c), Struct_1(select(func_3(vec4<i32>(global2.x, u_input.c, 2759i, global2.x), Struct_1(vec4<bool>(true, false, true, false), global1[_wgslsmith_index_u32(20097u, 2u)]), 24596i).a, vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), _wgslsmith_mult_u32(4294967295u, 1u)), global2.x));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(841f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), -1000f, _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-619f, 998f, 946f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(469f, var_1.x, -390f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-527f, -576f, 149f, -221f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1440f, 218f, -1000f, var_1.x) - vec4<f32>(1000f, var_1.x, -384f, var_1.x)))))));
    var var_4 = !(!func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.zwy) - _wgslsmith_f_op_vec3_f32(var_1.wyx - var_1.zyx)), var_3, Struct_1(vec4<bool>(var_3.a.x, true, var_3.a.x, var_3.a.x), ~u_input.a.x)).a.x);
    let var_5 = max(global1[_wgslsmith_index_u32(10405u & func_3(-vec4<i32>(2147483647i, u_input.c, global2.x, global2.x), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1018f, 691f, var_1.x) * vec3<f32>(var_1.x, var_1.x, -1000f)), func_5(var_1.zzx, var_3, Struct_1(vec4<bool>(false, false, false, var_3.a.x), var_3.b)), var_3), global2.x).b, 2u)], _wgslsmith_sub_u32(var_3.b, u_input.a.x >> ((u_input.a.x >> ((global1[_wgslsmith_index_u32(var_3.b, 2u)] & 13491u) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5, _wgslsmith_mult_u32(~func_3(select(vec4<i32>(41466i, 25182i, u_input.b, u_input.b), vec4<i32>(global2.x, global2.x, -9899i, -13577i), vec4<bool>(var_3.a.x, true, var_3.a.x, true)), func_3(vec4<i32>(-41365i, u_input.c, u_input.b, u_input.c), var_3, global2.x), 28312i).b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(~u_input.a, ~vec3<u32>(65404u, global1[_wgslsmith_index_u32(0u, 2u)], 97864u), vec3<bool>(var_3.a.x, var_3.a.x, false)), u_input.a), 2u)]), u_input.a | u_input.a, ~2147483647i, 4294967295u);
}

