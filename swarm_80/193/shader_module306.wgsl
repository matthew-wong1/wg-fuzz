struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32>;

var<private> global2: vec3<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(false, !select(vec4<bool>(global1.x != 1u, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false)), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), true));
    var var_1 = min(_wgslsmith_mult_vec2_u32(global1.zx, vec2<u32>(u_input.c, _wgslsmith_dot_vec4_u32(select(vec4<u32>(global1.x, 1u, global1.x, 4294967295u), vec4<u32>(u_input.d.x, 29823u, 1u, 28304u), vec4<bool>(var_0.a, var_0.b.x, false, true)), reverseBits(vec4<u32>(46212u, 1u, 4294967295u, 0u))))), u_input.d.zz);
    var var_2 = true;
    var_1 = _wgslsmith_div_vec2_u32(~select(vec2<u32>(_wgslsmith_mod_u32(var_1.x, global1.x), ~var_1.x), ~(~u_input.d.xy), any(select(var_0.b.yz, vec2<bool>(false, true), vec2<bool>(true, true)))), ~global1.xx);
    global1 = u_input.d;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1229f * -356f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -141f)))))));
}

fn func_2() -> Struct_1 {
    global0 = -515f <= _wgslsmith_f_op_f32(func_3());
    let var_0 = global2.x;
    let var_1 = select(select(vec4<bool>(1349i >= global2.x, true, false, !select(false, true, false)), !vec4<bool>(true, true, true, global2.x >= u_input.b), all(vec3<bool>(true, true, true)) | (u_input.c == 54227u)), !vec4<bool>(false, any(vec2<bool>(true, true)), !select(true, false, false), true), true | ((~626u << (u_input.d.x % 32u)) <= 4294967295u));
    var var_2 = global1.xz;
    let var_3 = -342f;
    return Struct_1(max(u_input.a, select(u_input.a, _wgslsmith_mod_vec3_i32(u_input.a & vec3<i32>(global2.x, u_input.a.x, u_input.b), -u_input.a), all(vec4<bool>(false, false, var_1.x, true)))), false, !select(var_1.zx, select(!vec2<bool>(true, var_1.x), !var_1.xw, var_3 < var_3), vec2<bool>(false, u_input.e == u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1751f), var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3)) + _wgslsmith_f_op_f32(f32(-1f) * -1400f)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = var_0.b;
    var var_2 = Struct_1(select(func_2().a, -u_input.a, vec3<bool>(any(vec2<bool>(arg_0, var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1011f) > var_0.d.x, any(!vec4<bool>(var_0.c.x, false, arg_0, false)))), !var_0.b || (1u >= global1.x), vec2<bool>(select(false & arg_0, !(!arg_0), ~4294967295u != global1.x), select(abs(-4784i) > _wgslsmith_dot_vec2_i32(global2.xy, vec2<i32>(global2.x, global2.x)), func_2().b, true)), vec3<f32>(-717f, var_0.d.x, var_0.d.x));
    var var_3 = func_2();
    var var_4 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.c);
    var var_1 = func_1(-686f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1673f, 1123f, true)), -979f)));
    let var_2 = Struct_2(var_1.b, !vec4<bool>(any(select(vec4<bool>(false, true, true, var_1.b), vec4<bool>(false, true, true, true), true)), false, !any(vec4<bool>(var_1.b, false, var_1.c.x, var_1.b)), (1i & global2.x) != 1i));
    let var_3 = var_1.a;
    var var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.x)))), -307f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -922f) * _wgslsmith_f_op_f32(615f - var_1.d.x)), func_1(var_1.b).d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-617f, -1000f, _wgslsmith_f_op_f32(159f - var_1.d.x), -749f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1184f, 260f, 846f, 1609f) - vec4<f32>(var_1.d.x, 309f, -1000f, -344f)))))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~abs(~select(var_3.yy, var_3.xz, vec2<bool>(false, false))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(countOneBits(u_input.a), func_2().a, -(~vec3<i32>(49690i, var_1.a.x, -26772i)))));
}

