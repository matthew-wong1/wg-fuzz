struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(0u, 4294967295u, 81477u, 14481u), 12477u, vec4<f32>(-1205f, -478f, -144f, 1000f), true, vec3<f32>(-552f, 383f, 1000f));

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(-38980i, 53104i), vec2<i32>(-12581i, 31590i), vec2<i32>(-44294i, 24892i), vec2<i32>(-12638i, 28699i), vec2<i32>(1i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -22496i));

var<private> global2: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global2 = vec4<bool>(true, true, arg_0.d, global2.x);
    let var_0 = _wgslsmith_dot_vec2_u32((_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.b), vec2<u32>(global0.a.x, arg_0.a.x)) & global0.a.wz) << ((~arg_0.a.yw << (_wgslsmith_add_vec2_u32(global0.a.wx, arg_0.a.zy) % vec2<u32>(32u))) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_u32(global0.a.zz, vec2<u32>(arg_0.b, global0.b)) | u_input.c) | _wgslsmith_clamp_u32((_wgslsmith_div_u32(978u, u_input.c.x) >> ((global0.b >> (u_input.d % 32u)) % 32u)) >> (abs(~arg_0.b) % 32u), u_input.d, 32890u);
    global2 = !(!select(!select(vec4<bool>(true, arg_0.d, true, arg_0.d), vec4<bool>(true, arg_0.d, true, true), true), !vec4<bool>(global0.d, arg_0.d, true, true), true));
    global2 = vec4<bool>(true, 2147483647i == u_input.a.x, global2.x, false);
    var var_1 = global0.c.x;
    return global0.e.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -427f)), -554f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.x - arg_2.c.x) * _wgslsmith_f_op_f32(step(arg_2.c.x, 199f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1405f, -1944f) - _wgslsmith_f_op_f32(-arg_0.c.x))) - vec4<f32>(arg_0.e.x, -554f, _wgslsmith_f_op_f32(-arg_2.e.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1932f, arg_2.c.x))))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-206f, -328f, 195f, -276f)))))));
    global1 = array<vec2<i32>, 7>();
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.e.x, _wgslsmith_f_op_f32(-var_0.x), -1463f, arg_1.c.x)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.e.x * -999f), _wgslsmith_f_op_f32(max(-2089f, global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1704f))), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.e.x - -337f), _wgslsmith_f_op_f32(abs(1000f)))))));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_u32(~(global0.a >> (arg_1.a % vec4<u32>(32u))), ~global0.a) | ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.a, arg_0.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 45798u, arg_3, 65018u), arg_1.a), ~vec4<u32>(0u, 25447u, 0u, 1u)), arg_3, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -448f), _wgslsmith_f_op_f32(f32(-1f) * -995f), -1755f, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.c.x, 47681u, u_input.c.x, u_input.c.x), arg_2.a.x >> (0u % 32u), arg_0.c, true, arg_2.c.ywy)))), _wgslsmith_mult_u32(reverseBits(4294967295u), ~(~global0.b)) < countOneBits(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 41881u), arg_0.a.xyx))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(arg_2.c.zwy)))));
    global3 = array<Struct_1, 26>();
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), abs(u_input.a.x)) << (71583u % 32u)), 0i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(global0.a, arg_3.a)), ~vec4<u32>(17086u, 114408u, 1u, 11698u) | ~vec4<u32>(global0.a.x, 74119u, 0u, arg_1.a.x)), ~vec4<u32>(~4294967295u, firstTrailingBit(global0.b), ~global0.b, 0u)), ~reverseBits(var_0.a.x));
    var var_2 = vec2<u32>(u_input.c.x, 1u);
    var_2 = ~select(var_0.a.yy, u_input.b, global2.wy);
    global3 = array<Struct_1, 26>();
    return Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, 1727u, _wgslsmith_sub_u32(u_input.c.x, 84628u)), ~1u | ~arg_1.b, _wgslsmith_dot_vec2_u32(global0.a.ww, firstTrailingBit(var_0.a.xy)), arg_3.a.x ^ 4294967295u), abs(~(~vec4<u32>(var_2.x, arg_1.a.x, arg_3.a.x, global0.b)))), var_2.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(511f, -251f, global0.c.x, -1525f)))))), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1000f, _wgslsmith_f_op_f32(sign(arg_2)))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: i32) -> bool {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(global0.a.wxy, global0.a.zzy), ~min(global0.a.zyx, global0.a.wyy))), 1u), 26u)];
    let var_0 = global0.c.xyw;
    global1 = array<vec2<i32>, 7>();
    var var_1 = func_4(~((arg_2 & func_2(Struct_1(vec4<u32>(130682u, 4294967295u, 81968u, global0.a.x), 52067u, global0.c, false, vec3<f32>(-727f, global0.e.x, 719f)), Struct_1(global0.a, 1u, vec4<f32>(global0.c.x, var_0.x, -1805f, 1000f), global2.x, vec3<f32>(global0.c.x, var_0.x, global0.e.x)), Struct_1(global0.a, 0u, vec4<f32>(1000f, -736f, 399f, 652f), true, global0.c.ywy), 26054u)) >> (max(57255u, global0.a.x) % 32u)), Struct_1(~_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(47461u, global0.a.x, global0.b, 4294967295u)), _wgslsmith_mod_vec4_u32(global0.a, global0.a)), u_input.c.x, _wgslsmith_f_op_vec4_f32(ceil(global0.c)), any(!(!vec4<bool>(global0.d, false, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-global0.c.xwy)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-506f, _wgslsmith_f_op_f32(-var_0.x)))), global3[_wgslsmith_index_u32(u_input.b.x, 26u)]);
    global2 = select(!vec4<bool>(arg_0, true && !global0.d, global2.x & (-478f >= global0.c.x), true), !vec4<bool>(arg_0, arg_0, true, true || !var_1.d), !(!select(select(vec4<bool>(var_1.d, var_1.d, arg_0, true), vec4<bool>(global0.d, true, var_1.d, arg_0), vec4<bool>(global0.d, true, var_1.d, var_1.d)), !vec4<bool>(false, arg_1, true, global0.d), arg_0)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(vec4<bool>(true, global0.d, global2.x, 2057f != _wgslsmith_div_f32(global0.e.x, -349f)), vec4<bool>(func_1(true, true, -2147483647i), false, !global0.d, true), vec4<bool>(false, global2.x, !(!global0.d), !any(global2.xxy)));
    var var_0 = func_1(false || global2.x, select(false, false, all(vec4<bool>(true, global2.x, global0.d, true))), -1i);
    let var_1 = Struct_1(_wgslsmith_mod_vec4_u32(~(~firstTrailingBit(vec4<u32>(u_input.c.x, u_input.d, 26912u, 43923u))), countOneBits(vec4<u32>(~71682u, ~30252u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global0.a.x, u_input.b.x), vec4<u32>(global0.a.x, 18650u, global0.b, 0u)), 1u))), firstTrailingBit(global0.a.x), vec4<f32>(global0.c.x, -2379f, _wgslsmith_f_op_f32(round(global0.c.x)), global0.c.x), all(!(!select(vec4<bool>(false, true, true, global2.x), vec4<bool>(global0.d, false, global0.d, global0.d), vec4<bool>(true, false, global2.x, false)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.wwz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.e.x, global0.e.x, -1649f))) - vec3<f32>(_wgslsmith_f_op_f32(-global0.e.x), global0.e.x, _wgslsmith_f_op_f32(func_3(Struct_1(global0.a, 0u, global0.c, true, vec3<f32>(1303f, 316f, 213f)))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c.xzy, vec3<f32>(-1000f, global0.c.x, global0.c.x), true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.x);
}

