struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec2<u32> {
    let var_0 = Struct_1(u_input.a, all(vec4<bool>(true, true, true, true)), -1445f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(153f, -2259f), vec2<f32>(-1345f, -405f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-674f, 397f), vec2<f32>(300f, 1707f)))) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(645f, -674f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(187f, 231f)))))));
    var var_1 = Struct_2(vec2<u32>(min(_wgslsmith_div_u32(37691u, u_input.c), u_input.c), u_input.c), all(select(vec2<bool>(true, true), !select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, false), var_0.b), vec2<bool>(any(vec2<bool>(false, true)), var_0.b))), vec2<i32>(_wgslsmith_div_i32(select(2147483647i, var_0.a, var_0.b), _wgslsmith_div_i32(var_0.a, 35855i)) & -2147483647i, min(max(1i, var_0.a << (u_input.c % 32u)), -_wgslsmith_mod_i32(-2666i, 1i))));
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = var_1.a;
    return ~vec2<u32>(29796u, firstLeadingBit(_wgslsmith_clamp_u32(var_3.x, _wgslsmith_sub_u32(arg_0, 1u), u_input.c ^ 70197u)));
}

fn func_2() -> Struct_1 {
    var var_0 = !(firstLeadingBit(0u) < reverseBits(~_wgslsmith_add_u32(u_input.c, u_input.c)));
    let var_1 = Struct_2(firstLeadingBit(select(~vec2<u32>(1u, u_input.c) | reverseBits(vec2<u32>(u_input.c, u_input.c)), func_3(1u), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false), true))), all(vec3<bool>(true, false, !any(vec3<bool>(false, false, true)))), vec2<i32>(firstLeadingBit(~u_input.a), _wgslsmith_div_i32(firstLeadingBit(max(u_input.b.x, -1i)), (u_input.d.x << (u_input.c % 32u)) << (22720u % 32u))));
    return Struct_1(u_input.a, any(vec3<bool>(true, true, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2448f - -288f), -700f), vec2<f32>(_wgslsmith_f_op_f32(363f + _wgslsmith_f_op_f32(-1f)), 2449f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_0.a << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.c, ~(~70857u)), ~62194u) % 32u);
    var var_1 = arg_1.c;
    var var_2 = ~59891u;
    let var_3 = vec3<bool>(true, any(vec4<bool>(false, arg_0.b, arg_0.b, true)), ~(~u_input.c) <= 1u);
    var_2 = _wgslsmith_sub_u32(~(firstLeadingBit(_wgslsmith_clamp_u32(1u, u_input.c, u_input.c)) & max(1u >> (u_input.c % 32u), ~u_input.c)), 5560u);
    return Struct_1(_wgslsmith_add_i32(firstTrailingBit(2147483647i), -_wgslsmith_clamp_i32(1i, var_0, -2147483647i)), !arg_1.b, _wgslsmith_f_op_f32(round(arg_1.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(func_2().d)))) - _wgslsmith_f_op_vec2_f32(step(arg_1.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.d - vec2<f32>(-141f, arg_0.c)), vec2<f32>(arg_0.d.x, -510f), arg_0.b))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = func_4(func_2(), func_2());
    let var_1 = func_2();
    let var_2 = func_2();
    var_0 = var_1;
    var_0 = var_2;
    return 26800u;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = func_1(Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 8624u) & vec2<u32>(u_input.c, u_input.c), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(24937u, u_input.c)))), !arg_3.b, arg_2.yz), firstLeadingBit(~(func_4(arg_1, Struct_1(u_input.d.x, true, arg_1.d.x, arg_1.d)).a & -28411i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_3.d.x, _wgslsmith_f_op_f32(sign(arg_1.c))))), _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_1.d.x, var_0.d.x))), any(!vec4<bool>(true, true, var_0.b, false)))), !arg_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.c, arg_3.d.x, arg_1.c, 1006f), vec4<f32>(var_0.c, arg_1.d.x, arg_0.x, var_0.d.x))))));
    var var_2 = -u_input.b.yxw;
    let var_3 = ~(_wgslsmith_div_i32(countOneBits(12695i), ~(~var_2.x)) ^ _wgslsmith_mult_i32(~1i, -1i));
    var var_4 = _wgslsmith_div_u32(var_1, var_1);
    return Struct_1(2147483647i, _wgslsmith_f_op_f32(abs(arg_0.x)) >= 541f, 1886f, vec2<f32>(_wgslsmith_f_op_f32(821f * -419f), _wgslsmith_f_op_f32(521f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-954f - -611f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<f32>(410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-348f)))) * -602f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(388f * 1000f) - _wgslsmith_f_op_f32(-1000f - 1121f))))), Struct_1(-abs(-1i) << (_wgslsmith_mult_u32(func_1(Struct_2(vec2<u32>(4294967295u, u_input.c), true, u_input.b.yz), u_input.a, vec3<f32>(-1000f, 483f, 715f), vec4<f32>(1298f, -1000f, 568f, 1003f)), ~u_input.c) % 32u), true, 846f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 408f) - vec2<f32>(-455f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1460f, -256f))) + vec2<f32>(-156f, 521f))))), -u_input.b.zzz, func_2());
    var var_1 = firstTrailingBit(21158u);
    let var_2 = var_0.a;
    let var_3 = func_2().d.x;
    var var_4 = _wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, i32(-1i) * -(var_0.a >> (u_input.c % 32u))), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-23229i);
}

