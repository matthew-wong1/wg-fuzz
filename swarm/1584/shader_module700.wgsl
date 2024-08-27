struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-583f - -594f), _wgslsmith_f_op_f32(-1040f - arg_0.x), -378f)))), ~firstLeadingBit(vec3<u32>(80906u, 22339u, _wgslsmith_div_u32(u_input.d, u_input.c))));
    var var_1 = Struct_5(all(select(!vec3<bool>(true, global0.x, global0.x), vec3<bool>(false, any(vec4<bool>(true, global0.x, true, false)), global0.x), vec3<bool>(global0.x, select(global0.x, global0.x, global0.x), any(vec3<bool>(global0.x, global0.x, false))))), vec3<bool>(all(vec4<bool>(true, u_input.b <= u_input.b, true, true)), any(select(vec3<bool>(global0.x, global0.x, false), !vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, false))), true), u_input.a, vec4<bool>(true, false, !any(select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), global0.x)), !global0.x), (true == !(!global0.x)) == !global0.x);
    var var_2 = ~vec2<u32>(select(min(4294967295u, 1u) | var_0.b.x, ~(~var_0.b.x), !all(vec3<bool>(global0.x, true, var_1.b.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(32156u, var_1.c.x, var_1.c.x), vec3<u32>(69530u, u_input.d, u_input.c)) ^ var_0.b.x);
    global1 = firstTrailingBit(reverseBits(u_input.c));
    let var_3 = Struct_5(!((~8866i | (u_input.b & 11522i)) == u_input.b), select(select(var_1.d.xwy, var_1.b, all(vec4<bool>(true, true, true, true))), var_1.b, var_0.b.x < 28906u), var_0.b, !var_1.d, true);
    return ~19952i;
}

fn func_2() -> u32 {
    let var_0 = vec2<i32>(abs(~u_input.b), _wgslsmith_mult_i32(func_3(vec3<f32>(1f, 1f, 1f)), min(~u_input.b, u_input.b ^ u_input.b)) << (1u % 32u));
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(u_input.a.x, ~(~12891u))), abs(~vec2<u32>(4294967295u, 1u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-572f, 1018f) * vec2<f32>(-1000f, 1023f)), vec2<f32>(157f, -596f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -368f), 739f), select(vec2<bool>(global0.x, false), !vec2<bool>(false, global0.x), select(global0.x, true, global0.x)))))) - vec2<f32>(899f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -864f), _wgslsmith_f_op_f32(f32(-1f) * -1142f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(543f, var_2.x), vec2<f32>(var_2.x, -251f)))))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1074f, 281f) + vec2<f32>(1000f, 140f))))));
    var var_3 = vec2<i32>(-1i) * -var_0;
    return ~(~(~(~u_input.c))) >> (var_1.x % 32u);
}

fn func_1() -> vec2<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(min(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-49923i, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, 1i, u_input.b, 1i))), _wgslsmith_mod_i32(~u_input.b, _wgslsmith_mult_i32(1i, u_input.b)), ~u_input.b << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u), u_input.b), _wgslsmith_mod_vec4_i32(-(vec4<i32>(-4269i, u_input.b, u_input.b, -2147483647i) << (vec4<u32>(u_input.c, 47762u, u_input.a.x, 18121u) % vec4<u32>(32u))), vec4<i32>(u_input.b, u_input.b, u_input.b, _wgslsmith_sub_i32(1i, u_input.b)))));
    global0 = select(!(!(!(!vec2<bool>(global0.x, global0.x)))), !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global0.x, false), false), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), global0.x)), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(all(vec3<bool>(global0.x, global0.x, global0.x)), !global0.x)), global0.x);
    global0 = vec2<bool>(any(vec3<bool>(func_2() <= _wgslsmith_dot_vec4_u32(vec4<u32>(27089u, 4294967295u, 18050u, 23976u), vec4<u32>(4294967295u, u_input.a.x, 4669u, u_input.a.x)), all(vec4<bool>(global0.x, true, global0.x, false)) | global0.x, !global0.x)), reverseBits(u_input.d >> (u_input.c % 32u)) > (24762u >> ((u_input.c >> (~u_input.d % 32u)) % 32u)));
    global1 = ~u_input.a.x;
    global0 = select(vec2<bool>(all(vec3<bool>(true, true, global0.x || global0.x)), -1i < var_0.x), vec2<bool>(all(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, false, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, global0.x)))), 0u <= u_input.d), !vec2<bool>(true, global0.x));
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2244f - _wgslsmith_f_op_f32(step(513f, -738f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -567f)), all(!select(!vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(global0.x, false, global0.x, global0.x), !global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global0 = vec2<bool>(!any(func_1()), global0.x);
    let var_1 = ~vec2<u32>(u_input.d, 29084u);
    var var_2 = Struct_4(Struct_2(vec3<u32>(~1u, func_2(), abs(45537u)) << (~select(vec3<u32>(u_input.c, u_input.a.x, 1u), vec3<u32>(var_1.x, u_input.a.x, var_1.x), vec3<bool>(global0.x, false, global0.x)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, var_0), vec2<f32>(var_0, -402f))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, -1453f))))))));
    let var_3 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, _wgslsmith_f_op_f32(step(-152f, var_0)), _wgslsmith_f_op_f32(sign(784f)))))), var_2.a, select(vec4<bool>(true, !global0.x || global0.x, !(!global0.x), select(global0.x, true, !global0.x)), vec4<bool>(true, true, !global0.x, func_2() != u_input.d), global0.x), Struct_2(~var_2.a.a, vec2<f32>(_wgslsmith_f_op_f32(-1172f * _wgslsmith_f_op_f32(var_0 - var_2.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1504f))));
    let var_4 = Struct_3(var_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(876f, 1183f, var_0)), var_3.b, u_input.b == 0i)))) - var_3.b), var_3.c, select(var_3.d, select(vec4<bool>(true, true, true, var_2.a.b.x <= var_2.a.b.x), vec4<bool>(true, global0.x && false, !global0.x, global0.x), var_3.d), select(!var_3.d, var_3.d, true)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.b) * var_3.b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_4.b, var_4.b))), !((u_input.b & u_input.b) >= _wgslsmith_clamp_i32(19730i, u_input.b, u_input.b)))), var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + 215f)));
}

