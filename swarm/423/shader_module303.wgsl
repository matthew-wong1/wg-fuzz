struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 4294967295u);

var<private> global2: f32 = 792f;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-979f, 1111f))))))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(376f, 2210f)), arg_1), _wgslsmith_f_op_f32(-511f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
    var var_0 = arg_3;
    global1 = ~vec3<u32>(~4854u, global1.x, arg_2.a) >> (min(~(~(~vec3<u32>(4294967295u, var_0.a, arg_2.a))), ~(~vec3<u32>(u_input.b, 245u, var_0.a)) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.a, arg_2.a) << (vec3<u32>(var_0.a, arg_3.a, 24921u) % vec3<u32>(32u)), ~vec3<u32>(0u, var_0.a, 12594u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_mod_u32(select(abs(countOneBits(15476u)), var_0.a ^ ~4445u, true), ~(112792u >> (~arg_3.a % 32u))), _wgslsmith_sub_vec4_i32(-arg_3.b, arg_3.b));
    let var_2 = arg_3;
    return -1435f;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec4<u32> {
    global1 = ~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(60785u, select(global1.x, 0u, arg_0), global1.x)), vec3<u32>(11419u, u_input.b, global1.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 3362u, 46221u), vec3<u32>(u_input.b, global1.x, u_input.a)), vec3<u32>(u_input.b, 50085u, u_input.b) ^ vec3<u32>(0u, 0u, 26756u)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, global1.x), vec3<u32>(43756u, u_input.b, u_input.a))));
    var var_0 = all(!global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(select(global1.x, 21130u, arg_0), _wgslsmith_add_u32(96697u, 1u))), 27u)]);
    let var_1 = _wgslsmith_f_op_f32(arg_1.x + arg_2);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(f32(-1f) * -796f)) - _wgslsmith_f_op_f32(trunc(arg_2)));
    let var_3 = -vec2<i32>(~firstTrailingBit(1i), -abs(abs(-10274i)));
    return ~vec4<u32>(32252u, _wgslsmith_div_u32(0u, u_input.b) & u_input.a, ~u_input.b, 1u << (_wgslsmith_div_u32(26984u, global1.x) % 32u)) | reverseBits(~select(~vec4<u32>(global1.x, u_input.b, global1.x, 15366u), ~vec4<u32>(global1.x, 1u, global1.x, u_input.a), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec4<u32> {
    return _wgslsmith_mod_vec4_u32(func_4(any(global0[_wgslsmith_index_u32(521u, 27u)]), vec2<f32>(-338f, -561f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(0i, -894f, Struct_1(global1.x, vec4<i32>(arg_0.b.x, 8100i, 1i, 63873i)), Struct_1(arg_0.a, vec4<i32>(-1i, 0i, -3477i, arg_0.b.x))))))), ~vec4<u32>(~4294967295u, arg_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a, 42085u), vec3<u32>(u_input.b, 11983u, 26398u)), firstTrailingBit(1u)), global1.x));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, global1.x), max(~u_input.a | u_input.a, ~global1.x), ~0u, 53443u), ~(~(~vec4<u32>(u_input.b, global1.x, 1u, global1.x) << (func_2(Struct_1(global1.x, vec4<i32>(-2147483647i, -1i, 1i, -20407i)), Struct_1(10471u, vec4<i32>(28630i, -1758i, -27886i, 91491i)), global0[_wgslsmith_index_u32(u_input.b, 27u)]) % vec4<u32>(32u)))));
    global1 = var_0.wxy;
    let var_1 = ~vec4<i32>(select(abs(1i), min(0i, ~(-2147483647i)), select(true, true, true)), firstLeadingBit(~1i), ~2147483647i, 1i);
    var var_2 = _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(4070u, 11312u, global1.x) << (~var_0.xyx % vec3<u32>(32u)))), abs(var_0.wzy) >> (vec3<u32>(global1.x, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_0.x, 4294967295u, 90033u), max(var_0, var_0))) % vec3<u32>(32u)));
    var var_3 = vec2<i32>(var_1.x, -(-59745i & ~_wgslsmith_clamp_i32(0i, 1i, 2147483647i)));
    return Struct_1(41304u, vec4<i32>(_wgslsmith_mult_i32(~6764i, i32(-1i) * -21566i), i32(-1i) * -_wgslsmith_add_i32(1i, -2147483647i), ~(~var_3.x ^ _wgslsmith_dot_vec3_i32(var_1.zxw, vec3<i32>(15196i, 0i, -36725i))), ~(~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(true, false, true, !select(false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true));
    let var_1 = ~(~abs(vec2<u32>(1u, 4294967295u)) >> (~(~global1.yx) % vec2<u32>(32u)));
    let var_2 = !(!var_0.x);
    let var_3 = func_1();
    let var_4 = var_3;
    var_0 = vec4<bool>(var_0.x, true, all(vec2<bool>(var_2, false)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(floor(284f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1182f + 189f) - 1116f))), ~_wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(16430u, 31404u, u_input.b, var_3.a)), ~vec4<u32>(global1.x, 1u, u_input.a, var_3.a)), vec4<u32>(var_4.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, global1.x, var_1.x, global1.x), vec4<u32>(u_input.b, var_3.a, var_3.a, var_1.x)), var_3.a >> (global1.x % 32u), 99103u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-305f + 586f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-729f + 1704f))))), vec3<i32>(var_4.b.x, _wgslsmith_add_i32(min(-2147483647i, -1i) >> (func_4(var_0.x, vec2<f32>(418f, -1115f), -1593f).x % 32u), abs(-7045i)), _wgslsmith_sub_i32(-var_4.b.x & _wgslsmith_add_i32(1i, var_3.b.x), _wgslsmith_dot_vec3_i32(func_1().b.wyy, ~vec3<i32>(var_4.b.x, var_3.b.x, 2147483647i)))), var_4.b.ww);
}

