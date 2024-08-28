struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-1376f, 1783f, 804f, 1014f), vec4<f32>(-1351f, 133f, -172f, 687f), vec4<f32>(-259f, -344f, -203f, -541f), vec4<f32>(1875f, -2010f, -765f, -1680f), vec4<f32>(830f, -591f, -142f, 2014f), vec4<f32>(589f, -117f, -726f, -1924f), vec4<f32>(905f, 1037f, -1935f, -770f), vec4<f32>(-1525f, 357f, -839f, -1509f), vec4<f32>(-1015f, 706f, 170f, 456f), vec4<f32>(852f, -1900f, 291f, 108f), vec4<f32>(278f, 389f, 653f, -781f), vec4<f32>(-616f, -1000f, -1073f, 760f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = array<vec4<f32>, 12>();
    let var_0 = Struct_3(true, vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1829f)) * -1000f))), -1i, _wgslsmith_mod_i32(max(u_input.a, 8321i), _wgslsmith_div_i32(u_input.a, 0i)), !vec3<bool>(true, 11904u < ~u_input.b, all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(-2147483647i, -16305i), _wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, -35783i), ~vec2<i32>(1i, var_0.c))), ~(-min(vec2<i32>(var_0.c, 0i), vec2<i32>(u_input.a, 1287i)))) << (abs(vec2<u32>(~(~1u), ~u_input.c.x)) % vec2<u32>(32u));
    let var_2 = Struct_3(max(u_input.b, 90744u) != (u_input.b & _wgslsmith_sub_u32(~u_input.c.x, ~4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.a.x, 1517f), var_0.b)))), 1i, countOneBits(_wgslsmith_mult_i32(~firstTrailingBit(-2147483647i), countOneBits(u_input.a))), !select(vec3<bool>(true, !var_0.a, var_0.c < var_1.x), vec3<bool>(var_0.a, var_0.e.x, all(vec3<bool>(true, true, false))), !var_0.a));
    let var_3 = all(select(select(vec3<bool>(33496u != u_input.c.x, false, all(var_0.e.zz)), !select(vec3<bool>(var_0.a, var_0.e.x, var_0.e.x), var_0.e, vec3<bool>(var_0.e.x, var_0.e.x, true)), all(!vec2<bool>(true, var_2.e.x))), vec3<bool>(true, true, 17498u >= ~arg_0.b.x), select(var_0.e, vec3<bool>(false, all(vec4<bool>(var_0.e.x, false, false, true)), any(vec3<bool>(var_2.a, false, false))), vec3<bool>(true, true, -423f <= var_0.b.x))));
    return ~26687u;
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1627f)) * -340f)) + -1095f));
    let var_1 = Struct_2(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1976f, -600f, -1260f, 277f), global0[_wgslsmith_index_u32(u_input.b, 12u)]))), ~vec4<u32>(u_input.c.x, u_input.b, 1u, u_input.b) >> (max(vec4<u32>(u_input.b, 2334u, 0u, 1u), vec4<u32>(78152u, 0u, 4294967295u, u_input.c.x)) % vec4<u32>(32u)))));
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    return abs(-(~vec3<i32>(i32(-1i) * -1i, -4415i, -u_input.a)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = vec2<i32>(59077i, arg_0.x);
    let var_1 = min(arg_1.b.x, 76724u);
    var var_2 = Struct_2(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1, var_1) & _wgslsmith_div_u32(39097u, 1498u), var_1));
    var var_3 = vec3<u32>(~(1u >> (u_input.b % 32u)), var_1, _wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(1u, var_2.a), vec2<u32>(u_input.b, 18336u), vec2<bool>(false, true)) << ((vec2<u32>(var_2.a, var_2.a) | u_input.c.zx) % vec2<u32>(32u))), vec2<u32>(~_wgslsmith_clamp_u32(arg_1.b.x, 0u, var_2.a), _wgslsmith_sub_u32(abs(var_2.a), arg_1.b.x))));
    var var_4 = ~_wgslsmith_mod_u32(var_1, 7366u);
    return select(~_wgslsmith_mod_i32(u_input.a, -20373i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -var_0.x, u_input.a), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, -2147483647i, -21838i), -vec3<i32>(u_input.a, 2147483647i, -49139i)), vec3<i32>(33770i, 1i, 2548i | u_input.a))), any(select(vec4<bool>(false, all(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, true, false))), vec4<bool>(u_input.a > 1i, true, -66769i > var_0.x, all(vec3<bool>(false, false, true))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), true))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = u_input.a;
    let var_1 = func_4(func_2(), Struct_1(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -573f), ~arg_1));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -2037f))));
    global0 = array<vec4<f32>, 12>();
    var var_3 = arg_0.zy;
    return Struct_3(select(_wgslsmith_f_op_f32(var_3.x - -896f) != 2052f, u_input.a < (_wgslsmith_add_i32(var_0, var_0) >> (0u % 32u)), false), vec2<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -550f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(420f, arg_0.x, false))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.x, 459f))), all(vec4<bool>(true, false, false, true)) != false))), u_input.a, _wgslsmith_mod_i32(~u_input.a >> (16864u % 32u), _wgslsmith_mult_i32(~var_0, var_0)), vec3<bool>(true, !(~54489i != u_input.a), true));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    var var_0 = Struct_2(~4294967295u >> (u_input.c.x % 32u));
    return arg_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 12>();
    global0 = array<vec4<f32>, 12>();
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-347f * 320f), _wgslsmith_f_op_f32(trunc(685f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec3<bool>(true, false, true), ~vec2<i32>(704i, u_input.a), func_1(vec3<f32>(1160f, -224f, 888f), vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.b)))), -921f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-475f + 272f) + _wgslsmith_div_f32(733f, func_1(vec3<f32>(185f, -568f, -377f), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 9859u)).b.x)), -2251f), ~(vec4<u32>(84972u, ~u_input.b, 0u, u_input.b) >> (vec4<u32>(20233u, ~u_input.b, _wgslsmith_add_u32(u_input.c.x, u_input.b), 1u) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(var_0.b.zww, vec3<u32>(var_0.b.x, u_input.c.x, var_0.b.x))), 12u)])) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a.x + -1197f)))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1102f - -234f)) + _wgslsmith_f_op_f32(func_5(vec3<bool>(false, true, true), ~vec2<i32>(-2147483647i, u_input.a), func_1(var_0.a.yww, var_0.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * var_0.a.x)));
    global0 = array<vec4<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec2_f32(var_1.wx * _wgslsmith_f_op_vec2_f32(var_1.wz + var_1.ww)), ~firstTrailingBit(~vec2<i32>(u_input.a, 1i)) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a, 2147483647i | u_input.a), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(95833i, u_input.a))), _wgslsmith_f_op_vec2_f32(-func_1(_wgslsmith_f_op_vec3_f32(step(var_1.zyw, _wgslsmith_f_op_vec3_f32(-var_0.a.xyx))), vec4<u32>(~0u, ~66039u, var_0.b.x, var_0.b.x)).b));
}

