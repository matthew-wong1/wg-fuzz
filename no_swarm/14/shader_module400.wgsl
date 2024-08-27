struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 31134i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(step(245f, arg_0.a)))), 746f, 286f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-975f, _wgslsmith_f_op_f32(arg_0.a * arg_0.a), arg_0.a)), false)));
    let var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(firstLeadingBit(abs(vec2<i32>(arg_0.b.x, -1i))), vec2<i32>(2147483647i, -32262i)) | arg_1, arg_0.b.xz);
    global0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.b.yyw), abs(select(vec3<i32>(-2147483647i, -11097i, -45347i), arg_0.b.wxy, false) >> (~vec3<u32>(4294967295u, 0u, arg_2) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(31921u, 37557u, arg_2), select(~vec3<u32>(arg_2, arg_2, 4294967295u), vec3<u32>(4075u, arg_2, 23174u), !vec3<bool>(true, arg_3, true)), ~(vec3<u32>(arg_2, 110066u, 22242u) << (vec3<u32>(arg_2, 8969u, 7852u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    global0 = 6125i;
    let var_2 = select(arg_3, arg_3, _wgslsmith_f_op_f32(685f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(227f)))) <= var_0.x);
    return arg_0;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a, arg_1.a, arg_1.d))) - _wgslsmith_div_vec3_f32(arg_1.a, vec3<f32>(-436f, -894f, arg_3.b.a)))), func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, 924f)), vec4<i32>(-arg_1.c.x, 0i, -10448i, -u_input.a)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(arg_3.c.x, arg_0.x), arg_0.yx)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(22745u, 1u, 117628u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)), ~_wgslsmith_add_u32(3781u, 1u)), true), -(~abs(vec2<i32>(2147483647i, arg_3.b.b.x))), true, vec4<bool>(true, true || (_wgslsmith_div_f32(arg_3.a.x, arg_3.b.a) != _wgslsmith_f_op_f32(-701f * arg_1.a.x)), true, !any(vec4<bool>(true, false, false, arg_1.e.x))));
    var var_1 = arg_3;
    var var_2 = all(var_1.e.wxy);
    let var_3 = 30778i;
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1474f)) * -178f), -112f, _wgslsmith_f_op_f32(-1233f * var_0.a.x))), Struct_1(func_2(Struct_1(-1295f, abs(vec4<i32>(var_0.c.x, arg_2, -1i, -1i))), ~arg_0.xx, 8307u, !select(var_1.e.x, true, false)).a, countOneBits(_wgslsmith_add_vec4_i32(var_1.b.b, vec4<i32>(2147483647i, var_3, arg_2, 36747i)))), _wgslsmith_mod_vec2_i32(var_1.b.b.yy, vec2<i32>(14305i, _wgslsmith_dot_vec4_i32(vec4<i32>(28931i, -1i, arg_1.b.b.x, -4462i), vec4<i32>(-1i, var_3, 46589i, -6636i)))), any(var_0.e), !vec4<bool>(true | any(arg_1.e.xy), !all(arg_1.e.zx), true || !var_0.d, all(vec3<bool>(var_0.e.x, true, var_0.e.x))));
    return select(vec2<u32>(~reverseBits(25466u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 4294967295u), max(vec2<u32>(31899u, 4294967295u), vec2<u32>(4294967295u, 0u)))), ~vec2<u32>(~1u, 1u), true || !var_4.d) ^ abs(select(abs(vec2<u32>(18744u, 13189u)), vec2<u32>(1u, 1u), true));
}

fn func_1() -> i32 {
    let var_0 = abs(~(_wgslsmith_mult_u32(18006u, 115835u) & _wgslsmith_dot_vec3_u32(vec3<u32>(75687u, 106357u, 0u), vec3<u32>(60535u, 6344u, 4294967295u)))) != (~abs(~4487u) << (countOneBits(firstLeadingBit(abs(1u))) % 32u));
    global0 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec4_i32(abs(~(vec4<i32>(56557i, u_input.a, -1i, u_input.a) & vec4<i32>(-33094i, -2147483647i, -22676i, u_input.a))), select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 21449i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, 51149i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-12099i, u_input.a, u_input.a), vec3<i32>(-41876i, 1195i, u_input.a)), reverseBits(-1i), abs(u_input.a), -u_input.a), all(vec3<bool>(true, var_0, false)))));
    let var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-174f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1857f))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -17650i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 1i, 1i), vec4<i32>(u_input.a, -2147483647i, -27344i, u_input.a), vec4<i32>(2147483647i, u_input.a, 0i, u_input.a))), vec4<i32>(-115030i, abs(u_input.a), 4294i, i32(-1i) * -6633i))), ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(22524i, 1i), vec2<i32>(u_input.a, 42223i)) << (select(vec2<u32>(11745u, 4294967295u), vec2<u32>(7525u, 14102u), vec2<bool>(false, var_0)) % vec2<u32>(32u)), ~vec2<i32>(-2280i, 0i)), 0u, 1u < _wgslsmith_dot_vec2_u32(vec2<u32>(76266u, 0u), abs(vec2<u32>(1u, 1u))));
    let var_2 = _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), func_3(_wgslsmith_sub_vec4_i32(var_1.b, vec4<i32>(min(var_1.b.x, 25716i), func_2(Struct_1(1046f, var_1.b), var_1.b.xz, 43284u, var_0).b.x, i32(-1i) * -36434i, -21390i)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(max(1608f, -646f)), _wgslsmith_f_op_f32(-var_1.a)), Struct_1(_wgslsmith_f_op_f32(round(var_1.a)), var_1.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(-37022i, 0i), select(var_1.b.yz, var_1.b.wz, var_0), vec2<i32>(u_input.a, -1i) & var_1.b.wy), var_0, select(!vec4<bool>(false, var_0, var_0, true), !vec4<bool>(true, true, true, var_0), !vec4<bool>(true, true, true, var_0))), u_input.a | 1i, Struct_2(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(494f + 635f), _wgslsmith_f_op_f32(exp2(var_1.a))), var_1, ~_wgslsmith_mult_vec2_i32(var_1.b.yx, vec2<i32>(-36352i, -2147483647i)), false, select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, false, var_0, var_0), var_0))));
    var var_3 = select(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_2, 2213u, var_2, 4294967295u), ~vec4<u32>(var_2, 0u, var_2, 1u)), ~firstLeadingBit(vec4<u32>(0u, var_2, var_2, var_2))) & _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, var_2, 4294967295u, 40360u), vec4<u32>(4294967295u, var_2, 1u, 1u)), vec4<u32>(var_2, 74404u, 1u << (var_2 % 32u), ~54101u), vec4<u32>(var_2, 75585u, abs(98757u), select(4294967295u, var_2, true))), firstLeadingBit(~(~vec4<u32>(var_2, 3099u, 38243u, var_2)) >> (max(_wgslsmith_clamp_vec4_u32(vec4<u32>(37041u, 4294967295u, 1u, var_2), vec4<u32>(1u, var_2, var_2, var_2), vec4<u32>(24338u, 4294967295u, 106432u, var_2)), ~vec4<u32>(70559u, var_2, var_2, 4294967295u)) % vec4<u32>(32u))), vec4<bool>(var_0, (var_1.a != _wgslsmith_f_op_f32(var_1.a * var_1.a)) && !(-2147483647i < u_input.a), false, var_2 >= countOneBits(var_2)));
    return _wgslsmith_sub_i32(countOneBits(u_input.a), -1i & var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0i;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-139f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1221f, -1737f)), -758f)))), vec4<i32>(~func_1(), _wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(22233i, u_input.a), -u_input.a)), _wgslsmith_mult_i32(func_2(Struct_1(543f, vec4<i32>(2147483647i, 2147483647i, u_input.a, 0i)), -vec2<i32>(u_input.a, 31626i), ~0u, select(false, true, true)).b.x, reverseBits(u_input.a)), ~2147483647i));
    var var_1 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), select(vec4<i32>(1i, -u_input.a, ~2717i, _wgslsmith_sub_i32(u_input.a, 33148i)), max(var_0.b, ~vec4<i32>(var_0.b.x, 25124i, u_input.a, var_0.b.x)), !(-345f != var_0.a))), ~(~(~firstLeadingBit(vec2<i32>(2147483647i, -30140i)))), ~(~7618u), all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true))));
    global0 = abs(u_input.a);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, func_2(Struct_1(var_1.a, var_1.b), vec2<i32>(16398i, 2147483647i), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4391u, 4294967295u, 1u), vec4<u32>(0u, 0u, 4294967295u, 1u)), true).a, func_2(func_2(Struct_1(var_1.a, var_0.b), var_0.b.zz, 57073u, true), func_2(Struct_1(-617f, var_1.b), var_1.b.xx, 1u, false).b.zx, ~19993u, any(vec2<bool>(false, false))).a)), Struct_1(_wgslsmith_f_op_f32(-447f * var_1.a), ~vec4<i32>(firstLeadingBit(var_1.b.x), -2147483647i, _wgslsmith_clamp_i32(-2147483647i, var_1.b.x, -13097i), 75103i ^ var_0.b.x)), vec2<i32>(u_input.a, firstTrailingBit(-firstLeadingBit(-13991i))), true, !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)));
    var_0 = var_2.b;
    let var_3 = var_1.b.x;
    var var_4 = var_2;
    var var_5 = _wgslsmith_div_u32(abs(0u), _wgslsmith_sub_u32(~1u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(func_3(var_0.b, Struct_2(_wgslsmith_f_op_vec3_f32(-var_2.a), Struct_1(var_2.a.x, vec4<i32>(-1i, -14374i, -2147483647i, u_input.a)), func_2(Struct_1(1288f, vec4<i32>(var_4.c.x, var_2.b.b.x, -43546i, var_1.b.x)), var_2.b.b.wz, 36898u, true).b.yy, var_2.d, vec4<bool>(true, var_4.e.x, var_2.e.x, var_2.e.x)), abs(0i), var_2).x, ~reverseBits(1u), min(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(44725u, 4294967295u, 1u), vec3<u32>(61860u, 42022u, 1980u)))));
}

