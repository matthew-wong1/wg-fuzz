struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> bool {
    var var_0 = Struct_1(!select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, false), u_input.b.x > 1u), 4294967295u <= ~u_input.b.x), vec2<i32>(countOneBits(-42363i), -1i) | u_input.c, select(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), any(vec3<bool>(false, true, true))), vec4<bool>(!all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false)), true, all(vec4<bool>(false, true, true, true))), false));
    var_0 = Struct_1(!vec2<bool>(any(vec3<bool>(true, var_0.a.x, true)) == true, var_0.a.x), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_0.b.x, var_0.b.x)) & -firstLeadingBit(vec2<i32>(0i, 1i)), vec2<i32>(-abs(var_0.b.x), -1i)), vec4<bool>(var_0.a.x, any(!vec2<bool>(true, var_0.c.x)) | select(var_0.a.x, var_0.a.x, any(vec4<bool>(false, true, false, true))), var_0.c.x, select(var_0.a.x && true, true == var_0.a.x, !all(var_0.a))));
    var_0 = Struct_1(!vec2<bool>(u_input.b.x >= _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 28542u)), var_0.a.x), vec2<i32>(_wgslsmith_mult_i32(var_0.b.x, var_0.b.x), u_input.c.x), !vec4<bool>(true, true, _wgslsmith_mult_i32(var_0.b.x, -12581i) == var_0.b.x, false));
    let var_1 = Struct_1(var_0.c.xx, u_input.c, var_0.c);
    return var_0.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = 1u;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_3.x)), arg_3.x);
    let var_2 = true;
    var var_3 = vec4<bool>(select(!(!all(arg_1.c.xzz)), arg_2.a.x, func_3()), !all(vec4<bool>(true, !var_2, arg_2.c.x, true)), any(vec3<bool>(true, true, true)), all(arg_0.b.c.ywx));
    var var_4 = 85504u;
    return arg_3.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) - _wgslsmith_f_op_f32(803f - 316f)) * 1000f), _wgslsmith_f_op_f32(trunc(-1000f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 459f)))) - vec2<f32>(914f, _wgslsmith_f_op_f32(-var_0.x)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(319f - -1290f), -1531f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(-720f, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec2<bool>(arg_1, arg_1), vec2<i32>(-2147483647i, 2147483647i), vec4<bool>(false, false, arg_1, arg_1)), Struct_1(vec2<bool>(arg_1, arg_1), vec2<i32>(u_input.c.x, -2147483647i), vec4<bool>(true, arg_1, false, false))), Struct_1(vec2<bool>(arg_1, arg_1), arg_0, vec4<bool>(arg_1, false, false, arg_1)), Struct_1(vec2<bool>(true, true), u_input.c, vec4<bool>(true, false, false, arg_1)), vec2<f32>(-168f, -1057f))))))));
    var var_1 = _wgslsmith_div_f32(-224f, 187f);
    var var_2 = Struct_1(select(select(select(!vec2<bool>(arg_1, true), select(vec2<bool>(false, false), vec2<bool>(arg_1, arg_1), arg_1), !vec2<bool>(arg_1, false)), !(!vec2<bool>(arg_1, arg_1)), select(!vec2<bool>(true, arg_1), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, arg_1), vec2<bool>(false, arg_1)))), vec2<bool>(true, false), select(select(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, true), true), vec2<bool>(arg_1, true), select(arg_1, true, arg_1)), select(select(vec2<bool>(arg_1, true), vec2<bool>(true, false), false), vec2<bool>(true, arg_1), u_input.a <= arg_0.x), vec2<bool>(arg_1, func_3()))), u_input.c, !(!(!vec4<bool>(false, false, true, arg_1))));
    return Struct_2(Struct_1(select(select(select(var_2.c.wy, vec2<bool>(false, true), arg_1), select(var_2.c.yy, var_2.c.zx, false), var_2.a), var_2.a, var_2.c.ww), u_input.c, !select(!vec4<bool>(var_2.a.x, false, false, arg_1), !vec4<bool>(arg_1, var_2.c.x, arg_1, false), vec4<bool>(arg_1, var_2.a.x, arg_1, true))), Struct_1(vec2<bool>(_wgslsmith_f_op_f32(step(688f, 333f)) != _wgslsmith_div_f32(var_0.x, -2854f), any(vec2<bool>(false, arg_1))), var_2.b, var_2.c));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = any(select(!arg_0.a.c.xyw, !vec3<bool>(true, arg_2, true), !vec3<bool>(arg_0.b.c.x & arg_2, arg_1.a.c.x && true, arg_2)));
    let var_1 = Struct_1(arg_1.b.a, -(~u_input.c), vec4<bool>(func_3(), arg_1.b.a.x, func_1(~u_input.c << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), true).b.a.x, any(select(func_1(arg_0.b.b, arg_0.a.a.x).a.c, arg_0.b.c, arg_1.a.c))));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1286f, -1116f), vec2<f32>(1000f, -738f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(550f, 781f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -375f), vec2<f32>(-1358f, -1408f), vec2<bool>(true, true)))))));
    var var_4 = arg_0;
    return Struct_1(vec2<bool>(false, !all(var_2.a.c.xz)), (~u_input.c & select(vec2<i32>(var_4.b.b.x, -2147483647i), vec2<i32>(var_2.a.b.x, arg_0.a.b.x), u_input.b.x == u_input.b.x)) >> (_wgslsmith_div_vec2_u32(u_input.b.zx, _wgslsmith_mod_vec2_u32(u_input.b.yx << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), u_input.b.zx << (vec2<u32>(1u, 31357u) % vec2<u32>(32u)))) % vec2<u32>(32u)), var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), -vec2<i32>(u_input.c.x, -2147483647i) << (~(~u_input.b.yx) % vec2<u32>(32u)), !vec4<bool>(true, true, true, any(vec2<bool>(false, true)))), func_4(Struct_2(Struct_1(vec2<bool>(true, true), u_input.c, vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, true), u_input.c & u_input.c, vec4<bool>(true, true, true, true))), func_1(u_input.c, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(24489i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -846f) * _wgslsmith_f_op_f32(floor(-1283f))))), -394f);
}

