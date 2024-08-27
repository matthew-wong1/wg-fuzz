struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false));

var<private> global3: array<vec4<bool>, 13>;

var<private> global4: vec4<u32> = vec4<u32>(22030u, 63979u, 0u, 52220u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(arg_0.x, -1519f)), arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))) + arg_0.xww) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_0.zzw, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_0.wwx))))))));
    var var_1 = _wgslsmith_div_i32(-2147483647i, -u_input.b) == (u_input.d & (u_input.d & -33525i));
    var var_2 = Struct_3(vec2<bool>(true, true), vec2<bool>(true, true), min(max(~_wgslsmith_dot_vec2_i32(vec2<i32>(-31184i, u_input.b), vec2<i32>(-13446i, 0i)), u_input.b), -409i));
    var var_3 = ~countOneBits(_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(global4.x, arg_1, 1u)), ~abs(global4.wxz)));
    var var_4 = arg_0;
    return all(select(select(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1, 1u), ~4294967295u), 21u)], global2[_wgslsmith_index_u32(min(1259u, arg_1) & (4294967295u ^ global4.x), 8u)], !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.x, 1u), 21u)]), vec3<bool>(false, !var_2.a.x | all(var_2.a), true), select(!vec3<bool>(var_2.a.x, var_2.b.x, var_2.a.x), !vec3<bool>(true, false, var_2.b.x), !global1[_wgslsmith_index_u32(min(var_3.x, var_3.x), 21u)])));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: f32, arg_3: vec2<bool>) -> u32 {
    var var_0 = arg_1;
    var var_1 = !(arg_3.x && all(vec4<bool>(878f == arg_2, !arg_1, false, 30580u > global4.x)));
    var var_2 = arg_0.x;
    global1 = array<vec3<bool>, 21>();
    var_0 = any(vec2<bool>(arg_1, -756f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2)))));
    return countOneBits(~abs(countOneBits(0u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec4<u32> {
    let var_0 = func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(41786u, u_input.a.x)), global4.wx), global4.x, arg_3) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, ~84794u), ~(global4.ywy >> (vec3<u32>(global4.x, u_input.a.x, global4.x) % vec3<u32>(32u)))) % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1324f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1429f, 137f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-422f, -164f))))), vec2<bool>(select(!arg_1.b.x, func_3(vec4<f32>(-695f, 930f, 227f, -624f), ~4294967295u), false), arg_2.c < 1i));
    global0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0, 70105u, u_input.a.x), vec4<u32>(1u, 1u, arg_3, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 30694u, 34423u, 64033u), vec4<u32>(84624u, 4294967295u, 0u, arg_3), vec4<u32>(var_0, 70001u, 0u, 1u))) << (~countOneBits(vec4<u32>(arg_3, u_input.a.x, global4.x, global4.x)) % vec4<u32>(32u)), vec4<u32>(global4.x, max(66537u, ~1u), 0u, ~0u & (50333u << (global4.x % 32u))));
    let var_1 = _wgslsmith_dot_vec4_u32(firstLeadingBit(abs(vec4<u32>(arg_3, 212u, var_0, 2943u) | vec4<u32>(arg_3, 25754u, 31935u, 103058u)) ^ (~vec4<u32>(4294967295u, 0u, u_input.a.x, var_0) << (select(vec4<u32>(var_0, var_0, global4.x, var_0), vec4<u32>(4294967295u, u_input.a.x, global4.x, u_input.a.x), false) % vec4<u32>(32u)))), ~vec4<u32>(0u, 33387u << (0u % 32u), var_0, 27431u));
    let var_2 = _wgslsmith_div_f32(-490f, -411f);
    return vec4<u32>(func_4(vec3<u32>(var_1, var_1, max(var_1, arg_3)), false, _wgslsmith_f_op_f32(-1f), !vec2<bool>(arg_2.a.x, false)) ^ _wgslsmith_mod_u32(0u, arg_3), ~0u | select(max(_wgslsmith_div_u32(global4.x, 36817u), global4.x), _wgslsmith_clamp_u32(var_1, countOneBits(var_0), var_1), arg_0.x), 23278u, var_1);
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec2<bool> {
    global4 = _wgslsmith_add_vec4_u32(~(select(~vec4<u32>(5557u, 0u, u_input.a.x, global4.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(global4.x, global4.x, u_input.a.x, u_input.a.x), vec4<u32>(global4.x, 41050u, u_input.a.x, 0u), vec4<u32>(45159u, global4.x, 32870u, u_input.a.x)), vec4<bool>(false, arg_1.a.x, arg_1.a.x, arg_1.a.x)) << (~func_2(vec3<bool>(arg_1.b.x, false, true), arg_1, Struct_3(vec2<bool>(arg_1.b.x, false), vec2<bool>(arg_1.b.x, false), arg_1.c), 0u) % vec4<u32>(32u))), max(~(~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x)) | ~func_2(global2[_wgslsmith_index_u32(4294967295u, 8u)], arg_1, arg_1, 0u), select(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 58839u, u_input.a.x, 20578u), vec4<u32>(global4.x, global4.x, 0u, global4.x) << (vec4<u32>(global4.x, 20261u, global4.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 51820u, u_input.a.x) >> (vec4<u32>(u_input.a.x, global4.x, 17217u, global4.x) % vec4<u32>(32u)), ~vec4<u32>(0u, 4294967295u, global4.x, 0u)), select(vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x), !vec4<bool>(arg_1.b.x, false, true, true), true))));
    global2 = array<vec3<bool>, 8>();
    var var_0 = _wgslsmith_add_i32((~12724i << (u_input.a.x % 32u)) | (reverseBits(_wgslsmith_mult_i32(arg_0, 15012i)) >> (global4.x % 32u)), -37055i);
    var var_1 = -(_wgslsmith_add_vec2_i32(vec2<i32>(~(-19810i), 0i), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-4035i, arg_1.c), vec2<i32>(-48827i, arg_1.c)))) | ~firstLeadingBit(~vec2<i32>(arg_0, -2147483647i)));
    global2 = array<vec3<bool>, 8>();
    return select(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(-1125f)) == _wgslsmith_f_op_f32(step(-617f, _wgslsmith_div_f32(-650f, 709f)))), arg_1.b, select(vec2<bool>(!any(global2[_wgslsmith_index_u32(global4.x, 8u)]), true && arg_1.a.x), select(arg_1.a, select(vec2<bool>(arg_1.a.x, true), select(vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.a, false), !arg_1.a.x), arg_1.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 13>();
    var var_0 = global4.x >> (~44348u % 32u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -638f);
    var var_2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~global4.zwz, _wgslsmith_mod_vec3_u32(global4.yzz, vec3<u32>(4294967295u, 1u, 4294967295u))), global4.wyx), global4.x, ~(~_wgslsmith_mod_u32(global4.x, 0u)));
    global4 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.x, _wgslsmith_sub_u32(1u, u_input.a.x), 4294967295u), ~(vec4<u32>(1u, 28706u, u_input.a.x, var_2.x) >> (vec4<u32>(u_input.a.x, global4.x, u_input.a.x, global4.x) % vec4<u32>(32u)))), firstTrailingBit(~abs(vec4<u32>(39326u, var_2.x, 0u, 41191u))));
    let var_3 = 35426u;
    var_2 = (firstLeadingBit(vec3<u32>(18191u << (global4.x % 32u), 0u, ~u_input.a.x)) & firstLeadingBit(~min(vec3<u32>(global4.x, var_3, var_3), global4.yww))) >> (firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(abs(1u), global4.x), var_3, min(global4.x ^ 21849u, ~69349u))) % vec3<u32>(32u));
    let var_4 = Struct_3(select(select(func_1(0i, Struct_3(vec2<bool>(false, true), vec2<bool>(true, false), u_input.b)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), !func_1(u_input.d, Struct_3(vec2<bool>(true, false), vec2<bool>(true, true), -2147483647i))), !vec2<bool>(any(vec4<bool>(true, false, false, false)), true), true), func_1(max(-41529i, _wgslsmith_div_i32(1i, u_input.c)), Struct_3(func_1(u_input.c, Struct_3(vec2<bool>(true, false), vec2<bool>(true, false), u_input.d)), vec2<bool>(any(vec4<bool>(false, true, true, false)), true), -2147483647i)), _wgslsmith_add_i32(u_input.b, 8927i));
    var var_5 = func_2(select(global1[_wgslsmith_index_u32(abs(var_2.x) << (21555u % 32u), 21u)], vec3<bool>(0i != u_input.d, !var_4.b.x, u_input.a.x <= var_2.x), var_4.b.x), Struct_3(!vec2<bool>(true, var_4.a.x), select(var_4.b, func_1(-2147483647i, var_4), var_4.b.x), var_4.c), Struct_3(vec2<bool>(var_4.a.x, any(global2[_wgslsmith_index_u32(0u, 8u)])), func_1(_wgslsmith_sub_i32(33986i, -1i), var_4), u_input.d), _wgslsmith_mod_u32(~71460u, firstLeadingBit(var_3)) >> (_wgslsmith_sub_u32(~u_input.a.x, countOneBits(u_input.a.x)) % 32u)) ^ ~_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(0u, 1u, var_2.x, var_3)), ~vec4<u32>(global4.x, 0u, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, global4.x, u_input.a.x, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(-24419i, u_input.b, -var_4.c), select(-reverseBits(vec3<i32>(u_input.d, var_4.c, -13943i)), _wgslsmith_add_vec3_i32(vec3<i32>(35091i, 34386i, var_4.c) << (vec3<u32>(4294967295u, 1u, var_3) % vec3<u32>(32u)), vec3<i32>(var_4.c, 48194i, u_input.c)), vec3<bool>(all(vec2<bool>(var_4.a.x, var_4.a.x)), func_1(u_input.c, Struct_3(var_4.a, vec2<bool>(false, var_4.a.x), u_input.d)).x, true))), countOneBits(0u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-3032f, var_1, var_1, 126f), _wgslsmith_div_vec4_f32(vec4<f32>(1593f, var_1, var_1, -396f), vec4<f32>(1623f, 487f, -693f, -899f)), vec4<bool>(false, var_4.b.x, var_4.a.x, var_4.b.x)))))), min(~(~vec3<u32>(35325u, var_5.x, var_2.x)), vec3<u32>(select(14886u, ~26764u, true), global4.x, var_3)));
}

