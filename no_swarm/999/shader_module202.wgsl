struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(~(-select(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-15951i, 2147483647i, -1i), true)));
    var var_1 = Struct_1(-(~vec3<i32>(_wgslsmith_mult_i32(var_0.a.x, var_0.a.x), _wgslsmith_mult_i32(-1i, var_0.a.x), var_0.a.x)));
    var_1 = Struct_1(reverseBits(vec3<i32>(firstTrailingBit(1i), firstLeadingBit(_wgslsmith_add_i32(23912i, var_1.a.x)), abs(var_1.a.x))));
    var_1 = Struct_1(var_1.a);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-var_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(15852i, -6192i, 0i), var_0.a))), vec2<i32>(var_1.a.x >> (min(u_input.a, 193u) % 32u), -1i)), ~var_0.a.x);
    return reverseBits(u_input.a);
}

fn func_2(arg_0: u32, arg_1: u32) -> i32 {
    var var_0 = Struct_1(min(-_wgslsmith_clamp_vec3_i32(vec3<i32>(5618i, 13971i, -2147483647i), vec3<i32>(-1i, -45818i, 4884i), vec3<i32>(-17742i, 0i, 7944i)), ~(-vec3<i32>(2147483647i, 19471i, 0i))) & vec3<i32>(-_wgslsmith_add_i32(-1i, -26961i), 2147483647i, -31733i));
    let var_1 = vec2<u32>(u_input.a, u_input.a);
    var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_0.a.x, var_0.a.x | var_0.a.x), ~(~var_0.a.x), var_0.a.x), vec3<i32>(-(~2147483647i), -var_0.a.x, ~(i32(-1i) * -2147483647i))));
    var_0 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 1i, var_0.a.x), vec3<i32>(var_0.a.x, 0i, 62287i)), -1i ^ var_0.a.x, ~(-1i)), var_0.a), var_0.a));
    var_0 = Struct_1(vec3<i32>(-_wgslsmith_mult_i32(0i, var_0.a.x) | abs(-var_0.a.x), -_wgslsmith_sub_i32(abs(1i), 47416i), -14088i));
    return select(-12475i, _wgslsmith_dot_vec2_i32(var_0.a.xy, var_0.a.yx ^ ~var_0.a.yx), any(vec3<bool>(!all(vec3<bool>(true, false, true)), false, _wgslsmith_add_u32(17973u, var_1.x) < func_3())));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: i32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(vec3<i32>(func_2(arg_0, arg_2), select(2147483647i, arg_3, arg_1), arg_3))), abs(~arg_0) << (arg_0 % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-128f, 455f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-875f, -235f)))), _wgslsmith_f_op_f32(abs(-1000f)));
    let var_1 = Struct_4(Struct_3(var_0.a, vec2<u32>(u_input.a, 6365u)), Struct_1(var_0.a.a), Struct_2(Struct_1(vec3<i32>(-1i) * -var_0.a.a), var_0.b >> (118712u % 32u), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-414f - 2054f), var_0.c.x), var_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d)) + -1830f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - 1847f)), !arg_1 | false))), arg_3);
    var var_2 = var_1;
    var var_3 = !vec2<bool>(true, !(!all(vec3<bool>(true, arg_1, arg_1))));
    var var_4 = !select(!(!(!vec3<bool>(arg_1, arg_1, false))), select(!(!vec3<bool>(var_3.x, false, true)), vec3<bool>(true, false, !arg_1), vec3<bool>(var_3.x, true, 43489u == arg_2)), !select(vec3<bool>(var_3.x, true, arg_1), vec3<bool>(arg_1, true, true), false));
    return !select(select(!(!vec4<bool>(var_3.x, true, true, true)), select(select(vec4<bool>(false, false, var_3.x, true), vec4<bool>(false, var_4.x, true, var_3.x), true), select(vec4<bool>(arg_1, var_4.x, arg_1, true), vec4<bool>(var_3.x, true, var_4.x, false), true), !vec4<bool>(var_3.x, true, var_4.x, var_4.x)), arg_1), select(select(vec4<bool>(var_3.x, var_4.x, arg_1, var_3.x), !vec4<bool>(arg_1, true, false, var_3.x), var_0.c.x <= var_0.c.x), vec4<bool>(true, select(true, arg_1, var_3.x), any(vec4<bool>(var_3.x, true, arg_1, false)), true), true), var_4.x & true);
}

fn func_4(arg_0: vec4<bool>) -> vec3<i32> {
    return -_wgslsmith_mod_vec3_i32(-(vec3<i32>(1i, 1i, 1i) | firstTrailingBit(vec3<i32>(-3277i, -7863i, 1i))), ~_wgslsmith_mod_vec3_i32(min(vec3<i32>(2147483647i, 2147483647i, 1i), vec3<i32>(-2147483647i, -54808i, 1i)), vec3<i32>(28502i, 17005i, 26988i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), all(vec4<bool>(true, false, true, true)), all(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true))));
    var var_1 = -381f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f * 165f));
    var var_3 = Struct_3(Struct_1(~func_4(func_1(1u, var_0, 88282u, -2147483647i))), ~vec2<u32>(countOneBits(max(1u, u_input.a)), u_input.a));
    let var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1576f, -794f, var_2, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, 834f)) * vec4<f32>(var_2, var_2, var_2, -395f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, var_2, var_2) + vec4<f32>(-1000f, -633f, var_2, var_2)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, var_2, var_2))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, var_2, 429f, var_2))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_2)))))));
    let var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(-68419i, u_input.a, _wgslsmith_f_op_vec2_f32(-var_4.wz), _wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(u_input.a, 51945u, 69312u)), ~vec3<u32>(0u, u_input.a, 0u), true), reverseBits(~reverseBits(vec3<u32>(41430u, var_3.b.x, 69365u)))), ~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(68588u, 60876u, var_3.b.x), vec3<u32>(u_input.a, u_input.a, var_3.b.x)), 32864u, ~4294967295u, 1u), vec4<u32>(~63388u, var_3.b.x, _wgslsmith_div_u32(var_3.b.x, var_3.b.x), 1u)));
}

