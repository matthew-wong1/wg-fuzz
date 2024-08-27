struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var var_1 = arg_1;
    let var_2 = ~u_input.b.x & countOneBits(~17380u);
    let var_3 = _wgslsmith_div_vec4_f32(var_0.d, vec4<f32>(-173f, -1267f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1214f, 572f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1260f), _wgslsmith_f_op_f32(round(-1682f)))))));
    var_0 = arg_1;
    return -_wgslsmith_mult_i32(1340i, 0i >> (~_wgslsmith_dot_vec2_u32(u_input.b.zx, u_input.b.xz) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    var_0 = 9358i;
    let var_1 = Struct_1(-func_3(true, Struct_1(select(2147483647i, -61797i, false), -43632i, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1322f, 1802f, 1949f, 915f))))), firstTrailingBit(_wgslsmith_dot_vec3_i32(-(vec3<i32>(0i, -4383i, -55930i) << (vec3<u32>(1u, 8142u, u_input.c) % vec3<u32>(32u))), -(~vec3<i32>(5246i, -16877i, -71284i)))), vec4<bool>(true, !all(vec3<bool>(true, true, true)), true || select(false, any(vec2<bool>(true, true)), true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-805f * 120f), _wgslsmith_f_op_f32(f32(-1f) * -860f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(195f, -1475f)), _wgslsmith_f_op_f32(ceil(-801f)), all(vec4<bool>(false, true, true, false)))), -252f, _wgslsmith_f_op_f32(sign(-1000f)))));
    var var_2 = false;
    var_2 = reverseBits(u_input.b.x) <= 10038u;
    return Struct_1(_wgslsmith_div_i32(-54201i & _wgslsmith_mod_i32(_wgslsmith_mult_i32(-23025i, var_1.b), 35066i), _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.b, var_1.b, var_1.a, 0i)), vec4<i32>(var_1.a, ~var_1.b, func_3(true, var_1), i32(-1i) * -1i))), -41599i, vec4<bool>(var_1.c.x, !any(select(var_1.c.xx, vec2<bool>(false, false), var_1.c.x)), any(var_1.c.yz), (_wgslsmith_f_op_f32(max(1103f, var_1.d.x)) >= var_1.d.x) && (_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1.a, var_1.a), vec3<i32>(var_1.a, -2147483647i, 54716i)) != -24308i)), var_1.d);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_mod_i32(firstTrailingBit(1298i), ~10056i), arg_3.x, vec4<bool>(!(!func_2().c.x), func_2().c.x, var_0.c.x, var_0.c.x), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-1060f * arg_0)))), arg_2.x, var_0.d.x));
    let var_2 = arg_3.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_1.d.zwy);
    let var_4 = var_1;
    return Struct_1(var_0.b, ~arg_1.x, !select(vec4<bool>(arg_3.x != var_0.b, func_2().c.x, !var_1.c.x, u_input.a < 69522u), vec4<bool>(var_0.c.x, var_1.c.x, true, !var_4.c.x), func_2().c), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.d))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> StorageBuffer {
    var var_0 = !((arg_2.x != ~(-arg_0.a)) | (-383f < _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.d.x, -270f)))));
    var var_1 = arg_0;
    let var_2 = u_input.b.zwz;
    var_1 = func_2();
    var_1 = func_2();
    return StorageBuffer(4294967295u, var_1.d.xy, reverseBits(u_input.b.wxw), -var_1.a, _wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), -896f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(933f, vec2<i32>(1i, _wgslsmith_clamp_i32(1i, -47086i, firstLeadingBit(-2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-274f, 510f, 1000f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-300f, 303f, -635f), vec3<f32>(-449f, 149f, 1387f))), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(568f, 1062f, 1042f))))), vec4<i32>(1i, ~1i, 5718i, -2147483647i)), vec3<bool>(true, all(vec2<bool>(true, true)), true), vec3<i32>(func_3(true, Struct_1(~3191i, ~25537i, vec4<bool>(false, false, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(258f, 1469f, 634f, 1270f) - vec4<f32>(-294f, -136f, -1073f, -558f)))), -max(1i, 74875i << (u_input.a % 32u)), -abs(-1i)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), all(vec2<bool>(false, false)) & false));
}

