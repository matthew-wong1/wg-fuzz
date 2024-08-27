struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<u32>) -> vec2<i32> {
    let var_0 = arg_1.b.e.x;
    global0 = arg_1.b;
    var var_1 = !arg_1.d;
    let var_2 = !vec3<bool>(any(vec4<bool>(1408f <= arg_0, false, !var_1.x, all(vec4<bool>(var_1.x, true, global0.c.x, false)))), true, (all(global0.c) == true) && false);
    global0 = arg_1.a;
    return vec2<i32>(~46722i, ~u_input.b.x);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: i32) -> u32 {
    global0 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) >= arg_0, global0.c.x), global0.b, vec2<bool>(any(vec3<bool>(global0.c.x, global0.e.x, global0.e.x)), true), _wgslsmith_dot_vec2_i32(~(func_3(-1101f, Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(0i, global0.d, global0.b.x, 1i), vec2<bool>(global0.c.x, global0.e.x), global0.b.x, vec2<bool>(global0.c.x, global0.a.x)), Struct_1(global0.a, vec4<i32>(arg_2, 1i, arg_2, 2147483647i), vec2<bool>(false, global0.e.x), arg_2, global0.a), Struct_1(global0.e, global0.b, vec2<bool>(false, global0.c.x), 2147483647i, vec2<bool>(false, global0.e.x)), vec4<bool>(global0.a.x, global0.c.x, global0.c.x, global0.c.x)), vec3<u32>(2391u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), u_input.a.yy)), vec2<i32>(_wgslsmith_div_i32(15172i, abs(u_input.a.x)), global0.d)), vec2<bool>(false, all(select(select(vec4<bool>(global0.c.x, true, global0.a.x, global0.a.x), vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(global0.c.x, global0.c.x, global0.e.x, global0.e.x)), select(vec4<bool>(false, true, global0.e.x, true), vec4<bool>(false, true, global0.e.x, false), false), !global0.a.x))));
    let var_0 = ~min(-min(select(arg_2, u_input.a.x, global0.e.x), -arg_2), countOneBits(-global0.d));
    var var_1 = all(select(!vec3<bool>(u_input.c > u_input.c, any(vec4<bool>(false, false, true, global0.e.x)), global0.e.x), !(!(!vec3<bool>(false, global0.a.x, false))), global0.c.x));
    var_1 = false;
    var var_2 = ~u_input.c;
    return _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(~(~u_input.c << (u_input.c % 32u)), max(u_input.c, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 1086u))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = ~select(select(~(vec3<i32>(u_input.a.x, u_input.b.x, 58272i) ^ vec3<i32>(arg_0, arg_0, 38523i)), -(~vec3<i32>(-2147483647i, arg_0, arg_0)), any(!vec3<bool>(global0.a.x, false, false))), reverseBits(~u_input.a), ~(u_input.b.x ^ 11860i) != _wgslsmith_div_i32(global0.b.x << (u_input.c % 32u), global0.b.x));
    var var_1 = Struct_2(Struct_1(!select(!vec2<bool>(global0.c.x, global0.e.x), vec2<bool>(global0.e.x, true), global0.e.x), ~(vec4<i32>(-1i) * -global0.b), global0.a, -952i, vec2<bool>(true, false)), Struct_1(vec2<bool>(global0.a.x, true), u_input.b, !global0.e, 29899i, vec2<bool>(true, !global0.c.x == global0.c.x)), Struct_1(!select(select(global0.e, vec2<bool>(global0.c.x, global0.a.x), global0.c.x), !global0.c, !vec2<bool>(global0.a.x, true)), u_input.b, select(global0.a, global0.a, false), reverseBits(-40615i), !global0.a), vec4<bool>(global0.c.x, !all(select(vec3<bool>(global0.c.x, true, true), vec3<bool>(true, global0.c.x, false), global0.a.x)), -2147483647i == (_wgslsmith_mod_i32(13272i, var_0.x) << (arg_1.x % 32u)), true));
    var var_2 = ~firstLeadingBit(~firstLeadingBit(vec4<u32>(arg_1.x, u_input.c, 2390u, u_input.c))) >> (countOneBits(reverseBits(vec4<u32>(arg_1.x, 35317u, ~u_input.c, _wgslsmith_mult_u32(arg_1.x, 1u)))) % vec4<u32>(32u));
    var_2 = abs(~(~(~vec4<u32>(31478u, 15589u, 17400u, arg_1.x)))) ^ ~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(20202u, 4294967295u, 0u, 36935u), vec4<u32>(1u, arg_1.x, 78134u, arg_1.x)) << (~vec4<u32>(0u, 19525u, 4294967295u, 32890u) % vec4<u32>(32u))));
    return Struct_1(vec2<bool>(true & (true || global0.a.x), var_1.b.e.x), ~(~countOneBits(vec4<i32>(2147483647i, u_input.b.x, -1i, 0i))), global0.c, -30553i, vec2<bool>(global0.a.x, false));
}

fn func_1() -> vec4<i32> {
    global0 = func_4(_wgslsmith_mult_i32(-global0.d, -31506i), abs(vec3<u32>(u_input.c, 12874u, 1u)) << (vec3<u32>(u_input.c, func_2(240f, _wgslsmith_f_op_vec2_f32(vec2<f32>(522f, -1000f) - vec2<f32>(-948f, 1498f)), ~(-1i)), u_input.c) % vec3<u32>(32u)));
    return ~(global0.b ^ (-u_input.b & global0.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(select(select(global0.b, vec4<i32>(0i, 52472i, global0.b.x, global0.b.x), vec4<bool>(false, global0.e.x, global0.a.x, false)), vec4<i32>(36036i, 77684i, -2147483647i, u_input.a.x), !vec4<bool>(global0.c.x, true, global0.e.x, global0.a.x)), u_input.b), (-global0.d ^ -u_input.b.x) ^ (0i & (global0.d >> (12141u % 32u))), (-42522i >> (~u_input.c % 32u)) ^ (firstTrailingBit(0i) >> (firstLeadingBit(45949u) % 32u))), vec3<i32>(~16122i, _wgslsmith_div_i32(global0.b.x, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(4104i, global0.d, u_input.a.x), u_input.b.xxy))), 8591i));
    global0 = Struct_1(vec2<bool>(!select(global0.e.x, true, true), true), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(~global0.b | vec4<i32>(36877i, -49006i, global0.b.x, 1i), abs(func_1())), firstTrailingBit(u_input.b)), select(global0.a, vec2<bool>(false, true), vec2<bool>(func_4(-2488i, _wgslsmith_mod_vec3_u32(vec3<u32>(102498u, u_input.c, u_input.c), vec3<u32>(1u, 28824u, 19193u))).e.x, true)), global0.d, vec2<bool>((reverseBits(-2147483647i) != func_3(399f, Struct_2(Struct_1(vec2<bool>(global0.c.x, global0.c.x), u_input.b, vec2<bool>(true, global0.e.x), u_input.b.x, vec2<bool>(false, global0.c.x)), Struct_1(vec2<bool>(global0.a.x, global0.e.x), global0.b, global0.e, u_input.b.x, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, global0.e.x), vec4<i32>(8443i, global0.d, -2147483647i, 13468i), global0.a, 13668i, vec2<bool>(true, false)), vec4<bool>(global0.c.x, false, global0.c.x, global0.a.x)), vec3<u32>(58818u, 45848u, u_input.c), vec3<u32>(u_input.c, u_input.c, 38851u)).x) & !global0.a.x, select(4294967295u, ~u_input.c, u_input.c > u_input.c) != _wgslsmith_div_u32(u_input.c, u_input.c & 4294967295u)));
    let var_1 = func_4(9241i, vec3<u32>((~u_input.c ^ 81069u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 26345u, u_input.c), vec3<u32>(44128u, 15034u, u_input.c)) % 32u), u_input.c, 1u));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1095f, _wgslsmith_f_op_f32(-846f - _wgslsmith_f_op_f32(-738f * -1302f)), true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -349f) - _wgslsmith_f_op_f32(max(-695f, 566f))))))), _wgslsmith_f_op_f32(sign(-1100f)));
    global0 = var_1;
    var var_3 = Struct_2(var_1, func_4(~(_wgslsmith_mod_i32(39133i, global0.d) & u_input.a.x), _wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(0u, u_input.c, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(13916u, u_input.c, 45525u), vec3<u32>(u_input.c, 112478u, 6393u)) ^ vec3<u32>(9145u, u_input.c, u_input.c), vec3<u32>(73811u, abs(u_input.c), u_input.c))), Struct_1(!select(global0.a, func_4(global0.d, vec3<u32>(u_input.c, 4294967295u, u_input.c)).a, !var_1.e.x), -(vec4<i32>(-1i) * -u_input.b), vec2<bool>(global0.a.x, abs(global0.d) > _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(var_1.b.x, 0i, var_1.d, -2147483647i))), -u_input.b.x, !vec2<bool>(global0.c.x, !var_1.e.x)), vec4<bool>(var_2 >= _wgslsmith_f_op_f32(f32(-1f) * -561f), var_1.e.x, all(select(!vec3<bool>(var_1.e.x, true, true), select(vec3<bool>(false, global0.c.x, true), vec3<bool>(true, true, global0.c.x), true), true)), any(select(vec2<bool>(var_1.c.x, false), vec2<bool>(false, var_1.a.x), vec2<bool>(false, true))) & !global0.e.x));
    var_3 = Struct_2(func_4(-1i, ~abs(vec3<u32>(u_input.c, 1u, 0u))), Struct_1(var_1.a, select(_wgslsmith_add_vec4_i32(~global0.b, vec4<i32>(global0.d, -1i, var_0.x, u_input.a.x)), vec4<i32>(-1i) * -u_input.b, vec4<bool>(true, any(var_3.d.yyx), var_3.a.c.x, all(vec2<bool>(false, var_3.b.c.x)))), vec2<bool>(true, global0.e.x), var_1.b.x, func_4(var_0.x, ~(~vec3<u32>(u_input.c, 17162u, u_input.c))).a), Struct_1(var_1.e, vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 2147483647i), var_1.b.zxx) | 27569i, i32(-1i) * -2147483647i, ~(~var_0.x)), var_1.a, ~(-9458i), var_1.a), !var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_3.a.b, _wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(0i, abs(31911i), ~37783i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, var_1.d, -30795i), vec4<i32>(var_1.b.x, -1i, var_1.d, 0i)))), false));
}

