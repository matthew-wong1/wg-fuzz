struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = vec3<u32>(u_input.b, abs(68850u), abs(32966u));
    let var_1 = false;
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_u32(20887u, ~5714u), true)), true, Struct_1(u_input.a.x, all(vec2<bool>(true, 8923u == var_0.x))), min(u_input.a, vec4<u32>(max(_wgslsmith_mod_u32(var_0.x, 17791u), var_0.x), _wgslsmith_mod_u32(var_0.x, abs(var_0.x)), u_input.b, countOneBits(_wgslsmith_mult_u32(1u, 1072u)))));
    var var_3 = select(select(vec2<bool>(var_1, var_2.c.b), vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, var_1), false)), all(select(vec3<bool>(false, var_2.c.b, true), vec3<bool>(false, var_2.a.a.b, true), vec3<bool>(var_2.a.a.b, var_1, true)))), true), vec2<bool>(abs(select(46803u, 28087u, false)) != ~_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(u_input.b, u_input.a.x)), select(var_1, var_1, var_2.b)), !(!vec2<bool>(true, var_2.c.b | var_1)));
    var_3 = vec2<bool>(!var_3.x, var_1);
    return !vec2<bool>(var_1, all(vec4<bool>(select(var_1, true, var_3.x), true != var_3.x, true, var_2.a.a.b)));
}

fn func_2() -> Struct_3 {
    let var_0 = select(select(!select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), func_3()), select(vec2<bool>(true, true), vec2<bool>(true, true), firstLeadingBit(u_input.e) > _wgslsmith_clamp_u32(u_input.d, u_input.b, u_input.a.x)), select(!func_3(), vec2<bool>(false, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, true), func_3(), true))), vec2<bool>(true, true), !((_wgslsmith_sub_u32(u_input.b, u_input.c) == abs(1u)) && !any(vec3<bool>(false, false, true))));
    let var_1 = Struct_1(~u_input.c, false);
    var var_2 = var_0.x;
    var var_3 = Struct_4(vec2<i32>(-1i) * -(~(-vec2<i32>(-1i, -2147483647i))), reverseBits(_wgslsmith_clamp_vec3_u32(abs(u_input.a.yzz) >> (~vec3<u32>(4294967295u, 8846u, u_input.e) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, 0u, var_1.a), u_input.a.wyw)));
    var var_4 = ~var_3.b;
    return Struct_3(Struct_2(var_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-568f)))) + _wgslsmith_f_op_f32(f32(-1f) * -209f)) <= _wgslsmith_f_op_f32(ceil(-554f)), Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_4.x, 0u, 0u)), select(vec3<u32>(var_3.b.x, 4294967295u, var_3.b.x), vec3<u32>(var_1.a, u_input.e, var_3.b.x), false)) >> (~min(107561u, var_4.x) % 32u), var_4.x != 0u), ~u_input.a);
}

fn func_1() -> vec3<bool> {
    let var_0 = 9438u;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-703f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(-1572f, 558f), _wgslsmith_f_op_f32(sign(404f))))));
    var var_3 = Struct_1(4294967295u, false);
    var_3 = func_2().c;
    return vec3<bool>(var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-1054f)), -675f)) * 367f) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1991f + 1163f), _wgslsmith_div_f32(-1970f, 864f))))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(func_1(), func_1(), all(vec4<bool>(false, false, true, true))));
    var var_1 = -340f;
    var var_2 = !var_0;
    var var_3 = true;
    var var_4 = Struct_4(vec2<i32>(~(-max(-42555i, -26488i)), -(~1i)), u_input.a.wzw);
    var var_5 = vec4<bool>(!any(select(func_1(), func_1(), !vec3<bool>(var_0, var_0, true))), var_0, true, -1409f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1813f), 331f, var_0)) - 113f));
    var_4 = Struct_4(abs(abs(var_4.a) >> (~var_4.b.yz % vec2<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(56317u, var_4.b.x, ~var_4.b.x), reverseBits(abs(vec3<u32>(var_4.b.x, 4294967295u, 47621u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-26971i, -reverseBits(~var_4.a.x), max(~_wgslsmith_sub_i32(var_4.a.x, 0i), select(1i, -var_4.a.x, true)), reverseBits(1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1166f, _wgslsmith_f_op_f32(trunc(-1000f)), -944f, _wgslsmith_f_op_f32(trunc(670f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-397f, 1282f, 1177f, 1000f), vec4<f32>(874f, 1212f, 185f, 507f), select(vec4<bool>(var_5.x, false, var_5.x, true), vec4<bool>(var_5.x, var_0, var_5.x, var_5.x), vec4<bool>(true, var_5.x, var_5.x, var_5.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1309f, 779f, -869f, -636f), vec4<f32>(-811f, -561f, -727f, -1225f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(542f, 999f, -656f, -101f))))));
}

