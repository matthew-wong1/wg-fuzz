struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: f32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_2(all(vec2<bool>(arg_0.e, false)), Struct_1(vec4<u32>(_wgslsmith_div_u32(4294967295u, 1u), 4294967295u, u_input.a ^ 1u, 23082u), 15207u, _wgslsmith_f_op_vec2_f32(select(arg_0.c, _wgslsmith_f_op_vec2_f32(-arg_0.c), true)), arg_0.d, !arg_0.e || true), countOneBits(arg_0.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1787f, 1000f, arg_0.c.x), vec4<f32>(-654f, -141f, -1366f, -2612f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_0.c.x, -197f, 2161f) * vec4<f32>(arg_0.c.x, arg_0.c.x, -1196f, var_0.b.c.x)))))));
    global0 = array<Struct_1, 2>();
    let var_2 = var_0;
    global1 = 224f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(824f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-562f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1425f + -2977f), _wgslsmith_f_op_f32(step(-2044f, arg_0.c.x))))))));
}

fn func_2() -> Struct_2 {
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -2327f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(f32(-1f) * -998f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1065f - 1293f) - 2359f), any(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(u_input.a, 2u)])))))) * _wgslsmith_f_op_f32(188f * _wgslsmith_f_op_f32(-1312f - -1173f))));
    global0 = array<Struct_1, 2>();
    global1 = _wgslsmith_f_op_f32(669f * 815f);
    global0 = array<Struct_1, 2>();
    let var_0 = Struct_1(~abs(vec4<u32>(1u, u_input.a, u_input.a | 36826u, firstLeadingBit(8001u))), abs(~(~(~33126u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1610f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 1755f), -670f))), -(~59321i), !all(vec3<bool>(true, true, true)));
    return Struct_2(var_0.d >= _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_0.d, -2147483647i), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_0.d, -1i), firstLeadingBit(vec2<i32>(0i, var_0.d)))), global0[_wgslsmith_index_u32(~u_input.a << (countOneBits(var_0.a.x) % 32u), 2u)], ~_wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(62792u, min(var_0.a.x, var_0.a.x))));
}

fn func_1() -> vec4<i32> {
    global0 = array<Struct_1, 2>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(881f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(326f, -991f, true))), -1000f))));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = func_2();
    return abs(vec4<i32>(3197i, _wgslsmith_mod_i32(37964i, var_1.b.d) << (~_wgslsmith_div_u32(2931u, u_input.a) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(-31623i, -9902i, var_1.b.d), countOneBits(vec3<i32>(-13032i, var_1.b.d, -23741i))) | -1i, _wgslsmith_sub_i32(var_1.b.d ^ var_1.b.d, -21275i) << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 40522u, u_input.a), ~4294967295u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(min(-vec4<i32>(1i, 1i, 1i, 1i) << (~abs(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u)), vec4<i32>(0i, ~1i, abs(1i), ~reverseBits(1i))), -func_1(), vec4<i32>(countOneBits(1i), ~_wgslsmith_add_i32(94201i, _wgslsmith_sub_i32(1i, -2377i)), _wgslsmith_sub_i32(-6861i, ~(~0i)), firstLeadingBit(1i)));
    let var_1 = false;
    global0 = array<Struct_1, 2>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -633f);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2164f, 477f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -160f) * vec2<f32>(-1248f, var_2))))));
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(131125u, u_input.a, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 49013u, u_input.a), vec3<u32>(25399u, u_input.a, u_input.a)), u_input.a << (0u % 32u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) << (vec3<u32>(u_input.a, u_input.a, 39099u) % vec3<u32>(32u))), ~firstTrailingBit(vec3<u32>(0u, u_input.a, 1u))), _wgslsmith_add_vec3_i32(func_1().zwx, vec3<i32>(func_2().b.d, var_0.x, -var_0.x)), vec4<i32>(-11310i, ~_wgslsmith_add_i32(~(-1i), 35742i), abs(var_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -2147483647i, var_0.x, var_0.x) ^ vec4<i32>(0i, 1i, var_0.x, -1i), ~vec4<i32>(var_0.x, var_0.x, -40847i, var_0.x)), var_0.x | var_0.x)), -vec2<i32>(var_0.x, 1i));
}

