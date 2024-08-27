struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
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

var<private> global0: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true));

var<private> global1: array<vec3<f32>, 26>;

var<private> global2: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = -(~_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, ~arg_0.a.e.x), -44872i));
    var var_1 = -1i;
    let var_2 = select(!arg_0.c, select(select(select(global0[_wgslsmith_index_u32(13999u | arg_0.a.a, 31u)], !vec4<bool>(arg_2, true, arg_3, arg_0.c.x), arg_0.d.x <= arg_0.a.b), global0[_wgslsmith_index_u32(~4294967295u, 31u)], true), global0[_wgslsmith_index_u32(~0u, 31u)], !arg_0.c), arg_2);
    var var_3 = vec4<f32>(arg_0.d.x, -658f, -1558f, -444f);
    return Struct_2(arg_1);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(firstLeadingBit(abs(vec4<i32>(14633i, 0i, arg_0, arg_0))), ~vec4<i32>(arg_0, -1i, 0i, 0i) & ~vec4<i32>(arg_0, 2147483647i, arg_0, arg_0)), ~(~vec4<i32>(arg_0, 0i, -4326i, arg_0)));
    global0 = array<vec4<bool>, 31>();
    var_0 = select((-abs(vec4<i32>(arg_0, 1i, -17261i, -15890i)) << (max(select(u_input.b, vec4<u32>(arg_2.a.x, arg_1.x, u_input.e.x, 68845u), global0[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_mod_vec4_u32(arg_1, arg_1)) % vec4<u32>(32u))) ^ vec4<i32>(~select(8188i, -1i, true), ~(~arg_0), select(-1i >> (1u % 32u), var_0.x, all(vec3<bool>(true, false, false))), 26094i), _wgslsmith_mult_vec4_i32((firstTrailingBit(vec4<i32>(4291i, arg_0, 2147483647i, arg_0)) & (vec4<i32>(2147483647i, var_0.x, arg_0, arg_0) & vec4<i32>(-2147483647i, arg_0, arg_0, -7595i))) ^ vec4<i32>(arg_0, -1i, _wgslsmith_dot_vec3_i32(var_0.yyy, vec3<i32>(arg_0, var_0.x, arg_0)), _wgslsmith_dot_vec2_i32(var_0.wy, vec2<i32>(var_0.x, 10140i))), abs(-vec4<i32>(var_0.x, 0i, var_0.x, arg_0))), vec4<bool>((_wgslsmith_add_u32(6982u, 46469u) <= u_input.c.x) == all(vec3<bool>(true, true, true)), all(vec4<bool>(all(vec2<bool>(true, true)), false, true, arg_0 <= var_0.x)), 0u != countOneBits(arg_1.x), all(vec3<bool>(true, true, true))));
    let var_1 = select(vec2<bool>(select(true, _wgslsmith_add_u32(4294967295u, 0u) < arg_1.x, arg_1.x == 5017u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_1.x, arg_2.a.x), ~u_input.e) >= arg_2.a.x), vec2<bool>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(0u, arg_2.a.x)) > ~(~arg_1.x), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), true))), !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    global1 = array<vec3<f32>, 26>();
    return -1i;
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1085f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-712f * 2186f))), _wgslsmith_f_op_f32(floor(-1045f)))), -496f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f + -929f) - 890f) * _wgslsmith_f_op_f32(round(-948f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 212f, 824f, -1143f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(670f, -1443f, -466f, 438f)))), true));
    var var_1 = _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(655f - _wgslsmith_f_op_f32(var_0.x - 1609f)), var_0.x))));
    global2 = (_wgslsmith_add_i32(func_3(_wgslsmith_clamp_i32(-15641i, -2147483647i, -1i), countOneBits(vec4<u32>(u_input.a.x, u_input.d.x, u_input.b.x, u_input.d.x)), func_2(Struct_3(Struct_1(u_input.b.x, var_0.x, true, -2147483647i, vec2<i32>(-46545i, -2147483647i)), vec2<i32>(-2147483647i, -12512i), vec4<bool>(arg_0, true, false, true), vec2<f32>(341f, 130f), u_input.e.x), vec3<u32>(13221u, 1u, u_input.b.x), arg_0, false)), 0i) & _wgslsmith_mult_i32(func_3(0i, vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x) ^ u_input.b, func_2(Struct_3(Struct_1(0u, 585f, true, -1i, vec2<i32>(-14484i, -3516i)), vec2<i32>(0i, -1i), vec4<bool>(arg_0, arg_0, false, arg_0), vec2<f32>(var_0.x, -207f), 1u), u_input.e, arg_0, arg_0)), -12698i)) & (i32(-1i) * -1i);
    let var_2 = func_2(Struct_3(Struct_1(~firstTrailingBit(u_input.e.x), _wgslsmith_f_op_f32(651f - _wgslsmith_f_op_f32(f32(-1f) * -626f)), (true || arg_0) | true, -1i, vec2<i32>(1i, 1i)), vec2<i32>(~13943i, ~(~20627i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.b.x, u_input.b.x, 66223u, 59060u), ~u_input.a), abs(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.e.x, 50230u, u_input.b.x, u_input.c.x)))), 31u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xw), _wgslsmith_f_op_vec2_f32(-var_0.zy)), 84450u), vec3<u32>(u_input.a.x, reverseBits(_wgslsmith_mult_u32(~21314u, u_input.b.x)), u_input.b.x), true, select(true, true, true));
    let var_3 = u_input.a.x;
    return func_2(Struct_3(Struct_1(~(~var_2.a.x), var_0.x, all(!vec2<bool>(arg_0, false)), abs(_wgslsmith_sub_i32(0i, -35659i)), vec2<i32>(_wgslsmith_sub_i32(0i, -43448i), countOneBits(-38828i))), select(-vec2<i32>(-1i, -5044i), _wgslsmith_div_vec2_i32(-vec2<i32>(0i, -51433i), reverseBits(vec2<i32>(16800i, -14184i))), !vec2<bool>(arg_0, true)), select(select(select(vec4<bool>(arg_0, true, arg_0, arg_0), global0[_wgslsmith_index_u32(var_2.a.x, 31u)], vec4<bool>(false, false, false, true)), global0[_wgslsmith_index_u32(~u_input.b.x, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.a.x, var_2.a.x), 31u)]), select(!global0[_wgslsmith_index_u32(var_3, 31u)], select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(true, arg_0, arg_0, false), arg_0), vec4<bool>(arg_0, true, false, false)), arg_0 & !arg_0), vec2<f32>(471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -2103f))), u_input.b.x), _wgslsmith_div_vec3_u32(firstLeadingBit(var_2.a), vec3<u32>(var_2.a.x, select(var_2.a.x, ~4294967295u, !arg_0), _wgslsmith_clamp_u32(0u, ~var_3, _wgslsmith_mod_u32(var_2.a.x, 16901u)))), select(!arg_0, arg_0, true), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> u32 {
    let var_0 = true;
    var var_1 = !any(!vec3<bool>(select(true, false, var_0), !var_0, any(vec3<bool>(false, var_0, var_0))));
    var var_2 = -185f;
    var var_3 = arg_1;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(-128f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)), 1738f)), 355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -285f))) + _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -753f) - -2470f)))));
    return 53645u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    let var_0 = Struct_1(_wgslsmith_clamp_u32(func_4(firstTrailingBit(reverseBits(vec3<i32>(-26619i, -2147483647i, -2147483647i))), func_1(true)), firstTrailingBit(u_input.a.x | 1u), 4294967295u), -590f, true, -(~((i32(-1i) * -13492i) << (min(0u, 22468u) % 32u))), ~(~vec2<i32>(1i, 1i)));
    global2 = -reverseBits(abs(1i << (1u % 32u)) & -var_0.e.x);
    let var_1 = vec2<bool>(var_0.c, any(!select(vec2<bool>(var_0.c, false), vec2<bool>(false, false), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, var_0.c), var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(func_2(Struct_3(Struct_1(var_0.a, -2674f, var_0.c, var_0.d, var_0.e), var_0.e, select(vec4<bool>(var_0.c, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_0.c, true, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)), ~76684u), u_input.e, true, select(false, true, true) & false).a.zy, ~vec2<u32>(u_input.a.x, _wgslsmith_div_u32(u_input.e.x, 1u))), _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(17650i, var_0.e.x, 12074i, var_0.e.x), vec4<i32>(-1i, -2147483647i, var_0.d, 18787i)) & firstTrailingBit(5172i)), -12863i));
}

