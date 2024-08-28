struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -911f)) * 2021f);
    global0 = 118f;
    global0 = arg_1.x;
    var var_0 = Struct_2(arg_0.a.e, !(!arg_0.a.d.xz));
    var_0 = Struct_2(Struct_1(var_0.a.a, ~(~_wgslsmith_mod_vec4_u32(arg_0.a.e.b, vec4<u32>(6510u, u_input.a, 1u, 0u)))), select(!arg_0.a.d.xw, arg_0.a.d.yw, any(arg_0.a.d.wyz)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_1.wyy))));
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-127f - _wgslsmith_f_op_f32(f32(-1f) * -793f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(689f)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2322f, -1095f, -1080f), vec3<f32>(531f, -1512f, -286f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1125f, -1273f, -160f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(u_input.b.x, u_input.b.x, Struct_1(u_input.b.x, vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, u_input.a)), vec4<bool>(false, false, true, false), Struct_1(-2147483647i, vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 51684u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 422f, var_0.x, var_0.x))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1567f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(-1i, u_input.b.x, Struct_1(0i, vec4<u32>(1u, 42245u, 15396u, 0u)), vec4<bool>(false, true, true, false), Struct_1(1i, vec4<u32>(51895u, u_input.c.x, 4294967295u, u_input.c.x)))), vec4<f32>(-171f, 1027f, var_0.x, var_0.x))).x))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1903f * 370f))), -724f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true))))));
    return Struct_4(Struct_3(~u_input.b.x, _wgslsmith_clamp_i32(abs(-1i), firstTrailingBit(u_input.b.x), u_input.b.x), Struct_1(u_input.b.x, ~(~vec4<u32>(u_input.a, u_input.a, 0u, 66206u))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), true), all(vec2<bool>(false, true))), vec4<bool>(u_input.a != 13138u, true, true, true)), Struct_1(max(47171i, -51228i), min(vec4<u32>(u_input.c.x, 1u, u_input.a, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 2919u, u_input.c.x), vec4<u32>(4294967295u, u_input.a, 60868u, u_input.c.x))))));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(-2147483647i, _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.a, 1u), vec4<u32>(u_input.c.x, 7451u, 4294967295u, 0u))), abs(vec4<u32>(u_input.c.x, 1u, 61749u, u_input.a) | vec4<u32>(26627u, u_input.a, 11916u, 0u)), vec4<u32>(countOneBits(u_input.a << (u_input.c.x % 32u)), ~(~u_input.a), _wgslsmith_div_u32(u_input.c.x, _wgslsmith_mult_u32(4232u, u_input.c.x)), u_input.a)));
    var var_1 = (u_input.c.xy >> (var_0.b.xx % vec2<u32>(32u))) ^ var_0.b.zy;
    var var_2 = func_2();
    var var_3 = var_2.a;
    let var_4 = u_input.a;
    return -1697f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1087f;
    global0 = -1103f;
    global0 = _wgslsmith_f_op_f32(func_1());
    global0 = _wgslsmith_f_op_f32(floor(724f));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1588f + _wgslsmith_f_op_f32(f32(-1f) * -2122f)))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_4(func_2().a), vec4<f32>(_wgslsmith_f_op_f32(trunc(1555f)), 134f, 1778f, -811f))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f * 1227f)))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))));
    let var_0 = Struct_1(0i, ~vec4<u32>(u_input.c.x, ~min(u_input.a, u_input.c.x), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_div_u32(4294967295u, 18031u), u_input.a), countOneBits(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 0u))));
    global0 = -1624f;
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_add_vec4_u32(var_0.b, vec4<u32>(12052u, u_input.c.x, u_input.c.x, 4294967295u) << (vec4<u32>(u_input.c.x, u_input.c.x, var_0.b.x, 4294967295u) % vec4<u32>(32u))), vec4<u32>(u_input.a << (45477u % 32u), u_input.c.x, reverseBits(0u), u_input.a), vec4<bool>(true, select(true, true, false), any(vec4<bool>(true, false, true, false)), true)), abs(var_0.b.x), abs(-var_0.a), 159f);
}

