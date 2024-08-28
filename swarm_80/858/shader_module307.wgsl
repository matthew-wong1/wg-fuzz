struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = Struct_4(vec3<bool>(false, false, 2147483647i < countOneBits(countOneBits(arg_0.a))), 12403i ^ _wgslsmith_div_i32(-_wgslsmith_mod_i32(u_input.a, u_input.b), -12710i), -(~abs(vec3<i32>(arg_0.a, -2147483647i, -26602i))));
    return true != var_0.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: Struct_5) -> vec3<bool> {
    var var_0 = Struct_3(72792i, arg_3.c.x);
    var_0 = Struct_3(var_0.a | (-(var_0.a ^ -48370i) | countOneBits(u_input.b & arg_1.b)), -2085f);
    let var_1 = !(!arg_3.a);
    var_0 = Struct_3(i32(-1i) * -u_input.a, 1077f);
    let var_2 = var_0.a;
    return arg_1.a;
}

fn func_2() -> u32 {
    var var_0 = abs(~u_input.b);
    var var_1 = !func_4(true, Struct_4(vec3<bool>(true, true, true), _wgslsmith_div_i32(-30196i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -1i, -2147483647i), vec3<i32>(2147483647i, u_input.b, 10489i)) | ~vec3<i32>(u_input.b, 1i, -7177i)), vec3<bool>(true, true && all(vec4<bool>(false, true, false, true)), select(any(vec2<bool>(true, true)), func_3(Struct_3(u_input.b, -754f)), true)), Struct_5(true, reverseBits(_wgslsmith_clamp_i32(1i, 21876i, u_input.b)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-232f, 1000f, 1499f), vec3<f32>(-1615f, -385f, 553f), false))))));
    var_0 = -u_input.b | -(~u_input.b);
    var_1 = vec3<bool>(false, any(select(select(var_1.xx, vec2<bool>(var_1.x, var_1.x), false), var_1.yy, !var_1.yx)) & var_1.x, var_1.x);
    var_1 = vec3<bool>((1u >= u_input.e) | var_1.x, var_1.x, var_1.x);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.c, ~0u)), countOneBits(abs(vec2<u32>(72095u, u_input.d.x)) ^ select(vec2<u32>(0u, u_input.e), u_input.d, vec2<bool>(true, true)))), vec2<u32>(reverseBits(u_input.c) | ~(90763u << (u_input.e % 32u)), ~1u));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(~func_2(), ~firstLeadingBit(u_input.d.x)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(max(~u_input.c, u_input.e >> (u_input.d.x % 32u)), 8296u, _wgslsmith_div_u32(abs(0u), u_input.c), 1u), vec4<u32>(~u_input.e, _wgslsmith_clamp_u32(56413u & u_input.d.x, u_input.d.x, u_input.d.x ^ u_input.e), _wgslsmith_sub_u32(~34191u, u_input.d.x), 37511u)) % 32u);
    var var_1 = arg_0;
    var var_2 = ~min(abs(_wgslsmith_clamp_u32(~4294967295u, 1u << (u_input.e % 32u), u_input.c)), _wgslsmith_dot_vec2_u32(select(u_input.d, vec2<u32>(u_input.c, var_0), true), u_input.d));
    var_1 = arg_0;
    var var_3 = vec4<f32>(_wgslsmith_div_f32(-444f, _wgslsmith_f_op_f32(-373f - -313f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-609f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(777f)) - _wgslsmith_f_op_f32(-633f - -702f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-759f)))), _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -307f)))));
    return Struct_1(~(~vec3<u32>(var_0, ~3447u, ~u_input.d.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 318f, -331f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, -1241f, var_3.x) * vec3<f32>(-1915f, 1000f, 770f)), any(arg_0.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1682f, var_3.x, -260f))))), vec3<i32>(_wgslsmith_clamp_i32(arg_0.b, -1i, var_1.c.x), _wgslsmith_add_i32(abs(_wgslsmith_div_i32(-2147483647i, -68430i)), arg_0.c.x), var_1.c.x & select(var_1.b, _wgslsmith_mod_i32(-51665i, u_input.b), 53162u != u_input.c)), vec2<bool>(all(!vec3<bool>(arg_0.a.x, true, var_1.a.x)), all(arg_0.a.yx)));
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = func_1(Struct_4(vec3<bool>(true, true, true), func_1(Struct_4(select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<bool>(false, arg_0.d.x, arg_0.d.x), arg_0.d.x), reverseBits(-1i), arg_0.c)).c.x, vec3<i32>(1i, arg_0.c.x, arg_0.c.x)));
    var var_1 = 1u;
    var_1 = min(~(~u_input.c), u_input.c);
    let var_2 = Struct_5(arg_0.d.x, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_0.b + arg_0.b))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(abs(-915f)), _wgslsmith_f_op_f32(2415f + -1866f)) * var_0.b)));
    var_1 = u_input.c;
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.a, vec3<u32>(u_input.e, ~var_0.a.x, _wgslsmith_mod_u32(var_0.a.x, arg_0.a.x)), arg_0.a), ~vec3<u32>(~51588u, 64306u ^ arg_0.a.x, ~4294967295u)), var_0.a, ~_wgslsmith_mult_vec3_u32(var_0.a, max(var_0.a, vec3<u32>(var_0.a.x, 12781u, 4294967295u)) & (vec3<u32>(100344u, arg_0.a.x, u_input.c) ^ vec3<u32>(4294967295u, u_input.d.x, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1052f, 763f, 1257f, 1361f))))))));
    let var_1 = ~firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c, u_input.c), vec4<u32>(32380u, u_input.e, u_input.c, 22965u)), u_input.d.x, reverseBits(1731u)) & func_5(func_1(Struct_4(vec3<bool>(false, true, true), u_input.b, vec3<i32>(u_input.a, u_input.b, 15097i)))));
    var var_2 = Struct_3(-10615i, var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, 374f)), 980f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), var_2.b)))));
    var var_3 = 815f;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a | (~(-61066i) >> (_wgslsmith_sub_u32(var_1.x, 4294967295u) % 32u)), var_2.a >> (0u % 32u));
}

