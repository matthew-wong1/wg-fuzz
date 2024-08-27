struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0 + arg_0), _wgslsmith_f_op_f32(abs(arg_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + arg_0)) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1985f - _wgslsmith_f_op_f32(-arg_0)))), reverseBits(_wgslsmith_mod_i32(-1i, u_input.a)) < -countOneBits(var_0.a)));
    var_0 = arg_1;
    var var_2 = Struct_1(abs(min(-8283i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(31012i, arg_1.a), _wgslsmith_clamp_i32(46298i, var_0.a, 2147483647i)))));
    let var_3 = vec4<bool>(!(~(-20213i) > ~(arg_1.a << (4294967295u % 32u))), all(vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), all(vec2<bool>(true, true)))), firstTrailingBit(14191i) == var_0.a, true);
    return select(var_3.xxy, !(!(!var_3.yxz)), !all(vec4<bool>(true, true, any(var_3.xw), var_3.x)));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> vec3<bool> {
    let var_0 = -u_input.a;
    let var_1 = 9148i;
    var var_2 = vec3<bool>(true, true, true);
    var_2 = select(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.x, !var_2.x, !(arg_1.x | arg_1.x)), all(select(arg_1.yxx, !arg_1.xyy, func_3(arg_2, Struct_1(-11130i))))), select(select(select(arg_1.xww, select(arg_1.ywx, arg_1.xzy, vec3<bool>(true, true, true)), arg_1.yyw), vec3<bool>(var_2.x, true, any(vec4<bool>(arg_1.x, var_2.x, arg_1.x, true))), arg_1.yxx), vec3<bool>(_wgslsmith_f_op_f32(arg_0 + 242f) >= -941f, !var_2.x, !(true || var_2.x)), arg_1.x != true), !(~_wgslsmith_mod_u32(4294967295u, 90613u) != firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 72045u))));
    var_2 = !func_3(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(max(arg_2, -1716f))), arg_1.x)), Struct_1(~u_input.b.x));
    return !(!select(vec3<bool>(true, true, false), select(select(arg_1.zzw, vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, true, true)), vec3<bool>(false, false, true), any(vec3<bool>(true, true, var_2.x))), vec3<bool>(true, -1429f <= arg_0, true)));
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> vec3<bool> {
    return select(!(!select(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, arg_0.b), true), vec3<bool>(arg_0.b, false, arg_0.b), true)), select(select(select(!vec3<bool>(arg_0.b, arg_0.b, true), select(vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_0.b, false, false), true), 12193u > arg_1), func_2(arg_0.a, !vec4<bool>(false, arg_0.b, false, true), _wgslsmith_f_op_f32(-arg_0.a)), func_3(_wgslsmith_div_f32(865f, -842f), arg_0.d)), vec3<bool>(arg_0.b, arg_0.b, true & (4470i > arg_0.d.a)), any(select(func_3(arg_0.a, Struct_1(23284i)).zx, select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b)), arg_0.b))), false);
}

fn func_4(arg_0: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1346f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(253f)), _wgslsmith_f_op_f32(f32(-1f) * -887f), true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(354f, 1881f), -1285f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(676f)), _wgslsmith_f_op_f32(-1528f + -1533f))))), 1u > ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(7567u, 8132u, 84010u, 15216u)), 4294967295u, Struct_1(-2147483647i));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2152f * _wgslsmith_f_op_f32(-var_0.a)))), !(!(!arg_0.x)), select(~(2074u ^ var_0.c) >> (firstLeadingBit(var_0.c) % 32u), var_0.c, all(vec3<bool>(false, true, !var_0.b))), var_0.d);
    var var_1 = var_0.a;
    var var_2 = Struct_1(-2147483647i);
    var var_3 = Struct_1(var_2.a);
    return ~(~vec4<u32>(57840u, reverseBits(~24263u), 17006u, _wgslsmith_mod_u32(var_0.c, var_0.c) << (reverseBits(49283u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), ~firstTrailingBit(~vec4<u32>(1u, 0u, 71u, 0u))), vec4<u32>(1u, 1u, 1u, 1u), ~select(vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, all(vec2<bool>(true, true)), true)));
    var_0 = max(abs(reverseBits(~vec4<u32>(0u, var_0.x, 66621u, 0u) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 27525u)))), func_4(select(!func_1(Struct_2(-1669f, false, var_0.x, Struct_1(0i)), var_0.x), select(vec3<bool>(true, true, true), func_2(-324f, vec4<bool>(false, true, true, false), -497f), vec3<bool>(true, true, true)), true)));
    let var_1 = u_input.b.x;
    var var_2 = select(~select(~u_input.b, ~(-u_input.b), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))), _wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_mult_vec4_i32(reverseBits(u_input.b >> (vec4<u32>(var_0.x, 18742u, 1u, 1u) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(0i), -27727i, 1i, _wgslsmith_mod_i32(-76859i, -9187i)))), !(var_0.x == 10413u));
    let var_3 = firstLeadingBit(firstTrailingBit(min(max(~(-2147483647i), 0i << (var_0.x % 32u)), u_input.a)));
    var var_4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1310f)), 2417f), true, ~var_0.x, Struct_1(max(var_1, -2147483647i)));
    var var_5 = Struct_2(-1316f, func_3(_wgslsmith_f_op_f32(var_4.a + var_4.a), Struct_1(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(0i, -1i, var_2.x, var_3) ^ vec4<i32>(var_2.x, -8152i, 0i, 0i)))).x, var_0.x, var_4.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, 292f, 1012f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.a, var_5.a, -274f))), vec3<f32>(var_5.a, 1f, _wgslsmith_f_op_f32(floor(-1518f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_4.a, var_4.a, 512f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, 264f, var_4.a)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_5.a, -742f, var_5.a))))))), ~22852u, var_2.x);
}

