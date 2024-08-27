struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(10381i, 20091i, 0i, 1i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = -47730i;
    var var_1 = !vec2<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, false, all(vec4<bool>(true, true, false, true)), true)));
    global0 = Struct_1(vec4<i32>(i32(-1i) * -u_input.d.x, 39230i, 27101i, ~5248i));
    let var_2 = Struct_1(max(~vec4<i32>(u_input.d.x, 0i, global0.a.x, 31648i) & abs(vec4<i32>(-29507i, -2147483647i, global0.a.x, u_input.e.x)), firstLeadingBit(min(vec4<i32>(-47739i, global0.a.x, global0.a.x, 0i), global0.a))) >> (vec4<u32>(16626u, firstTrailingBit(1u), 4294967295u, _wgslsmith_clamp_u32(max(0u, 10177u), _wgslsmith_add_u32(arg_0, arg_0), arg_0)) % vec4<u32>(32u)));
    let var_3 = ~(~vec4<u32>(~0u << (0u % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, u_input.b.x, arg_0, 1u), select(vec4<u32>(10402u, 35996u, u_input.b.x, 21318u), vec4<u32>(48333u, arg_0, u_input.b.x, 4294967295u), vec4<bool>(false, false, var_1.x, false))), firstTrailingBit(arg_0) ^ _wgslsmith_mod_u32(u_input.b.x, 44331u), arg_0));
    return ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(1u, 1u)) ^ (max(0u, 0u) & firstTrailingBit(1u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = !vec3<bool>((i32(-1i) * -39854i) >= max(u_input.d.x, 0i), false, !any(vec3<bool>(arg_1.c.x, arg_1.a, false)));
    let var_1 = vec4<bool>(all(vec4<bool>(false, true, any(vec4<bool>(false, false, true, false)), true)), arg_1.a, all(arg_1.c.ywy), true | !((arg_0.x == u_input.c) || false));
    var var_2 = _wgslsmith_f_op_f32(round(-106f));
    var var_3 = max(reverseBits(-_wgslsmith_add_i32(u_input.d.x, arg_0.x) & ~(-2147483647i)), ~arg_0.x);
    var var_4 = abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.b.a, 62784u), u_input.b.xy), vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, 1u), arg_1.b.a | u_input.a))) | u_input.b.zx;
    return Struct_3(any(vec2<bool>(true, true)), Struct_2(func_3(u_input.b.x)), select(vec4<bool>(all(!var_0), true, any(var_1), false), !(!(!var_1)), vec4<bool>(var_1.x, var_1.x, true, arg_1.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.e ^ u_input.e, -vec4<i32>(u_input.e.x, -2147483647i, u_input.e.x, u_input.e.x)) | _wgslsmith_add_vec4_i32(u_input.d, vec4<i32>(global0.a.x, -2074i, 2147483647i, 0i)), global0.a));
    return Struct_2(max(arg_0.a, 47669u));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    global0 = Struct_1(vec4<i32>(global0.a.x, _wgslsmith_mod_i32(global0.a.x, ~u_input.d.x), global0.a.x, firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.d | global0.a, global0.a & vec4<i32>(u_input.d.x, -1i, -56614i, u_input.d.x)))));
    let var_0 = ~vec4<u32>(func_4(func_2(vec4<i32>(18883i, -38724i, u_input.c, global0.a.x), arg_2).b, arg_2, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, -835f, 1000f, -1512f) + vec4<f32>(-256f, -446f, -1006f, 1583f)), vec4<f32>(2627f, -1000f, 1064f, -762f)))).a, u_input.a, 1u, arg_2.b.a >> (0u % 32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-474f * _wgslsmith_f_op_f32(select(1002f, -330f, false))))), _wgslsmith_f_op_f32(max(952f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-691f, -515f)))))) - vec2<f32>(1446f, _wgslsmith_div_f32(399f, -1839f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-900f, var_1.x, _wgslsmith_f_op_f32(-var_1.x)))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1171f + var_1.x), -1394f)), 693f, var_1.x))));
    var_2 = vec3<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1192f), -1157f);
    return -867f;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    var var_0 = reverseBits(u_input.b.xx);
    var_0 = select(u_input.b.xz, ~(~(vec2<u32>(arg_1.x, u_input.a) >> (arg_1.zx % vec2<u32>(32u)))), !any(vec4<bool>(true, true, true, true))) ^ abs(~vec2<u32>(u_input.a, _wgslsmith_add_u32(arg_1.x, var_0.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(false, func_4(Struct_2(1u), func_2(u_input.e, Struct_3(false, Struct_2(89493u), vec4<bool>(false, false, false, false))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3, -750f, -1508f, 574f)))), Struct_3(true, func_4(Struct_2(4294967295u), Struct_3(true, Struct_2(46516u), vec4<bool>(false, false, false, true)), vec4<f32>(-606f, -630f, 443f, arg_3)), vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), arg_3))));
    var var_2 = func_4(Struct_2(countOneBits(u_input.b.x)), func_2(vec4<i32>(8059i & global0.a.x, -2147483647i, arg_2.x, -global0.a.x) >> (vec4<u32>(~26531u, arg_1.x >> (85107u % 32u), _wgslsmith_add_u32(u_input.a, u_input.a), ~0u) % vec4<u32>(32u)), func_2(vec4<i32>(-24196i, 2147483647i, ~arg_2.x, u_input.e.x << (0u % 32u)), Struct_3(any(vec4<bool>(false, false, false, false)), Struct_2(49384u), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, arg_3, arg_3, 121f) * vec4<f32>(arg_3, 1000f, arg_3, -1680f))))));
    let var_3 = u_input.b.zy;
    return _wgslsmith_f_op_f32(trunc(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(905f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1905f * -2008f) - -605f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(298f, 1906f), vec2<f32>(246f, 2519f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(494f, -1269f) * vec2<f32>(-1179f, -532f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f), -470f), _wgslsmith_f_op_f32(func_1(u_input.a | 9143u, vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.b.x), ~vec3<i32>(-20194i, u_input.d.x, u_input.e.x), _wgslsmith_f_op_f32(f32(-1f) * -947f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x));
    let var_2 = Struct_2(firstLeadingBit(_wgslsmith_mult_u32(15079u, ~_wgslsmith_mult_u32(1u, u_input.b.x))));
    let var_3 = -503f;
    var var_4 = var_0.x;
    let var_5 = Struct_2(abs(~(~u_input.a | var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(0i, reverseBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_5.a, var_5.a, 74528u), u_input.b), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(u_input.a, 0u, 4294967295u)), ~u_input.b), u_input.b)));
}

