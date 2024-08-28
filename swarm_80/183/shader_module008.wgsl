struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = ~reverseBits(-(u_input.d | ~2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_2.x, 1770f, -2722f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 558f, arg_2.x, arg_2.x) * vec4<f32>(arg_2.x, -1367f, arg_2.x, arg_2.x)))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(747f * arg_2.x), arg_2.x, arg_2.x, arg_2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 487f, arg_2.x, 427f)))), vec4<f32>(351f, arg_2.x, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-arg_2.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, arg_2.x, -1827f) + vec4<f32>(-980f, -107f, 1082f, var_1.x)) - vec4<f32>(862f, arg_2.x, 457f, 543f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-477f, -370f, var_1.x, -2044f) * vec4<f32>(var_1.x, -1134f, var_1.x, 1250f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1093f, 894f, var_1.x))))))));
    let var_3 = arg_2.x;
    var var_4 = !arg_0.b.b.wxz;
    return ~firstLeadingBit(_wgslsmith_mod_u32(arg_1.x, abs(arg_1.x)));
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(0u, vec4<bool>(true, true, true, true));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mult_u32(func_3(Struct_2(Struct_1(var_0.a, vec4<bool>(true, var_0.b.x, true, true)), Struct_1(1u, var_0.b)), vec4<u32>(3876u, 20001u, u_input.e, 56615u), vec3<f32>(570f, -415f, 111f), false), 75978u), select(vec4<bool>(true, false, all(var_0.b.wyz), var_0.b.x), vec4<bool>(!var_0.b.x, !var_0.b.x, true, !var_0.b.x), true)), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 26361u), firstTrailingBit(vec3<u32>(var_0.a, var_0.a, var_0.a))) | ~_wgslsmith_clamp_u32(0u, u_input.e, 4994u), var_0.b));
    var_0 = var_1.a;
    let var_2 = select(var_0.b.zy, select(!select(vec2<bool>(var_0.b.x, true), var_0.b.yw, var_1.a.b.x), vec2<bool>(_wgslsmith_f_op_f32(select(1029f, 1000f, false)) > _wgslsmith_f_op_f32(select(-1584f, -468f, var_0.b.x)), var_1.a.b.x), vec2<bool>(var_1.b.b.x, true)), 1208f == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(598f)))));
    var var_3 = Struct_1(var_1.b.a, vec4<bool>(40349i <= u_input.d, any(var_1.a.b.www), _wgslsmith_mod_i32(u_input.d, 22912i) <= -2147483647i, true));
    return !var_0.b.zy;
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    let var_0 = select(func_2(), !(!vec2<bool>(true, arg_0.a.x < -952f)), true);
    var var_1 = u_input.c;
    var_1 = u_input.b.x;
    let var_2 = any(vec4<bool>(true, select(any(vec3<bool>(var_0.x, false, false)), all(var_0), func_2().x) && var_0.x, var_0.x, abs(1u << (u_input.b.x % 32u)) >= 1u));
    var_1 = u_input.e;
    return Struct_4(Struct_1(u_input.e, vec4<bool>(1u >= u_input.e, true, reverseBits(179i) >= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(u_input.a.x, 1i)), select(!var_2, true, true))), var_0.x, Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.b.x, 17359u), select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_2, var_0.x, true, false), var_0.x), vec4<bool>(false, false, var_2, var_0.x), vec4<bool>(false, false, var_2, var_0.x))), Struct_1(4294967295u, select(!vec4<bool>(false, var_2, false, var_2), select(vec4<bool>(var_0.x, true, var_2, var_2), vec4<bool>(var_0.x, var_2, var_2, true), false), !vec4<bool>(var_0.x, var_2, false, false)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    var var_0 = arg_1.a.b.x;
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1553f, _wgslsmith_f_op_f32(abs(679f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-526f, -1391f)))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(274f, 844f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, 994f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1119f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2356f, 1000f)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) - vec2<f32>(328f, 541f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, -340f), vec2<f32>(var_2.x, 954f), arg_1.c.b.b.x)))))));
    var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, var_2.x)))))));
    return func_1(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.x, var_2.x, -499f)))))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    let var_0 = func_4(-_wgslsmith_sub_vec4_i32(firstLeadingBit(abs(vec4<i32>(-1684i, u_input.a.x, u_input.d, -1i))), vec4<i32>(u_input.d, 32334i, -14814i, 38165i) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, arg_0.c.a.a, 25347u), vec4<u32>(18689u, u_input.e, 54989u, arg_0.a.a)) % vec4<u32>(32u))), arg_0, ~arg_0.a.a).c;
    let var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -464f);
    var var_3 = Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.b.x, arg_1.a.a) >> (u_input.b % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, u_input.b), ~vec2<u32>(0u, 20471u)))), vec4<bool>(arg_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -498f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(695f)) - 301f), false, true));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2049f - -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-352f, 463f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) + _wgslsmith_f_op_f32(sign(2092f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(136f)), _wgslsmith_f_op_f32(1453f * -170f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-605f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(445f - 1483f), 1474f), -414f, 613f) * vec4<f32>(1f, 2386f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-656f, -295f), -974f, false)), -476f)));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(vec4<i32>(-19494i, u_input.a.x, 1i, u_input.d), func_1(Struct_3(vec3<f32>(329f, -669f, 1000f))), 0u), func_4(min(vec4<i32>(2147483647i, u_input.d, u_input.d, 2147483647i), vec4<i32>(7244i, u_input.a.x, u_input.d, u_input.d)), Struct_4(Struct_1(u_input.c, vec4<bool>(true, true, false, true)), true, Struct_2(Struct_1(u_input.e, vec4<bool>(false, false, true, false)), Struct_1(u_input.e, vec4<bool>(true, true, false, true)))), u_input.c).c))), _wgslsmith_f_op_f32(f32(-1f) * -528f), -1057f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, var_0.x), -171f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -2572f)))) <= 714f;
    var var_2 = Struct_1(90725u ^ select(reverseBits(u_input.e), _wgslsmith_div_u32(u_input.b.x >> (1u % 32u), u_input.b.x), var_1), func_1(Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-821f, 626f, 248f)))).c.a.b);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(553f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, 1520f), false)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(-var_0.zy);
    var_2 = Struct_1(7563u, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(246f, _wgslsmith_mod_i32(u_input.d, abs(2147483647i | (u_input.d << (4294967295u % 32u)))));
}

