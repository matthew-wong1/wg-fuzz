struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: bool) -> vec2<f32> {
    let var_0 = _wgslsmith_add_u32((abs(4294967295u & arg_0) & (_wgslsmith_dot_vec4_u32(vec4<u32>(81919u, 1u, arg_2.x, arg_0), vec4<u32>(u_input.a.x, 0u, arg_2.x, arg_2.x)) << (u_input.a.x % 32u))) | 17742u, arg_0);
    var var_1 = _wgslsmith_dot_vec2_i32(-select(u_input.b.zw, u_input.b.zy, !(false || arg_1.c.x)), -u_input.b.yw ^ -(~(~u_input.b.zy)));
    let var_2 = reverseBits(min(_wgslsmith_add_vec2_u32(~u_input.a.zy, vec2<u32>(var_0, var_0)) | _wgslsmith_clamp_vec2_u32(u_input.a.zy, arg_2.yx, arg_2.xy), ~arg_2.wy));
    var_1 = -30351i;
    var var_3 = -2159f;
    return vec2<f32>(240f, _wgslsmith_f_op_f32(1157f - 138f));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(915f, -453f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1388f, 895f) - vec2<f32>(170f, -797f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(arg_0, Struct_1(10751i, vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec4<u32>(4294967295u, 40071u, 1u, 3851u), false))))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -723f) * _wgslsmith_f_op_f32(trunc(-1502f))), 1949f))));
    let var_1 = !(!any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)));
    var var_2 = Struct_3(-_wgslsmith_dot_vec4_i32(-u_input.b, select(reverseBits(u_input.b), u_input.b | u_input.b, false)));
    let var_3 = Struct_2(~vec2<i32>(~var_2.a, 2147483647i) & ~u_input.c.xy, !any(select(select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(true, true, false, var_1), vec4<bool>(false, var_1, false, var_1)), !vec4<bool>(var_1, var_1, var_1, true), select(vec4<bool>(true, true, true, var_1), vec4<bool>(var_1, false, true, var_1), true))));
    var var_4 = ~vec2<u32>(min(u_input.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.ww), u_input.a.xy)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(arg_0, 137437u)) << (abs(arg_0) % 32u), 4294967295u));
    return !select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_3.b), vec2<bool>(true, var_3.b)), select(vec2<bool>(false, var_1), vec2<bool>(true, true), vec2<bool>(var_3.b, true))), vec2<bool>(var_1, false), all(vec4<bool>(var_3.b, var_1, var_3.b, true))), select(vec2<bool>(u_input.c.x <= -1i, var_1 & false), select(select(vec2<bool>(var_3.b, var_3.b), vec2<bool>(false, false), true), vec2<bool>(var_1, true), select(vec2<bool>(true, var_1), vec2<bool>(var_3.b, true), false)), !select(vec2<bool>(false, false), vec2<bool>(var_3.b, var_1), true)), false);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    return select(!select(select(func_2(arg_2), vec2<bool>(true, false), true), func_2(4294967295u), all(vec2<bool>(true, true))), vec2<bool>(true, arg_3.x >= firstTrailingBit(~u_input.c.x)), !((any(vec4<bool>(false, false, false, true)) || true) & all(vec2<bool>(false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 470f)))))));
    let var_1 = Struct_1(~0i, vec3<bool>(true, true, any(select(vec2<bool>(true, false), func_1(u_input.c.x, vec3<u32>(50405u, 4294967295u, u_input.a.x), u_input.a.x, u_input.b), any(vec3<bool>(true, false, false))))), !select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), all(vec2<bool>(false, true))), vec3<bool>(var_0.x != -680f, true, true), false | any(vec3<bool>(true, true, false))));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-915f)) * -133f) * _wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, Struct_1(141i, vec3<bool>(var_1.b.x, var_1.b.x, true), var_1.b), u_input.a, true)).x)));
    var var_4 = ~(~u_input.a.x);
    var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(firstTrailingBit(~u_input.c), (u_input.b.xzz ^ vec3<i32>(-2147483647i, 2147483647i, -7630i)) >> (~(u_input.a.wzz | u_input.a.zzx) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, var_1.c.x)))) - _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1089f))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -2679f) - vec2<f32>(var_3.x, var_0.x)), func_1(u_input.c.x, vec3<u32>(4294967295u, u_input.a.x, 21009u), 17937u, vec4<i32>(u_input.b.x, -829i, 18176i, 3766i))))))));
}

