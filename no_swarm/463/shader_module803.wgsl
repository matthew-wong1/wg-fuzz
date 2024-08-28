struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-122f, -1345f)), _wgslsmith_f_op_f32(max(-413f, 1000f)))))));
    var var_1 = ~countOneBits(u_input.e);
    var var_2 = var_0.a.a;
    var_0 = Struct_2(var_0.a);
    global0 = u_input.e;
    return u_input.d;
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_i32(-5727i, u_input.d, _wgslsmith_mod_i32(func_2(), 22030i << (~4294967295u % 32u))) <= ~1i;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(697f, 1369f))))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1153f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-786f + -2986f), _wgslsmith_f_op_f32(317f * -1617f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2119f, 230f) + vec2<f32>(664f, -1847f))))));
    var var_2 = Struct_2(Struct_1(var_1.x));
    let var_3 = vec4<u32>(~u_input.e, u_input.e, ~92614u, ~1u);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(1104f))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-874f, var_2.a.a, false))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.c, -_wgslsmith_mod_i32(u_input.c, u_input.d)), vec2<i32>(u_input.d, -1i)), u_input.c);
    var var_1 = vec3<bool>(false, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, 558u <= u_input.e, any(vec3<bool>(true, true, true)), true), !any(vec2<bool>(true, false)))));
    let var_2 = func_1(vec2<i32>(-38069i, _wgslsmith_div_i32((u_input.d << (82533u % 32u)) | -38750i, -27760i))).a;
    var var_3 = _wgslsmith_sub_i32(~func_2(), reverseBits(_wgslsmith_div_i32(abs(u_input.c) & u_input.c, 0i)));
    var var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(762f, 1330f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(603f, var_2.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) + vec2<f32>(var_2.a, 514f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_2.a) - vec2<f32>(var_2.a, var_2.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, -1000f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, -772f)))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-733f, var_2.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)), vec2<bool>(false, false)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(-102250i, _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(u_input.c, u_input.d)), -_wgslsmith_clamp_i32(12786i, -43840i, -2147483647i))), -min((u_input.d << (u_input.e % 32u)) >> (1u % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(1i, 13238i))), -36511i, u_input.d);
    let var_1 = func_1(var_0.yx);
    var var_2 = _wgslsmith_div_f32(var_1.a.a, -272f);
    let var_3 = false;
    var var_4 = func_1(~(-(-vec2<i32>(17345i, var_0.x) ^ min(var_0.xw, vec2<i32>(u_input.c, -1i)))));
    var var_5 = vec4<i32>(var_0.x, abs(var_0.x), var_0.x, ~2147483647i);
    var var_6 = _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(~(~59170u) >> (_wgslsmith_clamp_u32(u_input.b, 58012u, ~u_input.e) % 32u), 0u));
    global0 = _wgslsmith_mult_u32(0u, select(u_input.e, min(51797u, _wgslsmith_add_u32(min(u_input.b, u_input.b), 30546u << (0u % 32u))), any(vec3<bool>(true, !var_3, func_3()))));
    var var_7 = func_1(~var_5.xw);
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~_wgslsmith_dot_vec2_u32(abs(max(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, 103844u))), vec2<u32>(69355u, u_input.e)));
}

