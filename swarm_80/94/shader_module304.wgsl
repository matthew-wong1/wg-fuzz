struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_mult_vec2_u32(u_input.c.zx, vec2<u32>(_wgslsmith_mult_u32(arg_0.x, firstLeadingBit(59578u)), arg_0.x)) ^ ~vec2<u32>(arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.c.x), ~vec2<u32>(0u, 12305u)));
    let var_1 = true;
    let var_2 = 0i;
    return u_input.a.zx;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: f32) -> vec2<i32> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(reverseBits(u_input.d), abs(u_input.d)))), ~arg_0.a.x);
    let var_1 = Struct_3(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.d.xx, arg_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3, arg_3, arg_3)) + vec4<f32>(_wgslsmith_f_op_f32(select(-1109f, 2293f, arg_1.a.x)), arg_3, arg_3, _wgslsmith_f_op_f32(-arg_3)))), arg_2.x);
    return arg_0.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = countOneBits(select(_wgslsmith_mod_vec2_i32(~vec2<i32>(0i, u_input.a.x), u_input.a.xy), vec2<i32>(22534i << (0u % 32u), -1i), vec2<bool>(!arg_3, any(vec3<bool>(arg_0.a, arg_0.a, false)))) | select(max(-u_input.d.wx, vec2<i32>(-1i, u_input.a.x)), vec2<i32>(~24911i, countOneBits(u_input.a.x)), false));
    var_0 = reverseBits(~(func_2(vec4<u32>(0u, u_input.b, 43531u, 2955u) | vec4<u32>(u_input.b, u_input.b, u_input.c.x, 84705u), ~56896i) ^ func_3(Struct_4(vec2<i32>(-79498i, u_input.d.x)), Struct_2(vec4<bool>(arg_2.a, true, arg_0.a, arg_3)), select(vec3<bool>(arg_0.a, arg_3, arg_2.a), vec3<bool>(true, false, true), arg_3), -1399f)));
    var var_1 = Struct_3(select(-2147483647i, ~u_input.d.x, any(select(select(vec3<bool>(arg_2.a, true, arg_3), vec3<bool>(true, arg_3, true), arg_3), select(vec3<bool>(true, arg_3, arg_2.a), vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(true, arg_2.a, true)), select(vec3<bool>(arg_2.a, false, arg_0.a), vec3<bool>(arg_3, arg_2.a, true), vec3<bool>(arg_2.a, true, arg_3))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1057f, arg_1.x, 1412f, arg_2.b.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-294f, 358f, arg_1.x, 1301f) - vec4<f32>(arg_0.b.x, arg_0.b.x, -377f, -406f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, -1239f, arg_0.b.x, arg_1.x)))), !arg_3);
    let var_2 = _wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.d.x, 9691i, u_input.a.x, 28010i), u_input.d), 2147483647i), -16994i);
    let var_3 = ~48904i;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-198f + _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(-arg_2.b.x))) * _wgslsmith_f_op_f32(abs(arg_0.b.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_2(select(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true == all(vec2<bool>(true, false))), vec4<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true)), all(vec3<bool>(false, true, false)) & false, any(vec3<bool>(true, true, true)), true | any(vec2<bool>(false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false), any(vec4<bool>(true, true, true, false))))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(select(!(!(!var_0.a)), vec4<bool>(true, var_0.a.x, all(var_0.a.yz), all(!var_0.a)), select(!var_0.a, vec4<bool>(true, !var_0.a.x, any(vec4<bool>(var_0.a.x, false, false, true)), any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false))), select(!var_0.a, select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x), var_0.a, var_0.a.x), false & var_0.a.x))));
    var var_1 = _wgslsmith_div_vec2_u32(~min(u_input.c.xz, ~u_input.c.zz | u_input.c.wx), ~(~(~u_input.c.yz)));
    var var_2 = 77359u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0), _wgslsmith_f_op_vec2_f32(step(arg_0, vec2<f32>(arg_2, arg_2))), true)), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(919f, 1557f) + vec2<f32>(-635f, 296f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-604f)))), _wgslsmith_f_op_f32(f32(-1f) * -1507f))), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i >> (u_input.b % 32u), u_input.a.x), vec2<i32>(u_input.a.x, i32(-1i) * -296i)) >> (_wgslsmith_dot_vec2_u32(u_input.c.xw, ~vec2<u32>(u_input.b, 4294967295u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_1(Struct_1(true, vec3<f32>(-1194f, -998f, 1309f)), vec2<f32>(-753f, 1280f), Struct_1(false, vec3<f32>(-1478f, 641f, -1420f)), true))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1022f * 501f), _wgslsmith_f_op_f32(f32(-1f) * -1829f)))))));
    let var_1 = all(!(!vec4<bool>(-1343f >= var_0.x, false, true, any(vec3<bool>(false, true, false)))));
    var var_2 = u_input.c.x;
    var var_3 = Struct_2(vec4<bool>(all(!vec4<bool>(true, var_1, false, false)) & select(all(vec2<bool>(true, var_1)), all(vec3<bool>(false, var_1, false)), u_input.a.x < -33647i), all(vec3<bool>(var_1, var_1, var_1)) | (_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -1i)) < ~(-1i)), false == (u_input.a.x <= -1i), all(!vec3<bool>(true, var_1, true)) | true));
    var_2 = 2861u;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_div_vec3_i32(-u_input.a, u_input.a) ^ abs(vec3<i32>(-1922i, 0i, u_input.d.x))) | vec3<i32>(2147483647i, 2147483647i, reverseBits(~(-63973i))), select(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(-13177i, -1i)), u_input.d.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a.x, 1i), u_input.a.x >> (4294967295u % 32u)), -u_input.a.x | ~u_input.d.x), -max(_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(1i, u_input.a.x, -2147483647i, u_input.a.x), u_input.d), ~u_input.d), !var_3.a), u_input.a.x, u_input.d.x);
}

