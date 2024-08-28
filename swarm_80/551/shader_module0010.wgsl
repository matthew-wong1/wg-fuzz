struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<u32>(1u, 55312u, 1u), 46276u, -4533i), Struct_2(vec3<i32>(29438i, 1i, 0i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global1 = Struct_3(global1.a, Struct_2(~firstLeadingBit(~vec3<i32>(global1.b.a.x, global1.b.a.x, global1.b.a.x))));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -1093f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))));
    let var_1 = global1.b;
    global1 = Struct_3(Struct_1(~global1.a.a, ~(~1u), u_input.b.x), global1.b);
    var_0 = arg_0;
    return vec3<u32>(global1.a.a.x, global1.a.b, u_input.a);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = vec2<i32>(-_wgslsmith_mult_i32(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -14970i, -2147483647i, 0i), vec4<i32>(u_input.c, global1.a.c, 7671i, global1.b.a.x))), firstLeadingBit(_wgslsmith_div_i32(countOneBits(reverseBits(u_input.b.x)), ~(0i << (global1.a.a.x % 32u)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(723f, 1000f), vec2<f32>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_0) + vec2<f32>(arg_0, 123f)))))), Struct_1(_wgslsmith_clamp_vec3_u32(global1.a.a, _wgslsmith_clamp_vec3_u32(global1.a.a ^ vec3<u32>(2261u, 91219u, u_input.a), ~global1.a.a, ~vec3<u32>(global1.a.a.x, global1.a.a.x, u_input.a)), ~(global1.a.a ^ vec3<u32>(1u, 1u, 1u))), global1.a.b << (global1.a.a.x % 32u), -1i), 78902u, select(vec4<bool>(all(vec3<bool>(true, true, true)), false, true, (global1.b.a.x < global1.a.c) | true), vec4<bool>(true, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)), func_2(arg_0).x <= 0u, !any(vec3<bool>(true, false, true))), true), Struct_3(global1.a, Struct_2(global1.b.a)));
    let var_2 = _wgslsmith_mod_u32(u_input.a, 1u);
    let var_3 = Struct_4(global1.b, !vec4<bool>(true, true, all(var_1.d), !var_1.d.x), select(select(vec3<bool>(any(var_1.d), true, false), !var_1.d.xwx, false), !vec3<bool>(1u > u_input.a, var_1.d.x, all(var_1.d.zy)), vec3<bool>(var_1.d.x, !var_1.d.x, any(!var_1.d.yxw))));
    global1 = var_1.e;
    return 4294967295u;
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = (func_2(712f) << (~global1.a.a % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(~u_input.a, 94187u, func_3(364f)), ~global1.a.a);
    let var_1 = ~_wgslsmith_mult_i32(~1i, u_input.c);
    let var_2 = Struct_4(Struct_2(vec3<i32>(arg_0.x, -2147483647i, -(1i << (global1.a.a.x % 32u)))), !(!vec4<bool>(false, true, true, u_input.a != global1.a.b)), select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, false)), true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), true)));
    global0 = 1142f;
    return 72282u;
}

fn func_4(arg_0: u32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = !select(vec3<bool>(true, arg_1.d.x, false), select(select(arg_1.d.zxx, vec3<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x), select(arg_1.d.xwz, vec3<bool>(false, arg_1.d.x, false), arg_1.d.yxw)), !vec3<bool>(arg_1.d.x, false, arg_1.d.x), vec3<bool>(true, all(arg_1.d.yyx), arg_1.d.x)), arg_1.d.zzy);
    var var_1 = all(select(arg_1.d.zw, vec2<bool>(any(select(vec4<bool>(true, var_0.x, false, var_0.x), arg_1.d, vec4<bool>(false, true, false, var_0.x))), true), var_0.x));
    var_1 = any(select(!(!(!arg_1.d)), !select(select(arg_1.d, arg_1.d, arg_1.d), vec4<bool>(arg_1.d.x, true, arg_1.d.x, true), select(arg_1.d, vec4<bool>(var_0.x, var_0.x, arg_1.d.x, arg_1.d.x), arg_1.d)), vec4<bool>(!var_0.x, any(arg_1.d.wxz), false, select(var_0.x, !arg_1.d.x, !arg_1.d.x))));
    let var_2 = Struct_3(global1.a, Struct_2(vec3<i32>(u_input.c, -1i, ~_wgslsmith_clamp_i32(-37166i, global1.b.a.x, -14380i))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_4(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(45791u, 55009u, u_input.a, 41893u), vec4<u32>(global1.a.a.x, 45656u, global1.a.b, global1.a.a.x)), 1u), Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1000f), _wgslsmith_div_f32(-1143f, 615f)), global1.a, func_1(~global1.b.a), vec4<bool>(true, true, true, true), Struct_3(Struct_1(global1.a.a, u_input.a, -19662i), global1.b))), global1.b);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(724f, -275f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))))));
    global0 = -1000f;
    let var_0 = global1.b.a;
    var var_1 = global1.b;
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(757f, -233f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1125f, 1759f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(475f, -796f), vec2<f32>(-1739f, 1072f)))))), global1.a, _wgslsmith_clamp_u32(0u, 4294967295u, ~u_input.a), select(select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false), !all(vec3<bool>(true, true, true))), vec4<bool>(!all(vec3<bool>(false, true, false)), false, any(vec3<bool>(false, true, false)), true), true), Struct_3(global1.a, Struct_2(vec3<i32>(-var_0.x, countOneBits(-29195i), firstTrailingBit(-4259i)))));
    global1 = var_2.e;
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(select(vec2<i32>(var_1.a.x, var_1.a.x), vec2<i32>(-2147483647i, 10486i), all(var_2.d.ww)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 2147483647i)) << (var_3.b.a.yy % vec2<u32>(32u))) ^ vec2<i32>(~var_1.a.x >> (~24250u % 32u), var_3.e.a.c), vec3<i32>(max(1i, (var_1.a.x ^ 32637i) ^ (i32(-1i) * -1i)), -2147483647i, var_2.e.a.c), abs(global1.a.a.yy), reverseBits(max(var_2.e.a.a.xy << (global1.a.a.zy % vec2<u32>(32u)), ~global1.a.a.xx)) ^ (~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a.b, 48551u), var_3.b.a.yy) & ~(~vec2<u32>(7196u, var_3.b.b))));
}

