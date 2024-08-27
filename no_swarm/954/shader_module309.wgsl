struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(all(!(!vec2<bool>(false, global0.a)))), Struct_1(true), Struct_1(true), Struct_1(global0.a), !select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, global0.a)), vec2<bool>(false, global0.a), global0.a), !(!vec2<bool>(global0.a, global0.a)), any(select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, true, false), true))));
    var var_1 = Struct_1(!(!(!global0.a)) || !all(!vec4<bool>(var_0.e.x, var_0.c.a, true, true)));
    var var_2 = Struct_1(all(vec3<bool>(!(false || global0.a), all(!var_0.e), all(select(vec4<bool>(global0.a, true, global0.a, var_1.a), vec4<bool>(var_0.c.a, false, var_1.a, false), vec4<bool>(true, false, global0.a, false))))));
    return -1542f;
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec4<bool>(!(u_input.a.x == _wgslsmith_clamp_u32(14793u, ~u_input.a.x, reverseBits(u_input.a.x))), !(select(!global0.a, false, true) || true), true, all(select(select(vec4<bool>(false, false, false, global0.a), vec4<bool>(true, true, true, true), !global0.a), !vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(global0.a, all(vec2<bool>(true, global0.a)), global0.a, true))));
    var var_1 = vec4<f32>(660f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1813f)), _wgslsmith_f_op_f32(func_3()))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1086f - 109f) + -902f)) - 492f), 248f, -156f);
    let var_2 = _wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mult_i32(-15283i, -(~arg_0.x)), i32(-1i) * -1i);
    var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -2271f, var_1.x, -311f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1347f, -2120f, var_1.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, -1181f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, 491f, var_1.x, var_1.x)) - vec4<f32>(1133f, _wgslsmith_f_op_f32(283f + -1344f), _wgslsmith_f_op_f32(trunc(1581f)), var_1.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -608f, var_1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 817f) * vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * -633f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(364f, 872f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1479f - -3056f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -169f))), _wgslsmith_f_op_f32(250f + 714f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_i32(-vec3<i32>(34038i, 24381i, -1i), firstLeadingBit(vec3<i32>(-1i, 36294i, -19861i))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-699f * -800f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1140f)))))), 1749f);
    global0 = Struct_1(!global0.a);
    var var_1 = vec3<bool>(global0.a, _wgslsmith_f_op_f32(var_0.x * -1731f) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.x * var_0.x))))), any(vec4<bool>(true, true, global0.a, all(vec4<bool>(global0.a, true, global0.a, global0.a)))));
    var_1 = vec3<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(18757i, 31458i, -1i, 23617i), vec4<i32>(-3579i, -15716i, 52594i, -1i) << (vec4<u32>(u_input.a.x, 53971u, 4294967295u, 0u) % vec4<u32>(32u))) > 3427i) & !(true && global0.a), !any(select(vec4<bool>(false, false, var_1.x, false), vec4<bool>(var_1.x, global0.a, var_1.x, false), vec4<bool>(true, true, var_1.x, var_1.x))), !var_1.x);
    let var_2 = select(select(var_1.xz, select(!(!vec2<bool>(global0.a, var_1.x)), select(var_1.zz, !var_1.zx, any(vec4<bool>(var_1.x, true, true, global0.a))), false), global0.a), !var_1.yz, !var_1.zx);
    return Struct_1(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = Struct_2(Struct_1(!global0.a), func_1(), func_1(), func_1(), !(!vec2<bool>(true, global0.a)));
    var var_1 = Struct_2(func_1(), Struct_1(true), Struct_1(false), func_1(), var_0.e);
    global0 = var_0.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -166f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f)));
    var var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~((57048u ^ u_input.a.x) & 0u)));
}

