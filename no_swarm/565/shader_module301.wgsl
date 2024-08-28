struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec4<f32> {
    var var_0 = Struct_1(false, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-1519f * _wgslsmith_f_op_f32(356f * global1.a.x))))), arg_0.x);
    var var_1 = 1415f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)) + 1854f);
    let var_2 = any(vec4<bool>(var_0.a, var_0.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-3025i, -43962i), u_input.a) >= -9149i, var_0.a));
    global0 = u_input.c;
    global0 = countOneBits(~firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(vec3<u32>(1106u, 1u, var_0.c), u_input.c), select(vec3<u32>(arg_0.x, 1u, arg_0.x), u_input.c, true))));
    return vec4<f32>(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), var_0.b)))), -391f, 868f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(748f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, false)))))) * _wgslsmith_f_op_f32(-191f - global1.a.x)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(330f, global1.a.x, global1.a.x, global1.a.x), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.x, 304f, global1.a.x, global1.a.x), _wgslsmith_f_op_vec4_f32(func_3(u_input.c.zz))))));
    let var_0 = Struct_1(any(vec4<bool>(all(vec2<bool>(true, false)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-819f, -1063f)))), global0.x);
    var var_1 = global1.a.x;
    var_1 = var_0.b;
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(global1.a))))))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> Struct_4 {
    let var_0 = !all(select(vec2<bool>(true, true), vec2<bool>(arg_0.b > arg_0.b, arg_3.a), !arg_1.xy));
    global0 = vec3<u32>(arg_0.c, firstTrailingBit(_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(36435u, arg_2, arg_0.c))), 56543u)), abs(arg_0.c));
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.a.x, -605f), _wgslsmith_f_op_f32(f32(-1f) * -982f), _wgslsmith_f_op_f32(abs(-1205f)), _wgslsmith_f_op_f32(1795f * arg_3.b)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-237f, arg_3.b, 376f, 292f))))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3.b, 434f, arg_3.b, arg_3.b))) * _wgslsmith_f_op_vec4_f32(global1.a + vec4<f32>(arg_0.b, arg_0.b, global1.a.x, arg_0.b))))), vec2<bool>(!(true && arg_3.a), arg_0.a), arg_3);
    var var_2 = 1i;
    let var_3 = vec2<bool>(true, !(all(select(vec2<bool>(arg_3.a, arg_1.x), vec2<bool>(true, arg_0.a), arg_1.xz)) & (all(arg_1.yxy) & all(vec2<bool>(arg_1.x, arg_3.a)))));
    return Struct_4(Struct_3(abs(-20611i), Struct_1(any(select(var_3, var_1.c, vec2<bool>(arg_1.x, var_3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.a.x * 1677f) + -462f), arg_3.c), true), select(select(select(select(vec3<bool>(arg_0.a, var_3.x, var_1.c.x), arg_1.zwz, arg_1.zwy), !arg_1.zwy, !vec3<bool>(arg_3.a, var_1.c.x, true)), vec3<bool>(true, true, true), vec3<bool>(var_1.d.a, !arg_0.a, all(vec2<bool>(arg_3.a, true)))), !select(vec3<bool>(true, true, true), !arg_1.xyw, var_1.d.a), true), var_1.d);
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: vec2<bool>) -> vec3<u32> {
    global1 = Struct_2(global1.a);
    let var_0 = arg_2.a.a;
    let var_1 = ~vec4<i32>(1i, arg_2.a.a, firstLeadingBit(0i), _wgslsmith_sub_i32(reverseBits(-41136i | u_input.b), var_0));
    let var_2 = Struct_2(global1.a);
    global0 = u_input.c;
    return vec3<u32>(~57937u, 0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, arg_0), reverseBits(countOneBits(global0.x))), 1u));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> Struct_1 {
    global0 = func_5(4037u, all(vec3<bool>(false, false, true)), func_4(func_2(min(vec3<u32>(24513u, u_input.e, 0u), vec3<u32>(1u, u_input.c.x, 108613u))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, func_2(vec3<u32>(u_input.c.x, global0.x, 0u)).a, any(vec3<bool>(true, true, true)), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false))), u_input.c.x, Struct_1(true, global1.a.x, global0.x)), select(func_4(Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -1357f), ~13059u), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, false, false, false)), global0.x, func_2(u_input.c)).b.yx, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), true));
    let var_0 = firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, -arg_0.x), min(vec2<i32>(44067i, arg_0.x), u_input.a)));
    let var_1 = 19266i;
    let var_2 = any(!select(vec4<bool>(u_input.e == 8724u, any(vec3<bool>(true, true, true)), true, true), vec4<bool>(false, u_input.c.x >= u_input.c.x, func_2(u_input.c).a, true), vec4<bool>(false, true, true, select(true, true, false))));
    var var_3 = Struct_5(Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(-781f, global1.a.x, -924f, global1.a.x)))))), Struct_2(global1.a), vec2<bool>(true, true), func_2(u_input.c));
    return var_3.d;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> StorageBuffer {
    var var_0 = arg_1;
    var var_1 = ~firstTrailingBit(u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-655f, arg_0.c.b)), _wgslsmith_f_op_f32(-arg_0.a.b.b))))))));
    let var_3 = vec2<i32>(~arg_0.a.a, _wgslsmith_dot_vec3_i32(vec3<i32>(func_4(arg_0.c, vec4<bool>(true, arg_0.c.a, true, arg_0.b.x), 42318u, Struct_1(arg_0.c.a, -856f, u_input.c.x)).a.a, select(-2147483647i, u_input.a.x, arg_0.b.x), 0i) << (u_input.c % vec3<u32>(32u)), abs(firstTrailingBit(vec3<i32>(arg_0.a.a, -11301i, 0i))) >> ((~u_input.c ^ u_input.c) % vec3<u32>(32u))));
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.yy, ~u_input.c.xx), ~vec2<u32>(~_wgslsmith_add_u32(arg_0.c.c, 0u), _wgslsmith_mult_u32(func_1(vec4<i32>(-18770i, -1i, arg_0.a.a, -1i), var_3.x).c, u_input.c.x)));
    return StorageBuffer(~(~(~global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(115f, -1000f, global1.a.x, -1165f), vec4<f32>(global1.a.x, global1.a.x, global1.a.x, -1817f)) + _wgslsmith_div_vec4_f32(global1.a, vec4<f32>(-1619f, -1172f, global1.a.x, global1.a.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(330f, global1.a.x, -537f, -234f), global1.a) - _wgslsmith_f_op_vec4_f32(global1.a + global1.a)))));
    global1 = Struct_2(vec4<f32>(-1866f, -1088f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.x, -1376f), _wgslsmith_f_op_f32(floor(global1.a.x)))), -407f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(global1.a.x * global1.a.x)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(global1.a.wwy + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(1819f, -610f), 2557f, -1365f))), global1.a.zwx)));
    let x = u_input.a;
    s_output = func_6(Struct_4(Struct_3(u_input.d, func_1(vec4<i32>(u_input.b, u_input.b, 11729i, u_input.d) >> (vec4<u32>(5160u, 5121u, 4294967295u, 1u) % vec4<u32>(32u)), u_input.b), !any(vec4<bool>(true, false, false, true))), select(vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), func_4(Struct_1(false, -599f, u_input.e), vec4<bool>(false, false, false, false), 1u, Struct_1(false, var_0.x, 4294967295u)).b), any(func_4(Struct_1(false, global1.a.x, 4294967295u), vec4<bool>(true, false, false, true), u_input.c.x, Struct_1(false, global1.a.x, global0.x)).b.xx)), func_1(-vec4<i32>(u_input.a.x, -1231i, 0i, -24373i), -34346i << (abs(global0.x) % 32u))), Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x - global1.a.x))) - -1000f));
}

