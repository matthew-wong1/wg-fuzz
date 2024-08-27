struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec3<bool> {
    var var_0 = true;
    var_0 = true;
    var_0 = select(true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), abs(vec2<u32>(1u, 1u))) >= 58106u, true);
    let var_1 = Struct_1(~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(70047u, 1u)), vec2<u32>(18149u, ~0u), vec2<u32>(1u, 1u)));
    var_0 = !(!any(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)));
    return select(vec3<bool>(true, !any(vec3<bool>(false, false, true)) && true, true), select(select(vec3<bool>(true, var_1.a.x >= 0u, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false)), vec3<bool>(true, true, true), false), vec3<bool>(true, false, false)), vec3<bool>(!(!any(vec4<bool>(false, true, false, true))), !(4294967295u > min(var_1.a.x, 4294967295u)), true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -countOneBits(~vec3<i32>(u_input.a, 34220i, u_input.a) ^ vec3<i32>(~u_input.b.x, i32(-1i) * -1i, u_input.b.x >> (arg_0.a.x % 32u)));
    var var_1 = vec2<i32>(-1i) * -(~vec2<i32>(-u_input.b.x, 2147483647i));
    let var_2 = select(func_3(), vec3<bool>(!any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), func_3().x), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, false))), vec3<bool>(true, true, true), var_0.x <= 0i));
    var var_3 = Struct_1(~abs(vec2<u32>(24979u, ~1u)));
    var_1 = abs(vec2<i32>(abs(-1i), i32(-1i) * -21040i)) >> (arg_0.a % vec2<u32>(32u));
    return Struct_1(abs(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, 0u, arg_0.a.x), vec3<u32>(5324u, 1u, 46661u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec3<u32>(arg_1.a.x, 74632u, arg_0.a.x)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = 27520i;
    let var_1 = Struct_1(func_2(arg_1, arg_1).a);
    let var_2 = Struct_1(var_1.a);
    var var_3 = arg_1.a.x;
    var_0 = u_input.a;
    return select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, ~var_2.a.x), vec3<u32>(max(var_2.a.x, 1u), 4294967295u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_2.a, var_1.a), abs(45140u)) >> (abs(3626u) % 32u)), select(var_2.a, vec2<u32>(~_wgslsmith_mod_u32(4294967295u, var_1.a.x), countOneBits(var_1.a.x)), vec2<bool>(func_3().x, (38200i ^ u_input.b.x) <= abs(2147483647i))), func_3().x);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(~func_4(15552u, func_2(Struct_1(vec2<u32>(4294967295u, 9048u)), Struct_1(vec2<u32>(0u, 1u)))), vec2<u32>(61092u, 0u)));
    var var_1 = vec2<u32>(var_0.a.x, var_0.a.x);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(min(reverseBits(u_input.b.x), reverseBits(1i)), ~(-arg_0.x | -u_input.a)), firstTrailingBit(_wgslsmith_dot_vec4_i32(arg_0, ~arg_0)));
    let var_3 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), var_0.a.x <= var_1.x), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(!(all(vec4<bool>(true, true, false, false)) | true), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f * arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -657f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), (var_0.a.x > 1u) && (true && select(true, false, true))), select(!vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), true), vec4<bool>(false, !(var_0.a.x > 0u), true, select(true, true, true))));
    var var_4 = Struct_1(~var_0.a);
    return abs(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(73157u, func_1(vec4<i32>(u_input.b.x, u_input.a, 2147483647i, 0i), 1751f), _wgslsmith_div_u32(0u, 90105u), 4294967295u), ~(~vec4<u32>(1u, 37889u, 4294967295u, 0u))), _wgslsmith_sub_u32(5404u, func_4(1u, func_2(func_2(Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(29996u, 4294967295u))), func_2(Struct_1(vec2<u32>(40499u, 1u)), Struct_1(vec2<u32>(0u, 1u))))).x), 4294967295u);
    var var_1 = func_2(func_2(func_2(Struct_1(vec2<u32>(30995u, 59617u)), func_2(func_2(Struct_1(vec2<u32>(var_0.x, var_0.x)), Struct_1(var_0.yx)), func_2(Struct_1(var_0.yx), Struct_1(var_0.xz)))), Struct_1(_wgslsmith_clamp_vec2_u32(var_0.xy, var_0.zz, ~vec2<u32>(var_0.x, 49870u)))), Struct_1(var_0.xz));
    var_1 = func_2(Struct_1(vec2<u32>(min(reverseBits(24399u), var_0.x), 25843u)), func_2(Struct_1(vec2<u32>(~1u, 26784u)), Struct_1(~var_0.zx)));
    let var_2 = func_2(func_2(Struct_1(firstLeadingBit(firstLeadingBit(vec2<u32>(var_1.a.x, var_1.a.x)))), func_2(Struct_1(_wgslsmith_sub_vec2_u32(var_0.xy, vec2<u32>(1u, var_0.x))), Struct_1(var_0.zx & vec2<u32>(1u, var_1.a.x)))), func_2(Struct_1(vec2<u32>(_wgslsmith_mult_u32(var_0.x, 1u), abs(var_0.x))), Struct_1(select(var_1.a, vec2<u32>(var_0.x, 25833u), select(vec2<bool>(false, true), vec2<bool>(false, true), false)))));
    var_1 = var_2;
    var var_3 = var_2;
    var var_4 = !any(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(0i, ~u_input.a)), ~abs(~61196u) << (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_3.a.x, var_3.a.x, 0u), vec3<u32>(44716u, 60859u, 0u) ^ var_0), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 0u, var_3.a.x), vec3<u32>(var_0.x, 0u, var_3.a.x), var_0) ^ countOneBits(var_0)) % 32u), select(vec2<i32>(u_input.b.x, -4923i), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, 15134i)), ~u_input.b.xx), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) & -_wgslsmith_sub_vec2_i32(u_input.b.zz, -vec2<i32>(u_input.a, -13261i)));
}

