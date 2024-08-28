struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: Struct_4,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> vec2<bool> {
    let var_0 = select(false, true, select(true, all(vec2<bool>(false, false)), !any(vec4<bool>(true, false, false, false))) && true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-651f, _wgslsmith_f_op_f32(min(1077f, _wgslsmith_f_op_f32(f32(-1f) * -397f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2129f * -1214f)), 1553f, !var_0))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2853f + -1000f) + _wgslsmith_div_f32(128f, -1108f)), 1f))));
    return !select(select(vec2<bool>(any(vec4<bool>(true, false, true, var_0)), any(vec3<bool>(false, var_0, true))), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0 && var_0), all(!vec4<bool>(true, var_0, var_0, var_0))), !select(select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), false), vec2<bool>(false, false), var_0), var_0);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<i32>) -> bool {
    var var_0 = firstTrailingBit(abs(~reverseBits(vec3<u32>(u_input.b, u_input.b, 0u) & vec3<u32>(50311u, u_input.c, 47947u))));
    let var_1 = min(_wgslsmith_clamp_u32(u_input.b, firstLeadingBit(_wgslsmith_mult_u32(u_input.c, 15409u)) | _wgslsmith_sub_u32(~u_input.b, 119200u), 32547u & (max(1u, 4294967295u) >> ((var_0.x >> (4294967295u % 32u)) % 32u))), _wgslsmith_mult_u32(min(~14011u, select(var_0.x, u_input.b | var_0.x, !arg_2)), ~_wgslsmith_div_u32(~1u, u_input.b)));
    var var_2 = arg_0;
    var_0 = ~(~abs(firstLeadingBit(~vec3<u32>(4294967295u, u_input.b, var_0.x))));
    var_0 = ~vec3<u32>(~29290u, ~var_0.x, ~u_input.c);
    return false;
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_5 {
    return arg_0;
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_3(vec4<i32>(u_input.a, u_input.a, -(~(-1i | u_input.a)), -2147483647i));
    var var_1 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, reverseBits(countOneBits(u_input.a))), -7462i), firstTrailingBit(vec2<u32>(arg_0.c, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, arg_0.c, 4294967295u), vec4<u32>(72800u, u_input.c, arg_0.c, u_input.c)))) ^ ~vec2<u32>(1u, 15938u), arg_0.c);
    var var_2 = func_4(Struct_5(Struct_3(vec4<i32>(2147483647i, 1i, _wgslsmith_dot_vec3_i32(var_0.a.zyw, vec3<i32>(0i, 43327i, 2147483647i)), var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(411f * arg_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) * _wgslsmith_f_op_f32(-970f * arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))), arg_0, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-328f, arg_0.b, -286f, arg_0.b), vec4<f32>(arg_0.b, 505f, arg_0.b, -141f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -741f), 204f, _wgslsmith_div_f32(arg_0.b, arg_0.b), -260f), select(!vec4<bool>(arg_0.a.x, false, arg_0.a.x, false), !vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(128f - -727f), 1568f, arg_0.b)))), arg_0.a.x, func_2(), any(select(select(select(arg_0.a, vec3<bool>(true, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, false)), vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a), !(!arg_0.a), func_3(arg_0.a.x, vec3<f32>(-1514f, 490f, 440f), true, vec4<i32>(var_0.a.x, var_0.a.x, 3538i, var_1.a)) & (arg_0.a.x & arg_0.a.x))));
    var var_3 = Struct_5(Struct_3((-var_2.a.a << (abs(vec4<u32>(1u, var_2.c.c, arg_0.c, 0u)) % vec4<u32>(32u))) | firstLeadingBit(var_2.a.a << (vec4<u32>(48949u, 79796u, var_2.c.c, 34687u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-297f, arg_0.b, var_2.c.b, 1145f))), _wgslsmith_f_op_vec4_f32(-var_2.b))), vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(var_2.e.x * _wgslsmith_f_op_f32(-var_2.d.x)), _wgslsmith_f_op_f32(var_2.d.x - _wgslsmith_f_op_f32(f32(-1f) * -522f)), func_4(Struct_5(var_2.a, vec4<f32>(var_2.e.x, var_2.d.x, -279f, -1067f), Struct_4(vec3<bool>(var_2.c.a.x, false, var_2.c.a.x), arg_0.b, var_1.c), var_2.d, var_2.e), !var_2.c.a.x, func_2(), !var_2.c.a.x).c.b)), func_4(func_4(func_4(func_4(Struct_5(var_2.a, vec4<f32>(938f, arg_0.b, 615f, var_2.c.b), Struct_4(var_2.c.a, arg_0.b, 19062u), vec4<f32>(var_2.b.x, -2066f, var_2.b.x, -1232f), vec3<f32>(var_2.b.x, 1131f, var_2.b.x)), false, vec2<bool>(true, arg_0.a.x), arg_0.a.x), arg_0.a.x, vec2<bool>(arg_0.a.x, var_2.c.a.x), any(arg_0.a)), false, func_2(), false), arg_0.a.x | true, vec2<bool>(!(0i > var_0.a.x), all(func_4(Struct_5(Struct_3(var_0.a), var_2.d, Struct_4(vec3<bool>(arg_0.a.x, true, var_2.c.a.x), 1000f, 57202u), vec4<f32>(-1084f, -1000f, -644f, -784f), var_2.e), arg_0.a.x, vec2<bool>(false, arg_0.a.x), var_2.c.a.x).c.a)), var_2.c.a.x).c, _wgslsmith_div_vec4_f32(var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.d, var_2.b))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.yzz) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.d.ywx - vec3<f32>(-126f, -1454f, var_2.d.x)), vec3<f32>(var_2.b.x, arg_0.b, 636f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.d.x, arg_0.b, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2513f, var_2.b.x, 405f)), select(var_2.c.a, arg_0.a, vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1647f, arg_0.b, arg_0.b), var_2.b.xzy, arg_0.a)) - _wgslsmith_f_op_vec3_f32(-var_2.e))), arg_0.a.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.b.ywz));
    return var_4.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1062f * 2362f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec3<bool>(true, false, false), 165f, u_input.c)))), !any(vec4<bool>(true, true, false, true)))), 164f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -218f)), _wgslsmith_f_op_f32(f32(-1f) * -1490f));
    let var_1 = ~(~vec4<u32>(14051u, ~firstLeadingBit(14552u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.b), vec2<u32>(36924u, u_input.c)), ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, 51060u, ~u_input.b), vec3<u32>(10659u, 8454u, _wgslsmith_add_u32(u_input.b, u_input.b))) ^ ~abs(vec3<u32>(var_1.x, 0u, 4294967295u)));
}

