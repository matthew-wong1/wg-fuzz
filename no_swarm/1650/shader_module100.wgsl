struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec4<bool> {
    var var_0 = Struct_2(!vec4<bool>(any(arg_3), false, all(!arg_3), _wgslsmith_f_op_f32(-arg_1.a.x) < _wgslsmith_f_op_f32(-480f - -370f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_1.a.x, arg_2.x)), _wgslsmith_f_op_f32(floor(-1097f)))))), -vec3<i32>(-885i, _wgslsmith_div_i32(~(-2147483647i), -86753i), _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -10717i), vec2<i32>(1i, 1i))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, arg_2.x, arg_2.x)))))));
    let var_1 = Struct_1(vec3<f32>(1452f, arg_2.x, -419f));
    var_0 = Struct_2(var_0.a, var_1.a.x, -firstLeadingBit(firstLeadingBit(var_0.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.a - arg_1.a)))));
    let var_2 = select(vec2<i32>(4030i, var_0.c.x) | select(var_0.c.zx, -(~vec2<i32>(var_0.c.x, -29825i)), var_0.a.zx), -_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(min(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(var_0.c.x, var_0.c.x)), firstLeadingBit(var_0.c.xx)), -_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, 1i), vec2<i32>(var_0.c.x, var_0.c.x))), all(vec3<bool>(true, arg_0, false)));
    var var_3 = Struct_2(vec4<bool>(!(!all(var_0.a.yx)), true, any(var_0.a.xyy), arg_0), -1089f, vec3<i32>(_wgslsmith_mod_i32(var_0.c.x, var_0.c.x), 2147483647i, 14337i) ^ vec3<i32>(1i, -11979i, var_2.x), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-386f)), 734f, -183f) + _wgslsmith_f_op_vec3_f32(-var_0.d.a))));
    return select(var_3.a, var_3.a, _wgslsmith_f_op_f32(select(636f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, -1119f)), var_0.a.x)) > -1285f);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(!(!func_3(false, Struct_1(vec3<f32>(-1371f, 1084f, 1350f)), vec2<f32>(2275f, -237f), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -357f)), _wgslsmith_f_op_f32(abs(-344f)))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-16008i, 39723i)), 19655i, ~1i), vec3<i32>(1i, _wgslsmith_div_i32(32692i, 17187i), -29926i >> (u_input.b.x % 32u))), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1025f, 1114f, 381f)))))))));
    var var_1 = ~(~_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, 27899u, u_input.b.x, 27557u), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.a))), vec4<u32>(min(1u, 1u), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.b), 1u)));
    var var_2 = var_0.d;
    var_2 = var_0.d;
    let var_3 = Struct_2(vec4<bool>(true, false, all(vec2<bool>(any(vec2<bool>(true, var_0.a.x)), var_0.a.x)), any(vec4<bool>(all(vec4<bool>(var_0.a.x, true, true, var_0.a.x)), any(vec4<bool>(false, false, var_0.a.x, var_0.a.x)), false, var_0.a.x))), _wgslsmith_f_op_f32(floor(1961f)), vec3<i32>(-2388i, firstLeadingBit(_wgslsmith_div_i32(var_0.c.x, -15452i)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.c.x, -50258i), vec3<i32>(var_0.c.x, -2147483647i, -2147483647i)), var_0.c.x, var_0.a.x)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.a.x - var_0.d.a.x), _wgslsmith_f_op_f32(-735f * 400f), all(var_0.a.yxz))), _wgslsmith_f_op_f32(floor(var_0.d.a.x)), _wgslsmith_f_op_f32(max(-743f, -457f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.a.x * -774f) * _wgslsmith_f_op_f32(round(var_3.b)))))) - -1000f);
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.x))) > arg_0.a.x, true, true, true), -232f, firstLeadingBit(vec3<i32>(2701i, _wgslsmith_mod_i32(abs(15969i), 2147483647i), _wgslsmith_clamp_i32(6412i, 33322i, 1i))), Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.a, vec3<f32>(760f, arg_0.a.x, 901f), true)))))));
    let var_1 = _wgslsmith_f_op_f32(func_2());
    var var_2 = abs(vec2<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(14451u, 4294967295u, u_input.b.x, u_input.a)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, 4294967295u, 1u), vec4<u32>(4294967295u, 50575u, u_input.a, u_input.b.x)), reverseBits(vec4<u32>(1u, u_input.a, 31872u, u_input.a)), var_0.a)), ~(~60142u)));
    var_0 = Struct_2(select(func_3(all(func_3(true, Struct_1(arg_0.a), var_0.d.a.yz, var_0.a.xy).xzz), Struct_1(var_0.d.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.a.xz * vec2<f32>(var_1, -312f)))), vec2<bool>(select(var_0.a.x, true, false), any(var_0.a))), var_0.a, vec4<bool>(true, var_0.a.x, all(vec3<bool>(var_0.a.x, false, true)), var_0.a.x)), _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -abs(var_0.c), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1)), 776f, _wgslsmith_f_op_f32(731f * 407f))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_0.a, vec3<f32>(-1000f, var_0.d.a.x, 1000f)))))));
    return var_0.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = u_input.b;
    var_0 = (~u_input.b ^ (u_input.b | ~(vec2<u32>(12491u, 34996u) & u_input.b))) & vec2<u32>(abs(83205u), select(select(4294967295u, var_0.x, arg_0.a.x), 1u, true) ^ min(0u, 1u));
    var_0 = _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(~u_input.b, ~(~vec2<u32>(0u, 86346u)), ~abs(u_input.b)), vec2<u32>(u_input.a, 1u));
    let var_1 = Struct_2(vec4<bool>(true, any(select(func_3(arg_0.a.x, Struct_1(arg_1.a), vec2<f32>(arg_1.a.x, arg_1.a.x), arg_0.a.xw), arg_0.a, func_1(Struct_1(arg_2.a)))), true | arg_0.a.x, false), 326f, vec3<i32>(-2147483647i, arg_0.c.x, 0i), arg_2);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_2.a)));
    return Struct_2(arg_0.a, _wgslsmith_f_op_f32(round(arg_1.a.x)), -arg_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.a.x + var_1.b), _wgslsmith_f_op_f32(max(var_1.d.a.x, arg_0.d.a.x)), var_1.d.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(252f * 1000f)))), _wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(1179f - -1606f)))), -650f, 605f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xwz)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-153f * _wgslsmith_f_op_f32(-655f - -349f))))) + var_1.a.x);
    var var_3 = func_4(Struct_2(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true, func_1(Struct_1(var_0.wyy)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 130641u, 38200u), vec4<u32>(u_input.a, 116386u, u_input.a, u_input.a)) <= _wgslsmith_mult_u32(u_input.a, 22323u)), 1493f, vec3<i32>(-(~(-78857i)), ~_wgslsmith_div_i32(-31279i, 1i), i32(-1i) * -7699i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(795f * var_0.x), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(var_0.x + 1509f)))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.wyx + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - var_1.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1228f, -416f, -228f))))), Struct_1(var_1.a));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -1000f, var_0.x, var_3.b))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-394f, var_1.a.x, 1551f, var_3.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 2111f, 1672f, -437f) * vec4<f32>(var_0.x, var_3.b, 587f, -590f)))))));
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-1000f);
}

