struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global1: vec2<u32> = vec2<u32>(32077u, 0u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec4<i32> {
    global1 = countOneBits(_wgslsmith_clamp_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.a, global1.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.a, 38141u)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.x, global1.x, 11174u, u_input.a), abs(vec4<u32>(1u, 1u, u_input.a, 4294967295u))), global1.x), (_wgslsmith_mod_vec2_u32(vec2<u32>(22638u, global1.x), vec2<u32>(0u, global1.x)) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(u_input.a, u_input.a))) ^ _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.a)), abs(vec2<u32>(u_input.a, 58746u)))));
    global1 = ~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 83228u), vec2<u32>(global1.x, 1u)) | vec2<u32>(select(u_input.a, global1.x, false), u_input.a)));
    return _wgslsmith_clamp_vec4_i32(-(~vec4<i32>(firstLeadingBit(u_input.c.x), -u_input.b, u_input.b, abs(u_input.c.x))), vec4<i32>(u_input.d.x, i32(-1i) * -(~u_input.d.x), _wgslsmith_add_i32(-_wgslsmith_add_i32(u_input.c.x, u_input.b), _wgslsmith_dot_vec4_i32(min(vec4<i32>(-18851i, u_input.d.x, u_input.d.x, u_input.c.x), vec4<i32>(u_input.d.x, u_input.c.x, u_input.b, u_input.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, 0i, 1i, u_input.c.x), vec4<i32>(-2147483647i, u_input.b, u_input.c.x, 2147483647i), vec4<i32>(-2147483647i, u_input.c.x, u_input.d.x, 215i)))), ~select(_wgslsmith_div_i32(u_input.b, u_input.c.x), u_input.d.x | u_input.b, false)), ~vec4<i32>(_wgslsmith_mod_i32(u_input.b, select(u_input.b, u_input.d.x, false)), _wgslsmith_mod_i32(select(-1i, u_input.b, true), firstLeadingBit(-95984i)), -u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, 1i, -1i, u_input.b) ^ vec4<i32>(5248i, u_input.d.x, -45735i, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.d.x, u_input.b, u_input.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    global1 = vec2<u32>(_wgslsmith_div_u32(global1.x, _wgslsmith_mod_u32(firstLeadingBit(global1.x), max(4294967295u, ~4294967295u))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, arg_0.a.b.x, ~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.a.b.x), arg_0.a.b.zz)), abs(~vec4<u32>(u_input.a, global1.x, u_input.a, global1.x))), _wgslsmith_mod_u32(min(global1.x, arg_0.a.b.x), _wgslsmith_dot_vec2_u32(arg_0.a.b.yy, vec2<u32>(global1.x, global1.x) >> (arg_0.a.b.xz % vec2<u32>(32u))))));
    global1 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, global1.x) & ~vec2<u32>(18407u, u_input.a), vec2<u32>(~4294967295u, u_input.a)));
    var var_0 = 1u;
    return -38126i;
}

fn func_2(arg_0: bool, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(countOneBits(abs(u_input.b)), u_input.c.x, _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(-28544i, -2147483647i, u_input.b, u_input.c.x)), ~vec4<i32>(17013i, u_input.c.x, 0i, u_input.b)), -(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -54098i, u_input.c.x, u_input.b), vec4<i32>(u_input.c.x, u_input.d.x, -2147483647i, u_input.c.x)))), vec4<i32>(-2147483647i, -28540i, u_input.d.x, func_4(Struct_2(Struct_1(-1107f, vec4<u32>(u_input.a, 22734u, 0u, 10722u)), func_3()), select(!arg_1, vec4<bool>(arg_0, arg_1.x, global0.x, arg_1.x), !vec4<bool>(true, false, true, global0.x)))));
    var var_1 = vec4<i32>(i32(-1i) * -47124i, var_0.x, -max(-u_input.d.x, _wgslsmith_mult_i32(var_0.x, 26598i) & min(-2415i, 3561i)), _wgslsmith_clamp_i32(abs(-u_input.d.x), ~var_0.x, var_0.x));
    var var_2 = vec4<i32>(max(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.d.x, u_input.d.x, 0i), vec3<i32>(33777i, 10614i, -2147483647i) | var_1.wwy), -26692i), firstLeadingBit(~19564i), var_1.x, max(var_0.x, _wgslsmith_clamp_i32(23910i, _wgslsmith_mod_i32(u_input.c.x, -2147483647i), 21390i))) | abs(reverseBits(~vec4<i32>(var_0.x, var_0.x, u_input.c.x, 0i)) << (~(vec4<u32>(u_input.a, global1.x, 4294967295u, global1.x) ^ vec4<u32>(arg_2, arg_2, global1.x, 0u)) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1406f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -323f);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_2 {
    global0 = !(!vec4<bool>(true == !arg_1.x, true, !all(vec2<bool>(global0.x, true)), !all(arg_0)));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(787f, 137f)) + _wgslsmith_div_f32(1092f, -1075f)) - _wgslsmith_f_op_f32(f32(-1f) * -154f)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, global1.x), vec4<u32>(1u, global1.x, 1u, 56202u), vec4<u32>(u_input.a, global1.x, 20011u, u_input.a)))), select(abs(vec4<i32>(select(u_input.b, u_input.c.x, false), firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-4393i, u_input.d.x), u_input.d), _wgslsmith_mod_i32(u_input.d.x, u_input.b))), reverseBits(vec4<i32>(-1i) * -vec4<i32>(32353i, 45195i, 2147483647i, 0i)), any(vec2<bool>(true, true)) | true));
    var var_1 = ~4294967295u;
    var var_2 = _wgslsmith_f_op_f32(exp2(var_0.a.a));
    global0 = !(!select(select(vec4<bool>(true, false, arg_0.x, false), !vec4<bool>(arg_0.x, arg_0.x, global0.x, true), vec4<bool>(false, true, global0.x, true)), vec4<bool>(arg_0.x, arg_1.x, false, false), select(vec4<bool>(arg_1.x, global0.x, false, arg_0.x), vec4<bool>(true, arg_1.x, true, arg_0.x), arg_1.x)));
    return var_0;
}

fn func_1() -> u32 {
    var var_0 = func_5(select(global0.yz, vec2<bool>(_wgslsmith_f_op_f32(func_2(global0.x, vec4<bool>(false, global0.x, global0.x, true), 6123u)) > _wgslsmith_f_op_f32(step(-486f, 401f)), global0.x), !(!vec2<bool>(false, global0.x))), vec2<bool>(false, global0.x));
    var_0 = Struct_2(var_0.a, vec4<i32>(u_input.d.x, var_0.b.x, _wgslsmith_add_i32(min(u_input.b, func_4(Struct_2(Struct_1(-1518f, vec4<u32>(var_0.a.b.x, 1u, global1.x, global1.x)), vec4<i32>(26249i, var_0.b.x, 30576i, var_0.b.x)), vec4<bool>(false, global0.x, false, global0.x))), u_input.d.x ^ ~1i), -68716i));
    global1 = var_0.a.b.xx;
    let var_1 = all(select(!(!(!vec4<bool>(global0.x, global0.x, false, true))), select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true), true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), select(vec4<bool>(true, true, true, global0.x), vec4<bool>(false, true, false, global0.x), true), select(select(vec4<bool>(true, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), false), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, global0.x, false, global0.x))), global0.x));
    var var_2 = ~firstLeadingBit(-(var_0.b.x & -u_input.c.x));
    return var_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f + 771f)), ~vec4<u32>(~u_input.a, func_1(), global1.x, ~global1.x)), vec4<i32>(-u_input.c.x & _wgslsmith_div_i32(u_input.d.x, i32(-1i) * -2648i), _wgslsmith_mult_i32(-u_input.b, u_input.d.x), reverseBits(u_input.c.x), u_input.b << (min(global1.x, ~u_input.a) % 32u)));
    var var_1 = reverseBits(select(~(~(56407i << (var_0.a.b.x % 32u))), countOneBits(_wgslsmith_mod_i32(2147483647i, _wgslsmith_add_i32(var_0.b.x, u_input.c.x))), !(!global0.x || !global0.x)));
    let var_2 = global0.wz;
    let var_3 = vec3<f32>(func_5(vec2<bool>(true, all(global0.zw)), vec2<bool>(true, true)).a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.x, select(!vec4<bool>(false, var_2.x, var_2.x, global0.x), vec4<bool>(true, false, true, global0.x), vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_u32(var_0.a.b.yyz, select(vec3<u32>(u_input.a, 6238u, 0u), vec3<u32>(u_input.a, 1u, u_input.a), var_2.x)))) * 1f), _wgslsmith_f_op_f32(func_2(false, vec4<bool>(false, var_2.x, !any(vec4<bool>(false, var_2.x, true, global0.x)), all(!vec4<bool>(global0.x, global0.x, true, true))), _wgslsmith_add_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(var_0.a.b.wzz, var_0.a.b.wxz)), ~_wgslsmith_add_u32(u_input.a, 1u)))));
    var var_4 = func_5(global0.yz, select(global0.xy, vec2<bool>(true, true), true)).a.b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, vec4<i32>(-1i) * -firstTrailingBit(var_0.b), 4294967295u >> (_wgslsmith_mod_u32(~(4294967295u >> (u_input.a % 32u)), func_1()) % 32u));
}

