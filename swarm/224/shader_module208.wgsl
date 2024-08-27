struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(max(-379f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -153f)))), arg_0.b, arg_0.c, min(u_input.c.x, u_input.c.x));
    return -925f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = Struct_1(509f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(219f, vec2<f32>(-1685f, 331f), vec4<u32>(6241u, arg_1, u_input.c.x, 42891u), 1u), u_input.b)))), _wgslsmith_div_f32(-863f, 1000f)))), ~(max(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 1u, 28650u, u_input.c.x), vec4<u32>(0u, 4294967295u, u_input.c.x, 9610u)), vec4<u32>(74402u, 18614u, 2486u, arg_1)) >> (vec4<u32>(1u, 25134u, u_input.c.x, 1u) % vec4<u32>(32u))), 7456u);
    var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(260f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.b.x))) + _wgslsmith_f_op_f32(floor(-516f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a * 781f), _wgslsmith_f_op_f32(f32(-1f) * -628f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(646f + var_0.a), -251f)))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 2990u, var_0.c.x, 4294967295u), vec4<u32>(var_0.d, u_input.c.x, var_0.d, 2749u), vec4<bool>(false, false, arg_2.x, arg_0)), ~vec4<u32>(92u, arg_1, u_input.c.x, arg_1)), 4294967295u, select(20389u, ~arg_1, arg_0), ~var_0.c.x), var_0.c.x);
    var var_1 = _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x - -1024f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + var_0.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-326f, _wgslsmith_f_op_f32(var_0.b.x + -1311f)))), _wgslsmith_f_op_vec2_f32(var_0.b - var_0.b), select(vec2<bool>(!arg_2.x, !arg_2.x), vec2<bool>(select(false, arg_0, arg_2.x), all(vec4<bool>(false, false, true, true))), true))), var_0.c, 4916u);
    var var_3 = Struct_1(146f, vec2<f32>(var_0.b.x, var_2.b.x), select(~vec4<u32>(var_2.c.x, var_0.c.x, var_0.d, 14417u) | var_0.c, var_0.c, any(arg_2.yy)), ~var_0.d);
    return select(true, all(arg_2), (68679i >> (var_0.c.x % 32u)) == _wgslsmith_dot_vec3_i32(abs(firstLeadingBit(u_input.a.xwz)), ~abs(u_input.a.wxw)));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    var_1 = var_0;
    let var_2 = !vec4<bool>(false, !(u_input.d != u_input.d) & true, select(func_2(true, arg_0.d, select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), any(vec2<bool>(true, true)), true), true);
    var_1 = var_0;
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(!all(vec2<bool>(true, false)), !(u_input.b != 1i), false, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))), !vec4<bool>(true, (-4584i == u_input.a.x) && true, func_1(Struct_1(815f, vec2<f32>(-808f, 713f), vec4<u32>(0u, 1u, 4294967295u, u_input.c.x), 1u)) <= abs(u_input.d), any(vec2<bool>(true, true))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(957f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(911f, -1335f)) - 585f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f * 1000f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-940f, 282f) * _wgslsmith_div_f32(220f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-117f)) * 120f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(410f, 1000f)))))), ~(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 1u, 37133u, 36825u), vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 17960u, u_input.c.x), vec4<u32>(14199u, 19112u, u_input.c.x, 1u)), all(var_0.xwx))), 33961u);
    let var_2 = Struct_1(var_1.b.x, vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(floor(var_1.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, vec2<f32>(var_1.a, -606f), var_1.c, var_1.d), u_input.d)) * 1000f))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.c.x, var_1.c.x), countOneBits(1957u)) >> (_wgslsmith_mult_u32(~4294967295u, 4294967295u) % 32u), abs(_wgslsmith_add_u32(1u << (var_1.c.x % 32u), 4523u)), _wgslsmith_clamp_u32(var_1.d ^ 0u, var_1.c.x, var_1.d) | var_1.c.x, reverseBits(_wgslsmith_div_u32(var_1.c.x, min(54433u, u_input.c.x)))), u_input.c.x);
    var_1 = var_2;
    var_1 = var_2;
    var_1 = Struct_1(1215f, var_2.b, vec4<u32>(~(~1u), ~(~1u), var_1.c.x, _wgslsmith_clamp_u32(var_2.c.x, 4294967295u, u_input.c.x)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.a + var_1.a), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_1.b, var_1.c, var_1.d), u_input.d)))), 221f, var_2.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(-160f)), _wgslsmith_f_op_f32(round(-1752f)), _wgslsmith_f_op_f32(-var_1.b.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(819f, 208f, var_1.b.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, var_2.a, var_2.a)))))), u_input.a.zzx, vec3<u32>(u_input.c.x, ~28396u, ~(~(var_2.d ^ 1u))));
}

