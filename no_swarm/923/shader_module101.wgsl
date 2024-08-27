struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -832f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<f32> {
    global1 = arg_0;
    var var_0 = ~firstLeadingBit(vec4<u32>(39882u, _wgslsmith_mod_u32(countOneBits(u_input.a), u_input.a), u_input.c.x, firstTrailingBit(u_input.a)));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(694f, arg_0) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-448f, 1403f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -242f) + vec2<f32>(arg_1.a, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1618f, 1300f) + vec2<f32>(-1047f, 945f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(760f, 1000f), vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2078f) + vec2<f32>(-167f, 1667f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(233f, arg_0))))))));
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_1(global0.b.x, u_input.c, !global0.c, !vec2<bool>(true && global0.c.x, all(!vec4<bool>(true, false, true, global0.d.x))), vec2<i32>(arg_0, global0.e.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-717f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1667f))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_3(286f, Struct_2(280f), vec4<bool>(var_0.d.x, var_0.c.x, var_0.d.x, global0.d.x))), _wgslsmith_f_op_vec2_f32(func_3(1145f, Struct_2(812f), vec4<bool>(var_0.c.x, global0.c.x, false, global0.c.x)))))))));
    global1 = _wgslsmith_f_op_f32(round(-247f));
    var var_2 = u_input.d >> (~_wgslsmith_add_vec4_u32(~global0.b | arg_1, ~(vec4<u32>(4294967295u, 1u, 39212u, global0.a) >> (vec4<u32>(arg_1.x, 18169u, 59028u, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_3 = 0i;
    return Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1305f, var_1.x)), var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>((max(-1i, u_input.d.x) & 0i) >> (0u % 32u), ~1i, -firstLeadingBit(global0.e.x)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.d.x | 2147483647i, -global0.e.x), countOneBits(global0.e.x) << (1u % 32u)), -(~(u_input.d.x >> (u_input.b % 32u))), 1i));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-954f, _wgslsmith_f_op_f32(min(arg_2.a, -1988f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_2.a, arg_0.a)))) - _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(min(1046f, _wgslsmith_f_op_f32(f32(-1f) * -623f))))));
    global1 = arg_0.a;
    let var_1 = Struct_1(7318u, vec4<u32>(firstLeadingBit(u_input.c.x), u_input.b, reverseBits(min(u_input.a, u_input.c.x)), firstTrailingBit(~_wgslsmith_mod_u32(u_input.a, global0.b.x))), vec2<bool>(select(~global0.b.x < ~17550u, global0.d.x, !(global0.d.x || true)), !global0.d.x), global0.c, global0.e);
    global0 = Struct_1(var_1.b.x, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c & _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.a, var_1.b.x, var_1.a, 5593u), vec4<u32>(1u, 1u, var_1.a, 0u), vec4<u32>(var_1.b.x, 66073u, u_input.a, global0.a)), select(global0.b, global0.b, vec4<bool>(false, false, arg_1, true))), firstTrailingBit(~vec4<u32>(58163u, 4465u, global0.b.x, 0u) >> (reverseBits(var_1.b) % vec4<u32>(32u)))), var_1.d, vec2<bool>(true, (_wgslsmith_mod_u32(u_input.a, u_input.c.x) >= 25490u) == true), firstTrailingBit(firstTrailingBit(~global0.e)));
    return arg_1;
}

fn func_1() -> vec2<f32> {
    let var_0 = any(vec3<bool>(!global0.c.x, all(vec3<bool>(!global0.d.x, false, global0.c.x)), global0.d.x));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-367f, -797f))) + 129f), _wgslsmith_f_op_f32(f32(-1f) * -1571f), func_4(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, -41700i), u_input.d.www), vec4<u32>(u_input.b, 69794u, 374u, u_input.a)), true, Struct_2(-209f)))));
    let var_1 = abs(~(~vec4<u32>(global0.a, global0.a, u_input.b, 0u))) | firstLeadingBit(reverseBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 15710u, u_input.a), global0.b)));
    let var_2 = vec4<i32>(abs(_wgslsmith_mod_i32(global0.e.x, _wgslsmith_add_i32(u_input.d.x >> (0u % 32u), -global0.e.x))), firstTrailingBit(abs(~u_input.d.x << (~0u % 32u))), -u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(22096i, 0i), 57528i, u_input.d.x, 25405i), reverseBits(-vec4<i32>(0i, 4040i, u_input.d.x, -37018i)), u_input.d), vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -31248i, global0.e.x, global0.e.x)));
    let var_3 = !vec2<bool>(var_0, any(vec2<bool>(true, true)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1124f, 1041f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1080f - 1169f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(651f)), _wgslsmith_f_op_f32(ceil(421f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-1569f - _wgslsmith_f_op_f32(f32(-1f) * -160f));
    let var_0 = _wgslsmith_f_op_vec2_f32(func_1());
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1647f + var_0.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + -249f))))));
    let var_2 = ~(-global0.e);
    global0 = Struct_1(4294967295u, select(vec4<u32>(38742u, select(~u_input.c.x, ~1u, true), u_input.a, ~abs(global0.a)), ~firstTrailingBit(u_input.c), !select(vec4<bool>(global0.c.x, global0.d.x, global0.d.x, global0.c.x), select(vec4<bool>(global0.d.x, true, global0.c.x, false), vec4<bool>(global0.d.x, global0.c.x, false, global0.d.x), vec4<bool>(global0.c.x, global0.c.x, false, true)), select(vec4<bool>(global0.d.x, false, global0.d.x, true), vec4<bool>(global0.c.x, true, true, true), vec4<bool>(false, global0.c.x, false, global0.d.x)))), select(global0.d, select(global0.c, vec2<bool>(true && global0.c.x, select(false, true, true)), vec2<bool>(!global0.c.x, global0.d.x || global0.d.x)), false), vec2<bool>(global0.c.x, any(vec3<bool>(true, any(vec3<bool>(global0.c.x, true, global0.c.x)), all(global0.c)))), u_input.d.yx);
    var var_3 = u_input.d;
    let var_4 = Struct_1(global0.a, vec4<u32>(abs(0u), 4294967295u, u_input.b, ~56875u), select(global0.c, vec2<bool>(true, func_4(func_2(global0.e.x, vec4<u32>(u_input.a, 76589u, 40271u, 0u)), all(vec3<bool>(global0.d.x, global0.c.x, true)), func_2(-2147483647i, global0.b))), global0.c), select(vec2<bool>(true, true), !global0.d, global0.d.x), global0.e);
    global0 = Struct_1(_wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(21057u, 79981u, 0u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, ~global0.a), global0.b.zyz)), ~(~vec4<u32>(var_4.b.x, var_4.a, u_input.c.x, ~u_input.a)), !select(select(var_4.d, global0.d, !vec2<bool>(true, global0.c.x)), var_4.d, !global0.c), vec2<bool>(true, all(select(!var_4.c, global0.d, vec2<bool>(false, var_4.c.x)))), vec2<i32>(-var_3.x, ~(~(-17381i)) ^ u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(var_3.wyz & var_3.wyz, var_3.zwz), var_3.x);
}

