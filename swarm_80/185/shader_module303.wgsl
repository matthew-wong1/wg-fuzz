struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-262f, -1672f, -1364f), vec3<f32>(1193f, -1316f, -1259f), arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1206f, -2600f) - vec3<f32>(1121f, -1562f, -501f)))), vec3<f32>(1f, 1f, 1f), !vec3<bool>(arg_1.x, arg_1.x, false)))));
    let var_1 = Struct_1(!(!select(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, false, arg_1.x), true), vec4<bool>(true, arg_1.x, false, arg_1.x), arg_1.x)));
    let var_2 = !any(arg_1);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(740f + 400f)))), 1184f, true)));
    var var_4 = !any(vec4<bool>(!var_2, all(select(arg_1.zy, vec2<bool>(var_2, arg_1.x), arg_1.x)), true, !all(var_1.a.ywz)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(137f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -601f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 148f, 633f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-338f, var_3, 221f, var_0.x))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(1000f, var_0.x), -899f, _wgslsmith_f_op_f32(var_3 * 1020f), _wgslsmith_f_op_f32(var_3 * 1073f)))), !any(!vec4<bool>(false, var_2, true, arg_1.x)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = vec3<i32>(-(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-14409i, 0i, -2147483647i)), -vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) >> ((firstLeadingBit(u_input.a.x) >> (0u % 32u)) % 32u)), ~(~(u_input.c.x >> (u_input.d % 32u))), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, u_input.c.x, 17687i, -2147483647i), ~vec4<i32>(-48183i, -2147483647i, u_input.c.x, u_input.c.x)), _wgslsmith_mod_i32(-4057i, _wgslsmith_add_i32(5159i, 8346i))), u_input.c.x >> (firstLeadingBit(~35344u) % 32u)));
    var var_1 = -var_0.x;
    var var_2 = !arg_3.a.wy;
    var var_3 = _wgslsmith_f_op_f32(1263f - _wgslsmith_f_op_f32(f32(-1f) * -801f)) < arg_0.x;
    var_2 = arg_3.a.xy;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mod_u32(u_input.b, u_input.d), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2311f, 585f, 513f, 486f) - vec4<f32>(arg_1.x, 548f, arg_2, arg_0.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, 222f, -660f, arg_2))))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(select(arg_0.a, !(!(!vec4<bool>(true, arg_0.a.x, true, arg_3.a.x))), !arg_0.a));
    let var_1 = !(!var_0.a.zx);
    var var_2 = var_0.a;
    var var_3 = !(!select(!select(vec3<bool>(arg_0.a.x, false, true), var_0.a.yxz, true), select(!var_0.a.zyz, vec3<bool>(arg_0.a.x, false, false), !var_2.zyx), vec3<bool>(true, all(arg_3.a), !arg_3.a.x)));
    let var_4 = true;
    return Struct_1(!var_0.a);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = ~(~u_input.a);
    let var_1 = arg_0.a;
    var var_2 = Struct_1(!arg_0.a);
    let var_3 = select(vec4<bool>(true, false, var_1.x, var_1.x), select(var_1, var_2.a, false), arg_0.a);
    var_2 = func_4(arg_0, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f) - _wgslsmith_f_op_f32(min(176f, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)))), -278f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-643f, arg_1, 212f, arg_1) + vec4<f32>(927f, 470f, arg_1, 1537f))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1668f, arg_1, -593f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-204f, arg_1, arg_1), vec3<f32>(-774f, arg_1, arg_1), vec3<bool>(true, arg_0.a.x, arg_0.a.x))), arg_1, arg_0))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -808f, 1333f, 1080f))))), Struct_1(select(!vec4<bool>(var_3.x, var_2.a.x, var_3.x, false), !var_2.a, !(var_1.x || var_2.a.x))));
    return -1637f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1681f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2457f, 208f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1613f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-718f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1178f)) + -556f), _wgslsmith_f_op_f32(2081f + -215f), _wgslsmith_f_op_f32(max(736f, _wgslsmith_f_op_f32(f32(-1f) * -617f))))));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-762f + var_0.x)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1000f) - _wgslsmith_f_op_f32(1f + 452f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -874f)));
    let var_2 = ~(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(7329u, 1u, u_input.b)), vec3<u32>(u_input.a.x, 30135u, 25154u)), min(u_input.a.yww, select(u_input.a.xzx, vec3<u32>(u_input.b, 13510u, 90820u), true)), vec3<u32>(abs(28361u), 20118u, ~u_input.e)) << (vec3<u32>(~countOneBits(33171u), ~u_input.b ^ ~u_input.d, 1u) % vec3<u32>(32u)));
    let var_3 = Struct_1(vec4<bool>(all(vec3<bool>(false, false, true)) | !any(vec4<bool>(true, true, true, true)), !(-2147483647i != u_input.c.x) | any(vec2<bool>(false, true)), true, true));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(~var_2.x, select(var_3.a.xyz, vec3<bool>(true, true, false), true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))), (u_input.c.x > u_input.c.x) != any(var_3.a.xw))), _wgslsmith_f_op_vec3_f32(var_0 + var_0), var_0.x, Struct_1(var_3.a))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_u32(15907u, u_input.e), vec3<bool>(var_3.a.x, var_3.a.x, all(var_3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1019f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1019f, var_0.x)) * var_4))), _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 1475f, 458f, -797f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4, 199f, var_0.x, var_4) - vec4<f32>(var_4, 1000f, 1113f, var_0.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1615f, var_4)), var_3.a.zzx))), _wgslsmith_f_op_f32(func_1(Struct_1(var_3.a), var_4)), var_3)).x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(-1531f))) - vec2<f32>(1657f, _wgslsmith_f_op_f32(func_1(var_3, _wgslsmith_f_op_f32(var_0.x * -821f))))));
}

