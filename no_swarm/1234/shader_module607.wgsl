struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: u32) -> f32 {
    var var_0 = u_input.b;
    var var_1 = 165f;
    var_0 = u_input.b;
    let var_2 = Struct_3(arg_0);
    var var_3 = _wgslsmith_dot_vec2_i32(abs(var_0.yx), var_0.ww);
    return var_2.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2));
    let var_1 = true;
    var var_2 = arg_0.a;
    var_2 = Struct_1(var_2.a);
    var_2 = arg_0.a;
    return _wgslsmith_div_i32(select(firstLeadingBit(-u_input.b.x) | (u_input.b.x << ((28645u | u_input.c) % 32u)), u_input.b.x, select(653f > _wgslsmith_f_op_f32(-arg_2.x), any(!vec3<bool>(arg_3.x, true, false)), true)), -2147483647i);
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = func_4(Struct_2(arg_0.a), select(vec4<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), true, 19597u > ~u_input.a), !vec4<bool>(true, select(true, true, true), true, true), vec4<bool>(false, !(u_input.b.x < u_input.b.x), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), all(vec3<bool>(true, true, false)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a.a.x))), _wgslsmith_add_u32(~4294967295u, u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1079f))) - _wgslsmith_f_op_f32(exp2(arg_0.a.a.x)))), !vec4<bool>(!any(vec4<bool>(true, true, false, false)), !any(vec3<bool>(false, false, false)), true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.a.xz + arg_0.a.a.ww), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x - arg_0.a.a.x), -502f) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.a.x, arg_0.a.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, arg_0.a.a.x), arg_0.a.a.wx, vec2<bool>(false, true)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a.a.zw))));
    var_0 = -(i32(-1i) * -u_input.b.x);
    var var_2 = select(vec3<i32>(-countOneBits(u_input.b.x), 1i ^ ~u_input.b.x, 1i), vec3<i32>(max(_wgslsmith_dot_vec2_i32(u_input.b.wz, u_input.b.xx), 0i), u_input.b.x, -14065i), select(vec3<bool>((u_input.c | 8396u) <= ~39075u, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), true & (-1409f <= arg_0.a.a.x)), min(u_input.a, 23929u) < 9962u));
    var_0 = -func_4(Struct_2(arg_0.a), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)), var_1.x), vec4<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), any(vec2<bool>(true, true)), true));
    return vec3<u32>(0u, 3408u, _wgslsmith_add_u32(u_input.c, u_input.a));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = !all(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), all(vec3<bool>(false, true, false))));
    let var_1 = 449f;
    var var_2 = Struct_5(~u_input.b.xxx | countOneBits(-u_input.b.zww));
    var_2 = Struct_5(_wgslsmith_mult_vec3_i32(u_input.b.xxx, ~reverseBits(var_2.a)) ^ abs(abs(vec3<i32>(66569i, u_input.b.x, -6165i))));
    var var_3 = Struct_5(abs(max(var_2.a | vec3<i32>(var_2.a.x, var_2.a.x, u_input.b.x), ~vec3<i32>(u_input.b.x, -24256i, u_input.b.x))));
    return _wgslsmith_mod_u32(abs(arg_0.x), 0u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + 588f)));
    var var_1 = _wgslsmith_mult_u32(func_5((func_2(Struct_2(Struct_1(vec4<f32>(-1211f, 723f, arg_0, arg_0)))) ^ ~vec3<u32>(u_input.a, 0u, 1u)) ^ ~vec3<u32>(0u, 4294967295u, 92719u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(873f - arg_0))), max(firstLeadingBit(u_input.a) & min(u_input.c, 4294967295u), ~_wgslsmith_mult_u32(u_input.a, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1520f)))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 70741u, u_input.a)), vec4<u32>(u_input.c, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(60591u, u_input.c), vec2<u32>(u_input.a, 71190u)), _wgslsmith_sub_u32(u_input.c, u_input.c)), 9619u, u_input.a)));
    var_1 = ~(~0u);
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * -397f), 1352f, var_0, _wgslsmith_f_op_f32(select(arg_0, var_0, true))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1428f, var_0, arg_0, -168f) - vec4<f32>(-1773f, var_0, 971f, var_0)))))));
    var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_sub_u32(u_input.c, u_input.c), ~u_input.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.c), ~vec3<u32>(4294967295u, u_input.c, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(4294967295u, u_input.c, 7781u))));
    return var_2.a;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = vec3<u32>(4294967295u, ~(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(9799u, arg_2), vec2<u32>(u_input.c, u_input.a))) << (arg_2 % 32u)), 46199u);
    var_0 = select(max(select(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, var_0.x, arg_2), vec3<u32>(var_0.x, 0u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_0.x, var_0.x), vec3<u32>(4294967295u, 4294967295u, arg_2), vec3<u32>(36189u, var_0.x, u_input.c)), -573f != arg_0.a.x) & abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(19502u, arg_2, 1u))), abs(~reverseBits(vec3<u32>(78047u, arg_2, 0u)))), vec3<u32>(4294967295u, countOneBits(arg_2 & ~var_0.x), 4294967295u), (abs(abs(u_input.c)) ^ u_input.c) >= 7971u);
    var var_1 = Struct_4(~_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(21180u, var_0.x, var_0.x), vec3<u32>(71072u, 9776u, 1u)), ~vec3<u32>(4294967295u, var_0.x, 4294967295u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, 4294967295u, 10453u), vec3<u32>(5132u, u_input.c, 89683u), vec3<u32>(arg_2, var_0.x, arg_2))), -vec4<i32>(u_input.b.x, ~_wgslsmith_add_i32(10646i, u_input.b.x), 0i, max(-63253i, u_input.b.x)));
    var var_2 = Struct_5(~u_input.b.wzy);
    var var_3 = Struct_2(arg_1);
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -379f))) * _wgslsmith_f_op_f32(floor(-518f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.b.x) | ~_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -35823i), u_input.b.x);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(107f * 1f) + _wgslsmith_f_op_f32(min(-735f, 361f))));
    var_0 = u_input.b.x;
    var var_2 = Struct_5(-_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, -1i, -2147483647i), ~(-vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x))));
    var var_3 = -174f;
    let var_4 = u_input.b.yxw;
    var_1 = func_6(func_1(var_1.a), func_1(var_1.a), max(~(_wgslsmith_mult_u32(u_input.c, 0u) ^ ~u_input.c), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1835f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(681f + var_1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) - _wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_div_u32(~(~countOneBits(u_input.a)), min(func_5(func_2(Struct_2(Struct_1(vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))), Struct_3(626f), 4294967295u, var_1.a), reverseBits(0u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2011f, -256f, 804f), vec3<f32>(1095f, var_1.a, 1287f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, var_1.a, 204f)))))))), vec2<i32>(var_2.a.x, 1019i));
}

