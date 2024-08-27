struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_div_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(0u, 44605u), 1u, arg_0.x), ~firstLeadingBit(vec3<u32>(1u, u_input.c.x, 88302u)))));
    let var_1 = var_0.a;
    let var_2 = Struct_2(1f, Struct_1(any(!vec4<bool>(arg_1.a, arg_1.a, false, false))), u_input.d, arg_1, Struct_1(arg_1.a));
    var var_3 = Struct_4(var_2.a > 1314f, ~(firstTrailingBit(vec4<u32>(arg_0.x, u_input.b.x, 4294967295u, 0u)) << (vec4<u32>(arg_0.x, 1u, 0u, 64892u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, 4294967295u, 1u, 1u)), countOneBits(~vec4<u32>(20303u, 4294967295u, 4294967295u, u_input.c.x))) % vec4<u32>(32u)), var_2.c & _wgslsmith_dot_vec3_i32(max(select(vec3<i32>(var_2.c, 0i, var_2.c), vec3<i32>(var_2.c, -1i, -1i), var_2.d.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a, 12466i), vec3<i32>(-2147483647i, u_input.d, var_2.c))), -(vec3<i32>(-14773i, var_2.c, u_input.a) ^ vec3<i32>(var_2.c, var_2.c, -1i))), Struct_1(all(select(select(vec3<bool>(var_2.e.a, var_2.b.a, true), vec3<bool>(arg_1.a, false, var_2.b.a), true), vec3<bool>(true, true, true), select(vec3<bool>(true, arg_1.a, true), vec3<bool>(true, var_2.d.a, true), true)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f - 123f)), var_2.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-46473i, u_input.d, var_2.c, 36452i), vec4<i32>(0i, var_2.c, u_input.d, u_input.d)), -32544i), Struct_1(all(vec4<bool>(var_2.e.a, var_2.b.a, arg_1.a, false))), Struct_1(var_2.b.a)));
    var_3 = Struct_4(arg_1.a, ~select(select(countOneBits(var_3.b), _wgslsmith_mult_vec4_u32(var_3.b, var_3.b), true), reverseBits(var_3.b), arg_1.a), -2147483647i, var_3.e.d, Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-320f, var_3.e.a, false)), -803f)))), Struct_1(any(vec2<bool>(true, var_3.d.a)) & (var_2.c < var_3.e.c)), ~firstLeadingBit(1i), Struct_1(!arg_1.a), Struct_1(!(!arg_1.a))));
    return vec4<bool>((var_1 != firstLeadingBit(max(4294967295u, 14222u))) | all(select(select(vec2<bool>(true, false), vec2<bool>(var_2.b.a, false), vec2<bool>(var_2.d.a, var_2.d.a)), !vec2<bool>(false, var_2.b.a), any(vec3<bool>(true, false, arg_1.a)))), var_3.a == !any(vec4<bool>(false, arg_1.a, true, var_3.e.b.a)), var_2.d.a, var_3.d.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_4 {
    return Struct_4(all(func_3(u_input.b, Struct_1(arg_1.x))), firstLeadingBit(~(~firstTrailingBit(vec4<u32>(0u, u_input.c.x, 30118u, 0u)))), _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), -u_input.d), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(2147483647i, u_input.d)) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 5030u), u_input.c.xx) % vec2<u32>(32u)), countOneBits(vec2<i32>(-1i, -88088i)))), Struct_1(any(vec2<bool>(!arg_1.x, true))), Struct_2(_wgslsmith_f_op_f32(floor(-1371f)), Struct_1(false), u_input.d, arg_0, Struct_1(true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4) -> vec4<u32> {
    return vec4<u32>(0u, firstTrailingBit(~reverseBits(arg_2.b.x)), 128210u, 14892u) | vec4<u32>(0u, u_input.b.x, ~0u, _wgslsmith_dot_vec2_u32(arg_2.b.wx, firstTrailingBit(arg_2.b.wy)));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> bool {
    var var_0 = Struct_4(all(vec2<bool>(true, true)) & true, ~func_4(select(false, true, false), Struct_1(true), func_2(Struct_1(false), vec2<bool>(true, false))) & vec4<u32>(u_input.c.x, u_input.c.x, 1u, ~u_input.c.x >> (0u % 32u)), _wgslsmith_mult_i32(10094i, 0i), func_2(func_2(func_2(func_2(Struct_1(false), vec2<bool>(false, true)).e.d, select(vec2<bool>(true, true), vec2<bool>(true, true), true)).d, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true)).d, !vec2<bool>(true, all(vec4<bool>(true, false, false, false)))).e.e, func_2(Struct_1(!func_3(u_input.b, Struct_1(false)).x), func_3(abs(u_input.c.yy), func_2(func_2(Struct_1(false), vec2<bool>(false, true)).d, vec2<bool>(true, true)).e.b).zw).e);
    let var_1 = !(!all(!(!vec3<bool>(false, false, var_0.d.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1999f, var_0.e.a, var_0.e.a, -177f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(541f, var_0.e.a, 769f, var_0.e.a))), vec4<f32>(var_0.e.a, -283f, -1780f, 656f))))));
    var_0 = func_2(var_0.d, vec2<bool>(false, var_1));
    var_0 = func_2(var_0.e.d, !func_3(var_0.b.zy, var_0.e.b).yx);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(1402f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-437f)) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 1765f), _wgslsmith_f_op_f32(-672f * 754f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(708f, -690f, false))))))));
    let var_1 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(vec3<bool>(false, false, false))), !vec2<bool>(u_input.b.x > u_input.c.x, true), !(!func_1(u_input.d, vec4<i32>(58351i, u_input.a, -30011i, -19781i)))), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(true, true, true)))), select(any(func_3(u_input.b, Struct_1(true)).zww), _wgslsmith_f_op_f32(sign(var_0)) < _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(var_0 * -373f)), -1008f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 942f)));
    let var_2 = 1000f;
    let var_3 = Struct_1(all(func_3(vec2<u32>(1u, 1u) << (u_input.c.yz % vec2<u32>(32u)), Struct_1(var_1.x))));
    let var_4 = var_3;
    var var_5 = var_0;
    var_5 = var_0;
    let var_6 = func_2(func_2(Struct_1(true), vec2<bool>(reverseBits(0u) >= func_2(Struct_1(var_4.a), var_1).b.x, 1i >= (u_input.a | 2147483647i))).d, var_1).e;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(~(~vec4<u32>(24382u, 1u, u_input.c.x, 9110u)), func_4(true, var_6.d, Struct_4(true, vec4<u32>(783u, u_input.b.x, 30240u, 0u), u_input.a, Struct_1(true), Struct_2(-2333f, var_6.d, u_input.a, Struct_1(var_1.x), Struct_1(var_3.a)))))), -504f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -260f) * _wgslsmith_f_op_f32(-186f * 217f)), var_6.a, _wgslsmith_f_op_f32(var_6.a * _wgslsmith_f_op_f32(619f + var_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_6.a), 1401f) - -1198f) * -305f));
}

