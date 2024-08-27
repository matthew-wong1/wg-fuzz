struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    var var_0 = u_input.e;
    var_0 = _wgslsmith_mod_i32(i32(-1i) * -1i, ~arg_1.x);
    var var_1 = Struct_2(-654f, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -464f), vec2<u32>(~19862u, ~(~arg_0.b.x)), !select(!arg_0.c, arg_0.c, true), !arg_0.d), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 85662i), vec2<i32>(u_input.c.x, u_input.c.x) & arg_1)), _wgslsmith_add_i32(~abs(-30798i), arg_1.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), firstLeadingBit(var_1.b.b), var_1.b.c, false);
    var_2 = var_1.b;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1664f + var_2.a))))));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = ~countOneBits(select(vec4<u32>(~26332u, _wgslsmith_sub_u32(u_input.a.x, arg_0.b.x), ~70088u, _wgslsmith_mod_u32(4294967295u, 4294967295u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, 15565u, arg_0.b.x), vec4<u32>(arg_0.b.x, 0u, u_input.a.x, 1u))), false));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.a)), ~u_input.a.zy, select(vec3<bool>(true && select(true, false, arg_0.d), true, arg_0.c.x), vec3<bool>(!(arg_0.c.x && arg_0.c.x), all(vec3<bool>(true, true, true)), true), false), any(!vec4<bool>(true, all(arg_0.c.zz), arg_0.d, false)));
    let var_2 = select(!(!(!vec3<bool>(false, true, arg_0.d))), vec3<bool>(any(arg_0.c), (var_1.c.x && var_1.c.x) && arg_0.d, true), arg_0.c);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(func_3(Struct_1(702f, var_1.b, vec3<bool>(var_2.x, false, var_1.c.x), true), vec2<i32>(u_input.c.x, u_input.e), var_1.a)))), _wgslsmith_mult_vec2_u32(vec2<u32>(~(~16537u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, u_input.a.x, arg_0.b.x), vec3<u32>(3301u, 4294967295u, 0u))), _wgslsmith_div_vec2_u32(arg_0.b, vec2<u32>(15381u, 4294967295u))), !(!arg_0.c), true);
    var var_4 = -979f;
    return !var_1.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = Struct_1(-533f, u_input.a.zx, func_2(Struct_1(arg_2, vec2<u32>(firstLeadingBit(arg_1), 2993u), arg_0.xww, arg_0.x)), all(arg_0.zwz));
    var var_1 = select(arg_0.zxz, arg_0.xww, arg_0.yzy);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -183f), 1358f)), Struct_1(890f, var_0.b, vec3<bool>(~4294967295u >= _wgslsmith_clamp_u32(8666u, 61955u, 26382u), any(vec4<bool>(arg_0.x, var_0.c.x, var_0.d, var_0.d)), var_1.x), true), 1i);
    var var_3 = u_input.a.xz ^ ~vec2<u32>(reverseBits(~0u), u_input.d);
    var_2 = Struct_2(-373f, Struct_1(var_0.a, ~var_0.b, vec3<bool>(var_0.d, !(!var_0.c.x), !any(vec4<bool>(false, var_1.x, true, var_0.c.x))), true), -2147483647i);
    return _wgslsmith_f_op_f32(-var_2.b.a);
}

fn func_4(arg_0: vec3<f32>) -> Struct_2 {
    var var_0 = -1769f;
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_1(196f, _wgslsmith_sub_vec2_u32(~reverseBits(vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_div_vec2_u32(~u_input.a.zx, vec2<u32>(u_input.d, 60233u))) & u_input.a.zz, !(!select(func_2(Struct_1(-780f, u_input.a.xx, vec3<bool>(var_1.x, var_1.x, var_1.x), true)), func_2(Struct_1(216f, u_input.a.yz, vec3<bool>(true, var_1.x, true), false)), func_2(Struct_1(579f, vec2<u32>(u_input.d, 71365u), vec3<bool>(true, true, var_1.x), var_1.x)))), true);
    var_1 = var_2.c.zz;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_2(-1068f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + var_2.a)))), ~firstLeadingBit(vec2<u32>(58402u, u_input.a.x)), var_2.c, var_1.x), u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(207f, _wgslsmith_f_op_f32(func_1(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, false, false)), firstTrailingBit(1u), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(584f * 744f), _wgslsmith_f_op_f32(-1504f + 918f))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(557f, 288f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.b.a))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, var_0.b.a)))))))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.b.a, -464f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1230f)), _wgslsmith_f_op_f32(trunc(var_0.b.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1182f + var_0.b.a) + var_0.a)))));
    let var_2 = firstLeadingBit(~(~u_input.a.yx));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, var_0.b.d, true, true), 47957u, 591f)), _wgslsmith_f_op_f32(var_1.x * -900f)) * _wgslsmith_f_op_f32(-var_0.a))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1386f, 1000f, var_0.b.a))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, 1104f, -991f)))))).b, 2147483647i);
    var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_0.a, 1f));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))))), Struct_1(var_0.a, _wgslsmith_clamp_vec2_u32(select(~var_3.b.b, var_2, select(vec2<bool>(false, var_3.b.c.x), vec2<bool>(true, var_3.b.d), vec2<bool>(false, true))), ~(vec2<u32>(26158u, var_3.b.b.x) & var_2), ~u_input.a.xx), vec3<bool>(var_3.b.c.x, var_3.b.c.x, any(var_0.b.c.xz)), any(!select(vec3<bool>(var_3.b.c.x, var_0.b.d, true), vec3<bool>(var_0.b.c.x, var_3.b.c.x, false), true))), -var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1000f, -1862f, var_1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a), -116f, _wgslsmith_f_op_f32(f32(-1f) * -867f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1145f, -166f, -950f), vec3<f32>(1718f, -1845f, var_0.a))), vec3<f32>(var_3.b.a, var_4.b.a, -607f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.b, vec2<i32>(var_4.c, -1i), 528f))), _wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(f32(-1f) * -1530f)), 1307f), var_0.b.c)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.e, ~(i32(-1i) * -2147483647i)), -47944i), select(vec3<u32>(4294967295u, abs(50947u), min(28120u, firstTrailingBit(var_0.b.b.x))), vec3<u32>(firstTrailingBit(var_3.b.b.x), 0u, 16695u), select(var_3.b.c, !vec3<bool>(var_0.b.d, var_0.b.c.x, var_4.b.d), var_3.b.c.x)), -1670f);
}

