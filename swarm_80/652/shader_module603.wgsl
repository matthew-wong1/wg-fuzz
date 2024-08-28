struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23>;

var<private> global1: bool = true;

var<private> global2: u32 = 12132u;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, false);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -450f) + -190f), -661f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-368f - -720f))), _wgslsmith_f_op_f32(select(-167f, _wgslsmith_f_op_f32(trunc(385f)), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) * 1f)));
    let var_1 = _wgslsmith_mod_u32(abs(countOneBits(_wgslsmith_mult_u32(u_input.a, 68327u))), ~abs(_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(20717u, 118765u))));
    var var_2 = 1000f;
    var var_3 = Struct_3(countOneBits(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-2147483647i, -2147483647i, 30697i), vec3<i32>(5474i, -73509i, -36779i), global3.x) << (abs(u_input.b.yzx) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), 23318u, any(select(select(vec2<bool>(false, global3.x), vec2<bool>(true, global3.x), select(false, true, false)), !vec2<bool>(false, global3.x), true)), true, u_input.b.zwy);
    let var_4 = Struct_1(var_0.x, u_input.b, ~vec4<u32>(_wgslsmith_mod_u32(~16615u, var_1), var_3.b, 16080u >> (0u % 32u), _wgslsmith_add_u32(~var_1, countOneBits(var_3.b))));
    return var_3.c;
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    global1 = firstLeadingBit(u_input.b.x) < _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 3210u, 1u) << (6872u % 32u), min(u_input.a, _wgslsmith_add_u32(67309u, u_input.b.x)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(610f - -2567f), _wgslsmith_div_f32(-494f, 1445f), _wgslsmith_f_op_f32(-585f * -1630f), 252f)))));
    let var_1 = vec3<i32>(_wgslsmith_mult_i32(44288i, 1i), 0i, 1i);
    let var_2 = u_input.b.yz;
    var var_3 = var_1.x;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(countOneBits(var_1.x), var_1.x, var_1.x), 1i, (1i ^ var_1.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 50914u, 4294967295u, u_input.a), u_input.b) % 32u)), _wgslsmith_add_vec3_i32(vec3<i32>(var_1.x, var_1.x, -17742i), vec3<i32>(var_1.x, -26335i, 12i)) >> (u_input.b.xzx % vec3<u32>(32u))) >> (4006u % 32u);
}

fn func_5(arg_0: i32) -> f32 {
    global1 = global3.x;
    let var_0 = Struct_2(true & global3.x, u_input.b, u_input.b.yww);
    var var_1 = select(select(vec4<bool>(!(!var_0.a), true, func_3(), !global3.x), vec4<bool>(false, false, var_0.a, all(vec4<bool>(true, true, true, true))), !vec4<bool>(false, all(vec4<bool>(true, false, false, true)), !var_0.a, true)), select(vec4<bool>(!(!var_0.a), all(vec2<bool>(var_0.a, global3.x)), all(!global3.yxw), all(vec2<bool>(false, var_0.a))), vec4<bool>(all(vec3<bool>(false, var_0.a, var_0.a)), u_input.b.x > 4294967295u, false, var_0.a), select(select(vec4<bool>(true, false, global3.x, global3.x), !vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(var_0.a, true, true, var_0.a)), !select(vec4<bool>(global3.x, var_0.a, global3.x, false), vec4<bool>(true, var_0.a, true, var_0.a), vec4<bool>(false, global3.x, var_0.a, true)), !var_0.a || var_0.a)), global3.x);
    var var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-924f))), vec4<u32>(1u, firstLeadingBit((u_input.a | 21735u) & var_0.c.x), abs(~u_input.a), 11445u), vec4<u32>(_wgslsmith_mult_u32(abs(min(var_0.c.x, var_0.b.x)), ~(~1u)), _wgslsmith_add_u32(countOneBits(~u_input.a), ~var_0.b.x | var_0.b.x), min(~4294967295u, max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(63300u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.b.x, u_input.a)))), u_input.b.x));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -761f)))))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(func_5(func_4(vec4<bool>(func_3(), true, true, false))));
    var var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_f32(var_0 + -963f);
    var_2 = _wgslsmith_f_op_f32(812f + 1039f);
    var var_3 = u_input.b;
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, 1445f)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(Struct_3(vec3<i32>(9698i, 2147483647i, 2147483647i), u_input.a, global3.x, global3.x, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), true)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 23>();
    var var_0 = 16608i;
    global3 = vec4<bool>(select(all(!global0[_wgslsmith_index_u32(~4294967295u, 23u)]), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, global3.x, false, false), vec4<bool>(global3.x, true, true, global3.x))), true), false, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-606f * _wgslsmith_f_op_f32(-1430f - -352f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1193f) + _wgslsmith_f_op_f32(abs(-850f))))), !(_wgslsmith_dot_vec2_i32(~vec2<i32>(-33352i, -1i), max(vec2<i32>(15882i, -1i), vec2<i32>(11311i, 1i))) <= firstTrailingBit(-25559i)));
    let var_1 = Struct_3((abs(-vec3<i32>(37655i, -2147483647i, -1i)) << (vec3<u32>(4294967295u, u_input.b.x, 1u) % vec3<u32>(32u))) & firstTrailingBit(vec3<i32>(1i, 1i, 1i) >> (u_input.b.zzx % vec3<u32>(32u))), u_input.b.x, select(!global3.x, all(!vec3<bool>(global3.x, true, true)), !global3.x), false, vec3<u32>(reverseBits(~5792u ^ _wgslsmith_div_u32(0u, u_input.b.x)), u_input.b.x, u_input.a));
    var var_2 = Struct_1(1000f, ~_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 34481u)), reverseBits(firstLeadingBit(u_input.b))), ~(~(~u_input.b)));
    var var_3 = Struct_1(-819f, ~(~vec4<u32>(~78501u, u_input.a, ~18794u, _wgslsmith_sub_u32(var_1.b, 4294967295u))), ~select(vec4<u32>(var_2.b.x << (1u % 32u), ~1u, 1u, max(var_2.b.x, u_input.b.x)), reverseBits(max(vec4<u32>(0u, 1u, 38145u, var_2.b.x), u_input.b)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(16504u, 5044u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(850f, var_3.a, -1758f, var_2.a), vec4<f32>(var_3.a, var_3.a, 1032f, var_2.a))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, var_2.a, 182f, var_2.a), vec4<f32>(var_3.a, var_2.a, var_3.a, var_2.a), true))))), var_1.a.x, 13111i, ~reverseBits(u_input.b.wz));
}

