struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = countOneBits(-_wgslsmith_mult_i32(arg_2.b, 2147483647i));
    var var_1 = u_input.c.xz;
    let var_2 = Struct_1(228f, 41592i, false);
    let var_3 = 0u;
    let var_4 = !select(arg_2.c, false, true);
    return Struct_1(3413f, _wgslsmith_clamp_i32(-38171i, ~2147483647i, arg_3.x >> (~(~arg_0.x) % 32u)), any(!(!select(vec3<bool>(var_2.c, var_4, false), vec3<bool>(var_2.c, false, arg_2.c), vec3<bool>(true, arg_2.c, false)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<bool> {
    let var_0 = func_2(select(arg_1.xz ^ ~select(vec2<u32>(30373u, arg_1.x), u_input.a.zy, vec2<bool>(arg_0.c, true)), countOneBits(~(~u_input.a.wx)), true), ~u_input.c.x, arg_0, -(~(vec4<i32>(12820i, u_input.c.x, u_input.c.x, arg_0.b) | select(vec4<i32>(arg_0.b, arg_0.b, 1i, 0i), vec4<i32>(u_input.d.x, 77154i, -2147483647i, u_input.c.x), vec4<bool>(false, true, false, true)))));
    var var_1 = !(all(vec3<bool>(var_0.c, true, arg_0.c)) | !all(vec4<bool>(true, arg_0.c, arg_0.c, var_0.c))) != (1i < firstLeadingBit(reverseBits(max(var_0.b, -14659i))));
    var var_2 = ~(-(reverseBits(vec2<i32>(var_0.b, var_0.b)) << (~vec2<u32>(0u, arg_1.x) % vec2<u32>(32u))) ^ (vec2<i32>(-1i) * -u_input.d.xz));
    var_1 = false;
    var_2 = _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, u_input.d.x), ~(select(u_input.c.zx ^ u_input.c.zz, u_input.d.yy & u_input.d.zx, select(vec2<bool>(true, arg_0.c), vec2<bool>(arg_0.c, var_0.c), var_0.c)) >> (countOneBits(vec2<u32>(55470u, 26105u)) % vec2<u32>(32u))));
    return vec4<bool>(arg_0.c, arg_0.c, arg_0.c, ~arg_1.x < _wgslsmith_dot_vec2_u32(select(arg_1.ww, u_input.a.xw, arg_0.c), u_input.a.xz));
}

fn func_1() -> f32 {
    var var_0 = Struct_1(-1000f, _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, -35411i), _wgslsmith_div_i32(10422i, 34988i)), any(!func_3(func_2(vec2<u32>(u_input.a.x, 0u), 38712i, Struct_1(-828f, 2147483647i, false), vec4<i32>(u_input.d.x, 46841i, 0i, u_input.c.x)), u_input.a)));
    var var_1 = func_2(vec2<u32>(firstLeadingBit(u_input.b), 5067u), -u_input.d.x, func_2(abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a.zy, vec2<u32>(27491u, u_input.a.x)))), _wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(u_input.c.x, var_0.b)), -select(vec2<i32>(var_0.b, -1i), vec2<i32>(-9911i, 1i), vec2<bool>(true, var_0.c))), Struct_1(var_0.a, _wgslsmith_add_i32(~(-1i), func_2(u_input.a.xy, 31269i, Struct_1(var_0.a, u_input.c.x, false), vec4<i32>(-10994i, var_0.b, -2147483647i, 2147483647i)).b), true), select(reverseBits(vec4<i32>(var_0.b, -25081i, -5057i, u_input.c.x)), -vec4<i32>(-6184i, 2147483647i, var_0.b, 2147483647i), any(vec2<bool>(true, var_0.c))) << (u_input.a % vec4<u32>(32u))), max(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.b, var_0.b, var_0.b), vec4<i32>(-25169i, var_0.b, -22131i, var_0.b)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, var_0.b, u_input.d.x, 28504i), vec4<i32>(u_input.d.x, -66199i, u_input.c.x, 2147483647i)), abs(abs(vec4<i32>(-1827i, -2147483647i, u_input.d.x, u_input.d.x)))) | reverseBits(vec4<i32>(-31013i | var_0.b, ~1i, -62077i & var_0.b, -2147483647i)));
    var_0 = Struct_1(var_0.a, -2147483647i, !var_0.c);
    var var_2 = select(vec3<bool>(true, true, true), vec3<bool>(true | any(func_3(Struct_1(var_0.a, 6797i, var_1.c), u_input.a).zx), !var_0.c, func_3(func_2(vec2<u32>(u_input.a.x, u_input.a.x), 1i, Struct_1(-610f, 1i, false), reverseBits(vec4<i32>(var_0.b, -5773i, var_1.b, var_1.b))), countOneBits(u_input.a) >> (~vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.b) % vec4<u32>(32u))).x), func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1394f, -314f) * -1660f), -(u_input.c.x ^ 1i), (72765i < u_input.d.x) && (false & var_1.c)), vec4<u32>(u_input.b, 114939u, (1u | u_input.b) & 1u, u_input.a.x)).wzw);
    var var_3 = vec4<i32>(-4345i, max(_wgslsmith_clamp_i32(-2147483647i, var_1.b << (1u % 32u), var_1.b), 31381i), -38568i, -u_input.c.x);
    return var_1.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_2(firstLeadingBit(vec2<u32>(~countOneBits(u_input.a.x), u_input.a.x)), arg_1.a.b, Struct_1(arg_1.a.a, arg_1.a.b, ~(~27002u) != u_input.b), ~(-abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.b, u_input.d.x, -2147483647i, 1i), vec4<i32>(arg_1.a.b, -7410i, 0i, -4483i), vec4<i32>(u_input.d.x, u_input.c.x, arg_0.x, arg_0.x)))));
    var var_1 = 1000f;
    var var_2 = var_0.c;
    var var_3 = 2147483647i;
    let var_4 = Struct_2(func_2(abs(u_input.a.zx), select(~select(-3002i, var_0.b, true), 880i, false), arg_1.a, _wgslsmith_clamp_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, 2355i, var_0.b, -64290i), vec4<i32>(var_0.b, u_input.d.x, 2147483647i, arg_1.a.b)), vec4<i32>(14923i, arg_0.x, arg_0.x, arg_0.x), !arg_1.a.c), _wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0.x, -11931i, 6164i, arg_1.a.b), firstTrailingBit(vec4<i32>(1i, 0i, arg_1.a.b, arg_0.x))), vec4<i32>(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(2147483647i, 16542i, var_0.b)), -68206i, ~arg_1.a.b, arg_1.a.b))));
    return func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, max(u_input.b, u_input.b)), u_input.a.zx), abs(-u_input.c.x), arg_1.a, max(vec4<i32>(max(~(-8061i), var_4.a.b), select(arg_0.x, ~(-1i), true), 2147483647i, arg_1.a.b), vec4<i32>(37414i, 2147483647i, _wgslsmith_mod_i32(countOneBits(var_0.b), var_4.a.b ^ var_0.b), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_4.a.b, var_4.a.b), _wgslsmith_add_i32(arg_0.x, var_4.a.b)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_i32(-u_input.d, u_input.c);
    var_0 = vec3<i32>(var_0.x, -2147483647i, ~0i);
    var_0 = u_input.c;
    var var_1 = !arg_1;
    let var_2 = _wgslsmith_clamp_u32(u_input.a.x, ~(~arg_0.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 48800u)), arg_0.xx)) & arg_0.x;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1730f - 355f), arg_2.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * 1323f))), 1i >> (_wgslsmith_mult_u32(var_2, _wgslsmith_mult_u32(arg_0.x, reverseBits(31672u))) % 32u), all(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.a.x), u_input.a.x, u_input.b), select(u_input.a >> (vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.b), true)), select(!vec4<bool>(true, true, any(vec2<bool>(true, true)), true), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, false)), true, true, all(vec3<bool>(false, false, true)))), true), func_4(_wgslsmith_sub_vec3_i32(abs(u_input.d), u_input.d >> (vec3<u32>(4294967295u, u_input.b, u_input.a.x) % vec3<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1()), ~u_input.d.x, false))));
    var_0 = Struct_1(var_0.a, _wgslsmith_div_i32(-var_0.b & _wgslsmith_mult_i32(1i, func_5(vec4<u32>(25365u, 4294967295u, 4294967295u, 23165u), vec4<bool>(true, true, true, false), Struct_1(var_0.a, u_input.d.x, true)).b), -8777i), var_0.c);
    let var_1 = !vec3<bool>(!(u_input.d.x != _wgslsmith_add_i32(-1i, var_0.b)), false, select(func_3(func_4(u_input.d, Struct_2(Struct_1(386f, var_0.b, false))), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 8161u))).x, var_0.c, any(select(vec4<bool>(var_0.c, var_0.c, false, var_0.c), vec4<bool>(true, var_0.c, var_0.c, var_0.c), true))));
    var var_2 = var_0.c;
    var_0 = Struct_1(var_0.a, u_input.c.x, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1618f, var_0.a))))));
}

