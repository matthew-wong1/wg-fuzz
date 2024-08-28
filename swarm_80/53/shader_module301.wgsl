struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<i32> {
    global0 = array<f32, 6>();
    let var_0 = Struct_2(-(~(-abs(vec3<i32>(-11754i, -1i, 0i)))), 7946i, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-633f, -425f, -173f))))));
    global0 = array<f32, 6>();
    let var_1 = Struct_3(Struct_1(global0[_wgslsmith_index_u32(~1u, 6u)], any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(true, true)))), true || all(vec4<bool>(false, true, true, true)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(-1929f * -126f)), 1000f)), any(vec2<bool>(any(vec4<bool>(false, false, true, true)), var_0.b < -2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 6u)]) * -2036f) >= _wgslsmith_f_op_f32(var_1.a.a - _wgslsmith_f_op_f32(527f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-181f * global0[_wgslsmith_index_u32(u_input.a.x, 6u)])))));
    return vec3<i32>(var_0.b, var_0.b, -(~(-select(var_0.b, -1506i, false))));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>) -> bool {
    let var_0 = Struct_2(vec3<i32>(firstLeadingBit(arg_1), 2147483647i, 50924i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, -2147483647i, 8583i), vec4<i32>(arg_1, -39269i, arg_0.x, 0i)), -vec4<i32>(-11361i, arg_1, -27205i, 1i)) >> (~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u), reverseBits(arg_0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 6u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 6u)] * global0[_wgslsmith_index_u32(0u, 6u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1798f + 1579f) - -1000f)))));
    global0 = array<f32, 6>();
    var var_1 = 107644u >> (1u % 32u);
    global0 = array<f32, 6>();
    let var_2 = _wgslsmith_add_vec3_i32(max(func_3(~1u) >> (min(vec3<u32>(22775u, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 0u))) % vec3<u32>(32u)), vec3<i32>(~arg_1, _wgslsmith_div_i32(-var_0.b, 1i), _wgslsmith_dot_vec3_i32(var_0.a, var_0.a))), (vec3<i32>(-1i) * -min(vec3<i32>(1i, -32264i, arg_0.x), vec3<i32>(-1i, -1i, arg_1))) >> (~u_input.a % vec3<u32>(32u)));
    return true;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool, arg_3: u32) -> vec2<bool> {
    let var_0 = !select(select(vec2<bool>(!arg_2, true), vec2<bool>(true, true), vec2<bool>(true || arg_2, false)), vec2<bool>(true, all(vec4<bool>(false, arg_2, arg_2, false))), false);
    let var_1 = any(vec3<bool>(arg_2, select(false, (25931u & arg_3) >= firstTrailingBit(52585u), true), !func_2(vec2<i32>(2147483647i, 9902i), arg_0.x, !vec3<bool>(false, arg_2, var_0.x))));
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    return var_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> Struct_3 {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~(~19306i)), countOneBits(-vec2<i32>(0i, 30395i))), -abs(1i), 23654i);
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1)), arg_1)) + _wgslsmith_f_op_f32(f32(-1f) * -100f));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(trunc(743f)), true), true, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + _wgslsmith_f_op_f32(f32(-1f) * -963f))), 2147483647i > max(firstLeadingBit(var_0.x), ~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    global0 = array<f32, 6>();
    let var_0 = func_4(select(!func_1(~vec4<i32>(17718i, -2147483647i, 1i, 5898i), Struct_2(vec3<i32>(1i, -32388i, -37098i), 56385i, vec3<f32>(-1391f, 855f, global0[_wgslsmith_index_u32(7592u, 6u)])), any(vec4<bool>(false, true, true, true)), u_input.a.x), vec2<bool>(!any(vec4<bool>(false, true, true, true)), true), true), 285f);
    var var_1 = Struct_2(firstLeadingBit(min(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(19904i, -44722i, 1i)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(-1i, -8908i, -16656i), vec3<i32>(5360i, 1i, 1i)), vec3<i32>(80259i, 4764i, -1i), -vec3<i32>(48093i, 2147483647i, -43182i)))), ~1i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.a, var_0.c.a)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 6u)] - -1792f), 557f))), var_0.a.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-650f, _wgslsmith_f_op_f32(sign(var_0.c.a))))))));
    var var_2 = (u_input.a.x >> (abs(firstLeadingBit(1u)) % 32u)) != u_input.a.x;
    global0 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(~(~4294967295u)), ~(~vec4<u32>(u_input.a.x, reverseBits(4294967295u), min(u_input.a.x, 72376u), u_input.a.x >> (u_input.a.x % 32u))), abs(var_1.b), var_1.a, vec4<u32>(u_input.a.x, _wgslsmith_clamp_u32(~select(0u, u_input.a.x, false), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 24918u, u_input.a.x, 1u), vec4<u32>(1u, 1u, 0u, 1u)), 49492u), 0u, min(u_input.a.x, 1u)));
}

