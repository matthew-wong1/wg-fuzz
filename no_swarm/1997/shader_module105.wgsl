struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24>;

var<private> global1: array<u32, 14> = array<u32, 14>(1258u, 34003u, 36641u, 64522u, 1u, 56762u, 4294967295u, 26114u, 0u, 0u, 71787u, 0u, 4294967295u, 11178u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = vec4<u32>(select(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.b.xy, u_input.b.zx), ~(~u_input.b.x)), 24863u, abs(~u_input.b.x) >= global1[_wgslsmith_index_u32(u_input.b.x & 4294967295u, 14u)]), abs(u_input.b.x) & u_input.b.x, 1u, _wgslsmith_div_u32(58227u, 37069u));
    var var_1 = var_0.x & firstTrailingBit(~(~1u & u_input.b.x));
    var var_2 = arg_0.b.a.xz;
    var_2 = vec2<bool>(!var_2.x | arg_0.b.b, var_2.x);
    let var_3 = _wgslsmith_f_op_f32(round(arg_0.c.c.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.x, _wgslsmith_div_f32(var_3, _wgslsmith_div_f32(arg_0.a.c.x, arg_0.b.c.x)), var_3, arg_0.c.c.x) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(855f, arg_0.a.c.x, var_3, arg_0.b.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.c.x, var_3, 1000f, arg_0.c.c.x) * vec4<f32>(1164f, arg_0.a.c.x, arg_0.c.c.x, arg_0.a.c.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.c.x, -633f, -515f, -100f), vec4<f32>(-440f, var_3, 1000f, 1379f))), vec4<bool>(true, select(arg_0.a.b, false, arg_0.a.b), var_2.x, any(vec4<bool>(var_2.x, arg_0.c.a.x, true, arg_0.a.b)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1266f, var_3, var_3, -643f) * vec4<f32>(var_3, arg_0.b.c.x, var_3, -641f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c.x, 445f, var_3, -850f) + vec4<f32>(-344f, var_3, 827f, 256f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, var_3, -1351f, arg_0.c.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c.c.x, -1000f, -272f, 654f), vec4<f32>(-776f, arg_0.c.c.x, -2275f, -2284f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3, arg_0.a.c.x, var_3, var_3), vec4<f32>(1676f, var_3, -708f, 1000f)))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<u32>) -> vec2<f32> {
    var var_0 = arg_0;
    global1 = array<u32, 14>();
    let var_1 = arg_0.a.x;
    let var_2 = Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), vec3<bool>(!any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true)), true)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-712f + _wgslsmith_f_op_f32(f32(-1f) * -300f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2025f, arg_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x - arg_1.b)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.b.x - -948f))))));
    global1 = array<u32, 14>();
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-arg_1.a.yx), var_0.b));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<vec2<bool>, 24>();
    global1 = array<u32, 14>();
    let var_0 = 850f;
    let var_1 = Struct_4(vec3<i32>(i32(-1i) * -arg_0.x, u_input.e << ((global1[_wgslsmith_index_u32(u_input.b.x, 14u)] & global1[_wgslsmith_index_u32(0u, 14u)]) % 32u), arg_0.x) >> (~u_input.b.xzz % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(~vec3<i32>(arg_0.x, 11132i, arg_0.x), _wgslsmith_f_op_vec2_f32(select(arg_1.c.zz, arg_1.c.xz, arg_1.a.yy)), u_input.b.x), Struct_3(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(arg_1.a, arg_1.b, arg_1.c), arg_1, arg_1))), _wgslsmith_f_op_f32(round(arg_1.c.x)), -2104i, vec3<i32>(arg_0.x, 0i, 15262i) << (vec3<u32>(u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 14u)], 4294967295u) % vec3<u32>(32u)), ~0u), vec3<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 13619u), u_input.b.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(725f, _wgslsmith_f_op_f32(ceil(arg_1.c.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-743f, arg_1.c.x) - arg_1.c.xx))), reverseBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(1474u, 23823u, 14050u, u_input.b.x), abs(u_input.b)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 32210u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(3976u, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 14u)], 14u)], u_input.b.x), u_input.b, u_input.b) % vec4<u32>(32u)))));
    let var_2 = Struct_1(vec3<bool>(arg_1.b != arg_1.a.x, all(select(arg_1.a.zx, !arg_1.a.yy, select(vec2<bool>(arg_1.a.x, arg_1.b), global0[_wgslsmith_index_u32(1917u, 24u)], arg_1.a.x))), arg_1.a.x), !arg_1.a.x, _wgslsmith_f_op_vec3_f32(floor(arg_1.c)));
    return min(~vec4<u32>(global1[_wgslsmith_index_u32(~abs(44953u), 14u)], 5662u, _wgslsmith_mod_u32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), 6774u), 4294967295u), u_input.b);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global0 = array<vec2<bool>, 24>();
    let var_0 = Struct_2(arg_1, Struct_1(vec3<bool>(arg_1.b && true, all(vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x)), true), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -147f), _wgslsmith_f_op_f32(arg_1.c.x * 291f), -338f))), Struct_1(arg_1.a, ~u_input.b.x == abs(global1[_wgslsmith_index_u32(78067u, 14u)] >> (38897u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), 1040f, arg_1.c.x)));
    global0 = array<vec2<bool>, 24>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * _wgslsmith_f_op_f32(step(arg_0.b.x, var_0.b.c.x))), 540f, 477f)), _wgslsmith_f_op_f32(-arg_0.b.x), -(~(_wgslsmith_sub_i32(0i, 1i) | (u_input.d | arg_0.a.x))), abs(vec3<i32>(arg_0.a.x, -(-1i | u_input.a), 2147483647i)), func_2(max(vec2<i32>(arg_0.a.x >> (arg_2.x % 32u), ~u_input.a), select(vec2<i32>(-2147483647i, arg_0.a.x), vec2<i32>(25113i, 66748i), vec2<bool>(true, true))), Struct_1(!(!vec3<bool>(arg_1.a.x, var_0.c.b, arg_1.a.x)), all(select(vec4<bool>(true, false, arg_1.a.x, false), vec4<bool>(var_0.b.a.x, var_0.b.a.x, true, false), var_0.c.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_1.c))))).x);
    var var_2 = 2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.c.x, 268f))) * -419f));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.d, -1i), vec3<i32>(arg_0.x, u_input.d, arg_0.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1540f, -551f), vec2<f32>(1000f, 617f))), 1u), Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), any(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 14u)], 24u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(361f, -766f, -1000f), vec3<f32>(882f, 674f, 1428f)))), func_2(~arg_0, Struct_1(vec3<bool>(false, true, true), false, vec3<f32>(302f, -879f, -1783f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1466f, 1032f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-354f - -662f), _wgslsmith_f_op_f32(f32(-1f) * -342f))))))));
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(func_2(vec2<i32>(~arg_0.x, -9782i), Struct_1(vec3<bool>(true, true, true), true, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(876f, var_0, var_0))))).xy, vec2<u32>(1u, 19438u)), _wgslsmith_add_vec2_u32(~vec2<u32>(~u_input.b.x, ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38984u, 14u)], 14u)]), u_input.b.zx));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 24u)];
    global0 = array<vec2<bool>, 24>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, var_0, 283f, -253f)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, 2592f, 662f), vec4<f32>(-1635f, 253f, 1087f, var_0))), vec4<f32>(-190f, _wgslsmith_div_f32(-1000f, 521f), _wgslsmith_f_op_f32(ceil(-562f)), _wgslsmith_f_op_f32(-var_0)), arg_0.x == u_input.c)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0, var_0, var_0) * vec4<f32>(356f, 1456f, 1180f, 460f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0, 780f, -1377f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1264f, -119f, var_0, -279f) - vec4<f32>(var_0, var_0, var_0, var_0))))), var_0, firstTrailingBit(31997i), vec3<i32>(arg_0.x, -43140i, abs(1i)) >> (_wgslsmith_div_vec3_u32(u_input.b.wwz, u_input.b.yxz >> (countOneBits(u_input.b.zzz) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.b.x);
    return Struct_1(vec3<bool>(any(select(global0[_wgslsmith_index_u32(59086u >> (0u % 32u), 24u)], vec2<bool>(false, var_2.x), global0[_wgslsmith_index_u32(firstTrailingBit(0u), 24u)])), var_2.x, true), !(!var_2.x), var_3.a.wxz);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> f32 {
    var var_0 = reverseBits(vec2<i32>(u_input.e, min(_wgslsmith_clamp_i32(reverseBits(-2147483647i), ~14879i, -u_input.c), -2147483647i)));
    var_0 = vec2<i32>(-1i, 0i);
    global1 = array<u32, 14>();
    global0 = array<vec2<bool>, 24>();
    var var_1 = arg_0.a.xy;
    return -324f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~abs((vec3<i32>(u_input.d, u_input.d, 0i) & vec3<i32>(u_input.e, 1i, u_input.d)) << (reverseBits(vec3<u32>(global1[_wgslsmith_index_u32(12336u, 14u)], 1u, 17630u)) % vec3<u32>(32u))));
    global1 = array<u32, 14>();
    global1 = array<u32, 14>();
    var var_1 = abs(-17125i);
    var_1 = _wgslsmith_mult_i32(var_0.x, 2147483647i);
    global0 = array<vec2<bool>, 24>();
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(527f, -446f, -241f, _wgslsmith_f_op_f32(-886f - _wgslsmith_f_op_f32(f32(-1f) * -1236f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_6(func_1(var_0.xx), Struct_3(vec4<f32>(1000f, 1295f, 1484f, 837f), 1112f, 0i, var_0, global1[_wgslsmith_index_u32(37261u, 14u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-298f, -1061f, 704f, -2137f))))), -1037f, func_1(_wgslsmith_add_vec2_i32(var_0.xx, var_0.zy)).c.x, -569f) - vec4<f32>(1f, 1057f, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec3<bool>(false, false, true), true, vec3<f32>(-152f, 1000f, 2275f)), Struct_1(vec3<bool>(true, false, true), true, vec3<f32>(1392f, -198f, 371f)), Struct_1(vec3<bool>(false, false, false), true, vec3<f32>(-983f, -781f, 848f))))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-855f)) + _wgslsmith_f_op_f32(-101f * -1052f)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)), vec4<f32>(var_2.x, var_2.x, 497f, -517f), all(vec3<bool>(false, false, false)))) + _wgslsmith_div_vec4_f32(vec4<f32>(260f, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, 1228f, -630f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -295f, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, var_2.x, 223f, var_2.x))))))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-189f, -342f)) * _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(select(var_2.x, -128f, false))))), 945i, vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(min(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, -3643i, 22131i, u_input.a)), vec4<i32>(u_input.a, u_input.a, var_0.x, var_0.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.e, 1i), vec4<i32>(u_input.c, u_input.d, 1i, 13036i)) ^ select(vec4<i32>(u_input.a, var_0.x, 44459i, 0i), vec4<i32>(u_input.c, -1i, -14446i, var_0.x), false)), -abs(-var_0.x), countOneBits(min(11574i, _wgslsmith_add_i32(2147483647i, -15545i)))), func_2(var_0.xx, func_1(_wgslsmith_mod_vec2_i32(var_0.zy, ~var_0.zz))).x);
    var var_4 = Struct_4(countOneBits(-_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(var_0, var_0), ~var_3.d)), var_3.a.yz, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, abs(firstLeadingBit(~0u)), countOneBits(-44192i));
}

