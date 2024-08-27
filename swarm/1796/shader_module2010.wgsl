struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    var var_0 = 1i;
    let var_1 = arg_0.x > 1318f;
    let var_2 = ~u_input.a.x >= ~select(u_input.a.x, u_input.a.x, var_1);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wxw)))));
    var_0 = 0i;
    return ~_wgslsmith_add_vec2_u32(u_input.a.wx, vec2<u32>(~u_input.a.x, 4294967295u | u_input.a.x)) ^ select(~vec2<u32>(min(48083u, 18509u), _wgslsmith_mult_u32(15097u, u_input.a.x)), vec2<u32>(~4294967295u, u_input.a.x), vec2<bool>(var_2, any(vec2<bool>(var_1, var_1))));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -561f)))));
    var var_1 = u_input.a.yy;
    var var_2 = u_input.a.x;
    var_1 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1775f, var_0), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(314f + _wgslsmith_div_f32(429f, arg_0)), _wgslsmith_div_f32(301f, _wgslsmith_f_op_f32(f32(-1f) * -639f)))));
    let var_3 = all(vec2<bool>((var_0 <= var_0) && false, !select(true, true, true))) || (-1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1059f + _wgslsmith_f_op_f32(ceil(var_0)))));
    return _wgslsmith_f_op_f32(step(arg_0, 245f));
}

fn func_1() -> Struct_1 {
    let var_0 = 247i;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), -878f, _wgslsmith_f_op_f32(func_2(484f))))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-506f, -1145f, 1499f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(619f, 167f, 713f))), vec3<bool>(true, false, true))), vec3<f32>(1f, 1f, 1f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(f32(-1f) * -296f)))));
    var var_2 = Struct_2(var_1.a, var_1.a, var_1.a);
    var_2 = var_1;
    let var_3 = select(select(select(vec3<bool>(true, true, any(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true)), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(any(vec3<bool>(true, false, false)), true, true), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, false, false)), any(vec3<bool>(false, true, false)))), vec3<bool>(true, true, true)), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), select(true, (var_1.b.a.x >= -2440f) || true, false)), !all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, true, true, true))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_2(var_2.b.a.x)), var_1.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(673f, -1302f))) * -251f)));
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(arg_0.a), func_1(), func_1());
    return -2415f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec4<bool>(any(vec2<bool>(false, false)), u_input.a.x < 4294967295u, all(vec4<bool>(false, true, true, true)), any(vec4<bool>(false, false, false, false)))));
    var var_1 = var_0.x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1555f + -574f) - _wgslsmith_f_op_f32(f32(-1f) * -1181f)), 562f) * _wgslsmith_f_op_f32(718f + -1179f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_1())))), -878f);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, 744f))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(floor(var_2.x)), -1260f, var_2.x)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1696f, -264f, _wgslsmith_f_op_f32(step(var_2.x, var_2.x))) + vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, 777f))));
    var_2 = var_3.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4294967295u), ~abs(vec4<i32>(2147483647i, 2543i << (1u % 32u), 20710i, 1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -127337i, -33043i), abs(vec3<i32>(2147483647i, -81475i, -40654i))) << (u_input.a.x % 32u), firstTrailingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_mod_i32(-2147483647i, -2147483647i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-30489i, 5126i, -9652i) << (u_input.a.zyz % vec3<u32>(32u)), vec3<i32>(1i, -67753i, -1i)), 1i), ~max(abs(24502i), 0i >> (1u % 32u))), _wgslsmith_mod_i32(1i, ~1i));
}

