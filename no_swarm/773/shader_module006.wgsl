struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_2(!vec3<bool>(true, true, !(arg_0 >= arg_0)));
    var var_1 = true || !((-13350i != _wgslsmith_div_i32(arg_0, arg_0)) || var_0.a.x);
    var var_2 = Struct_4(abs(vec3<u32>(u_input.a & u_input.a, reverseBits(1u), u_input.a)), !var_0.a.xz, ~vec2<u32>(~(~20211u), countOneBits(u_input.a)));
    var_2 = Struct_4(var_2.a << (countOneBits(_wgslsmith_mult_vec3_u32(~var_2.a, vec3<u32>(u_input.a, 8796u, var_2.a.x))) % vec3<u32>(32u)), var_0.a.xy, select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), var_2.c, vec2<u32>(22669u, ~3907u)), vec2<u32>(~var_2.c.x, 0u), !select(var_0.a.zx, vec2<bool>(false, true), var_2.b)));
    var var_3 = Struct_4(vec3<u32>(u_input.a, 0u, ~(~var_2.c.x)), var_2.b, ~vec2<u32>(u_input.a, 1u));
    return any(var_3.b);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> u32 {
    var var_0 = !(!select(vec4<bool>(arg_0 > 0u, true, func_3(arg_1), true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1736f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1102f, 2353f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(972f, 380f), 184f))) - vec2<f32>(282f, _wgslsmith_f_op_f32(floor(-616f))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-799f - -662f), _wgslsmith_f_op_f32(-443f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f - 183f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-513f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -590f)))), -416f);
    let var_3 = Struct_4(~select(arg_2 ^ arg_2, ~arg_2, var_0.wyy) | vec3<u32>(61922u, countOneBits(u_input.a) ^ firstTrailingBit(16469u), _wgslsmith_mult_u32(firstLeadingBit(arg_2.x), 10309u)), vec2<bool>(true | (var_1.x < var_1.x), any(select(vec2<bool>(false, true), var_0.yx, true))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(~4294967295u, ~1u), arg_0), _wgslsmith_sub_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(arg_0, arg_0)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, arg_2.x), arg_2.zy), _wgslsmith_sub_vec2_u32(vec2<u32>(61171u, arg_2.x), vec2<u32>(20135u, 35620u))))));
    let var_4 = var_2.xx;
    return 28715u;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_2(select(vec3<bool>(!func_3(arg_0), arg_1.b.a.x, arg_2.x), vec3<bool>(arg_1.b.a.x, true, arg_2.x), !arg_1.b.a));
    var var_1 = Struct_1(arg_0, select(select(select(vec4<bool>(var_0.a.x, arg_1.b.a.x, var_0.a.x, var_0.a.x), select(vec4<bool>(arg_2.x, arg_1.b.a.x, arg_1.b.a.x, true), vec4<bool>(true, false, var_0.a.x, true), arg_2.x), select(vec4<bool>(false, arg_1.b.a.x, arg_1.b.a.x, false), vec4<bool>(var_0.a.x, arg_1.c.x, arg_1.c.x, false), vec4<bool>(true, true, arg_2.x, true))), vec4<bool>(var_0.a.x, true, var_0.a.x | arg_1.c.x, false), !select(vec4<bool>(arg_1.b.a.x, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, true, false, false), arg_1.c.x)), vec4<bool>(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), !all(vec4<bool>(var_0.a.x, arg_1.c.x, var_0.a.x, true)), true), vec4<bool>(true, arg_2.x, true, func_3(arg_0))));
    let var_2 = !vec2<bool>((false && arg_2.x) & true, !any(!vec3<bool>(var_0.a.x, false, false)));
    var_1 = Struct_1(var_1.a, !select(!vec4<bool>(false, arg_2.x, true, arg_2.x), vec4<bool>(true, !var_1.b.x, true, any(vec4<bool>(arg_1.c.x, arg_2.x, var_1.b.x, var_0.a.x))), any(var_1.b)));
    let var_3 = Struct_4(select(vec3<u32>(1u, 1u, ~(u_input.a ^ 10375u)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(38145u, u_input.a, 1u), vec3<u32>(3949u, 0u, u_input.a))), true), vec2<bool>(false, true && (var_0.a.x || true)), ~(~vec2<u32>(9219u, _wgslsmith_add_u32(u_input.a, 37988u))));
    return any(select(var_0.a, arg_1.b.a, true));
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = func_4(arg_1.x | ~countOneBits(-1i), Struct_3(vec2<u32>(_wgslsmith_clamp_u32(func_2(u_input.a, arg_0, vec3<u32>(u_input.a, u_input.a, u_input.a)), ~u_input.a, 0u), ~(~0u)), Struct_2(vec3<bool>(func_3(arg_1.x), true, all(vec3<bool>(true, true, false)))), vec3<bool>(true, true, false)), vec2<bool>(true, !any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-368f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -490f), _wgslsmith_f_op_f32(-379f * 1032f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(477f - -582f)))), -401f)));
    var_1 = _wgslsmith_div_f32(188f, -1152f);
    let var_2 = Struct_4((~vec3<u32>(1u, u_input.a, 1u) & (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, 1u), vec3<u32>(u_input.a, 1u, 76641u)) & ~vec3<u32>(51436u, 18437u, 1u))) & _wgslsmith_add_vec3_u32(vec3<u32>(select(u_input.a, 4294967295u, false), ~u_input.a, firstTrailingBit(4294967295u)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), _wgslsmith_mult_u32(u_input.a, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 20919u), vec4<u32>(128814u, u_input.a, u_input.a, 4294967295u)))), select(select(!(!vec2<bool>(var_0, true)), vec2<bool>(u_input.a <= 144727u, true), select(!vec2<bool>(var_0, var_0), vec2<bool>(false, var_0), true)), select(select(select(vec2<bool>(false, true), vec2<bool>(var_0, false), vec2<bool>(var_0, false)), vec2<bool>(true, var_0), !vec2<bool>(true, var_0)), select(select(vec2<bool>(true, false), vec2<bool>(true, var_0), vec2<bool>(false, true)), vec2<bool>(var_0, true), var_0), vec2<bool>(select(false, false, var_0), var_0)), false), vec2<u32>(3627u, firstLeadingBit(select(u_input.a, ~40625u, var_0))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(579f + _wgslsmith_f_op_f32(1110f - _wgslsmith_f_op_f32(max(1224f, -1000f)))) - 1887f) - _wgslsmith_f_op_f32(min(-115f, -245f)));
    return !select(var_2.b, select(vec2<bool>(var_2.b.x, -14892i >= arg_0), select(select(var_2.b, vec2<bool>(var_2.b.x, var_0), true), var_2.b, var_0), select(select(var_2.b, vec2<bool>(true, false), var_2.b), select(var_2.b, vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)), false)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!(!func_1(-27166i, vec4<i32>(2147483647i, 1i, 1i, 2073i))), vec2<bool>(true, true), true), select(vec2<bool>(true, true), !func_1(~29284i, ~vec4<i32>(1i, -2147483647i, 2147483647i, 15883i)), false), all(!vec4<bool>(true, select(false, false, true), false, true)));
    var_0 = vec2<bool>(!(!(var_0.x & any(vec4<bool>(var_0.x, true, true, true)))), all(select(select(!vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, var_0.x), var_0.x), select(!vec3<bool>(var_0.x, true, false), vec3<bool>(true, true, true), select(true, true, true)), true)));
    var var_1 = ~(~_wgslsmith_mult_u32(u_input.a >> (17427u % 32u), 12131u));
    var var_2 = true;
    var_0 = !select(select(!(!vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(true, true), vec2<bool>(false, false), var_0.x), func_1(47677i >> (u_input.a % 32u), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 168i, 0i, -43185i), vec4<i32>(-1i, -4682i, -1i, -2147483647i)))), vec2<bool>(var_0.x | all(vec2<bool>(var_0.x, var_0.x)), true), _wgslsmith_clamp_i32(1i, 0i, -1i) == -29845i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_add_i32(~5130i, -(1i >> (1u % 32u))), (~0i << (_wgslsmith_mod_u32(12974u, u_input.a) % 32u)) >> ((1u >> (~u_input.a % 32u)) % 32u), 2147483647i, i32(-1i) * 0i), u_input.a);
}

