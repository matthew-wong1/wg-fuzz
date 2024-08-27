struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: u32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-498f, -1617f, -516f)))))));
    let var_1 = !select(!vec2<bool>(u_input.c.x != 0u, false), global0.zy, !(!vec2<bool>(true, global0.x)));
    let var_2 = Struct_1(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec2_u32(~u_input.b.wz ^ u_input.b.yz, vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), u_input.b.x)) <= u_input.b.x);
    var var_3 = Struct_2(var_2, Struct_1(-1i, false || (!var_1.x & global0.x)), 4294967295u & u_input.b.x, all(select(var_1, global0.zz, true || (var_0.x <= 1000f))));
    let var_4 = -1642f;
    return firstTrailingBit(vec2<i32>(var_3.b.a, 22688i));
}

fn func_2() -> f32 {
    let var_0 = vec3<u32>(1u | u_input.b.x, 16301u, reverseBits(~u_input.b.x)) ^ u_input.b.wwx;
    var var_1 = _wgslsmith_dot_vec2_i32(select(func_3(u_input.a), vec2<i32>(-u_input.d.x, -2147483647i) >> (~var_0.zz % vec2<u32>(32u)), true != global0.x), u_input.a);
    var var_2 = -78464i;
    var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(2147483647i, -28099i, -u_input.a.x))), u_input.d.x);
    let var_3 = Struct_1(33236i, any(global0.zx));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(100f, _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-400f)))), all(vec3<bool>(var_3.b, false, true)))))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global0 = !vec3<bool>(global0.x, global0.x, true);
    global1 = u_input.b.x << (arg_0 % 32u);
    var var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-291f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -890f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1004f - 818f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, -1000f, -936f, 983f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(312f, -296f, 1690f, -1037f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-316f, -548f, -1000f, -1000f) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2001f, 854f, 1754f, -1239f)))))));
    let var_2 = Struct_3(Struct_1(u_input.a.x, true), vec3<bool>(true, abs(u_input.e.x) == (i32(-1i) * -11211i), global0.x), false);
    return Struct_2(Struct_1(1i, !global0.x), var_2.a, _wgslsmith_div_u32(~(~0u), 6416u), var_2.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = true;
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(u_input.b.x, min(firstTrailingBit(max(56184u, arg_1.c)), _wgslsmith_clamp_u32(arg_1.c >> (3821u % 32u), u_input.b.x, arg_1.c))));
    let var_2 = reverseBits(-(~arg_0.x ^ 0i)) << (~var_1 % 32u);
    var var_3 = Struct_3(func_1(~7243u).a, select(!(!select(vec3<bool>(false, global0.x, true), vec3<bool>(var_0, false, true), true)), select(select(vec3<bool>(true, false, true), !vec3<bool>(global0.x, var_0, false), !vec3<bool>(global0.x, var_0, var_0)), !select(vec3<bool>(arg_1.b.b, true, false), vec3<bool>(false, global0.x, var_0), vec3<bool>(global0.x, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -124f) == _wgslsmith_f_op_f32(ceil(-339f))), vec3<bool>(global0.x, all(global0.yy), true)), true);
    var var_4 = _wgslsmith_mod_u32(~arg_1.c, 31735u);
    return Struct_3(func_1(arg_1.c).a, !var_3.b, any(!select(!vec4<bool>(var_0, arg_1.b.b, global0.x, var_3.a.b), vec4<bool>(var_3.b.x, var_0, arg_1.b.b, global0.x), any(var_3.b))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_3 {
    global0 = arg_0.b;
    var var_0 = !(_wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i ^ arg_0.a.a, u_input.d.x), -arg_0.a.a << (u_input.b.x % 32u)) >= 1i);
    global0 = !func_4(u_input.d.zyy, Struct_2(func_1(_wgslsmith_dot_vec2_u32(arg_1.zy, arg_1.zy)).b, arg_0.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58339u, arg_1.x, arg_1.x, arg_1.x), u_input.b), u_input.c.x), global0.x)).b;
    let var_1 = arg_0;
    global1 = 99464u;
    return func_4(u_input.d.yxy, func_1(func_1(u_input.c.x).c));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    let var_0 = u_input.c.x;
    global0 = func_4(~u_input.e | -vec3<i32>(~(-11922i), -44242i | arg_0, reverseBits(arg_0)), func_1(~5676u)).b;
    global1 = 20374u;
    global1 = _wgslsmith_mod_u32(~(~(~55159u)), 3392u);
    global0 = vec3<bool>(any(select(vec4<bool>(select(false, arg_1.a.b, global0.x), global0.x, true, all(vec3<bool>(arg_1.c, false, false))), vec4<bool>(true && global0.x, any(vec2<bool>(false, arg_1.a.b)), func_1(u_input.b.x).a.b, true), vec4<bool>(u_input.b.x <= u_input.c.x, false, global0.x, !arg_1.b.x))), func_4(u_input.e & (vec3<i32>(arg_1.a.a, -2147483647i, arg_1.a.a) >> (~vec3<u32>(12468u, 39017u, 0u) % vec3<u32>(32u))), Struct_2(arg_1.a, arg_1.a, u_input.c.x, any(!vec4<bool>(arg_1.a.b, false, arg_1.b.x, false)))).a.b, false);
    return func_1(_wgslsmith_mod_u32(1u, firstTrailingBit(u_input.b.x))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    global1 = u_input.c.x;
    var_0 = ~(_wgslsmith_sub_u32(u_input.c.x, ~u_input.b.x) | 4294967295u) << (u_input.b.x % 32u);
    var var_1 = vec4<bool>(~_wgslsmith_sub_u32(4294967295u, u_input.b.x) > (_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 1770u), 13979u) ^ u_input.b.x), !(true == global0.x), true, !global0.x & true);
    var var_2 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(240f))));
    let var_3 = 0i;
    let var_4 = func_6(-50440i >> (firstTrailingBit(u_input.b.x) % 32u), func_5(func_4(vec3<i32>(firstLeadingBit(var_2.a), var_3, i32(-1i) * -2147483647i), func_1(~16116u)), _wgslsmith_add_vec3_u32(vec3<u32>(56970u, func_1(0u).c, 18723u), u_input.b.wyw), var_1.zw), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-451f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(159f + 441f) - 1f))));
    let var_5 = Struct_3(func_5(Struct_3(func_6(-44658i, func_4(u_input.d.zzy, Struct_2(Struct_1(var_2.a, global0.x), Struct_1(-1i, false), 0u, var_4.b)), _wgslsmith_f_op_f32(sign(-110f))), !var_1.wyw, true), ~(~min(vec3<u32>(21895u, 472u, u_input.b.x), vec3<u32>(14419u, u_input.c.x, u_input.c.x))), global0.xy).a, vec3<bool>(all(vec3<bool>(true, true, true)), false, false), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1228f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-223f, 1618f), _wgslsmith_f_op_f32(f32(-1f) * -195f))))))), vec4<u32>(_wgslsmith_mult_u32(~u_input.c.x, countOneBits(u_input.c.x)) | 5681u, ~(~_wgslsmith_div_u32(u_input.c.x, 19980u)), abs(~reverseBits(18574u)), 1u), u_input.c.x);
}

