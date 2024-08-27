struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 0i, 0i, i32(-2147483648)), 5027u, true);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = Struct_1(global0.a, firstTrailingBit(~u_input.c), ~global0.c, false);
    var var_0 = Struct_1(!vec2<bool>(global0.d, true), u_input.c, ~global0.c, !(!any(!vec3<bool>(global0.a.x, true, global0.d))));
    return _wgslsmith_f_op_f32(-451f + -215f);
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_1, -361f, global0.d))));
    global0 = Struct_1(global0.a, u_input.c ^ min(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.b, vec4<i32>(global0.b.x, global0.b.x, 14800i, 46148i), u_input.c), vec4<i32>(arg_2.x, 1i, arg_0.x, arg_2.x)), vec4<i32>(83955i, -30783i, 29213i, 2147483647i) | global0.b), u_input.b, global0.a.x);
    var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(abs(134f))) > _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(ceil(1547f))), _wgslsmith_div_i32(arg_2.x, -global0.b.x) < u_input.a.x), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.b.x, arg_0.x, arg_0.x, global0.b.x) << (~vec4<u32>(arg_3.x, arg_3.x, 31909u, u_input.b) % vec4<u32>(32u)), global0.b), 80371u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1))) == arg_1);
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(trunc(arg_1)) != _wgslsmith_f_op_f32(f32(-1f) * -1682f), !global0.d);
    return var_2;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = Struct_1(!(!select(func_2(global0.b.xxw, -870f, vec2<i32>(arg_0.b.x, arg_0.b.x), vec3<u32>(var_0.c, 2647u, 86367u)), vec2<bool>(arg_1.d, true), !var_0.a)), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-11517i, 24597i, 2147483647i, -5957i))) & global0.b, 1u, true);
    global0 = var_0;
    return Struct_1(!(!arg_1.a), _wgslsmith_div_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-25967i, var_0.b.x, arg_1.b.x, u_input.c.x), vec4<i32>(0i, -17769i, 32518i, 249i)), global0.b << (vec4<u32>(arg_1.c, 49848u, 1u, 5212u) % vec4<u32>(32u)), arg_1.a.x) >> ((countOneBits(vec4<u32>(var_0.c, u_input.b, 37712u, arg_0.c)) | ~vec4<u32>(arg_1.c, 8153u, 25249u, arg_0.c)) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(27830i, -7150i, min(2147483647i, -2147483647i), reverseBits(arg_0.b.x)))), ~var_0.c, -2147483647i >= ~var_0.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_1 {
    global0 = arg_0;
    return Struct_1(!vec2<bool>(any(!vec3<bool>(global0.a.x, true, global0.a.x)), false), func_1(func_1(Struct_1(select(vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(false, arg_0.a.x), vec2<bool>(true, false)), vec4<i32>(global0.b.x, 21716i, 44846i, -15444i), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, arg_0.c, arg_0.c, u_input.b), vec4<u32>(global0.c, 4294967295u, 1u, u_input.b)), true), arg_0), arg_0).b, u_input.b, any(vec3<bool>(true, func_2(vec3<i32>(u_input.a.x, arg_0.b.x, u_input.a.x), -1621f, global0.b.yz, vec3<u32>(0u, 40908u, 4294967295u)).x != true, !(0i >= u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(Struct_1(select(vec2<bool>(true, true), !vec2<bool>(global0.a.x, global0.a.x), vec2<bool>(global0.d, true)), _wgslsmith_div_vec4_i32(~global0.b, _wgslsmith_sub_vec4_i32(global0.b, vec4<i32>(1i, 47981i, global0.b.x, global0.b.x))), ~4294967295u, true), Struct_1(vec2<bool>(true, !global0.d), global0.b, global0.c, all(vec3<bool>(true, false, global0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1202f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1988f + _wgslsmith_f_op_f32(step(836f, -1439f))) + _wgslsmith_f_op_f32(447f + _wgslsmith_f_op_f32(step(-903f, -790f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(183f, -577f, 1274f))), vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1076f, -855f, -343f), vec3<f32>(2046f, 1257f, 477f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(354f, -1063f, -588f), vec3<f32>(-391f, 2457f, -417f)))))), vec4<f32>(-927f, -2030f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -212f))) - _wgslsmith_f_op_f32(904f * -1211f)), _wgslsmith_f_op_f32(abs(394f))));
    var var_0 = global0.a.x;
    var_0 = true == global0.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1486f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-513f, -919f)))))));
    var_0 = true;
    var_1 = -497f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(~abs(u_input.b), abs(func_1(Struct_1(global0.a, vec4<i32>(-2147483647i, 21554i, 20141i, 1i), 22975u, false), Struct_1(global0.a, vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, u_input.a.x), 96764u, global0.a.x)).c), _wgslsmith_div_u32(1u, u_input.b & u_input.b)), firstTrailingBit(vec3<u32>(global0.c, ~28650u, select(34287u, u_input.b, true)))), _wgslsmith_add_vec3_u32(min(min(vec3<u32>(0u, global0.c, global0.c), ~vec3<u32>(0u, global0.c, global0.c)), min(vec3<u32>(global0.c, global0.c, 1u), vec3<u32>(1u, 0u, 0u)) & max(vec3<u32>(0u, 1u, global0.c), vec3<u32>(3441u, 0u, 4294967295u))), firstTrailingBit(vec3<u32>(~u_input.b, u_input.b, _wgslsmith_add_u32(36791u, 14119u)))), vec4<f32>(_wgslsmith_div_f32(839f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1000f, 280f, true)), _wgslsmith_f_op_f32(f32(-1f) * -239f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1800f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(602f, 550f)) + -1343f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) + 851f)))), -2147483647i);
}

