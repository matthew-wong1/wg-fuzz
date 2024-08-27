struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: u32) -> vec2<bool> {
    var var_0 = Struct_2(276f, Struct_1(u_input.b.x, vec3<bool>(!(-338f >= arg_2.x), true, true), _wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), global0[_wgslsmith_index_u32(~28976u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_3, u_input.a.x, 4294967295u)), firstLeadingBit(~vec3<u32>(arg_3, 2429u, 25254u))), arg_3), 1u)], vec2<u32>(_wgslsmith_sub_u32(~u_input.c, _wgslsmith_div_u32(69244u, 4294967295u)), reverseBits(u_input.a.x)));
    global0 = array<Struct_1, 1>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(arg_2.yy)), arg_2.zz, var_0.d.b.zx)), arg_2.wy);
    let var_2 = u_input.a.yy;
    let var_3 = arg_1.c;
    return vec2<bool>(true, var_3);
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(arg_1.b, arg_1.b, Struct_2(1000f, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, abs(1u)) | 0u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)], min(u_input.a.yz ^ vec2<u32>(0u, 1u), vec2<u32>(~u_input.a.x, 0u))), vec2<bool>(u_input.c == (u_input.a.x & u_input.a.x), any(func_3(_wgslsmith_f_op_f32(-arg_1.b), Struct_4(-46196i, -285f, arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 355f, arg_1.b, arg_1.b) - vec4<f32>(arg_1.b, -878f, arg_1.b, arg_1.b)), 79289u))));
    let var_1 = Struct_2(-809f, Struct_1(var_0.c.b.a & 70024i, vec3<bool>(true, !(-1026f == arg_1.b), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(567f - 737f) * _wgslsmith_f_op_f32(f32(-1f) * -150f))))), Struct_1(~var_0.c.b.a, vec3<bool>(true, var_0.c.c.b.x, !any(vec4<bool>(var_0.d.x, true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-546f, _wgslsmith_f_op_f32(-arg_1.b), arg_0)))), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -33166i, u_input.b.x) & vec3<i32>(var_0.c.b.a, 0i, -2147483647i), vec3<i32>(arg_1.a, 2147483647i, u_input.b.x)), -_wgslsmith_sub_i32(-62587i, -2147483647i)), vec3<bool>(func_3(var_0.b, Struct_4(2147483647i, 760f, false), vec4<f32>(-299f, -737f, arg_1.b, arg_1.b), var_0.c.e.x).x && true, arg_0, var_0.c.b.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(932f - 491f) * _wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, ~1u), abs(countOneBits(vec2<u32>(var_0.c.e.x, 1u) | vec2<u32>(53782u, 26072u)))));
    var var_2 = 19327u;
    global0 = array<Struct_1, 1>();
    var var_3 = var_0.d;
    return var_1.d;
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> f32 {
    global0 = array<Struct_1, 1>();
    let var_0 = func_2(arg_0.d.x == false, Struct_4(-2344i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(915f + arg_2.c) - -759f), arg_2.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(216f, -487f)), Struct_1(0i, arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-507f, 512f, false))) * _wgslsmith_f_op_f32(-497f - _wgslsmith_f_op_f32(select(1000f, arg_0.b, var_0.b.x))))), Struct_1(~(-1900i), !select(arg_2.b, vec3<bool>(arg_0.c.d.b.x, false, false), arg_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(544f)) * _wgslsmith_div_f32(var_0.c, var_0.c)) * _wgslsmith_f_op_f32(ceil(var_0.c)))), Struct_1(u_input.b.x, var_0.b, -668f), abs(~select(vec2<u32>(arg_0.c.e.x, 6132u), vec2<u32>(0u, 29295u), arg_0.c.c.b.x)));
    global0 = array<Struct_1, 1>();
    var var_2 = Struct_1(1i, vec3<bool>(!var_1.c.b.x, arg_2.b.x, var_0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-715f)), var_1.d.c));
    return func_2(false, Struct_4(u_input.b.x & ~(-arg_2.a), _wgslsmith_f_op_f32(ceil(var_1.d.c)), true)).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1298f, -106f), _wgslsmith_f_op_f32(-2135f + -434f))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-412f, 1496f, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2273f), -931f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(539f, -307f)), vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(1320f, -1338f, Struct_2(1000f, Struct_1(u_input.b.x, vec3<bool>(false, true, false), -210f), global0[_wgslsmith_index_u32(3601u, 1u)], Struct_1(u_input.b.x, vec3<bool>(false, false, true), 322f), u_input.a.xw), vec2<bool>(true, true)), u_input.b.x, Struct_1(1i, vec3<bool>(true, false, true), 2390f), 21037i)), 415f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-759f, _wgslsmith_f_op_f32(floor(-1077f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1030f, -918f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(940f, 1287f), vec2<f32>(-1000f, -1035f))), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))))));
    let var_1 = _wgslsmith_div_i32(39598i, -(-2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b.x), u_input.b))) & -18722i;
    global0 = array<Struct_1, 1>();
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~u_input.a.yx, reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(10488u, 4294967295u)))), -1025f, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -657f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(931f, -1822f, false)), _wgslsmith_f_op_f32(func_1(Struct_3(var_0.x, var_0.x, Struct_2(var_0.x, global0[_wgslsmith_index_u32(7975u, 1u)], Struct_1(u_input.b.x, vec3<bool>(true, false, true), -1000f), global0[_wgslsmith_index_u32(u_input.c, 1u)], vec2<u32>(4846u, 24711u)), vec2<bool>(true, false)), 11455i, Struct_1(u_input.b.x, vec3<bool>(false, true, false), -398f), u_input.b.x)), var_0.x > -258f)) + var_0.x), _wgslsmith_f_op_f32(-var_0.x)));
}

