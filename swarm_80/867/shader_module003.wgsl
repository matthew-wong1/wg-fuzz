struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: u32) -> vec3<bool> {
    let var_0 = firstLeadingBit(arg_2.x);
    let var_1 = ~(~firstLeadingBit(select(select(vec3<u32>(1u, 83886u, 0u), vec3<u32>(arg_3, u_input.b, u_input.b), false), vec3<u32>(1u, 27357u, arg_3) | vec3<u32>(u_input.b, 2712u, 35977u), all(vec2<bool>(false, true)))));
    var var_2 = vec4<bool>(all(vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec4<bool>(true, true, true, true)))), false, any(select(vec4<bool>(all(vec2<bool>(false, true)), false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true))), all(vec4<bool>(true, true, true, true)))), true);
    var_2 = select(vec4<bool>(all(select(vec2<bool>(var_2.x, var_2.x), !var_2.yy, true)), var_2.x, true, !(!var_2.x)), vec4<bool>(all(!var_2.zy), ~_wgslsmith_mod_u32(u_input.b, var_1.x) > firstLeadingBit(~1u), true, all(var_2.zz)), false);
    let var_3 = select(select(var_2.wzz, var_2.zwz, select(!select(var_2.yxz, var_2.zyz, var_2.x), !(!var_2.wzx), var_2.x)), !(!var_2.wwx), var_2.xwz);
    return !select(var_3, vec3<bool>(var_0 != ~arg_1.x, _wgslsmith_clamp_u32(var_1.x, var_1.x, 4294967295u) != firstTrailingBit(79570u), any(!vec4<bool>(true, false, true, var_3.x))), var_3);
}

fn func_2() -> bool {
    var var_0 = ~u_input.a.x;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, -1163f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(918f - -130f), _wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(step(220f, -252f)))))), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, any(vec4<bool>(false, true, false, false))), true), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, u_input.c), ~1i) & (u_input.c << (4294967295u % 32u)), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 3723u, u_input.b, 0u), vec4<u32>(u_input.b, u_input.b, 1u, 4294967295u)), ~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), !select(vec3<bool>(false, true, false), func_3(u_input.a.xyw, vec2<i32>(u_input.a.x, -53383i), u_input.a.xyy, u_input.b), true)), select(!vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), false), vec4<bool>(select(true, select(true, true, true), select(false, true, false)), u_input.b <= ~43831u, false, true), true), max(1i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a.xw), u_input.a.x >> (~(~u_input.b) % 32u)));
    var var_2 = vec3<i32>(abs(u_input.c | -1i), i32(-1i) * -var_1.d, u_input.c);
    let var_3 = var_1;
    var_0 = 2147483647i;
    return var_3.c.x && all(vec2<bool>(true, true));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> vec4<u32> {
    var var_0 = select(!select(vec2<bool>(arg_0 >= 13749u, func_2()), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), vec2<bool>(false, false)), select(vec2<bool>(false, arg_2), !vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, arg_2), false))), func_3(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.x, max(u_input.a.x, 32026i), arg_1.x), min(vec3<i32>(1i, -26697i, 11742i), select(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, u_input.a.x, arg_1.x), vec3<bool>(arg_2, true, arg_2)))), vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), arg_1.zy), vec3<i32>(_wgslsmith_mult_i32(arg_1.x, arg_1.x), _wgslsmith_div_i32(-2147483647i, arg_1.x), 1i) >> (firstLeadingBit(~vec3<u32>(1507u, u_input.b, 0u)) % vec3<u32>(32u)), ~0u).yx, select(vec2<bool>(!any(vec2<bool>(true, arg_2)), arg_2), !(!select(vec2<bool>(true, true), vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2))), true));
    var var_1 = Struct_1(vec3<bool>(true, true, var_0.x), 1i, max(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(69020u, 1u, arg_0, arg_0), vec4<u32>(arg_0, 1u, u_input.b, u_input.b))), firstLeadingBit(min(vec4<u32>(64770u, 4294967295u, arg_0, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) ^ vec4<u32>(firstLeadingBit(4294967295u), select(arg_0, 11331u, arg_2), 19905u, ~0u)), vec3<bool>(select(true, true, !(!var_0.x)), -773f == _wgslsmith_f_op_f32(round(-236f)), !(!any(vec2<bool>(true, arg_2)))));
    let var_2 = 1138f;
    let var_3 = var_1.b;
    var var_4 = Struct_1(select(select(vec3<bool>(true, true, arg_2), var_1.d, var_1.a.x), select(select(select(vec3<bool>(var_1.d.x, false, true), var_1.a, var_1.d), select(var_1.a, vec3<bool>(var_0.x, var_1.d.x, true), var_1.a), true), !vec3<bool>(false, false, var_1.d.x), var_1.a), vec3<bool>(true, _wgslsmith_f_op_f32(var_2 - var_2) > _wgslsmith_f_op_f32(abs(-2112f)), true)), _wgslsmith_add_i32(~62622i, -9660i << (_wgslsmith_mult_u32(arg_0, ~4294967295u) % 32u)), ~(~vec4<u32>(_wgslsmith_add_u32(0u, var_1.c.x), 9672u, _wgslsmith_dot_vec4_u32(var_1.c, vec4<u32>(arg_0, u_input.b, 18061u, var_1.c.x)), ~u_input.b)), vec3<bool>(any(vec3<bool>(var_0.x, false, false)) & ((0u << (arg_0 % 32u)) > u_input.b), select(true, false, -38614i == u_input.a.x), any(select(select(vec4<bool>(var_1.d.x, arg_2, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_1.d.x, true, arg_2)), select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(true, var_1.d.x, var_1.a.x, var_1.a.x), vec4<bool>(false, false, false, var_1.d.x)), vec4<bool>(arg_2, var_1.d.x, var_0.x, var_1.a.x)))));
    return _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~var_1.c, ~var_1.c) & ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 60412u, 21652u), var_1.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, 66610u, u_input.b), vec4<u32>(arg_0, 132729u, 1u, 6244u), var_4.c)), vec4<u32>(88272u, _wgslsmith_dot_vec2_u32(abs(var_1.c.yz), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_4.c.x), vec2<u32>(u_input.b, 0u) ^ var_4.c.xw, _wgslsmith_div_vec2_u32(var_4.c.xx, var_1.c.xw))), min(52592u, ~var_1.c.x >> (4294967295u % 32u)), var_4.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, firstTrailingBit(~(~54877u)), _wgslsmith_div_u32(~select(38977u, 108563u, false), select(0u, u_input.b, any(vec2<bool>(false, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, select(1u, u_input.b, true)), select(vec2<u32>(0u, u_input.b), vec2<u32>(1u, 1u), vec2<bool>(true, true)))), _wgslsmith_clamp_vec4_u32(max(vec4<u32>(56161u, u_input.b, ~u_input.b, 1u), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 70069u, 1u))), _wgslsmith_div_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(u_input.b, 71158u, 24620u, 82376u))), func_1(u_input.b, u_input.a.ywz, true)), countOneBits(firstTrailingBit(vec4<u32>(101399u, 651u, 12505u, u_input.b)) ^ vec4<u32>(42191u, 0u, u_input.b, 160459u))));
    let x = u_input.a;
    s_output = StorageBuffer(-46272i);
}

