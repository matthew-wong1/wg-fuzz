struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    global0 = ~(~max(~select(vec2<i32>(u_input.b, global0.x), vec2<i32>(-1i, u_input.c), vec2<bool>(true, false)), max(vec2<i32>(-1i, u_input.b), vec2<i32>(global0.x, u_input.c)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(30453i, u_input.b), vec2<i32>(-2147483647i, global0.x))));
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~global0.x & 0i, -_wgslsmith_mod_i32(-1i, u_input.b)), 39050i, 1i) >> (0u % 32u);
    global1 = -1i;
    let var_1 = ~(max(u_input.a, vec2<u32>(countOneBits(0u), _wgslsmith_dot_vec2_u32(arg_0.d.xx, vec2<u32>(arg_0.b.x, arg_0.c.e)))) & vec2<u32>(firstTrailingBit(select(arg_0.d.x, arg_0.d.x, arg_0.e.d.x)), arg_0.c.e));
    let var_2 = Struct_3(u_input.a, arg_0.d.zwx, !vec4<bool>(false, true, true, all(vec4<bool>(false, arg_0.a, arg_0.a, false)) && any(vec3<bool>(arg_0.e.a, true, true))));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-494f, -490f, -1032f, -345f), vec4<f32>(587f, arg_0.c.b, arg_0.e.b, -738f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.b, -813f, arg_0.e.b, 1972f) + vec4<f32>(319f, 477f, 611f, 350f))), vec4<f32>(_wgslsmith_f_op_f32(-895f * -147f), _wgslsmith_div_f32(arg_0.c.b, 1672f), 1769f, -287f), vec4<bool>(var_2.c.x, all(vec4<bool>(true, arg_0.e.a, true, false)), true, false))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(991f)) + _wgslsmith_div_f32(1428f, arg_0.c.b)), _wgslsmith_f_op_f32(arg_0.e.b * arg_0.e.b), 937f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-arg_0.c.b))), all(var_2.c)))));
}

fn func_2() -> i32 {
    let var_0 = vec2<i32>(global0.x, ~global0.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(Struct_2((u_input.a.x == u_input.a.x) || false, u_input.a ^ vec2<u32>(30642u, u_input.a.x), Struct_1(any(vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -516f), vec2<bool>(true, true), vec2<bool>(false, false), 4294967295u), vec4<u32>(1u, reverseBits(0u), _wgslsmith_div_u32(u_input.a.x, 11222u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), Struct_1(true, _wgslsmith_f_op_f32(1160f + -2173f), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), ~u_input.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(-798f * -605f), _wgslsmith_f_op_f32(f32(-1f) * -1743f), -1408f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-794f)), _wgslsmith_div_f32(483f, 390f)))))));
    var var_2 = false;
    let var_3 = ~(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, 26884u)), ~0u), vec4<u32>(~u_input.a.x, max(4294967295u, u_input.a.x), min(0u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a))) >> (vec4<u32>(4294967295u, 16051u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)));
    var var_4 = select(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, true, true), true), !vec3<bool>(true, all(vec2<bool>(false, true)), true), !(!all(vec2<bool>(false, false)))), select(!vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(true, false, false), (~44203u >> (reverseBits(var_3.x) % 32u)) <= ~firstLeadingBit(139967u)), true);
    return max(_wgslsmith_add_i32(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, global0.x, var_0.x), vec4<i32>(-22125i, 1i, var_0.x, 0i))), _wgslsmith_mod_i32(20088i, firstLeadingBit(-var_0.x))), -56492i);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    global1 = func_2();
    global1 = _wgslsmith_mod_i32(11984i & -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, 0i), vec2<i32>(global0.x, global0.x)), vec2<i32>(2147483647i, global0.x)), global0.x);
    var var_0 = -2147483647i;
    var var_1 = global0.x & ~u_input.c;
    return Struct_1(false, _wgslsmith_f_op_vec4_f32(func_3(Struct_2(!select(arg_1.c.x, false, true), vec2<u32>(arg_0.b.x, _wgslsmith_div_u32(4294967295u, 50875u)), Struct_1(arg_0.c.x, 1f, arg_0.c.yy, vec2<bool>(true, false), ~0u), ~(vec4<u32>(15147u, u_input.a.x, arg_0.a.x, arg_0.b.x) & vec4<u32>(4294967295u, 4304u, 1u, u_input.a.x)), Struct_1(all(vec4<bool>(true, false, arg_1.c.x, true)), _wgslsmith_f_op_f32(f32(-1f) * -712f), arg_1.c.wx, arg_0.c.zy, ~arg_0.b.x)))).x, select(!select(arg_1.c.yw, arg_1.c.xx, 1i == global0.x), vec2<bool>(!(!arg_1.c.x), arg_0.c.x), vec2<bool>(true || arg_0.c.x, arg_1.c.x)), arg_0.c.wz, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(vec2<u32>((21838u | u_input.a.x) & u_input.a.x, (u_input.a.x ^ u_input.a.x) >> (0u % 32u)), vec3<u32>(u_input.a.x, ~0u, u_input.a.x >> (u_input.a.x % 32u)), vec4<bool>(true, true, true, true)), Struct_3(_wgslsmith_div_vec2_u32(firstTrailingBit(countOneBits(u_input.a)), vec2<u32>(13517u, _wgslsmith_dot_vec4_u32(vec4<u32>(44778u, 26427u, u_input.a.x, 63145u), vec4<u32>(10176u, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(46610u, 0u, 54279u), vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(0u, 0u, u_input.a.x) % vec3<u32>(32u))) << (reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 32507u), vec3<u32>(18756u, 1u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 9657u))) % vec3<u32>(32u)), vec4<bool>(true, true, true, true)));
    let var_1 = vec3<u32>(var_0.e & select(u_input.a.x, _wgslsmith_div_u32(reverseBits(u_input.a.x), 0u), var_0.a), ~(~max(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(var_0.e, 1u, 0u)), 35876u)), u_input.a.x & ~1992u);
    var var_2 = Struct_2(true, _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 4294967295u, 903u), var_1), ~_wgslsmith_mod_u32(var_0.e, 0u)), vec2<u32>(var_1.x & u_input.a.x, ~_wgslsmith_div_u32(var_1.x, var_1.x))), func_1(Struct_3(u_input.a, vec3<u32>(0u, ~0u, 0u), !select(vec4<bool>(var_0.c.x, false, false, var_0.a), vec4<bool>(var_0.a, var_0.d.x, false, var_0.d.x), vec4<bool>(var_0.c.x, var_0.d.x, var_0.d.x, false))), Struct_3(vec2<u32>(abs(13437u), var_1.x), vec3<u32>(~var_0.e, var_1.x, ~0u), select(!vec4<bool>(var_0.a, var_0.a, var_0.a, false), !vec4<bool>(var_0.a, false, var_0.c.x, var_0.a), vec4<bool>(var_0.c.x, true, var_0.c.x, false)))), _wgslsmith_div_vec4_u32(vec4<u32>(~1u, ~4294967295u >> (u_input.a.x % 32u), ~var_1.x, min(abs(var_0.e), ~var_1.x)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, var_1.x) >> (vec4<u32>(31584u, var_0.e, var_0.e, 9756u) % vec4<u32>(32u)), vec4<u32>(0u, var_1.x, 1u, 42382u), vec4<bool>(var_0.d.x, true, true, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 48970u, 26745u, var_1.x), vec4<u32>(4294967295u, 42350u, 0u, var_0.e), vec4<u32>(var_0.e, var_1.x, u_input.a.x, var_1.x)), ~vec4<u32>(var_0.e, var_0.e, u_input.a.x, 4294967295u) ^ firstLeadingBit(vec4<u32>(var_0.e, var_1.x, u_input.a.x, var_0.e)))), func_1(Struct_3(vec2<u32>(1u, _wgslsmith_sub_u32(1u, var_1.x)), var_1, select(vec4<bool>(false, var_0.c.x, var_0.c.x, false), vec4<bool>(true, false, true, var_0.d.x), !var_0.c.x)), Struct_3(firstTrailingBit(u_input.a), vec3<u32>(_wgslsmith_div_u32(10652u, 1u), ~var_0.e, var_1.x | var_0.e), !(!vec4<bool>(var_0.a, false, var_0.c.x, var_0.d.x)))));
    global0 = max(vec2<i32>(-1i) * -vec2<i32>(u_input.c, _wgslsmith_mult_i32(-14678i, global0.x)), ~vec2<i32>(-_wgslsmith_add_i32(global0.x, -25587i), min(71991i, -11705i)));
    let var_3 = vec3<f32>(-146f, 142f, _wgslsmith_f_op_f32(f32(-1f) * -978f));
    var_0 = func_1(Struct_3(vec2<u32>(_wgslsmith_sub_u32(abs(u_input.a.x), 0u), _wgslsmith_mult_u32(var_2.b.x, 4294967295u)), reverseBits(firstTrailingBit(~var_2.d.yzz)), vec4<bool>(false, any(vec3<bool>(true, true, true)), false, true)), Struct_3(var_2.d.xy, _wgslsmith_mod_vec3_u32(var_2.d.wyz, var_1), !select(vec4<bool>(var_0.d.x, false, true, var_0.a), !vec4<bool>(false, var_2.c.c.x, var_2.a, true), !vec4<bool>(var_0.c.x, true, true, true))));
    let var_4 = Struct_3(vec2<u32>(firstTrailingBit(12936u), _wgslsmith_sub_u32(~(~47886u), ~countOneBits(var_1.x))), max(max(select(~vec3<u32>(36359u, var_2.c.e, 1546u), select(vec3<u32>(var_0.e, var_0.e, u_input.a.x), var_1, false), -2147483647i >= global0.x), vec3<u32>(1u, var_2.e.e, abs(1u))), vec3<u32>(4294967295u, ~4294967295u >> (u_input.a.x % 32u), var_0.e)), !vec4<bool>(true, var_2.c.d.x, true, var_0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_clamp_vec2_u32(var_1.yx, var_2.d.zw, _wgslsmith_clamp_vec2_u32(var_1.yy, var_1.zy, _wgslsmith_div_vec2_u32(var_4.a, var_2.d.zw)))));
}

