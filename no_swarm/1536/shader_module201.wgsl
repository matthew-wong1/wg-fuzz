struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = min(~vec4<u32>(0u, ~(~0u), global1.c, max(_wgslsmith_dot_vec2_u32(global1.d.xz, vec2<u32>(global1.c, 4294967295u)), ~0u)), countOneBits(~(~vec4<u32>(28316u, global1.d.x, 0u, global1.d.x))));
    let var_1 = ~countOneBits(abs(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, -2147483647i), arg_0.a.x)));
    global1 = arg_0;
    var var_2 = all(!(!arg_0.b));
    global1 = arg_0;
    return !arg_0.b.x;
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = true;
    let var_1 = Struct_2(max(_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(-2147483647i), global1.a.x, ~global1.a.x), ~vec3<i32>(-50774i, u_input.a.x, 7934i) | -arg_0.a.wwy), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, 1i, u_input.a.x), -max(u_input.a, arg_0.a.zxz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x)) + global0.xz)), Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(max(arg_0.a.x, -2147483647i), _wgslsmith_dot_vec2_i32(global1.a.ww, vec2<i32>(2147483647i, 1i)), _wgslsmith_clamp_i32(-1i, 22716i, global1.a.x), 1i), vec4<i32>(_wgslsmith_mult_i32(arg_0.a.x, arg_0.a.x), -2147483647i, arg_0.a.x, arg_0.a.x), vec4<i32>(-8546i, _wgslsmith_clamp_i32(global1.a.x, -2147483647i, u_input.a.x), 1i, -41920i)), vec4<bool>(false, false, all(!vec2<bool>(var_0, true)), global1.b.x), _wgslsmith_mult_u32(arg_0.c, 1u >> (1u % 32u)), firstTrailingBit(~min(vec3<u32>(11651u, 4294967295u, 1u), global1.d)), vec3<bool>(arg_0.b.x, arg_0.b.x, false || func_3(arg_0, -108f))));
    var var_2 = Struct_1(var_1.c.a, select(vec4<bool>(global1.e.x, (var_1.b.x <= -350f) || false, !(var_1.b.x > global0.x), !var_0 | var_0), !(!global1.b), !global1.e.x), ~_wgslsmith_div_u32(var_1.c.d.x, countOneBits(1u)), reverseBits(_wgslsmith_div_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 8141u, arg_0.c), vec3<u32>(1u, global1.c, 61440u), arg_0.d), vec3<u32>(arg_0.d.x, arg_0.d.x, var_1.c.d.x) << (global1.d % vec3<u32>(32u))), arg_0.d << (~vec3<u32>(var_1.c.d.x, 1u, 4294967295u) % vec3<u32>(32u)))), arg_0.e);
    var var_3 = Struct_1(var_1.c.a, vec4<bool>(true || (any(vec4<bool>(var_0, var_2.e.x, true, arg_0.e.x)) || var_1.c.e.x), arg_0.e.x, false, arg_0.b.x), _wgslsmith_div_u32(~max(var_2.c, global1.d.x), ~(~(~var_2.d.x))), _wgslsmith_mod_vec3_u32(global1.d, ~(~var_2.d)), select(select(vec3<bool>(true, true, true), vec3<bool>(var_0, global1.b.x, true), false), vec3<bool>(var_0, true || var_0, var_1.c.e.x), arg_0.b.xxx));
    var var_4 = global1.c;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, -994f, global0.x), vec4<f32>(2088f, var_1.b.x, 386f, -549f))) * _wgslsmith_div_vec4_f32(vec4<f32>(1906f, global0.x, global0.x, 1052f), vec4<f32>(var_1.b.x, global0.x, 764f, var_1.b.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1201f, -975f, 716f, var_1.b.x))))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(floor(156f)), global0.x, -314f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1522f, 232f, 1000f, var_1.b.x))), vec4<bool>(true, any(vec2<bool>(var_0, true)), false, !var_3.b.x)))), select(vec4<bool>(arg_0.e.x, var_0, true, arg_0.e.x), !select(select(arg_0.b, vec4<bool>(arg_0.b.x, true, var_2.b.x, true), vec4<bool>(false, var_3.e.x, var_1.c.b.x, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(var_3.e.x, false, false, true), var_1.c.b), var_2.b), var_1.c.b)));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>) -> vec4<f32> {
    global1 = arg_0.c;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1202f), _wgslsmith_f_op_f32(851f * 136f), global0.x, arg_1)) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-611f, -867f), _wgslsmith_f_op_f32(round(arg_1)))), -341f, arg_0.b.x)));
    let var_0 = arg_0.a;
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(select(global1.a, firstLeadingBit(arg_0.c.a), true), vec4<bool>(arg_0.c.e.x, !arg_0.c.b.x, true, global1.e.x != arg_0.c.b.x), ~1u, vec3<u32>(51081u, _wgslsmith_mult_u32(arg_0.c.d.x, 20838u), global1.d.x), vec3<bool>(true, func_3(arg_0.c, global0.x), global1.e.x)))), vec4<f32>(_wgslsmith_f_op_f32(abs(-472f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1)), -201f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * arg_1)))), -306f)));
    let var_1 = arg_0.c;
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1351f), -1000f, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, arg_0.b.x), _wgslsmith_f_op_f32(global0.x - arg_0.b.x)), _wgslsmith_f_op_f32(round(global0.x)));
}

fn func_1() -> u32 {
    let var_0 = 2147483647i;
    let var_1 = global1.c;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, -281f), _wgslsmith_f_op_f32(global0.x * -1000f), 751f, global0.x) - _wgslsmith_f_op_vec4_f32(func_2(Struct_2(u_input.a.x, vec2<f32>(global0.x, global0.x), Struct_1(vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -1i), global1.b, global1.d.x, global1.d, global1.b.zxy)), _wgslsmith_f_op_f32(f32(-1f) * -363f), select(global1.b, global1.b, vec4<bool>(false, true, global1.b.x, false))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(384f, -584f, -1812f, global0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 473f, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1114f, global0.x, 1187f, -1069f)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1141f + global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1120f, 1000f)) - _wgslsmith_f_op_f32(abs(-159f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1118f * global0.x))), 778f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, 239f, 1000f, global0.x)))));
    let var_2 = abs(-(u_input.a.zz | firstLeadingBit(firstTrailingBit(vec2<i32>(var_0, u_input.a.x)))));
    let var_3 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.x)))), global0.x, 608f);
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(1467u, 1u, func_1() | min(24940u, 4294967295u), _wgslsmith_mult_u32(~global1.d.x, ~0u)) & firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(global1.c, global1.d.x, global1.c, 49604u), vec4<u32>(global1.c, global1.c, 21145u, global1.c))), vec4<u32>(min(global1.c, global1.d.x), global1.d.x, ~(~global1.c), global1.c), select(_wgslsmith_sub_vec4_u32(select(~vec4<u32>(84901u, 4294967295u, 77192u, 1u), vec4<u32>(28970u, 1u, 4294967295u, 4294967295u), select(global1.b, vec4<bool>(false, true, false, global1.b.x), global1.b)), vec4<u32>(~global1.d.x, ~global1.c, firstTrailingBit(global1.c), ~global1.d.x)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global1.d.x, 3630u, 71637u, global1.c), ~vec4<u32>(2625u, global1.d.x, global1.c, 8710u))), true));
    var var_1 = global1.b.x;
    var_0 = vec4<u32>(global1.c, 46446u, ~global1.c, _wgslsmith_mult_u32(_wgslsmith_mod_u32(4294967295u, global1.c), var_0.x));
    global1 = Struct_1(global1.a, global1.b, ~_wgslsmith_mod_u32(~0u, var_0.x), _wgslsmith_div_vec3_u32(~vec3<u32>(firstLeadingBit(98375u), 1u, 1u), vec3<u32>(global1.c, ~max(3761u, 4294967295u), _wgslsmith_add_u32(select(global1.c, global1.d.x, global1.e.x), global1.d.x))), select(global1.b.yzz, vec3<bool>(global1.e.x, abs(var_0.x) > (var_0.x | 4294967295u), global1.b.x), vec3<bool>(false, all(vec2<bool>(false, global1.b.x)), all(global1.e.xx))));
    var var_2 = true & global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -44645i, u_input.a.x, -14375i), vec4<i32>(-30677i, -1i, global1.a.x, global1.a.x)), u_input.a.x), vec2<i32>(-48005i, ~13845i) ^ vec2<i32>(firstTrailingBit(-21533i), i32(-1i) * -15993i)));
}

