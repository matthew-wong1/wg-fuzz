struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-825f + 696f) + -816f)));
    var_0 = 1046f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1581f);
    var_0 = -1000f;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(330f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2003f, 210f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -541f))), all(vec2<bool>(false, true)))));
    return select(vec2<u32>(6375u, u_input.c.x), vec2<u32>(63778u, reverseBits(~(46084u & u_input.b.x))), any(!(!(!vec2<bool>(arg_0.a, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    let var_0 = Struct_1(false, arg_3.b);
    var var_1 = Struct_1(all(select(select(!vec2<bool>(arg_0.a, false), select(vec2<bool>(true, true), vec2<bool>(true, var_0.a), false), arg_3.a), select(vec2<bool>(false, true), !vec2<bool>(true, arg_0.a), select(vec2<bool>(arg_3.a, var_0.a), vec2<bool>(arg_0.a, true), arg_0.a)), true)), _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(arg_2.x), 15585i, -_wgslsmith_dot_vec3_i32(arg_2.yww, var_0.b)), ~min(vec3<i32>(arg_3.b.x, arg_2.x, -1i), -vec3<i32>(4934i, -2147483647i, -48364i))));
    var_1 = arg_0;
    var var_2 = arg_2;
    let var_3 = -24813i;
    return ~12904u;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(all(vec2<bool>(true, true)) || true, vec3<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -57963i) >> (func_4(Struct_1(false, vec3<i32>(-32195i, u_input.a.x, u_input.a.x)), func_3(Struct_1(false, vec3<i32>(u_input.a.x, -43810i, u_input.a.x))), firstLeadingBit(vec4<i32>(u_input.a.x, -10828i, 12922i, 414i)), Struct_1(true, vec3<i32>(u_input.a.x, 25888i, u_input.a.x))) % 32u), -26472i));
    let var_1 = Struct_1(!any(!(!vec4<bool>(var_0.a, true, false, true))), vec3<i32>(47979i, 16700i, -4504i >> (u_input.d.x % 32u)));
    let var_2 = !(1u <= min(u_input.c.x, u_input.c.x));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(var_1.b.x, 2147483647i, var_1.b.x, 0i)), select(vec4<i32>(-1i) * -vec4<i32>(var_0.b.x, -4130i, var_1.b.x, var_0.b.x), -(vec4<i32>(1i, 24352i, -2147483647i, -32850i) << (vec4<u32>(u_input.d.x, u_input.d.x, 3009u, u_input.b.x) % vec4<u32>(32u))), !(!vec4<bool>(var_0.a, true, var_1.a, var_1.a)))), select(-26955i, u_input.a.x, var_0.b.x >= (_wgslsmith_dot_vec4_i32(vec4<i32>(527i, 2147483647i, u_input.a.x, -1i), vec4<i32>(-2147483647i, var_0.b.x, u_input.a.x, 1i)) | ~12882i)));
    let var_4 = Struct_1(!(var_2 & var_0.a), select(~_wgslsmith_mod_vec3_i32(var_1.b, var_0.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 22459i), var_1.b), ~vec3<i32>(var_1.b.x, u_input.a.x, -37108i), ~vec3<i32>(var_3, var_1.b.x, 0i)), false) ^ var_1.b);
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(u_input.a.x, u_input.a.x);
    var var_1 = Struct_1(arg_0.a, _wgslsmith_clamp_vec3_i32(func_2().b, _wgslsmith_add_vec3_i32(-abs(arg_0.b), ~vec3<i32>(var_0.x, var_0.x, arg_0.b.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(7389i, 1i, -65078i), vec3<i32>(1i, arg_0.b.x, var_0.x)) << (~u_input.c % vec3<u32>(32u))));
    var var_2 = u_input.d.x;
    let var_3 = 1u;
    let var_4 = func_2();
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>) -> Struct_1 {
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> u32 {
    var var_0 = func_6(func_5(func_2()), _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(u_input.b.x) << (_wgslsmith_div_u32(u_input.c.x, u_input.c.x) % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.d.x, u_input.d.x, 1u)), countOneBits(vec4<u32>(28205u, 26934u, u_input.b.x, u_input.b.x))), 21289u, max(_wgslsmith_clamp_u32(u_input.c.x, 1u, 25671u), u_input.c.x & 32367u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(36516u, u_input.c.x, u_input.b.x, 1u), vec4<u32>(3058u, u_input.c.x, u_input.c.x, 29666u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(63906u, 157u, 21326u, 45504u), vec4<u32>(u_input.d.x, 1u, 6457u, u_input.b.x)))), select(select(vec3<bool>(arg_1, arg_0.a, false), select(!vec3<bool>(false, arg_1, true), vec3<bool>(false, arg_0.a, arg_0.a), !arg_0.a), 5735i <= -u_input.a.x), !(!(!vec3<bool>(arg_0.a, false, arg_0.a))), false));
    return 49237u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(~(~firstTrailingBit(36234u)), ~(~_wgslsmith_add_u32(u_input.d.x, u_input.b.x)), 53571u, ~_wgslsmith_div_u32(3330u, ~u_input.c.x)), vec4<u32>(u_input.b.x, 0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, u_input.d.x, 1u), u_input.c, false), ~vec3<u32>(59340u, u_input.d.x, u_input.b.x)), min(_wgslsmith_dot_vec2_u32(u_input.b, u_input.c.xx), u_input.b.x)), _wgslsmith_mod_u32(func_1(Struct_1(false, vec3<i32>(0i, u_input.a.x, 21966i)), true), 16530u)));
    let var_1 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, func_6(Struct_1(true, vec3<i32>(-1i, -2147483647i, u_input.a.x)), vec4<u32>(0u, 124926u, 27853u, 6899u), vec3<bool>(true, false, true)).a, true), vec4<bool>(true, true, true, true)), vec4<bool>(u_input.a.x == _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a.x, 1i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)), false, false, all(vec4<bool>(false, false, true, false))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(u_input.c.x < u_input.c.x, false, func_5(Struct_1(true, vec3<i32>(u_input.a.x, 1i, u_input.a.x))).a, var_0.x < 1u), func_2().a)), !vec4<bool>(func_2().a, true, func_6(func_5(Struct_1(false, vec3<i32>(u_input.a.x, -2147483647i, -7099i))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.d.x, var_0.x, 14747u), vec4<u32>(u_input.b.x, var_0.x, 18578u, u_input.d.x)), vec3<bool>(true, true, true)).a, func_2().a), !vec4<bool>(true, max(u_input.c.x, 55880u) < 6777u, false, all(vec3<bool>(true, true, true))));
    let var_2 = var_1.x;
    let var_3 = func_5(Struct_1(!any(!var_1.yx), firstTrailingBit(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    var_0 = ~firstTrailingBit(vec4<u32>(var_0.x, ~(0u << (var_0.x % 32u)), ~(~44862u), _wgslsmith_dot_vec2_u32(u_input.d, countOneBits(var_0.wx))));
    let var_4 = true;
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~var_0.x & ~var_0.x), reverseBits(~(~2198u)), u_input.c.x, select(15103u, u_input.d.x, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-838f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1890f, 367f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(368f, -552f))) * _wgslsmith_f_op_f32(select(1388f, _wgslsmith_f_op_f32(abs(-1306f)), any(vec3<bool>(var_3.a, false, false)))))), vec2<u32>(~(~u_input.c.x) >> (var_0.x % 32u), u_input.b.x));
}

