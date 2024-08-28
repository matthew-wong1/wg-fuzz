struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<u32> = vec2<u32>(36907u, 4294967295u);

var<private> global2: Struct_2 = Struct_2(true, Struct_1(vec2<u32>(4294967295u, 14925u), 4294967295u, vec3<f32>(-1615f, 2073f, -249f), vec3<bool>(true, false, false), -1i), Struct_1(vec2<u32>(48500u, 4294967295u), 59612u, vec3<f32>(1178f, 735f, -1432f), vec3<bool>(false, false, false), 45176i), vec4<f32>(418f, -1000f, -1607f, -438f), vec4<i32>(1i, 2147483647i, 1i, -1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec4<f32>) -> f32 {
    global1 = select(vec2<u32>(10619u, 4294967295u), u_input.a.yx & select(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), global0.c.a), countOneBits(arg_2.b) | vec2<u32>(27759u, arg_0.c.a.x), !any(vec4<bool>(true, false, true, true))), select(select(select(global2.b.d.xy, vec2<bool>(global2.c.d.x, global2.a), select(vec2<bool>(arg_2.c.x, global0.a.d.x), vec2<bool>(true, global2.a), global2.b.d.yx)), vec2<bool>(all(vec4<bool>(arg_0.a.d.x, global0.e.d.x, arg_0.e.d.x, false)), !arg_0.c.d.x), arg_0.a.d.xz), vec2<bool>(all(select(vec4<bool>(global0.e.d.x, true, false, arg_0.c.d.x), vec4<bool>(arg_0.a.d.x, global2.c.d.x, global0.e.d.x, true), false)), all(vec3<bool>(true, arg_0.a.d.x, true))), !vec2<bool>(all(arg_0.a.d.zy), !arg_2.e.c.d.x)));
    let var_0 = abs(_wgslsmith_mod_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 45151u, 1u, 25130u), vec4<u32>(global1.x, 37752u, global0.e.a.x, 10726u)) << (vec4<u32>(global2.b.a.x, global2.c.a.x, 7898u, 67531u) % vec4<u32>(32u))), ~(~vec4<u32>(80646u, 31508u, arg_0.a.b, global1.x))));
    let var_1 = Struct_2(!any(select(vec4<bool>(arg_0.e.d.x, global0.e.d.x, arg_2.c.x, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, arg_2.c.x, true, false), vec4<bool>(arg_0.a.d.x, arg_0.a.d.x, true, arg_0.c.d.x), arg_0.c.d.x))), Struct_1(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.b, ~vec2<u32>(49206u, u_input.e), ~vec2<u32>(arg_2.b.x, global1.x)), select(global2.b.a, vec2<u32>(global2.b.a.x, 19363u) & var_0.ww, global0.e.d.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b.x, arg_2.e.b.a.x, global0.a.a.x, 4294967295u), vec4<u32>(4294967295u, global1.x, u_input.a.x, var_0.x) << (var_0 % vec4<u32>(32u))), _wgslsmith_sub_u32(var_0.x, 53652u)), _wgslsmith_f_op_vec3_f32(arg_3.yxy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(3016f, arg_0.e.c.x, arg_2.d.x))), arg_2.e.c.d, 38823i), arg_0.e, _wgslsmith_f_op_vec4_f32(-arg_3), ~vec4<i32>(2147483647i, global2.b.e, abs(global2.b.e), global0.c.e) | vec4<i32>(2147483647i >> ((arg_0.a.a.x << (0u % 32u)) % 32u), _wgslsmith_mult_i32(i32(-1i) * -23797i, arg_1.x), -arg_0.e.e << (_wgslsmith_clamp_u32(8891u, 4294967295u, 35417u) % 32u), min(firstLeadingBit(arg_1.x), 51926i)));
    global2 = var_1;
    let var_2 = select(select(vec4<bool>(true, false, !any(vec2<bool>(arg_2.c.x, true)), true), vec4<bool>(global0.a.d.x, !(u_input.d > var_1.b.e), true, _wgslsmith_f_op_f32(max(-1090f, -382f)) > _wgslsmith_f_op_f32(select(202f, 1553f, false))), all(!vec3<bool>(true, true, arg_0.e.d.x))), select(!(!vec4<bool>(true, false, var_1.a, global0.a.d.x)), select(!vec4<bool>(var_1.a, arg_0.a.d.x, true, false), !(!vec4<bool>(false, true, var_1.a, arg_2.a)), !(!vec4<bool>(global0.a.d.x, arg_0.a.d.x, arg_0.e.d.x, global2.c.d.x))), true && arg_2.e.b.d.x), !(!select(vec4<bool>(false, var_1.b.d.x, false, true), vec4<bool>(false, false, global2.c.d.x, true), select(vec4<bool>(arg_2.e.c.d.x, arg_2.a, var_1.c.d.x, global2.c.d.x), vec4<bool>(true, false, false, global2.a), vec4<bool>(global0.e.d.x, global2.b.d.x, global2.c.d.x, true)))));
    return 1000f;
}

fn func_2() -> u32 {
    global2 = Struct_2(!global0.a.d.x, global0.e, Struct_1(abs(u_input.a.zy), _wgslsmith_mod_u32(~global1.x, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(670f, 1000f, -938f)), vec3<bool>(global2.c.d.x, global2.c.d.x, global2.c.d.x || global2.c.d.x), -(~(-48197i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global2.d.x, global2.d.x)), _wgslsmith_f_op_f32(304f - global0.b.x), _wgslsmith_f_op_f32(func_3(Struct_3(global2.b, global2.b.c, Struct_1(global2.c.a, 1u, vec3<f32>(-485f, -337f, 306f), vec3<bool>(true, false, true), global0.a.e), 19837i, Struct_1(global0.c.a, global0.a.b, global2.b.c, global0.e.d, u_input.d)), vec3<i32>(global0.a.e, -59280i, -10624i), Struct_4(false, global0.a.a, global2.c.d, global2.b.c.yx, Struct_2(false, Struct_1(u_input.a.zy, 29869u, global2.d.zzw, global2.c.d, global0.e.e), Struct_1(vec2<u32>(u_input.e, 14170u), 0u, global2.c.c, global2.c.d, global2.b.e), global2.d, vec4<i32>(-34036i, 55751i, u_input.d, u_input.d))), global2.d)), _wgslsmith_f_op_f32(-global0.c.c.x)))), countOneBits(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, u_input.c.x, 1i), -2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d, 0i), ~global2.c.e), -(global0.c.e ^ global0.d), global0.e.e)));
    let var_0 = (-15107i | ~_wgslsmith_dot_vec4_i32(abs(global2.e), select(vec4<i32>(u_input.d, global0.e.e, -6486i, global2.b.e), vec4<i32>(51646i, global0.e.e, 11248i, 2147483647i), vec4<bool>(global0.a.d.x, false, global2.a, true)))) ^ 0i;
    var var_1 = any(!vec4<bool>(!(u_input.c.x != global2.e.x), global0.c.d.x, true, false));
    var var_2 = _wgslsmith_mult_i32(~(~countOneBits(select(global0.c.e, u_input.c.x, global2.b.d.x))), firstTrailingBit(-1i));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global2.c.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) * _wgslsmith_f_op_f32(-1864f - global2.c.c.x))), _wgslsmith_div_f32(global0.e.c.x, -1000f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.c.x + global0.b.x))), -243f);
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~1u), vec2<u32>(global1.x, ~global2.b.a.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_3 {
    global2 = Struct_2(_wgslsmith_mod_i32(-u_input.c.x, 0i) <= -1i, global0.e, global2.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(408f, -1738f, global2.d.x, 147f), vec4<f32>(global0.b.x, global0.b.x, global0.e.c.x, 312f)), global2.d))))), ~(-((global2.e >> (vec4<u32>(global1.x, global0.e.a.x, global1.x, global1.x) % vec4<u32>(32u))) ^ -global2.e)));
    global0 = Struct_3(Struct_1(u_input.a.yy, func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.c.x, global0.e.c.x, arg_0.x) * vec3<f32>(2358f, arg_0.x, -1938f))))), !global2.c.d, reverseBits(u_input.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.e.c.x, 920f, true)) + _wgslsmith_f_op_f32(-global2.b.c.x)), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.c.c.x, global2.b.c.x)))), global2.c, -47906i, global2.b);
    return Struct_3(Struct_1(~_wgslsmith_div_vec2_u32(global0.c.a >> (vec2<u32>(global2.b.a.x, 57657u) % vec2<u32>(32u)), vec2<u32>(49072u, 13511u)), _wgslsmith_mod_u32(global2.b.b << (4294967295u % 32u), ~48224u) ^ global1.x, arg_0, !select(select(vec3<bool>(global2.c.d.x, global2.b.d.x, false), vec3<bool>(global0.c.d.x, true, true), true), !global0.a.d, global0.c.d), i32(-1i) * -55045i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec2<u32>(0u, global0.c.a.x), global1.x, global2.c.c, global0.a.d, global2.e.x), vec3<f32>(arg_0.x, -703f, global2.c.c.x), Struct_1(vec2<u32>(global2.b.a.x, global0.a.b), global2.c.b, vec3<f32>(370f, 2407f, -1864f), global0.a.d, 2147483647i), 46793i, global0.c), vec3<i32>(-2147483647i, global0.c.e, -2147483647i), Struct_4(global2.b.d.x, global2.c.a, vec3<bool>(global2.a, arg_1, true), vec2<f32>(global2.c.c.x, global2.c.c.x), Struct_2(global2.a, global0.a, Struct_1(vec2<u32>(4294967295u, 6564u), global1.x, vec3<f32>(arg_0.x, global0.b.x, global0.a.c.x), vec3<bool>(false, global0.a.d.x, global2.b.d.x), -2147483647i), vec4<f32>(-451f, 378f, global2.c.c.x, global0.b.x), vec4<i32>(global2.b.e, global2.b.e, 0i, 8288i))), vec4<f32>(arg_0.x, -661f, global2.c.c.x, global0.e.c.x))) * _wgslsmith_f_op_f32(1705f * -1000f)), global0.e.c.x, global0.b.x), Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global0.c.a.x, u_input.b.x), global0.a.a.x), max(u_input.b.xx, _wgslsmith_mod_vec2_u32(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x)))), 55327u, global2.c.c, select(vec3<bool>(true, true, true), select(!vec3<bool>(global0.a.d.x, arg_1, true), global0.c.d, arg_1), global2.c.d.x), -_wgslsmith_clamp_i32(25951i, 1i, 1i)), global2.b.e, global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, global0.a.c) + vec3<f32>(global0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.c.x - 962f)), global0.c.c.x)), global2.b.d.x);
    global1 = countOneBits(~((vec2<u32>(1u, 1u) | vec2<u32>(global1.x, 0u)) ^ ~u_input.b.zx));
    let var_0 = reverseBits(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.b, _wgslsmith_add_u32(1u, global1.x)), vec2<u32>(1u, global1.x) >> (~u_input.a.zy % vec2<u32>(32u)))));
    global0 = func_1(_wgslsmith_f_op_vec3_f32(ceil(func_1(_wgslsmith_div_vec3_f32(global0.a.c, _wgslsmith_f_op_vec3_f32(global0.e.c * vec3<f32>(global2.b.c.x, 843f, global2.c.c.x))), all(vec4<bool>(true, global0.c.d.x, false, global0.e.d.x))).b)), u_input.a.x >= _wgslsmith_div_u32(firstTrailingBit(abs(u_input.b.x)), 1u));
    var var_1 = !(!global0.e.d.xx);
    let var_2 = _wgslsmith_mod_i32(-reverseBits(3833i), -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-24416i, ~var_2, vec3<i32>(u_input.d, var_2, -global2.b.e));
}

