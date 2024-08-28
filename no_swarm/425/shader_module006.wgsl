struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    var var_0 = Struct_1(~(~select(u_input.b ^ arg_0.wxx, arg_0.xyy, vec3<bool>(true, true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, -1402f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1012f, -626f), vec2<f32>(621f, 376f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -2510f), vec2<f32>(1164f, -786f)))))), _wgslsmith_clamp_vec2_i32(select(-select(u_input.c.yw, vec2<i32>(u_input.c.x, 39111i), vec2<bool>(false, true)), u_input.c.wx, false), select(_wgslsmith_mult_vec2_i32(u_input.c.wz, vec2<i32>(-1i, -2147483647i)) >> (arg_0.yx % vec2<u32>(32u)), -u_input.c.ww, select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true))), _wgslsmith_div_vec2_i32(u_input.c.zw | u_input.c.zx, _wgslsmith_mult_vec2_i32(u_input.c.ww, ~u_input.c.zy))));
    var_0 = Struct_1(firstLeadingBit(var_0.a), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.x, var_0.b.x))), _wgslsmith_f_op_vec2_f32(-var_0.b)), var_0.b), u_input.c.wy);
    let var_1 = vec4<i32>(u_input.c.x, u_input.c.x, ~countOneBits(-44434i >> (select(var_0.a.x, 4294967295u, true) % 32u)), u_input.c.x);
    let var_2 = Struct_2(var_0.c.x, vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x - -313f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1136f, var_0.b.x))))));
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(max(u_input.d, u_input.b.x), 4294967295u, _wgslsmith_clamp_u32(var_0.a.x, u_input.b.x, arg_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(69617u, u_input.b.x, 22045u) & u_input.a.xyw, arg_0.xxy)), arg_0.wzx), u_input.a.yww);
    return vec4<bool>((countOneBits(_wgslsmith_clamp_u32(var_3, arg_0.x, arg_0.x)) & abs(~var_0.a.x)) != ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, 37168u, u_input.d), abs(vec4<u32>(arg_0.x, 0u, 42410u, 6954u))), true, false, true);
}

fn func_2(arg_0: vec3<u32>) -> vec3<bool> {
    var var_0 = select(-1961f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + -1211f)))), any(vec3<bool>(true, true, true)), false);
    var_0 = !all(select(select(func_3(vec4<u32>(8496u, 69639u, u_input.d, 30749u)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false)), vec4<bool>(any(vec2<bool>(true, false)), true, true, false), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(354f)) - _wgslsmith_f_op_f32(508f * -1264f))), 1134f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, 872f)) + vec2<f32>(-129f, 236f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1386f), _wgslsmith_f_op_f32(max(1144f, 185f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1155f, 2023f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 291f) * vec2<f32>(-461f, 568f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2073f, 894f), vec2<f32>(-1693f, 3770f)))))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(212f - _wgslsmith_f_op_f32(f32(-1f) * -905f))))));
    var_2 = var_1.x;
    return !select(select(vec3<bool>(var_1.x > var_1.x, true, true), !func_3(vec4<u32>(0u, u_input.d, arg_0.x, 4294967295u)).xwx, all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true))), vec3<bool>(u_input.c.x < (u_input.c.x ^ 54021i), false, true), func_3(~min(u_input.a, vec4<u32>(1u, u_input.b.x, 56382u, 4294967295u))).x);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(~select(vec3<u32>(23862u, 1u, 0u), _wgslsmith_sub_vec3_u32(min(u_input.b, u_input.a.zwx), ~vec3<u32>(u_input.a.x, 0u, u_input.b.x)), select(func_2(vec3<u32>(48487u, 29650u, 8967u)), vec3<bool>(true, true, true), func_3(vec4<u32>(u_input.a.x, u_input.d, 1230u, 0u)).wxy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-935f, -1113f))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.c.x, -9988i, 28460i, -26015i)), ~u_input.c)), vec2<i32>(u_input.c.x, -2147483647i), vec2<i32>(firstLeadingBit(u_input.c.x), max(2147483647i, ~u_input.c.x))));
    let var_1 = u_input.c.wyw;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 275f, _wgslsmith_f_op_f32(f32(-1f) * -189f), var_0.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1992f, 891f, _wgslsmith_f_op_f32(-1000f - -905f), _wgslsmith_f_op_f32(f32(-1f) * -773f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x * 384f), var_0.b.x, _wgslsmith_div_f32(var_0.b.x, var_0.b.x), -873f), vec4<f32>(_wgslsmith_f_op_f32(var_0.b.x - 440f), var_0.b.x, var_0.b.x, -534f)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_f_op_f32(round(427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -538f) * _wgslsmith_f_op_f32(521f + var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    let var_3 = var_0.c.x;
    return Struct_3(vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), true, _wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(-(var_1.x & 23902i), -36253i, max(var_0.c.x, var_1.x) & var_1.x, var_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 1u;
    var var_2 = Struct_1(u_input.a.zzx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1497f, 339f), vec2<f32>(734f, -984f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-541f - 613f), 1f))), -var_0.c.yx);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -598f);
}

