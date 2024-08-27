struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = ~4294967295u;
    let var_1 = arg_1.d;
    let var_2 = u_input.c.yzx;
    let var_3 = arg_1;
    var var_4 = reverseBits(4294967295u);
    return false;
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c ^ vec4<u32>(4294967295u, u_input.b.x, 65195u, 6451u), u_input.c | ~vec4<u32>(4294967295u, u_input.c.x, u_input.b.x, 27679u)), countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, 72204u, 110947u), u_input.c.zwy), vec3<u32>(4294967295u, 4294967295u, 1u))), abs(reverseBits(~60025u))), vec2<bool>(!(!arg_0), arg_0), vec2<u32>(97722u, firstTrailingBit(_wgslsmith_mod_u32(~u_input.c.x, 86867u | u_input.b.x))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-421f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f))), vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-541f * 437f), _wgslsmith_f_op_f32(max(-416f, -264f)))))), !vec4<bool>(func_1(421f, Struct_1(vec3<u32>(u_input.b.x, 10228u, 4294967295u), vec2<bool>(arg_0, false), vec2<u32>(u_input.b.x, u_input.d.x), vec2<f32>(200f, 854f), vec4<bool>(arg_0, arg_0, arg_0, arg_0))), true, false, select(arg_0, true, u_input.a.x > u_input.e)));
    let var_1 = select(vec3<bool>(false, true, true), var_0.e.wzw, true);
    let var_2 = Struct_1(min(~abs(vec3<u32>(u_input.c.x, 4294967295u, 0u)), vec3<u32>(u_input.b.x, 1u, 0u)) & _wgslsmith_add_vec3_u32(var_0.a >> (~vec3<u32>(1u, 0u, u_input.b.x) % vec3<u32>(32u)), var_0.a), select(vec2<bool>(u_input.e <= -1i, var_0.e.x), !select(var_0.b, vec2<bool>(true, true), var_0.e.zw), select(vec2<bool>(false, var_0.e.x), var_0.b, !var_1.x)), max(reverseBits(var_0.c), ~u_input.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d.x, var_0.d.x) * vec2<f32>(-1280f, 1395f)))) - _wgslsmith_f_op_vec2_f32(-var_0.d))), select(var_0.e, !vec4<bool>(arg_0, var_0.b.x, true, !arg_0), true));
    var_0 = var_2;
    let var_3 = u_input.b.x;
    return vec2<u32>(~4260u, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, 1u)), max(_wgslsmith_div_vec2_u32(var_0.c ^ vec2<u32>(u_input.d.x, u_input.c.x), var_0.a.xz), countOneBits(select(vec2<u32>(var_0.a.x, var_3), var_2.c, var_1.xz)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = arg_3.x;
    var var_1 = false;
    var var_2 = arg_2;
    let var_3 = Struct_1(~(~u_input.c.xzx), !select(vec2<bool>(true, !arg_2.b.x), arg_3.yy, select(vec2<bool>(arg_1, true), var_2.e.zy, true)), func_3(false), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.d, _wgslsmith_f_op_vec2_f32(-var_2.d), arg_3.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.d.x), arg_2.d.x))), select(!(!(!vec4<bool>(true, var_2.b.x, false, var_2.e.x))), vec4<bool>(false, (arg_2.e.x | true) || (31280i == u_input.e), all(arg_2.e), !any(arg_2.e)), select(!vec4<bool>(arg_2.b.x, arg_1, true, true), arg_2.e, vec4<bool>(false, true, func_1(-455f, Struct_1(vec3<u32>(23278u, 34689u, u_input.d.x), var_2.b, vec2<u32>(arg_2.a.x, 0u), var_2.d, vec4<bool>(arg_1, false, arg_3.x, false))), arg_3.x | true))));
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.d.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_3.d.x + var_3.d.x)))), _wgslsmith_f_op_f32(-var_2.d.x), firstTrailingBit(-arg_0.x) != ~(1i ^ arg_0.x))) != _wgslsmith_f_op_f32(step(1000f, 208f));
    return arg_2;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_mult_vec2_i32(u_input.a.wz, select(_wgslsmith_clamp_vec2_i32(-(vec2<i32>(1i, arg_0) ^ vec2<i32>(u_input.a.x, 19724i)), vec2<i32>(-1i) * -u_input.a.yw, _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(0i, arg_0)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.e), vec2<i32>(38255i, u_input.a.x)))), ~u_input.a.xw, arg_1));
    var var_1 = true;
    let var_2 = arg_2;
    var_1 = arg_1;
    var_1 = !all(vec4<bool>(arg_2.b.x, !var_2.b.x, true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -270f), var_2)));
    return vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) + _wgslsmith_f_op_f32(sign(arg_2.d.x)))))), -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var_0 = u_input.e;
    var var_1 = ~_wgslsmith_clamp_vec2_i32(u_input.a.zz >> (~reverseBits(u_input.c.yz) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(-43395i, -1i), u_input.a.xw, vec2<i32>(2147483647i, -30004i)) >> (u_input.b % vec2<u32>(32u)), ~(~(~u_input.a.xz)));
    var var_2 = Struct_1(~firstTrailingBit(vec3<u32>(1u, ~u_input.d.x, u_input.c.x)), vec2<bool>(true, true), _wgslsmith_add_vec2_u32(u_input.c.xw, ~(~max(u_input.c.xz, u_input.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1561f * -438f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-577f, 843f)) + _wgslsmith_div_f32(-1147f, -754f)))), select(vec4<bool>(true, func_1(_wgslsmith_f_op_f32(f32(-1f) * -718f), Struct_1(vec3<u32>(u_input.d.x, u_input.c.x, u_input.b.x), vec2<bool>(false, false), vec2<u32>(73519u, 0u), vec2<f32>(-887f, 789f), vec4<bool>(true, false, false, true))), false, false), vec4<bool>(true, _wgslsmith_mod_u32(64852u, 45168u) == _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), true, false), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))));
    let var_3 = Struct_1(u_input.c.zzz, var_2.b, var_2.c, _wgslsmith_div_vec2_f32(var_2.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1376f)))), select(var_2.e, !(!select(var_2.e, var_2.e, var_2.e)), !(!(!var_2.e))));
    var var_4 = !(!all(var_2.e));
    var var_5 = Struct_1(abs(var_2.a), !var_2.b, var_3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(-var_2.d.x)) * _wgslsmith_f_op_vec2_f32(func_4(0i, true, func_2(vec4<i32>(var_1.x, -2147483647i, -2147483647i, var_1.x), var_3.b.x, var_3, vec3<bool>(var_2.b.x, var_2.b.x, true))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-257f, -119f), vec2<f32>(-165f, var_2.d.x)) - vec2<f32>(var_3.d.x, _wgslsmith_f_op_f32(floor(var_3.d.x))))), var_2.e);
    let var_6 = func_2(-select(min(-u_input.a, vec4<i32>(6899i, u_input.e, 0i, -8363i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -26516i, u_input.a.x, 2147483647i), select(vec4<i32>(u_input.e, -2147483647i, var_1.x, u_input.a.x), vec4<i32>(var_1.x, -2147483647i, -34038i, u_input.a.x), false)), true), !var_3.e.x, var_3, vec3<bool>(true, false, any(select(func_2(u_input.a, var_2.b.x, Struct_1(var_2.a, var_2.e.xx, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(var_3.d.x, -1339f), vec4<bool>(true, var_5.e.x, var_5.b.x, false)), vec3<bool>(var_2.b.x, true, var_3.b.x)).e.zx, vec2<bool>(true, true), func_2(vec4<i32>(-2147483647i, 28062i, var_1.x, u_input.e), var_5.b.x, var_3, vec3<bool>(var_2.e.x, true, true)).e.wz))));
    var_1 = _wgslsmith_sub_vec2_i32(-u_input.a.yx, -vec2<i32>(var_1.x, var_1.x << (25494u % 32u))) << (~vec2<u32>(max(var_3.a.x >> (10920u % 32u), 48290u), _wgslsmith_add_u32(~35720u, var_6.a.x)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(countOneBits(vec3<i32>(1i, u_input.a.x, -26374i))) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yw, u_input.a.yy), ~u_input.a.wz), var_1.x, ~min(var_1.x, 2147483647i)), abs(_wgslsmith_mult_vec3_i32(u_input.a.wxx, vec3<i32>(var_1.x, -2147483647i, 75129i)) | countOneBits(u_input.a.wzx)), 0u);
}

