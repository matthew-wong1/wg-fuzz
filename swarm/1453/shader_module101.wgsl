struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 5>;

var<private> global1: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4185u, 0u, 4294967295u, 0u), vec4<u32>(58643u, 8125u, 0u, 58911u), vec4<u32>(1u, 28621u, 1u, 3375u), vec4<u32>(44122u, 76989u, 4294967295u, 4294967295u), vec4<u32>(42546u, 0u, 29986u, 4294967295u), vec4<u32>(1u, 1u, 71038u, 0u), vec4<u32>(26976u, 15678u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 4294967295u, 10190u, 61864u), vec4<u32>(4294967295u, 18331u, 665u, 0u), vec4<u32>(0u, 1u, 25880u, 0u), vec4<u32>(45063u, 4294967295u, 21120u, 4294967295u), vec4<u32>(1u, 1027u, 51661u, 34712u), vec4<u32>(44529u, 44768u, 0u, 0u), vec4<u32>(0u, 52182u, 50115u, 4294967295u), vec4<u32>(58956u, 0u, 82548u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 2539u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 14666u, 1u, 4294967295u), vec4<u32>(4294967295u, 115446u, 79949u, 23863u), vec4<u32>(0u, 3677u, 4294967295u, 68703u), vec4<u32>(0u, 33881u, 70076u, 107533u), vec4<u32>(46665u, 1u, 1u, 0u), vec4<u32>(6841u, 1041u, 22652u, 4294967295u), vec4<u32>(4294967295u, 51282u, 1u, 1u), vec4<u32>(16480u, 1u, 0u, 0u), vec4<u32>(4294967295u, 6327u, 1034u, 24355u));

var<private> global2: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> bool {
    var var_0 = vec2<i32>(i32(-1i) * -_wgslsmith_sub_i32(-u_input.c, 0i), u_input.c);
    global1 = array<vec4<u32>, 27>();
    var var_1 = Struct_2(-1i, !arg_2.xyx, abs(select(~vec4<i32>(-5681i, -2147483647i, var_0.x, u_input.c), vec4<i32>(-30500i, u_input.c, var_0.x, 2295i), arg_2)) ^ -max(-vec4<i32>(1i, 2147483647i, 0i, var_0.x), -vec4<i32>(var_0.x, 11311i, -23608i, -1i)), _wgslsmith_add_vec3_i32(~vec3<i32>(0i, u_input.c, _wgslsmith_mult_i32(-8468i, u_input.c)), abs(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.c, var_0.x, 33952i)), vec3<i32>(5583i, 2147483647i, u_input.c), ~vec3<i32>(-37757i, var_0.x, u_input.c)))), global2.x);
    var var_2 = _wgslsmith_f_op_f32(-global2.x);
    var_2 = _wgslsmith_f_op_f32(-var_1.e);
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(477f * _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(abs(u_input.c), -4678i, 2147483647i, u_input.c | u_input.c), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) | ~vec4<i32>(0i, u_input.c, u_input.c, -2147483647i)), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-8876i, -2147483647i, 1i, u_input.c), vec4<i32>(64833i, u_input.c, u_input.c, u_input.c)))), firstTrailingBit(-3261i), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, func_3(u_input.a, true, vec4<bool>(true, true, false, true))), vec2<bool>(true, u_input.a > u_input.b))));
    global1 = array<vec4<u32>, 27>();
    var var_1 = Struct_2(-var_0.d, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(~1u, 36236u) & (_wgslsmith_sub_u32(u_input.b, u_input.a) << (~u_input.b % 32u)), ~u_input.b), 5u)], vec4<i32>(var_0.d, -(i32(-1i) * -19430i), abs(abs(firstLeadingBit(-19919i))), u_input.c), vec3<i32>(-_wgslsmith_mult_i32(-u_input.c, ~23764i), u_input.c, ~u_input.c), _wgslsmith_f_op_f32(global2.x * global2.x));
    var var_2 = var_1.b;
    let var_3 = true;
    return Struct_1(false, global2.x, ~var_0.c, _wgslsmith_dot_vec4_i32(firstTrailingBit(var_0.c), vec4<i32>(firstLeadingBit(0i), -46541i, ~_wgslsmith_div_i32(var_0.d, 2147483647i), _wgslsmith_div_i32(i32(-1i) * -13261i, -80494i))), !(!(!select(var_1.b.yz, var_2.xy, var_0.a))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(arg_2.d, _wgslsmith_div_i32(arg_2.d, -1i) << (u_input.a % 32u)), -21432i, -_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.c.x, u_input.c, 0i), arg_2.c.wyx) | 1i, u_input.c);
    var var_1 = Struct_2(~_wgslsmith_sub_i32(u_input.c, ~_wgslsmith_mod_i32(31506i, 18676i)), select(select(vec3<bool>(u_input.a != u_input.b, var_0.x < arg_2.d, func_2().e.x), !(!global0[_wgslsmith_index_u32(u_input.a, 5u)]), select(vec3<bool>(true, true, true), vec3<bool>(arg_2.a, arg_2.a, false), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_1.x, arg_0.x, arg_2.e.x), vec3<bool>(arg_0.x, false, true)))), vec3<bool>(all(arg_2.e), arg_2.a, arg_2.a), !select(vec3<bool>(true, arg_1.x, arg_2.e.x), vec3<bool>(false, true, false), any(vec4<bool>(arg_1.x, arg_2.e.x, true, arg_0.x)))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(var_0.x, var_0.x), abs(10435i), arg_2.d, -33i ^ u_input.c), vec4<i32>(firstLeadingBit(30236i), u_input.c, 1i, 0i))), ~arg_2.c.wxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)) * 258f));
    let var_2 = Struct_2(firstLeadingBit(reverseBits(arg_2.c.x)), select(global0[_wgslsmith_index_u32(67471u >> (~(u_input.a & 1u) % 32u), 5u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(51243u, u_input.a) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u)), reverseBits(vec2<u32>(u_input.b, 48058u) << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u)))), 5u)], arg_0.x), arg_2.c, ~(-(~vec3<i32>(var_1.c.x, u_input.c, var_1.a))), arg_2.b);
    let var_3 = Struct_3(abs(reverseBits(vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(0u, 78724u)))), 197f);
    var var_4 = reverseBits(~vec3<u32>(~1u, ~u_input.b << ((1u >> (u_input.a % 32u)) % 32u), 1u));
    return _wgslsmith_f_op_f32(-219f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.e)))), _wgslsmith_f_op_f32(trunc(1000f))));
}

fn func_1() -> StorageBuffer {
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x))), vec2<f32>(global2.x, _wgslsmith_f_op_f32(func_4(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false), func_2())))))));
    var var_0 = reverseBits(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(0u, u_input.b) >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), select(vec2<u32>(47802u, 3079u), vec2<u32>(24441u, u_input.a), vec2<bool>(false, true)), func_2().a), vec2<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, u_input.b))))));
    var_0 = _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(select(var_0.x, var_0.x, true), _wgslsmith_div_u32(0u, var_0.x)), vec2<u32>(41051u, ~4294967295u)), vec2<u32>(42363u, 1u) ^ select(vec2<u32>(4294967295u, ~u_input.a), ~vec2<u32>(var_0.x, 49088u), func_2().e));
    var_0 = max(vec2<u32>(1u, select(~1u, ~abs(u_input.a), true)), vec2<u32>(~_wgslsmith_div_u32(u_input.b, ~var_0.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(2316u, _wgslsmith_clamp_u32(34006u, u_input.b, var_0.x)), var_0.x, _wgslsmith_clamp_u32(~1u, 100210u, min(u_input.b, u_input.b)))));
    var var_1 = Struct_3(_wgslsmith_clamp_vec2_u32(abs(select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(70606u, 18113u) ^ vec2<u32>(69881u, var_0.x), false)), max(~vec2<u32>(u_input.a, 4294967295u) << (~vec2<u32>(1u, u_input.b) % vec2<u32>(32u)), ~abs(vec2<u32>(2935u, 4294967295u))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 106951u) ^ vec2<u32>(36068u, var_0.x), firstTrailingBit(vec2<u32>(var_0.x, 48362u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - _wgslsmith_f_op_f32(-global2.x)));
    return StorageBuffer(vec2<i32>(~1i, u_input.c), ~(vec2<i32>(-1i) * -abs(vec2<i32>(0i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, -1116f, global2.x) + vec3<f32>(global2.x, -1000f, global2.x))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(-322f * 645f), -442f)))));
    global1 = array<vec4<u32>, 27>();
    let var_1 = 12179i;
    let x = u_input.a;
    s_output = func_1();
}

