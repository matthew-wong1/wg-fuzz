struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_2.x & arg_2.x, 16738u), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~firstTrailingBit(4294967295u)), vec2<u32>(~u_input.b, 80934u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.x >> (arg_2.x % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 53155u), vec2<u32>(u_input.b, arg_2.x))), vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4294967295u, u_input.b), arg_2)))));
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(-575f * 1000f), false), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -857f), arg_1 > -1000f), false), Struct_1(-772f, any(vec4<bool>(true, arg_0.x, arg_0.x, true)) || arg_0.x), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f + arg_1)), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(abs(-430f)))))), any(!arg_0)));
    var var_2 = var_1.c;
    let var_3 = Struct_3(var_1.a, Struct_2(Struct_1(228f, var_1.c.b), var_1.b, 4294967295u == _wgslsmith_mult_u32(select(arg_2.x, 1u, false), ~51239u)));
    var var_4 = !(!vec2<bool>(true, var_2.b));
    return var_3.a.a.a;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = -reverseBits(-(vec2<i32>(u_input.a.x, global0.x) & u_input.a.zz) | global0.yz);
    global0 = (countOneBits(u_input.a) | ~u_input.a) >> ((select(abs(abs(vec3<u32>(u_input.b, 1u, 1u))), vec3<u32>(u_input.b, u_input.b, 0u) & vec3<u32>(u_input.b, 357u, 6137u), arg_0) >> ((abs(~vec3<u32>(1u, 30937u, u_input.b)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 55225u, 1u), abs(vec3<u32>(0u, u_input.b, 4294967295u))) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = _wgslsmith_sub_i32(global0.x, 1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, arg_1.b.a, arg_1.a.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.a.a, arg_1.b.a, -3066f))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-688f, arg_1.b.a, -292f), vec3<f32>(arg_1.a.a, 942f, 1161f), arg_0)))))));
    let var_3 = firstTrailingBit(~(~abs(_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a.a, 1005f, arg_1.a.a), vec3<f32>(var_2.x, 454f, 442f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a.a, -171f, 445f), vec3<f32>(var_2.x, 1012f, var_2.x)))))))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(true, Struct_2(Struct_1(-550f, all(vec4<bool>(true, false, true, false))), Struct_1(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false), 2658f, vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b))), all(vec2<bool>(true, false))), true))));
    var var_1 = global0.x ^ -31372i;
    let var_2 = vec2<bool>(false, any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec4<bool>(false, true, false, true)))) | (all(vec2<bool>(true, true)) | true));
    let var_3 = all(select(!(!vec3<bool>(true, var_2.x, var_2.x)), vec3<bool>(var_2.x, (50556u < u_input.b) || true, any(!vec3<bool>(var_2.x, false, true))), any(select(!vec4<bool>(var_2.x, false, var_2.x, var_2.x), select(vec4<bool>(var_2.x, false, false, true), vec4<bool>(var_2.x, var_2.x, true, true), true), select(vec4<bool>(true, true, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, var_2.x), vec4<bool>(false, var_2.x, true, false))))));
    let var_4 = u_input.a;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-943f)) - -1061f)), true), Struct_1(_wgslsmith_f_op_f32(-var_0.x), var_2.x), var_2.x);
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = u_input.a;
    let var_0 = vec2<i32>(1i, u_input.a.x);
    global0 = u_input.a;
    global0 = countOneBits(u_input.a);
    let var_1 = Struct_3(func_2(), Struct_2(arg_0, func_2().a, arg_0.b));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(12578i, global0.x, u_input.a.x >> (17528u % 32u));
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec2_u32(select(~reverseBits(vec2<u32>(1u, u_input.b)), ~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(9674u, u_input.b)), vec2<bool>(func_1(Struct_1(-1857f, true)), true)), ~(~(~vec2<u32>(0u, 4294967295u)))));
    let var_1 = !(!vec4<bool>(true, (global0.x != u_input.a.x) & true, false, ~4294967295u <= _wgslsmith_sub_u32(u_input.b, 29835u)));
    global0 = _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(-1i, -1i | _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(13506i, u_input.a.x)), _wgslsmith_sub_i32(global0.x, _wgslsmith_mult_i32(31703i, 0i)))) >> ((max(vec3<u32>(var_0.x, abs(u_input.b), _wgslsmith_div_u32(4294967295u, u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 35269u) | vec3<u32>(0u, 14286u, u_input.b), ~vec3<u32>(var_0.x, u_input.b, 29060u))) >> (~_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, var_0.x, 72934u), vec3<u32>(var_0.x, 0u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(any(var_1.wz), func_2())).x)));
}

