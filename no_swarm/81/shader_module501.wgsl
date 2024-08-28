struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(58378u, 61143u, 14500u, 1u), vec4<u32>(1u, 52116u, 66114u, 19717u), vec4<u32>(4294967295u, 1u, 1u, 62357u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 24318u, 5675u), vec4<u32>(0u, 8211u, 3211u, 58911u), vec4<u32>(0u, 47496u, 4294967295u, 1u), vec4<u32>(1u, 1u, 13419u, 1u), vec4<u32>(1u, 4294967295u, 26496u, 0u), vec4<u32>(75132u, 4294967295u, 13345u, 74231u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(33052u, 69496u, 12635u, 0u), vec4<u32>(18466u, 54131u, 1162u, 17365u), vec4<u32>(39123u, 15954u, 24901u, 1u), vec4<u32>(31161u, 49593u, 55201u, 45821u), vec4<u32>(6031u, 54154u, 28707u, 140398u), vec4<u32>(4294967295u, 0u, 14755u, 4294967295u), vec4<u32>(4294967295u, 24913u, 0u, 4294967295u), vec4<u32>(7991u, 1u, 0u, 1u), vec4<u32>(0u, 4294967295u, 0u, 29446u), vec4<u32>(7189u, 0u, 0u, 33476u), vec4<u32>(33685u, 4294967295u, 4294967295u, 4609u), vec4<u32>(4294967295u, 25245u, 9063u, 0u), vec4<u32>(0u, 72415u, 0u, 4294967295u), vec4<u32>(27182u, 51153u, 4294967295u, 0u), vec4<u32>(100531u, 25227u, 19659u, 37073u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 0u, 7061u), vec4<u32>(39221u, 1u, 27404u, 0u), vec4<u32>(0u, 130030u, 0u, 72718u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<vec4<u32>, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x + -326f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-959f)) + -1337f)), arg_0.b.x, -1120f));
    global0 = array<vec4<u32>, 30>();
    let var_1 = u_input.d.xzw;
    var var_2 = max(-28669i, 30199i);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(467f)))) - _wgslsmith_div_f32(_wgslsmith_div_f32(2022f, _wgslsmith_f_op_f32(var_0.x + 1000f)), var_0.x)), var_0.x);
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1268f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    var var_1 = -12240i;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x - 1949f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -522f))))), true));
    return max(vec3<u32>(~u_input.a, countOneBits(countOneBits(_wgslsmith_sub_u32(15916u, u_input.e))), abs(_wgslsmith_div_u32(u_input.c.x, 0u))), u_input.d.zxx);
}

fn func_2() -> bool {
    let var_0 = abs(abs(func_3()));
    var var_1 = Struct_1(81790u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2656f, -586f) + vec2<f32>(663f, -317f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1469f, 823f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-473f, 1043f) - vec2<f32>(-1032f, 601f)))))), ~(~_wgslsmith_add_vec3_u32(~var_0, abs(var_0))), abs(select(vec4<u32>(var_0.x, 1u, ~var_0.x, var_0.x), ~(u_input.d & u_input.d), true)));
    let var_2 = false;
    var var_3 = abs(var_1.c.x) ^ 4294967295u;
    var var_4 = Struct_2(Struct_1(_wgslsmith_sub_u32(u_input.d.x, ~(~var_1.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.b + var_1.b), _wgslsmith_f_op_vec2_f32(-var_1.b))) - vec2<f32>(163f, _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_div_vec3_u32(~var_0, func_3()), abs(var_1.d) >> ((vec4<u32>(u_input.a, 26957u, var_0.x, var_0.x) ^ vec4<u32>(0u, 9873u, var_0.x, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-113f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1465f, _wgslsmith_f_op_f32(exp2(var_1.b.x)))))));
    return !all(!(!(!vec3<bool>(var_2, false, var_2))));
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_5) -> Struct_5 {
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    global0 = array<vec4<u32>, 30>();
    var var_0 = arg_3.c.x;
    return Struct_5(arg_3.a, _wgslsmith_sub_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(select(arg_3.b, vec3<i32>(38423i, -3337i, -2147483647i), arg_3.c.yyz), -vec3<i32>(u_input.b, arg_3.a.e.x, 1i), select(arg_3.b, vec3<i32>(1i, arg_3.a.d, arg_3.b.x), arg_3.c.x))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.b), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3.b.x, u_input.b, arg_3.a.a), arg_3.b, arg_3.b))), vec4<bool>(true, all(vec3<bool>(true, true, true)), all(select(!arg_3.c.yyw, arg_3.c.xwz, false)), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.e), min(u_input.d.ywz, u_input.d.xyz | vec3<u32>(0u, select(u_input.c.x, u_input.c.x, false), _wgslsmith_div_u32(54269u, u_input.e))));
    var var_1 = _wgslsmith_sub_u32(1u, u_input.c.x | 1u);
    var var_2 = Struct_2(Struct_1(~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1685f, 703f))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-337f, 239f), vec2<f32>(-794f, 1967f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_0.x, vec2<f32>(1191f, 711f), vec3<u32>(1u, 4294967295u, 16617u), global0[_wgslsmith_index_u32(var_0.x, 30u)]))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-531f, -972f), vec2<f32>(-112f, 1000f))))), abs(_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(36289u, 42580u, 17555u))), _wgslsmith_div_vec4_u32(~u_input.d, vec4<u32>(30790u, ~1u, _wgslsmith_div_u32(7311u, 5805u), 1u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(f32(-1f) * -1124f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1337f, -125f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 1115f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -910f))), false)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1105f * -195f)))));
    let var_3 = 1u;
    var var_4 = func_4(select(vec2<bool>(firstTrailingBit(1i) < u_input.b, func_2()), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(false, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), firstLeadingBit(u_input.d.x) & select(4294967295u, _wgslsmith_mod_u32(~var_2.a.a, 18598u), true), Struct_4(var_2.a, 4294967295u), Struct_5(Struct_3(abs(1i), Struct_2(var_2.a, vec2<f32>(var_2.c, -1000f), _wgslsmith_f_op_f32(round(1298f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-861f, var_2.a.b.x, var_2.b.x, var_2.b.x)))), -u_input.b, ~vec2<i32>(u_input.b, u_input.b) >> (~vec2<u32>(23590u, 30865u) % vec2<u32>(32u))), vec3<i32>(-2147483647i, i32(-1i) * -u_input.b, -_wgslsmith_mod_i32(u_input.b, 6519i)), vec4<bool>(true, true, true, true)));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.a.c.www) * var_4.a.c.wxx);
    let x = u_input.a;
    s_output = StorageBuffer(-1358f, vec3<f32>(-274f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-367f, -1000f), _wgslsmith_f_op_f32(-1478f - var_2.c))))), _wgslsmith_div_f32(var_4.a.c.x, _wgslsmith_div_f32(-646f, _wgslsmith_f_op_f32(step(var_4.a.b.c, var_2.c))))));
}

