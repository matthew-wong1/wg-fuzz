struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    global0 = _wgslsmith_mult_i32(~_wgslsmith_div_i32(-420i, -20991i), ~arg_0.a);
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(arg_0.c.a, arg_0.c.a, 2147483647i) >> (u_input.c.xxw % vec3<u32>(32u))), vec3<i32>(2147483647i, -2147483647i, arg_0.a)), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.c.a, -1i), vec3<i32>(15165i, 1i, -4139i)) ^ arg_0.d.a, 1i, _wgslsmith_div_i32(-1i, i32(-1i) * -11204i)));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.d * arg_0.e.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.c.x)) - -1333f), arg_2.c.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.d, arg_0.e.d, -531f, 538f) - vec4<f32>(arg_0.e.d, arg_0.e.d, -650f, arg_0.e.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, arg_2.c.x, arg_0.e.c.x, -2430f))), true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, 560f, -799f, -172f) + _wgslsmith_div_vec4_f32(vec4<f32>(-564f, arg_0.e.d, -332f, arg_0.e.c.x), vec4<f32>(621f, arg_2.d, arg_2.d, arg_2.d))))))));
    let var_2 = select(vec3<i32>(22801i, max(~min(8964i, var_0.x), ~(-2147483647i)), -1i), vec3<i32>(select(_wgslsmith_sub_i32(_wgslsmith_div_i32(arg_0.a, 0i), -arg_0.b.x), var_0.x, false), ~min(countOneBits(38626i), _wgslsmith_mult_i32(30153i, var_0.x)), -(i32(-1i) * -1i)), !(!select(vec3<bool>(false, arg_0.e.b, false), !vec3<bool>(arg_2.b, true, arg_0.e.b), 2147483647i >= arg_0.c.a)));
    global0 = 2147483647i | ((_wgslsmith_dot_vec4_i32(-vec4<i32>(var_2.x, 0i, arg_0.d.a, -2147483647i), vec4<i32>(var_2.x, var_2.x, 0i, var_0.x) << (vec4<u32>(u_input.a.x, 48993u, arg_0.e.e, arg_1) % vec4<u32>(32u))) << (arg_1 % 32u)) >> (arg_1 % 32u));
    return u_input.c;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_vec4_u32(countOneBits(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 1u, 18429u, 1u), vec4<u32>(arg_0.e.e, 0u, u_input.c.x, u_input.a.x) >> (u_input.c % vec4<u32>(32u)))), firstLeadingBit(func_3(arg_0, 1u, Struct_1(-1851f < arg_0.e.c.x, !arg_0.e.b, vec3<f32>(arg_0.e.c.x, arg_0.e.d, 903f), -380f, firstLeadingBit(u_input.b.x)))));
    var var_1 = arg_0.e;
    var_0 = u_input.c;
    let var_2 = vec4<bool>(var_1.b, any(select(select(!vec2<bool>(true, var_1.b), !vec2<bool>(arg_0.e.b, true), select(vec2<bool>(var_1.b, arg_0.e.a), vec2<bool>(false, false), arg_0.e.a)), select(select(vec2<bool>(var_1.a, arg_0.e.a), vec2<bool>(var_1.b, true), vec2<bool>(true, arg_0.e.b)), vec2<bool>(true, arg_0.e.a), !vec2<bool>(true, arg_0.e.b)), vec2<bool>(true, any(vec3<bool>(arg_0.e.b, true, false))))), !select(var_1.b, var_1.b, true), arg_0.e.b);
    var var_3 = select(var_2.yxx, vec3<bool>(true, any(select(vec2<bool>(true, var_2.x), vec2<bool>(false, true), select(var_2.wz, vec2<bool>(false, true), var_2.xx))), var_2.x), !(!any(vec3<bool>(true, var_1.b, arg_0.e.a))));
    return vec4<bool>(false, _wgslsmith_mult_u32(select(var_1.e, ~arg_0.e.e, false), ~0u) == ~arg_0.e.e, false, select(any(select(var_2, select(vec4<bool>(arg_0.e.a, false, arg_0.e.b, true), var_2, vec4<bool>(false, true, var_2.x, false)), arg_0.e.b)), min(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), countOneBits(0u)) == abs(~25230u), !(var_1.c.x < _wgslsmith_f_op_f32(f32(-1f) * -839f))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = !select(!func_2(Struct_3(arg_1.c.a, vec2<i32>(-25200i, -2147483647i), Struct_2(arg_1.d.a), arg_1.c, Struct_1(arg_0.b, arg_1.e.a, vec3<f32>(-767f, 612f, 815f), 2204f, u_input.a.x)), _wgslsmith_mod_i32(arg_1.d.a, arg_1.a), Struct_2(2147483647i)), func_2(Struct_3(_wgslsmith_sub_i32(16504i, -24283i), _wgslsmith_mod_vec2_i32(arg_1.b, vec2<i32>(arg_1.d.a, 30869i)), Struct_2(-14916i), arg_1.c, Struct_1(false, false, vec3<f32>(arg_0.d, arg_1.e.d, 1000f), -260f, 0u)), arg_1.d.a, arg_1.c), !(!(!vec4<bool>(arg_1.e.b, arg_1.e.a, false, arg_1.e.b))));
    let var_1 = u_input.c.zxz;
    let var_2 = arg_0.d;
    let var_3 = arg_1.e.e;
    global0 = select(firstTrailingBit(-1i), -reverseBits(-1687i), (arg_1.d.a << (((56361u << (1u % 32u)) ^ (arg_0.e ^ arg_1.e.e)) % 32u)) < -1i);
    return arg_1.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    global0 = -2147483647i;
    global0 = arg_0.a;
    let var_0 = func_1(Struct_1(false, all(vec4<bool>(true, true, false, func_2(Struct_3(2147483647i, vec2<i32>(-1i, -5559i), arg_3, Struct_2(-1i), Struct_1(true, false, vec3<f32>(arg_2.x, arg_2.x, arg_2.x), -137f, 0u)), arg_0.a, Struct_2(arg_3.a)).x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f + 797f) * _wgslsmith_f_op_f32(select(956f, 821f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f)), -837f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * -1232f), 24174u), Struct_3(_wgslsmith_clamp_i32(arg_1.a, arg_3.a, _wgslsmith_mod_i32(arg_1.a, 0i)), _wgslsmith_add_vec2_i32(~vec2<i32>(48360i, arg_0.a), vec2<i32>(0i, 51622i) << (u_input.c.zy % vec2<u32>(32u))) | (vec2<i32>(-1i) * -vec2<i32>(1i, -48960i)), func_1(Struct_1(false, false, vec3<f32>(1198f, arg_2.x, 287f), _wgslsmith_f_op_f32(-arg_2.x), 1u), Struct_3(arg_1.a, min(vec2<i32>(arg_1.a, arg_3.a), vec2<i32>(arg_0.a, 0i)), Struct_2(arg_1.a), func_1(Struct_1(true, false, vec3<f32>(-658f, arg_2.x, 325f), 195f, u_input.a.x), Struct_3(2147483647i, vec2<i32>(arg_1.a, arg_1.a), Struct_2(-15725i), Struct_2(1i), Struct_1(true, false, vec3<f32>(arg_2.x, arg_2.x, -1000f), arg_2.x, u_input.c.x))), Struct_1(false, true, vec3<f32>(1000f, arg_2.x, 1000f), arg_2.x, 4294967295u))), arg_3, Struct_1(true, !any(vec3<bool>(false, true, true)), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, 68337u)));
    global0 = arg_3.a;
    global0 = -2147483647i;
    return any(select(!vec2<bool>(select(false, true, true), true), select(func_2(Struct_3(20736i, vec2<i32>(var_0.a, -2687i), var_0, arg_3, Struct_1(true, true, vec3<f32>(-1343f, arg_2.x, arg_2.x), arg_2.x, u_input.a.x)), _wgslsmith_clamp_i32(arg_3.a, -2147483647i, 2147483647i), Struct_2(2147483647i)).yz, func_2(Struct_3(-11992i, vec2<i32>(-2147483647i, -1i), Struct_2(arg_0.a), arg_0, Struct_1(true, true, vec3<f32>(arg_2.x, arg_2.x, arg_2.x), arg_2.x, 0u)), arg_0.a, var_0).zx, vec2<bool>(true, true)), vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -36839i;
    global0 = 0i;
    global0 = select(0i, -3124i, !func_4(Struct_2(-28159i), Struct_2(1i), _wgslsmith_f_op_vec2_f32(vec2<f32>(934f, -862f) - vec2<f32>(1105f, 1619f)), func_1(Struct_1(false, true, vec3<f32>(-892f, -214f, 1000f), 611f, u_input.b.x), Struct_3(-2147483647i, vec2<i32>(1i, -47971i), Struct_2(2147483647i), Struct_2(54230i), Struct_1(true, false, vec3<f32>(509f, -1000f, -475f), -2331f, 0u))))) << (u_input.c.x % 32u);
    let var_0 = ~u_input.c.x;
    global0 = i32(-1i) * -75620i;
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1795f))))))));
    var var_2 = vec2<u32>(u_input.a.x, abs(~min(104039u, 24520u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.b.x, ~1u), -21390i, -(~1i), var_0);
}

