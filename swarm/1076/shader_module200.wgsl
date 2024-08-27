struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 27>;

var<private> global2: vec4<u32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: u32) -> u32 {
    return ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_3, 0u), global2.x) << ((global2.x & ~(u_input.a.x << (13537u % 32u))) % 32u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: vec2<i32>) -> u32 {
    global2 = _wgslsmith_clamp_vec4_u32(reverseBits(~(vec4<u32>(54475u, u_input.b, u_input.a.x, global2.x) >> (vec4<u32>(global2.x, u_input.a.x, 86144u, global2.x) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 6258u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 25767u, global2.x)), vec4<u32>(0u, 19629u, u_input.a.x, 32170u) << (vec4<u32>(u_input.b, u_input.b, 0u, 8341u) % vec4<u32>(32u)))), ~(~select(vec4<u32>(28592u, u_input.a.x, 14033u, 1u), ~vec4<u32>(u_input.a.x, u_input.b, global2.x, 1u), any(arg_2))), select(vec4<u32>(max(_wgslsmith_clamp_u32(23386u, global2.x, global2.x), _wgslsmith_dot_vec2_u32(u_input.a, global2.wz)), 35334u, 45970u, 1479u), firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(37246u, global2.x, u_input.a.x, 80052u), vec4<u32>(76193u, 0u, 38548u, global2.x))), !select(select(vec4<bool>(true, true, arg_1, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(global2.x, 27u)], false), true), select(vec4<bool>(arg_2.x, global1[_wgslsmith_index_u32(global2.x, 27u)], global1[_wgslsmith_index_u32(global2.x, 27u)], true), vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 27u)], true, global1[_wgslsmith_index_u32(4294967295u, 27u)], arg_2.x), vec4<bool>(arg_2.x, false, arg_1, true)), !vec4<bool>(true, arg_2.x, arg_1, arg_2.x))));
    var var_0 = countOneBits(vec2<i32>(arg_3.x, arg_3.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.x)))))));
    global1 = array<bool, 27>();
    return min(global2.x, _wgslsmith_sub_u32(max(83124u, ~4294967295u), 44434u)) ^ 31472u;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    global0 = ~(_wgslsmith_div_i32(arg_1, arg_1) << (arg_0 % 32u));
    global1 = array<bool, 27>();
    let var_0 = vec2<bool>(false, global1[_wgslsmith_index_u32(~(~0u), 27u)]);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-arg_3)));
    var var_2 = Struct_4(vec2<bool>(global1[_wgslsmith_index_u32(func_3(vec3<f32>(-411f, -198f, _wgslsmith_f_op_f32(var_1.a.a * -545f)), global1[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(-579f)), vec4<i32>(arg_1, arg_1, 0i, 2147483647i), vec2<f32>(arg_3, -179f), arg_0) >> (9829u % 32u), 27u)], !select(var_0, vec2<bool>(var_0.x, var_0.x), vec2<bool>(global1[_wgslsmith_index_u32(851u, 27u)], global1[_wgslsmith_index_u32(60481u, 27u)])), min(vec2<i32>(-2472i, -8797i), vec2<i32>(-596i, 34655i))), 27u)], true), Struct_2(var_1.a), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(1u >> (u_input.b % 32u), 18304u, 1u, 1u)), vec4<u32>(~arg_2.x, 1u, abs(global2.x), func_2(Struct_2(Struct_1(var_1.a.a)), vec4<i32>(arg_1, arg_1, -35374i, arg_1), vec2<f32>(228f, var_1.a.a), 33017u)) | vec4<u32>(u_input.b, 1u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2.x, 1u)), firstLeadingBit(0u)), _wgslsmith_sub_vec4_u32(~firstTrailingBit(arg_2), min(~arg_2, _wgslsmith_div_vec4_u32(vec4<u32>(1u, global2.x, arg_0, 0u), vec4<u32>(u_input.b, arg_0, u_input.b, arg_0))))), false);
    return Struct_1(-1025f);
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = max(vec3<i32>(~(-2147483647i), -1i, 1i) >> (~_wgslsmith_clamp_vec3_u32(abs(global2.www), vec3<u32>(u_input.a.x, 1u, 1u), ~global2.yxw) % vec3<u32>(32u)), vec3<i32>(min(-2147483647i, ~(-69945i) << (global2.x % 32u)), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), -reverseBits(vec3<i32>(-14398i, -27855i, 62447i)))));
    var var_1 = countOneBits(_wgslsmith_mult_i32(abs(firstLeadingBit(var_0.x)), _wgslsmith_dot_vec2_i32(abs(min(var_0.yy, vec2<i32>(2147483647i, -34478i))), -(vec2<i32>(var_0.x, 2147483647i) << (u_input.a % vec2<u32>(32u))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.a))), _wgslsmith_f_op_f32(-arg_0.a)));
    var_0 = -vec3<i32>(1i, -_wgslsmith_sub_i32(-3342i & var_0.x, var_0.x), var_0.x);
    global2 = select(vec4<u32>(_wgslsmith_mult_u32(22u, max(1u, global2.x)) >> (_wgslsmith_mult_u32(global2.x, u_input.a.x & global2.x) % 32u), ~countOneBits(global2.x >> (u_input.a.x % 32u)), u_input.b, ~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, arg_0.a, 1000f)), true, !vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 27u)]), var_0.zy)), vec4<u32>(global2.x, min(~u_input.b, _wgslsmith_mult_u32(global2.x, global2.x)) | 1u, abs(abs(55589u)), ~countOneBits(global2.x)), true);
    return 1387f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(-285f, func_1(1u, 1i, _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, u_input.b, 4294967295u, 1u), vec4<u32>(586u, 9825u, global2.x, 4294967295u)), _wgslsmith_f_op_f32(1043f * 319f))))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(u_input.a.x, 1i, vec4<u32>(10584u, global2.x, global2.x, global2.x), 126f).a), _wgslsmith_f_op_f32(f32(-1f) * -334f)))), func_1(4294967295u, -22200i, reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(28624u, u_input.b, 4383u, u_input.a.x), vec4<u32>(41957u, global2.x, u_input.b, u_input.a.x)) & vec4<u32>(11859u, 0u, global2.x, 1u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0)))));
    let var_2 = Struct_3(var_1.a, func_1(42550u, 1i >> (u_input.a.x % 32u), vec4<u32>(~_wgslsmith_div_u32(0u, 23676u), global2.x, max(7449u, ~4294967295u), u_input.a.x), _wgslsmith_f_op_f32(809f - -871f)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a, -1004f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1085f))))), !(!(4294967295u > u_input.b)))));
    var_3 = -405f;
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.b.a)) - var_2.b.a) * -108f), func_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.x, 1u, 44616u, 0u), reverseBits(~vec4<u32>(0u, u_input.a.x, 23232u, 29933u))), max(1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, -2147483647i, -3133i), ~vec3<i32>(2147483647i, -7521i, 51177i))), _wgslsmith_div_vec4_u32(select(min(vec4<u32>(1u, 1u, 4294967295u, 45318u), vec4<u32>(17354u, u_input.b, u_input.a.x, 1u)), select(vec4<u32>(u_input.b, u_input.b, 14297u, u_input.b), vec4<u32>(global2.x, u_input.a.x, global2.x, global2.x), global1[_wgslsmith_index_u32(0u, 27u)]), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(28866u, 27u)], false, global1[_wgslsmith_index_u32(46557u, 27u)])), min(vec4<u32>(u_input.a.x, u_input.b, 44517u, 1u), abs(vec4<u32>(1u, 23421u, u_input.b, u_input.a.x)))), var_1.a));
    var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1345f, var_0) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1301f * -464f)))), Struct_1(_wgslsmith_f_op_f32(var_2.a + var_1.a)));
    var var_4 = any(select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(global2.x, 27u)], true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 27u)], false, false))), any(vec3<bool>(true, global1[_wgslsmith_index_u32(global2.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]))), !(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 27u)]))));
    global1 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -359f), global2.x);
}

