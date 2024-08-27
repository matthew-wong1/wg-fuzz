struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32> = vec3<i32>(3556i, i32(-2147483648), 2147483647i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-878f + _wgslsmith_f_op_f32(f32(-1f) * -1127f)), _wgslsmith_f_op_f32(step(-561f, -944f))))));
    let var_1 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1367f - var_0.x) + _wgslsmith_f_op_f32(-1190f + var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(549f)), _wgslsmith_f_op_f32(ceil(209f))), var_0.x <= -816f))));
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(321f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f))))));
    global1 = abs(abs(u_input.a.wzx));
    return select(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec4<bool>(false, false, false, false)), true, true), !any(vec2<bool>(true, true))), vec4<bool>(false, _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(var_0.x))) >= _wgslsmith_f_op_f32(select(-1000f, var_0.x, any(vec4<bool>(false, true, false, false)))), all(vec3<bool>(true, false, any(vec4<bool>(true, true, true, true)))), false), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(var_0.x)) == _wgslsmith_f_op_f32(round(-1000f))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> bool {
    global0 = arg_3.b.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-arg_3.b.x)))));
    var var_0 = Struct_2(arg_3);
    let var_1 = Struct_3(~0u);
    let var_2 = 1i;
    return true;
}

fn func_2() -> bool {
    let var_0 = true;
    var var_1 = Struct_1(vec3<bool>(!func_4(func_3(Struct_3(16718u)), vec3<bool>(var_0, var_0, false), ~124984i, Struct_1(vec3<bool>(true, var_0, true), vec3<f32>(-787f, 1468f, 653f), u_input.b.x, u_input.a.x, u_input.a.zxw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(636f)) + _wgslsmith_div_f32(-610f, 1871f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1213f), -504f), var_0), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-105f, _wgslsmith_f_op_f32(trunc(-717f))))), _wgslsmith_f_op_f32(step(102f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1067f * -177f) + _wgslsmith_f_op_f32(max(-2162f, -1561f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2014f, 535f))))), ~49082u, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, i32(-1i) * -2147483647i, global1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), u_input.a.zy)), _wgslsmith_clamp_vec4_i32(~u_input.a, ~vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a | vec4<i32>(2147483647i, -9599i, global1.x, 25796i))), -18100i), -abs(abs(vec3<i32>(-51736i, 1i, global1.x) << (vec3<u32>(u_input.b.x, 6527u, 42679u) % vec3<u32>(32u)))));
    var var_2 = u_input.b.x;
    global0 = 310f;
    let var_3 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, ~25904u) | u_input.b.x, select(62830u, 0u, var_0));
    return 1192f <= _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(1732f - -347f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = !func_3(Struct_3(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c, 69292u, arg_0.c, arg_3), vec4<u32>(arg_2.c, arg_3, 1u, arg_2.c))))).wzw;
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~arg_0.e.xy << (u_input.b.xx % vec2<u32>(32u)), ~vec2<i32>(-11677i, 50613i) << (~vec2<u32>(arg_3, 60854u) % vec2<u32>(32u))), u_input.a.x), -2147483647i);
    let var_3 = Struct_2(arg_2);
    let var_4 = all(select(select(!func_3(Struct_3(arg_1.a.c)).zyy, var_1, func_3(Struct_3(var_3.a.c)).zww), select(func_3(Struct_3(u_input.b.x)).yxz, vec3<bool>(true, all(vec4<bool>(false, false, true, false)), false), true), !(!(!arg_2.a))));
    return ~(_wgslsmith_div_vec2_i32(-arg_1.a.e.xy, abs(vec2<i32>(arg_0.e.x, 69213i))) | (reverseBits(vec2<i32>(1i, 1i)) | var_3.a.e.xy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec2_i32(~firstLeadingBit(reverseBits(global1.xx)), _wgslsmith_mult_vec2_i32((vec2<i32>(u_input.a.x, -54781i) ^ vec2<i32>(u_input.a.x, u_input.a.x)) | func_1(Struct_1(vec3<bool>(true, true, true), vec3<f32>(739f, -1751f, 520f), 15882u, 7404i, vec3<i32>(u_input.a.x, global1.x, -2147483647i)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec3<f32>(860f, 337f, 1196f), u_input.b.x, -2147483647i, u_input.a.yxy)), Struct_1(vec3<bool>(false, false, true), vec3<f32>(-319f, -145f, 628f), 0u, -2147483647i, u_input.a.wyy), u_input.b.x), -(~global1.yx)));
    var var_1 = 52008i;
    var var_2 = 1u;
    var var_3 = -1099f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), u_input.b.x), vec3<f32>(1103f, _wgslsmith_f_op_f32(-186f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1350f + -634f))), 152f));
}

