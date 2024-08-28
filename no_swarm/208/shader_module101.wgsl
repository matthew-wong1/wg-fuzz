struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> bool {
    global0 = array<Struct_2, 32>();
    let var_0 = true;
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1283f)), 464f))) * 403f));
    var var_2 = u_input.b.x;
    let var_3 = !(!vec3<bool>(var_0, arg_1.x, all(select(vec4<bool>(true, false, var_0, arg_1.x), vec4<bool>(true, true, false, var_0), vec4<bool>(var_0, var_0, true, arg_1.x)))));
    return any(!select(var_3, select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, true, var_3.x), select(vec3<bool>(false, false, true), var_3, true)), var_3));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(321f, -1000f, -1204f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(530f, 402f, 281f), vec3<f32>(-853f, 412f, 931f))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -246f), -627f, _wgslsmith_f_op_f32(f32(-1f) * -106f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1489f, 2328f, -559f))) * vec3<f32>(1f, _wgslsmith_f_op_f32(select(-1820f, 465f, arg_0.x)), _wgslsmith_div_f32(3079f, 1157f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(642f, 197f, -450f)) - vec3<f32>(_wgslsmith_f_op_f32(sign(533f)), -496f, _wgslsmith_f_op_f32(f32(-1f) * -329f)))));
    global0 = array<Struct_2, 32>();
    let var_1 = Struct_3(vec4<f32>(var_0.x, 1280f, _wgslsmith_f_op_f32(-669f - var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), 985f)), -1109f))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, 1325f, !arg_0.x)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(sign(-183f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, 196f), _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, arg_0.x)), 328f), var_1.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(var_0.x, -292f, var_1.a.x, 343f))), _wgslsmith_f_op_vec4_f32(var_1.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, -1601f, var_0.x, var_1.a.x))), all(arg_0.wy))))));
    var var_3 = u_input.a >> (reverseBits(u_input.a) % 32u);
    return !arg_0.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    var var_0 = !vec4<bool>(true, false, !(!(76402u == u_input.a)), true);
    global0 = array<Struct_2, 32>();
    var var_1 = vec4<bool>(!func_2(vec3<f32>(_wgslsmith_div_f32(-2316f, -1057f), _wgslsmith_f_op_f32(select(-281f, 920f, var_0.x)), _wgslsmith_f_op_f32(1392f * -778f)), var_0.wz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1312f, 1465f, 996f, 826f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 244f, -1000f, 106f) - vec4<f32>(-202f, 1199f, 203f, 323f)))), !(func_3(!vec4<bool>(var_0.x, true, false, false)) && false), var_0.x, var_0.x);
    var var_2 = Struct_2(_wgslsmith_dot_vec2_u32(arg_0.yx, vec2<u32>(firstTrailingBit(1u), arg_0.x)), arg_0 << (~arg_0 % vec3<u32>(32u)), Struct_1(u_input.b.x, max(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(71008u, 45717u, 0u, arg_0.x)), max(vec4<u32>(arg_0.x, arg_0.x, u_input.a, arg_0.x), vec4<u32>(u_input.a, 4294967295u, u_input.a, 37667u))), vec4<u32>(112596u, 13931u, 7652u, arg_0.x) << (~vec4<u32>(u_input.a, arg_0.x, 27555u, arg_0.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1587f * _wgslsmith_f_op_f32(1388f + -234f)))), Struct_1(~0i, select(vec4<u32>(1u, 20244u, ~45446u, select(u_input.a, 39859u, false)), ~vec4<u32>(0u, arg_0.x, 1u, arg_0.x), var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-767f - 293f)))), vec4<bool>(true, (any(vec4<bool>(var_1.x, false, true, var_0.x)) & select(var_0.x, false, var_0.x)) & (!var_1.x & false), true, true));
    let var_3 = var_2.e;
    return max(var_2.d.b.x, 31116u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(~1u, func_1(~(~(vec3<u32>(21379u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u)))), ~firstTrailingBit(~u_input.b.x)));
    var var_1 = Struct_5(629f);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-327f, -219f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.a, var_1.a))), vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), all(vec4<bool>(true, true, false, true)) || true)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1689f, var_1.a) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, -1000f), vec2<f32>(var_1.a, var_1.a), false)))))));
    global0 = array<Struct_2, 32>();
    var var_3 = 432f;
    var var_4 = _wgslsmith_div_f32(-289f, 703f) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(835f, -651f, true))))))));
    var var_5 = _wgslsmith_f_op_f32(var_2.x * var_2.x);
    var var_6 = Struct_1(~(~(~firstTrailingBit(-3729i))), ~(~vec4<u32>(u_input.a, 39700u, u_input.a, u_input.a) & ~reverseBits(vec4<u32>(u_input.a, 4294967295u, 9791u, u_input.a))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1336f)));
}

