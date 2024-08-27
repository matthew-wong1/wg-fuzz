struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = Struct_5(abs(firstTrailingBit(select(29967i, u_input.c.x, false)) << (u_input.b.x % 32u)), u_input.b.yxy, Struct_1(1206f, ~(~u_input.b.yz)));
    var_0 = Struct_5(reverseBits(1i), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.b.x, var_0.b.x << (var_0.c.b.x % 32u), ~u_input.b.x), u_input.b.ywz), ~(~abs(var_0.b))), var_0.c);
    var var_1 = firstTrailingBit(_wgslsmith_mult_i32(-13934i, _wgslsmith_clamp_i32(1i, -34110i, ~countOneBits(-8580i))));
    let var_2 = abs(abs(u_input.a));
    var_1 = u_input.c.x;
    return any(select(select(vec3<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, arg_0, arg_0)), arg_0), vec3<bool>(all(vec4<bool>(true, arg_0, false, true)), true, select(arg_0, arg_0, false)), vec3<bool>(u_input.b.x <= 0u, true, u_input.c.x != -21511i)), select(!vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, false, true), !select(vec3<bool>(true, arg_0, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), !vec3<bool>(!arg_0, any(vec2<bool>(true, arg_0)), arg_0)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec2<i32>) -> Struct_3 {
    global0 = all(vec4<bool>(true, true, true, true));
    let var_0 = !all(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), func_3(false))) && true;
    var var_1 = firstTrailingBit(-arg_2);
    let var_2 = Struct_3(_wgslsmith_clamp_vec3_i32(~arg_1.wzx, ~vec3<i32>(arg_0.x | 0i, 1i, u_input.c.x), arg_1.zyx), select(true, !select(!var_0, !var_0, var_0), !var_0), 109180u, _wgslsmith_div_i32(var_1.x, arg_1.x));
    var var_3 = Struct_5(var_2.d, _wgslsmith_sub_vec3_u32(vec3<u32>(~(~1u), var_2.c, ~0u), vec3<u32>(u_input.b.x, firstTrailingBit(28675u), 1u)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-206f - 1379f) * _wgslsmith_f_op_f32(475f + -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1784f), var_0)), reverseBits(u_input.b.wx)));
    return Struct_3(var_2.a, var_2.b, ~var_2.c, -12030i);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, arg_0)), -1906f, arg_0, arg_0);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> StorageBuffer {
    let var_0 = 339f;
    let var_1 = Struct_2(Struct_1(840f, u_input.b.ww), vec2<i32>(abs(arg_0.x), arg_0.x), Struct_1(arg_1.a, select(u_input.b.xx, u_input.b.zx, select(vec2<bool>(true, false), vec2<bool>(false, false), false))), arg_1.a, _wgslsmith_mult_i32(-1i, -55238i));
    var var_2 = Struct_3(-(~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.e, -26674i, -2147483647i), -vec3<i32>(u_input.c.x, -1i, arg_0.x))), true, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(84979u, 35417u, 0u)), u_input.b.wxw), 38569u), 0i);
    let var_3 = Struct_4(var_1.a.a, var_1, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_2.x))))), var_1.a.b));
    var_2 = Struct_3(select(select(-vec3<i32>(var_2.d, arg_0.x, arg_0.x), _wgslsmith_mod_vec3_i32(arg_0.yzz, _wgslsmith_clamp_vec3_i32(vec3<i32>(-22292i, var_2.d, u_input.c.x), var_2.a, vec3<i32>(var_1.e, var_2.a.x, 31797i))), select(!vec3<bool>(var_2.b, var_2.b, false), select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(false, var_2.b, false), var_2.b), !vec3<bool>(false, var_2.b, false))), select(firstLeadingBit(arg_0.xzw) ^ -vec3<i32>(var_3.b.b.x, 1i, 2147483647i), vec3<i32>(var_3.b.b.x, min(var_3.b.b.x, var_3.b.e), var_3.b.e), (var_2.b && true) && any(vec2<bool>(var_2.b, true))), !select(select(vec3<bool>(false, var_2.b, var_2.b), vec3<bool>(var_2.b, false, false), true), vec3<bool>(var_2.b, true, false), var_2.b)), all(select(!vec2<bool>(var_2.b, var_2.b), select(select(vec2<bool>(var_2.b, true), vec2<bool>(var_2.b, var_2.b), true), vec2<bool>(true, true), !vec2<bool>(var_2.b, var_2.b)), select(!vec2<bool>(var_2.b, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_2.b, true)), !vec2<bool>(var_2.b, var_2.b)))), 0u, 2147483647i);
    return StorageBuffer(arg_3, vec4<f32>(_wgslsmith_f_op_f32(var_1.a.a + _wgslsmith_f_op_f32(-arg_1.a)), -2246f, _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0, var_0), -320f, true))), _wgslsmith_sub_u32(select(var_1.c.b.x, 13540u, var_2.b), firstLeadingBit(_wgslsmith_clamp_u32(var_1.c.b.x, 0u, var_2.c))), 39881u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -213f), abs(u_input.b.yx)), vec2<i32>(abs(countOneBits(~u_input.c.x)), reverseBits(u_input.c.x)), Struct_1(_wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(min(1262f, -1208f))), vec2<u32>(abs(_wgslsmith_add_u32(66119u, 1u)), 17320u)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1513f * 497f), _wgslsmith_f_op_f32(abs(363f)))) + _wgslsmith_f_op_f32(f32(-1f) * -347f))), 1i);
    global0 = false;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -4002f), var_1.a.a)), var_1.d);
    let x = u_input.a;
    s_output = func_5(-vec4<i32>(-(~(-2147483647i)), i32(-1i) * -2147483647i, _wgslsmith_mod_i32(select(-1i, u_input.c.x, true), ~var_1.e), _wgslsmith_mod_i32(var_0.x ^ var_1.e, ~(-2147483647i))), Struct_1(var_2.x, u_input.b.wy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_1(u_input.b.yz, var_1.a)), _wgslsmith_f_op_f32(round(var_1.a.a)), 1114f, _wgslsmith_f_op_f32(-110f + 117f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1927f, -173f, var_1.d, 1223f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(401f, var_1.c.a, -1054f, 251f))), false)) + _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-var_1.c.a), ~(~4294967295u), func_2(-var_1.b, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, var_1.b.x, var_0.x, -3545i), vec4<i32>(var_0.x, var_0.x, u_input.c.x, var_0.x)), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, -3506i), var_1.b))))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(22301u, var_1.c.b.x, var_1.a.b.x), 0u, abs(~var_1.c.b.x)) | select(~var_1.c.b.x, 49999u, select(true, all(vec4<bool>(true, true, true, false)), true)));
}

