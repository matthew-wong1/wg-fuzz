struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2, arg_0), vec2<f32>(-1801f, arg_2), true)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -384f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_0), _wgslsmith_f_op_f32(abs(354f)))))));
    let var_1 = Struct_3(arg_0);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-457f + 722f), _wgslsmith_f_op_f32(abs(671f))), arg_2)))), _wgslsmith_f_op_f32(-461f - -168f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1304f);
    var var_3 = var_1;
    return (!arg_3.x != (false & arg_3.x)) | (any(arg_3.yz) || true);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_3 {
    var var_0 = ~u_input.c.x;
    var_0 = u_input.c.x;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-239f, 1000f, _wgslsmith_f_op_f32(trunc(808f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-404f, -842f, 1272f) * vec3<f32>(-205f, 491f, 296f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1194f, -1745f, -212f))))))), true, Struct_1(-vec3<i32>(-9194i, -u_input.d.x, _wgslsmith_mod_i32(1i, u_input.d.x)), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), select(true, true, true), false), arg_0.x), vec3<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), all(vec2<bool>(true, true))), !(!vec4<bool>(true, true, all(vec4<bool>(true, true, true, true)), true)));
    var var_2 = any(select(select(select(select(vec2<bool>(var_1.b, var_1.d.x), vec2<bool>(var_1.c.b.x, true), false), !var_1.d.xx, var_1.d.yx), !(!vec2<bool>(var_1.c.b.x, true)), arg_1 >= 0u), select(vec2<bool>(true, any(var_1.e)), select(vec2<bool>(true, false), var_1.e.zy, func_3(var_1.a.x, Struct_3(var_1.a.x), var_1.a.x, vec3<bool>(var_1.b, var_1.b, var_1.c.b.x))), var_1.e.yz), false));
    let var_3 = _wgslsmith_mod_i32(arg_0.x, var_1.c.c);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.x))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = func_2(vec2<i32>(_wgslsmith_mult_i32(firstTrailingBit(~u_input.d.x), arg_0.x), -_wgslsmith_div_i32(0i, 1i)), 0u);
    var_0 = Struct_3(var_0.a);
    var var_1 = -(~(select(vec4<i32>(-2147483647i, u_input.d.x, u_input.c.x, 72683i), vec4<i32>(-2147483647i, 38803i, 47050i, -39186i), vec4<bool>(true, false, false, false)) & (vec4<i32>(-1131i, 30445i, 1i, u_input.c.x) ^ vec4<i32>(arg_0.x, arg_0.x, 0i, arg_0.x)))) << (abs(~(~(vec4<u32>(0u, 4294967295u, 116737u, 41112u) >> (vec4<u32>(37495u, u_input.b.x, u_input.a.x, u_input.b.x) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var var_2 = Struct_1(reverseBits(max(_wgslsmith_add_vec3_i32(-u_input.c, var_1.yzy), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, var_1.x, arg_0.x), var_1.yyy, vec3<i32>(0i, arg_0.x, -45678i))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, false))), u_input.a.x == u_input.a.x), vec4<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), false, 0u < _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.b.x))), max(0i, -(~3154i)));
    var_2 = Struct_1((min(_wgslsmith_add_vec3_i32(vec3<i32>(19369i, u_input.d.x, -54862i), var_1.xyx), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.c, -2147483647i, -1i), vec3<i32>(-56848i, 13866i, u_input.d.x), vec3<i32>(-1i, -18671i, u_input.c.x))) ^ firstLeadingBit(vec3<i32>(59135i, 2147483647i, arg_0.x))) | (countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, 50288i, -2147483647i), arg_0)) << (u_input.b % vec3<u32>(32u))), select(var_2.b, select(vec4<bool>(true, true, any(vec3<bool>(true, false, false)), var_2.b.x), !select(var_2.b, var_2.b, true), var_2.b.x | (false || var_2.b.x)), vec4<bool>(any(!vec2<bool>(var_2.b.x, false)), var_2.b.x, !var_2.b.x, any(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true)))), _wgslsmith_mod_i32(u_input.c.x | _wgslsmith_mod_i32(var_1.x, arg_0.x | arg_0.x), 11807i));
    return select(vec4<bool>(false, false, true & !var_2.b.x, var_2.b.x), var_2.b, select(vec4<bool>(any(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x)), -1000f >= var_0.a, true, var_2.b.x), var_2.b, var_2.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<i32>) -> bool {
    let var_0 = abs(countOneBits(~(_wgslsmith_sub_vec4_u32(vec4<u32>(43037u, u_input.a.x, 9276u, 3053u), vec4<u32>(43423u, u_input.b.x, u_input.a.x, 1u)) ^ firstLeadingBit(vec4<u32>(73569u, 0u, 1u, u_input.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1799f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1000f)), -501f, !arg_0.b.x)));
    let var_2 = ~9869u;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-535f, 884f, arg_0.b.x)), _wgslsmith_f_op_f32(floor(-387f)))))) * 1f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1208f)), -203f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(203f))))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(884f, 156f, true)), _wgslsmith_f_op_f32(f32(-1f) * -499f));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(~u_input.c, !func_1(u_input.c), 1i), countOneBits(vec2<i32>(abs(_wgslsmith_mod_i32(u_input.d.x, -2147483647i)), -1i)), vec4<i32>(-(~u_input.c.x), ~_wgslsmith_add_i32(1i, 0i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(28468i, u_input.c.x, u_input.c.x), u_input.c), 30181i, u_input.d.x & 17652i));
    var_0 = !any(!(!func_1(vec3<i32>(1i, -2147483647i, u_input.c.x)).yyw));
    var var_1 = func_2(vec2<i32>(0i, max(firstTrailingBit(countOneBits(u_input.c.x)), abs(abs(u_input.d.x)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(125801u, u_input.b.x, u_input.a.x, u_input.b.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.a.x, 53154u, 4294967295u) >> (vec4<u32>(3271u, u_input.a.x, u_input.b.x, 3673u) % vec4<u32>(32u))), countOneBits(abs(u_input.b.x))), firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zy))));
    var var_2 = func_2(u_input.c.zx, u_input.b.x);
    var var_3 = false;
    var var_4 = _wgslsmith_clamp_u32(u_input.a.x, max(1u, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(4294967295u, u_input.b.x), ~(~1u))), 1u);
    var var_5 = Struct_1(u_input.c, select(vec4<bool>(!(0u < u_input.a.x), all(vec3<bool>(true, true, true)) || true, all(vec3<bool>(false, true, true)), true), !vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true), !all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), false))), u_input.d.x);
    var var_6 = firstTrailingBit(u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(var_2.a + _wgslsmith_f_op_f32(sign(1476f)))), vec4<u32>(87700u, 1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(u_input.b.x, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 99u, 4294967295u, 40107u), vec4<u32>(74890u, 7255u, u_input.b.x, u_input.b.x))), max(u_input.b.xx, u_input.a.zy | u_input.b.xy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, var_1.a, _wgslsmith_f_op_f32(exp2(var_2.a))))), _wgslsmith_dot_vec4_u32(abs(abs(~vec4<u32>(1u, u_input.b.x, 1u, 0u))), min(vec4<u32>(select(u_input.a.x, 4294967295u, true), ~u_input.b.x, ~56236u, ~u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 21614u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 19666u, u_input.b.x, u_input.a.x)) << (~vec4<u32>(1u, 0u, 1u, u_input.a.x) % vec4<u32>(32u)))), u_input.c.x);
}

