struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<f32> {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, 1053f, -1602f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(110f, 364f, -265f), vec3<f32>(-435f, -216f, -1453f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-822f, 1593f, 2082f), vec3<f32>(-822f, 1000f, 387f)))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(651f, 1013f)), 1147f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-731f, 396f)), _wgslsmith_f_op_f32(select(546f, -676f, false))))))));
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(1000f, 523f, -473f), false)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 1069f))))));
    var var_3 = Struct_2(var_2.a);
    var var_4 = _wgslsmith_sub_vec3_u32(u_input.b.wwy, u_input.b.zyx << (~u_input.b.ywz % vec3<u32>(32u))) | ~(~u_input.b.wxw & (abs(u_input.b.ywx) & (u_input.b.xww << (u_input.b.wwx % vec3<u32>(32u)))));
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2749f))), _wgslsmith_f_op_f32(f32(-1f) * -1912f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x - -190f) + _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a.x, var_2.a.x, var_1.x) * var_2.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_2.a.x, _wgslsmith_div_f32(var_3.a.x, var_3.a.x))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) > var_1.x));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3()));
    var var_1 = var_0;
    let var_2 = Struct_2(var_1.a);
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.x + -151f), _wgslsmith_f_op_f32(f32(-1f) * -564f))), _wgslsmith_f_op_f32(exp2(var_2.a.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1685f, -146f, var_0.a.x)))));
    var var_3 = Struct_1(vec2<bool>(any(vec4<bool>(true, true, any(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, true)))), true), select(true, all(vec3<bool>(true, any(vec3<bool>(false, true, true)), true)), false), _wgslsmith_f_op_f32(var_2.a.x + 1f), u_input.a.x, abs(u_input.b.x));
    return var_3.b;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(512f - 348f) - _wgslsmith_f_op_f32(378f + 1133f)), _wgslsmith_f_op_f32(ceil(-120f)), -470f)), vec3<f32>(_wgslsmith_f_op_f32(-525f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1020f, -592f)) + -221f)), _wgslsmith_f_op_f32(1212f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1711f, -435f) * _wgslsmith_f_op_f32(-1011f + 1451f))), -548f), any(vec4<bool>(func_2(_wgslsmith_mod_i32(-1i, u_input.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-389f, -1250f) + vec2<f32>(-701f, -392f))), true, countOneBits(-2147483647i) == -u_input.a.x, u_input.b.x == (1u << (u_input.b.x % 32u))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(456f, var_0.x), _wgslsmith_f_op_f32(-var_0.x), u_input.b.x == 1u)), var_0.x, ~21108i <= u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1100f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-317f * var_0.x) - _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    var var_1 = ~34345u;
    var var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), 1096f);
    return StorageBuffer(-u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2361f, -2262f, var_0.x, 292f) * vec4<f32>(678f, -1177f, 1000f, var_0.x)), vec4<bool>(var_2.x, var_2.x, var_2.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 827f, var_0.x)), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-998f, 319f, 1992f, 1806f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 2233f, var_0.x, var_0.x), vec4<f32>(var_0.x, var_0.x, 276f, 154f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(505f, -885f, -1511f, -246f) + vec4<f32>(1000f, -188f, 589f, 897f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1392f, var_0.x))), vec4<bool>(all(vec3<bool>(true, true, var_2.x)), true, var_2.x, any(vec4<bool>(false, var_2.x, var_2.x, var_2.x))))), !vec4<bool>(!var_2.x, select(false, true, var_2.x), var_2.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), u_input.a.x <= u_input.a.x), false), !(!all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f + _wgslsmith_f_op_f32(f32(-1f) * -879f)))), ~(~firstTrailingBit(abs(2147483647i))), _wgslsmith_add_u32(1u, u_input.b.x));
    let var_1 = ~_wgslsmith_mod_vec2_i32(u_input.a.ww, -vec2<i32>(-2147483647i, var_0.d >> (1u % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.c, -1076f), vec2<f32>(1401f, var_0.c)))))))));
    let x = u_input.a;
    s_output = func_1();
}

