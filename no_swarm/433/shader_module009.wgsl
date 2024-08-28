struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: vec2<f32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>) -> vec4<bool> {
    let var_0 = u_input.d;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(arg_0), var_0, 0u), 27u)], _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, 663f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, var_0), vec2<u32>(1u, var_0)), 27u)] + global0[_wgslsmith_index_u32(1u, 27u)]))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(559f, global1.x)), vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(floor(665f))))));
    let var_1 = vec4<i32>(arg_1.x, arg_1.x, firstLeadingBit(abs(arg_1.x)), -34607i);
    let var_2 = ~firstTrailingBit(abs(1u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(35832u, u_input.d, var_0, 78643u), ~vec4<u32>(0u, var_0, 27337u, 0u)));
    global0 = array<vec2<f32>, 27>();
    return !select(vec4<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, var_0, 14648u), vec3<u32>(arg_0, 24004u, 25734u)) != abs(arg_0), !(global1.x >= global1.x), !all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), select(vec4<bool>(global1.x == global1.x, true, true, any(vec4<bool>(false, true, true, true))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), false));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!any(select(func_3(u_input.d, vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.a)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), false)), ~(vec4<u32>(~51995u, firstLeadingBit(u_input.c), 4294967295u, 4294967295u) >> (select(vec4<u32>(u_input.c, 4294967295u, u_input.c, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.d, u_input.d, u_input.c), vec4<u32>(1u, 0u, u_input.c, 0u), vec4<u32>(4294967295u, u_input.d, u_input.c, 5029u)), func_3(1u, vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))) % vec4<u32>(32u))), vec4<bool>(true, !all(vec4<bool>(true, true, true, true)), all(func_3(0u, vec4<i32>(1i, 42706i, u_input.b, -2147483647i)).xwz) && false, func_3(_wgslsmith_clamp_u32(u_input.d, 21288u, ~u_input.c), _wgslsmith_div_vec4_i32(~vec4<i32>(44839i, -35261i, 6341i, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(58054i, 0i, -62055i, 2147483647i), vec4<i32>(u_input.b, u_input.a, u_input.a, 52202i)))).x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(245f + global1.x)) - vec2<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(floor(global1.x)))), global0[_wgslsmith_index_u32(u_input.d, 27u)]));
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    global0 = array<vec2<f32>, 27>();
    var var_1 = 1u;
    return Struct_1(u_input.a > max(u_input.a, u_input.a), _wgslsmith_div_vec4_u32(select(vec4<u32>(0u, ~1u, 2923u, var_0.b.x | u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(104655u, 58069u, 5550u, 48100u) << (vec4<u32>(65490u, u_input.d, var_0.b.x, 4294967295u) % vec4<u32>(32u)), select(var_0.b, vec4<u32>(var_0.b.x, 38751u, var_0.b.x, u_input.d), var_0.c)), var_0.c.x), max(~vec4<u32>(1u, 8231u, 2388u, 68369u), ~(~vec4<u32>(117952u, var_0.b.x, 0u, 93871u)))), vec4<bool>(!var_0.c.x, false, var_0.a, var_0.a), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(1379f, global1.x)), global1.x), var_0.d, !vec2<bool>(1310f < var_0.d.x, !var_0.a))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1168f) * 399f);
    let var_1 = u_input.b;
    var var_2 = vec3<i32>(max(var_1, var_1), var_1, var_1);
    var var_3 = arg_0.b.yxx;
    let var_4 = reverseBits(vec4<i32>(-24404i, firstLeadingBit(_wgslsmith_mod_i32(-58086i | var_2.x, max(-4542i, u_input.b))), -2147483647i, var_1));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(global1.x + arg_0.d.x), -818f, -1084f), vec4<f32>(arg_2, 307f, _wgslsmith_f_op_f32(f32(-1f) * -934f), _wgslsmith_div_f32(arg_0.d.x, global1.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<vec2<f32>, 27>();
    var var_0 = func_2();
    var_0 = func_2();
    let var_1 = true;
    var var_2 = countOneBits(_wgslsmith_sub_u32(u_input.d, ~(~23091u)));
    return vec4<bool>(~max(~u_input.c, 0u) < arg_1.b.x, !var_0.a && all(vec4<bool>(true, var_1, u_input.b < u_input.a, var_0.a)), true, arg_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_clamp_u32(~(~0u), min(_wgslsmith_mod_u32(56869u, 1u), arg_2.b.x), max(4294967295u, u_input.c));
    var var_1 = arg_0;
    var_0 = _wgslsmith_dot_vec3_u32(~(abs(arg_0.b.yyw) >> (vec3<u32>(1u, arg_0.b.x, ~arg_0.b.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(arg_2.b.yyx, arg_0.b.ywy));
    var_1 = Struct_1(false, ~arg_2.b, func_5(_wgslsmith_f_op_vec4_f32(func_4(func_2(), select(!arg_2.c.yy, vec2<bool>(var_1.c.x, arg_0.a), !vec2<bool>(arg_2.c.x, false)), arg_0.d.x)), arg_0), arg_2.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, ~arg_2.b, vec4<bool>(false, arg_0.a, all(vec2<bool>(var_1.c.x, arg_0.c.x)), arg_0.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(184f, var_1.d.x))), vec2<bool>(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1041f, arg_2.d.x, -1100f, global1.x)), Struct_1(false, arg_2.b, vec4<bool>(false, false, false, arg_0.c.x), vec2<f32>(var_1.d.x, arg_0.d.x))).x, true), -1105f)).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 27>();
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(false, vec4<u32>(46091u, u_input.d, u_input.d, u_input.c), vec4<bool>(true, true, true, false), vec2<f32>(-2528f, -275f)), false, Struct_1(false, vec4<u32>(4294967295u, 4294967295u, 1u, u_input.d), vec4<bool>(false, false, false, false), vec2<f32>(global1.x, global1.x)))), 1228f), vec2<f32>(_wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(312f * -403f)))))));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1523f)) - 1802f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) + _wgslsmith_f_op_f32(trunc(global1.x)))) - global0[_wgslsmith_index_u32(4294967295u << (u_input.d % 32u), 27u)]));
    var var_0 = select(!vec4<bool>(any(vec2<bool>(true, true)), true, true || (u_input.b < u_input.a), select(any(vec4<bool>(true, false, false, true)), false, func_3(u_input.c, vec4<i32>(0i, -24654i, -53410i, -1i)).x)), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true))), !((true || func_5(vec4<f32>(global1.x, 1261f, global1.x, 493f), Struct_1(true, vec4<u32>(u_input.c, 1u, 59097u, 13784u), vec4<bool>(true, true, false, true), vec2<f32>(1441f, global1.x))).x) & select(true, true, true)));
    var_0 = vec4<bool>(func_3(~0u, select(~select(vec4<i32>(u_input.a, -2147483647i, u_input.b, 11627i), vec4<i32>(u_input.a, 18760i, -2147483647i, 36333i), var_0.x), vec4<i32>(-2147483647i, _wgslsmith_add_i32(-13662i, -6765i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 23430i, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, 0i, u_input.b), vec4<i32>(-2147483647i, u_input.a, u_input.a, 0i))), var_0.x)).x, !(!(true || (var_0.x | true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1119f)))) == global1.x, true);
    var var_1 = -1015f;
    let var_2 = vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.a, -2147483647i))), min(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(2147483647i, 1i))) << (1u % 32u), -1i, ~(i32(-1i) * -u_input.b));
    var var_3 = func_2();
    var var_4 = Struct_1(var_3.a, select(vec4<u32>(var_3.b.x, 4294967295u, func_2().b.x, 1u), ~_wgslsmith_mult_vec4_u32(var_3.b, vec4<u32>(u_input.d, u_input.c, var_3.b.x, u_input.c)), select(var_3.c, var_3.c, !vec4<bool>(var_3.a, var_3.c.x, false, true))) & vec4<u32>(~(~u_input.d), var_3.b.x, ~var_3.b.x, func_2().b.x | (var_3.b.x ^ u_input.d)), var_3.c, global0[_wgslsmith_index_u32(41465u, 27u)]);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2, _wgslsmith_mod_vec4_i32(var_2, var_2)));
}

