struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: u32) -> i32 {
    let var_0 = ~u_input.d.xwy;
    var var_1 = arg_0.b.a;
    var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(select(var_1.b, _wgslsmith_f_op_vec3_f32(-var_1.b), true)), vec3<u32>(~abs(4294967295u), arg_0.b.b.c.x, 83414u) & select(var_0, _wgslsmith_sub_vec3_u32(var_0, vec3<u32>(37676u, var_1.c.x, 15993u)), all(vec2<bool>(true, var_1.a.x))), var_1.b.xx, arg_0.d.e);
    let var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a.b.x) * -1084f) == _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b.a.d.x, var_1.b.x)))));
    return 1634i;
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = ~vec3<u32>(u_input.d.x, max(1u, _wgslsmith_dot_vec4_u32(u_input.d, ~u_input.d)), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x));
    return _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(max(~u_input.d.x, countOneBits(29922u)), firstLeadingBit(~var_0.x)), ~var_0.x, firstTrailingBit(62341u)), abs(vec3<u32>(0u, ~17947u, ~_wgslsmith_add_u32(0u, 0u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    var var_0 = -_wgslsmith_add_i32(arg_0.x, min(13959i, ~1i));
    var var_1 = Struct_2(arg_1.b, Struct_1(select(select(arg_1.b.a, arg_1.b.a, true), vec4<bool>(all(vec2<bool>(arg_1.b.a.x, arg_1.a.a.x)), any(vec4<bool>(true, arg_1.a.a.x, false, false)), true, arg_1.b.a.x | true), arg_1.b.a), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1282f, arg_1.a.d.x, _wgslsmith_f_op_f32(step(arg_1.a.b.x, arg_1.b.b.x))))), ~reverseBits(vec3<u32>(4294967295u, arg_2, arg_1.b.c.x) | arg_1.b.c), _wgslsmith_f_op_vec2_f32(arg_1.a.b.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(235f, arg_1.b.d.x))), arg_1.b.e));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_1.a.c.x, 92062u), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(0u, u_input.d.x)));
    var var_3 = Struct_2(arg_1.a, Struct_1(arg_1.a.a, _wgslsmith_f_op_vec3_f32(-var_1.a.b), func_3(arg_1.b.a.x), vec2<f32>(arg_1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1195f - 269f) - _wgslsmith_f_op_f32(var_1.a.d.x + 765f))), var_1.b.a.x));
    var_3 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a.d.x + var_3.a.b.x), -1361f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    var var_1 = Struct_5(~_wgslsmith_mult_i32(u_input.c.x, _wgslsmith_sub_i32(func_1(Struct_4(vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(-1203f, -1183f, -896f), u_input.d.zzx, vec2<f32>(-936f, -748f), false), Struct_1(vec4<bool>(true, true, true, false), vec3<f32>(781f, -3158f, 1055f), u_input.d.yyw, vec2<f32>(452f, -383f), true)), u_input.d, Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1263f, -160f, 506f), u_input.d.wwy, vec2<f32>(492f, 2017f), false)), false, 0i, 0u), -2147483647i)), Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-909f, 155f, 1212f))), vec3<u32>(u_input.d.x ^ u_input.d.x, 8272u, u_input.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1363f, -757f))), u_input.b < 1i), Struct_1(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -185f), -660f, -255f), u_input.d.wxw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-336f, -1000f), vec2<f32>(-1896f, -439f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 536f)))), true)), Struct_2(Struct_1(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true), vec3<f32>(_wgslsmith_f_op_f32(func_2(u_input.a.wxz, Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec3<f32>(1642f, 894f, 1000f), u_input.d.ywy, vec2<f32>(2033f, 1000f), true), Struct_1(vec4<bool>(true, false, true, true), vec3<f32>(-634f, 1031f, -325f), u_input.d.zxw, vec2<f32>(648f, -1000f), false)), 75136u)), _wgslsmith_f_op_f32(f32(-1f) * -823f), _wgslsmith_f_op_f32(ceil(-599f))), firstTrailingBit(u_input.d.wxw & vec3<u32>(10691u, u_input.d.x, u_input.d.x)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-145f, 876f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -161f)))), u_input.d.x > firstLeadingBit(0u)), Struct_1(vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -999f, -459f), vec3<f32>(-649f, 1612f, 114f))), firstLeadingBit(vec3<u32>(0u, u_input.d.x, u_input.d.x) >> (u_input.d.xyx % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(abs(-1112f)), -241f), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true))))), vec2<bool>(true, true));
    let var_2 = false;
    let var_3 = _wgslsmith_mod_i32(-58853i, _wgslsmith_div_i32(~(-u_input.b), ~2147483647i));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(2634f, -469f), _wgslsmith_f_op_vec2_f32(-var_1.c.a.d))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(var_1.c.a.d.x - -908f))))), vec2<bool>(true, var_1.c.a.e)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a);
}

