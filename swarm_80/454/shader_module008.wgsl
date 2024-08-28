struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = firstTrailingBit(min(-vec4<i32>(arg_0.a.c.x, -1i, countOneBits(0i), 35739i), -_wgslsmith_div_vec4_i32(arg_0.a.c, max(arg_0.a.c, vec4<i32>(-1i, 0i, -1i, 1i)))));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a.d.zwz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a.d.ywx * arg_0.a.d.zyw)))), _wgslsmith_f_op_vec3_f32(ceil(arg_0.a.d.yyw)));
    var var_2 = -668f;
    let var_3 = Struct_2(arg_0.a);
    var_1 = arg_0.a.d.wwx;
    return ~_wgslsmith_clamp_i32(countOneBits(arg_0.a.c.x) | _wgslsmith_add_i32(~22756i, _wgslsmith_dot_vec2_i32(var_0.zy, var_0.wz)), _wgslsmith_div_i32(-5096i, arg_0.a.c.x), -2147483647i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.a.d.yyz);
    var var_1 = Struct_3(arg_3.a, ~vec4<u32>(countOneBits(u_input.b), min(39003u, 40044u), _wgslsmith_mod_u32(u_input.b, 67205u), ~u_input.b) ^ u_input.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f + arg_1.a) + 897f) - arg_2.a.a), reverseBits(_wgslsmith_clamp_u32(33230u, 93888u, u_input.a.x)) <= _wgslsmith_mod_u32(4294967295u, firstTrailingBit(u_input.a.x)), arg_2.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c.a, 693f, -947f, var_0.x) + arg_2.a.d)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(arg_1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(903f, 1150f, var_0.x, arg_2.a.d.x)), false)))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(arg_1.d.wwx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.a.d.wzx, arg_2.a.d.yxy)), false));
    let var_2 = arg_3.a.c.x;
    let var_3 = ~_wgslsmith_add_u32(firstLeadingBit(arg_3.b.x), _wgslsmith_add_u32(~abs(59242u), countOneBits(u_input.a.x)));
    return 17068i <= var_2;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.x * 965f), -948f, _wgslsmith_f_op_f32(arg_1.d.x - 1028f));
    var_0 = arg_1.d.zww;
    var_0 = _wgslsmith_div_vec3_f32(arg_1.d.zzy, arg_1.d.xzz);
    let var_1 = Struct_1(var_0.x, func_4(arg_1.c.x, Struct_1(arg_1.a, arg_1.b, vec4<i32>(func_3(Struct_2(Struct_1(var_0.x, arg_1.b, arg_1.c, vec4<f32>(var_0.x, -2241f, 207f, -1691f))), var_0.x), ~arg_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, arg_1.c.x, -34038i, arg_0), vec4<i32>(12865i, arg_1.c.x, 5087i, arg_1.c.x)), ~(-15233i)), vec4<f32>(arg_1.d.x, _wgslsmith_f_op_f32(min(arg_1.a, -1843f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -104f))), Struct_2(Struct_1(1027f, arg_1.b, min(vec4<i32>(arg_0, arg_1.c.x, 1i, arg_0), vec4<i32>(arg_1.c.x, arg_0, -16244i, arg_0)), vec4<f32>(var_0.x, 1429f, 1357f, var_0.x))), Struct_3(arg_1, u_input.a, Struct_1(_wgslsmith_f_op_f32(-arg_1.a), arg_1.b, arg_1.c, arg_1.d))), vec4<i32>(firstLeadingBit(arg_1.c.x), -reverseBits(_wgslsmith_clamp_i32(arg_1.c.x, arg_1.c.x, 1i)), arg_0, ~_wgslsmith_add_i32(arg_0, func_3(Struct_2(Struct_1(var_0.x, true, vec4<i32>(arg_0, -2147483647i, arg_0, arg_0), vec4<f32>(3034f, -1766f, var_0.x, var_0.x))), -280f))), arg_1.d);
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(642f, var_0.x, arg_1.a), vec3<f32>(arg_1.d.x, 1379f, var_1.d.x))), vec3<f32>(arg_1.d.x, -1098f, -497f))))));
    return select(select(select(vec2<bool>(!arg_1.b, !var_1.b), vec2<bool>(false, !arg_1.b), !arg_1.b || var_1.b), !(!vec2<bool>(arg_1.b, arg_1.b)), select(true, false, any(!vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)))), vec2<bool>(_wgslsmith_mod_i32(1i, arg_1.c.x) >= 0i, !any(vec2<bool>(arg_1.b, false))), select(select(vec2<bool>(all(vec2<bool>(var_1.b, false)), var_1.b), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(var_1.b, true), vec2<bool>(false, true), var_1.b)), vec2<bool>(func_4(2147483647i, arg_1, Struct_2(Struct_1(517f, false, var_1.c, vec4<f32>(arg_1.a, 738f, 541f, arg_1.a))), Struct_3(Struct_1(-820f, var_1.b, arg_1.c, arg_1.d), u_input.a, var_1)), true), !select(!vec2<bool>(var_1.b, false), select(vec2<bool>(true, false), vec2<bool>(var_1.b, var_1.b), var_1.b), var_1.b)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = vec3<bool>(any(func_2(1i << (~u_input.a.x % 32u), Struct_1(-1000f, true, abs(vec4<i32>(1i, arg_2.x, arg_2.x, arg_2.x)), vec4<f32>(1f, 1f, 1f, 1f)))), select(true, u_input.a.x <= u_input.a.x, false), true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(ceil(-1032f))))) - _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(arg_3 - arg_0));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + 672f) * arg_3), var_0.x, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-40398i, arg_2.x, arg_2.x, arg_2.x) | vec4<i32>(arg_2.x, arg_2.x, -2147483647i, arg_2.x), vec4<i32>(1i, arg_2.x, 1i, -2147483647i) | vec4<i32>(arg_2.x, 2948i, arg_2.x, 21605i)), -arg_2.x >> (u_input.b % 32u), arg_2.x, -22706i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_3, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-806f, 1639f, arg_3, arg_3)))))));
    var var_3 = 12892i;
    let var_4 = var_2.a.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_3))), 247f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2063f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(func_1(1250f, 792f, vec2<i32>(2147483647i, 7768i), -1000f))))), false, vec4<i32>(-1i, -(~43317i), countOneBits(1i), select(_wgslsmith_sub_i32(2737i, 1i), -2147483647i, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2054f, 161f, -1723f, 224f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(180f, 201f, -1866f, -1282f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, -1000f, 845f, 1471f) + vec4<f32>(1000f, -1001f, -304f, 850f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1279f, -591f, 663f, 899f) * vec4<f32>(-834f, -447f, 563f, 1565f)))))), _wgslsmith_div_vec4_u32(~vec4<u32>(11771u, u_input.a.x, 0u, u_input.b) >> (~(~u_input.a) % vec4<u32>(32u)), ~(~(~vec4<u32>(u_input.b, 0u, 0u, 62510u)))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1624f), u_input.a.x > (max(u_input.a.x, u_input.b) >> (u_input.a.x % 32u)), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_div_vec4_f32(vec4<f32>(-535f, _wgslsmith_f_op_f32(sign(-524f)), -624f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, -1347f, -707f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, -1806f, -1000f, -1567f))))));
    let var_1 = Struct_2(var_0.a);
    var var_2 = -_wgslsmith_div_i32(var_0.c.c.x, 20577i);
    let var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(abs(var_1.a.c.x), _wgslsmith_sub_i32(abs(var_1.a.c.x), 23292i), countOneBits(1i), 12411i), select(vec4<i32>(var_0.a.c.x, select(_wgslsmith_add_i32(var_1.a.c.x, -1i), reverseBits(2147483647i), any(vec2<bool>(true, false))), countOneBits(1i), var_1.a.c.x), (vec4<i32>(58311i, -990i, var_1.a.c.x, var_1.a.c.x) >> (u_input.a % vec4<u32>(32u))) ^ var_1.a.c, vec4<bool>(true, false, _wgslsmith_div_i32(var_1.a.c.x, var_1.a.c.x) < -31335i, !(true & var_0.c.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~(abs(var_0.b.xy >> (vec2<u32>(9676u, u_input.b) % vec2<u32>(32u))) & vec2<u32>(var_0.b.x ^ 26361u, u_input.a.x)));
}

