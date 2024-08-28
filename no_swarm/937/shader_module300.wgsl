struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    global0 = 29010i;
    let var_0 = ~vec3<u32>(1u | u_input.a, ~u_input.a, 0u);
    let var_1 = u_input.b;
    var var_2 = Struct_3(Struct_2(!(_wgslsmith_sub_i32(var_1, -4761i) != ~u_input.b), u_input.b, Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-362f, -213f))), ~vec4<u32>(u_input.a, u_input.a, 1u, var_0.x) >> (~vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x) % vec4<u32>(32u))), Struct_1(vec2<f32>(150f, _wgslsmith_f_op_f32(1839f + -1066f)), vec4<u32>(u_input.a | 48299u, max(var_0.x, var_0.x), ~0u, ~u_input.a))), Struct_2(false, -17832i, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(1191f, 704f)), -1946f), ~(~vec4<u32>(4294967295u, 0u, 0u, 79878u))), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(407f, 145f), vec2<f32>(-861f, -936f), select(false, true, true))), vec4<u32>(select(1u, 57818u, false), u_input.a, abs(50845u), _wgslsmith_sub_u32(4294967295u, 27248u)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(120f, 1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1122f, 1172f), vec2<f32>(-202f, 132f)))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0.x, 354u, u_input.a) << (vec4<u32>(u_input.a, var_0.x, 51217u, var_0.x) % vec4<u32>(32u)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(45619u, u_input.a, u_input.a, var_0.x), vec4<u32>(1u, u_input.a, 0u, u_input.a))))));
    let var_3 = 87857u;
    return _wgslsmith_dot_vec4_i32(min(_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, 1i, var_2.b.b, var_1) >> (~var_2.b.c.b % vec4<u32>(32u)), vec4<i32>(min(var_2.b.b, -61509i), abs(var_1), min(u_input.b, var_1), u_input.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_2.a.b, u_input.b, var_1, -2147483647i), vec4<i32>(-1i, u_input.b, var_1, 48188i), vec4<bool>(var_2.a.a, var_2.a.a, false, true)), vec4<i32>(3265i, -2122i, u_input.b, 1183i) >> (vec4<u32>(var_3, 1u, u_input.a, 1u) % vec4<u32>(32u))), ~var_1, _wgslsmith_mod_i32(18510i, var_1), -1i)), countOneBits(vec4<i32>(-1i, var_2.a.b, var_2.b.b, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-27938i, -9150i, -2147483647i), vec3<i32>(2147483647i, var_1, u_input.b)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -46195i, -67604i), vec3<i32>(1i, 10921i, -7404i))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec4<bool> {
    global0 = select(-abs(-1i), -func_3(), true);
    global0 = _wgslsmith_sub_i32(-max(~(~u_input.b), firstLeadingBit(-1i)), u_input.b);
    let var_0 = func_3();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + arg_1), _wgslsmith_f_op_f32(arg_1 * -748f))), vec4<u32>(~reverseBits(_wgslsmith_mod_u32(arg_0.x, 1u)), u_input.a, u_input.a, (max(arg_0.x, u_input.a) ^ 1u) >> (select(countOneBits(27764u), arg_0.x, any(vec2<bool>(true, false))) % 32u)));
    var var_2 = vec2<bool>(!(!(arg_0.x >= 4294967295u) || (u_input.a <= _wgslsmith_dot_vec3_u32(var_1.b.xyy, var_1.b.wxw))), false);
    return select(select(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(false, false, true, var_2.x), vec4<bool>(var_2.x, true, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false)), select(vec4<bool>(var_2.x | var_2.x, var_1.a.x <= arg_1, false, u_input.b <= var_0), vec4<bool>(true, any(vec2<bool>(var_2.x, true)), true, var_2.x), select(!vec4<bool>(var_2.x, false, false, false), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x && var_2.x)), vec4<bool>(true, true, select(all(vec3<bool>(var_2.x, false, var_2.x)), select(var_2.x, var_2.x, var_2.x), true & var_2.x), var_2.x)), vec4<bool>(select(!(!var_2.x), !(!var_2.x), true), true, all(select(vec3<bool>(true, true, var_2.x), !vec3<bool>(var_2.x, false, false), any(vec3<bool>(var_2.x, var_2.x, var_2.x)))), var_2.x), true);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(arg_1.a, true), any(!select(select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, arg_1.a, arg_1.a)), select(vec3<bool>(arg_1.a, false, arg_1.a), vec3<bool>(arg_1.a, false, true), arg_1.a), !arg_1.a)));
    var var_1 = !func_2(vec2<u32>(arg_1.d.b.x, u_input.a), _wgslsmith_f_op_f32(arg_1.c.a.x * arg_1.d.a.x));
    var_0 = select(vec2<bool>(var_1.x, u_input.a >= ~firstTrailingBit(u_input.a)), vec2<bool>(any(var_1.zwx), !var_0.x), false);
    var_1 = func_2(arg_1.c.b.xz, -2177f);
    global0 = _wgslsmith_clamp_i32(-22890i, _wgslsmith_mult_i32(firstTrailingBit(arg_1.b), _wgslsmith_mult_i32(countOneBits(1222i ^ arg_1.b), _wgslsmith_add_i32(u_input.b, ~(-1i)))), firstTrailingBit(9229i));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-217f, -702f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-171f)), 118f) * vec2<f32>(arg_1.c.a.x, arg_1.d.a.x))), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.d.b.x, arg_1.d.b.x & 3678u, _wgslsmith_div_u32(~arg_0.x, _wgslsmith_mult_u32(11151u, u_input.a)), ~(~0u)), reverseBits(~(~vec4<u32>(arg_1.d.b.x, arg_0.x, arg_0.x, 60667u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> i32 {
    let var_0 = vec4<bool>(arg_1.b.a, all(vec3<bool>(!arg_1.b.a, arg_1.a.a, true)), !any(select(vec4<bool>(false, arg_1.b.a, arg_1.b.a, false), !vec4<bool>(arg_1.b.a, true, false, true), !vec4<bool>(true, false, arg_1.a.a, arg_1.b.a))), !(func_2(~arg_1.a.d.b.zy, arg_1.c.a.x).x && all(vec2<bool>(true, arg_1.b.a))));
    var var_1 = true;
    var var_2 = vec3<u32>(~u_input.a, arg_1.b.d.b.x, firstLeadingBit(countOneBits(~arg_0.b.x)));
    var_1 = !(any(func_2(_wgslsmith_sub_vec2_u32(var_2.zy, var_2.yy), arg_0.a.x)) & !(u_input.b <= ~arg_1.b.b));
    global0 = u_input.b;
    return _wgslsmith_mod_i32(firstLeadingBit(reverseBits(19722i)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 18964i;
    global0 = ~(-(~func_4(func_1(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(true, 2147483647i, Struct_1(vec2<f32>(-423f, 120f), vec4<u32>(57493u, 0u, u_input.a, 4294967295u)), Struct_1(vec2<f32>(-946f, -757f), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u)))), Struct_3(Struct_2(true, -1i, Struct_1(vec2<f32>(646f, 1000f), vec4<u32>(48418u, u_input.a, u_input.a, 40593u)), Struct_1(vec2<f32>(-860f, -358f), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), Struct_2(true, u_input.b, Struct_1(vec2<f32>(-1315f, -179f), vec4<u32>(u_input.a, 64139u, u_input.a, 4294967295u)), Struct_1(vec2<f32>(1257f, 1353f), vec4<u32>(u_input.a, u_input.a, 39247u, 4294967295u))), Struct_1(vec2<f32>(-1091f, -1245f), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))))));
    global0 = u_input.b;
    var var_0 = func_2(vec2<u32>(0u, 1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f), _wgslsmith_f_op_f32(min(-325f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1131f + -120f), -940f))))).wxz;
    global0 = 0i & ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, -673i), vec2<i32>(-23633i, 3494i) & vec2<i32>(-9590i, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(86i, u_input.b) ^ vec2<i32>(0i, u_input.b), abs(vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(-2147483647i, u_input.b)));
    let var_1 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, u_input.b, u_input.b)), reverseBits(vec3<i32>(_wgslsmith_clamp_i32(1i, 6330i, func_4(Struct_1(vec2<f32>(1246f, -533f), vec4<u32>(u_input.a, 4294967295u, u_input.a, 48780u)), Struct_3(Struct_2(var_0.x, 1i, Struct_1(vec2<f32>(459f, 1000f), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)), Struct_1(vec2<f32>(1093f, -648f), vec4<u32>(36735u, u_input.a, 4294967295u, u_input.a))), Struct_2(false, u_input.b, Struct_1(vec2<f32>(-399f, -200f), vec4<u32>(1u, 4294967295u, u_input.a, 49501u)), Struct_1(vec2<f32>(733f, 832f), vec4<u32>(u_input.a, 68555u, 0u, 4356u))), Struct_1(vec2<f32>(537f, -1038f), vec4<u32>(1u, u_input.a, 4294967295u, 44867u))))), -34166i, _wgslsmith_div_i32(u_input.b & u_input.b, select(u_input.b, 1i, var_0.x)))));
    var_0 = !select(!(!(!vec3<bool>(true, var_0.x, var_0.x))), vec3<bool>(var_0.x, true, ~u_input.a >= (u_input.a >> (u_input.a % 32u))), !func_2(vec2<u32>(4294967295u, u_input.a), _wgslsmith_f_op_f32(1908f - -1493f)).xzw);
    global0 = _wgslsmith_div_i32(-max(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-1i, var_1), vec2<i32>(5094i, 18176i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_1), vec2<i32>(var_1, var_1), vec2<i32>(var_1, 15342i))), var_1), select(_wgslsmith_sub_i32(firstLeadingBit(3228i), _wgslsmith_add_i32(var_1, _wgslsmith_add_i32(9757i, 1774i))), var_1, (~9853u << (~u_input.a % 32u)) <= _wgslsmith_clamp_u32(~31959u, u_input.a, min(u_input.a, 5081u))));
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_div_i32(select(abs(var_2 & u_input.b), var_2, _wgslsmith_clamp_i32(0i, var_1, var_1) != _wgslsmith_mod_i32(var_1, u_input.b)), 0i));
}

