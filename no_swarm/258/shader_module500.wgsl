struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = ~(-(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.d.x, arg_3.d.x, arg_0.b.d.x, -22072i), vec4<i32>(arg_3.d.x, -1i, arg_0.b.d.x, 59163i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_1.d.x, arg_1.d.x), vec4<i32>(-234i, u_input.b, arg_3.d.x, arg_0.b.d.x)))) ^ ~(~max(vec4<i32>(arg_1.d.x, arg_2.d.x, -68497i, u_input.b), abs(vec4<i32>(-2147483647i, 0i, 33459i, arg_3.d.x))));
    var var_1 = 1i;
    var var_2 = arg_1.c;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_2.c, arg_0.b.c)), arg_3.c, arg_1.c);
    var var_4 = arg_1.b;
    return _wgslsmith_mod_vec3_u32(abs(~max(vec3<u32>(71023u, arg_1.e.x, arg_0.a.x) << (arg_0.a % vec3<u32>(32u)), vec3<u32>(u_input.a.x, 0u, 4294967295u))), vec3<u32>(6519u, arg_3.e.x, 1u));
}

fn func_2(arg_0: u32) -> f32 {
    let var_0 = Struct_1(all(vec3<bool>(1f <= _wgslsmith_f_op_f32(select(1347f, -880f, global0[_wgslsmith_index_u32(arg_0, 31u)])), global0[_wgslsmith_index_u32(~1u << (u_input.a.x % 32u), 31u)], true)), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(75172u, 31u)] | false), vec2<bool>(any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(15057u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), true)), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(27711u, 19511u), 31u)]), true), 820f, vec2<i32>(u_input.b, ~_wgslsmith_div_i32(u_input.b << (arg_0 % 32u), min(u_input.b, u_input.b))), _wgslsmith_mod_vec4_u32(~u_input.a, ~u_input.a));
    var var_1 = min(~(~(func_3(Struct_3(vec3<u32>(var_0.e.x, arg_0, 21964u), Struct_1(true, vec2<bool>(global0[_wgslsmith_index_u32(60586u, 31u)], var_0.b.x), var_0.c, vec2<i32>(-2147483647i, 0i), vec4<u32>(var_0.e.x, 0u, 0u, arg_0))), Struct_1(var_0.a, var_0.b, -403f, vec2<i32>(1i, -1i), u_input.a), Struct_1(true, vec2<bool>(false, global0[_wgslsmith_index_u32(11292u, 31u)]), 264f, var_0.d, vec4<u32>(arg_0, 1u, 12622u, 5397u)), var_0) | ~var_0.e.wwx)), abs(reverseBits(abs(vec3<u32>(4294967295u, arg_0, 0u)) | var_0.e.yww)));
    let var_2 = global0[_wgslsmith_index_u32(1u, 31u)] & any(!vec3<bool>(true, all(var_0.b), !var_0.b.x));
    var var_3 = vec4<i32>(u_input.b, 0i, ~var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.d.x, u_input.b, var_0.d.x), vec4<i32>(u_input.b, -14841i, 11314i, var_0.d.x)), -19109i >> (u_input.a.x % 32u)), vec4<i32>(var_0.d.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(var_0.d.x, var_0.d.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, -2147483647i, var_0.d.x), vec3<i32>(12225i, -47906i, u_input.b))), ~(-40259i), u_input.b)));
    var_3 = vec4<i32>(select(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(var_0.d.x, var_0.d.x, 71391i, var_0.d.x)), reverseBits(vec4<i32>(37814i, u_input.b, var_0.d.x, var_3.x)) << (var_0.e % vec4<u32>(32u))), var_3.x, var_0.a), reverseBits(select(-1i, u_input.b, var_0.b.x) | (_wgslsmith_div_i32(var_0.d.x, var_0.d.x) | ~18689i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(-29550i), _wgslsmith_div_i32(u_input.b, 0i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_3.x, u_input.b), vec2<i32>(30803i, 10609i) ^ vec2<i32>(var_3.x, var_0.d.x))), _wgslsmith_mod_i32(40432i, ~abs(var_0.d.x))), reverseBits(var_3.x));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-314f, -1000f)) + var_0.c), var_0.c))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a.zyz, u_input.a.wxy), 31u)], select(!vec2<bool>(true, arg_0.a < arg_0.b), vec2<bool>(true, select(true & arg_0.d, global0[_wgslsmith_index_u32(9246u, 31u)], true)), !vec2<bool>(true, !global0[_wgslsmith_index_u32(u_input.a.x, 31u)])), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(-379f * arg_0.b))))), ~(-vec2<i32>(-46856i, ~u_input.b)), abs(abs(~vec4<u32>(1u, 0u, 1u, 0u))));
    var_0 = Struct_1(all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.e.x, 31u)], true, arg_0.d, arg_0.d), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c, true, false, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(var_0.b.x, true, var_0.a, var_0.b.x)), vec4<bool>(false, arg_0.c, false, arg_0.c)), !vec4<bool>(arg_0.c, arg_0.d, var_0.b.x, var_0.a), vec4<bool>(var_0.b.x | arg_0.c, true, arg_0.c, false & global0[_wgslsmith_index_u32(23851u, 31u)]))), !select(var_0.b, select(var_0.b, select(var_0.b, var_0.b, arg_0.d), var_0.b), select(!var_0.b, vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(false, var_0.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)) + -1457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), global0[_wgslsmith_index_u32(abs(max(0u, 1u)), 31u)])), firstTrailingBit(~var_0.d), ~vec4<u32>(~firstTrailingBit(var_0.e.x), u_input.a.x, 1u, 4294967295u));
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~4294967295u), _wgslsmith_clamp_u32(u_input.a.x, var_0.e.x >> (u_input.a.x % 32u), ~var_0.e.x), ~3366u, 41702u), ~abs(var_0.e)), abs(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x), u_input.a), u_input.a), var_0.e)), _wgslsmith_clamp_vec4_u32(~(~max(vec4<u32>(0u, u_input.a.x, 23638u, 58066u), vec4<u32>(1u, 1423u, 5895u, 4294967295u))), ~(~firstTrailingBit(var_0.e)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(0u, var_0.e.x, 29934u, var_0.e.x), ~u_input.a), u_input.a, vec4<u32>(u_input.a.x, func_3(Struct_3(var_0.e.wyz, Struct_1(arg_0.c, vec2<bool>(arg_0.c, false), var_0.c, var_0.d, vec4<u32>(1u, 1u, 4294967295u, 1u))), Struct_1(arg_0.c, var_0.b, var_0.c, vec2<i32>(u_input.b, -33705i), u_input.a), Struct_1(var_0.a, vec2<bool>(true, false), 442f, vec2<i32>(var_0.d.x, -1i), var_0.e), Struct_1(var_0.b.x, vec2<bool>(false, var_0.a), 1480f, var_0.d, vec4<u32>(53702u, u_input.a.x, 0u, 27553u))).x, _wgslsmith_add_u32(44138u, u_input.a.x), var_0.e.x))));
    var var_2 = ~firstTrailingBit(select(vec3<i32>(23310i, var_0.d.x, 36340i), reverseBits(vec3<i32>(-44623i, var_0.d.x, u_input.b)), any(var_0.b)) ^ _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(113i, var_0.d.x, u_input.b)), firstLeadingBit(vec3<i32>(var_0.d.x, -2147483647i, var_0.d.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, _wgslsmith_f_op_f32(func_2(~0u)), _wgslsmith_f_op_f32(1523f + -482f))));
    return Struct_3(~var_0.e.xxz, Struct_1(any(vec3<bool>(var_0.b.x, 4294967295u < var_1.x, false)), select(!var_0.b, vec2<bool>(!var_0.a, true), var_1.x >= ~var_1.x), _wgslsmith_f_op_f32(-var_3.x), var_0.d >> (~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.x, var_0.e.x), var_0.e.yx) % vec2<u32>(32u)), ~u_input.a));
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = 8334i;
    global0 = array<bool, 31>();
    let var_1 = 13173u;
    var var_2 = func_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.a.x << (0u % 32u))), arg_0), arg_0, true, true));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * var_2.b.c), 374f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)])))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0))))), true, false & !(_wgslsmith_f_op_f32(round(var_2.b.c)) > -719f));
    return _wgslsmith_f_op_f32(var_2.b.c * _wgslsmith_f_op_f32(arg_0 + var_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1216f))), _wgslsmith_f_op_f32(ceil(353f))) + _wgslsmith_f_op_f32(min(-1479f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -845f), -369f)))))));
    global0 = array<bool, 31>();
    let var_1 = any(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(12169u, 31u)], global0[_wgslsmith_index_u32(79838u, 31u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true), global0[_wgslsmith_index_u32(10222u, 31u)])));
    global0 = array<bool, 31>();
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))), all(vec2<bool>(var_1, true)), any(vec2<bool>(var_1, true)));
    var var_3 = !all(select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false, var_1), vec4<bool>(var_1, var_1, true, true), var_2.c), select(vec4<bool>(var_1, true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], var_2.d), select(vec4<bool>(var_2.c, true, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(90351u, 31u)], var_2.d, global0[_wgslsmith_index_u32(39463u, 31u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false, true, var_2.d)), true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], false, var_2.c, var_2.d), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], var_2.c, var_1, var_1), var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(10253i);
}

