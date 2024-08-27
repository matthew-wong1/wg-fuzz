struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global0 = vec3<bool>(!(~max(arg_1.a.x, u_input.c) >= u_input.d), false, arg_1.d);
    let var_0 = vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstLeadingBit(7984i)) << (reverseBits(~vec3<u32>(4294967295u, max(411u, 1u), min(arg_1.a.x, 0u))) % vec3<u32>(32u));
    var var_1 = arg_1.e;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.c.x), 212f) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1389f, arg_1.c.x, arg_1.e))))), vec3<f32>(1136f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(557f - arg_1.c.x), 298f), arg_0.c.x))));
    global0 = select(vec3<bool>(!arg_0.b, !(global0.x & true), !arg_1.b), select(select(vec3<bool>(!arg_0.d, global0.x && arg_1.b, arg_1.b), vec3<bool>(any(vec4<bool>(global0.x, arg_0.b, true, false)), arg_1.d, global0.x), false), select(!vec3<bool>(arg_0.d, true, global0.x), select(vec3<bool>(arg_1.b, global0.x, true), vec3<bool>(global0.x, false, arg_0.b), vec3<bool>(true, true, global0.x)), all(select(vec2<bool>(arg_0.b, false), global0.zy, vec2<bool>(arg_0.d, arg_0.d)))), !any(select(global0.zx, vec2<bool>(arg_1.d, global0.x), global0.yy))), vec3<bool>(all(vec4<bool>(!global0.x, global0.x, any(vec4<bool>(arg_0.d, global0.x, false, false)), all(vec3<bool>(global0.x, false, false)))), true, arg_0.d));
    return !(!(!select(vec3<bool>(arg_1.b, global0.x, arg_1.d), vec3<bool>(arg_1.d, global0.x, false), select(vec3<bool>(arg_0.b, arg_0.d, global0.x), vec3<bool>(true, true, arg_1.d), vec3<bool>(global0.x, true, arg_0.b)))));
}

fn func_2() -> Struct_1 {
    global0 = !select(select(vec3<bool>(true, true, true), func_3(Struct_1(vec2<u32>(u_input.c, u_input.c), false, vec4<f32>(-1290f, 215f, -664f, 964f), true, -2762f), Struct_1(vec2<u32>(0u, 4294967295u), false, vec4<f32>(-3145f, 504f, 1776f, 1285f), global0.x, -171f)), !(!vec3<bool>(global0.x, global0.x, global0.x))), vec3<bool>(select(all(vec3<bool>(global0.x, global0.x, false)), global0.x, global0.x), any(vec3<bool>(false, global0.x, true)), select(global0.x, !global0.x, global0.x)), select(vec3<bool>(false, global0.x || true, true), func_3(Struct_1(vec2<u32>(0u, u_input.d), false, vec4<f32>(379f, 1576f, 747f, -1521f), global0.x, 414f), Struct_1(vec2<u32>(25411u, 0u), false, vec4<f32>(1065f, 621f, -206f, -751f), false, 286f)), select(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, false), vec3<bool>(false, global0.x, global0.x)), func_3(Struct_1(vec2<u32>(23308u, u_input.c), global0.x, vec4<f32>(-1000f, 798f, -252f, 1000f), false, 299f), Struct_1(vec2<u32>(u_input.c, 856u), global0.x, vec4<f32>(867f, 550f, 672f, 592f), global0.x, -620f)), global0.x)));
    var var_0 = Struct_1(vec2<u32>(39938u, 49167u), global0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-186f, _wgslsmith_f_op_f32(-1000f - -759f), _wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(f32(-1f) * -137f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(308f, -1178f, 1019f, 116f) - vec4<f32>(-897f, -255f, 842f, 193f)))))), false, -1052f);
    let var_1 = reverseBits(-1i);
    var var_2 = countOneBits(select(~(~vec4<u32>(1u, u_input.d, var_0.a.x, 0u)), ~select(vec4<u32>(30167u, 4294967295u, 26733u, 25433u), vec4<u32>(var_0.a.x, u_input.c, 67354u, 45117u), vec4<bool>(true, var_0.d, false, global0.x)) | vec4<u32>(~4294967295u, 4294967295u, var_0.a.x, var_0.a.x), true));
    var var_3 = Struct_1(abs(vec2<u32>(0u, var_0.a.x)), 1312i == ((-2147483647i >> (_wgslsmith_clamp_u32(0u, 5920u, var_0.a.x) % 32u)) >> (_wgslsmith_dot_vec2_u32(var_2.zx, ~vec2<u32>(7290u, u_input.c)) % 32u)), vec4<f32>(var_0.e, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(210f + var_0.e)), -721f)), _wgslsmith_f_op_f32(ceil(1f)), var_0.c.x), var_1 <= -abs(-8169i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.e)))), _wgslsmith_f_op_f32(f32(-1f) * -427f)));
    return Struct_1(var_3.a, (1i > firstTrailingBit(firstTrailingBit(u_input.a.x))) | all(!(!vec3<bool>(var_3.d, var_0.d, true))), _wgslsmith_f_op_vec4_f32(var_0.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_3.c)) - _wgslsmith_f_op_vec4_f32(-var_3.c))), var_3.b, -731f);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = arg_1.d != ((_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), _wgslsmith_div_vec2_u32(arg_2.a, vec2<u32>(1u, 4294967295u))) ^ (arg_1.a.x & ~1u)) >= ~4294967295u);
    let var_2 = Struct_1(abs(countOneBits(arg_1.a)), global0.x, _wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(_wgslsmith_f_op_f32(step(arg_2.c.x, _wgslsmith_f_op_f32(trunc(1051f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1583f, 1026f) * _wgslsmith_div_f32(671f, -358f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -994f))), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)));
    var_0 = func_2();
    var_0 = var_2;
    return select(select(!vec3<bool>(arg_2.b, var_2.d, var_0.d), !select(vec3<bool>(true, true, true), vec3<bool>(var_1, false, arg_1.b), select(vec3<bool>(false, true, arg_2.b), vec3<bool>(arg_1.b, var_1, arg_1.b), false)), arg_2.d || true), !vec3<bool>(!(0u <= var_2.a.x), true, !(!var_1)), var_0.b);
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    global0 = func_4(u_input.a.yyz, func_2(), func_2());
    let var_0 = select(arg_1, vec3<bool>(~select(u_input.d, u_input.c, false) <= _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 0u, 92781u, u_input.c)), reverseBits(vec4<u32>(u_input.d, 67344u, u_input.c, 31997u))), true, func_4(u_input.a.xxy, func_2(), func_2()).x), firstLeadingBit(u_input.b.x ^ 0i) < u_input.b.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1030f + 792f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(352f, 703f), vec2<f32>(-677f, 973f))))))));
    global0 = !var_0;
    var var_2 = Struct_1(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(firstLeadingBit(27581u), u_input.c), func_2().a)), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1005f, 909f, var_1.x, -447f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) + vec4<f32>(var_1.x, -1000f, -617f, 2127f))))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(913f, var_1.x) + var_1.x));
    return Struct_1(var_2.a, !var_2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_div_f32(-610f, var_2.c.x), var_1.x, _wgslsmith_f_op_f32(var_2.e + -1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -105f, 720f, -168f), vec4<f32>(var_1.x, var_1.x, 179f, var_2.c.x), select(vec4<bool>(var_2.b, arg_0, arg_1.x, false), vec4<bool>(true, global0.x, global0.x, true), arg_1.x))) - var_2.c)), arg_0, var_1.x);
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    return func_4(u_input.a.yzy, func_2(), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !func_5(func_1(!(!global0.x), !select(vec3<bool>(global0.x, false, global0.x), vec3<bool>(true, false, false), vec3<bool>(global0.x, global0.x, true))));
    global0 = vec3<bool>(global0.x, _wgslsmith_f_op_f32(select(1205f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(134f * -1066f))), !select(true, false, true))) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1512f * -290f), _wgslsmith_f_op_f32(600f + -1279f), true)), _wgslsmith_f_op_f32(step(-1118f, func_1(global0.x, vec3<bool>(true, true, false)).c.x)))), func_2().b);
    let var_0 = abs(vec3<u32>(_wgslsmith_div_u32(abs(u_input.c), ~u_input.c >> (~u_input.c % 32u)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(12114u, u_input.c), reverseBits(u_input.d)), 37257u));
    global0 = select(select(!(!(!vec3<bool>(global0.x, true, true))), vec3<bool>(false, global0.x, global0.x), true), func_4(vec3<i32>(13056i, u_input.b.x, ~u_input.a.x), func_2(), func_2()), !select(func_5(Struct_1(vec2<u32>(49519u, 75948u), false, vec4<f32>(-396f, 640f, -446f, -1610f), true, -929f)), vec3<bool>(true, true, true), true));
    global0 = vec3<bool>(true, false || (_wgslsmith_mod_i32(-u_input.a.x, -2147483647i) == -abs(u_input.a.x)), true);
    var var_1 = global0.zz;
    var var_2 = -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, reverseBits(-1i), u_input.a.x, u_input.b.x)), vec4<i32>(abs(1996i), ~(-u_input.b.x), u_input.b.x, countOneBits(1i)));
    let var_3 = all(func_5(Struct_1(var_0.zx, all(vec3<bool>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-735f, -1628f, -2441f, -722f), vec4<f32>(1241f, 1000f, -1000f, -471f), global0.x)), !var_1.x, 831f))) & (_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.x, u_input.b.x, 1i) << (max(77732u, 112833u) % 32u), select(min(-1i, u_input.a.x), abs(u_input.a.x), true)) > -(~4696i));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(func_2().e, _wgslsmith_f_op_f32(max(2600f, 133f)), _wgslsmith_f_op_f32(f32(-1f) * -219f), 373f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-689f, 1449f, 1000f, 622f), vec4<f32>(768f, 100f, -1295f, 458f), var_3)))))), var_2.zww);
}

