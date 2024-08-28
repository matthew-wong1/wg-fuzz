struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, false, false, true, true, false, true, false, false, false, false);

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: f32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> vec4<bool> {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.b.x)));
    let var_0 = _wgslsmith_sub_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-1i, -3488i, -52634i, -1i)) << (~reverseBits(firstLeadingBit(vec4<u32>(60350u, arg_1, u_input.a.x, arg_0.d.c.x))) % vec4<u32>(32u)), vec4<i32>(-26112i, -_wgslsmith_div_i32(-24722i, 1i), -8542i, ~(-2147483647i)));
    global1 = !select(vec4<bool>(false, any(!vec2<bool>(global0[_wgslsmith_index_u32(arg_1, 12u)], global0[_wgslsmith_index_u32(arg_2, 12u)])), false, arg_0.a), select(vec4<bool>(!global1.x, all(vec4<bool>(true, global1.x, true, true)), !arg_0.a, select(global1.x, true, global0[_wgslsmith_index_u32(6216u, 12u)])), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)], true, false)), all(global1.wzz)), global0[_wgslsmith_index_u32(1698u, 12u)]);
    global0 = array<bool, 12>();
    global2 = 1281f;
    return !vec4<bool>(_wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_div_f32(251f, arg_3.x)) <= -857f, select(-435f == _wgslsmith_f_op_f32(-arg_0.c.x), (global0[_wgslsmith_index_u32(arg_1, 12u)] != global0[_wgslsmith_index_u32(1u, 12u)]) | (global0[_wgslsmith_index_u32(4294967295u, 12u)] & arg_0.a), true), all(global1.xw), true);
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = vec4<bool>(func_1(arg_0, _wgslsmith_sub_u32(firstLeadingBit(0u), arg_0.b.c.x), select(~_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(0u, u_input.a.x, 0u)), 35263u >> (~arg_0.d.c.x % 32u), arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b.x)))).x, any(!vec4<bool>(false, u_input.a.x != 67100u, false, global1.x)), !(true && (_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(52270i, 39173i)) > _wgslsmith_div_i32(11466i, -11357i))), reverseBits(arg_0.d.c.x) == 1u);
    return arg_0.c.x;
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(global1.x, Struct_1(924f, vec3<f32>(650f, -2125f, 874f), u_input.a.zy), vec4<f32>(-1979f, -1405f, 1000f, -937f), Struct_1(1488f, vec3<f32>(-1000f, -1539f, 774f), vec2<u32>(4294967295u, u_input.a.x))))), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(1754f)), _wgslsmith_f_op_f32(-619f + -713f))), -1483f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(170f - -1557f), -782f, _wgslsmith_f_op_f32(f32(-1f) * -955f), _wgslsmith_f_op_f32(step(2128f, 1127f))))));
    let var_1 = true;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1858f) * -1000f)), var_0.x, var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)));
    var var_2 = Struct_2(~_wgslsmith_clamp_u32(4294967295u, ~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) < u_input.a.x, Struct_1(var_0.x, var_0.zxx, _wgslsmith_sub_vec2_u32(~u_input.a.yx, vec2<u32>(u_input.a.x << (0u % 32u), select(u_input.a.x, u_input.a.x, var_1)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(var_1, Struct_1(1000f, var_0.wwx, u_input.a.zx), vec4<f32>(var_0.x, -845f, var_0.x, -1000f), Struct_1(var_0.x, var_0.zww, u_input.a.yx)))), -384f, 450f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_0.x))))), Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.x, var_0.x) + var_0.wwy)), _wgslsmith_add_vec2_u32(u_input.a.xz, _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a.x, 0u)), ~u_input.a.yy, ~u_input.a.yz))));
    global1 = select(!vec4<bool>(false, _wgslsmith_mult_i32(arg_0, arg_0) == ~53062i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true), !(!vec4<bool>(all(global1.wy), var_2.a, global1.x & true, var_2.a)), arg_0 < _wgslsmith_div_i32(arg_0, arg_0));
    return Struct_3(var_2.b);
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~select(27429u, u_input.a.x ^ arg_0.a.c.x, arg_0.a.a != 761f);
    var var_1 = func_2(4855i);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(firstTrailingBit(19275u), _wgslsmith_clamp_u32(var_0, u_input.a.x, 48144u), 0u) | _wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(var_1.a.c, u_input.a.zy)), var_1.a.c.x), arg_0.a.c.x);
    global1 = func_1(Struct_2(func_2(-6974i << (arg_0.a.c.x % 32u)).a.c.x < 8150u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-175f + 961f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -816f, 103f) + _wgslsmith_f_op_vec3_f32(ceil(arg_0.a.b))), _wgslsmith_sub_vec2_u32(arg_0.a.c, vec2<u32>(6631u, var_1.a.c.x) << (u_input.a.yz % vec2<u32>(32u)))), vec4<f32>(1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(true, arg_0.a, vec4<f32>(var_1.a.a, arg_0.a.a, var_1.a.b.x, var_1.a.a), Struct_1(var_1.a.b.x, vec3<f32>(-857f, -712f, var_1.a.a), var_1.a.c))))), _wgslsmith_f_op_f32(-arg_0.a.a), 1117f), func_2(_wgslsmith_clamp_i32(1i, -18054i, _wgslsmith_add_i32(2147483647i, -2147483647i))).a), u_input.a.x, 1u, arg_0.a.b.yy);
    global2 = 1f;
    return Struct_1(1110f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b))), _wgslsmith_add_vec2_u32(arg_0.a.c, var_1.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    let var_0 = -vec2<i32>(1i, 1i);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1473f) + -508f) + _wgslsmith_f_op_f32(f32(-1f) * -1040f)), -2268f, -1055f, _wgslsmith_f_op_f32(step(594f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -930f)))))));
    global1 = !(!(!select(vec4<bool>(true, global1.x, false, false), func_1(Struct_2(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], Struct_1(-924f, var_1.www, vec2<u32>(u_input.a.x, u_input.a.x)), vec4<f32>(383f, var_1.x, 1389f, -2304f), Struct_1(var_1.x, var_1.yzy, u_input.a.xy)), 4294967295u, 1u, var_1.zz), select(vec4<bool>(true, global1.x, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], global1.x, global1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], true, false)))));
    var var_2 = Struct_3(func_4(func_2(var_0.x | var_0.x)));
    var var_3 = vec3<u32>(1u, _wgslsmith_add_u32(func_4(func_2(-2147483647i)).c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(22297u, u_input.a.x, u_input.a.x & var_2.a.c.x), firstLeadingBit(select(u_input.a, u_input.a, false)))), var_2.a.c.x << (u_input.a.x % 32u));
    let var_4 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(32539u, countOneBits(77267u), reverseBits(var_2.a.c.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(~(~1u), var_2.a.c.x | var_3.x, ~(~var_3.x)), ~((u_input.a & u_input.a) << (max(vec3<u32>(var_3.x, 4294967295u, var_3.x), vec3<u32>(51137u, u_input.a.x, var_3.x)) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(4294967295u, 4294967295u, _wgslsmith_add_u32(~var_4.x, 26662u) << (~17488u % 32u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-487f - -1540f), _wgslsmith_f_op_f32(trunc(var_2.a.b.x))), _wgslsmith_f_op_vec2_f32(var_2.a.b.xy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1740f, var_1.x))))), vec4<f32>(_wgslsmith_f_op_f32(step(-1366f, 1205f)), _wgslsmith_f_op_f32(-1106f - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(var_2.a.b.x - var_1.x), _wgslsmith_f_op_f32(-471f * _wgslsmith_f_op_f32(-408f + _wgslsmith_f_op_f32(-var_2.a.a)))), u_input.a.xz, _wgslsmith_sub_i32(max(max(var_0.x, var_0.x), reverseBits(0i)), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, var_0.x), vec4<i32>(30420i, var_0.x, 0i, 48670i)), abs(1i))));
}

