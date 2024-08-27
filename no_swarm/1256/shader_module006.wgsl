struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<i32>(1i, 2147483647i, 1i, -1831i), vec2<u32>(1664u, 0u), 1u), Struct_1(vec4<i32>(-1i, 2147483647i, -8568i, 1i), vec2<u32>(0u, 13729u), 4294967295u), Struct_1(vec4<i32>(-1i, 8680i, 1i, i32(-2147483648)), vec2<u32>(4294967295u, 15112u), 7438u), Struct_1(vec4<i32>(2147483647i, -21931i, -1i, -52868i), vec2<u32>(4294967295u, 0u), 25762u), Struct_1(vec4<i32>(2147483647i, 2147483647i, -37668i, 11718i), vec2<u32>(53535u, 1539u), 6394u), Struct_1(vec4<i32>(-1i, 0i, 37116i, 2147483647i), vec2<u32>(0u, 1u), 0u), Struct_1(vec4<i32>(-8626i, -76673i, -1i, 33197i), vec2<u32>(1u, 4294967295u), 1u), Struct_1(vec4<i32>(-60636i, 2366i, 52972i, -41246i), vec2<u32>(11967u, 4294967295u), 45795u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -12102i, 12748i), vec2<u32>(4294967295u, 1u), 36523u), Struct_1(vec4<i32>(27439i, -1i, -1i, i32(-2147483648)), vec2<u32>(74906u, 24017u), 25514u), Struct_1(vec4<i32>(1i, 1i, -75787i, 14575i), vec2<u32>(1u, 8846u), 21310u), Struct_1(vec4<i32>(1i, 7833i, -1i, 0i), vec2<u32>(4294967295u, 46723u), 0u), Struct_1(vec4<i32>(-1i, 1i, 2147483647i, 0i), vec2<u32>(0u, 0u), 0u), Struct_1(vec4<i32>(-9689i, -1i, 15974i, 0i), vec2<u32>(18594u, 25448u), 4294967295u), Struct_1(vec4<i32>(0i, 9462i, 49818i, 30078i), vec2<u32>(10912u, 31321u), 1u), Struct_1(vec4<i32>(-42i, 0i, 20955i, 25185i), vec2<u32>(9296u, 13846u), 39376u), Struct_1(vec4<i32>(33746i, 9197i, i32(-2147483648), 8399i), vec2<u32>(8972u, 37093u), 2798u), Struct_1(vec4<i32>(5244i, i32(-2147483648), -13418i, 1i), vec2<u32>(74264u, 624u), 1u), Struct_1(vec4<i32>(-7351i, 1i, i32(-2147483648), 1i), vec2<u32>(4294967295u, 23119u), 1u), Struct_1(vec4<i32>(0i, -1i, 2147483647i, -1i), vec2<u32>(4294967295u, 4294967295u), 4294967295u), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 9439i, i32(-2147483648)), vec2<u32>(1u, 0u), 32643u), Struct_1(vec4<i32>(3495i, i32(-2147483648), -8264i, 10607i), vec2<u32>(64425u, 0u), 4111u), Struct_1(vec4<i32>(46259i, -27779i, 23776i, i32(-2147483648)), vec2<u32>(7951u, 31479u), 4294967295u), Struct_1(vec4<i32>(41586i, 2383i, 1i, -8855i), vec2<u32>(4294967295u, 4294967295u), 0u), Struct_1(vec4<i32>(-1i, 1i, 2147483647i, i32(-2147483648)), vec2<u32>(3716u, 2619u), 33982u), Struct_1(vec4<i32>(-48008i, 23055i, 1i, 2147483647i), vec2<u32>(55165u, 16972u), 4294967295u), Struct_1(vec4<i32>(-24685i, i32(-2147483648), 0i, 0i), vec2<u32>(57253u, 50730u), 43867u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, 1i), vec2<u32>(4294967295u, 4294967295u), 59254u), Struct_1(vec4<i32>(-50960i, 13928i, -30318i, -12374i), vec2<u32>(4294967295u, 4294967295u), 24585u), Struct_1(vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 42281i), vec2<u32>(1u, 14411u), 4294967295u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = select(-_wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(_wgslsmith_sub_i32(arg_0.a.x, -121i), ~(-27758i), arg_2.a.x, countOneBits(-2147483647i))), -(arg_2.a & arg_0.a), vec4<bool>(true, any(vec4<bool>(5978i == arg_0.a.x, true, true, any(vec4<bool>(true, false, true, false)))), true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, false, true)))));
    let var_1 = firstTrailingBit(0i);
    let var_2 = 0i;
    return _wgslsmith_f_op_f32(f32(-1f) * -818f);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = vec4<u32>(~77872u, arg_2.b.x, arg_2.b.x << (arg_0.x % 32u), _wgslsmith_sub_u32(arg_0.x, _wgslsmith_div_u32(firstTrailingBit(arg_0.x), arg_0.x) | ~min(1u, 12336u)));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(1118f, 810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(arg_2.a.x, 2147483647i, -5247i, arg_1.x), arg_0, arg_2.c), 38779u, Struct_1(vec4<i32>(-1i, arg_2.a.x, arg_2.a.x, -1i), vec2<u32>(arg_2.b.x, u_input.a.x), 15963u)))))), -1000f), vec4<f32>(-428f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1182f, 547f) * _wgslsmith_f_op_f32(f32(-1f) * -303f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -638f)))), _wgslsmith_f_op_f32(floor(-1037f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-571f - -880f) - -1314f)));
    global0 = array<Struct_1, 30>();
    let var_2 = var_1.xyy;
    var var_3 = abs(~var_0.wxy);
    return u_input.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(select(abs(_wgslsmith_div_u32(arg_0, arg_1.c)) == _wgslsmith_dot_vec4_u32(vec4<u32>(101320u, u_input.b, u_input.b, 19200u) | vec4<u32>(1u, 47892u, 9367u, u_input.b), vec4<u32>(4294967295u, arg_1.b.x, arg_1.b.x, u_input.a.x) & vec4<u32>(u_input.b, 1u, u_input.b, 28598u)), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true));
    var var_1 = Struct_2(true);
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 30u)];
    var var_3 = vec3<i32>(1i, _wgslsmith_mod_i32(abs(11293i) | var_2.a.x, 42386i), -var_2.a.x);
    var var_4 = max(reverseBits(~var_2.b), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0 >> (0u % 32u), arg_1.b.x) & u_input.a, arg_1.b));
    return Struct_1(abs(select(vec4<i32>(-46156i, -35458i, -1i, 26731i) | abs(vec4<i32>(arg_1.a.x, arg_2, -166i, -22583i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-26851i, var_3.x, var_2.a.x, 1i), arg_1.a), vec4<bool>(true, var_0.a, var_1.a, 1u > arg_1.c))), arg_1.b, u_input.a.x);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec4<i32> {
    var var_0 = arg_1.a.yx;
    let var_1 = func_4(_wgslsmith_dot_vec2_u32(func_2(arg_1.b, ~(~arg_1.a), Struct_1(arg_1.a, ~vec2<u32>(0u, u_input.a.x), 1u)), ~vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(1u, 30146u))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b), 30u)], firstLeadingBit(-1i));
    var_0 = firstLeadingBit(~vec2<i32>(-1i, ~reverseBits(arg_1.a.x)));
    let var_2 = select(vec4<bool>(!(!(-510f <= arg_3)), all(select(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_2.a, false)), vec4<bool>(arg_2.a, true, false, arg_0), !vec4<bool>(true, arg_2.a, false, false))), !select(false, true, true) && (min(arg_1.b.x, arg_1.c) == 0u), arg_0), !(!vec4<bool>(true, arg_0, true, -7429i < var_1.a.x)), select(vec4<bool>(true, !(true && arg_0), arg_0, true), select(select(vec4<bool>(arg_0, arg_0, true, arg_2.a), vec4<bool>(true, false, arg_0, true), vec4<bool>(arg_0, arg_0, true, false)), !(!vec4<bool>(arg_0, arg_0, true, arg_0)), !(!vec4<bool>(arg_2.a, false, true, true))), select(vec4<bool>(all(vec4<bool>(arg_2.a, false, arg_2.a, true)), any(vec4<bool>(arg_0, false, false, false)), true, true), !select(vec4<bool>(false, arg_2.a, arg_0, arg_0), vec4<bool>(false, arg_2.a, arg_2.a, arg_0), false), vec4<bool>(arg_2.a, all(vec2<bool>(arg_2.a, arg_2.a)), true, true))));
    var var_3 = ~_wgslsmith_div_u32(22278u, ~u_input.a.x << (_wgslsmith_clamp_u32(~arg_1.c, arg_1.c, _wgslsmith_mod_u32(0u, var_1.c)) % 32u));
    return _wgslsmith_add_vec4_i32(max(arg_1.a, vec4<i32>(-31992i, ~(-var_0.x), 2147483647i, reverseBits(i32(-1i) * -4781i))), firstTrailingBit(~(-arg_1.a)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = select(!vec4<bool>(true, true, !any(vec2<bool>(false, false)), true), select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, false)), arg_1.a.x <= arg_1.a.x, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), true))), select(!any(vec4<bool>(false, true, false, true)), true, !(33266i <= arg_1.a.x))), vec4<bool>(true, !any(vec2<bool>(false, false)), true, select(any(vec2<bool>(true, true)), true, 988f <= arg_0)));
    global0 = array<Struct_1, 30>();
    var var_1 = min(-6247i, 7055i);
    let var_2 = select(select(select(var_0.wzw, select(select(var_0.yxy, var_0.yyx, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true), !var_0.wxx, vec3<bool>(true, true, true)), var_0.wzx, u_input.b >= ~(~arg_1.b.x));
    let var_3 = ~(-_wgslsmith_add_vec3_i32(-(vec3<i32>(arg_1.a.x, arg_1.a.x, 17762i) << (vec3<u32>(arg_1.b.x, u_input.a.x, arg_1.b.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_1.a.x, 16137i), arg_1.a.xyw), arg_1.a.wyz)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    var var_0 = vec2<bool>(func_5(-2155f, Struct_1(func_1(true, global0[_wgslsmith_index_u32(u_input.b, 30u)], Struct_2(false), _wgslsmith_f_op_f32(-1359f * -1156f)), func_2(~vec2<u32>(u_input.b, u_input.a.x), ~vec4<i32>(-40453i, -2147483647i, -2159i, 45694i), func_4(30432u, Struct_1(vec4<i32>(2147483647i, 0i, -2147483647i, -11679i), vec2<u32>(3665u, 0u), u_input.a.x), 40156i)), u_input.b)), true);
    let var_1 = -reverseBits(-firstLeadingBit(-2147483647i));
    var var_2 = Struct_2(true);
    var var_3 = -704f;
    let var_4 = ~(~vec4<u32>(u_input.b << (u_input.b % 32u), 9632u, 1u, 42052u) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(119262u, u_input.a.x, u_input.b, 47633u)), vec4<u32>(53701u, 23928u, u_input.b, 4294967295u)) % vec4<u32>(32u)));
    let var_5 = select(!select(!select(vec3<bool>(false, true, true), vec3<bool>(false, var_0.x, var_0.x), var_0.x), !(!vec3<bool>(var_0.x, false, var_2.a)), select(!vec3<bool>(false, false, var_2.a), vec3<bool>(true, true, true), any(vec4<bool>(var_0.x, false, false, var_0.x)))), !(!(!select(vec3<bool>(true, var_2.a, true), vec3<bool>(false, true, false), var_0.x))), select(!vec3<bool>(!var_0.x, select(true, false, var_0.x), var_0.x), select(!(!vec3<bool>(var_2.a, true, true)), !(!vec3<bool>(var_0.x, false, false)), vec3<bool>(all(vec2<bool>(var_2.a, false)), true, var_0.x)), select(!vec3<bool>(false, var_0.x, true), vec3<bool>(false & var_2.a, func_5(-1008f, Struct_1(vec4<i32>(var_1, var_1, 2147483647i, 0i), vec2<u32>(4294967295u, 40360u), 4294967295u)), var_2.a | true), vec3<bool>(var_0.x, true, !var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_1, 1174f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(171f, 355f, 1650f), vec3<f32>(-279f, -504f, 273f)))) + vec3<f32>(_wgslsmith_div_f32(-139f, _wgslsmith_f_op_f32(floor(383f))), _wgslsmith_f_op_f32(-3035f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_3(func_4(var_4.x, global0[_wgslsmith_index_u32(u_input.a.x, 30u)], var_1), ~1u, func_4(u_input.a.x, Struct_1(vec4<i32>(-9231i, var_1, -2147483647i, 16784i), var_4.xw, var_4.x), var_1))))));
}

