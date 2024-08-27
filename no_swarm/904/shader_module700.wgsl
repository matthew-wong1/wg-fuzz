struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>) -> f32 {
    global0 = select(!vec4<bool>(all(vec3<bool>(false, false, false)), any(global0.zx), arg_0.a < -1775f, false), vec4<bool>(arg_0.c, arg_0.a <= -617f, true, true), select(vec4<bool>(arg_0.c, true, any(select(global0.yy, global0.yy, global0.yz)), global0.x), select(!select(vec4<bool>(global0.x, false, global0.x, arg_0.c), vec4<bool>(arg_0.c, true, false, global0.x), arg_0.c), vec4<bool>(global0.x & global0.x, arg_0.c, true, arg_0.c), vec4<bool>(u_input.a.x > 36365u, true, arg_0.c, global0.x)), select(vec4<bool>(!global0.x, false, u_input.a.x < 25324u, true), !select(vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), vec4<bool>(true, global0.x, global0.x, arg_0.c), global0.x), vec4<bool>(true, true, true, true))));
    let var_0 = arg_1.x;
    global0 = select(!select(!(!vec4<bool>(false, false, true, arg_0.c)), !vec4<bool>(false, false, arg_0.c, true), !global0.x), !select(vec4<bool>(global0.x, global0.x, global0.x, arg_0.c), vec4<bool>(true, any(global0.wwx), true, !global0.x), !(!arg_0.c)), select(select(!(!vec4<bool>(false, arg_0.c, true, global0.x)), vec4<bool>(arg_0.c, true, true, all(vec4<bool>(true, false, false, global0.x))), all(vec3<bool>(global0.x, false, global0.x)) | any(vec4<bool>(arg_0.c, arg_0.c, global0.x, false))), vec4<bool>(var_0 > (-1i ^ var_0), arg_0.a >= -180f, global0.x, arg_0.c), false));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-1052f + -1326f)))) + arg_0.a), Struct_2(~abs(max(u_input.d, arg_1.yx))), u_input.a, u_input.a ^ ~(~(u_input.a >> (vec2<u32>(arg_0.d, arg_0.b) % vec2<u32>(32u)))));
    global0 = select(select(!vec4<bool>(global0.x, false, any(vec4<bool>(true, true, arg_0.c, global0.x)), all(vec2<bool>(false, arg_0.c))), select(vec4<bool>(true, global0.x, true, global0.x), !select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, global0.x, false, global0.x), arg_0.c), any(vec3<bool>(arg_0.c, arg_0.c, arg_0.c)) & false), vec4<bool>(arg_0.c, false, arg_0.c, global0.x)), !vec4<bool>(_wgslsmith_div_i32(69724i, arg_1.x) > (u_input.b.x ^ -1i), all(vec4<bool>(arg_0.c, global0.x, global0.x, true)), (u_input.a.x > var_1.d.x) == false, global0.x), !(!select(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(arg_0.c, arg_0.c, global0.x, false), true), vec4<bool>(arg_0.c, true, global0.x, true), select(vec4<bool>(false, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, false), arg_0.c))));
    return _wgslsmith_f_op_f32(-2009f + _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1801f + 656f) + _wgslsmith_f_op_f32(exp2(arg_0.a))))));
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1422f, 815f, arg_1.a, -915f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.a, -660f, arg_1.a, 2140f), vec4<f32>(arg_1.a, -1172f, 1000f, arg_1.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, 382f, arg_1.a, 1633f) + vec4<f32>(arg_1.a, -569f, 539f, arg_1.a))), select(select(vec4<bool>(global0.x, true, false, arg_1.c), vec4<bool>(global0.x, global0.x, true, false), global0.x), !vec4<bool>(false, arg_1.c, global0.x, global0.x), select(vec4<bool>(arg_1.c, false, arg_1.c, global0.x), vec4<bool>(global0.x, global0.x, true, false), false)))) * vec4<f32>(-2786f, 1090f, _wgslsmith_f_op_f32(func_3(arg_1, vec4<i32>(0i, 36611i, 30560i, 3015i) ^ vec4<i32>(-58947i, -48998i, -1i, u_input.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(388f)), _wgslsmith_f_op_f32(select(-613f, -373f, global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.a - arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1380f, arg_1.a)) + arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-364f * arg_1.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.a * arg_1.a))))));
    var var_1 = vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1372f, -305f, false))) + 168f) - var_0.x), 449f);
    var_1 = var_0.yxw;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(arg_1.a - -465f))));
    var var_3 = Struct_1(select(vec2<i32>(arg_0, 0i), vec2<i32>(u_input.b.x & 1i, arg_0), !(!vec2<bool>(true, arg_1.c))) << (vec2<u32>(firstTrailingBit(~u_input.a.x), _wgslsmith_div_u32(u_input.a.x, min(43015u, u_input.a.x))) % vec2<u32>(32u)), -1561f, !select(vec4<bool>(false, true, all(vec4<bool>(true, true, global0.x, arg_1.c)), !arg_1.c), select(select(vec4<bool>(false, true, false, global0.x), vec4<bool>(true, true, arg_1.c, global0.x), vec4<bool>(true, true, arg_1.c, global0.x)), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(arg_1.c, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, arg_1.c)), global0.x), vec4<bool>(global0.x, any(global0.xyy), true, true)));
    return Struct_3(1828f, Struct_2(u_input.d), u_input.a, ~abs(_wgslsmith_sub_vec2_u32(u_input.a, min(u_input.a, u_input.a))));
}

fn func_1() -> Struct_3 {
    var var_0 = -firstLeadingBit(u_input.c);
    var_0 = u_input.c;
    let var_1 = func_2(2468i, Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1182f)))), u_input.a.x, true, u_input.a.x));
    let var_2 = var_1;
    let var_3 = -1i;
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-580f)), 379f, true)))))), var_2.b, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, var_1.d.x), ~var_2.c), vec2<u32>(u_input.a.x, 0u & u_input.a.x)) >> (vec2<u32>(6663u, 0u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(var_1.c, ~(vec2<u32>(41791u, 31106u) << (vec2<u32>(u_input.a.x, var_1.d.x) % vec2<u32>(32u)))), vec2<u32>(firstTrailingBit(var_2.c.x << (4294967295u % 32u)), 78764u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32) -> Struct_4 {
    var var_0 = -1962f;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(round(arg_0.a)), Struct_2(u_input.b), arg_0.d, vec2<u32>(reverseBits(reverseBits(106222u)), ~(reverseBits(arg_0.d.x) << (arg_0.d.x % 32u))));
    let var_2 = -699f;
    var var_3 = firstLeadingBit(var_1.b.a.x) >> (~arg_0.c.x % 32u);
    var var_4 = ~(~0u);
    return Struct_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f * var_1.a)) - _wgslsmith_f_op_f32(func_1().a - _wgslsmith_f_op_f32(-arg_0.a))))), 40652u, true, firstLeadingBit(~(~(~4294967295u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    global0 = arg_0.c;
    let var_0 = arg_1;
    var var_1 = Struct_4(599f, _wgslsmith_clamp_u32(0u, select(_wgslsmith_clamp_u32(40799u, arg_3, 4294967295u), u_input.a.x, global0.x) & 5461u, 1u), var_0.c, arg_3);
    var var_2 = abs(func_1().b.a);
    var var_3 = global0.x;
    return 16100u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.c) >> (func_5(Struct_1(_wgslsmith_div_vec2_i32(u_input.b, u_input.d) & ~vec2<i32>(u_input.c, 1i), 617f, select(vec4<bool>(true, true, global0.x, global0.x), !vec4<bool>(true, false, true, global0.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), true))), func_4(func_1(), select(vec3<bool>(false, false, false), global0.zwx, !global0.x), (u_input.b.x << (8323u % 32u)) ^ u_input.b.x), select(~(-vec2<i32>(u_input.d.x, -2147483647i)), u_input.b, vec2<bool>(select(global0.x, global0.x, global0.x), true)), ~reverseBits(~0u)) % 32u);
    global0 = !select(select(select(!vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), true), vec4<bool>(global0.x, global0.x, any(vec2<bool>(global0.x, global0.x)), false && global0.x), !select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), global0.x)), select(vec4<bool>(global0.x || global0.x, global0.x, global0.x | true, true), vec4<bool>(true, global0.x, false, any(vec3<bool>(false, true, global0.x))), !vec4<bool>(false, global0.x, global0.x, false)), true);
    let var_1 = func_4(Struct_3(-517f, Struct_2(u_input.d), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), abs(u_input.a), vec2<u32>(37093u, u_input.a.x) ^ u_input.a), max(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, 88169u)), ~u_input.a), ~(~u_input.a))), global0.zyx, _wgslsmith_sub_i32(_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_div_i32(~var_0, 1i >> (u_input.a.x % 32u))), 26530i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-441f + -1000f));
    global0 = !(!select(!select(vec4<bool>(var_1.c, false, var_1.c, false), vec4<bool>(false, global0.x, global0.x, var_1.c), vec4<bool>(global0.x, global0.x, global0.x, false)), !select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(var_1.c, false, false, true), true), select(vec4<bool>(global0.x, true, true, false), !vec4<bool>(false, true, var_1.c, true), any(global0.xx))));
    global0 = select(!select(select(!vec4<bool>(var_1.c, var_1.c, var_1.c, var_1.c), !vec4<bool>(false, false, true, var_1.c), var_1.c & true), !select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, false, true, false), vec4<bool>(global0.x, global0.x, var_1.c, false)), any(vec2<bool>(global0.x, true))), vec4<bool>(global0.x, !(_wgslsmith_f_op_f32(-var_2) <= _wgslsmith_f_op_f32(-1948f - -1052f)), false, !all(select(global0.wzy, vec3<bool>(true, global0.x, true), global0.zxz))), !select(!select(vec4<bool>(false, false, global0.x, false), vec4<bool>(false, false, var_1.c, false), vec4<bool>(var_1.c, var_1.c, false, true)), vec4<bool>(var_0 < -2147483647i, false, true, !global0.x), false));
    var var_3 = select(global0.xzy, select(!(!vec3<bool>(false, var_1.c, var_1.c)), !global0.zzx, var_1.c), select(global0.zxw, !select(vec3<bool>(true, true, true), select(vec3<bool>(var_1.c, global0.x, true), vec3<bool>(false, false, global0.x), vec3<bool>(var_1.c, false, var_1.c)), var_1.c), select(global0.wxw, !select(global0.ywy, global0.zwz, global0.xyy), global0.ywz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 24777u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, var_1.b, 1u), vec3<u32>(var_1.d, var_1.d, 0u)) | (vec3<u32>(6336u, u_input.a.x, u_input.a.x) | vec3<u32>(var_1.d, var_1.b, u_input.a.x))), ~firstLeadingBit(vec3<u32>(u_input.a.x, 19325u, u_input.a.x))));
}

