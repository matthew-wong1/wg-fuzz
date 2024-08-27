struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(select(-698f, -1164f, true)), _wgslsmith_f_op_f32(-1958f - -1000f), _wgslsmith_f_op_f32(min(559f, 489f))))), vec4<i32>(-u_input.d.x, -_wgslsmith_add_i32(0i, -2147483647i), -_wgslsmith_dot_vec2_i32(vec2<i32>(28532i, u_input.d.x), vec2<i32>(0i, u_input.d.x)), abs(~(-10138i)))), ~(-29258i) > -u_input.d.x, -_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-28758i), _wgslsmith_mod_i32(-17278i, 1i), _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, 4328i)), -vec3<i32>(-1641i, u_input.d.x, -43283i), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, -17502i, 55888i)), firstLeadingBit(~u_input.d.x));
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) * 104f)));
    global0 = _wgslsmith_f_op_f32(exp2(var_0.a.a.x));
    let var_1 = -var_0.a.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(select(u_input.e, vec3<u32>(4132u, u_input.a, u_input.e.x), vec3<bool>(true, var_0.b, var_0.b)), select(u_input.e, vec3<u32>(4294967295u, 0u, 81469u), var_0.b)), abs(28911u), 0u, 0u), ~(~abs(u_input.b))) % vec4<u32>(32u));
    let var_2 = var_0.a.a;
    return !(!(!select(!vec2<bool>(var_0.b, false), select(vec2<bool>(false, var_0.b), vec2<bool>(true, var_0.b), var_0.b), vec2<bool>(var_0.b, true))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_mod_vec2_u32(select(arg_1.c.yz, vec2<u32>(arg_1.c.x, arg_1.c.x & 1u), arg_1.e.x) << (select(u_input.e.xx, ~(arg_1.c.yz << (u_input.b.ww % vec2<u32>(32u))), select(vec2<bool>(true, true), !arg_1.e, func_3())) % vec2<u32>(32u)), ~u_input.e.zz);
    global0 = arg_3.x;
    let var_1 = arg_1.b.yz;
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.d.x, -1i, -25948i, arg_0), vec4<i32>(-14171i, arg_2.x, u_input.d.x, -549i) & vec4<i32>(-20573i, 0i, arg_0, u_input.d.x)), vec4<i32>(-u_input.d.x, 34365i << (max(arg_1.c.x, 4294967295u) % 32u), _wgslsmith_sub_i32(countOneBits(8236i), 17137i >> (1u % 32u)), 46740i)) & -min(vec4<i32>(~arg_2.x, arg_2.x, -2147483647i, _wgslsmith_sub_i32(760i, u_input.d.x)), vec4<i32>(arg_2.x, -1i, arg_2.x, arg_2.x));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.x)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-265f + _wgslsmith_f_op_f32(sign(-2380f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-422f)) * -498f))));
    return -2147483647i;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_add_u32(arg_1, _wgslsmith_mod_u32(max(firstLeadingBit(_wgslsmith_add_u32(u_input.b.x, arg_0)), arg_1), 1u));
    var_0 = arg_0;
    var var_1 = vec2<f32>(-203f, arg_2.a.x);
    let var_2 = vec4<i32>(-select(~u_input.d.x, arg_2.b.x, _wgslsmith_div_f32(1921f, 323f) != _wgslsmith_div_f32(arg_2.a.x, 169f)), ~(_wgslsmith_mod_i32(-u_input.d.x, 2147483647i & arg_2.b.x) & (arg_2.b.x >> (_wgslsmith_dot_vec3_u32(u_input.e, u_input.e) % 32u))), 892i, ~(-9165i ^ ~(u_input.d.x >> (0u % 32u))));
    let var_3 = max(abs(reverseBits(-vec3<i32>(var_2.x, 1i, 0i))), reverseBits(var_2.yxy));
    return vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(select(~96524u, u_input.b.x, true)), reverseBits(_wgslsmith_add_u32(1u, 13911u | u_input.c))), ~u_input.b.x << (arg_1 % 32u), 19556u, ~_wgslsmith_mult_u32(76713u, ~arg_0) >> (38865u % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    global0 = _wgslsmith_div_f32(421f, arg_1.a.a.x);
    let var_0 = true;
    let var_1 = func_4(_wgslsmith_mult_u32(u_input.a, select(_wgslsmith_mod_u32(~44978u, u_input.a), 1u, all(select(arg_3.xx, vec2<bool>(false, var_0), true)))), 41637u, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(arg_0.a.a * vec3<f32>(-509f, arg_0.a.a.x, -401f))))), vec4<i32>(func_2(arg_1.a.b.x, Struct_1(var_0, arg_3.xzx, u_input.e, true, arg_3.yx), vec3<i32>(-2147483647i, arg_0.c.x, arg_1.a.b.x), _wgslsmith_f_op_vec3_f32(arg_1.a.a - arg_1.a.a)), abs(-u_input.d.x), arg_1.a.b.x, -2147483647i)));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(-818f, _wgslsmith_f_op_f32(-arg_1.a.a.x)), arg_1.a.a.x);
    let var_3 = (_wgslsmith_dot_vec2_i32(vec2<i32>(7748i, -2147483647i), vec2<i32>(39491i, 1i << (0u % 32u))) ^ 1i) ^ -_wgslsmith_clamp_i32(-23737i, _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0.d, u_input.d.x, arg_1.a.b.x, arg_1.a.b.x), vec4<i32>(u_input.d.x, -14315i, -41837i, arg_0.a.b.x)), vec4<i32>(arg_0.c.x, arg_0.c.x, -1i, arg_0.a.b.x)), -1i);
    return _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(max(u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.x, 0u, 485u), vec4<u32>(u_input.e.x, 4294967295u, var_1.x, u_input.c))), vec4<u32>(_wgslsmith_add_u32(~var_1.x, _wgslsmith_div_u32(var_1.x, 9887u)), var_1.x, 27083u, _wgslsmith_sub_u32(0u, ~u_input.a))));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_4) -> f32 {
    var var_0 = all(select(!(!(!vec4<bool>(arg_0, arg_0, arg_0, true))), !vec4<bool>(arg_0, arg_0 | false, arg_0, false), !vec4<bool>(arg_0, true, true, true)));
    global0 = arg_3.a.a.x;
    global0 = -971f;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-arg_3.a.a), arg_3.a.b), arg_0, select(~select(arg_3.a.b.wzw, ~vec3<i32>(arg_3.a.b.x, 2147483647i, arg_3.a.b.x), false), abs(vec3<i32>(u_input.d.x, -arg_2.x, 1i)), all(select(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(true, false, true, true), true), !vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_0, false, false, arg_0)))), -20471i);
    var_0 = var_1.b;
    return arg_3.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 28657u;
    let var_1 = _wgslsmith_f_op_f32(func_5(true, _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.e.x, 4294967295u)), ~u_input.b) >> (vec4<u32>(_wgslsmith_mod_u32(67696u, func_1(Struct_3(Struct_2(vec3<f32>(-1566f, -1217f, -816f), vec4<i32>(-32993i, u_input.d.x, u_input.d.x, u_input.d.x)), false, vec3<i32>(u_input.d.x, -65664i, u_input.d.x), 17320i), Struct_4(Struct_2(vec3<f32>(-596f, 315f, 550f), vec4<i32>(1i, 0i, u_input.d.x, u_input.d.x))), false, vec4<bool>(true, true, false, false))), ~u_input.a, u_input.a, 9911u) % vec4<u32>(32u)), vec3<i32>(-u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.d) ^ ~0i, 17338i) & countOneBits(select(firstLeadingBit(vec3<i32>(u_input.d.x, 0i, 11415i)), -vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<bool>(true, true, true))), Struct_4(Struct_2(vec3<f32>(-1000f, 238f, -331f), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(56047i, u_input.d.x, u_input.d.x, u_input.d.x), vec4<i32>(-8093i, 0i, -6792i, -2370i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), ~vec4<i32>(17265i, -35036i, u_input.d.x, u_input.d.x))))));
    var var_2 = Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -112f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-345f * 207f)), 283f), abs(vec4<i32>(42505i, u_input.d.x & -25857i, ~53599i, _wgslsmith_sub_i32(2147483647i, 13655i)))));
    var var_3 = -reverseBits(_wgslsmith_dot_vec2_i32(var_2.a.b.wz, var_2.a.b.wy ^ vec2<i32>(37564i, -14318i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.b, var_2.a.b.x, var_2.a.a.yx, var_2.a.a.yx, -1i);
}

