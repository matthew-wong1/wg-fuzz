struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    var var_0 = arg_0.b != -2147483647i;
    var_0 = !(!all(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true))));
    var_0 = all(select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(vec2<bool>(any(vec2<bool>(true, false)), false), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true)), vec2<bool>(true, arg_0.b < 0i)), vec2<bool>(_wgslsmith_f_op_f32(-arg_0.a.a.x) < _wgslsmith_div_f32(arg_0.c.a.x, -466f), !all(vec3<bool>(true, true, false)))));
    var_0 = true;
    var var_1 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-754f, _wgslsmith_f_op_f32(1693f * -1469f))))), -(~u_input.a.x), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-877f - _wgslsmith_f_op_f32(2268f + -2434f)), -627f)));
    var_0 = Struct_2(Struct_1(vec2<f32>(-1216f, _wgslsmith_f_op_f32(select(var_0.a.a.x, _wgslsmith_f_op_f32(1147f * 495f), all(vec4<bool>(true, true, false, false)))))), var_0.b, var_0.c);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(func_3(Struct_2(var_0.c, var_0.b, var_0.a), vec4<u32>(u_input.b, u_input.b, 4294967295u, 1u) | vec4<u32>(u_input.b, 88530u, 4294967295u, 1u))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.x, var_0.c.a.x, var_1.a.x, -482f), vec4<f32>(var_1.a.x, -857f, var_1.a.x, var_0.a.a.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1233f, var_0.c.a.x, var_1.a.x, var_1.a.x) * vec4<f32>(375f, -1085f, -395f, var_1.a.x)))))));
    var var_3 = abs(~abs(u_input.a) | reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -35865i), vec3<i32>(-1i, var_0.b, var_0.b))));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = !vec2<bool>(!(!(arg_1.b < -31095i)), all(vec4<bool>(any(vec3<bool>(true, false, true)), true, any(vec3<bool>(false, true, false)), true)));
    let var_1 = arg_0;
    let var_2 = arg_1.b | 1i;
    let var_3 = func_2();
    let var_4 = func_2();
    return arg_1.a.a;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1321f, 1646f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1558f) + vec2<f32>(-1447f, 322f))), _wgslsmith_f_op_vec2_f32(func_4(func_2(), Struct_2(func_2(), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yz), Struct_1(vec2<f32>(738f, 740f))))))));
    var var_1 = _wgslsmith_clamp_vec2_i32(u_input.a.yx, vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(firstTrailingBit(-18159i), u_input.a.x)), 0i), u_input.a.xz);
    var var_2 = vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - 308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -957f);
    let var_3 = vec4<u32>(~_wgslsmith_add_u32(12316u, u_input.b), 4294967295u ^ ~u_input.b, ~_wgslsmith_sub_u32(reverseBits(u_input.b), 4294967295u), _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, 0u), select(vec2<u32>(1u, u_input.b), vec2<u32>(0u, u_input.b), vec2<bool>(false, false))), firstTrailingBit(~vec2<u32>(u_input.b, u_input.b)))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1790f, -1347f, -998f, func_2().a.x))));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.wy + _wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.x, var_0.a.x), var_2.xy)))))), select(abs(-select(var_1.x, 0i, false)), u_input.a.x, any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)) || true), Struct_1(_wgslsmith_f_op_vec2_f32(var_2.xw + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_2.zz, var_2.zx)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.a;
    let var_2 = _wgslsmith_mod_i32(u_input.a.x, -_wgslsmith_clamp_i32(min(u_input.a.x, 1i), _wgslsmith_mult_i32(abs(21571i), 1i), var_0.b));
    var var_3 = -(24350i ^ countOneBits(var_0.b));
    var var_4 = vec4<u32>(u_input.b, ~u_input.b, 0u, u_input.b);
    let var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x), -1413f) + _wgslsmith_f_op_vec2_f32(-var_0.c.a)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.a.x + var_1.a.x), _wgslsmith_f_op_f32(-var_0.a.a.x))), var_0.a.a.x))));
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, 860f, var_0.a.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, 786f, var_0.c.a.x) - vec3<f32>(var_1.a.x, var_1.a.x, 1072f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, var_1.a.x, -1118f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_1.a.x, -556f)) + vec3<f32>(969f, var_1.a.x, var_1.a.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(488f + var_1.a.x), 375f, -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(924f, _wgslsmith_f_op_f32(-865f * var_5.x), var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.xwx | ~_wgslsmith_sub_vec3_u32(vec3<u32>(77397u, 1u, var_4.x), var_4.wxw), var_0.c.a);
}

