struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), false));
    var_0 = !(!(!vec2<bool>(false, all(vec3<bool>(var_0.x, true, true)))));
    var var_1 = ~(~32429u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(52780u, _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(7713u, 18030u, 60419u, 37036u), vec4<u32>(29918u, 14718u, 1u, 0u)))), vec2<u32>(1u, 1u));
    var_0 = !vec2<bool>(var_0.x, all(vec3<bool>(true, all(vec4<bool>(false, var_0.x, true, var_0.x)), false)));
    var var_2 = vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~1u, 0u, 10245u), vec4<u32>(44412u, 0u, 46805u, 4294967295u) & select(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(4294967295u, 4294967295u, 15143u, 60680u), vec4<bool>(var_0.x, true, var_0.x, true))), 0u), 1u, 4294967295u);
    return ~select(~vec4<u32>(select(var_2.x, 33877u, true), var_2.x, countOneBits(var_2.x), 1u << (var_2.x % 32u)), vec4<u32>(0u, var_2.x, var_2.x, reverseBits(abs(0u))), select(vec4<bool>(!var_0.x, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x)), true, any(vec4<bool>(var_0.x, var_0.x, true, false))), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, false, false, var_0.x), var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), !(!vec4<bool>(var_0.x, false, var_0.x, true))));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(func_3(), -34755i, arg_2);
    var var_1 = Struct_1(~countOneBits(var_0.c.a));
    var_1 = var_0.c;
    var_1 = Struct_1(~15696u);
    var_1 = Struct_1(firstLeadingBit(arg_2.a));
    return !any(select(select(!vec2<bool>(arg_0, false), !vec2<bool>(false, arg_0), vec2<bool>(false, false)), vec2<bool>(true, u_input.a >= 0i), !all(vec3<bool>(arg_0, arg_0, true))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> vec2<bool> {
    var var_0 = 47462i;
    let var_1 = select(select(vec3<bool>(false, any(!vec2<bool>(arg_2, false)), !arg_2), vec3<bool>(arg_2, arg_2, true), _wgslsmith_mult_i32(-1i, u_input.a << (7380u % 32u)) >= (u_input.a & ~u_input.a)), vec3<bool>(false, !(select(true, false, arg_0) || all(vec2<bool>(arg_0, arg_2))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + arg_1), all(vec2<bool>(arg_2, arg_0)))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * arg_1), arg_1)), select(!(!select(vec3<bool>(false, arg_0, arg_2), vec3<bool>(true, arg_0, true), false)), vec3<bool>(arg_0, arg_2, false), true));
    var_0 = 2147483647i;
    var_0 = u_input.a;
    let var_2 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(76271u, 40910u), firstTrailingBit(0u)), 1u));
    return vec2<bool>(!arg_2, var_1.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<u32>) -> i32 {
    var var_0 = 25483u;
    var_0 = 29269u;
    var_0 = arg_2.x & abs(min(reverseBits(1u), 1u));
    let var_1 = arg_0.x;
    var var_2 = 43200i;
    return ~(_wgslsmith_mult_i32(countOneBits(u_input.a), ~(-u_input.a)) & countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(-29913i, u_input.a), ~vec2<i32>(u_input.a, 2147483647i))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_sub_i32(func_5(func_4(func_2(true, Struct_4(vec4<i32>(-2147483647i, -16975i, -37776i, 0i)), Struct_1(0u)) & true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-178f))), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1310f - -1000f) + _wgslsmith_f_op_f32(165f + -1000f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1274f, 411f, true)), _wgslsmith_f_op_f32(-877f - -2357f)))), (reverseBits(vec3<u32>(arg_1.x, 4294967295u, arg_1.x)) ^ _wgslsmith_add_vec3_u32(arg_1, arg_1)) | select(firstLeadingBit(arg_1), func_3().yww, true)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i) * -vec3<i32>(u_input.a, 26951i, arg_0)), ~min(min(vec3<i32>(2147483647i, u_input.a, 16613i), vec3<i32>(arg_0, 27541i, u_input.a)), -vec3<i32>(-2147483647i, -2147483647i, 1i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-580f, _wgslsmith_f_op_f32(751f + _wgslsmith_f_op_f32(-1871f - -827f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-448f + 1378f) * _wgslsmith_f_op_f32(min(-1000f, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -456f)), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_2 = 0u;
    let var_3 = _wgslsmith_div_i32(var_0 ^ (abs(arg_0) & _wgslsmith_mult_i32(max(u_input.a, 12531i), 1i)), func_5(vec2<bool>(any(vec2<bool>(true, false)) == (arg_1.x >= 9646u), all(vec2<bool>(true, true))), var_1.x, arg_1 << ((arg_1 & arg_1) % vec3<u32>(32u))));
    var_2 = 2195u;
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(5867u, func_1(1i, vec3<u32>(1u, 1u, 1u))) | ~(~0u));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1252f, 1786f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 124f))), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(197f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(895f, -1695f)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(954f * 281f), _wgslsmith_f_op_f32(round(-1566f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-755f + -257f))), vec2<f32>(-326f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, -510f) + _wgslsmith_f_op_f32(f32(-1f) * -887f))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 233f, _wgslsmith_div_f32(-631f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -186f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 191f, 292f, var_1.x), vec4<f32>(-781f, var_1.x, 1644f, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -507f, 387f, 368f) - vec4<f32>(-560f, var_1.x, var_1.x, 1459f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(512f, 651f, 1311f, 657f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, var_1.x, 166f, 256f))), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))))))));
    var var_3 = true;
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2212f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) * 855f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_2.xyw, _wgslsmith_div_vec3_f32(var_2.wzy, var_2.wyx))))), firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 42041i), vec2<i32>(0i, u_input.a)), -75550i, 1i)), countOneBits(select(abs(vec3<i32>(u_input.a, u_input.a, -1i)), abs(vec3<i32>(-1i, 51036i, u_input.a)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_add_i32(-2147483647i, u_input.a) <= u_input.a)));
}

