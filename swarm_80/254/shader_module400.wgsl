struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(84444u, 1u, 53358u);

var<private> global1: Struct_4 = Struct_4(false, vec3<f32>(1064f, -284f, -2160f), -605f, vec2<bool>(false, false));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_5) -> vec3<bool> {
    let var_0 = arg_2.e.a.b;
    let var_1 = Struct_1(select(!var_0.a, vec3<bool>(true, true | (14055i <= u_input.a.x), true), arg_2.e.a.b.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.c)), -311f), -2184f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(trunc(arg_1.c))) * _wgslsmith_div_vec4_f32(var_0.b, vec4<f32>(2339f, arg_2.a.b.x, arg_2.e.a.c, global1.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(567f - -541f)), arg_2.a.c), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.c, var_0.b.x)), _wgslsmith_f_op_f32(sign(arg_2.e.a.b.c))))))));
    var var_2 = Struct_4(true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-211f, _wgslsmith_f_op_f32(f32(-1f) * -403f), _wgslsmith_div_f32(global1.c, 365f)))), _wgslsmith_dot_vec2_u32(arg_2.c.zx, vec2<u32>(arg_0, u_input.c) >> (vec2<u32>(55381u, arg_0) % vec2<u32>(32u))) > arg_0)), 1991f, var_1.a.yy);
    global1 = arg_2.a;
    var var_3 = arg_2.e.a.b;
    return arg_2.e.a.b.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<i32> {
    global0 = select(vec3<u32>(~45135u, 0u, 1u), firstTrailingBit(vec3<u32>(44425u, ~31507u, 4294967295u)), select(select(!vec3<bool>(false, global1.a, global1.a), !select(vec3<bool>(true, true, global1.a), vec3<bool>(true, false, false), false), global0.x < ~u_input.c), select(select(!vec3<bool>(true, global1.a, true), !vec3<bool>(global1.d.x, arg_1.x, false), false), func_3(~u_input.c, Struct_4(false, global1.b, -1205f, vec2<bool>(global1.a, true)), Struct_5(Struct_4(arg_1.x, vec3<f32>(global1.c, -845f, arg_0.x), -153f, vec2<bool>(arg_1.x, arg_1.x)), global1.d, vec3<u32>(u_input.c, 37060u, 1342u), 0u, Struct_3(Struct_2(vec4<f32>(1412f, -351f, arg_0.x, global1.c), Struct_1(vec3<bool>(false, global1.a, false), arg_0, global1.b.x), global1.b.x, u_input.b.x)))), true), select(select(vec3<bool>(true, true, false), vec3<bool>(arg_1.x, true, arg_1.x), global0.x <= 26780u), func_3(u_input.c, Struct_4(false, vec3<f32>(-277f, 967f, -525f), -547f, vec2<bool>(arg_1.x, global1.d.x)), Struct_5(Struct_4(true, arg_0.ywx, arg_0.x, vec2<bool>(arg_1.x, global1.d.x)), vec2<bool>(true, arg_1.x), vec3<u32>(4243u, 19152u, global0.x), u_input.c, Struct_3(Struct_2(arg_0, Struct_1(vec3<bool>(false, arg_1.x, false), vec4<f32>(arg_0.x, arg_0.x, -1684f, global1.c), arg_0.x), 503f, -16854i)))), !global1.a || true)));
    var var_0 = _wgslsmith_clamp_i32(u_input.a.x, ~17818i, u_input.a.x) << (u_input.c % 32u);
    global0 = firstTrailingBit(~_wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 1u), vec3<u32>(u_input.c, 0u, 4294967295u))), min(vec3<u32>(global0.x, 19591u, global0.x) ^ vec3<u32>(u_input.c, 1u, 35549u), ~vec3<u32>(u_input.c, 55353u, u_input.c)), abs(~vec3<u32>(u_input.c, 4294967295u, 1u))));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1f, -420f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1063f), -1209f)))));
    return abs(~(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -30016i, 27745i), u_input.a.wwy)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = u_input.a.wxz ^ func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.b.x, -1913f, -1236f))))), vec2<bool>(false, any(!vec3<bool>(true, global1.a, true))));
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c))), !(!(!global1.d)));
    global0 = abs(vec3<u32>(arg_0, ~526u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, abs(global0.x), abs(4294967295u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(10215u, global0.x, 79907u), vec3<u32>(global0.x, global0.x, global0.x)))));
    let var_1 = select(select(vec4<bool>(all(select(vec3<bool>(true, true, global1.d.x), vec3<bool>(global1.d.x, true, global1.d.x), vec3<bool>(true, global1.d.x, global1.d.x))), func_3(global0.x, Struct_4(global1.a, global1.b, global1.c, global1.d), Struct_5(Struct_4(global1.d.x, vec3<f32>(819f, -396f, -161f), global1.b.x, vec2<bool>(global1.d.x, global1.a)), vec2<bool>(true, global1.a), vec3<u32>(0u, 25480u, 1u), 4294967295u, Struct_3(Struct_2(vec4<f32>(global1.c, 1180f, -889f, 786f), Struct_1(vec3<bool>(global1.d.x, global1.a, true), vec4<f32>(-708f, global1.c, 187f, global1.b.x), global1.c), global1.b.x, var_0.x)))).x, any(vec3<bool>(true, false, global1.a)), global1.d.x), vec4<bool>(false, all(vec4<bool>(false, global1.d.x, false, global1.d.x)), false, func_3(u_input.c, Struct_4(global1.a, vec3<f32>(-1745f, 395f, global1.c), 1695f, vec2<bool>(global1.d.x, true)), Struct_5(Struct_4(true, vec3<f32>(-1145f, -195f, global1.c), global1.c, vec2<bool>(global1.d.x, global1.d.x)), global1.d, vec3<u32>(u_input.c, u_input.c, 0u), arg_0, Struct_3(Struct_2(vec4<f32>(global1.c, global1.c, -387f, 1000f), Struct_1(vec3<bool>(true, true, global1.d.x), vec4<f32>(global1.b.x, global1.c, global1.b.x, -775f), global1.c), global1.c, u_input.a.x)))).x), !(!vec4<bool>(global1.a, false, false, global1.a))), !select(select(vec4<bool>(true, false, global1.d.x, global1.d.x), select(vec4<bool>(global1.d.x, false, false, global1.d.x), vec4<bool>(global1.d.x, true, global1.a, global1.a), vec4<bool>(global1.a, global1.d.x, global1.a, global1.a)), vec4<bool>(global1.d.x, true, false, true)), vec4<bool>(true, global1.a, false, global1.d.x & global1.a), vec4<bool>(true, any(vec4<bool>(global1.a, global1.d.x, global1.a, false)), true, select(global1.a, global1.d.x, true))), select(vec4<bool>(true || global1.a, func_3(u_input.c, Struct_4(false, global1.b, global1.c, vec2<bool>(global1.a, global1.d.x)), Struct_5(Struct_4(true, vec3<f32>(global1.c, 1100f, global1.c), 261f, global1.d), vec2<bool>(false, false), vec3<u32>(56056u, global0.x, arg_0), 53534u, Struct_3(Struct_2(vec4<f32>(261f, global1.c, -426f, global1.b.x), Struct_1(vec3<bool>(false, global1.a, false), vec4<f32>(global1.b.x, -752f, 275f, global1.b.x), -131f), global1.b.x, arg_1.x)))).x, true, global1.d.x), !select(!vec4<bool>(global1.a, false, global1.a, true), select(vec4<bool>(false, global1.a, global1.a, global1.a), vec4<bool>(true, global1.d.x, global1.d.x, true), vec4<bool>(global1.a, global1.d.x, true, global1.d.x)), !vec4<bool>(global1.a, true, false, global1.a)), vec4<bool>(global1.d.x, false, select(true, arg_1.x >= u_input.a.x, global1.d.x), any(vec4<bool>(global1.a, true, false, false)) & all(global1.d))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1215f, -592f, -234f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, global1.b.x, global1.c, -604f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 179f, 1626f, -1000f) - vec4<f32>(-728f, -1621f, -134f, global1.b.x))) * vec4<f32>(global1.c, _wgslsmith_f_op_f32(min(432f, 343f)), _wgslsmith_f_op_f32(select(-439f, global1.c, true)), _wgslsmith_f_op_f32(global1.b.x + -851f)))), Struct_1(vec3<bool>(!global1.d.x, select(any(vec4<bool>(global1.a, var_1.x, var_1.x, false)), true, true), !(!global1.a)), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(617f - 144f)), global1.c, _wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(-global1.b.x), var_0.x);
    return Struct_4(var_2.b.a.x || var_1.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.b)) + vec3<f32>(813f, _wgslsmith_f_op_f32(f32(-1f) * -105f), _wgslsmith_f_op_f32(-729f * global1.c))))), _wgslsmith_f_op_f32(global1.b.x + global1.c), vec2<bool>(false, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(1u, vec3<i32>(-1i) * -abs(u_input.a.zxw));
    var var_0 = Struct_3(Struct_2(vec4<f32>(global1.c, global1.c, _wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-550f, global1.c, global1.d.x)) - global1.b.x)), Struct_1(vec3<bool>(global1.d.x, true, global1.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, -265f, global1.b.x, 1613f)), _wgslsmith_f_op_f32(1046f - _wgslsmith_f_op_f32(global1.b.x - 1795f))), _wgslsmith_f_op_f32(step(-1056f, _wgslsmith_f_op_f32(-global1.b.x))), u_input.a.x));
    var var_1 = 63989u;
    var var_2 = func_1(global0.x, vec3<i32>(reverseBits(-u_input.a.x << (~u_input.c % 32u)), _wgslsmith_div_i32(reverseBits(var_0.a.d), -2147483647i << (global0.x % 32u)), 1i));
    var_2 = Struct_4(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(global1.b))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.c, -693f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.x, var_0.a.a.x, 134f)))) + var_0.a.a.wwy)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-652f)), global1.b.x, all(vec4<bool>(true, true, all(vec2<bool>(var_2.a, global1.d.x)), any(global1.d))))), var_2.d);
    var var_3 = countOneBits(reverseBits(firstLeadingBit(~firstTrailingBit(vec4<u32>(3054u, 0u, u_input.c, global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_clamp_vec4_i32(~vec4<i32>(var_0.a.d, var_0.a.d, -11601i, 1i), select(vec4<i32>(49124i, u_input.a.x, 39i, -2497i), vec4<i32>(0i, 1i, var_0.a.d, u_input.b.x), vec4<bool>(var_2.a, true, var_0.a.b.a.x, false)), vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, var_0.a.d)) & ~u_input.a), firstLeadingBit(vec2<u32>(4294967295u, var_3.x)), _wgslsmith_f_op_f32(select(-1217f, 967f, select(func_1(var_3.x, vec3<i32>(-1i, -47514i, 0i)).d.x, !func_1(1u, vec3<i32>(1i, u_input.a.x, 31600i)).a, 21792i <= u_input.b.x))));
}

