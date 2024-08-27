struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    let var_0 = arg_1.a;
    var var_1 = select(true, false, !all(!select(var_0.c.yx, vec2<bool>(false, true), arg_1.a.c.x)));
    var_1 = true;
    var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), -446f), arg_0));
    return 155f;
}

fn func_2() -> u32 {
    var var_0 = -228f;
    let var_1 = Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(-188f, Struct_2(Struct_1(u_input.d, vec2<f32>(333f, 438f), vec4<bool>(true, false, false, false), 490f, -121f), true))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -379f), Struct_2(Struct_1(1i, vec2<f32>(548f, 112f), vec4<bool>(true, true, false, false), 467f, -386f), true))))), select(vec4<bool>(true, true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false)), true), vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec2<bool>(false, false)), any(vec3<bool>(true, true, true))), vec4<bool>(true, u_input.a.x != 4294967295u, true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f))), -1000f);
    var_0 = var_1.e;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-838f)))), -464f)));
    var_0 = _wgslsmith_f_op_f32(max(var_2.x, var_2.x));
    return select(~11089u, _wgslsmith_div_u32(min(min(1u, 1u), countOneBits(~1u)), abs(u_input.c.x) ^ ~(12939u ^ u_input.c.x)), any(var_1.c.wzx));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec4<u32>(func_2() ^ u_input.c.x, u_input.b.x, 0u, reverseBits(~_wgslsmith_dot_vec3_u32(u_input.b ^ vec3<u32>(u_input.a.x, 70547u, 1u), u_input.b)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(sign(-678f))))))));
    let var_3 = Struct_2(Struct_1(i32(-1i) * -16470i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, 898f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2027f, 169f)))), !(!select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, true, var_0, false), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(sign(152f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), any(select(select(select(vec2<bool>(true, var_0), vec2<bool>(true, true), false), select(vec2<bool>(var_0, false), vec2<bool>(false, false), vec2<bool>(var_0, false)), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, true), true), var_0)));
    var_2 = _wgslsmith_f_op_f32(-var_3.a.b.x);
    return Struct_1(-(~arg_0.x), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.a.b.x, -589f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.b.x, var_3.a.d) + _wgslsmith_f_op_vec2_f32(var_3.a.b * var_3.a.b))))), var_3.a.c, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_3.a.d, 905f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1917f), _wgslsmith_f_op_f32(floor(-1603f)), true)), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.e) * _wgslsmith_f_op_f32(-822f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.d) * _wgslsmith_f_op_f32(268f + -1039f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(-vec3<i32>(i32(-1i) * -43750i, 0i, -2147483647i)), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_div_f32(-1480f, -847f)) <= _wgslsmith_f_op_f32(max(-718f, -1667f))));
    var_0 = Struct_2(var_0.a, !(!(func_1(vec3<i32>(-1i, var_0.a.a, u_input.d)).b.x <= var_0.a.e)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -623f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var_0 = Struct_2(func_1(-(~_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.a, u_input.d, u_input.e.x), vec3<i32>(var_0.a.a, var_0.a.a, -8454i)))), !(select(u_input.c.x, 16446u, var_0.a.c.x) < _wgslsmith_mod_u32(u_input.b.x, u_input.c.x)) & var_0.a.c.x);
    var_0 = Struct_2(func_1(vec3<i32>(u_input.e.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a, 25324i, var_0.a.a), vec3<i32>(-1698i, -7987i, var_0.a.a))), ~_wgslsmith_add_i32(var_0.a.a, -24920i))), all(func_1(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0.a.a, var_0.a.a), vec3<i32>(u_input.e.x, u_input.d, 1i))).c.xz));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, 762f, 968f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -103f, 172f)), var_0.a.c.zxy)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1033f, 643f, 215f) + vec3<f32>(var_1, var_1, var_0.a.e)), vec3<f32>(var_0.a.b.x, 868f, 319f))), any(!vec3<bool>(false, var_0.b, var_0.a.c.x)))))));
    var var_3 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_div_vec2_f32(var_2.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_0.a.b.x)))), select(!var_0.a.c, !vec4<bool>(var_0.b, true, false, var_0.b), !var_0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(863f, -982f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-291f + 1035f)))), 362f), func_1(-(~(-vec3<i32>(u_input.d, -27599i, -2147483647i)))).c.x);
    var var_4 = var_3.a;
    var_0 = Struct_2(var_0.a, true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~var_4.a, _wgslsmith_sub_i32(max(u_input.e.x, -42893i), firstLeadingBit(~7244i))), var_3.a.a, _wgslsmith_div_vec2_u32(~(~(vec2<u32>(u_input.c.x, u_input.b.x) << (u_input.c % vec2<u32>(32u)))), vec2<u32>(13237u, 39508u) | _wgslsmith_clamp_vec2_u32(vec2<u32>(38571u, 57136u), u_input.a, _wgslsmith_add_vec2_u32(u_input.c, u_input.b.yx))));
}

