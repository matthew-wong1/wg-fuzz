struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) + _wgslsmith_f_op_f32(arg_1.a.a * arg_1.a.b))), _wgslsmith_f_op_f32(abs(arg_1.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(937f * -216f)));
    var var_1 = ~vec3<i32>(-2147483647i, _wgslsmith_div_i32(-1i | arg_0.c.c, -15397i), i32(-1i) * -28308i);
    var var_2 = _wgslsmith_sub_u32(arg_0.a, firstTrailingBit(arg_0.b));
    var_2 = 0u;
    let var_3 = select(-vec4<i32>(_wgslsmith_mult_i32(arg_0.c.c, 55158i), var_1.x | u_input.a, u_input.a, -9915i), vec4<i32>(reverseBits(~(-1i)), select(~(-2147483647i), -arg_0.c.c, any(vec4<bool>(false, arg_0.d, true, arg_0.d))), var_1.x, u_input.c), arg_0.d) ^ (_wgslsmith_clamp_vec4_i32(min(~vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.a), vec4<i32>(44276i, 0i, 1i, arg_0.c.c)), select(-vec4<i32>(1i, u_input.a, -2147483647i, u_input.a), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(arg_0.d, false, arg_0.d, false), vec4<bool>(false, arg_0.d, true, arg_0.c.a), true)), vec4<i32>(_wgslsmith_mod_i32(var_1.x, -16901i), arg_0.c.c, 0i, reverseBits(0i))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(-1251i, 1106i), var_1.x, 11626i), vec4<i32>(-1i) * -vec4<i32>(u_input.a, arg_0.c.c, var_1.x, -24345i), -vec4<i32>(arg_0.c.c, 2147483647i, var_1.x, u_input.c)));
    return _wgslsmith_clamp_i32(-u_input.c, u_input.a, arg_0.c.c);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<f32> {
    var var_0 = Struct_3(false, firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(4294967295u), _wgslsmith_add_u32(u_input.b, arg_1.c), ~arg_1.c), ~vec3<u32>(u_input.b, arg_1.c, 1818u), ~(~vec3<u32>(u_input.b, u_input.b, arg_1.c)))), -40977i);
    var_0 = Struct_3(var_0.a, _wgslsmith_div_vec3_u32(~(~abs(var_0.b)), _wgslsmith_add_vec3_u32(~var_0.b, vec3<u32>(1u, arg_1.c, var_0.b.x)) ^ vec3<u32>(arg_1.c, ~var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(694u, 0u, 0u, 1u), vec4<u32>(u_input.b, var_0.b.x, u_input.b, 1u)))), -_wgslsmith_sub_i32(_wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(var_0.c, -2147483647i)), min(_wgslsmith_mult_i32(-2495i, arg_0.a), u_input.a)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(349f)), -1268f, 4294967295u), var_0.b.zz);
    var_0 = Struct_3(all(vec4<bool>(arg_2.x != true, !all(arg_2), var_0.a, var_0.a)), var_0.b, _wgslsmith_mod_i32(~(-27555i), 15528i));
    var_0 = Struct_3(!arg_2.x, var_0.b | var_0.b, max(func_3(Struct_4(u_input.b, ~arg_1.c, Struct_3(var_0.a, var_0.b, arg_0.a), any(vec2<bool>(true, arg_2.x))), Struct_2(Struct_1(-1457f, arg_1.a, 13384u), vec2<u32>(0u, 1906u))), firstTrailingBit(~_wgslsmith_mult_i32(u_input.a, u_input.c))));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1043f, -531f, -1627f, var_1.a.b)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-405f, -412f, -1026f, var_1.a.a))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(323f, 905f, arg_1.b, var_1.a.a)))))))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(308f + -2731f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 849f, -625f, -1499f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(Struct_5(0i), Struct_1(1157f, -709f, 0u), vec2<bool>(false, false)))))), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(907f, 572f, 4325f, 286f), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))))))));
    var var_2 = !(!any(vec4<bool>(true, true, true, true)) | any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0, arg_0) << (abs(~vec2<u32>(31186u, 36296u)) % vec2<u32>(32u)), vec2<i32>(1i, ~(~1i))) <= 9185i;
    var_3 = any(select(!vec3<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, true, true)), select(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, true)), true, u_input.c <= -2147483647i), vec3<bool>(all(vec3<bool>(true, false, true)), true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(false, false, true))));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(~u_input.b == 32834u, true, true, !any(vec3<bool>(true, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))), true);
    let var_1 = u_input.c;
    var var_2 = vec2<bool>(any(!var_0.xz) || var_0.x, all(var_0.zx));
    let var_3 = Struct_3(!(false || !any(vec3<bool>(false, var_0.x, true))), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.b, u_input.b)), ~(~u_input.b), _wgslsmith_add_u32(func_1(9556i), u_input.b)) << (vec3<u32>(u_input.b << (_wgslsmith_sub_u32(108033u, u_input.b) % 32u), _wgslsmith_add_u32(u_input.b, u_input.b) | u_input.b, _wgslsmith_sub_u32(u_input.b, 0u) << (countOneBits(4294967295u) % 32u)) % vec3<u32>(32u)), _wgslsmith_clamp_i32(u_input.a, -9363i, -var_1));
    var_0 = select(select(vec4<bool>(var_3.a, var_3.a, !(!var_3.a), var_3.a), vec4<bool>(false, var_0.x, false, max(var_1, u_input.a) < ~2147483647i), false), select(!(!select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(var_2.x, false, var_3.a, var_0.x), vec4<bool>(var_3.a, var_3.a, false, var_0.x))), vec4<bool>(var_0.x, var_3.b.x != ~50462u, true, true), select(vec4<bool>(any(vec4<bool>(false, true, var_3.a, true)), false, any(var_0.yw), var_3.a), select(!vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, var_3.a, true, true), var_0.x), vec4<bool>(true, true, true, true)), true)), false);
    var_2 = var_0.wy;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1415f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, var_3.b.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_4, 2009f, var_4)))))))));
}

