struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<Struct_4, 12>;

var<private> global2: vec2<i32> = vec2<i32>(-10623i, 15730i);

var<private> global3: vec2<i32> = vec2<i32>(-58195i, 0i);

var<private> global4: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~(~(~vec2<u32>(u_input.a.x, 31721u)))), vec2<u32>(reverseBits(u_input.a.x), ~1u));
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, -456f, global4.x, -581f), vec4<f32>(global4.x, global4.x, 1119f, global4.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global4.x, 171f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(372f, 442f, global4.x, 591f), vec4<f32>(global4.x, global4.x, global4.x, 1239f), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1230f, global4.x, global4.x, global4.x))), select(!vec4<bool>(arg_0.x, true, false, true), arg_0, all(vec2<bool>(false, arg_0.x))))))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, _wgslsmith_div_f32(-1587f, global4.x), _wgslsmith_div_f32(-1570f, global4.x), global4.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, global4.x, global4.x, -174f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, global4.x, global4.x, -1000f), vec4<f32>(global4.x, -653f, global4.x, global4.x))), all(vec2<bool>(arg_0.x, arg_0.x))))))));
    let var_1 = var_0;
    var var_2 = global4.x <= _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(412f * global4.x)));
    var var_3 = vec3<u32>(0u, 1u, var_1);
    return vec2<i32>(-1i) * -(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, 88996i), vec2<i32>(-1i, global3.x)), min(vec2<i32>(24178i, -1i), vec2<i32>(-43531i, -31838i))) ^ ~vec2<i32>(-2147483647i, global2.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_3 {
    global0 = array<Struct_2, 4>();
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.x), 12u)];
    global3 = vec2<i32>(-1i, global3.x);
    global2 = _wgslsmith_add_vec2_i32(firstTrailingBit(-func_3(vec4<bool>(false, false, var_0.d.d, var_0.a.b))), -_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.e, var_0.e), -42611i), var_0.e.xx));
    global3 = ~select(var_0.e.xx, -(vec2<i32>(2765i, global2.x) ^ var_0.e.xx), false);
    return var_0.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global3.x, 1i, global2.x, global3.x)) >> (((vec4<u32>(arg_0.e, 11036u, 4294967295u, 14102u) << (vec4<u32>(arg_0.e, 0u, 4294967295u, u_input.b) % vec4<u32>(32u))) & vec4<u32>(45245u, arg_0.e, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(global2.x, -1i), abs(0i)), global3.x, 2147483647i, 14900i)) ^ vec4<i32>(-func_3(select(vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, false, true, true), vec4<bool>(true, arg_0.c.x, true, arg_0.c.x))).x, reverseBits(~(-48018i) << (_wgslsmith_sub_u32(arg_0.e, u_input.a.x) % 32u)), func_3(!vec4<bool>(false, true, arg_0.c.x, false)).x, _wgslsmith_mod_i32((global3.x & -1i) >> (countOneBits(0u) % 32u), firstLeadingBit(global2.x)));
    var var_1 = Struct_2(arg_0.d, vec2<i32>(abs(1i << (_wgslsmith_mod_u32(u_input.b, u_input.b) % 32u)), _wgslsmith_dot_vec3_i32(~var_0.yyw, var_0.zzz)));
    let var_2 = arg_0.a;
    let var_3 = arg_0.c;
    return Struct_1(vec4<bool>(var_3.x, all(vec4<bool>(false, any(arg_0.c), false, true)), any(vec3<bool>(4294967295u >= arg_0.e, var_1.a | false, true)), select(true, ~var_1.b.x != _wgslsmith_mod_i32(-1i, global2.x), !(u_input.a.x <= 47744u))), false);
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(func_2(max(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(u_input.a.x, 27183u)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(global2.x, -2147483647i, global3.x), -vec3<i32>(2147483647i, global2.x, global2.x)), ~global3.x, global3.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-796f, global4.x)) - 953f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global4.x) - global4.x))), global4.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(651f - global4.x), _wgslsmith_f_op_f32(abs(-878f)))), global4.x));
    let var_1 = func_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-569f))), _wgslsmith_f_op_f32(-305f - 490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2203f) - _wgslsmith_f_op_f32(-733f * 1705f)) + 272f), var_0.a.yz, -2147483647i != ~global2.x, u_input.b), global4.xyz, global4.yx);
    var var_2 = true;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(ceil(global4.x))), _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-436f + 1424f)), _wgslsmith_f_op_f32(global4.x + _wgslsmith_div_f32(-2384f, -1515f)))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(151f - global4.x), -649f) + global4.x), _wgslsmith_f_op_f32(-func_2(min(u_input.a, abs(vec2<u32>(17094u, 1u))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, global2.x), ~0i)).b), var_0.a.xx, true, u_input.b);
    return ~vec2<i32>(func_3(vec4<bool>(var_0.a.x, var_3.d, var_1.b, var_1.a.x)).x & (global3.x ^ reverseBits(0i)), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(global2.x, 0i), max(0i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    global1 = array<Struct_4, 12>();
    var var_1 = _wgslsmith_mod_vec2_i32(select(reverseBits(vec2<i32>(global2.x, ~(-1i))), (func_1() & (vec2<i32>(-2147483647i, 15885i) & vec2<i32>(global3.x, global3.x))) >> (countOneBits(~u_input.a) % vec2<u32>(32u)), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)))), ~vec2<i32>(i32(-1i) * -50508i, global3.x) ^ -_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, -2147483647i), vec2<i32>(1i, global3.x)), min(vec2<i32>(global2.x, 2147483647i), vec2<i32>(global2.x, global3.x))));
    let var_2 = select(vec2<bool>(_wgslsmith_sub_u32(reverseBits(u_input.a.x), 0u) <= max(u_input.a.x, 44610u), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false)) | true), !vec2<bool>(!any(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), func_4(func_2(vec2<u32>(15039u, u_input.b), -var_1.x), vec3<f32>(_wgslsmith_f_op_f32(step(global4.x, global4.x)), global4.x, _wgslsmith_f_op_f32(687f - 722f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1535f, global4.x))).a.x | true);
    var var_3 = _wgslsmith_dot_vec2_u32(u_input.a, ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 49389u), u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, var_0), vec3<u32>(3161u, 4294967295u, u_input.a.x)), vec3<u32>(var_0, 11063u, u_input.a.x) ^ ~vec3<u32>(u_input.a.x, 1u, 1u)) << (~(~vec3<u32>(4294967295u, 70194u, 72830u) << (vec3<u32>(var_0, 0u, 69785u) % vec3<u32>(32u))) % vec3<u32>(32u)), ~vec2<i32>(-1i, -_wgslsmith_div_i32(2147483647i, global3.x)), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global4.x), -207f)) + _wgslsmith_f_op_vec2_f32(global4.wx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1854f, -661f) + global4.xy)))), _wgslsmith_sub_vec4_i32(max(firstLeadingBit(vec4<i32>(global2.x, -1i, -1i, var_1.x)), countOneBits(abs(vec4<i32>(var_1.x, -20484i, 1i, 4489i)))), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, min(global3.x, var_1.x), global3.x, global3.x), countOneBits(-vec4<i32>(2147483647i, 10528i, global3.x, 2147483647i)))));
}

