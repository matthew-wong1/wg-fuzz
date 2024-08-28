struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, ~countOneBits(32303u)), ~63906u), 4294967295u, u_input.a.x, !(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, true, false))), !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false)))));
    var var_1 = 1u ^ (~16948u | _wgslsmith_div_u32(_wgslsmith_div_u32(~60982u, var_0.c), u_input.b.x));
    let var_2 = !(var_0.d.x != false);
    let var_3 = var_0.d.xzz;
    let var_4 = var_2;
    return abs(~var_0.a.x);
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = arg_0;
    var var_1 = 271f;
    let var_2 = firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, min(4294967295u, u_input.a.x), ~func_3() << (~min(4294967295u, u_input.b.x) % 32u)));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a.x))));
    var var_3 = Struct_3(~u_input.a, u_input.a.x, u_input.b.x, !(!select(vec4<bool>(false, arg_1.x, false, false), vec4<bool>(true, arg_1.x, false, arg_1.x), arg_3.a.x <= arg_3.a.x)), true);
    return 2147483647i;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(756f, -414f, -1030f, -938f)))))), vec4<f32>(341f, _wgslsmith_f_op_f32(max(-857f, -1231f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-354f, _wgslsmith_f_op_f32(f32(-1f) * -774f)))), 1f));
    var var_1 = Struct_5(abs(_wgslsmith_div_u32(~4294967295u, u_input.b.x) >> ((countOneBits(u_input.a.x) << (_wgslsmith_add_u32(u_input.b.x, u_input.b.x) % 32u)) % 32u)), Struct_1(vec4<i32>(select(45392i, 2147483647i, true), i32(-1i) * -1i, max(-32161i, 60361i), _wgslsmith_clamp_i32(-1i, 1i, -2147483647i)) << (vec4<u32>(487u, ~8409u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), -vec3<i32>(~(-3916i), -20332i, func_2(-10332i, vec2<bool>(false, false), Struct_1(vec4<i32>(75031i, -1i, 1i, 1i), vec3<i32>(2147483647i, 2147483647i, 23664i), 1i), Struct_2(var_0.a, var_0.a))), 0i), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1073f, var_0.a.x, var_0.b.x) * var_0.a))), vec4<f32>(1699f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.x, var_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.a.x)))), var_0.b.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1380f) - _wgslsmith_div_f32(var_1.c.a.x, var_1.c.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1658f), _wgslsmith_f_op_f32(round(var_0.a.x)), arg_0.x && arg_0.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-132f, var_0.a.x, var_1.c.b.x), vec3<f32>(1360f, 700f, var_0.b.x), arg_0.x))))), var_0.a.xww));
    var_1 = Struct_5(42362u, var_1.b, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)), vec4<f32>(var_1.c.a.x, var_2.x, var_2.x, 1431f)), vec4<bool>(any(vec3<bool>(false, arg_0.x, arg_0.x)), true, true, all(arg_0.ww)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_2.x, 1790f, var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-599f + 1574f), -1363f, -1344f, -419f)))));
    var var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-212f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.c.a.x, 704f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_mod_u32(select(~_wgslsmith_div_u32(~u_input.a.x, u_input.b.x & u_input.a.x), reverseBits(abs(_wgslsmith_add_u32(93888u, u_input.b.x))), true), ~select(_wgslsmith_mod_u32(16704u, max(u_input.a.x, 34615u)), ~firstTrailingBit(35553u), true));
    let var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(func_3() | 37893u, _wgslsmith_mod_u32(var_1, firstLeadingBit(1u)), ~20189u), vec3<u32>(var_1, 94979u, 10188u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1043f - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-836f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -335f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1416f))))))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, -61886i), vec3<i32>(-31772i, 56174i, -1i) << (vec3<u32>(u_input.a.x, var_1, var_2) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-51326i, -1i, 2147483647i), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 2147483647i, 1i))), 29007i);
}

