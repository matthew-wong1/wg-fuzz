struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(any(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false))), all(vec2<bool>(true, false))), true);
    var_0 = !select(!vec2<bool>(var_0.x && true, any(vec4<bool>(var_0.x, true, var_0.x, var_0.x))), vec2<bool>(!(!var_0.x), var_0.x), all(!(!vec4<bool>(var_0.x, false, var_0.x, true))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.zz);
    let var_2 = Struct_2(!all(vec2<bool>(var_0.x, -18988i >= u_input.a.x)), global0[_wgslsmith_index_u32(~u_input.b.x, 21u)], global0[_wgslsmith_index_u32(u_input.b.x, 21u)], ~(_wgslsmith_dot_vec2_u32(vec2<u32>(12756u, u_input.b.x), ~vec2<u32>(1u, u_input.b.x)) & 11021u));
    var var_3 = Struct_1(u_input.b.x, ~(-1i), select(!select(!var_2.b.c, var_2.c.c, all(vec4<bool>(var_2.a, var_0.x, var_2.a, var_0.x))), select(select(select(vec3<bool>(var_0.x, true, var_2.a), vec3<bool>(false, false, false), var_2.c.c), select(vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_2.c.c.x, var_2.a), true), !var_2.b.c), select(var_2.b.c, vec3<bool>(true, var_0.x, false), any(var_2.b.c.zy)), var_2.b.b < abs(37954i)), !select(false, true, !var_2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(335f, 154f) + _wgslsmith_div_vec2_f32(vec2<f32>(618f, global1.x), vec2<f32>(174f, -1200f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.b.d, vec2<f32>(global1.x, global1.x))))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(519f * _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.d.x * -453f))), 357f));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = Struct_1(4294967295u, -1i, select(arg_1, select(arg_1, vec3<bool>(arg_1.x, true, true), !(!arg_1)), !vec3<bool>(arg_1.x, -217f < global1.x, true)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(global1.x)), !any(vec4<bool>(arg_1.x, true, false, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), global1.x, false)))));
    let var_1 = _wgslsmith_f_op_f32(135f * global1.x);
    let var_2 = Struct_4(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(reverseBits(-27054i), 1i, var_0.b, 2147483647i), vec4<i32>(_wgslsmith_mult_i32(0i, 1i), ~u_input.a.x, _wgslsmith_sub_i32(var_0.b, -19804i), -1i)), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x), _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, u_input.a.x, var_0.b, -1i), vec4<i32>(u_input.a.x, 30255i, var_0.b, var_0.b)) ^ abs(vec4<i32>(-5453i, 40030i, u_input.a.x, -22032i)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-7670i, var_0.b, 8524i, -1i)), vec4<i32>(var_0.b, -62940i, var_0.b, var_0.b)), ~vec4<i32>(-33744i, u_input.a.x, -595i, var_0.b))), Struct_2(true, Struct_1(0u, 1i, !var_0.c, _wgslsmith_f_op_vec2_f32(abs(var_0.d))), Struct_1(1u, 0i, select(!arg_1, vec3<bool>(false, false, var_0.c.x), vec3<bool>(true, false, false)), _wgslsmith_f_op_vec2_f32(var_0.d - _wgslsmith_f_op_vec2_f32(max(var_0.d, var_0.d)))), arg_0 ^ max(~1u, select(arg_2, 1u, var_0.c.x))));
    let var_3 = Struct_2(!all(var_0.c), Struct_1(var_0.a, -min(u_input.a.x >> (0u % 32u), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.b)), arg_1, vec2<f32>(_wgslsmith_f_op_f32(step(-429f, _wgslsmith_f_op_f32(-global1.x))), -144f)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_2.b.c.a, var_2.b.b.a), 21u)], abs(u_input.b.x));
    var var_4 = _wgslsmith_clamp_i32(var_3.b.b, countOneBits((i32(-1i) * -7701i) >> (0u % 32u)), _wgslsmith_dot_vec3_i32(select(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), var_2.a.wxx), var_2.a.wyz, arg_1), ~_wgslsmith_clamp_vec3_i32(var_2.a.yyx, vec3<i32>(u_input.a.x, var_0.b, 46020i), vec3<i32>(u_input.a.x, u_input.a.x, var_0.b)), arg_1.x), ~reverseBits(min(vec3<i32>(0i, 19335i, 1i), vec3<i32>(var_0.b, var_3.b.b, 0i)))));
    return any(!vec4<bool>(!select(true, var_2.b.b.c.x, true), true, var_0.c.x, var_3.c.c.x));
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_4 {
    global0 = array<Struct_1, 21>();
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, _wgslsmith_f_op_f32(max(-488f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1324f)), global1.x))))));
    var var_0 = Struct_2(all(select(!(!vec3<bool>(false, arg_1, arg_0)), vec3<bool>(arg_1, global1.x == global1.x, false), false)), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 17679u), vec2<u32>(u_input.b.x, u_input.b.x)), ~_wgslsmith_sub_vec2_u32(u_input.b, u_input.b)), 51041i, vec3<bool>(false, all(vec4<bool>(true, arg_0, arg_1, arg_0)), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1003f, global1.x), vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1556f))))), Struct_1(u_input.b.x, i32(-1i) * -33675i, !(!select(vec3<bool>(arg_1, false, false), vec3<bool>(arg_1, arg_0, true), vec3<bool>(false, true, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1213f, -540f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-422f, global1.x) + vec2<f32>(global1.x, global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))), firstLeadingBit(4294967295u));
    global1 = vec2<f32>(var_0.b.d.x, global1.x);
    var var_1 = Struct_1(27337u, _wgslsmith_sub_i32(_wgslsmith_add_i32(min(_wgslsmith_add_i32(-1i, var_0.c.b), var_0.c.b), _wgslsmith_mod_i32(0i, reverseBits(-130i))), var_0.c.b), select(!var_0.c.c, var_0.b.c, !var_0.b.c), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), -1137f));
    return Struct_4(reverseBits(select(~(vec4<i32>(var_1.b, u_input.a.x, 19743i, u_input.a.x) ^ vec4<i32>(1i, var_1.b, 2147483647i, 32963i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(-1i, 0i, var_0.b.b, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.b, u_input.a.x, var_0.b.b, u_input.a.x), vec4<i32>(10105i, var_1.b, -50709i, -2147483647i))), any(var_0.b.c.xx))), Struct_2(arg_0, global0[_wgslsmith_index_u32(1u, 21u)], Struct_1(u_input.b.x, _wgslsmith_add_i32(-var_1.b, -u_input.a.x), select(!vec3<bool>(var_0.a, arg_0, arg_0), !var_0.b.c, var_1.c.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.b.d, vec2<f32>(var_1.d.x, -870f), false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(282f, var_1.d.x) - vec2<f32>(516f, 620f))))), 0u));
}

fn func_1() -> Struct_4 {
    global1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, global1.x), vec2<f32>(global1.x, global1.x)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-675f, 912f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1905f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(674f, global1.x)))))));
    global0 = array<Struct_1, 21>();
    return func_4(any(!vec3<bool>(global1.x > 1682f, all(vec4<bool>(true, true, false, true)), func_2(0u, vec3<bool>(true, true, true), 17452u))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -1i, u_input.a.x), u_input.a), _wgslsmith_mod_i32(u_input.a.x | 33835i, u_input.a.x)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(u_input.a.x), ~0i), u_input.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-831f, var_0.b.b.d.x)));
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.b.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.b.b.d))))) * var_0.b.b.d), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(905f, global1.x), -522f) - var_0.b.c.d), vec2<f32>(func_1().b.c.d.x, 725f))));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(var_0.b.c.d));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    let var_1 = u_input.a.zz;
    let var_2 = ~(-13236i << (u_input.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(vec2<u32>(~var_0.b.d, firstLeadingBit(4294967295u)))), var_0.a.x);
}

