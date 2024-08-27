struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_4 = Struct_4(Struct_1(128f), vec4<i32>(1i, i32(-2147483648), 0i, 0i));

var<private> global2: f32 = -351f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a, -670f, 838f) + vec3<f32>(arg_1.a.a, 1444f, arg_0.a.a))))))));
    let var_1 = false;
    let var_2 = Struct_4(arg_0.a, abs(arg_1.b) >> ((~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 42666u), vec4<u32>(0u, 14659u, u_input.b, 0u)) >> (~vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
    global0 = -2147483647i;
    return !select(select(vec2<bool>(var_1, var_1), vec2<bool>(true, true), select(!vec2<bool>(var_1, true), select(vec2<bool>(true, var_1), vec2<bool>(var_1, false), false), !vec2<bool>(var_1, var_1))), vec2<bool>(true, true), false);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: u32) -> f32 {
    let var_0 = !any(func_3(Struct_4(global1.a, select(global1.b, u_input.c, vec4<bool>(false, arg_1, arg_1, arg_1))), Struct_4(global1.a, global1.b)));
    var var_1 = Struct_5(Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 9952u), firstTrailingBit(vec2<u32>(1u, 45671u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-112f, global1.a.a) * _wgslsmith_f_op_f32(global1.a.a * -960f)), global1.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a * global1.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -194f)))), Struct_1(-1052f), !vec2<bool>(!any(vec2<bool>(var_0, false)), func_3(Struct_4(Struct_1(global1.a.a), vec4<i32>(1i, -2147483647i, -39830i, arg_0)), Struct_4(Struct_1(global1.a.a), global1.b)).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(959f, -134f, global1.a.a, global1.a.a) * vec4<f32>(global1.a.a, global1.a.a, -1000f, global1.a.a)))))), Struct_3(max(~u_input.b, u_input.b) ^ _wgslsmith_sub_u32(arg_2, u_input.b), -1723f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(582f * 825f), _wgslsmith_f_op_f32(1376f * global1.a.a))))));
    let var_2 = Struct_5(var_1.a, Struct_1(-2314f), var_1.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_1.a.c, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2438f), _wgslsmith_f_op_f32(round(global1.a.a)), _wgslsmith_f_op_f32(-var_1.a.b)) + var_1.d), var_1.d), Struct_3(~abs(~14942u), -841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a - 1000f)))));
    var_1 = Struct_5(var_2.e, var_1.b, !func_3(Struct_4(Struct_1(var_2.b.a), vec4<i32>(-1i, 12400i, 56284i, 15018i) << (vec4<u32>(u_input.b, 4294967295u, 84225u, 62401u) % vec4<u32>(32u))), Struct_4(Struct_1(133f), global1.b)), vec4<f32>(414f, _wgslsmith_f_op_f32(-1f), var_2.a.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-227f, 2232f)), 685f))), var_2.e);
    let var_3 = var_1.b;
    return var_1.e.c;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(27403u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f) * global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2((u_input.a << (35972u % 32u)) | abs(19600i), all(vec2<bool>(true, true)), min(32283u & u_input.b, _wgslsmith_clamp_u32(5741u, u_input.b, u_input.b))))));
    let var_1 = _wgslsmith_sub_vec3_i32(global1.b.zzw, _wgslsmith_mod_vec3_i32(u_input.c.zzw, -firstLeadingBit(~vec3<i32>(-1i, 48331i, global1.b.x))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1603f, var_0.c, global1.a.a))) + vec3<f32>(var_0.c, -680f, 1742f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_0.b, global1.a.a) - vec3<f32>(var_0.c, 2455f, global1.a.a)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-426f, 486f, global1.a.a), vec3<f32>(var_0.b, 654f, var_0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.c)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global1.a.a, var_0.b)))), vec3<bool>(true, true, true))) - vec3<f32>(global1.a.a, 867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) - var_0.b))));
    let var_3 = vec3<u32>(_wgslsmith_clamp_u32(var_0.a, firstTrailingBit(~62503u), ~var_0.a), 1u, 97210u);
    let var_4 = Struct_1(-689f);
    return Struct_4(Struct_1(var_2.x), -_wgslsmith_sub_vec4_i32(firstLeadingBit(countOneBits(vec4<i32>(global1.b.x, 31289i, 1i, u_input.a))), vec4<i32>(22250i, 1i, -37651i, var_1.x) << (firstLeadingBit(vec4<u32>(31118u, var_0.a, var_3.x, 4294967295u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = func_1();
    let var_2 = var_1.b.zxy;
    let var_3 = ~(~min(vec3<u32>(0u, 33450u, u_input.b), vec3<u32>(min(u_input.b, u_input.b), 0u, u_input.b)));
    global2 = 1656f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a.a, var_1.a.a, var_1.a.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-776f, global1.a.a, var_1.a.a))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, var_1.a.a, 772f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, -1206f, 1000f)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(252f, 2262f, global1.a.a), vec3<f32>(1554f, var_1.a.a, -1184f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.a, var_1.a.a, 703f) * vec3<f32>(var_1.a.a, var_1.a.a, -617f)))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(193f + -1110f), global1.a.a)))), var_1.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1033f, var_1.a.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.a, var_1.a.a), vec2<f32>(212f, 457f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, global1.a.a) - vec2<f32>(-421f, global1.a.a)))), any(vec3<bool>(true, true, true)))));
}

