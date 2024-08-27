struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> vec2<u32> {
    let var_0 = Struct_1(!vec4<bool>(all(vec2<bool>(true, true)), (global0.x > arg_1.a) & true, false, (arg_2 <= -907f) != true));
    var var_1 = Struct_3(~global0.x, _wgslsmith_f_op_f32(arg_2 - -1180f), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(global0.x, arg_1.c), 1u), 1u)));
    global0 = ~(~(~vec2<u32>(_wgslsmith_add_u32(arg_1.a, 11174u), abs(var_1.c))));
    let var_2 = _wgslsmith_add_i32(61934i, select(max(-11588i, -42735i), 1i, false));
    var var_3 = ~4294967295u;
    return select(vec2<u32>(_wgslsmith_mult_u32(var_1.a, arg_1.c), 72404u) << ((vec2<u32>(4294967295u, _wgslsmith_mod_u32(arg_1.c, arg_1.a)) << (select(vec2<u32>(8095u, 77663u), abs(vec2<u32>(4294967295u, global0.x)), vec2<bool>(false, var_0.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(reverseBits(max(reverseBits(vec2<u32>(global0.x, 88967u)), ~vec2<u32>(1u, 0u))), ~vec2<u32>(1u, global0.x) & vec2<u32>(1u, ~8899u)), select(!select(vec2<bool>(var_0.a.x, true), !vec2<bool>(var_0.a.x, false), true), var_0.a.yw, var_0.a.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<u32> {
    global0 = firstLeadingBit(~vec2<u32>(arg_2.x, _wgslsmith_mult_u32(~arg_2.x, _wgslsmith_sub_u32(4294967295u, 0u))));
    global0 = ~arg_2.xz;
    let var_0 = _wgslsmith_add_vec4_i32(~(~abs(vec4<i32>(2147483647i, 11358i, -2362i, arg_0.x)) << (vec4<u32>(34207u, 1u >> (arg_2.x % 32u), ~24703u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1309i, -61314i, -39169i, arg_0.x), -vec4<i32>(arg_0.x, 23958i, arg_0.x, arg_0.x)), ~(-vec4<i32>(0i, u_input.a, 62612i, 2147483647i)), vec4<i32>(-2147483647i, u_input.a, firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(u_input.a, arg_0.x)))) ^ (~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 8695i, u_input.a, u_input.a), vec4<i32>(arg_0.x, -47525i, -21838i, 41603i)) << (select(arg_2, _wgslsmith_clamp_vec4_u32(arg_2, vec4<u32>(arg_2.x, global0.x, global0.x, 1u), vec4<u32>(global0.x, global0.x, 46587u, 0u)), !arg_1.a.x) % vec4<u32>(32u))));
    let var_1 = arg_2.x | _wgslsmith_add_u32(33044u, global0.x);
    global0 = _wgslsmith_div_vec2_u32(~(vec2<u32>(3520u | global0.x, ~0u) >> (min(arg_2.zw, ~arg_2.ww) % vec2<u32>(32u))), ~abs(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.x), vec2<i32>(u_input.a, 27838i)), Struct_3(28713u, -1000f, 50541u), _wgslsmith_f_op_f32(1351f * -554f))));
    return ~vec2<u32>(~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global0.x, 0u), func_3(29940i, Struct_3(4294967295u, 1514f, global0.x), 207f).x, global0.x, var_1), arg_2));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global0 = _wgslsmith_clamp_vec2_u32(~(~firstLeadingBit(vec2<u32>(global0.x, 1u))), ~select(vec2<u32>(1u, global0.x | global0.x), vec2<u32>(4294967295u << (0u % 32u), 59838u), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), ~abs(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, global0.x), func_2(vec3<i32>(0i, -2147483647i, 1i), Struct_1(vec4<bool>(true, false, true, false)), vec4<u32>(global0.x, 0u, global0.x, global0.x), Struct_1(vec4<bool>(false, false, false, true))))));
    var var_0 = Struct_2(Struct_1(vec4<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), -287f > _wgslsmith_f_op_f32(exp2(arg_0.x)), false, true)), select(vec3<bool>(select(true, false, false), !any(vec4<bool>(false, false, false, true)), select(true, true, arg_0.x != arg_0.x)), vec3<bool>(all(vec4<bool>(false, true, true, true)), u_input.a > (u_input.a ^ 14088i), true && any(vec4<bool>(false, false, true, false))), all(vec3<bool>(all(vec2<bool>(true, true)), true, true))), -102f);
    global0 = vec2<u32>(global0.x, 74782u);
    let var_1 = u_input.a >> (_wgslsmith_sub_u32(48190u, 1u) % 32u);
    let var_2 = select(~reverseBits(countOneBits(max(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(25256i, -1i, 2147483647i, u_input.a)))), vec4<i32>(var_1, ~u_input.a, 26959i, _wgslsmith_clamp_i32(u_input.a, var_1, u_input.a) | -u_input.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global0.x, ~global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(111764u, global0.x), vec2<u32>(27039u, global0.x)), 47272u), vec4<u32>(_wgslsmith_mod_u32(0u, 24210u), _wgslsmith_mod_u32(53475u, 39004u), ~4294967295u, global0.x)) % vec4<u32>(32u)), select(!var_0.a.a, var_0.a.a, var_0.a.a));
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-192f, _wgslsmith_div_f32(-1000f, 995f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-206f, -2453f), vec2<f32>(-146f, -581f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1015f, 2218f)) - vec2<f32>(-240f, 1f))) + vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(581f, -1393f))), -1100f));
    global0 = vec2<u32>(global0.x, countOneBits(global0.x));
    var var_1 = func_1(vec3<f32>(1000f, 446f, -1404f));
    let var_2 = ~_wgslsmith_mult_i32(-62826i, ~min(-41707i, u_input.a));
    global0 = ((select(vec2<u32>(global0.x, global0.x) >> (vec2<u32>(global0.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(23697u, 31297u) ^ vec2<u32>(global0.x, global0.x), false) >> (select(func_3(-1i, Struct_3(74719u, var_0.x, global0.x), var_0.x), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)), select(false, arg_0.a.x, var_1.a.x)) % vec2<u32>(32u))) << (vec2<u32>(func_3(countOneBits(-28655i), Struct_3(global0.x, -1000f, 1u), _wgslsmith_f_op_f32(-var_0.x)).x, 21964u) % vec2<u32>(32u))) & vec2<u32>(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(60077u, global0.x), vec2<u32>(global0.x, global0.x))), 75663u);
    return _wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x >> (1u % 32u)), ~vec2<u32>(global0.x, 10291u)) & min(_wgslsmith_add_vec2_u32(abs(~vec2<u32>(global0.x, 0u)), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 10140u) ^ vec2<u32>(global0.x, 0u), ~vec2<u32>(global0.x, global0.x))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, global0.x), ~(vec2<u32>(41351u, 1u) | vec2<u32>(global0.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(vec3<f32>(-1381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f - 631f) * _wgslsmith_f_op_f32(2227f - 528f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + 139f)))));
    let var_0 = Struct_2(Struct_1(vec4<bool>(true, true, false, _wgslsmith_f_op_f32(-204f + -574f) <= _wgslsmith_f_op_f32(select(-1818f, 918f, true)))), vec3<bool>(select(true, false, true), all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(768f - 1f) + _wgslsmith_f_op_f32(-697f - _wgslsmith_f_op_f32(f32(-1f) * -1296f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.c * var_0.c), vec2<u32>(~(~_wgslsmith_mult_u32(2757u, 30863u)), global0.x));
}

