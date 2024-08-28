struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 1>;

var<private> global1: Struct_1;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = global2.c.a.xx;
    let var_1 = global2.c;
    let var_2 = global2.d;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) - 812f);
    var var_4 = abs(vec4<i32>(_wgslsmith_add_i32(abs(-2147483647i ^ arg_0.b), u_input.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 2147483647i, 72351i), select(vec4<i32>(-1i, arg_0.b, arg_0.b, global2.b), vec4<i32>(36922i, arg_0.b, -20763i, global2.b), global2.e)), i32(-1i) * -18527i, arg_0.b));
    return !arg_0.c.a;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    global0 = array<vec3<u32>, 1>();
    return select(!select(arg_1.c, !global2.c.a, true), vec3<bool>(true, global2.a.x, true), false);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> vec4<u32> {
    global2 = arg_1;
    var var_0 = Struct_3(arg_1.a, firstLeadingBit(-reverseBits(_wgslsmith_mod_i32(arg_1.b, 0i))), Struct_2(!(!(!vec3<bool>(global2.a.x, true, true))), true), _wgslsmith_f_op_f32(sign(arg_2)), any(select(arg_1.c.a.yx, arg_1.c.a.xy, false)));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(29810u, 1u), vec2<u32>(reverseBits(global1.a), ~4294967295u) | ~vec2<u32>(arg_0, arg_0)), select(!global2.a, vec3<bool>(global1.b.x, arg_1.c.a.x, true), func_3(vec3<u32>(4294967295u, ~arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 38321u), vec2<u32>(2844u, global1.a))), Struct_1(~54680u, !vec3<bool>(global1.c.x, global2.a.x, true), global2.a, 1f, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d, global2.d, arg_2)))))), vec3<bool>(false, true, false), global2.d, vec3<f32>(-229f, arg_1.d, -1507f));
    var var_2 = vec3<u32>(76543u, ~(countOneBits(~arg_0) & (4294967295u ^ global1.a)), ~(~_wgslsmith_mult_u32(4294967295u, var_1.a)));
    var var_3 = global2.e;
    return ~_wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.a, var_2.x), vec4<u32>(23289u, 41000u, 14155u, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, var_2.x, 45267u), vec4<u32>(4294967295u, 23593u, global1.a, 1u)), abs(vec4<u32>(global1.a, var_1.a, arg_0, var_1.a))), vec4<u32>(var_1.a, ~global1.a, 59439u, ~select(arg_0, var_2.x, false)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~global1.a, 45274u, 0u, ~7767u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(32305u, 4294967295u, 29851u, 0u), vec4<u32>(global1.a, 0u, 4294967295u, 350u)), vec4<u32>(firstLeadingBit(global1.a), global1.a & 61739u, firstTrailingBit(global1.a), abs(1u))), vec4<u32>(_wgslsmith_div_u32(1u, 63667u), 22478u, global1.a & global1.a, ~25383u) ^ ~(~vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = func_4(21919u, Struct_3(func_3(vec3<u32>(global1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, global1.a), vec2<u32>(global1.a, global1.a)), ~global1.a), Struct_1(4294967295u, vec3<bool>(false, global2.c.a.x, global2.e), global1.b, global1.d, global1.e)), 1i, global2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, global2.d)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -177f))))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.e.x, 1228f))))));
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i) * -u_input.a.xz, ~vec2<i32>(-1i, global2.b), false), u_input.a.xz), _wgslsmith_add_i32(firstLeadingBit(global2.b), (-global2.b >> (_wgslsmith_div_u32(4294967295u, 1u) % 32u)) ^ (~(-12520i) >> (var_1.x % 32u))));
    global2 = Struct_3(select(vec3<bool>((global2.d <= 299f) || all(vec4<bool>(false, false, global1.c.x, global2.c.b)), any(!global1.c.yy), true), vec3<bool>(false, true, global1.b.x), global2.c.a), max(~_wgslsmith_mult_i32(u_input.b, u_input.a.x ^ global2.b), ~(-2939i)), global2.c, global1.e.x, !(!any(!global1.c)));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = select(false, !global2.a.x, global2.c.a.x);
    global2 = Struct_3(!select(!func_1(Struct_3(global2.c.a, 30947i, Struct_2(global1.b, true), global1.d, true), Struct_1(7082u, global2.a, global1.c, 197f, vec3<f32>(global1.e.x, -321f, -546f))), global1.b, global1.b), func_2(), Struct_2(!vec3<bool>(true, all(global2.c.a.zy), true), global1.b.x), -1461f, global2.a.x);
    var var_2 = Struct_1(~_wgslsmith_add_u32(select(0u, 45654u, true) | global1.a, global1.a), !(!func_1(Struct_3(global1.b, -7205i, Struct_2(vec3<bool>(true, false, true), true), global1.e.x, false), Struct_1(83734u, global2.c.a, vec3<bool>(global1.c.x, true, global1.c.x), -1000f, global1.e))), vec3<bool>(global2.e, global1.b.x, global1.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-906f - _wgslsmith_f_op_f32(-global2.d)))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + 107f))), 1091f, _wgslsmith_f_op_f32(f32(-1f) * -323f)));
    global2 = Struct_3(vec3<bool>(true, true, global1.c.x), u_input.b, global2.c, _wgslsmith_f_op_f32(floor(-914f)), all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(global2.e, true, global2.a.x, var_2.b.x), global1.c.x), !vec4<bool>(true, var_2.c.x, global1.c.x, global1.b.x), true)));
    global2 = Struct_3(func_1(Struct_3(global1.c, var_0 << (firstTrailingBit(0u) % 32u), global2.c, 286f, global2.a.x), Struct_1(var_2.a, vec3<bool>(false, !global1.c.x, true), !(!vec3<bool>(global1.c.x, global1.c.x, false)), _wgslsmith_f_op_f32(floor(765f)), var_2.e)), ~min(firstLeadingBit(1i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, -29964i), firstLeadingBit(-9013i))), global2.c, -784f, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(var_2.e.yz * _wgslsmith_f_op_vec2_f32(var_2.e.yz * var_2.e.yy));
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(228f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, -1373f)), var_3.x, _wgslsmith_f_op_f32(ceil(-609f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(floor(global1.d)), _wgslsmith_f_op_f32(-global2.d), -1320f, _wgslsmith_f_op_f32(f32(-1f) * -2003f)))), select(!vec4<bool>(true, global1.c.x, global1.b.x, var_2.b.x), select(select(vec4<bool>(true, true, global2.c.b, true), vec4<bool>(global1.c.x, global1.c.x, true, var_2.c.x), true), select(vec4<bool>(global2.e, global1.b.x, global2.a.x, false), vec4<bool>(false, global1.b.x, false, true), vec4<bool>(var_2.b.x, global2.e, false, true)), select(vec4<bool>(true, global1.c.x, false, true), vec4<bool>(var_2.b.x, false, global1.b.x, global2.e), global1.c.x)), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-600f, -1000f, 521f, var_2.d), vec4<f32>(var_2.d, -1212f, var_2.e.x, var_2.d)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.d, var_3.x, global1.d, 727f), vec4<f32>(-987f, -900f, var_2.e.x, -948f))))), all(func_1(Struct_3(vec3<bool>(false, false, var_2.b.x), u_input.d, Struct_2(global2.a, true), 319f, var_2.c.x), Struct_1(52856u, var_2.b, vec3<bool>(var_2.b.x, global1.b.x, global2.e), var_3.x, vec3<f32>(-363f, global2.d, -232f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a);
}

