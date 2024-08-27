struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-122f, 395f, 365f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(vec2<f32>(-1147f, 1963f), _wgslsmith_sub_u32(~(~4294967295u), select(u_input.a & u_input.a, 1u, any(vec4<bool>(false, true, true, false)) && true)));
    let var_1 = Struct_2(vec3<u32>(abs(~abs(41757u)), countOneBits(98482u), abs(var_0.b & (u_input.a | u_input.a))), (vec4<u32>(10721u << (var_0.b % 32u), 4294967295u, abs(u_input.a), u_input.a) | firstTrailingBit(reverseBits(vec4<u32>(var_0.b, u_input.a, u_input.a, 49776u)))) | _wgslsmith_clamp_vec4_u32(~(vec4<u32>(var_0.b, u_input.a, var_0.b, u_input.a) & vec4<u32>(var_0.b, 54154u, u_input.a, var_0.b)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0.b, 2575u, 4294967295u), vec4<u32>(u_input.a, 4294967295u, var_0.b, 4294967295u)), firstLeadingBit(abs(vec4<u32>(u_input.a, var_0.b, 1u, 25131u)))));
    return -1000f;
}

fn func_2() -> i32 {
    let var_0 = vec3<bool>(true, true, !(true == (-u_input.c == ~(-2747i))));
    var var_1 = _wgslsmith_f_op_f32(func_3());
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(global0.x * -1722f), global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-183f, 687f, global0.x))))));
    var var_2 = vec4<i32>(reverseBits(0i), u_input.c, _wgslsmith_dot_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -2147483647i, 1i) ^ vec3<i32>(u_input.c, 2147483647i, 0i), vec3<i32>(u_input.b, u_input.c, -6745i), vec3<i32>(15573i, u_input.c, -110i)), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(0i, 15147i, 28896i))), _wgslsmith_div_i32(~(-3101i), _wgslsmith_div_i32((u_input.b >> (u_input.a % 32u)) ^ u_input.b, 4568i)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-global0.zy), ~0u);
    return _wgslsmith_div_i32(u_input.c, -1i);
}

fn func_1() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(select(vec4<u32>(~60063u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 26458u, 1u)), 5826u, u_input.a), ~(~vec4<u32>(35097u, 1u, u_input.a, 68521u)), !all(vec2<bool>(false, true))), max(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) & ~vec4<u32>(u_input.a, u_input.a, 49172u, u_input.a), ~vec4<u32>(u_input.a, 0u, u_input.a, 32104u))), _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), func_2());
    let var_1 = -(abs(var_0.d) | -19312i);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1015f, global0.x, -262f), vec3<f32>(1584f, global0.x, var_0.c)))))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(653f, global0.x)), var_0.c))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -882f), _wgslsmith_f_op_f32(func_3()), var_0.c) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(599f, 1034f, 1000f)))))) + vec3<f32>(-1054f, 253f, _wgslsmith_f_op_f32(-var_0.c))));
    let var_2 = ~(vec3<u32>(~(~u_input.a), var_0.a.x, var_0.a.x) | ~select(countOneBits(var_0.a.zyz), ~var_0.a.xzy, true));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_add_vec4_u32(func_1(), ~(~(~vec4<u32>(1u, 13943u, 1u, 45254u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(69159u, ~var_1.x), _wgslsmith_dot_vec3_i32(~(select(vec3<i32>(-10881i, -21232i, u_input.b), vec3<i32>(u_input.c, -2147483647i, 2147483647i), vec3<bool>(var_0, true, var_0)) >> ((vec3<u32>(26047u, u_input.a, u_input.a) << (var_1.xzy % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(0i, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, -2147483647i), abs(vec4<i32>(u_input.c, u_input.b, u_input.b, u_input.c))))));
}

