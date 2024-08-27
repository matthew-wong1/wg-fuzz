struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global0 = select(select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, global0.x, global0.x, global0.x)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, global0.x), vec4<bool>(false, global0.x, true, true), global0.x), select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, false), select(vec4<bool>(global0.x, true, true, true), vec4<bool>(false, false, false, global0.x), global0.x))), vec4<bool>(true & global0.x, all(!vec4<bool>(global0.x, true, false, true)), true, true), all(select(vec3<bool>(global0.x, false, true), select(global0.www, vec3<bool>(global0.x, true, global0.x), global0.yyz), !global0.x))), select(vec4<bool>(global0.x, false, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x), vec4<bool>(global0.x, select(all(vec4<bool>(true, true, true, global0.x)), true, all(vec4<bool>(global0.x, global0.x, false, global0.x))), global0.x, ~15069u == _wgslsmith_add_u32(1u, arg_0)), !all(!global0.yz)), vec4<bool>((-26686i << (1u % 32u)) <= u_input.d, true, !global0.x, false));
    global0 = select(select(!vec4<bool>(!global0.x, true, any(global0.yx), true), !(!select(vec4<bool>(true, global0.x, false, true), vec4<bool>(true, false, global0.x, global0.x), global0.x)), u_input.c.x == -28066i), !(!(!(!vec4<bool>(true, false, global0.x, true)))), global0.x || true);
    var var_0 = max(u_input.c.x, -(firstLeadingBit(-1i) & u_input.c.x)) >> (u_input.b % 32u);
    var var_1 = -min(min(vec4<i32>(u_input.d, 2147483647i, -15370i, -2147483647i) | vec4<i32>(u_input.d, u_input.d, -12770i, u_input.c.x), -vec4<i32>(u_input.c.x, 2147483647i, -8508i, u_input.d)) ^ vec4<i32>(-1i, -2147483647i, _wgslsmith_div_i32(u_input.d, u_input.d), ~14078i), vec4<i32>(u_input.c.x, 1i, -u_input.c.x, 17801i));
    var_1 = abs(vec4<i32>(-29313i, reverseBits(var_1.x), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(var_1.xx, vec2<i32>(-1i, -1i))), vec2<i32>(_wgslsmith_sub_i32(var_1.x, 0i), -u_input.c.x)), ~(-33829i)));
    return all(!(!select(!vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, false, false, global0.x), global0.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = 1i;
    let var_1 = any(vec4<bool>(false, global0.x, true, !(55903u < (u_input.a << (4294967295u % 32u)))));
    return vec2<bool>(arg_1.x, func_3(_wgslsmith_dot_vec2_u32(arg_2.zy, _wgslsmith_clamp_vec2_u32(arg_2.yz, arg_2.yy, vec2<u32>(u_input.a, u_input.b)) | abs(vec2<u32>(arg_2.x, 35701u))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1255f, 1259f)))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    var var_0 = arg_0.b;
    var_0 = arg_0.b;
    var var_1 = arg_0;
    var var_2 = arg_0;
    var var_3 = -2147483647i;
    return all(!(!vec3<bool>(!arg_0.c.x, true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.d);
    var var_1 = ((~(~u_input.a) << (4294967295u % 32u)) < _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 0u) | vec2<u32>(37844u, arg_0.b.x), ~arg_0.b ^ ~vec2<u32>(52670u, arg_0.b.x))) & func_4(Struct_2(-37500i, arg_0, func_2(_wgslsmith_div_u32(arg_0.b.x, arg_0.b.x), select(vec4<bool>(true, arg_1.x, global0.x, arg_1.x), vec4<bool>(true, false, global0.x, arg_1.x), false), vec3<u32>(4294967295u, arg_0.b.x, 1u) ^ vec3<u32>(arg_0.b.x, 33557u, 46757u)), _wgslsmith_f_op_f32(736f * arg_0.d) != _wgslsmith_f_op_f32(1463f * 690f), firstTrailingBit(~arg_0.b)), global0.xy);
    var var_2 = 1u;
    var_0 = 622f;
    var var_3 = select(~14774u, ~(arg_0.b.x | arg_0.b.x), !arg_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-16341i, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(2318f, _wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(2496f, -2576f), vec2<u32>(u_input.a, u_input.b), vec3<f32>(249f, 1000f, 847f), -1000f), vec2<bool>(global0.x, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(482f, 848f) + vec2<f32>(-1038f, -1749f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(310f, -436f) - vec2<f32>(743f, -1190f)))), vec2<u32>(u_input.b, 0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2368f, -212f, -1000f), vec3<f32>(-165f, 499f, -376f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1570f, -340f))), 1525f)), select(vec2<bool>(all(global0.xzw), func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2581u, 654u), vec3<u32>(1u, u_input.b, u_input.b)), _wgslsmith_f_op_f32(max(-903f, 919f)))), global0.zy, vec2<bool>(global0.x, _wgslsmith_add_u32(23057u, u_input.a) <= ~17294u)), all(global0.zx), _wgslsmith_sub_vec2_u32(~(vec2<u32>(89680u, u_input.b) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(57277u, 4294967295u)) % vec2<u32>(32u))), ~vec2<u32>(~u_input.a, u_input.b)));
    let var_1 = ~69459u;
    var var_2 = func_3(~_wgslsmith_add_u32(~24911u, max(1u, 0u)) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, 20367u, var_1, var_0.e.x), ~vec4<u32>(49405u, var_0.e.x, u_input.b, 4294967295u)), -302f);
    var var_3 = var_0.b.a.x;
    let var_4 = Struct_1(var_0.b.a, var_0.b.b, var_0.b.c, _wgslsmith_f_op_f32(var_0.b.d + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1787f - var_0.b.c.x))))));
    var var_5 = var_4;
    var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_5.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1141f)), var_4.c.yz, _wgslsmith_div_u32(var_1, var_5.b.x) <= var_1)), var_4.c.zz, global0.x)), vec2<u32>(1u, _wgslsmith_clamp_u32(1u, var_5.b.x, 0u >> (var_4.b.x % 32u))), _wgslsmith_f_op_vec3_f32(min(var_0.b.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_5.c, var_5.c))))), _wgslsmith_f_op_f32(var_5.d * -299f));
    var var_6 = var_0;
    let var_7 = Struct_1(vec2<f32>(var_0.b.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-697f, var_5.d)), var_4.d)))), vec2<u32>(abs(var_0.b.b.x), _wgslsmith_sub_u32(var_6.e.x, var_5.b.x)), _wgslsmith_f_op_vec3_f32(var_4.c - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_5.d)))), var_6.b.c.x, 1248f)), var_6.b.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(u_input.d & -var_0.a, -1i), _wgslsmith_sub_i32(-21400i, abs(-u_input.c.x)), _wgslsmith_dot_vec3_i32(u_input.c, ~u_input.c ^ _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.d, var_6.a, 11920i))), 1i), var_1);
}

