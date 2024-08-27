struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: bool, arg_1: u32) -> bool {
    return arg_0;
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) * 960f);
    global0 = _wgslsmith_f_op_f32(-1474f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1029f + _wgslsmith_div_f32(369f, 416f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1111f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3143f + 1000f) * _wgslsmith_f_op_f32(floor(-902f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-557f, -1024f)), _wgslsmith_f_op_f32(-2452f - -365f), any(vec4<bool>(arg_0.b.x, arg_0.a, false, arg_0.b.x)))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1720f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f - 1175f) * 1987f) - -689f)) + 2431f);
    global0 = var_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-404f, -226f, var_0, var_0) * vec4<f32>(var_0, var_0, 202f, var_0)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, -2724f, var_0), vec4<f32>(-723f, 447f, -328f, 711f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, var_0, var_0), vec4<f32>(-1797f, var_0, var_0, var_0))))))), _wgslsmith_clamp_u32(~u_input.a.x, 46636u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 11486u, 38665u, u_input.a.x), u_input.a) ^ u_input.a.x), u_input.a);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - 863f) + _wgslsmith_f_op_f32(-439f * 1054f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1451f) + 1343f)), var_1.a.x));
}

fn func_2(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_2(all(arg_0.a.zzw), vec3<bool>(arg_0.a.x, false, ~u_input.a.x > u_input.a.x), u_input.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-863f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1877f * -162f))), 1321f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(var_0.b.x, vec3<bool>(false, false, var_0.b.x), u_input.c))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(473f, -2216f, -2674f)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(select(-537f, -494f, true)), -1370f)))));
    var var_2 = _wgslsmith_mod_vec2_i32(u_input.d.zx ^ select(select(u_input.d.yw, arg_0.c.xz, true), ~arg_0.c.yy, select(vec2<bool>(true, false), vec2<bool>(false, arg_0.a.x), vec2<bool>(true, arg_0.a.x))), _wgslsmith_sub_vec2_i32(countOneBits(countOneBits(var_0.c.ww)), -vec2<i32>(var_0.c.x, 0i))) | var_0.c.wx;
    var_2 = vec2<i32>(918i, 0i);
    var_2 = -(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b), -9656i) | ~vec2<i32>(u_input.d.x & var_0.c.x, reverseBits(var_0.c.x)));
    return select(vec3<bool>(true, !any(arg_0.a) | var_0.a, -413f < _wgslsmith_f_op_f32(-var_1.x)), select(arg_0.a.wxy, !(!var_0.b), select(select(vec3<bool>(true, false, arg_0.a.x), vec3<bool>(var_0.b.x, false, false), true), arg_0.a.wwz, var_0.a)), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-458f * 1339f), -1677f))));
    var var_0 = u_input.c.x;
    var var_1 = vec3<i32>(-45738i, u_input.c.x, ~_wgslsmith_sub_i32(~(~u_input.b), 1i));
    let var_2 = Struct_2(!(true || func_1(true, ~1u)), select(vec3<bool>(true, true, true), !select(func_2(Struct_3(vec4<bool>(false, false, false, false), vec2<i32>(u_input.b, var_1.x), vec3<i32>(var_1.x, u_input.b, -1i))), vec3<bool>(false, true, false), true), any(vec3<bool>(true, true, true))), select(u_input.d, u_input.d, vec4<bool>(true, false, true, true)));
    let var_3 = var_2;
    global0 = 1256f;
    var var_4 = select(func_2(Struct_3(!vec4<bool>(var_3.a, var_2.b.x, false, var_3.b.x), _wgslsmith_sub_vec2_i32(-u_input.d.wx, vec2<i32>(var_2.c.x, -14185i) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), var_3.c.yzx)), var_3.b, !var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zw | max(~u_input.d.xw, min(~u_input.d.yy, ~var_2.c.xx)), max(var_2.c.wxy, _wgslsmith_clamp_vec3_i32(vec3<i32>(14285i, ~0i, -var_1.x), var_2.c.wzx, reverseBits(var_3.c.wxw))));
}

