struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, global0.x, true, false), vec4<bool>(true, global0.x, global0.x, global0.x)), true), select(!vec4<bool>(global0.x, true, false, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x), global0.x), true), !vec4<bool>(!global0.x, true, true, false), select(select(vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, false)), true), select(select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x)), vec4<bool>(false, global0.x, true, global0.x), global0.x), global0.x));
    global0 = select(select(select(vec4<bool>(global0.x, true, true, true), !vec4<bool>(global0.x, global0.x, false, global0.x), any(global0.yyx)), select(!vec4<bool>(false, global0.x, false, true), select(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(true, global0.x, false, global0.x), false), !vec4<bool>(false, global0.x, true, true), all(vec3<bool>(false, false, false))), any(!vec3<bool>(true, global0.x, global0.x))), global0.x), select(select(select(vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true), false)), vec4<bool>(global0.x, !global0.x, true && global0.x, global0.x && false), global0.x), vec4<bool>(true, true, true, true), false & (!global0.x | true)), select(vec4<bool>(true, true, false, global0.x), !(!vec4<bool>(global0.x, global0.x, global0.x, false)), !(global0.x || false) || !all(vec2<bool>(false, global0.x))));
    global0 = select(vec4<bool>(global0.x, select(global0.x, true, !global0.x), global0.x, false), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), global0.x, !(!(!global0.x)), all(global0.xx)), true == all(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), global0.x), select(vec4<bool>(global0.x, false, false, global0.x), vec4<bool>(global0.x, true, false, global0.x), false), !vec4<bool>(false, global0.x, false, global0.x))));
    let var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(select(u_input.a, 13682i, global0.x), _wgslsmith_div_i32(u_input.a, u_input.a)), (vec2<i32>(u_input.a, u_input.a) | vec2<i32>(24169i, u_input.a)) | min(vec2<i32>(u_input.a, 19230i), vec2<i32>(u_input.a, -1i))), ~vec2<i32>(~(-2147483647i), u_input.a)), 1i);
    let var_1 = Struct_1(all(select(!(!global0.yxx), vec3<bool>(global0.x, true, global0.x), !select(vec3<bool>(true, false, false), global0.yxy, false))), !all(vec3<bool>(true, !global0.x, global0.x && global0.x)));
    return 1u;
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<bool> {
    global0 = !vec4<bool>(all(!(!vec4<bool>(true, global0.x, false, global0.x))), !any(global0.xzw), ~_wgslsmith_dot_vec2_u32(vec2<u32>(80984u, 36689u), vec2<u32>(27611u, 1u)) > ~func_3(), global0.x);
    let var_0 = Struct_2(abs(6365i), vec4<u32>(~_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 89351u)), firstTrailingBit(vec2<u32>(105305u, 23093u))), min(38265u, 10976u), _wgslsmith_add_u32(~max(1u, 29296u), 1u), ~_wgslsmith_add_u32(88141u, firstLeadingBit(60453u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2486f, -1777f, -983f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(522f, -838f, 170f))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1075f, 1350f, -711f) + vec3<f32>(3319f, -1000f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, 2362f, -1089f)), vec3<bool>(false, false, global0.x)))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, -1710f) + vec3<f32>(-897f, -1230f, -623f)))))), Struct_1(!all(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, false, global0.x, global0.x))), true), global0.xx);
    var var_1 = vec2<i32>(~u_input.a, u_input.a);
    let var_2 = Struct_3(select(vec4<bool>(true, var_0.d.a, !(!var_0.d.a), all(global0.yww)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0.d.a, true, false, false), vec4<bool>(global0.x, true, global0.x, global0.x)), vec4<bool>(global0.x, var_0.d.a, var_0.d.b, global0.x), var_0.d.b), global0.x), ~abs(4294967295u), !any(vec3<bool>(1014f <= var_0.c.x, var_0.d.b, var_0.e.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1169f + var_0.c.x), var_0.c.x)))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_f_op_f32(f32(-1f) * -559f))), var_0.c.x)), var_2.c);
    return !select(!var_2.a, vec4<bool>(true, !any(vec2<bool>(false, false)), true, true), vec4<bool>(!all(var_2.a.xzz), !(!var_3.a), any(!vec2<bool>(var_0.e.x, true)), true));
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_mod_i32(u_input.a, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-63883i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, u_input.a), vec3<i32>(u_input.a, -16586i, u_input.a))), 1i)));
    global0 = select(vec4<bool>(true, !select(any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), false, true), global0.x, true), vec4<bool>(false | any(global0.zx), global0.x, all(select(select(vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, global0.x, false, true), vec4<bool>(true, global0.x, false, global0.x)), vec4<bool>(true, global0.x, global0.x, false), true)), true), select(select(!(!vec4<bool>(true, true, global0.x, false)), vec4<bool>(true, any(vec4<bool>(true, false, false, true)), true, all(global0.wzx)), var_0 < select(var_0, -1i, false)), !select(vec4<bool>(global0.x, false, global0.x, true), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, true, true), true), vec4<bool>(true, global0.x, global0.x, global0.x)), func_2(min(-23090i, -44770i) | _wgslsmith_clamp_i32(var_0, var_0, 18286i), firstTrailingBit(-2147483647i & var_0))));
    global0 = vec4<bool>(global0.x, func_2(-u_input.a, 0i).x, true, false);
    global0 = vec4<bool>(all(global0.zw) & global0.x, global0.x, true, all(select(!vec2<bool>(global0.x, global0.x), select(!vec2<bool>(global0.x, false), !global0.yx, select(global0.yw, global0.yy, global0.x)), global0.zw)));
    var var_1 = 1998f;
    return -(~reverseBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, var_0), vec2<i32>(u_input.a, var_0)), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec2<i32>(-19642i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i) & vec3<i32>(-2147483647i, u_input.a, 6598i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, -1i, 4524i)))), func_1()) ^ vec2<i32>(-24731i, 0i);
    global0 = func_2(_wgslsmith_div_i32(abs(func_1().x), 1i), _wgslsmith_div_i32(var_0.x, -12185i));
    let var_1 = Struct_3(vec4<bool>((_wgslsmith_add_u32(76431u, 73568u) << (select(4294967295u, 0u, false) % 32u)) > 0u, any(global0.xx), !all(global0.zw), false), 1u, global0.x);
    var var_2 = ~(~vec3<u32>(reverseBits(_wgslsmith_add_u32(0u, 18484u)), var_1.b, var_1.b));
    var_0 = ~(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-9153i, 35832i))) ^ vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(var_0.x, u_input.a)), abs(select(u_input.a, u_input.a, false))));
    var var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(firstLeadingBit(var_1.b), ~var_1.b, ~var_1.b)), vec3<i32>(-1i, _wgslsmith_mod_i32(~30759i, ~(~(-17912i))), 1i >> (abs(var_2.x) % 32u)), vec2<u32>(func_3(), ~(~(~1u))));
}

