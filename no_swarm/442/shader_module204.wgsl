struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<bool>) -> bool {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_clamp_u32(var_0.a, ~0u, ~firstLeadingBit(firstTrailingBit(7939u))) < 1u;
    let var_2 = ~vec2<u32>(25661u, ~(~0u));
    var var_3 = Struct_2(Struct_1(27277u, _wgslsmith_sub_u32(~arg_1.d.x, (var_2.x << (var_2.x % 32u)) >> (~u_input.a % 32u)), arg_1.c, select(arg_1.d, var_0.d, vec3<bool>(var_1, arg_0.c.x > -2147483647i, arg_3.x))), _wgslsmith_f_op_f32(-1674f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-906f)), -1345f)))), var_1, _wgslsmith_clamp_u32(min(1u, abs(_wgslsmith_dot_vec3_u32(arg_0.d, vec3<u32>(45549u, 0u, 13030u)))), ~arg_1.a, var_0.a));
    var var_4 = var_3.a.c;
    return !(_wgslsmith_mult_u32(var_3.a.d.x ^ ~0u, ~var_0.a) == (arg_1.b >> (var_2.x % 32u)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> bool {
    var var_0 = all(vec3<bool>(true || select(arg_1 || true, true, u_input.c == 2147483647i), true, all(select(vec2<bool>(arg_1, false), !vec2<bool>(false, arg_1), false))));
    let var_1 = select(vec4<bool>(all(vec3<bool>(true, arg_1, true)), arg_1, all(select(!vec2<bool>(arg_1, arg_1), select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), arg_1), false)), !any(!vec3<bool>(false, arg_1, true))), !select(vec4<bool>(true, !arg_1, arg_1, all(vec3<bool>(true, arg_1, arg_1))), select(select(vec4<bool>(false, arg_1, true, false), vec4<bool>(arg_1, arg_1, false, false), vec4<bool>(arg_1, arg_1, false, true)), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, true, arg_1, false)), !vec4<bool>(arg_1, true, false, true)), true);
    var var_2 = Struct_1(~(~(1u << (u_input.b % 32u))), 29906u, -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c >> (u_input.a % 32u), 2147483647i, u_input.c >> (1u % 32u)), -(~vec3<i32>(u_input.c, -77708i, u_input.c))), vec3<u32>(_wgslsmith_sub_u32(~1u, 1u), 0u, 1u));
    var_2 = Struct_1(~arg_0, select(u_input.b, arg_2.x, !select(true, arg_1, arg_1)) << (~var_2.d.x % 32u), var_2.c, reverseBits(_wgslsmith_div_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.b, var_2.d.x, var_2.d.x)), abs(var_2.d))));
    var_2 = Struct_1(~_wgslsmith_div_u32(u_input.a, arg_2.x), countOneBits(countOneBits(var_2.a)), var_2.c, ~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(55778u, arg_2.x, 38652u), vec3<u32>(arg_0, 4294967295u, 4294967295u)))));
    return all(vec4<bool>(false, !(!all(vec4<bool>(true, true, true, var_1.x))), arg_1, false && (2147483647i == _wgslsmith_dot_vec2_i32(var_2.c.yx, vec2<i32>(1i, var_2.c.x)))));
}

fn func_2() -> Struct_2 {
    let var_0 = !vec2<bool>(func_4(~64253u, func_3(Struct_1(u_input.a, u_input.b, vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.a, u_input.a, 31750u)), Struct_1(u_input.b, u_input.a, vec3<i32>(2147483647i, u_input.c, 25698i), vec3<u32>(u_input.b, 1u, 11308u)), reverseBits(vec4<i32>(-2147483647i, u_input.c, u_input.c, 1i)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(59005u, 1u, 9970u), vec3<u32>(u_input.b, 89u, u_input.a)), reverseBits(15514u), _wgslsmith_add_u32(1u, u_input.b))), max(~u_input.a, _wgslsmith_mult_u32(u_input.b, u_input.a)) <= ~_wgslsmith_mult_u32(18777u, 23388u));
    let var_1 = -(~(-_wgslsmith_add_i32(abs(u_input.c), ~u_input.c)));
    var var_2 = Struct_1(min(u_input.a, firstTrailingBit(u_input.b)), u_input.b, vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(-62365i, u_input.c), _wgslsmith_mod_i32(0i, var_1)), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, -30345i), vec2<i32>(1i, u_input.c) | vec2<i32>(-38730i, 6617i)), var_1), reverseBits(~vec3<u32>(u_input.b, ~u_input.a, abs(u_input.b))));
    var_2 = Struct_1(abs(var_2.b), var_2.b, vec3<i32>(u_input.c, ~(-2147483647i), ~_wgslsmith_sub_i32(1i, var_2.c.x)), var_2.d << (vec3<u32>(var_2.d.x, ~countOneBits(var_2.d.x), _wgslsmith_mult_u32(4294967295u, var_2.d.x | 11003u)) % vec3<u32>(32u)));
    var var_3 = Struct_1(_wgslsmith_mult_u32(countOneBits(u_input.a), u_input.a << (reverseBits(~u_input.a) % 32u)), var_2.d.x, var_2.c, ~countOneBits(min(~var_2.d, countOneBits(var_2.d))));
    return Struct_2(Struct_1(56939u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a, u_input.b, 20044u, 134028u), vec4<u32>(78320u, 1u, 10861u, 29719u)), vec4<u32>(var_2.b, var_3.d.x, var_2.a, var_2.a) << (vec4<u32>(1u, 73988u, 15806u, var_2.b) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 1u, 1u)), ~vec4<u32>(5867u, 0u, var_2.b, 4294967295u))), min(var_3.c, _wgslsmith_sub_vec3_i32(vec3<i32>(var_1, var_3.c.x, var_1) | vec3<i32>(u_input.c, 2147483647i, var_1), var_3.c)), ~var_2.d), 1538f, var_0.x, _wgslsmith_mult_u32(0u, abs(34389u) ^ select(u_input.a, var_3.a, true)) << (~(~reverseBits(4294967295u)) % 32u));
}

fn func_1() -> vec2<f32> {
    let var_0 = !(!vec4<bool>(any(vec2<bool>(true, true)), true, true, all(vec3<bool>(true, false, false))));
    var var_1 = func_2();
    var_1 = func_2();
    var var_2 = !select(select(select(!var_0.xx, select(var_0.xz, vec2<bool>(true, var_0.x), var_0.x), false), select(!var_0.wz, select(vec2<bool>(false, false), vec2<bool>(var_1.c, true), var_0.ww), select(var_0.yz, var_0.zw, true)), vec2<bool>(false, false)), vec2<bool>(any(vec4<bool>(var_0.x, true, var_0.x, true)), true), var_1.c);
    var var_3 = func_2();
    return _wgslsmith_div_vec2_f32(vec2<f32>(-540f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-163f - var_1.b)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_3.b, var_3.b)))), -440f), var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1897f))))) * -513f);
    var var_1 = var_0;
    var_1 = _wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1726f, -1262f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_div_f32(var_0, -1000f)))));
    var_1 = _wgslsmith_f_op_f32(var_0 - var_0);
    var_1 = var_0;
    var_1 = var_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -979f));
    let var_2 = vec2<bool>(true, !(!(52078i == u_input.c)) | ((any(vec2<bool>(true, false)) & true) & true));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0)) - 907f), -1153f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-560f, _wgslsmith_f_op_f32(-var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1()))))));
}

