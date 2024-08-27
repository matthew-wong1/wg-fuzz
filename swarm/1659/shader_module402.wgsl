struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>) -> vec3<u32> {
    let var_0 = (u_input.c & u_input.c) >= _wgslsmith_mult_u32(abs(min(~u_input.c, 81230u)), max(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, 1u), u_input.c), ~(~u_input.c)));
    var var_1 = select(!select(select(!vec2<bool>(var_0, var_0), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(var_0, false)), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(true, false, var_0))), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(var_0, false))), vec2<bool>(all(vec2<bool>(true, any(vec3<bool>(true, false, var_0)))), var_0), !(any(vec2<bool>(var_0, true)) | !(20834i > u_input.b)));
    var var_2 = Struct_1(-33694i, true, max(-_wgslsmith_mod_i32(_wgslsmith_div_i32(-1i, 11664i), -2639i), firstTrailingBit(~1i) ^ 2147483647i));
    let var_3 = !var_2.b;
    var var_4 = Struct_1(select(-(~(u_input.b >> (u_input.c % 32u))), _wgslsmith_mod_i32(-u_input.b, 52722i), _wgslsmith_f_op_f32(1257f - arg_1.x) != 1f), true, 0i);
    return vec3<u32>(~26091u, u_input.c, u_input.c);
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(abs(u_input.c)), 0u, ~u_input.c) & ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, u_input.c), ~u_input.c, _wgslsmith_add_u32(u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(firstLeadingBit(~min(vec3<u32>(1u, u_input.c, 1u), vec3<u32>(u_input.c, u_input.c, 30103u))), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 46391u, u_input.c), vec3<u32>(64663u, 56192u, u_input.c), vec3<u32>(u_input.c, u_input.c, 42331u))) >> (~(~vec3<u32>(u_input.c, u_input.c, 45461u)) % vec3<u32>(32u))));
    var_0 = ~(~_wgslsmith_div_vec3_u32(func_3(vec4<f32>(-401f, -452f, -1071f, 1057f), vec4<f32>(-427f, 954f, -1894f, -1000f)) ^ select(vec3<u32>(4294967295u, 0u, 31683u), vec3<u32>(0u, var_0.x, 11941u), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), min(~vec3<u32>(u_input.c, var_0.x, 24957u), vec3<u32>(1u, 0u, 3706u))));
    let var_1 = !vec4<bool>(false, arg_0.x, true, arg_0.x);
    var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(~_wgslsmith_mult_u32(u_input.c, var_0.x), 78741u, 1u), firstTrailingBit(~vec3<u32>(var_0.x | 49253u, 1u, ~u_input.c)));
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(~(~var_0.x), var_0.x | var_0.x), var_0.yz) >> (vec2<u32>(1u, 56856u) % vec2<u32>(32u));
    return min(~func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, -2006f, 1037f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1705f, 1341f, 623f, -665f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1205f, 625f, 449f, -387f), vec4<f32>(-1745f, -2048f, -2366f, -443f), true)) + vec4<f32>(-1084f, 705f, 1000f, -1402f))).x, var_0.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 423f;
    var var_1 = ~arg_1.a != _wgslsmith_dot_vec3_i32(firstTrailingBit(min(vec3<i32>(arg_1.a, -1i, u_input.b) >> (vec3<u32>(1u, 4294967295u, u_input.c) % vec3<u32>(32u)), vec3<i32>(0i, u_input.a, arg_1.a))), -firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a, 9457i, arg_1.c), vec3<i32>(u_input.b, 42838i, -2147483647i), vec3<i32>(arg_1.c, arg_1.a, arg_1.c))));
    var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_mult_i32(0i, firstLeadingBit(_wgslsmith_mult_i32(1i, arg_1.c))) & (u_input.a >> (abs(~0u) % 32u)), true, firstLeadingBit(firstTrailingBit(u_input.b)));
    let var_3 = arg_1;
    return Struct_1(u_input.a, var_3.b && !any(vec3<bool>(true, var_2.b, var_3.b)), -u_input.a);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    let var_0 = vec3<i32>(~0i, u_input.a, ~u_input.a);
    var var_1 = Struct_1(var_0.x, false, firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, -1i, -7425i), -44870i)));
    var var_2 = Struct_1(1i, true, -1i);
    var var_3 = !var_2.b;
    var var_4 = func_4(u_input.c == (firstLeadingBit(~u_input.c) << (~func_2(vec4<bool>(var_1.b, false, true, var_2.b)) % 32u)), Struct_1(22362i, var_1.b, u_input.a));
    return var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-289f * -790f)))) == 389f, -u_input.b);
    var_0 = Struct_1(var_0.c, all(vec3<bool>(true, var_0.b, true)), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_add_u32(49830u ^ u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u), vec4<u32>(4294967295u, u_input.c, 1u, u_input.c)))) & u_input.b);
    let var_1 = func_4(true, func_4(all(!(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))), Struct_1(_wgslsmith_clamp_i32(-20385i, -var_0.c, var_0.c), !var_0.b, 1i)));
    var_0 = Struct_1(max(countOneBits(_wgslsmith_sub_i32(-15781i, _wgslsmith_add_i32(-23735i, 1i))), 4203i | var_1.a), var_0.b, -25340i);
    var var_2 = Struct_1(func_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(567f, -725f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1467f), _wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(max(-195f, 1000f)))), ~u_input.c), ~26833u <= u_input.c, abs(~_wgslsmith_sub_i32(1i, var_1.a)) >> (u_input.c % 32u));
    var_0 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(652f, -773f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1177f * -858f), _wgslsmith_f_op_f32(select(1037f, -1034f, var_0.b))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-243f, 1000f, -578f))))))));
    var var_4 = Struct_1(-52753i, true, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(var_1.c, -2147483647i) & ~vec2<i32>(-11642i, var_4.c)), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 39407u, 0u, 1u))), vec2<u32>(~0u, ~(1259u & u_input.c) | u_input.c), -firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_4.c), vec2<i32>(var_2.a, var_0.a))) ^ countOneBits(vec2<i32>(27217i, var_2.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, -1i), vec2<i32>(-1i, -1i)), firstLeadingBit(var_4.c)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(var_1.c, var_2.a), firstTrailingBit(41070i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c, -59854i, 1i, var_0.a), firstTrailingBit(vec4<i32>(0i, 2147483647i, var_2.c, 27606i))))));
}

