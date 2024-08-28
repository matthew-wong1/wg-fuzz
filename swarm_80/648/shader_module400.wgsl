struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_i32(min(u_input.b.yyz, u_input.a.yzz), ~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x), u_input.d.xxw))));
    var_0 = -min(u_input.b.zwx, vec3<i32>(min(min(-1i, var_0.x), var_0.x), var_0.x, -(u_input.d.x | u_input.c.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1068f, 569f, -453f))), vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_2 = abs(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(3715u, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(20410u, 3792u), vec2<u32>(10794u, 0u))) & _wgslsmith_mod_u32(50479u, ~81203u), 1u));
    var_0 = u_input.b.zyy;
    return u_input.b;
}

fn func_2() -> Struct_3 {
    var var_0 = ~2147483647i;
    var var_1 = u_input.c.x;
    let var_2 = 825f;
    var var_3 = -397f;
    var var_4 = Struct_4(!(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), true))));
    return Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(-47506i, ~(-36103i & u_input.c.x), ~(~u_input.b.x), firstLeadingBit(u_input.a.x)), min(vec4<i32>(u_input.d.x, -23353i, u_input.a.x, 7335i) ^ _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.b.x, u_input.c.x, -1i, u_input.d.x)), func_3())), 0i);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_4 {
    let var_0 = Struct_3(arg_2.a, firstLeadingBit(u_input.d.x));
    var var_1 = arg_1.x;
    var var_2 = reverseBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(countOneBits(0u), _wgslsmith_div_u32(38600u, 53946u), 1u, ~24274u)), ~abs(~vec4<u32>(29655u, 4294967295u, 1u, 0u))));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(9216u, 1u, 0u), vec3<u32>(1u, 1u, 0u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 38268u), vec4<u32>(30824u, 34043u, 0u, 4294967295u)) % 32u), abs(~4294967295u), 75947u)), max(1u, ~4294967295u), 8660u, 64472u);
    var_2 = _wgslsmith_div_u32(select(4294967295u, abs(1u), arg_1.x), var_3.x);
    return Struct_4(select(!select(!vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, true, true), vec4<bool>(false, false, true, arg_1.x)), true), !(!select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(false, false, arg_1.x, arg_1.x))), !(any(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)) & (var_3.x < var_3.x))));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -649f, 643f), vec3<f32>(416f, 356f, -2573f)), vec3<f32>(-893f, -1212f, 311f))))), vec3<bool>(false, true, false), func_2());
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(458f, 584f)), _wgslsmith_f_op_f32(1000f * 523f))) + _wgslsmith_f_op_f32(sign(1409f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1294f - -339f) - _wgslsmith_f_op_f32(f32(-1f) * -167f))))));
    let var_2 = Struct_3(~(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, 0i), u_input.a))), min(_wgslsmith_sub_i32(15543i, ~u_input.d.x), u_input.a.x));
    let var_3 = -1i;
    var var_4 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(167f)), _wgslsmith_f_op_f32(-var_1), -972f))), var_0.a.zyy, func_2());
    return vec4<u32>(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(1u, 2408u))), vec2<u32>(~max(40144u, 50150u), 13494u)), 4294967295u, firstLeadingBit(_wgslsmith_mult_u32(countOneBits(1u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 21453u), 1u, _wgslsmith_clamp_u32(0u, 4294967295u, 98992u)))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(67765u, 0u), vec2<u32>(1u, 1u)), ~vec2<u32>(1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -5194i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-689f, _wgslsmith_f_op_f32(round(1668f)), _wgslsmith_f_op_f32(370f * 211f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-438f, 1000f, -531f), vec3<f32>(-158f, 711f, 1866f))))))));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~_wgslsmith_div_vec4_u32(vec4<u32>(~1u, ~4136u, 16798u, 39585u), func_1() & ~vec4<u32>(1u, 65478u, 0u, 4294967295u)));
    var var_3 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, !any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), select(select(func_4(Struct_1(var_1.a), vec3<bool>(true, true, false), Struct_3(u_input.d, 1i)).a, select(func_4(Struct_1(vec3<f32>(-1753f, -312f, -1552f)), vec3<bool>(false, false, true), Struct_3(u_input.d, var_0)).a, vec4<bool>(true, true, true, true), var_1.a.x != var_1.a.x), true), vec4<bool>(true, any(vec3<bool>(true, true, true)), false, !all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, u_input.d.x == 14692i, func_4(Struct_1(var_1.a), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), func_2()).a.x, !all(vec3<bool>(false, true, true))), select(vec4<bool>(true, false, 2147483647i >= u_input.b.x, true), func_4(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, 1553f)), vec3<bool>(true, true, true), func_2()).a, true || (var_1.a.x <= var_1.a.x)), false));
    var_3 = select(select(!select(vec4<bool>(true, true, false, var_3.x), vec4<bool>(true, var_3.x, var_3.x, false), vec4<bool>(var_3.x, false, var_3.x, var_3.x)), vec4<bool>(var_3.x, !var_3.x, true, true), any(vec4<bool>(true, any(vec4<bool>(var_3.x, var_3.x, false, false)), 295f == var_1.a.x, true))), select(vec4<bool>(var_3.x, func_4(Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)), vec3<bool>(false, true, var_3.x), Struct_3(u_input.d, -2147483647i)).a.x, true, all(!var_3.xy)), select(select(!vec4<bool>(true, var_3.x, false, true), !vec4<bool>(false, var_3.x, var_3.x, var_3.x), !vec4<bool>(var_3.x, true, var_3.x, true)), vec4<bool>(true, var_3.x, var_3.x, !var_3.x), vec4<bool>(var_0 == -2147483647i, -1403f > var_1.a.x, true, 543f != var_1.a.x)), func_4(Struct_1(vec3<f32>(-292f, var_1.a.x, -846f)), vec3<bool>(1u <= var_2.x, var_3.x == false, !var_3.x), func_2()).a), countOneBits(func_3().x & -2147483647i) <= -7502i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(func_2().a.x & (min(var_0, var_0) & var_0), max(-4688i << (_wgslsmith_mult_u32(0u, 22523u) % 32u), 3703i), -var_0));
}

