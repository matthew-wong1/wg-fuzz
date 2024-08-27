struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(!select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true)), -(_wgslsmith_div_vec2_i32(max(u_input.d.yx, vec2<i32>(u_input.a, 0i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), u_input.d.zz)) | u_input.d.yy));
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 47292u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), countOneBits(u_input.b.x), 47209u), ~(vec3<u32>(u_input.b.x, 4294967295u, 0u) | vec3<u32>(25352u, 33732u, u_input.b.x)) >> ((vec3<u32>(59314u, 1u, u_input.b.x) ^ vec3<u32>(u_input.b.x, u_input.b.x, 87216u)) % vec3<u32>(32u))) >> (~(69493u | _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))) % 32u);
    var var_2 = Struct_1(vec4<bool>(false, any(var_0.a), !var_0.a.x, any(select(vec2<bool>(var_0.a.x, var_0.a.x), vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.yw))), -max(vec2<i32>(-277i, var_0.b.x >> (u_input.b.x % 32u)), u_input.d.yz));
    var_1 = min(u_input.b.x, u_input.b.x);
    var var_3 = var_2.a.x && !(u_input.a <= ~3949i);
    return ~(~u_input.b.x);
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(-u_input.a) >> (_wgslsmith_clamp_u32(~24034u, firstLeadingBit(~_wgslsmith_sub_u32(u_input.b.x, 4294967295u)), _wgslsmith_mult_u32(func_3(), firstLeadingBit(37396u))) % 32u);
    var var_1 = vec3<i32>(u_input.e.x, _wgslsmith_dot_vec4_i32(~max(abs(vec4<i32>(u_input.a, 1i, u_input.d.x, -45793i)), ~vec4<i32>(u_input.e.x, -6621i, -80061i, u_input.e.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.c, u_input.e.x, u_input.d.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(-6653i, 1i, u_input.a, u_input.a), vec4<i32>(9216i, -15841i, -1i, 0i)))), reverseBits(firstLeadingBit(select(u_input.a, u_input.c, true) >> (u_input.b.x % 32u))));
    var_0 = i32(-1i) * -u_input.d.x;
    var var_2 = ~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(~u_input.d.x, 5842i, _wgslsmith_sub_i32(var_1.x, -16848i), i32(-1i) * -12300i)), firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, var_1.x, u_input.c, var_1.x), vec4<i32>(var_1.x, 2147483647i, 2147483647i, -23250i))) | ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, var_1.x, 1i, -81577i), vec4<i32>(var_1.x, var_1.x, var_1.x, -76480i)));
    let var_3 = func_3();
    return Struct_1(vec4<bool>(!(any(vec2<bool>(false, false)) & any(vec2<bool>(true, false))), true, select(true, var_3 >= firstTrailingBit(34341u), true), select(any(vec4<bool>(true, false, false, false)), true, all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))))), _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(var_2.x, -2147483647i)) ^ ~u_input.d.zz, vec2<i32>(-1i, -u_input.a)) >> (_wgslsmith_mod_vec2_u32(select(u_input.b, u_input.b & u_input.b, any(vec3<bool>(false, true, true))), min(u_input.b, vec2<u32>(4294967295u, var_3)) & u_input.b) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = func_2();
    let var_1 = u_input.d.x & ~(-8305i);
    var var_2 = Struct_1(select(func_2().a, select(!var_0.a, !arg_1.a, !vec4<bool>(true, arg_1.a.x, var_0.a.x, arg_0.a.x)), vec4<bool>(all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(ceil(-1112f)) < _wgslsmith_f_op_f32(681f * -514f), arg_0.a.x, true)), arg_1.b);
    let var_3 = vec4<bool>(select(arg_0.a.x, true, !(1f > _wgslsmith_f_op_f32(floor(-783f)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 317f)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(531f))))), false);
    var var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1407f, -1141f))), 1004f))));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), false)), func_4(Struct_1(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false)), u_input.d.yy), func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(204f, -2521f, -1350f, -561f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -993f)), 4294967295u ^ u_input.b.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1335f - _wgslsmith_f_op_f32(step(1000f, -768f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1398f)))))) + 341f);
    var var_2 = u_input.e.x;
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1023f, _wgslsmith_f_op_f32(f32(-1f) * -468f)))));
    let var_4 = ~vec4<u32>(~(u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_sub_u32(~u_input.b.x, ~u_input.b.x), ~1u, u_input.b.x) << (max(abs(vec4<u32>(abs(4294967295u), 4294967295u, ~0u, u_input.b.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, u_input.b.x), select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(61686u, 33770u, 4294967295u, u_input.b.x), var_0.a.x))) % vec4<u32>(32u));
    var var_5 = var_0;
    var var_6 = Struct_1(var_0.a, ~u_input.e);
    var_2 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, _wgslsmith_f_op_f32(var_1 + var_1), -989f, _wgslsmith_f_op_f32(f32(-1f) * -621f))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-145f + var_1), _wgslsmith_f_op_f32(var_1 * 2247f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1000f, var_1, var_1, var_1)))))), 2401f, ~7647u).b.x;
    var_5 = Struct_1(vec4<bool>(all(vec2<bool>(true, var_5.a.x)) == true, true, (_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.x, 45922u, u_input.b.x), vec3<u32>(u_input.b.x, 0u, u_input.b.x)) >= var_4.x) | true, true), var_6.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_4, ~1u, var_4.x, vec4<i32>(~var_6.b.x, -_wgslsmith_clamp_i32(i32(-1i) * -1i, -33354i, 11961i ^ var_6.b.x), _wgslsmith_div_i32(func_4(var_0, var_0).x, -var_0.b.x), -32884i));
}

