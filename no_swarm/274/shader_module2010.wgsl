struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = any(!select(vec4<bool>(arg_1.e.a, true, u_input.a.x != 1i, select(false, true, arg_1.b)), select(!vec4<bool>(false, arg_1.b, arg_1.b, true), select(vec4<bool>(false, true, arg_1.e.a, arg_0), vec4<bool>(arg_1.c, arg_0, true, arg_1.e.a), vec4<bool>(arg_0, arg_1.e.a, arg_0, false)), true), vec4<bool>(arg_0, true, !arg_0, arg_1.d.x < u_input.a.x)));
    let var_1 = arg_1.e;
    var var_2 = arg_1.e.b;
    var_0 = any(vec4<bool>(false, !(any(vec3<bool>(arg_1.c, var_1.a, true)) || all(vec2<bool>(false, false))), true, true));
    let var_3 = var_1.c;
    return select(select(!vec4<bool>(!arg_1.c, true, arg_1.b && true, var_1.a), !vec4<bool>(any(vec2<bool>(true, var_1.a)), !arg_0, 87543i <= u_input.a.x, all(vec2<bool>(arg_1.c, true))), arg_0), vec4<bool>(false, true & (_wgslsmith_f_op_f32(floor(159f)) <= 471f), !(arg_1.b && !var_1.a), true), select(!vec4<bool>(true, !arg_0, false, select(var_1.a, false, false)), select(select(!vec4<bool>(arg_0, arg_1.c, true, var_1.a), !vec4<bool>(arg_1.b, false, var_1.a, arg_1.c), all(vec2<bool>(false, true))), !select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(false, arg_0, arg_1.b, false)), select(select(vec4<bool>(arg_1.c, arg_0, false, true), vec4<bool>(false, false, true, arg_1.c), vec4<bool>(true, true, arg_1.e.a, false)), vec4<bool>(true, arg_0, true, arg_1.b), !vec4<bool>(arg_1.c, false, arg_1.e.a, var_1.a))), any(vec4<bool>(all(vec4<bool>(true, true, true, arg_0)), arg_0, all(vec2<bool>(arg_0, arg_0)), true))));
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = select(!select(func_3(true, Struct_3(vec3<f32>(2206f, 1839f, 2717f), true, true, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 9961i), Struct_2(false, Struct_1(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x)), vec2<u32>(0u, u_input.c))), arg_0.zw), vec4<bool>(true, true, true, true), !(u_input.b >= 13667u)), !vec4<bool>(false, false, all(vec2<bool>(true, true)), func_3(any(vec2<bool>(false, false)), Struct_3(arg_0.yzy, false, true, vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), Struct_2(false, Struct_1(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), vec2<u32>(37995u, 0u))), arg_0.wy).x), vec4<bool>(all(vec3<bool>(arg_0.x != -1153f, true, false)), !select(true, true, true), true, true));
    var var_1 = Struct_1(_wgslsmith_mod_vec4_i32(min(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -78187i), vec4<i32>(u_input.a.x, u_input.a.x, 0i, -24754i)), ~(~vec4<i32>(-1520i, -21937i, u_input.a.x, u_input.a.x))) >> (~vec4<u32>(u_input.b, reverseBits(u_input.c), min(u_input.c, u_input.b), reverseBits(26285u)) % vec4<u32>(32u)));
    let var_2 = 1u;
    var var_3 = any(select(select(vec3<bool>(all(vec4<bool>(false, true, false, var_0.x)), select(var_0.x, var_0.x, var_0.x), var_0.x | var_0.x), !var_0.yxx, !select(var_0.wwz, vec3<bool>(var_0.x, var_0.x, true), var_0.x)), func_3(_wgslsmith_f_op_f32(select(arg_0.x, -593f, false)) < -802f, Struct_3(arg_0.wwx, true, true, vec4<i32>(-1i, -2147483647i, u_input.a.x, 932i), Struct_2(var_0.x, Struct_1(var_1.a), vec2<u32>(9357u, u_input.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 537f)))).zwy, select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !var_0.xzz, !select(vec3<bool>(true, false, false), var_0.ywx, false))));
    let var_4 = (4294967295u & ~_wgslsmith_add_u32(abs(83038u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 22573u), vec2<u32>(var_2, var_2)))) & 1u;
    return vec2<bool>(true, !var_0.x);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = Struct_2(any(func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1417f, -1018f, -175f, 1796f))))), var_0, abs(vec2<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(31385u, 50647u, 1u), vec3<u32>(u_input.b, 1u, u_input.b)))));
    let var_2 = _wgslsmith_f_op_f32(-661f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-586f))))) - 593f));
    var var_3 = false;
    let var_4 = ~u_input.a.x;
    return Struct_2(var_1.a, Struct_1(~_wgslsmith_add_vec4_i32(var_0.a, _wgslsmith_clamp_vec4_i32(var_1.b.a, var_1.b.a, vec4<i32>(-28526i, var_4, u_input.a.x, var_0.a.x)))), min(~(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.x, 0u), vec2<u32>(24365u, 1u)) | vec2<u32>(u_input.b, u_input.b)), var_1.c));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = 1u;
    var_0 = ~arg_1.c.x;
    var var_1 = countOneBits(firstLeadingBit(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(1u, u_input.b, arg_0.x)), vec3<u32>(4294967295u, 4294967295u, 1u)), vec3<u32>(_wgslsmith_mult_u32(71860u, arg_1.c.x), ~arg_2.x, 100289u))));
    var_1 = arg_0.zyw;
    var var_2 = arg_1;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~select((vec4<u32>(42087u, 4294967295u, u_input.c, 1u) >> (vec4<u32>(4294967295u, 24459u, 89301u, 1u) % vec4<u32>(32u))) << (vec4<u32>(0u, u_input.c, u_input.c, 45110u) % vec4<u32>(32u)), ~vec4<u32>(39106u, 93872u, 56605u, u_input.b), vec4<bool>(true, true, true, true)), func_1(Struct_1(-select(vec4<i32>(u_input.a.x, 4615i, u_input.a.x, 66335i), vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), false))), vec4<u32>(4294967295u, ~(~min(u_input.c, 4294967295u)), u_input.c, u_input.c));
    var var_1 = vec3<bool>(!var_0.a, true, true != var_0.a);
    var var_2 = vec3<u32>(~abs(reverseBits(~4294967295u)), 95727u, ~_wgslsmith_mult_u32(~(~var_0.c.x), var_0.c.x));
    var_2 = _wgslsmith_div_vec3_u32(select(~(~(vec3<u32>(46431u, 32911u, var_2.x) ^ vec3<u32>(26952u, 61048u, 10442u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.x, u_input.c, var_0.c.x), ~(~vec3<u32>(76231u, var_0.c.x, var_2.x))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.a, var_1.x), vec3<bool>(false, true, false)), !vec3<bool>(true, false, var_1.x), select(vec3<bool>(var_0.a, true, var_1.x), vec3<bool>(true, true, true), true)), func_3(var_1.x, Struct_3(vec3<f32>(-473f, 395f, 387f), var_0.a, var_1.x, vec4<i32>(46281i, -14114i, 2147483647i, 2147483647i), Struct_2(var_0.a, Struct_1(var_0.b.a), vec2<u32>(var_2.x, u_input.c))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(508f, -1000f)))).wzz, vec3<bool>(var_0.a, true, true))), max(~reverseBits(vec3<u32>(var_2.x, var_0.c.x, var_0.c.x)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, 46089u, var_2.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 88146u, 0u), ~vec3<u32>(70433u, 0u, 22395u)))));
    let var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c ^ ~1u);
}

