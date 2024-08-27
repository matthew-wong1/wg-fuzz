struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = 4555u;
    let var_1 = _wgslsmith_f_op_f32(sign(-1046f));
    var var_2 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), select(u_input.b.zy, ~vec2<u32>(var_0, abs(4294967295u)), true), u_input.b.yx);
    let var_3 = arg_0.a.x;
    var var_4 = abs(select(vec2<u32>(~4296u, ~_wgslsmith_mult_u32(var_0, 38206u)), abs(~u_input.b.wx), select(vec2<bool>(false, 19242u >= u_input.b.x), vec2<bool>(select(true, false, false), !var_3), select(select(arg_0.a.xx, vec2<bool>(false, arg_0.a.x), true), vec2<bool>(arg_0.a.x, var_3), arg_0.a.zz))));
    return select(select(arg_0.a.yz, select(!select(vec2<bool>(arg_0.a.x, var_3), vec2<bool>(true, arg_0.a.x), false), vec2<bool>(true, u_input.b.x == 4294967295u), select(arg_0.a.yy, !vec2<bool>(arg_0.a.x, false), vec2<bool>(arg_0.a.x, false))), false), select(vec2<bool>(true, true), arg_0.a.xx, true), select(!(!select(arg_0.a.zx, vec2<bool>(true, false), false)), !(!(!arg_0.a.yx)), vec2<bool>(var_3, (i32(-1i) * -11892i) == (u_input.a.x ^ -43554i))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(703f, -552f)), _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(-429f * -772f), _wgslsmith_f_op_f32(min(-772f, 985f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1000f + -702f), -453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-664f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1851f, -1415f) * _wgslsmith_f_op_f32(max(-555f, -669f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(250f, -410f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-418f, -1082f))), -843f, 1487f), vec4<bool>(any(select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_0.x, arg_0.x), arg_2.yz)), all(!arg_2), any(arg_2), arg_0.x))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -564f);
    let var_2 = Struct_2(arg_2.xxy);
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -875f), 487f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zy + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.wy - var_0.wy)))))));
    var var_4 = ~min(u_input.b.x, 1u);
    return u_input.a.x >> (1u % 32u);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = 2147483647i;
    var var_1 = Struct_4(Struct_1(204f, vec4<i32>(func_4(func_3(Struct_2(vec3<bool>(true, false, false))), vec2<i32>(u_input.a.x, 9024i), vec4<bool>(true, true, false, true)), ~firstLeadingBit(var_0), u_input.a.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.a, ~vec4<i32>(2147483647i, u_input.a.x, 2147483647i, var_0) << (u_input.b % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-731f, -1130f, -484f, -2387f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-304f, -726f, -1400f, -111f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1912f, -123f, 2241f, 2640f))), all(!vec3<bool>(true, true, arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1535f)) - _wgslsmith_f_op_f32(1000f + 1476f))));
    var var_2 = ~(~_wgslsmith_mult_u32(countOneBits(u_input.b.x & arg_2), _wgslsmith_add_u32(~23416u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_0, arg_2), arg_3.xww))));
    var var_3 = u_input.b;
    var var_4 = ~(~(~_wgslsmith_mod_i32(_wgslsmith_add_i32(var_1.a.c, var_1.a.b.x), var_1.a.b.x)));
    return var_1.a;
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: bool) -> bool {
    let var_0 = Struct_2(select(!select(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, true, arg_2)), !vec3<bool>(false, arg_2, true), true), vec3<bool>(arg_2, true, true), vec3<bool>(false, arg_2, !(!arg_2))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0, arg_0))))))), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x | -25602i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x), u_input.a) >> (~_wgslsmith_mod_vec4_u32(countOneBits(u_input.b), u_input.b & vec4<u32>(u_input.b.x, 0u, arg_1.x, u_input.b.x)) % vec4<u32>(32u)), -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0)), 1267f, -204f, arg_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(ceil(arg_0)), any(var_0.a.yz))));
    let var_2 = !(arg_2 == !(all(var_0.a.xz) | var_0.a.x));
    var_1 = func_2(9584u, false, 15204u, ~min(u_input.b, vec4<u32>(0u, 15563u, 8034u, 58189u) | vec4<u32>(14685u, 7219u, u_input.b.x, 26977u)));
    var var_3 = ~min(reverseBits(var_1.b.xwy), -(reverseBits(vec3<i32>(u_input.a.x, 2147483647i, 1i)) ^ vec3<i32>(u_input.a.x, var_1.b.x, u_input.a.x)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec4<bool>(true, true && func_1(1317f, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), false), true, true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, u_input.b.x > 0u, true, true), vec4<bool>(0u > u_input.b.x, all(vec3<bool>(true, true, false)), true, true)), false);
    let var_1 = reverseBits(_wgslsmith_mod_i32(u_input.a.x, -35697i));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f))));
    var var_3 = var_1;
    var var_4 = false;
    var var_5 = Struct_2(!var_0.wxy);
    var_5 = Struct_2(!vec3<bool>(var_5.a.x, all(!vec3<bool>(true, var_0.x, false)), true | (var_1 == var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), var_1, -u_input.a.xyy, _wgslsmith_f_op_f32(-func_2(countOneBits(1u), false, u_input.b.x, vec4<u32>(~78105u, u_input.b.x, 113266u | u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 43315u))).a), 11916i);
}

