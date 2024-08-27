struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = 3058f;
    let var_1 = 1u;
    let var_2 = Struct_1(~(-1i), ~(-(~abs(vec4<i32>(u_input.a, 13444i, 2147483647i, 0i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -916f) - vec3<f32>(660f, 559f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 1116f, var_0), vec3<f32>(-271f, var_0, var_0), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(523f, 571f, var_0)), vec3<f32>(1282f, var_0, var_0)))))))));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-326f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), var_0, _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(353f - _wgslsmith_f_op_f32(-var_0))))));
    return !select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), true), !(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), select(true, true, select(false, false, false)) & (_wgslsmith_mod_i32(0i, 1i) <= u_input.b));
}

fn func_2() -> Struct_2 {
    let var_0 = (~(countOneBits(vec2<u32>(u_input.c.x, u_input.c.x)) << (u_input.c % vec2<u32>(32u))) | vec2<u32>(~(u_input.c.x | u_input.c.x), min(countOneBits(99707u), ~48714u))) & u_input.c;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-305f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1172f, 367f)) + _wgslsmith_f_op_f32(floor(433f))))))), _wgslsmith_f_op_f32(min(-1449f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(2403f)))))))));
    var var_2 = -vec4<i32>(firstTrailingBit(24987i) | ~(-u_input.b), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~u_input.b, abs(u_input.a)), u_input.a), _wgslsmith_mod_i32(-1i, select(u_input.b, 36196i, all(vec2<bool>(false, true)))), 2147483647i);
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, u_input.b, var_2.x), ~vec4<i32>(0i, -21008i, u_input.b, var_2.x)), firstTrailingBit(-1i)), select(vec4<i32>(~var_2.x, _wgslsmith_mult_i32(var_2.x, var_2.x), select(var_2.x, var_2.x, true), _wgslsmith_add_i32(var_2.x, u_input.b)), -countOneBits(vec4<i32>(-1i, 5648i, var_2.x, u_input.b)), all(func_3()))));
    let var_4 = 519f;
    return var_3;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_2();
    return !vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1116f)) * _wgslsmith_f_op_f32(ceil(-1043f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(645f, -1019f)) * 1965f), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(any(func_1(true, Struct_1(u_input.a, vec4<i32>(13076i, 1i, 1i, -33486i)), 22441i ^ u_input.b, Struct_1(0i, vec4<i32>(22561i, 8362i, 4132i, u_input.b)))), true, false);
    var var_1 = Struct_2(Struct_1(-2147483647i, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 52238i, -2147483647i), vec3<i32>(u_input.b, u_input.a, u_input.a)), u_input.a, ~u_input.b, -1i)));
    var var_2 = Struct_1(_wgslsmith_sub_i32(firstLeadingBit(~firstLeadingBit(var_1.a.a)), ~reverseBits(firstLeadingBit(u_input.a))), ~(vec4<i32>(-1i) * -var_1.a.b));
    let var_3 = func_2().a;
    var_2 = var_1.a;
    let var_4 = -13953i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x);
}

