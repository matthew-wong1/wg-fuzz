struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<u32> {
    return u_input.d ^ ~(~(select(vec3<u32>(u_input.a, 2175u, 38278u), arg_0.a, vec3<bool>(false, arg_0.b.a, false)) ^ _wgslsmith_add_vec3_u32(u_input.d, arg_0.d)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    let var_0 = u_input.b;
    var var_1 = arg_3;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-272f, 476f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-755f + -746f)))))), true);
    var_1 = Struct_2(abs(var_1.a), Struct_1(true), arg_3.c | max(-26838i, ~min(-389i, var_0)), var_1.d);
    var_1 = Struct_2(u_input.d, var_1.b, var_1.c, max(max(func_3(Struct_2(u_input.d, var_1.b, arg_3.c, u_input.d), vec3<i32>(var_0, var_1.c, var_0) >> (vec3<u32>(arg_3.a.x, 57260u, 4294967295u) % vec3<u32>(32u))), countOneBits(var_1.d)), ((vec3<u32>(64958u, arg_3.d.x, var_1.d.x) & vec3<u32>(arg_3.a.x, arg_3.d.x, u_input.d.x)) << (_wgslsmith_div_vec3_u32(vec3<u32>(arg_3.d.x, arg_3.d.x, u_input.d.x), vec3<u32>(u_input.d.x, var_1.a.x, 1u)) % vec3<u32>(32u))) ^ var_1.a));
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.b;
    let var_1 = Struct_1(arg_2.b);
    return u_input.b;
}

fn func_5(arg_0: i32) -> vec3<f32> {
    var var_0 = Struct_1(true);
    var_0 = Struct_1(all(!vec4<bool>(u_input.a >= u_input.a, true, true, !var_0.a)));
    var_0 = Struct_1(true);
    var var_1 = Struct_2(vec3<u32>(~u_input.a, u_input.a << (u_input.a % 32u), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, 2938u) % vec4<u32>(32u)), ~vec4<u32>(1u, 17515u, 70526u, u_input.a)))), Struct_1(all(vec2<bool>(true, var_0.a)) & true), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~abs(vec3<i32>(u_input.b, -1i, 2147483647i)), -vec3<i32>(arg_0, u_input.c, arg_0), vec3<i32>(arg_0, 0i, 1i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, -40251i, 13551i), vec3<i32>(u_input.c, 6144i, arg_0))), vec3<u32>(~u_input.a, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 13033u), u_input.d.zx), ~(~_wgslsmith_div_u32(4294967295u, 62447u))));
    var_0 = Struct_1(all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, var_0.a), vec4<bool>(true, var_0.a, var_1.b.a, var_1.b.a), vec4<bool>(false, true, var_1.b.a, var_1.b.a)), select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(var_1.b.a, var_1.b.a, false, true), var_1.b.a), var_0.a), true)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(step(1059f, -189f)), _wgslsmith_f_op_f32(f32(-1f) * -1525f), _wgslsmith_f_op_f32(round(-1426f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(1547f + 783f), 2091f), select(var_1.c < u_input.c, any(vec4<bool>(false, var_0.a, false, true)), true))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1088f, 140f, -299f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1204f, -105f, -2793f) * vec3<f32>(919f, -832f, 161f)) + vec3<f32>(-1000f, -2132f, -498f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(274f, 383f, 1323f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, -2303f, -558f)))) + vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(min(510f, 1000f))), 215f, -633f)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = abs(firstTrailingBit(u_input.d.yy));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(-func_4(Struct_2(u_input.d, Struct_1(arg_0.b), -6617i, vec3<u32>(var_0.x, var_0.x, var_0.x)), -1075f, func_2(Struct_1(false), vec4<bool>(false, true, var_1.b, var_1.b), Struct_1(true), Struct_2(vec3<u32>(4294967295u, var_0.x, var_0.x), Struct_1(arg_0.b), -63249i, u_input.d)), Struct_2(u_input.d, Struct_1(arg_0.b), u_input.b, vec3<u32>(4294967295u, 4294967295u, 33991u))) & u_input.c));
    let var_3 = select(vec2<bool>(var_1.b, !(select(false, true, false) | true)), vec2<bool>(~countOneBits(0i) == u_input.b, true), false);
    var_0 = ~(~_wgslsmith_mult_vec2_u32(u_input.d.zx, ~(~vec2<u32>(var_0.x, 23627u))));
    return _wgslsmith_f_op_f32(440f + 1510f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(Struct_3(_wgslsmith_f_op_f32(step(-1168f, 871f)), true))), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d ^ ~u_input.d) < ~(~(~0u)));
    var var_1 = _wgslsmith_add_i32(2147483647i | u_input.b, -u_input.b);
    let var_2 = vec4<f32>(var_0.a, var_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.a)))), _wgslsmith_f_op_f32(-var_0.a));
    var_1 = _wgslsmith_add_i32(-1i, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_0.a)), ~vec4<i32>(u_input.b, firstTrailingBit(~u_input.c), _wgslsmith_sub_i32(~1i, u_input.b), u_input.b), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1683f)), var_0.a, var_2.x), _wgslsmith_div_i32(~(func_4(Struct_2(u_input.d, Struct_1(false), u_input.b, u_input.d), var_2.x, var_0, Struct_2(u_input.d, Struct_1(var_0.b), -16342i, vec3<u32>(1u, 19183u, u_input.a))) & 1i), -1i), abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, u_input.c, 42435i, 2147483647i), vec4<i32>(u_input.b << (u_input.a % 32u), -u_input.b, -u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, -35022i, u_input.b, u_input.b), reverseBits(vec4<i32>(u_input.c, -2147483647i, u_input.b, 0i))))));
}

