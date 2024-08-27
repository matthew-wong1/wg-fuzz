struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-882f * 209f)), -1847f))), true || (u_input.a >= max(_wgslsmith_dot_vec4_i32(vec4<i32>(-14807i, -1i, u_input.c.x, u_input.a), vec4<i32>(-13281i, -1049i, 2147483647i, u_input.c.x)), _wgslsmith_mult_i32(u_input.d.x, u_input.c.x))), select(-1179f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -771f, false))), any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec4<bool>(true, true, false, false))))), vec4<i32>(-u_input.c.x, ~(-u_input.a), 44440i, u_input.d.x));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1225f + -250f))))), var_0.c, var_0.b, -_wgslsmith_clamp_vec4_i32(select(u_input.c, vec4<i32>(u_input.d.x, var_0.d.x, 2147483647i, 4767i), vec4<bool>(var_0.b, var_0.c, var_0.b, true)), abs(u_input.c), -u_input.c) >> (vec4<u32>(_wgslsmith_div_u32(20545u, ~0u), ~9074u, min(_wgslsmith_mult_u32(38881u, 42554u), 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 38387u), vec2<u32>(4294967295u, 4294967295u))) % vec4<u32>(32u)));
    let var_1 = var_0.a;
    let var_2 = Struct_2(var_0.a, true, select(true, var_0.b, select(-42230i, max(25173i, u_input.d.x), all(vec2<bool>(var_0.b, var_0.c))) == (var_0.d.x & firstTrailingBit(-6161i))), ~vec4<i32>(~(~var_0.d.x), 34164i, ~(-18365i), -u_input.c.x));
    var var_3 = -1177f;
    return select(select(select(vec4<bool>(true, true, var_2.b, true), select(!vec4<bool>(var_2.b, var_0.c, true, var_0.b), vec4<bool>(var_0.b, var_0.c, var_0.c, true), select(vec4<bool>(var_0.b, true, true, true), vec4<bool>(false, false, true, var_0.b), vec4<bool>(var_2.c, var_2.b, var_0.b, true))), !(!vec4<bool>(var_0.b, var_2.b, var_0.c, var_0.b))), !(!vec4<bool>(true, var_2.b, true, false)), !select(!vec4<bool>(var_2.b, var_0.b, true, var_0.c), !vec4<bool>(var_0.b, var_2.c, var_2.b, var_2.c), select(var_2.c, true, false))), select(select(!(!vec4<bool>(false, var_0.b, var_2.c, var_0.b)), select(vec4<bool>(false, true, false, var_0.b), !vec4<bool>(var_2.b, true, var_0.c, true), select(vec4<bool>(var_2.c, var_2.c, true, true), vec4<bool>(var_0.b, var_2.b, false, true), vec4<bool>(var_2.c, var_0.c, true, true))), select(!vec4<bool>(var_0.b, var_0.c, var_0.b, true), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.b), var_2.b)), select(vec4<bool>(true | var_0.b, !var_2.c, true, all(vec2<bool>(true, var_0.c))), select(!vec4<bool>(false, false, var_2.b, var_2.c), !vec4<bool>(var_2.b, true, false, var_0.b), select(vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(var_0.c, true, var_0.b, false), vec4<bool>(var_2.b, false, var_2.b, var_2.c))), !vec4<bool>(var_2.c, var_0.b, false, true)), _wgslsmith_f_op_f32(min(-426f, var_2.a)) != _wgslsmith_f_op_f32(abs(569f))), !(!(var_0.c && select(var_0.c, var_0.b, var_2.b))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec2<i32> {
    var var_0 = !(!(!vec3<bool>(true, true, arg_0)));
    var var_1 = Struct_2(arg_1.x, all(!var_0.yx) & arg_0, true, ~vec4<i32>(-(~u_input.c.x), 1i, 1i, u_input.c.x));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x) * _wgslsmith_f_op_f32(min(-569f, _wgslsmith_f_op_f32(round(-859f))))))));
    let var_3 = Struct_2(var_1.a, arg_0, var_1.c, vec4<i32>(~abs(u_input.c.x << (83398u % 32u)), 14656i, max(~select(u_input.d.x, u_input.a, false), u_input.b), ~var_1.d.x));
    return ~select(vec2<i32>(-26452i, select(0i, u_input.b, arg_0)) | (var_1.d.yy & ~vec2<i32>(-1i, u_input.c.x)), vec2<i32>(39462i, u_input.c.x), all(func_3()));
}

fn func_1() -> StorageBuffer {
    var var_0 = u_input.c.wy;
    var_0 = ~(-_wgslsmith_mod_vec2_i32(u_input.d & ~u_input.c.wy, func_2(all(vec3<bool>(true, true, false)), vec2<f32>(-1000f, 223f))));
    var var_1 = ~1u;
    var_1 = 1u << ((_wgslsmith_mod_u32(min(3063u, 0u), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10790u, 0u), vec3<u32>(1u, 5594u, 21963u)), _wgslsmith_sub_u32(4294967295u, 0u))) ^ abs(0u)) % 32u);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-171f)) * -537f))), !((true | any(vec4<bool>(true, true, true, false))) != false), select(!(!any(vec4<bool>(false, false, false, true))), func_3().x, true), vec4<i32>(-6603i, _wgslsmith_dot_vec3_i32(u_input.c.ywx ^ ~u_input.c.wzw, _wgslsmith_clamp_vec3_i32(u_input.c.xzy << (vec3<u32>(109351u, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(0i, u_input.b, u_input.b) >> (vec3<u32>(47599u, 20768u, 1u) % vec3<u32>(32u)), ~u_input.c.zyz)), -var_0.x, abs(~38977i)));
    return StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * 1814f) + _wgslsmith_f_op_f32(ceil(var_2.a))))), var_2.a), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

