struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = select(!arg_2, vec4<bool>(false, false, arg_1.x, all(select(select(vec3<bool>(false, true, true), vec3<bool>(arg_1.x, arg_0.x, false), vec3<bool>(arg_1.x, false, arg_2.x)), !vec3<bool>(arg_0.x, true, false), true))), !arg_2);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-691f, _wgslsmith_div_f32(-402f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(528f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(243f))))))));
    let var_3 = var_0.zx;
    var var_4 = Struct_3(Struct_2(any(vec2<bool>(false, arg_0.x)), Struct_1(861f, _wgslsmith_f_op_f32(floor(-1285f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-527f, var_2.x, var_2.x) * vec3<f32>(956f, var_2.x, var_2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, var_2.x), var_2.yyw)), ~1u)), Struct_2(true, Struct_1(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(748f * -1042f)), _wgslsmith_f_op_vec3_f32(sign(var_2.xzy)), u_input.a.x)), arg_2.x && arg_2.x, !all(!(!vec2<bool>(false, arg_1.x))));
    return !select(vec4<bool>(false, false, var_1.x, arg_1.x), arg_2, true);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: i32) -> vec2<bool> {
    let var_0 = vec3<u32>(u_input.a.x, firstLeadingBit(~12355u), _wgslsmith_mult_u32(~u_input.a.x, u_input.a.x));
    var var_1 = Struct_4(Struct_2(all(vec2<bool>(true, true)), Struct_1(1000f, -1110f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-388f, 165f, arg_2))), 34615u)));
    var_1 = Struct_4(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(-1f), -568f, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_2, -1537f))), u_input.a.x)));
    var_1 = Struct_4(Struct_2(arg_0.x == (false & all(arg_0.zy)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2137f + 807f) * -970f), -1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(129f, arg_1, arg_2)))), 1u)));
    var var_2 = select(all(!(!func_3(arg_0.yx, arg_0.zy, vec4<bool>(var_1.a.a, arg_0.x, arg_0.x, false)))), all(vec2<bool>(arg_0.x, false & (var_1.a.a && arg_0.x))), false);
    return select(!vec2<bool>(func_3(select(vec2<bool>(arg_0.x, false), arg_0.zx, vec2<bool>(var_1.a.a, false)), func_3(arg_0.zz, arg_0.xx, vec4<bool>(var_1.a.a, false, arg_0.x, var_1.a.a)).zz, func_3(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, var_1.a.a), vec4<bool>(var_1.a.a, true, true, arg_0.x))).x, all(vec3<bool>(var_1.a.a, arg_0.x, var_1.a.a))), !arg_0.zy, !vec2<bool>(false, !all(vec2<bool>(false, true))));
}

fn func_1() -> f32 {
    var var_0 = Struct_5(select(vec2<bool>(true, true), select(func_2(vec3<bool>(true, true, true), 237f, -748f, 0i), func_3(vec2<bool>(false, true), func_2(vec3<bool>(true, true, true), -1096f, 519f, 2147483647i), func_3(vec2<bool>(true, false), vec2<bool>(true, false), vec4<bool>(false, true, false, false))).zz, vec2<bool>(true, true)), vec2<bool>(false, true)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~u_input.a.x, ~0u), ~(~vec4<u32>(0u, 1u, u_input.a.x, 18011u))), 49746u, 8310u, 50344u), Struct_1(-152f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -250f))), -1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-294f, 902f, -529f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2301f, 869f, -1102f) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-993f, -247f, 1580f))))), u_input.a.x));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, var_0.c.a))), var_0.c.c.x)));
    var_0 = Struct_5(!vec2<bool>(any(vec3<bool>(true, false, false)), var_0.a.x), vec4<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_0.b.x, 4294967295u), vec3<u32>(u_input.a.x, var_0.c.d, u_input.a.x)) & u_input.a.x) ^ 41277u, ~((u_input.a.x << (u_input.a.x % 32u)) << (11754u % 32u)), var_0.b.x, var_0.c.d), Struct_1(_wgslsmith_f_op_f32(sign(1000f)), 279f, _wgslsmith_f_op_vec3_f32(select(var_0.c.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_0.c.a, var_1)), _wgslsmith_f_op_vec3_f32(-var_0.c.c), any(vec2<bool>(false, false)))), vec3<bool>(var_0.c.b > 761f, var_0.a.x, !var_0.a.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), abs(u_input.a)), min(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c.d, u_input.a.x), u_input.a), var_0.b.xw))));
    var_0 = Struct_5(func_2(func_3(var_0.a, vec2<bool>(var_0.a.x, !var_0.a.x), select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), select(vec4<bool>(var_0.a.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(true, false, var_0.a.x, true)), var_0.c.b > 618f)).ywx, var_0.c.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_0.c.b)))), 0i), vec4<u32>(4294967295u, select(~55535u, 0u, true), u_input.a.x, select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 44783u, u_input.a.x, var_0.c.d), vec4<u32>(var_0.b.x, var_0.c.d, var_0.c.d, var_0.b.x)) ^ countOneBits(18294u), ~reverseBits(var_0.b.x), false)), Struct_1(_wgslsmith_f_op_f32(199f * -776f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.c.b, var_0.c.c.x), var_0.c.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-210f, _wgslsmith_f_op_f32(-170f - var_0.c.c.x), 192f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.c)), true)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.d, u_input.a.x, 884u, 19603u) >> (var_0.b % vec4<u32>(32u)), vec4<u32>(var_0.c.d, 474u, 53271u, u_input.a.x)), var_0.c.d, !(!var_0.a.x))));
    var var_2 = _wgslsmith_div_f32(var_0.c.a, -1000f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1371f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1203f, var_0.c.a, var_0.a.x))))))), _wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_div_f32(var_0.c.a, -1364f)))))), !all(select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.x, true, true), true), vec3<bool>(true, true, true), var_0.a.x))));
}

fn func_4(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(-763f - arg_0), all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -1207f) * vec3<f32>(-474f, arg_0, arg_0)), vec3<f32>(_wgslsmith_div_f32(arg_0, -749f), _wgslsmith_f_op_f32(arg_0 * -530f), -1584f))), ~4294967295u));
    let var_1 = abs(~(~vec3<u32>(1u, select(19299u, var_0.b.d, false), countOneBits(u_input.a.x))));
    let var_2 = -820f;
    var var_3 = Struct_4(var_0);
    var_3 = Struct_4(Struct_2(!all(select(vec3<bool>(var_0.a, var_3.a.a, true), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, var_3.a.a, false))), Struct_1(var_0.b.b, var_0.b.c.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_3.a.b.c, var_3.a.b.c, vec3<bool>(false, false, true))))), ~(0u >> (var_0.b.d % 32u)))));
    return Struct_2(var_3.a.b.c.x > _wgslsmith_f_op_f32(-var_0.b.b), Struct_1(_wgslsmith_f_op_f32(349f - -638f), -1133f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1()), var_2, _wgslsmith_f_op_f32(var_2 * var_2))), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1()))));
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(func_4(var_0.b.a).b.c))));
    let var_2 = ~vec3<u32>(4294967295u, ~(4294967295u ^ _wgslsmith_clamp_u32(u_input.a.x, var_0.b.d, 0u)), 1u);
    var var_3 = _wgslsmith_mod_i32(1i, -1i);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, 1919f), 257f, _wgslsmith_f_op_f32(var_0.b.a + var_0.b.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1000f, _wgslsmith_div_f32(-539f, var_1.x)) - _wgslsmith_f_op_vec3_f32(select(var_0.b.c, var_0.b.c, vec3<bool>(true, var_0.a, true)))))));
    let var_4 = countOneBits(~(~(~_wgslsmith_dot_vec2_u32(var_2.xz, u_input.a))));
    let var_5 = 4294967295u >> (1u % 32u);
    let var_6 = Struct_3(var_0, var_0, var_0.a, var_0.a);
    var var_7 = -745f;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(reverseBits(firstTrailingBit(min(-2147483647i, 0i))), 0i), select(vec3<i32>(min(_wgslsmith_mult_i32(1i, 64269i), _wgslsmith_div_i32(1i, 25679i)), -14098i, _wgslsmith_sub_i32(-2147483647i, 1i)), -vec3<i32>(1i, 1i, 1i), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, var_6.a.a), vec3<bool>(false, var_0.a, var_6.b.a), var_6.c), !vec3<bool>(var_6.d, var_6.b.a, var_6.c))), 4294967295u, 1i << (~var_6.a.b.d % 32u), ~var_0.b.d);
}

