struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>) -> f32 {
    var var_0 = !arg_1.xww;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(156f, _wgslsmith_f_op_f32(f32(-1f) * -1013f)), 175f, arg_0) + vec3<f32>(1384f, 107f, _wgslsmith_f_op_f32(f32(-1f) * -267f))));
    return var_1.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-596f, vec3<u32>(u_input.c, _wgslsmith_sub_u32(7287u, u_input.d.x), 17556u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(var_0.a.a)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)))))), u_input.d);
    var var_2 = vec3<u32>(45955u, reverseBits((0u & var_1.b.x) << (1u % 32u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b.x, 44623u, 1u), u_input.d), ~var_1.b.x)) | vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c, var_1.b.x), u_input.d), var_1.b.x, _wgslsmith_mod_u32(u_input.c, 8830u));
    var var_3 = var_1.b.x;
    let var_4 = Struct_3(all(vec3<bool>(!any(vec4<bool>(false, false, true, true)), true, true)));
    return var_1;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1455f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-747f, 1f)) * -149f)), ~u_input.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-722f + var_0.a)))))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(65519u ^ var_0.b.x, u_input.d.x, max(0u, var_0.b.x)), ~vec3<u32>(u_input.e.x, u_input.e.x, var_0.b.x)));
    let var_1 = -u_input.a;
    var_0 = func_2();
    var_0 = func_2();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_0.a)), vec3<u32>(54775u, var_0.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 0u), vec2<u32>(27728u, u_input.d.x)), 43284u, 13623u))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = min(_wgslsmith_dot_vec3_i32(~(-u_input.b), -u_input.b), -12767i);
    var_0 = ~_wgslsmith_div_i32(~arg_2, -59065i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(1000f, -457f)), min(~u_input.d, func_1().a.b));
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_4 {
    let var_0 = func_4(func_4(arg_0, vec2<i32>(-select(arg_1.x, -1i, true), -1618i), 39388i, arg_0.a.b.xz), firstLeadingBit(_wgslsmith_mult_vec2_i32(min(arg_1, -arg_1), vec2<i32>(u_input.a >> (u_input.c % 32u), -12720i))), u_input.a, u_input.d.zx | u_input.d.zz);
    var var_1 = !(!(var_0.a.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.a * var_0.a.a) - arg_0.a.a)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), ~arg_0.a.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_div_f32(-709f, arg_0.a.a), -2267f)))));
    var var_4 = 1196f;
    return Struct_4(283f, var_3.xx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.a - _wgslsmith_f_op_f32(-arg_0.a.a))), u_input.d), true);
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.x + 2164f), arg_0.c.a)))));
    let var_1 = arg_3.x;
    let var_2 = !(!vec3<bool>(_wgslsmith_f_op_f32(min(arg_0.b.x, 498f)) >= _wgslsmith_f_op_f32(arg_0.a + 767f), any(select(vec4<bool>(arg_1.a, false, arg_0.d, false), vec4<bool>(false, arg_1.a, true, arg_2.a), arg_2.a)), arg_0.d));
    var var_3 = u_input.d.zx;
    let var_4 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)), func_4(Struct_2(arg_0.c), u_input.b.zx, max(u_input.a, u_input.b.x), ~vec2<u32>(var_3.x, 4294967295u)).a.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), countOneBits(-vec2<i32>(u_input.a, 0i)), vec2<i32>(u_input.a, -_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.xz))));
    return Struct_1(func_2().a, ~(~(~u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(~max(reverseBits(reverseBits(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.d.x))), ~(~vec4<u32>(16036u, u_input.e.x, u_input.e.x, 4294967295u))), ~(~(~vec4<u32>(u_input.c, u_input.e.x, u_input.e.x, u_input.c))));
    var var_1 = Struct_2(func_6(func_5(func_4(func_1(), -vec2<i32>(-2147483647i, u_input.a), _wgslsmith_div_i32(u_input.b.x, 36303i), vec2<u32>(1u, u_input.c)), u_input.b.zz), Struct_3(any(vec2<bool>(true, true))), Struct_3(true), ~_wgslsmith_add_vec2_u32(~var_0.zz, var_0.ww)));
    var_0 = ~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(46687u, 0u, 13904u, 4294967295u), ~vec4<u32>(0u, 0u, var_1.a.b.x, u_input.c), firstTrailingBit(vec4<u32>(20570u, 3716u, 17440u, 34131u))), ~vec4<u32>(var_1.a.b.x, 1u, 4294967295u, u_input.d.x) >> (max(vec4<u32>(49660u, 19387u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 4294967295u, 1u)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b >> (select(vec3<u32>(~42633u, abs(u_input.e.x), func_1().a.b.x), u_input.d | u_input.d, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, _wgslsmith_f_op_f32(-var_1.a.a)))), _wgslsmith_clamp_i32(-1i, ~abs(u_input.b.x), -2147483647i), _wgslsmith_div_i32(u_input.b.x, -firstLeadingBit(u_input.b.x >> (var_1.a.b.x % 32u))), 21322u);
}

