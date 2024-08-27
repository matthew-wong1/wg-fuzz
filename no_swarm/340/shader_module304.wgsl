struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-40181i, -1i), vec4<u32>(4294967295u, 1u, 0u, 13332u), false, vec4<u32>(0u, 43041u, 1u, 20112u)), Struct_1(vec2<i32>(i32(-2147483648), 1i), vec4<u32>(0u, 0u, 12428u, 4294967295u), true, vec4<u32>(0u, 47502u, 95553u, 4294967295u)), Struct_1(vec2<i32>(-39062i, -1i), vec4<u32>(13637u, 0u, 22307u, 20001u), true, vec4<u32>(21635u, 1u, 1u, 65643u)), Struct_1(vec2<i32>(0i, 1i), vec4<u32>(10419u, 4294967295u, 4294967295u, 1u), true, vec4<u32>(63887u, 1055u, 8247u, 4294967295u)), Struct_1(vec2<i32>(48420i, 14425i), vec4<u32>(4294967295u, 24077u, 83340u, 85280u), true, vec4<u32>(45111u, 17417u, 81012u, 14944u)), Struct_1(vec2<i32>(2147483647i, -1i), vec4<u32>(27561u, 28829u, 1u, 1u), false, vec4<u32>(1u, 4294967295u, 1u, 0u)), Struct_1(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(47446u, 4294967295u, 1u, 7788u), false, vec4<u32>(4294967295u, 0u, 1u, 0u)), Struct_1(vec2<i32>(2147483647i, -36445i), vec4<u32>(4294967295u, 4068u, 1u, 0u), true, vec4<u32>(41134u, 31857u, 28457u, 1u)), Struct_1(vec2<i32>(-1i, 2147483647i), vec4<u32>(4294967295u, 0u, 2171u, 0u), true, vec4<u32>(1u, 46432u, 18539u, 4294967295u)), Struct_1(vec2<i32>(3077i, 49779i), vec4<u32>(56464u, 5745u, 0u, 56772u), true, vec4<u32>(89705u, 0u, 4294967295u, 7315u)), Struct_1(vec2<i32>(1i, 0i), vec4<u32>(19858u, 870u, 22730u, 4294967295u), false, vec4<u32>(101944u, 0u, 5215u, 1u)), Struct_1(vec2<i32>(2147483647i, -4223i), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), false, vec4<u32>(17458u, 0u, 0u, 0u)));

var<private> global1: array<vec3<i32>, 20>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 12u)];
    let var_1 = var_0.a;
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    global1 = array<vec3<i32>, 20>();
    return min(var_0.a.x, var_1.x);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(430f)), 476f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-189f)), _wgslsmith_div_f32(955f, -721f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1112f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f * -788f) - _wgslsmith_f_op_f32(1631f + -117f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(max(-1192f, 162f)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(abs(576f))))));
    global0 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(19866i, -2147483647i, -27007i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), abs(vec4<i32>(1i, 1i, 1i, 1i)))), 2147483647i);
    global0 = array<Struct_1, 12>();
    let var_2 = select(vec2<bool>(all(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false)), true), select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true | select(false, false, true)), true), var_0.x <= _wgslsmith_div_f32(1865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-198f, -589f)))));
    return _wgslsmith_sub_vec3_u32(~select(vec3<u32>(71484u, arg_0, 547u) | (vec3<u32>(arg_0, 56190u, 19256u) >> (vec3<u32>(0u, 100335u, arg_0) % vec3<u32>(32u))), vec3<u32>(~4294967295u, u_input.c ^ 0u, 0u), false), u_input.a.yxy);
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~arg_1.x, 0i), -52843i), _wgslsmith_sub_vec2_i32(-arg_1.xw, vec2<i32>(-11510i, arg_1.x)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 37239u), vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)));
    global0 = array<Struct_1, 12>();
    let var_1 = ~func_3(~_wgslsmith_mod_u32(u_input.b, ~u_input.b));
    var var_2 = u_input.a;
    let var_3 = !any(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), true));
    return max(vec4<u32>(59946u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_1, vec3<u32>(var_2.x, u_input.a.x, u_input.c)), vec3<u32>(1u, 1u, 1u)), 4294967295u, var_2.x), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(0u & ~_wgslsmith_div_u32(4294967295u, ~u_input.b)), 12u)];
    var var_1 = Struct_2(Struct_1(vec2<i32>(func_1(~var_0.d.yy), abs(reverseBits(28903i))), func_2(~(2147483647i | var_0.a.x), ~(~vec4<i32>(-2147483647i, -17200i, var_0.a.x, 0i))), 0u == var_0.b.x, u_input.a), 41064i >> (u_input.b % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(func_1(vec2<u32>(0u, 52089u)), -12531i, firstTrailingBit(7829i)), vec3<i32>(~(-var_0.a.x), countOneBits(var_0.a.x) ^ firstTrailingBit(-22470i), ~(~var_0.a.x))), reverseBits(-abs(abs(var_0.a))), _wgslsmith_dot_vec4_u32(func_2(var_0.a.x, ~vec4<i32>(-13223i, var_0.a.x, var_0.a.x, -21440i)) | _wgslsmith_mod_vec4_u32(~var_0.b, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 35291u), u_input.a)), (~vec4<u32>(1u, u_input.c, u_input.b, 0u) & vec4<u32>(31268u, 29913u, u_input.c, var_0.d.x)) | ~vec4<u32>(23185u, 3482u, u_input.c, u_input.a.x)));
    let var_2 = select(!(!(!vec3<bool>(true, var_0.c, true))), select(select(select(vec3<bool>(true, var_0.c, true), select(vec3<bool>(true, var_1.a.c, var_1.a.c), vec3<bool>(var_1.a.c, true, false), var_1.a.c), false), vec3<bool>(var_0.c, var_1.a.c, var_1.a.c), !any(vec4<bool>(true, var_1.a.c, true, false))), vec3<bool>(true, true, true), vec3<bool>(all(!vec2<bool>(var_1.a.c, false)), var_0.c, any(select(vec2<bool>(false, var_0.c), vec2<bool>(var_1.a.c, false), var_0.c)))), var_0.c && var_0.c);
    var var_3 = Struct_2(Struct_1(countOneBits(~vec2<i32>(var_1.d.x, var_1.a.a.x)), var_1.a.b, any(var_2.yy), var_1.a.d >> (((vec4<u32>(0u, 75676u, 7254u, 5788u) ^ var_1.a.d) | var_0.b) % vec4<u32>(32u))), -6796i & var_1.d.x, -1i, -var_1.d, firstTrailingBit(u_input.c));
    global1 = array<vec3<i32>, 20>();
    let var_4 = _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, var_3.a.a.x), 0i), i32(-1i) * -4014i, reverseBits(~33600i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.a, var_0.a), ~var_1.a.a))), ~select((vec4<i32>(var_0.a.x, 2147483647i, var_0.a.x, 28300i) >> (vec4<u32>(34537u, 20693u, 1u, 12016u) % vec4<u32>(32u))) | -vec4<i32>(var_3.b, var_3.b, 1i, var_0.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(-4129i, 4813i, var_0.a.x, 20342i), vec4<i32>(var_1.d.x, -1i, 0i, -37724i), vec4<i32>(var_1.a.a.x, var_3.d.x, var_3.a.a.x, var_0.a.x)) & ~vec4<i32>(27120i, 1i, -28562i, var_1.c), select(vec4<bool>(true, var_3.a.c, var_2.x, var_0.c), vec4<bool>(var_2.x, var_0.c, var_3.a.c, false), vec4<bool>(true, true, var_1.a.c, var_0.c))));
    let var_5 = Struct_2(global0[_wgslsmith_index_u32(~4294967295u << (~firstTrailingBit(~var_1.e) % 32u), 12u)], ~reverseBits(var_0.a.x), ~(~(~var_3.a.a.x)), vec2<i32>(var_3.a.a.x, var_4.x), 52580u);
    var_0 = Struct_1(~var_0.a, firstLeadingBit(_wgslsmith_mod_vec4_u32(max(vec4<u32>(var_3.e, u_input.c, var_0.b.x, var_3.e) >> (var_1.a.b % vec4<u32>(32u)), var_5.a.d), countOneBits(vec4<u32>(var_1.a.d.x, var_3.a.d.x, 10964u, var_0.d.x)) & max(var_5.a.b, var_5.a.b))), all(vec4<bool>(var_3.a.c && any(vec3<bool>(var_5.a.c, false, true)), var_3.a.b.x <= 1u, true, false)), _wgslsmith_add_vec4_u32(select(var_5.a.d, _wgslsmith_add_vec4_u32(vec4<u32>(var_5.e, 37625u, 0u, 21851u), ~var_1.a.d), !(!vec4<bool>(true, true, var_0.c, var_5.a.c))), var_3.a.b));
    var var_6 = -573f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-307f, 1429f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, -1490f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1909f, 1473f) - vec2<f32>(1000f, -1124f))))), vec2<f32>(-266f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(706f, 101f))))))), min(~(-2147483647i), abs(-5430i)));
}

