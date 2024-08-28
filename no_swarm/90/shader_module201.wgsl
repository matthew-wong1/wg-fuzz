struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
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

var<private> global0: f32 = -646f;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global2: i32 = -45457i;

var<private> global3: Struct_1 = Struct_1(true, -8107i, 0u, 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = ~vec4<u32>(0u, reverseBits(39607u), ~u_input.b.x, 45149u);
    let var_1 = Struct_1(!global1.x, global3.b, global3.c, _wgslsmith_div_i32(countOneBits(global3.d), 68532i));
    var var_2 = var_1;
    var var_3 = -541f;
    let var_4 = var_1.a;
    return -262f;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(any(!(!select(global1.yw, global1.xz, false))), 0i, min(reverseBits(_wgslsmith_mult_u32(87867u, u_input.b.x)), ~global3.c), 1i);
    global0 = _wgslsmith_f_op_f32(trunc(1000f));
    global0 = _wgslsmith_f_op_f32(select(-161f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) * _wgslsmith_f_op_f32(func_3())))), _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.b.x, global3.c, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), min(1u, 0u), _wgslsmith_mult_u32(58004u, arg_1.c))) < _wgslsmith_dot_vec2_u32(~u_input.b, ~(~u_input.b))));
    var var_1 = abs(abs(~(~abs(vec2<i32>(global3.b, u_input.c.x)))));
    global3 = Struct_1(arg_1.a, 0i, ~_wgslsmith_dot_vec4_u32(vec4<u32>(~global3.c, global3.c, 58733u, firstTrailingBit(var_0.c)), vec4<u32>(arg_1.c, arg_1.c, arg_1.c, 84706u) & ~vec4<u32>(global3.c, 61141u, var_0.c, 78002u)), _wgslsmith_div_i32(abs(-29056i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.d, 73190i, u_input.a), -vec3<i32>(var_1.x, var_1.x, 19567i))) >> (var_0.c % 32u));
    return Struct_1(!all(vec4<bool>(global1.x == global1.x, global1.x, select(var_0.a, var_0.a, global3.a), !global3.a)), -10808i, ~4294967295u, ~select(-8855i, -(~1i), all(select(vec4<bool>(false, global3.a, false, global1.x), vec4<bool>(false, true, global3.a, arg_1.a), vec4<bool>(var_0.a, false, true, true)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> vec4<i32> {
    global0 = arg_2;
    global2 = 2147483647i;
    let var_0 = func_2(_wgslsmith_sub_u32(~abs(_wgslsmith_add_u32(12923u, global3.c)), global3.c), arg_0);
    global3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -428f) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, arg_2))))), -14499i, ~(~(~arg_0.c)), ~abs(-(i32(-1i) * -14286i)));
    var var_1 = _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b);
    return _wgslsmith_mult_vec4_i32(vec4<i32>(-select(func_2(4294967295u, Struct_1(false, -2174i, 12176u, u_input.a)).d, ~(-19968i), any(global1.xyz)), func_2(_wgslsmith_sub_u32(arg_3.c, 18917u) | 0u, arg_1).b, 2147483647i, global3.d), -firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, -2147483647i, var_0.b, arg_1.d), vec4<i32>(0i, 2147483647i, global3.d, -2147483647i))));
}

fn func_4(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = !any(vec2<bool>(global3.a, !any(global1.yyy)));
    var var_1 = true;
    var var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(10811u, global3.c), 0u);
    let var_3 = Struct_1(global3.a, 0i, u_input.b.x, select(~global3.b, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(_wgslsmith_mod_i32(arg_0.x, -65655i), -53009i, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(1i, 29797i, -19838i, 21674i)), u_input.a | 5173i)), false));
    global2 = min(~_wgslsmith_mod_i32(-4817i, ~(~var_3.b)), -63430i);
    return Struct_1(!all(!select(vec4<bool>(global3.a, global3.a, false, true), vec4<bool>(global3.a, true, true, false), true)), 8014i, min(_wgslsmith_clamp_u32(46843u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_clamp_u32(var_3.c, 8962u, 1u)), abs(~var_3.c)), 61477u), -(_wgslsmith_mod_i32(1996i, _wgslsmith_sub_i32(arg_0.x, global3.b)) ^ arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-100f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)))));
    global0 = 965f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(947f - -2346f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1339f)))), -799f) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1427f, 513f))))));
    let var_0 = -u_input.c << (u_input.b % vec2<u32>(32u));
    let var_1 = func_4(~(abs(func_1(Struct_1(false, u_input.c.x, 33252u, -13364i), Struct_1(false, 18958i, global3.c, u_input.c.x), -466f, Struct_1(true, var_0.x, 34316u, var_0.x))) & _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, 2147483647i, 3870i, global3.b), vec4<i32>(var_0.x, -1i, u_input.c.x, 60224i) & vec4<i32>(0i, -1i, global3.b, 63467i), firstTrailingBit(vec4<i32>(-63073i, -9380i, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global3.b));
}

