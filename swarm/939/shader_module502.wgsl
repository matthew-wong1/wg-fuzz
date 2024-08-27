struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = Struct_3(arg_2, _wgslsmith_sub_u32(arg_3 & (u_input.b & 4294967295u), 44263u), Struct_1(true, global0.c, vec3<bool>(false, all(!arg_2.b.wx), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) * _wgslsmith_f_op_f32(1340f + arg_2.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f))), vec2<f32>(1f, 1f)));
    var var_1 = vec3<i32>(firstLeadingBit(arg_2.d), 17309i, abs(2147483647i));
    var var_2 = true;
    return -415f;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(select(u_input.a.x, abs(global0.a), select(true, !(true || global0.b.x), true)), vec4<bool>(true, !(~global0.a < u_input.b), all(vec4<bool>(global0.b.x, any(global0.b.wy), global0.e >= global0.e, all(vec2<bool>(false, global0.b.x)))), all(vec4<bool>(any(vec3<bool>(false, global0.b.x, global0.b.x)), true, global0.b.x, any(vec2<bool>(global0.b.x, global0.b.x))))), global0.e, global0.d, _wgslsmith_f_op_f32(ceil(1143f)));
    global0 = Struct_2(~u_input.a.x, !global0.b, -1698f, global0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(-735f, 504f), _wgslsmith_f_op_f32(-global0.e)), _wgslsmith_f_op_f32(func_3(~global0.d, ~1u, Struct_2(u_input.b, vec4<bool>(false, global0.b.x, true, true), -1392f, 2677i, -818f), 34117u | global0.a))))));
    let var_0 = Struct_3(Struct_2(global0.a, global0.b, -899f, global0.d, _wgslsmith_f_op_f32(-global0.e)), 21099u, Struct_1(global0.b.x, -184f, global0.b.zwz, _wgslsmith_f_op_f32(1000f + global0.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.e, -751f))), vec2<f32>(global0.c, _wgslsmith_f_op_f32(-global0.e)))));
    global0 = var_0.a;
    let var_1 = select(global0.b, !vec4<bool>(!(global0.e == -927f), true, !var_0.c.a, true && all(var_0.c.c.xx)), true);
    return Struct_2(_wgslsmith_clamp_u32(42628u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a.a, 1u, 1u)), vec3<u32>(var_0.a.a, u_input.a.x, 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, 46544u, var_0.a.a), reverseBits(vec4<u32>(global0.a, 1u, 4294967295u, global0.a)))), reverseBits(14965u)), !var_0.a.b, 1653f, 18683i, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(-360f, -1281f), _wgslsmith_f_op_f32(var_0.c.b - -1387f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<i32>) -> f32 {
    global0 = func_2();
    let var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(-global0.d, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.d, -2147483647i, global0.d, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-13792i, -22864i, -15853i, global0.d), vec4<i32>(arg_3.x, arg_3.x, -1i, arg_3.x))), min(vec4<i32>(arg_3.x, global0.d, arg_1.a.d, arg_1.a.d), abs(vec4<i32>(arg_3.x, -85425i, 1i, 2147483647i))))), i32(-1i) * -2147483647i);
    var var_1 = vec4<bool>(1511u == (1u | select(~u_input.b, global0.a | 4294967295u, !arg_0)), arg_0, any(func_2().b.xz), true);
    let var_2 = select(arg_2.c.yx, vec2<bool>(select(true, !(!arg_2.c.x), arg_1.c.a), true), !(!arg_0));
    let var_3 = _wgslsmith_mod_vec2_u32(~(~(~min(vec2<u32>(u_input.b, 0u), u_input.a))), u_input.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(func_3(arg_1.a.d, 94125u, arg_1.a, 0u))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -920f));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = firstTrailingBit(_wgslsmith_dot_vec2_u32(select(~firstTrailingBit(vec2<u32>(1u, global0.a)), ~abs(arg_2.yy), select(select(vec2<bool>(false, global0.b.x), arg_0.c.yy, false), !vec2<bool>(arg_0.a, false), 184f == arg_0.d)), arg_2.wy));
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(14937i, countOneBits(global0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-50237i, global0.d), vec2<i32>(41595i, global0.d)), -1i), arg_1, vec4<i32>(2147483647i, arg_1.x, ~_wgslsmith_sub_i32(countOneBits(-1i), arg_1.x), i32(-1i) * -24549i));
    let var_3 = func_2();
    let var_4 = _wgslsmith_add_vec2_i32(~(~(~abs(vec2<i32>(-7565i, -24230i)))), ~arg_1.xz);
    return Struct_3(Struct_2(56284u ^ _wgslsmith_div_u32(_wgslsmith_add_u32(0u, global0.a), 6884u), !(!(!global0.b)), -123f, -2147483647i, _wgslsmith_f_op_f32(floor(func_2().c))), 32087u ^ ~var_3.a, Struct_1(!(!select(true, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(918f, -1924f)))), global0.b.yxy, _wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.e.x, global0.c), vec2<f32>(-501f, arg_0.e.x))))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = arg_2.c;
    global0 = Struct_2(abs(arg_1.a), !(!func_2().b), _wgslsmith_f_op_f32(trunc(-484f)), -2147483647i, arg_2.c.d);
    let var_1 = Struct_1(arg_1.d == -45342i, 2565f, arg_2.c.c, _wgslsmith_f_op_f32(abs(arg_1.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.e))));
    global0 = Struct_2(arg_1.a, global0.b, 1058f, _wgslsmith_clamp_i32(-1i, i32(-1i) * -global0.d, -14976i), arg_1.e);
    var var_2 = func_4(Struct_1(!(_wgslsmith_f_op_f32(284f - 795f) >= _wgslsmith_f_op_f32(arg_1.c * arg_2.a.e)), global0.c, func_4(Struct_1(any(vec3<bool>(var_0.a, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -382f), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(arg_2.a.c * arg_2.a.e), var_1.e), select(_wgslsmith_div_vec4_i32(vec4<i32>(global0.d, 2228i, 0i, -33977i), vec4<i32>(arg_2.a.d, arg_1.d, -11719i, arg_2.a.d)), ~vec4<i32>(-6698i, arg_2.a.d, 6407i, global0.d), false), firstTrailingBit(min(vec4<u32>(4294967295u, 11654u, arg_0.x, global0.a), vec4<u32>(global0.a, u_input.a.x, 0u, arg_0.x)))).a.b.wyx, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.c)) - _wgslsmith_f_op_f32(392f - global0.e)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.c.e + vec2<f32>(-1347f, -536f)))), select(abs(~vec4<i32>(29311i, arg_2.a.d, global0.d, global0.d)), ~vec4<i32>(firstTrailingBit(2147483647i), _wgslsmith_add_i32(2147483647i, -2147483647i), arg_2.a.d, ~22614i), arg_1.b.x == true), vec4<u32>(arg_0.x, arg_2.b, ~14055u, ~func_4(func_4(Struct_1(arg_1.b.x, var_0.b, vec3<bool>(true, arg_2.c.c.x, false), 358f, arg_2.c.e), vec4<i32>(arg_2.a.d, global0.d, 16996i, 1190i), vec4<u32>(arg_2.a.a, 20258u, arg_2.b, global0.a)).c, vec4<i32>(arg_2.a.d, 0i, global0.d, -12929i) & vec4<i32>(arg_2.a.d, 2147483647i, global0.d, arg_2.a.d), min(vec4<u32>(u_input.b, arg_2.b, 0u, 1u), vec4<u32>(arg_0.x, u_input.a.x, 0u, u_input.b))).b)).c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(u_input.a, Struct_2(1u, vec4<bool>(all(!global0.b.zx), global0.b.x, !any(vec3<bool>(global0.b.x, true, global0.b.x)), true), _wgslsmith_f_op_f32(-global0.c), global0.d, -907f), func_4(Struct_1(global0.b.x, -1105f, global0.b.xzw, _wgslsmith_f_op_f32(sign(-1135f)), vec2<f32>(_wgslsmith_f_op_f32(func_1(false, Struct_3(Struct_2(u_input.b, vec4<bool>(false, global0.b.x, false, global0.b.x), -3083f, global0.d, global0.c), global0.a, Struct_1(false, global0.c, vec3<bool>(global0.b.x, global0.b.x, global0.b.x), 1209f, vec2<f32>(-1000f, global0.c))), Struct_1(false, global0.e, global0.b.zyz, 966f, vec2<f32>(1703f, global0.e)), vec2<i32>(global0.d, 2147483647i))), _wgslsmith_f_op_f32(global0.e + 549f))), ~vec4<i32>(min(global0.d, -17870i), 2147483647i, global0.d, -2147483647i), ~(vec4<u32>(global0.a, 0u, 0u, global0.a) >> (vec4<u32>(global0.a, 4294967295u, global0.a, 1u) % vec4<u32>(32u))) & ~vec4<u32>(global0.a, 1u, global0.a, 4294967295u)));
    let var_1 = func_4(func_4(func_4(Struct_1(!global0.b.x, 1633f, !vec3<bool>(global0.b.x, true, global0.b.x), 1000f, vec2<f32>(global0.e, global0.e)), countOneBits(abs(vec4<i32>(var_0.d, 0i, 2147483647i, -10631i))), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, 52490u, u_input.a.x, 49385u), vec4<u32>(1u, var_0.a, var_0.a, 24621u), vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u)), abs(vec4<u32>(global0.a, 20793u, 1u, 1u)))).c, -firstTrailingBit(vec4<i32>(45345i, 0i, 1i, 26706i) | vec4<i32>(30418i, -1i, 2147483647i, var_0.d)), vec4<u32>(u_input.a.x, 1u, _wgslsmith_mod_u32(func_2().a, min(global0.a, global0.a)), 1u)).c, countOneBits(select(vec4<i32>(-global0.d, global0.d, max(54606i, 80024i), -7785i), vec4<i32>(func_5(vec2<u32>(1u, global0.a), Struct_2(18335u, vec4<bool>(true, false, global0.b.x, var_0.b.x), 781f, global0.d, 1854f), Struct_3(Struct_2(global0.a, var_0.b, 116f, 23685i, var_0.c), 48286u, Struct_1(false, -1441f, vec3<bool>(var_0.b.x, global0.b.x, global0.b.x), global0.e, vec2<f32>(global0.e, -253f)))).d, ~global0.d, 2147483647i, abs(var_0.d)), var_0.b)), ~vec4<u32>(0u, ~u_input.a.x, reverseBits(global0.a) | global0.a, 0u)).c;
    global0 = func_4(Struct_1(!global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -539f), select(vec3<bool>(var_1.c.x, any(var_1.c.yz), false), vec3<bool>(true, global0.c >= var_1.d, all(global0.b)), !global0.b.x & select(false, var_0.b.x, var_1.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + var_1.d) + 434f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -418f) - global0.e)), vec2<f32>(global0.e, 693f)), firstTrailingBit(countOneBits(-vec4<i32>(var_0.d, global0.d, var_0.d, var_0.d))), max(vec4<u32>(_wgslsmith_dot_vec4_u32(max(vec4<u32>(14645u, global0.a, 90184u, 4294967295u), vec4<u32>(4294967295u, 20437u, global0.a, 0u)), vec4<u32>(1u, u_input.a.x, global0.a, var_0.a)), ~_wgslsmith_div_u32(58212u, u_input.b), func_2().a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.a, 42064u), vec3<u32>(0u, 0u, global0.a)) ^ ~0u), vec4<u32>(var_0.a, func_4(Struct_1(var_1.c.x, 694f, vec3<bool>(global0.b.x, false, true), 439f, vec2<f32>(-1645f, -806f)), -vec4<i32>(11766i, global0.d, global0.d, -39060i), vec4<u32>(4294967295u, 5809u, 0u, global0.a) << (vec4<u32>(13205u, 2385u, u_input.a.x, 4294967295u) % vec4<u32>(32u))).a.a, countOneBits(_wgslsmith_mult_u32(54615u, 0u)), global0.a))).a;
    let var_2 = var_0;
    global0 = var_0;
    global0 = Struct_2(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, 0u, var_0.a), vec3<u32>(u_input.a.x, var_0.a, 73047u))) & ~var_0.a, vec4<bool>(!var_1.c.x, true, all(vec2<bool>(var_2.b.x || var_2.b.x, true)), true), -435f, var_0.d, _wgslsmith_f_op_f32(936f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1827f - -193f)), _wgslsmith_f_op_f32(floor(202f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-454f)))));
}

