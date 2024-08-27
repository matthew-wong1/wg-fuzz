struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> vec4<f32> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_3((any(vec3<bool>(true, true, true)) || true) | true, vec4<bool>(!(!any(vec4<bool>(false, false, arg_1.b, arg_1.b))), any(vec3<bool>(arg_2, arg_2, u_input.b < u_input.d)), _wgslsmith_dot_vec2_u32(vec2<u32>(66100u, 4294967295u) | vec2<u32>(84073u, u_input.b), vec2<u32>(36298u, var_0)) < select(1u, var_0 << (u_input.b % 32u), !arg_2), true), Struct_2(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0, 28931u), select(vec3<u32>(var_0, 4431u, u_input.c.x), u_input.a.xyx, vec3<bool>(arg_2, true, arg_1.b))))), select(vec2<bool>(any(select(vec3<bool>(arg_1.b, arg_1.b, arg_1.b), vec3<bool>(arg_1.b, arg_1.b, arg_2), vec3<bool>(arg_1.b, false, true))), select(arg_2, arg_2, true)), select(!(!vec2<bool>(arg_1.b, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, arg_1.b), vec2<bool>(true, arg_1.b), true), !vec2<bool>(arg_1.b, true), any(vec4<bool>(false, arg_2, arg_2, arg_2)))), vec2<bool>(all(!vec4<bool>(arg_2, false, true, true)), any(!vec2<bool>(arg_1.b, true)))));
    var var_2 = Struct_1(~vec2<i32>(1i, -41971i | arg_0) << (u_input.c.yz % vec2<u32>(32u)), 18724i, i32(-1i) * -arg_0, _wgslsmith_f_op_vec3_f32(-arg_1.a.xyx), abs(arg_0));
    var_2 = Struct_1(-vec2<i32>(var_2.e, arg_0), -2147483647i, _wgslsmith_div_i32(abs(_wgslsmith_mult_i32(2147483647i & var_2.a.x, _wgslsmith_clamp_i32(-69555i, var_2.c, -2147483647i))), 23855i), var_2.d, var_2.b);
    var_2 = Struct_1(var_2.a, ~var_2.b, _wgslsmith_div_i32(arg_0, var_2.a.x >> (reverseBits(1u) % 32u)), vec3<f32>(var_2.d.x, var_2.d.x, var_2.d.x), var_2.e);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-620f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_2.d.x)), _wgslsmith_f_op_f32(trunc(-2367f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1235f, _wgslsmith_f_op_f32(-var_2.d.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1016f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(-408f)), var_2.d.x, _wgslsmith_f_op_f32(round(1181f)), 398f));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = -16689i;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(421f, -491f, -466f, 1000f), vec4<f32>(-1877f, 1311f, -268f, 883f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, -473f, -670f, 1009f))), _wgslsmith_f_op_vec4_f32(func_3(~1i, Struct_4(vec4<f32>(698f, -988f, -224f, -507f), false), true)))) * vec4<f32>(_wgslsmith_f_op_f32(-1234f - _wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_f32(-811f + _wgslsmith_f_op_f32(-1000f - 473f)), _wgslsmith_div_f32(1175f, -2274f), _wgslsmith_f_op_f32(ceil(-1000f)))), arg_0);
    var_0 = 1i;
    var var_2 = Struct_2(~(~(~(vec3<u32>(99510u, u_input.d, 4294967295u) | u_input.a.xyz))));
    var_2 = Struct_2(vec3<u32>(max(var_2.a.x, firstLeadingBit(var_2.a.x)), var_2.a.x, reverseBits(~37704u)) & _wgslsmith_div_vec3_u32(countOneBits(~vec3<u32>(u_input.c.x, 1u, 82057u)), vec3<u32>(4294967295u, max(0u, u_input.d), u_input.a.x)));
    return _wgslsmith_f_op_f32(round(var_1.a.x));
}

fn func_1() -> Struct_4 {
    var var_0 = abs(vec3<u32>(53553u, 28201u, ~4294967295u));
    var var_1 = 463f;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-622f - 129f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))))), _wgslsmith_f_op_f32(func_2(any(vec3<bool>(true, true, true)))));
    var var_3 = Struct_3(select(!select(true, false, false) & true, !(false != (1u == u_input.d)), any(!select(vec2<bool>(true, false), vec2<bool>(false, false), false))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, any(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, false, true)), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false)), Struct_2(~vec3<u32>(~72226u, countOneBits(u_input.d), abs(59257u))), select(vec2<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(abs(-229f)) < var_2), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), vec2<bool>(all(vec2<bool>(true, true)), 4294967295u == u_input.d)), false));
    var_1 = _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(0i, Struct_4(vec4<f32>(var_2, 659f, var_2, -926f), true), true)).x * var_2))));
    return Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 915f, 719f, -705f))))))), !var_3.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~(select(u_input.c.xx, _wgslsmith_mult_vec2_u32(u_input.c.yx, ~u_input.a.wy), !var_0.b) | _wgslsmith_sub_vec2_u32(~u_input.a.wx, u_input.c.yz));
    var var_2 = _wgslsmith_f_op_f32(-func_1().a.x);
    let var_3 = select(vec2<i32>(_wgslsmith_sub_i32(firstLeadingBit(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(2802i, 0i), vec2<i32>(8370i, -2147483647i))), firstTrailingBit(firstLeadingBit(-1i))), reverseBits(vec2<i32>(_wgslsmith_mult_i32(-1i, -35447i), firstLeadingBit(2147483647i))), select(var_0.b, true, !(var_0.b == true))) >> (~(~select(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_1.x), vec2<u32>(23002u, 32000u)), var_1, var_0.b)) % vec2<u32>(32u));
    var var_4 = vec3<f32>(478f, var_0.a.x, var_0.a.x);
    let var_5 = Struct_2(u_input.c);
    let var_6 = Struct_1(~vec2<i32>(var_3.x, -52966i), -(~(-1i)), 1i, _wgslsmith_f_op_vec3_f32(trunc(var_0.a.ywx)), 1i);
    var var_7 = func_1();
    var var_8 = min(select(vec4<i32>(-var_6.c | 1i, 1i, var_6.b ^ _wgslsmith_add_i32(var_3.x, var_3.x), var_6.a.x), select(vec4<i32>(21155i, var_6.e, 34427i, var_3.x), -vec4<i32>(-2147483647i, var_6.a.x, var_3.x, -2147483647i), !var_0.b) | select(~vec4<i32>(var_3.x, var_3.x, 49618i, -12401i), abs(vec4<i32>(49269i, var_6.b, var_3.x, var_6.e)), !vec4<bool>(var_7.b, true, true, true)), vec4<bool>(all(!vec3<bool>(var_7.b, true, false)), var_7.b, !var_0.b, var_7.b || select(true, false, false))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_3.x, -49598i, -1i), vec3<i32>(21657i, 2147483647i, -2147483647i), vec3<bool>(false, var_0.b, true)), -vec3<i32>(var_6.a.x, 43239i, var_3.x)), 30550i, (var_6.a.x << (4294967295u % 32u)) << ((var_1.x << (var_5.a.x % 32u)) % 32u), var_6.e), select(firstTrailingBit(vec4<i32>(2147483647i, var_6.b, var_6.a.x, var_3.x) | vec4<i32>(var_3.x, -2147483647i, -48967i, var_3.x)), ~vec4<i32>(12224i, var_3.x, var_3.x, 11848i), var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(12935u, ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 1u, 88293u, var_5.a.x) << (u_input.a % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_5.a.x, 69158u, 8783u, u_input.c.x), u_input.a, vec4<u32>(0u, 16551u, var_1.x, u_input.d)))), _wgslsmith_sub_u32(78494u, 0u), _wgslsmith_dot_vec3_i32(var_8.yzw, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(var_8.wzy, var_8.wyx), -vec3<i32>(var_6.e, var_8.x, 12222i), vec3<i32>(var_6.e, var_3.x, var_8.x)), abs(firstTrailingBit(var_8.zzx)))));
}

