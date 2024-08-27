struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 4>;

var<private> global2: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-140f, -606f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-210f, -1260f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(837f, -728f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1033f, 507f) - vec2<f32>(283f, 2176f))), global2.xy))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -505f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -3615f), _wgslsmith_f_op_f32(f32(-1f) * -1091f)))), -579f));
    let var_1 = Struct_2(global0.a, true);
    let var_2 = Struct_2(63893i, all(vec2<bool>(all(vec4<bool>(global0.b, var_1.b, var_1.b, var_1.b)), global2.x)) || !(90665u < u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1509f * _wgslsmith_f_op_f32(-var_0.x)) + var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)))));
    global2 = !(!select(select(!vec3<bool>(var_1.b, var_2.b, true), vec3<bool>(false, true, false), select(true, true, var_2.b)), !(!vec3<bool>(false, global2.x, true)), false));
    return global0.b;
}

fn func_2(arg_0: vec3<bool>) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 4u)];
    global2 = !vec3<bool>(select(any(vec2<bool>(true, arg_0.x)), global0.b, false), func_3(), global0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -1960f, -1009f));
    let var_2 = Struct_1(true, vec2<f32>(672f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f - _wgslsmith_div_f32(var_1.x, var_0.b.x)))), var_0.c);
    global2 = select(!arg_0, vec3<bool>(true, !all(vec2<bool>(true, true)), all(vec4<bool>(1u == var_2.c, global0.b, true, false))), vec3<bool>(global2.x, (_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -1i), vec2<i32>(u_input.b, u_input.b)) & global0.a) <= _wgslsmith_sub_i32(firstTrailingBit(9372i), -1i), true));
    return select(all(!vec2<bool>(!var_0.a, true)), !select(-31010i <= firstTrailingBit(global0.a), false, true), select(max(_wgslsmith_clamp_i32(global0.a, u_input.b, 2147483647i), _wgslsmith_sub_i32(u_input.b, 0i)) >= 12853i, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, var_0.c, 4294967295u), vec4<u32>(80308u, var_2.c, var_0.c, 27379u)) > ~u_input.a, false));
}

fn func_1() -> vec2<f32> {
    var var_0 = u_input.a | _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.c.x, u_input.a), firstTrailingBit(countOneBits(u_input.a)));
    global1 = array<Struct_1, 4>();
    let var_1 = Struct_1(func_2(vec3<bool>(all(vec4<bool>(global0.b, true, global2.x, global2.x)), true, !any(vec4<bool>(global2.x, global0.b, true, false)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(898f, 1408f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, 277f)))) + vec2<f32>(1161f, -471f)))), u_input.a);
    global2 = select(select(select(!vec3<bool>(true, true, global0.b), !vec3<bool>(true, true, var_1.a), 1143f < _wgslsmith_f_op_f32(sign(-1259f))), !(!select(vec3<bool>(false, var_1.a, true), vec3<bool>(false, false, false), global2.x)), !var_1.a), !(!vec3<bool>(var_1.a && var_1.a, var_1.b.x >= 959f, global2.x)), vec3<bool>(true, !any(select(vec4<bool>(true, true, true, global0.b), vec4<bool>(global0.b, true, global2.x, global0.b), vec4<bool>(false, global0.b, global2.x, true))), all(select(vec4<bool>(var_1.a, global0.b, true, global0.b), select(vec4<bool>(false, false, false, var_1.a), vec4<bool>(global0.b, global0.b, global2.x, global0.b), vec4<bool>(true, var_1.a, global2.x, true)), true))));
    var var_2 = select(vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(global0.a, -6688i, 1i, global0.a))), ~(vec4<i32>(global0.a, u_input.b, u_input.b, global0.a) << (vec4<u32>(var_1.c, var_1.c, u_input.c.x, var_1.c) % vec4<u32>(32u)))), ~u_input.b, _wgslsmith_div_i32(38357i, -2147483647i)), -vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, global0.a, 2147483647i), min(vec3<i32>(27653i, 34210i, -2289i), vec3<i32>(-26117i, global0.a, -1i))), 0i, -(global0.a | global0.a)), any(!vec4<bool>(false, true, any(vec4<bool>(true, global0.b, true, global2.x)), false)));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1311f, 1791f) - vec2<f32>(var_1.b.x, -241f)))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~10072u, ~u_input.a, max(1u, ~u_input.a ^ u_input.c.x), abs(_wgslsmith_clamp_u32(~u_input.a & u_input.a, u_input.a & u_input.c.x, 30848u)));
    global0 = Struct_2(global0.a, false);
    let var_1 = vec4<u32>(~u_input.a ^ _wgslsmith_add_u32(4557u, max(1u, u_input.a)), (_wgslsmith_dot_vec4_u32(var_0, var_0) << (abs(select(u_input.c.x, u_input.a, global2.x)) % 32u)) | var_0.x, 0u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 56811u, u_input.c.x), abs(var_0.wzy & var_0.zyz)));
    global2 = !vec3<bool>(all(!vec2<bool>(global0.b, global2.x)), all(!vec4<bool>(true, global0.b, true, true)), true);
    var var_2 = Struct_1(global0.b, _wgslsmith_f_op_vec2_f32(func_1()), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~var_0.x, u_input.c.x), var_0.x), ~abs(vec2<u32>(u_input.a, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(global0.a, global0.a, _wgslsmith_add_i32(_wgslsmith_div_i32(global0.a, 1i), -u_input.b) ^ -(u_input.b >> (u_input.a % 32u))));
}

