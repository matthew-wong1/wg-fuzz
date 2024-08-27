struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(-1i, 24006i, -13508i), true, 1542f, vec2<bool>(true, false)), Struct_1(vec3<i32>(-1i, 1i, -1i), true, 1092f, vec2<bool>(false, true)), Struct_1(vec3<i32>(-42853i, 4486i, 1i), false, -1346f, vec2<bool>(false, true)), Struct_1(vec3<i32>(0i, -32771i, 50194i), true, -2579f, vec2<bool>(true, true)), Struct_1(vec3<i32>(41437i, 2147483647i, 44102i), false, -565f, vec2<bool>(false, false)), Struct_1(vec3<i32>(1i, 1i, -1i), false, -896f, vec2<bool>(false, false)), Struct_1(vec3<i32>(1i, -7673i, -1i), false, -1786f, vec2<bool>(true, false)), Struct_1(vec3<i32>(19781i, 2147483647i, -17364i), true, 219f, vec2<bool>(false, true)), Struct_1(vec3<i32>(19070i, 1i, 5646i), true, -265f, vec2<bool>(false, false)), Struct_1(vec3<i32>(97977i, -2292i, -1i), true, -1192f, vec2<bool>(false, true)));

var<private> global1: i32;

var<private> global2: array<vec2<i32>, 1> = array<vec2<i32>, 1>(vec2<i32>(0i, 1i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    var var_0 = vec4<bool>(select(true, all(vec3<bool>(true, true, true)), _wgslsmith_add_u32(_wgslsmith_clamp_u32(34616u, 1u, u_input.a), 1u) > (abs(u_input.a) ^ u_input.b.x)), false, !(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))) & any(vec4<bool>(false, true, false, true))), any(vec4<bool>(true, all(vec3<bool>(true, true, true)), !all(vec4<bool>(true, false, false, false)), true)));
    global2 = array<vec2<i32>, 1>();
    var var_1 = u_input.d;
    var var_2 = var_0.yxx;
    global1 = _wgslsmith_sub_i32(-1i, firstTrailingBit(max(4723i, -1i))) & -17038i;
    return true;
}

fn func_2() -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(706f, 541f), _wgslsmith_f_op_f32(1622f + -601f), u_input.d.x >= -1i)))), !vec3<bool>(true, false, func_3()), _wgslsmith_div_i32(~(~u_input.d.x), _wgslsmith_div_i32(~(-2147483647i), u_input.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1040f, _wgslsmith_f_op_f32(f32(-1f) * -243f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1249f, 318f)) * _wgslsmith_f_op_f32(340f - -561f))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(282f, 604f, -1918f), vec3<f32>(1000f, -343f, -731f))), vec3<f32>(-967f, -1107f, 912f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: i32, arg_3: u32) -> Struct_4 {
    let var_0 = arg_0.d.yz;
    global1 = 1i;
    let var_1 = global0[_wgslsmith_index_u32(0u & arg_3, 10u)];
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(4294967295u, 10u)], ~4294967295u, global0[_wgslsmith_index_u32(min(58719u, arg_3), 10u)], Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0.c, 2147483647i, -1i), var_1.a), select(!(1u > arg_3), arg_1.x, true && all(vec4<bool>(var_1.b, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1054f)) - _wgslsmith_f_op_f32(148f * 1122f)), !(!var_1.d)));
    global2 = array<vec2<i32>, 1>();
    return func_2();
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = (arg_1.b.x || true) | false;
    var var_1 = arg_1.a;
    let var_2 = Struct_1(vec3<i32>(~(-select(49779i, arg_1.c, false)), firstLeadingBit(func_2().c), _wgslsmith_div_i32(countOneBits(5599i), func_4(Struct_4(arg_1.a, vec3<bool>(var_0, arg_1.b.x, arg_1.b.x), -8208i, arg_0.yww), vec3<bool>(true, true, true), _wgslsmith_div_i32(u_input.d.x, 22890i), u_input.c).c)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_1.d.x * -1000f)) - 668f)), !vec2<bool>(!(!var_0), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(sign(223f))));
    var_1 = var_2.c;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -619f), -873f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-199f * arg_1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + _wgslsmith_div_f32(var_2.c, arg_1.a)))), _wgslsmith_f_op_f32(min(-1728f, arg_1.a)), 557f);
    return Struct_2(global0[_wgslsmith_index_u32(~4294967295u, 10u)], _wgslsmith_sub_u32(1u, ~u_input.b.x), var_2, var_2);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_3(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_1.d.c, 306f, 540f), vec4<f32>(149f, 1550f, 1000f, arg_1.a.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-607f, 2223f, -1414f, -1128f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2117f, 2016f, arg_1.d.c, arg_1.d.c)))), func_4(func_2(), !vec3<bool>(arg_0, arg_1.a.d.x, false), abs(firstTrailingBit(-1i)), select(select(arg_1.b, arg_1.b, false), arg_1.b, true))), global0[_wgslsmith_index_u32(1u, 10u)], arg_1.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.c.c)))), -279f)));
    var_1 = Struct_3(var_1.a, func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(138f, 744f, 1547f, -1033f) + vec4<f32>(-464f, var_2, arg_1.d.c, 1353f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a.c, 518f, arg_1.d.c, var_2), vec4<f32>(arg_1.c.c, -503f, -110f, arg_1.a.c)))), vec4<f32>(418f, _wgslsmith_f_op_f32(ceil(arg_1.c.c)), 1000f, _wgslsmith_f_op_f32(-var_2)), !arg_0)), func_2()).c, Struct_1(~arg_1.d.a, true || func_4(func_4(Struct_4(1660f, vec3<bool>(false, var_1.a.c.b, var_1.a.c.b), arg_2.x, vec3<f32>(-1035f, arg_1.c.c, -2186f)), vec3<bool>(false, true, arg_0), -1i, 12724u), func_4(Struct_4(var_2, vec3<bool>(false, var_1.a.a.d.x, true), 1433i, vec3<f32>(-527f, var_2, -1013f)), vec3<bool>(var_0, arg_0, arg_0), arg_1.d.a.x, arg_1.b).b, var_1.a.a.a.x, 1u).b.x, -648f, !func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, 1107f, -2096f, var_1.c.c)), func_2()).c.d));
    global0 = array<Struct_1, 10>();
    return Struct_1(vec3<i32>(11920i, arg_2.x, _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.d.x, var_1.b.a.x, arg_2.x) | var_1.a.d.a), var_1.a.d.a)), false, 428f, !(!vec2<bool>(true, -2051f <= var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(reverseBits(-_wgslsmith_mod_vec4_i32(~u_input.d, ~u_input.d)), Struct_2(func_1(false, Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 10u)], 0u, global0[_wgslsmith_index_u32(~u_input.b.x, 10u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.b.x), 10u)]), u_input.d.yy), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, abs(49636u)), _wgslsmith_dot_vec3_u32(u_input.b.wxx, ~u_input.b.zwz)), func_1(true, func_5(vec4<f32>(973f, -263f, -855f, 866f), func_2()), vec2<i32>(~1i, u_input.d.x)), Struct_1(vec3<i32>(-66392i, -62592i, 64687i >> (u_input.b.x % 32u)), func_4(Struct_4(-261f, vec3<bool>(true, true, true), u_input.d.x, vec3<f32>(-1410f, 429f, 511f)), vec3<bool>(true, false, false), u_input.d.x & 0i, ~0u).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1367f), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(-361f, _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.yz)), _wgslsmith_clamp_u32(13474u, u_input.a << (u_input.a % 32u), _wgslsmith_mult_u32(var_0.b.b, 51616u)))));
}

