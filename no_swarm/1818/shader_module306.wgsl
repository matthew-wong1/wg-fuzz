struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: Struct_3,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(876f)) - -750f)))), -1465f));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -134f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    let var_1 = Struct_2(var_0.a);
    var var_2 = reverseBits(u_input.b);
    var var_3 = reverseBits(-4000i);
    let var_4 = vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_mult_u32(select(u_input.b, u_input.b, false), u_input.b)) != u_input.b);
    return ~(-(~vec2<i32>(~u_input.a, reverseBits(u_input.c))));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-882f, 1747f, -564f, 178f) + vec4<f32>(1000f, -594f, 311f, 548f)))))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(674f, _wgslsmith_f_op_f32(-1000f + -598f), _wgslsmith_f_op_f32(min(-1361f, 1000f)), -597f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 167f, 1162f, 557f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, -389f, -172f, 1426f) - vec4<f32>(1000f, -264f, -978f, 1166f)))))), any(vec3<bool>(true, any(vec2<bool>(true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false))))));
    var var_1 = vec3<f32>(1730f, _wgslsmith_f_op_f32(636f * -633f), var_0.a.x);
    let var_2 = all(!(!(!(!vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b)))));
    let var_3 = ~(~firstLeadingBit(max(~1u, _wgslsmith_mult_u32(arg_1, 0u))));
    var var_4 = Struct_3(arg_0.a);
    return select(select(select(vec3<bool>(false, !var_0.b, false), vec3<bool>(true, var_0.a.x <= var_1.x, var_2), false), select(vec3<bool>(true, true, true), vec3<bool>(var_0.b, var_0.b, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, true, true), vec3<bool>(var_2, true, var_0.b)), !vec3<bool>(var_2, var_2, true))), true), select(select(select(!vec3<bool>(false, var_2, true), vec3<bool>(var_2, true, var_2), true), vec3<bool>(false, all(vec3<bool>(true, var_0.b, false)), true), select(!vec3<bool>(true, var_2, true), !vec3<bool>(var_2, false, false), true)), vec3<bool>(true, _wgslsmith_sub_i32(-4226i, arg_3.x) <= -var_4.a.x, any(vec2<bool>(true, true))), any(!vec3<bool>(var_2, true, var_2))), var_2);
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = func_4(Struct_3(func_2()), ~u_input.b, ~(~(select(vec3<u32>(31928u, 49506u, 4294967295u), vec3<u32>(0u, 986u, 62799u), vec3<bool>(true, false, false)) | _wgslsmith_add_vec3_u32(vec3<u32>(40356u, u_input.b, 0u), vec3<u32>(48039u, 13279u, u_input.b)))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1078i) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), max(max(vec2<i32>(-17396i, arg_0), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.c, u_input.c))), u_input.a << (69955u % 32u), _wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(0i, u_input.a))), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(-4260i, arg_0)), vec2<i32>(-45424i, u_input.c)))));
    let var_1 = Struct_2(302f);
    var var_2 = _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(reverseBits(arg_0 | arg_0), _wgslsmith_sub_i32(arg_0, -arg_0), _wgslsmith_sub_i32(u_input.c, u_input.a & u_input.c), u_input.a)), ~select(-vec4<i32>(u_input.c, 0i, -35892i, 0i), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, arg_0), vec4<i32>(-1i, -1i, u_input.c, -1i), vec4<i32>(arg_0, u_input.a, arg_0, -315i))), false), vec4<i32>(-75608i, u_input.c, -min(0i, u_input.c), _wgslsmith_clamp_i32(firstLeadingBit(43486i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, -1i, u_input.c), vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)), u_input.a)));
    var_0 = vec3<bool>(all(!select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, var_0.x, var_0.x), any(vec3<bool>(true, false, var_0.x)))), select(false, any(var_0.xx), false), var_0.x);
    var_0 = vec3<bool>(var_0.x, var_0.x, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_1.a, -147f, true)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(964f, 2092f, 143f, 139f), vec4<f32>(-532f, -1000f, -1144f, 509f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(960f, -250f, -212f, 406f)), vec4<f32>(-1824f, -1950f, -1436f, -253f), select(true, true, true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1069f, 833f, -267f, 278f), vec4<f32>(-320f, 1433f, 2257f, -400f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1140f, -971f, 1557f, -274f), vec4<f32>(-975f, 1027f, -1243f, -500f))))), !(4294967295u <= u_input.b));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(1631f, var_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-179f + var_0.a.x) - _wgslsmith_f_op_f32(var_0.a.x - -1761f)) + _wgslsmith_f_op_f32(func_1(u_input.c ^ u_input.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(1000f, var_0.a.x, var_0.b))))))));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(u_input.c, 22859i, u_input.a), 348f, var_0.a.x);
    var var_3 = u_input.b << ((u_input.b ^ 8601u) % 32u);
    let var_4 = Struct_5(-min(var_2.a, -2147483647i) ^ (0i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(13202u, u_input.b, 1u, 6093u), vec4<u32>(4294967295u, 39248u, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, u_input.b, 4651u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 40787u, u_input.b, u_input.b), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) % 32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(max(0u, u_input.b >> (47840u % 32u)), u_input.b >> (~4294967295u % 32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, 16863u)) & ~vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b << (u_input.b % 32u), _wgslsmith_mult_u32(u_input.b, u_input.b)), vec2<u32>(_wgslsmith_add_u32(11107u, 0u), u_input.b))), Struct_3(_wgslsmith_mod_vec2_i32(select(vec2<i32>(32162i, -1i), vec2<i32>(12263i, u_input.c), vec2<bool>(false, true)), ~vec2<i32>(1i, 23751i)) & vec2<i32>(i32(-1i) * -1i, ~11022i)), -_wgslsmith_mult_i32(firstLeadingBit(_wgslsmith_sub_i32(52426i, 16425i)), ~(-35574i ^ var_2.a)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1410f, _wgslsmith_f_op_f32(step(1f, -183f)), var_0.a.x, -689f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(-318f, 354f)), var_0.a.x, -1544f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 1000f, var_1.x, 142f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a.x, 1282f, var_0.a.x) - var_0.a)))))));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)));
    let var_6 = ~(select(_wgslsmith_mod_u32(1u, 4294967295u), ~var_4.b.x, !var_0.b) << (u_input.b % 32u)) ^ 41056u;
    let var_7 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)))) + vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(func_3())), 1287f, -1142f));
    let var_8 = Struct_5(u_input.a, _wgslsmith_sub_vec2_u32(max(~vec2<u32>(u_input.b, var_6), vec2<u32>(u_input.b, 1u)) ^ vec2<u32>(1u, u_input.b), _wgslsmith_mult_vec2_u32(firstTrailingBit(var_4.b), vec2<u32>(_wgslsmith_dot_vec2_u32(var_4.b, var_4.b), var_6 << (4294967295u % 32u)))), Struct_3(var_4.c.a), 82076i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(484f, -1089f, 1220f, var_0.a.x), vec4<f32>(315f, var_2.c, 2456f, -670f), true)), _wgslsmith_f_op_vec4_f32(var_0.a - var_7)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.a, var_5.a, 976f, var_1.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1058f, -260f, -1587f, -848f), vec4<f32>(1000f, 587f, 2411f, 655f), vec4<bool>(true, true, var_0.b, true))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-206f, 1831f, -315f, -1201f), var_0.a, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_8.c.a.x << (select(_wgslsmith_div_u32(var_6, u_input.b ^ var_4.b.x), _wgslsmith_clamp_u32(~16873u, _wgslsmith_mult_u32(var_6, 4294967295u), abs(0u)), select(func_4(var_8.c, u_input.b, vec3<u32>(var_4.b.x, 12224u, 4294967295u), vec3<i32>(1i, u_input.c, 0i)).x, var_0.b, var_0.b)) % 32u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(var_8.e.wzw)), var_7.yxy)));
}

