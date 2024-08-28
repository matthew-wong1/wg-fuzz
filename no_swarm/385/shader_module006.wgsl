struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> f32 {
    return arg_2.b;
}

fn func_1() -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f) + _wgslsmith_f_op_f32(round(1233f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(632f * -359f) - _wgslsmith_f_op_f32(f32(-1f) * -664f)), -768f) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1757f, -592f, -886f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1330f, -357f, 168f)), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, 465f, -193f))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-464f * 287f), _wgslsmith_f_op_f32(func_2(4294967295u, true, Struct_1(vec2<bool>(false, true), -167f, vec4<i32>(-1i, 2147483647i, 22810i, u_input.a.x), 48541u))), _wgslsmith_f_op_f32(floor(1000f))))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = ~(((vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) & (vec4<u32>(32467u, u_input.b, 0u, 25962u) >> (vec4<u32>(743u, 0u, 4294967295u, 0u) % vec4<u32>(32u)))) >> (~(vec4<u32>(17910u, u_input.b, 4294967295u, 4294967295u) >> (vec4<u32>(1u, u_input.b, 1u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(40452u, countOneBits(u_input.b), 4294967295u, ~4294967295u), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)) % vec4<u32>(32u)));
    var var_1 = (((~u_input.b ^ (4294967295u | var_0.x)) << (firstLeadingBit(_wgslsmith_mult_u32(0u, u_input.b)) % 32u)) ^ u_input.b) | var_0.x;
    var var_2 = arg_1;
    var var_3 = 1u;
    var_3 = firstTrailingBit(u_input.b);
    return Struct_1(!(!vec2<bool>(var_0.x > u_input.b, all(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), ~(~(~vec4<i32>(-23826i, 9190i, 27803i, arg_1))) << (_wgslsmith_div_vec4_u32(min(select(vec4<u32>(13015u, var_0.x, var_0.x, u_input.b), vec4<u32>(34878u, u_input.b, 3954u, var_0.x), false), ~vec4<u32>(var_0.x, u_input.b, 1u, u_input.b)), vec4<u32>(u_input.b, var_0.x, _wgslsmith_mod_u32(42201u, 20931u), var_0.x)) % vec4<u32>(32u)), 23626u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(_wgslsmith_f_op_vec3_f32(func_1()), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(u_input.b << (1u % 32u), all(vec3<bool>(true, false, false)), Struct_1(vec2<bool>(true, true), -1973f, vec4<i32>(53209i, 1i, u_input.a.x, -16725i), 69328u))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1713f) * _wgslsmith_f_op_f32(f32(-1f) * -1578f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-827f, 704f, -575f, var_0.b), vec4<f32>(var_0.b, var_0.b, -423f, 843f), vec4<bool>(false, true, var_0.a.x, var_0.a.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, -413f, var_0.b) * vec4<f32>(-1397f, var_0.b, -522f, -1612f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-163f, var_0.b, var_0.b, var_0.b))))));
    var var_2 = vec4<u32>(~62040u, 4294967295u >> (max(u_input.b, var_0.d) % 32u), ~41712u, var_0.d);
    var var_3 = var_0.c.yx;
    var_2 = ~_wgslsmith_mod_vec4_u32(min(~(~vec4<u32>(4294967295u, 4680u, 0u, u_input.b)), ~select(vec4<u32>(4836u, var_2.x, u_input.b, u_input.b), vec4<u32>(var_2.x, var_0.d, u_input.b, var_0.d), vec4<bool>(true, true, var_0.a.x, false))), select(~vec4<u32>(4294967295u, 47352u, 0u, 71956u), vec4<u32>(17681u, u_input.b, 48975u, 1u), var_0.a.x) >> ((abs(vec4<u32>(26171u, 4294967295u, 10010u, 0u)) << (~vec4<u32>(25030u, var_0.d, 4294967295u, var_2.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_4 = func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_f32(step(var_0.b, var_1.x)), _wgslsmith_f_op_f32(1000f - 615f))))), ~(~45224i), _wgslsmith_f_op_f32(ceil(var_0.b))).b;
    var var_5 = Struct_1(!(!(!(!var_0.a))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_1()).x, -242f)), ((vec4<i32>(-1i) * -var_0.c) | var_0.c) << (vec4<u32>(~(~u_input.b), 4294967295u, ~26778u, 0u) % vec4<u32>(32u)), (~u_input.b << (56886u % 32u)) << (var_0.d % 32u));
    let var_6 = firstTrailingBit(firstLeadingBit(~(~vec4<u32>(var_5.d, var_5.d, 0u, var_5.d)) >> (~select(vec4<u32>(var_2.x, 0u, var_2.x, 21048u), vec4<u32>(var_5.d, 4294967295u, 23020u, 0u), var_0.a.x) % vec4<u32>(32u))));
    var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(199f + var_4)) - 1000f), var_0.b), _wgslsmith_f_op_f32(-892f + -1073f), -535f, _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_u32(~vec2<u32>(31571u, var_0.d), reverseBits(var_6.zy << (vec2<u32>(var_0.d, 1u) % vec2<u32>(32u)))), true, func_3(_wgslsmith_f_op_vec3_f32(var_1.www * vec3<f32>(var_0.b, var_0.b, 333f)), u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -585f) - _wgslsmith_div_f32(-777f, var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1632u, _wgslsmith_mod_u32(var_6.x, var_0.d)), 1000f, vec4<i32>(-20561i, 1i, reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(firstLeadingBit(var_5.c.zz) << (_wgslsmith_add_vec2_u32(var_6.yy, vec2<u32>(0u, 36863u)) % vec2<u32>(32u)), reverseBits(_wgslsmith_div_vec2_i32(var_5.c.xy, vec2<i32>(var_0.c.x, -37948i))))), var_0.c.x, min(1u, _wgslsmith_dot_vec2_u32(~var_2.yx, select(var_2.zy, vec2<u32>(1u, u_input.b), var_0.a)) >> (var_6.x % 32u)));
}

