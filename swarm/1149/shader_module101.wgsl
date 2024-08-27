struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(383f, -1992f, -2341f), vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_4(Struct_2(global0.a, vec3<bool>(true, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -50248i), vec3<i32>(-2147483647i, 0i, u_input.c.x)) == 8768i, true), Struct_1(!global0.d.b, global0.d.a), global0.e, Struct_1(select(global0.e.b, !global0.e.a, vec4<bool>(false, global0.b.x, global0.c.b.x, false)), !global0.c.a)));
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(386f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.a.x, arg_0, true)))), _wgslsmith_f_op_f32(floor(1960f)), -1583f), global0.d.b.xyw, global0.d, Struct_1(vec4<bool>(select(arg_0 >= global0.a.x, true, any(vec3<bool>(true, var_0.a.b.x, global0.e.a.x))), !var_0.a.e.a.x, all(!var_0.a.b.zy), false), global0.c.b), Struct_1(select(vec4<bool>(global0.b.x, all(global0.b.yx), arg_0 >= global0.a.x, any(vec4<bool>(var_0.a.c.a.x, global0.d.b.x, global0.e.b.x, false))), select(select(global0.e.a, vec4<bool>(true, global0.e.a.x, global0.e.b.x, false), global0.d.b.x), select(var_0.a.d.a, var_0.a.c.b, var_0.a.d.a.x), !var_0.a.d.b.x), select(global0.e.a, !vec4<bool>(var_0.a.e.b.x, false, global0.d.b.x, false), global0.d.b)), global0.c.a));
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(select(-927f, arg_0, false && global0.d.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1016f * var_0.a.a.x), 1284f)))), var_0.a.b, Struct_1(global0.e.b, vec4<bool>(false, global0.c.b.x, any(var_0.a.c.a.zyx), true)), Struct_1(global0.c.a, vec4<bool>(var_0.a.c.b.x, false != (true && var_0.a.b.x), true, global0.d.b.x)), global0.d);
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 1899f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-540f)))), -427f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x + global0.a.x), _wgslsmith_f_op_f32(max(867f, -968f))))))), vec3<bool>(var_0.a.c.a.x, var_0.a.c.b.x, global0.e.b.x), var_0.a.d, global0.d, var_0.a.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(173f, _wgslsmith_f_op_f32(sign(-476f)), _wgslsmith_f_op_f32(-global0.a.x), global0.a.x) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, var_0.a.a.x, -822f, arg_0))))))));
    return _wgslsmith_add_u32(26105u, ~u_input.e) | (u_input.d & u_input.a.x);
}

fn func_2() -> i32 {
    let var_0 = -19521i;
    var var_1 = Struct_3(var_0, false, global0.e.b.x, abs(~(~(~vec2<i32>(u_input.c.x, -28118i)))), -vec4<i32>(u_input.c.x, u_input.c.x, firstTrailingBit(~2147483647i), countOneBits(select(u_input.c.x, var_0, false))));
    let var_2 = vec2<u32>(firstLeadingBit(u_input.e >> (min(u_input.e, _wgslsmith_add_u32(u_input.d, 0u)) % 32u)), ~_wgslsmith_sub_u32(33866u, ~u_input.b));
    let var_3 = ~var_2.x;
    var var_4 = func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-822f - global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x))));
    return ~18687i ^ -(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(var_1.e.xxx, var_1.e.ywz), var_0));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.c.x, -2147483647i, 6390i, 47271i) << (vec4<u32>(1u, 1u, arg_0.x, u_input.b) % vec4<u32>(32u))) ^ vec4<i32>(~u_input.c.x, u_input.c.x, u_input.c.x, -2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, _wgslsmith_add_i32(2147483647i, func_2()), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.c.x, -5436i)) ^ ~vec2<i32>(0i, u_input.c.x), select(u_input.c, vec2<i32>(2147483647i, -1i), vec2<bool>(global0.c.a.x, global0.e.a.x)))));
    var var_1 = vec4<i32>(-1i, ~(~(-2147483647i)), -var_0.x, u_input.c.x);
    let var_2 = ~(firstTrailingBit(u_input.d) | ~arg_0.x);
    let var_3 = Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(413f + _wgslsmith_f_op_f32(global0.a.x - global0.a.x)), _wgslsmith_f_op_f32(max(-1516f, _wgslsmith_f_op_f32(global0.a.x - 1937f))), 221f), !global0.e.a.www, global0.e, global0.d, Struct_1(select(select(global0.c.a, global0.d.a, global0.c.b), global0.d.b, !vec4<bool>(true, global0.c.a.x, global0.b.x, false)), global0.e.b)));
    var_1 = min(-vec4<i32>(var_0.x, -2147483647i | var_0.x, var_1.x ^ -u_input.c.x, -2147483647i), vec4<i32>(1i, _wgslsmith_add_i32(~(-11517i >> (arg_0.x % 32u)), 2596i), i32(-1i) * -28016i, var_0.x));
    return Struct_2(var_3.a.a, !(!global0.b), Struct_1(var_3.a.d.b, !(!(!vec4<bool>(true, false, global0.d.b.x, false)))), global0.d, Struct_1(select(vec4<bool>(true, var_3.a.c.b.x, var_3.a.c.a.x, true), global0.d.a, select(any(global0.c.a.wwz), true, var_3.a.b.x)), select(vec4<bool>(false, global0.d.a.x || true, any(vec3<bool>(false, false, global0.c.a.x)), all(global0.e.b)), select(vec4<bool>(true, global0.d.b.x, global0.b.x, global0.e.a.x), !vec4<bool>(global0.b.x, global0.b.x, false, global0.d.b.x), var_3.a.c.b), var_3.a.c.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(min(~vec2<u32>(26823u, u_input.d << (65819u % 32u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(41902u, u_input.b) % vec2<u32>(32u)), vec2<u32>(1290u, u_input.a.x)))));
    var var_0 = Struct_3(0i, _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.e, 3079u), vec4<u32>(25303u, 15413u, 0u, 4078u)), ~(~vec4<u32>(1u, u_input.e, u_input.a.x, 1u))) > ~u_input.b, any(select(vec4<bool>(global0.c.b.x && global0.e.b.x, global0.a.x >= 2343f, 35480u == u_input.e, false), !(!global0.e.a), select(!global0.d.b, func_1(u_input.a.yy).c.b, !global0.c.a.x))), firstTrailingBit(u_input.c), countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, -12229i, -2147483647i, u_input.c.x)) << (firstLeadingBit(~vec4<u32>(4294967295u, 0u, 1u, u_input.e)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(10749u, 4294967295u, 26817u, u_input.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 4294967295u, u_input.e), vec4<u32>(28808u, u_input.d, u_input.b, 4294967295u)))), ~countOneBits(~abs(u_input.b)));
    var var_2 = global0.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-123f, 808f, 970f))), global0.a) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -1812f, global0.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(28976u, u_input.d | _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, 63494u, 4294967295u), 0u)), u_input.a.yz, var_0.e);
}

