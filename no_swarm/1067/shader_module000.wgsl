struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1000f, 4996i, true, vec3<bool>(false, true, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> vec2<u32> {
    global0 = arg_2;
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global0.a)), _wgslsmith_add_i32(u_input.c.x, global0.b), select(true, false, true != global0.d.x), select(global0.d, global0.d, select(global0.d, select(arg_2.d, !vec3<bool>(arg_1.b, true, global0.c), true), !arg_1.b)));
    let var_0 = arg_1;
    var var_1 = select(!select(vec3<bool>(!arg_1.b, !arg_2.c, true), arg_2.d, select(select(vec3<bool>(arg_1.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, global0.d.x), arg_2.d), !vec3<bool>(arg_0, false, false), true)), select(!select(global0.d, vec3<bool>(arg_1.b, arg_1.b, false), false), !arg_2.d, all(vec3<bool>(!arg_2.c, arg_0, 4294967295u != u_input.d))), arg_2.d);
    var_1 = !select(global0.d, vec3<bool>(true, true, false), vec3<bool>(all(vec4<bool>(false, false, arg_2.d.x, true)), true, var_0.b));
    return ~vec2<u32>(_wgslsmith_mod_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(27899u, 18235u, 1u, u_input.d)), ~vec4<u32>(u_input.d, 23759u, u_input.d, 53926u))), u_input.d);
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + global0.a))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) - _wgslsmith_f_op_f32(arg_0 - -214f))), -1871f), true);
    var var_1 = reverseBits(u_input.a);
    let var_2 = true;
    var var_3 = u_input.c.yzw;
    var_3 = ~_wgslsmith_clamp_vec3_i32(u_input.c.wyz, vec3<i32>(_wgslsmith_add_i32(~2147483647i, u_input.c.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -31957i), vec2<i32>(-1i, u_input.c.x))), global0.b), -vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wzz, vec3<i32>(global0.b, -2147483647i, 45986i)), ~global0.b, u_input.c.x));
    return select(-_wgslsmith_sub_vec3_i32(-(u_input.c.yyz ^ u_input.c.zwy), abs(u_input.c.yxw) ^ u_input.c.zwx), vec3<i32>(~min(u_input.c.x, global0.b) | -1i, ~u_input.c.x, reverseBits(min(~var_3.x, max(-25014i, var_3.x)))), !(_wgslsmith_add_i32(2147483647i, global0.b) < -1i) | all(select(select(vec4<bool>(global0.d.x, true, global0.c, true), vec4<bool>(true, false, var_0.b, false), vec4<bool>(var_0.b, false, true, true)), !vec4<bool>(var_0.b, var_0.b, var_0.b, true), !vec4<bool>(var_0.b, var_2, false, var_2))));
}

fn func_2() -> vec4<u32> {
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) - _wgslsmith_f_op_f32(sign(global0.a))) + -562f), global0.b, global0.c, global0.d);
    let var_0 = vec2<i32>(abs(~u_input.c.x), -u_input.c.x);
    global0 = Struct_2(_wgslsmith_f_op_f32(floor(global0.a)), abs(select(abs(0i), global0.b, !(global0.a < -1818f))), any(!(!select(vec2<bool>(global0.c, true), vec2<bool>(false, true), false))), global0.d);
    let var_1 = func_4(global0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1252f)), _wgslsmith_div_f32(-967f, global0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f))), _wgslsmith_f_op_f32(864f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a, -1822f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(step(global0.a, global0.a)))))), min(firstTrailingBit(select(~vec2<u32>(u_input.b.x, u_input.b.x), func_3(false, Struct_1(vec4<f32>(-1562f, global0.a, global0.a, -1593f), true), Struct_2(897f, 5615i, true, global0.d)), false && global0.d.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 1u, 1u), u_input.b), 34409u), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 31719u), u_input.b.xx))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, 396f) - vec2<f32>(1000f, -248f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.a, global0.a)))))));
    return _wgslsmith_add_vec4_u32(firstLeadingBit(~(~vec4<u32>(u_input.b.x, u_input.a, 54368u, u_input.d))), vec4<u32>(u_input.d, abs(abs(62461u)), ~42409u, u_input.b.x | _wgslsmith_sub_u32(28650u, u_input.d))) >> (vec4<u32>(1021u, 25415u, ~(~87050u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(5052u, u_input.b.x, u_input.a, u_input.b.x), abs(vec4<u32>(u_input.d, 4294967295u, 4294967295u, 1u)))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<u32>, arg_1: f32) -> Struct_2 {
    global0 = Struct_2(global0.a, -1i, global0.c, !global0.d);
    global0 = Struct_2(arg_1, u_input.c.x, false, !select(global0.d, !vec3<bool>(false, global0.c, global0.c), global0.d));
    var var_0 = any(!(!(!vec3<bool>(true, global0.c, true))));
    let var_1 = Struct_2(-138f, u_input.c.x ^ u_input.c.x, false, vec3<bool>(true, any(!select(global0.d, vec3<bool>(global0.d.x, true, false), false)), global0.d.x));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(global0.a)), var_1.a), global0.c);
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = !select(global0.d.xx, vec2<bool>(true, global0.d.x), true);
    global0 = func_5(func_2(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1164f)), _wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(arg_0, arg_0)))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))) + 1271f), _wgslsmith_div_i32(global0.b, u_input.c.x), true, !func_5(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 14188u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 0u)) << (~vec4<u32>(11869u, 4294967295u, 23375u, u_input.b.x) % vec4<u32>(32u)), arg_0).d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -728f;
    var var_1 = global0.d;
    global0 = Struct_2(_wgslsmith_f_op_f32(ceil(global0.a)), -1i, var_1.x, global0.d);
    var var_2 = ~(-10115i);
    var_2 = firstTrailingBit(global0.b) & -17751i;
    var_2 = -57501i;
    var var_3 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1078f, 1000f) - global0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1634f)), var_0, _wgslsmith_f_op_f32(-1066f * -657f)) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(500f, 421f, var_3.a)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-402f + var_0)))), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-u_input.c.yw, vec2<i32>(global0.b, global0.b) ^ u_input.c.xy), vec2<i32>(8494i, u_input.c.x) ^ firstLeadingBit(u_input.c.zz)), firstLeadingBit(func_4(-909f, vec3<f32>(759f, 1000f, -421f), vec2<u32>(u_input.a, 1u)).x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(5134i, -5334i, var_3.b, -9028i), u_input.c), ~vec4<i32>(0i, 2147483647i, 1i, var_3.b)) | (i32(-1i) * -1i)), select(vec4<i32>(u_input.c.x, max(_wgslsmith_mod_i32(3856i, -1519i), select(global0.b, 2147483647i, false)), ~2147483647i, -6690i << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.d, u_input.a)) % 32u)), u_input.c << (~(~vec4<u32>(u_input.b.x, u_input.d, 4294967295u, 4294967295u)) % vec4<u32>(32u)), select(vec4<bool>(false || global0.d.x, global0.c, true, !global0.d.x), vec4<bool>(var_1.x, global0.c, global0.d.x, true), select(vec4<bool>(var_3.d.x, false, var_3.c, true), select(vec4<bool>(global0.d.x, false, false, true), vec4<bool>(var_1.x, true, global0.d.x, false), vec4<bool>(var_3.c, true, true, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(var_1.x, var_3.c, var_1.x, var_1.x), global0.d.x)))), _wgslsmith_mod_i32(reverseBits(_wgslsmith_sub_i32(19507i, -43503i)), -global0.b) >> (2021u % 32u));
}

