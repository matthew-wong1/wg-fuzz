struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 56635u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> f32 {
    let var_0 = Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_f32(-arg_3));
    global0 = arg_1.a.x;
    let var_1 = vec2<i32>(-reverseBits(_wgslsmith_sub_i32(4134i, 0i)), -46117i) | select(_wgslsmith_div_vec2_i32(min(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-1301i, 0i), vec2<i32>(-10557i, 2147483647i)), select(vec2<i32>(21172i, 13320i), vec2<i32>(1i, -671i), true)), vec2<i32>(_wgslsmith_mult_i32(12751i, 0i), ~(-29164i))), vec2<i32>(_wgslsmith_mod_i32(-3863i, 1592i), _wgslsmith_mod_i32(5183i, _wgslsmith_add_i32(-2147483647i, 12952i))), !vec2<bool>(!var_0.a.x, false & var_0.a.x));
    global0 = min(0u ^ arg_2.x, 0u);
    var var_2 = select(abs(firstTrailingBit(~vec3<i32>(var_1.x, var_1.x, 0i))), _wgslsmith_sub_vec3_i32(~(vec3<i32>(2147483647i, -41569i, 1590i) & (vec3<i32>(1i, var_1.x, 31261i) ^ vec3<i32>(var_1.x, var_1.x, var_1.x))), vec3<i32>(-var_1.x << (firstTrailingBit(u_input.a.x) % 32u), -14681i, reverseBits(-33722i) >> (~u_input.a.x % 32u))), vec3<bool>(true, ~(~arg_1.a.x) >= 1u, false));
    return var_0.b;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-505f)) - _wgslsmith_f_op_f32(-231f * -845f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a), Struct_1(u_input.a), vec4<u32>(0u, arg_0, 1u, 11569u), -290f)) + _wgslsmith_f_op_f32(-198f * 1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2816f * _wgslsmith_f_op_f32(select(-497f, -161f, false))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(664f, -756f) - _wgslsmith_f_op_f32(abs(-378f)))))));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a), Struct_1(u_input.a), vec4<u32>(4294967295u, 45233u, arg_0, arg_0), var_0.x)) * var_0.x), var_0.x, all(vec4<bool>(true, true, true, true)))), 1332f), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-627f, _wgslsmith_f_op_f32(f32(-1f) * -168f))) * _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(arg_0, 1u, u_input.a.x)), Struct_1(u_input.a), vec4<u32>(0u, arg_0, 53458u, u_input.a.x) ^ vec4<u32>(4294967295u, arg_0, u_input.a.x, 0u), _wgslsmith_f_op_f32(-733f - 1030f)))))));
    var var_2 = Struct_1(u_input.a);
    var_2 = Struct_1(firstLeadingBit(~var_2.a));
    return Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, ~vec3<u32>(1u, u_input.a.x, var_2.a.x), var_2.a >> (vec3<u32>(0u, arg_0, 42744u) % vec3<u32>(32u))), abs(vec3<u32>(var_2.a.x, 4294967295u, 1u)))));
}

fn func_1(arg_0: u32) -> f32 {
    global0 = ~u_input.a.x;
    var var_0 = abs(1i);
    var var_1 = Struct_3(vec2<bool>((firstLeadingBit(1u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, u_input.a.x), u_input.a) % 32u)) > u_input.a.x, all(vec4<bool>(true, any(vec4<bool>(true, false, true, true)), all(vec2<bool>(false, true)), any(vec4<bool>(true, false, true, true))))), 1000f);
    var var_2 = Struct_2(Struct_1(vec3<u32>(u_input.a.x, countOneBits(u_input.a.x), reverseBits(arg_0 << (34769u % 32u)))));
    var_2 = func_2(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.a.x, 0u, arg_0, 35604u) ^ vec4<u32>(arg_0, 65650u, 0u, 0u), min(vec4<u32>(8640u, 14189u, 7103u, 28004u), vec4<u32>(1031u, u_input.a.x, 1u, var_2.a.a.x))), vec4<u32>(var_2.a.a.x, 4294967295u, u_input.a.x, u_input.a.x)), ~countOneBits(vec4<i32>(1i, 1i, 1i, 16007i)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(false, any(select(var_1.a, vec2<bool>(var_1.a.x, false), vec2<bool>(var_1.a.x, false))), true, true))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: i32) -> f32 {
    var var_0 = Struct_3(!(!vec2<bool>(select(arg_1, arg_1, true), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(141f, -1000f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + -2656f)));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b))));
    let var_1 = reverseBits(reverseBits(arg_0));
    var var_2 = max(-(-abs(vec2<i32>(-3884i, arg_3)) >> (_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)), ~vec2<u32>(4294967295u, arg_2.x)) % vec2<u32>(32u))), -(~firstTrailingBit(vec2<i32>(var_1, 2147483647i))));
    var var_3 = Struct_3(var_0.a, var_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-334f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(u_input.a.x, u_input.a.x, 1u);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -547f);
    var_1 = _wgslsmith_f_op_f32(func_4(21466i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(31673u))) != -1670f, ~abs(vec3<u32>(var_0.x, u_input.a.x, ~var_0.x)), min(reverseBits(-(~44892i)), i32(-1i) * -1i)));
    let var_2 = vec4<u32>(~reverseBits(~1u), ~_wgslsmith_mod_u32(76764u, 4294967295u), 31020u, func_2(u_input.a.x, _wgslsmith_add_vec4_i32(vec4<i32>(abs(1i), 0i, 1i, ~(-16169i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(20036i, -2147483647i, -5641i, -1i), vec4<i32>(-1i, 2147483647i, -744i, 35366i)))).a.a.x);
    var_1 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(-377f, 108f)));
}

