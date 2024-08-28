struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = 164f;
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(1i, 1i), true));
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(4294967295u, abs(u_input.c)), min(1u, 1u));
    var var_3 = Struct_3(Struct_1(~_wgslsmith_add_i32(_wgslsmith_sub_i32(14416i, var_1.a.a), -u_input.d.x), true), Struct_1(1i, u_input.b.x > var_1.a.a), select(select(select(vec4<bool>(var_1.a.b, false, var_1.a.b, false), select(vec4<bool>(var_1.a.b, true, false, true), vec4<bool>(false, true, true, true), false), u_input.c != 4294967295u), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, var_1.a.b), vec4<bool>(false, true, var_1.a.b, var_1.a.b)), vec4<bool>(false, var_1.a.b != false, var_1.a.b, false)), !(!vec4<bool>(true, var_1.a.b, var_1.a.b, var_1.a.b)), var_1.a.b));
    var_3 = Struct_3(Struct_1(-26379i, true), Struct_1(countOneBits(-var_3.b.a), var_3.c.x), !vec4<bool>(var_3.b.a > var_1.a.a, any(select(var_3.c.yx, vec2<bool>(false, var_3.a.b), var_3.c.xz)), !all(var_3.c), any(vec2<bool>(var_3.c.x, true))));
    return abs(u_input.c | 47236u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = arg_1.a;
    let var_1 = 32419i;
    var_0 = arg_1.a;
    var_0 = arg_1.a;
    var var_2 = select(-10218i, -23308i, any(select(select(vec4<bool>(arg_1.a.b, true, true, arg_1.a.b), select(vec4<bool>(var_0.b, var_0.b, arg_1.a.b, var_0.b), vec4<bool>(true, arg_1.a.b, arg_1.a.b, false), vec4<bool>(arg_1.a.b, false, false, false)), vec4<bool>(true, false, false, var_0.b)), select(select(vec4<bool>(arg_1.a.b, true, false, arg_1.a.b), vec4<bool>(false, false, false, true), vec4<bool>(true, var_0.b, arg_1.a.b, var_0.b)), select(vec4<bool>(false, arg_1.a.b, var_0.b, false), vec4<bool>(true, arg_1.a.b, arg_1.a.b, var_0.b), vec4<bool>(arg_1.a.b, arg_1.a.b, false, true)), true), true)));
    return arg_1.a.a;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = -2087f;
    var var_1 = ~(~(~1u)) <= u_input.c;
    var var_2 = func_4(vec2<u32>(~_wgslsmith_mod_u32(~u_input.c, min(65851u, 39835u)), firstLeadingBit(u_input.c)), Struct_2(arg_0.a), func_3(_wgslsmith_f_op_f32(ceil(-2423f)), _wgslsmith_f_op_f32(-1f)));
    let var_3 = ~(vec4<u32>(_wgslsmith_mod_u32(u_input.c, firstTrailingBit(u_input.c)), ~u_input.c, 4294967295u, 4294967295u) << (~select(~vec4<u32>(u_input.c, u_input.c, 65668u, u_input.c), countOneBits(vec4<u32>(u_input.c, 1u, 11818u, 4294967295u)), vec4<bool>(arg_0.a.b, false, arg_0.a.b, true)) % vec4<u32>(32u)));
    var_1 = !arg_0.a.b;
    return arg_0;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> bool {
    var var_0 = func_2(Struct_2(Struct_1(_wgslsmith_add_i32(u_input.a >> (u_input.c % 32u), _wgslsmith_mult_i32(u_input.d.x, -2147483647i)), (u_input.c | 0u) <= 1u)));
    let var_1 = !(!select(!(!vec2<bool>(arg_2, var_0.a.b)), !select(vec2<bool>(arg_2, false), vec2<bool>(true, false), vec2<bool>(arg_1, false)), all(select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), arg_1))));
    var var_2 = Struct_1(var_0.a.a, arg_2);
    let var_3 = Struct_2(var_0.a);
    let var_4 = Struct_3(func_2(var_3).a, var_3.a, vec4<bool>(all(select(var_1, !vec2<bool>(var_3.a.b, true), var_1)), select(any(select(vec4<bool>(var_0.a.b, false, var_2.b, false), vec4<bool>(false, false, var_3.a.b, arg_2), vec4<bool>(arg_1, var_1.x, false, false))), !arg_2, var_1.x), true, true | all(var_1)));
    return all(vec4<bool>(!all(vec4<bool>(true, arg_1, false, var_1.x)), false, true, false));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_1(-arg_1.x, -(~arg_1.x) > countOneBits(-1i)), func_2(Struct_2(func_2(Struct_2(Struct_1(-1i, false))).a)).a, !(!select(!vec4<bool>(arg_0.x, false, true, true), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), true)));
    var var_1 = any(select(var_0.c, vec4<bool>(all(var_0.c), func_1(1000f, false, arg_0.x, vec4<f32>(-1624f, 1435f, -312f, -456f)), all(var_0.c.yy), !var_0.a.b), !select(var_0.c, var_0.c, var_0.c))) & arg_0.x;
    var_1 = true;
    let var_2 = 19499i;
    var_1 = any(arg_0);
    return Struct_2(func_2(Struct_2(Struct_1(func_4(vec2<u32>(68226u, 5937u), Struct_2(var_0.a), u_input.c), 9323u == u_input.c))).a);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = -16605i;
    var var_1 = !arg_0.a.b;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.x, arg_1.x)));
    var var_3 = Struct_3(Struct_1((-arg_0.a.a << (4294967295u % 32u)) << (~countOneBits(4294967295u) % 32u), arg_0.a.b), arg_0.a, arg_2);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), arg_1.x, 856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1056f), u_input.c > u_input.c)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))))));
    return func_5(select(!select(select(vec2<bool>(false, arg_0.a.b), vec2<bool>(arg_2.x, var_3.a.b), arg_2.x), select(vec2<bool>(arg_0.a.b, true), vec2<bool>(false, true), var_3.c.wx), vec2<bool>(false, true)), !select(arg_2.zw, select(vec2<bool>(true, false), arg_2.wz, false), vec2<bool>(false, arg_0.a.b)), arg_2.x), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-10327i, 2147483647i), u_input.a), -_wgslsmith_mult_vec2_i32(~u_input.b, -u_input.b))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = func_6(func_5(select(vec2<bool>(func_1(-1010f, true, true, vec4<f32>(-313f, -248f, 667f, 642f)), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), func_2(Struct_2(Struct_1(u_input.d.x, false))).a.b), ~u_input.d.xz), _wgslsmith_f_op_vec2_f32(vec2<f32>(122f, 1f) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-302f, 1000f), vec2<f32>(-122f, -1000f))))))), vec4<bool>(false, select(true, false, firstTrailingBit(1u) == 4294967295u), any(vec4<bool>(true, true, true, true)) & true, !(true || (var_0 == 0u))));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, ~_wgslsmith_dot_vec3_i32(u_input.d.yzy, u_input.d.zyz), -1i, ~select(-11052i, -19309i, false)), abs(vec4<i32>(min(17535i, var_1.a), 1i, abs(0i), _wgslsmith_clamp_i32(15510i, var_1.a, var_1.a)))), var_1.b);
    var_1 = func_5(vec2<bool>(false, true), u_input.b).a;
    var var_2 = 0i;
    var_2 = -2147483647i;
    var var_3 = vec4<bool>(var_1.b, any(!(!select(vec3<bool>(false, var_1.b, false), vec3<bool>(true, true, var_1.b), vec3<bool>(false, var_1.b, var_1.b)))), all(select(select(select(vec4<bool>(false, var_1.b, false, true), vec4<bool>(var_1.b, var_1.b, false, false), true), !vec4<bool>(false, var_1.b, var_1.b, var_1.b), var_1.b), select(!vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, true), select(vec4<bool>(var_1.b, false, var_1.b, true), vec4<bool>(true, true, var_1.b, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, true))), var_1.b)), true);
    var_2 = abs(firstLeadingBit(-u_input.d.x >> (countOneBits(u_input.c) % 32u)) ^ var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c ^ _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 63947u)), firstTrailingBit(firstLeadingBit(vec2<u32>(var_0, 4294967295u)))), vec4<i32>(2147483647i, -func_4(_wgslsmith_mult_vec2_u32(vec2<u32>(38455u, var_0), vec2<u32>(0u, var_0)), Struct_2(Struct_1(-2564i, var_1.b)), ~92564u), var_1.a, u_input.a), _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(-u_input.d, vec4<i32>(-12535i, u_input.d.x, 0i, -4564i) << (vec4<u32>(var_0, 46176u, u_input.c, 1u) % vec4<u32>(32u))), func_5(var_3.yz, _wgslsmith_mult_vec2_i32(u_input.d.zx, -vec2<i32>(u_input.b.x, u_input.a))).a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-691f * _wgslsmith_f_op_f32(1091f + 712f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(250f)), -1093f))), _wgslsmith_f_op_f32(202f + _wgslsmith_f_op_f32(-723f * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, 405f))))));
}

