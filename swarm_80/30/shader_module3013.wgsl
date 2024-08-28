struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(27076u, 65774u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global0 = vec2<u32>(global0.x | ~global0.x, abs(26357u) >> (_wgslsmith_add_u32(~(~u_input.a.x), global0.x) % 32u));
    var var_0 = ~(~vec4<u32>(~global0.x, ~11483u, countOneBits(1u), ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
    var_0 = max(u_input.a, ~u_input.a);
    global0 = u_input.a.yy;
    var var_1 = Struct_1(178f, -arg_0.x, _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(-arg_0.x), 1i & arg_0.x, ~_wgslsmith_mult_i32(u_input.b, -1i), 0i), vec4<i32>(arg_0.x, arg_0.x | arg_0.x, -2147483647i, arg_0.x)), global0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(~19906u, _wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.d)), max(vec2<u32>(global0.x, 21336u), var_0.yw) ^ vec2<u32>(var_0.x, 0u)) % 32u));
    return select(_wgslsmith_sub_i32(0i, arg_0.x) ^ abs(-41832i), i32(-1i) * -2147483647i, (-select(-2147483647i, var_1.c.x, false) > -10040i) || !any(vec4<bool>(true, true, true, false)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_mod_i32(max(~select(arg_2.x, _wgslsmith_div_i32(arg_0.x, 0i), true), 25823i), _wgslsmith_dot_vec4_i32(-arg_1.c, select(countOneBits(-vec4<i32>(arg_2.x, arg_0.x, arg_1.b, u_input.b)), vec4<i32>(~arg_0.x, arg_2.x, 1i, _wgslsmith_add_i32(-1i, u_input.b)), vec4<bool>(all(vec4<bool>(true, arg_3, false, arg_3)), !arg_3, arg_3, true))));
    let var_1 = arg_1.b;
    var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(arg_0.zyx, arg_1.c.zyw), vec3<i32>(countOneBits(1i), 0i, func_3(-vec2<i32>(arg_2.x, arg_0.x)))), ~u_input.c);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, 1181f))), select(-(~0i), ~(arg_0.x << (16764u % 32u)) << (1865u % 32u), arg_3 || false), vec4<i32>(abs(u_input.b) & 0i, _wgslsmith_mult_i32(-50530i, ~1i), _wgslsmith_div_i32(func_3(countOneBits(u_input.c.zy)), _wgslsmith_dot_vec2_i32(~arg_0.xz, vec2<i32>(1i, -14681i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(-10124i, arg_0.x), u_input.c.x), _wgslsmith_mod_i32(arg_1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_1, 2822i), arg_1.c)))), u_input.a.x);
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_3.a, var_2.a), _wgslsmith_f_op_f32(1000f - arg_1.a)))));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: u32) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) - _wgslsmith_div_f32(arg_1.x, -976f))))), -1623i, countOneBits(firstTrailingBit(firstTrailingBit(-vec4<i32>(u_input.c.x, u_input.b, 17207i, u_input.b)))), max(1u, 0u));
    var var_2 = var_1.c.x < _wgslsmith_mod_i32(min(var_1.b, i32(-1i) * -1i), u_input.c.x);
    let var_3 = vec2<i32>(u_input.c.x, -max(max(abs(var_1.b), _wgslsmith_dot_vec2_i32(u_input.c.zx, u_input.c.xz)), 2147483647i));
    var_2 = all(select(!vec4<bool>(true, true, select(true, false, true), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true & (-1401f > var_1.a), any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true)));
    return 33599u;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = 1u;
    global0 = vec2<u32>(0u, func_4(u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(123f, 794f), _wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(u_input.c.x, 4590i, 1i, u_input.c.x), Struct_1(-794f, -2147483647i, vec4<i32>(0i, -1i, -2147483647i, 56594i), 52722u), vec2<i32>(-65464i, -33345i), true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -425f), vec2<f32>(312f, arg_0))))), u_input.d, var_0));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0 + 429f), -(i32(-1i) * -u_input.c.x) ^ abs(u_input.b), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zy, -u_input.c.zy), u_input.c.x, ~(~(~(-11133i))), -31150i), 0u);
    global0 = ~(~(abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), u_input.d)) >> (_wgslsmith_add_vec2_u32(~u_input.a.yz, u_input.a.yx | u_input.d) % vec2<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0)))) - -124f), var_1.c.x, firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b & var_1.b, var_1.c.x, _wgslsmith_mult_i32(1i, u_input.c.x)), -var_1.c)), ~global0.x);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-u_input.b));
    var var_1 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1096f - -885f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f - -128f) + -1554f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(693f - 619f) - _wgslsmith_f_op_f32(f32(-1f) * -747f)))))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f - 384f)))))));
    let var_3 = Struct_1(1430f, ((_wgslsmith_mult_i32(var_0, u_input.b) & ~(-20396i)) ^ abs(~u_input.c.x)) & (~u_input.c.x ^ (u_input.c.x | 11621i)), vec4<i32>(_wgslsmith_mod_i32(~var_0 >> (~0u % 32u), i32(-1i) * -7240i), -1i, 0i, ~(abs(var_0) & 0i)), 4294967295u);
    var var_4 = var_3;
    var_4 = var_3;
    var var_5 = -var_3.c.zwy ^ vec3<i32>(-u_input.b, _wgslsmith_sub_i32(select(i32(-1i) * -29913i, var_4.c.x >> (u_input.a.x % 32u), false), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_4.c, vec4<i32>(var_0, u_input.b, var_3.b, 51154i)), _wgslsmith_div_vec4_i32(var_3.c, vec4<i32>(u_input.b, -54244i, var_0, -4521i)))), select(_wgslsmith_div_i32(u_input.b, 0i), ~20854i, all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.a.x), -988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(218f + -485f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2040f, var_3.a)))))), -120f);
}

