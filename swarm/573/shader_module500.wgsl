struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    return _wgslsmith_f_op_f32(-arg_1.d) > _wgslsmith_f_op_f32(-arg_0.c.d);
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2217f, 1000f, -1747f, arg_1.a.c.d)), vec4<f32>(arg_1.c.b.d, 405f, -185f, arg_1.a.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.d, arg_1.c.b.d, arg_1.a.b.d, 316f)), vec4<f32>(arg_1.c.c.d, -217f, 757f, -800f), !vec4<bool>(false, arg_1.b, arg_1.d.x, arg_1.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.a.c.d, arg_1.a.b.d, -267f) - vec4<f32>(arg_1.c.c.d, -2647f, arg_1.c.b.d, arg_1.c.c.d)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.a.b.d, arg_1.a.a, -1658f, arg_1.a.a), vec4<f32>(-289f, arg_1.c.c.d, arg_1.a.c.d, arg_1.a.c.d)))))), select(!vec4<bool>(true, true, arg_1.a.b.b.x != -70258i, false), !vec4<bool>(select(arg_1.d.x, true, true), any(arg_1.d.zz), func_3(Struct_2(-867f, arg_1.a.c, arg_1.c.b, vec3<i32>(u_input.b, -1i, u_input.b)), Struct_1(vec2<i32>(arg_0, -17725i), arg_1.c.b.b, 1u, arg_1.c.a, arg_1.c.b.e)), arg_1.d.x), false)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1396f * _wgslsmith_f_op_f32(ceil(401f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -763f)) - -1210f))), arg_1.c.b.d, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.c.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = Struct_1(u_input.a.zy, select(-_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.c.b.b, vec4<i32>(30021i, u_input.a.x, arg_1.a.c.a.x, -13957i)), ~vec4<i32>(-35443i, 3570i, 0i, arg_1.a.c.a.x)), ~firstLeadingBit(vec4<i32>(u_input.b, 2147483647i, u_input.b, arg_1.a.c.b.x)), !vec4<bool>(false, !arg_1.b, func_3(arg_1.a, arg_1.a.c), false & arg_1.b)), 25651u, 597f, ~firstLeadingBit(arg_1.a.c.e));
    var var_2 = select(vec4<bool>(false, true, false & arg_1.d.x, arg_1.d.x), vec4<bool>(func_3(Struct_2(_wgslsmith_f_op_f32(-var_0.x), Struct_1(vec2<i32>(arg_0, arg_1.a.c.a.x), var_1.b, arg_1.e.x, -1654f, arg_1.e.xy), Struct_1(u_input.a.yy, vec4<i32>(u_input.b, arg_0, 2147483647i, u_input.b), var_1.c, var_1.d, vec2<u32>(5351u, 95063u)), _wgslsmith_add_vec3_i32(u_input.a, u_input.a)), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-42730i, -43380i), vec2<i32>(var_1.b.x, arg_1.c.d.x)), arg_1.a.c.b, select(1u, arg_1.a.c.c, arg_1.b), -604f, ~vec2<u32>(0u, var_1.e.x))), arg_1.b, true, false), vec4<bool>(arg_1.d.x, true, arg_1.b, all(select(select(vec2<bool>(arg_1.d.x, false), arg_1.d.xy, false), select(arg_1.d.yy, arg_1.d.yy, arg_1.d.xz), true))));
    var_2 = !vec4<bool>(true, true, any(select(select(vec4<bool>(false, false, arg_1.b, arg_1.d.x), vec4<bool>(arg_1.d.x, false, false, arg_1.b), false), vec4<bool>(var_2.x, true, var_2.x, true), !vec4<bool>(var_2.x, arg_1.d.x, arg_1.d.x, true))), true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-782f, 2285f)) - 837f);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(u_input.a.yy, -select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.b, 36643i, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.a.x, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a.x))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-13338i, u_input.b, -1i, 50061i)), min(vec4<i32>(2147483647i, u_input.b, u_input.a.x, u_input.b), vec4<i32>(u_input.b, u_input.a.x, -5984i, 1i))), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), true)), 35273u, _wgslsmith_f_op_f32(func_4(select(2147483647i, (u_input.b >> (84199u % 32u)) & max(50903i, 55562i), func_3(Struct_2(165f, Struct_1(u_input.a.yx, vec4<i32>(u_input.b, 1i, u_input.b, 2147483647i), 0u, -1145f, vec2<u32>(1u, 16305u)), Struct_1(u_input.a.xz, vec4<i32>(0i, u_input.b, -1i, -30830i), 23533u, 375f, vec2<u32>(4294967295u, 43705u)), u_input.a), Struct_1(u_input.a.zy, vec4<i32>(u_input.b, u_input.b, 48737i, -1463i), 0u, -2273f, vec2<u32>(0u, 58409u)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -878f), Struct_1(vec2<i32>(u_input.a.x, u_input.b), vec4<i32>(56042i, u_input.b, u_input.b, u_input.a.x), 0u, -2198f, vec2<u32>(56162u, 17135u)), Struct_1(vec2<i32>(u_input.b, u_input.a.x), vec4<i32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x), 32545u, 978f, vec2<u32>(8635u, 116488u)), u_input.a), true, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -431f), Struct_1(u_input.a.yy, vec4<i32>(-9153i, u_input.a.x, 28704i, u_input.a.x), 46965u, 239f, vec2<u32>(0u, 4294967295u)), Struct_1(u_input.a.zy, vec4<i32>(2147483647i, 44254i, 22774i, -1i), 4294967295u, 1210f, vec2<u32>(4294967295u, 1u)), ~u_input.a), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, true), select(false, false, true)), ~max(vec3<u32>(59768u, 79067u, 30596u), vec3<u32>(0u, 66834u, 4294967295u))))), _wgslsmith_div_vec2_u32(vec2<u32>(49322u, _wgslsmith_mod_u32(43806u, 1u)) >> (firstTrailingBit(~vec2<u32>(4294967295u, 128408u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u))));
    var var_1 = reverseBits(vec4<u32>(reverseBits(var_0.c), 29908u, 0u, _wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(var_0.c, 4294967295u)), ~var_0.e)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(864f, -499f, -1694f), vec3<f32>(var_0.d, var_0.d, -1254f))))))));
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.zy, vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(var_0.d - var_2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1917f, _wgslsmith_f_op_f32(min(456f, -1000f)))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3.x)) - _wgslsmith_f_op_f32(func_4(-1i, Struct_3(Struct_2(var_0.d, Struct_1(vec2<i32>(var_0.a.x, u_input.a.x), var_0.b, 3332u, var_0.d, var_0.e), Struct_1(vec2<i32>(u_input.a.x, u_input.b), var_0.b, 12909u, var_2.x, var_1.wz), u_input.a), false, Struct_2(1000f, var_0, Struct_1(var_0.b.xx, vec4<i32>(1i, -2147483647i, u_input.b, -1i), var_1.x, -882f, vec2<u32>(62659u, 6458u)), vec3<i32>(13927i, u_input.b, 93475i)), vec3<bool>(true, true, true), vec3<u32>(var_0.e.x, 4294967295u, var_1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x - var_0.d))))));
    return _wgslsmith_f_op_f32(floor(var_2.x));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1874f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -677f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1338f)), _wgslsmith_f_op_f32(sign(692f)))), _wgslsmith_f_op_f32(func_2()))));
    var var_1 = _wgslsmith_div_u32(~1u, 5695u);
    let var_2 = _wgslsmith_mod_u32(~(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(25941u, 0u, 0u, 28050u)), min(vec4<u32>(0u, 9408u, 1u, 58424u), vec4<u32>(37979u, 0u, 1u, 37027u)))), select(max(_wgslsmith_mult_u32(min(4294967295u, 4294967295u), 0u), 1u), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 7126u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * var_0.x), _wgslsmith_f_op_f32(func_4(27412i, Struct_3(Struct_2(-859f, Struct_1(u_input.a.xx, vec4<i32>(0i, u_input.a.x, -50182i, 24685i), 4294967295u, var_0.x, vec2<u32>(18818u, 38465u)), Struct_1(u_input.a.yy, vec4<i32>(-13342i, -2147483647i, -40012i, u_input.b), 0u, 670f, vec2<u32>(4303u, 0u)), vec3<i32>(2147483647i, u_input.b, 33409i)), true, Struct_2(var_0.x, Struct_1(u_input.a.zz, vec4<i32>(-2147483647i, u_input.a.x, 21844i, u_input.a.x), 19543u, -2420f, vec2<u32>(45358u, 25259u)), Struct_1(vec2<i32>(-1i, 12817i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2301i), 37100u, var_0.x, vec2<u32>(1u, 3082u)), vec3<i32>(9523i, 34654i, 41062i)), vec3<bool>(false, true, true), vec3<u32>(27781u, 29732u, 4294967295u)))))) <= -272f));
    var var_3 = Struct_2(-1254f, Struct_1(vec2<i32>(-1i) * -(u_input.a.yy << (vec2<u32>(1u, 91105u) % vec2<u32>(32u))), vec4<i32>(-29813i << ((33143u ^ var_2) % 32u), select(u_input.b, -55909i, true), _wgslsmith_add_i32(u_input.b, -u_input.b), 47752i), ~(~(~var_2)), var_0.x, ~(_wgslsmith_add_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, 0u)) | (vec2<u32>(4294967295u, var_2) >> (vec2<u32>(var_2, 30248u) % vec2<u32>(32u))))), Struct_1(-firstTrailingBit(u_input.a.xy), select(max(vec4<i32>(-1i, u_input.b, 23554i, u_input.b), vec4<i32>(u_input.b, u_input.a.x, -36044i, u_input.b)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -1i, u_input.a.x), vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i)), vec4<bool>(true, false, true, false)) | vec4<i32>(abs(u_input.b), 1i >> (var_2 % 32u), 1i, 0i), abs(var_2 >> (var_2 % 32u)), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-796f, -512f), _wgslsmith_f_op_f32(trunc(var_0.x)))))), max(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(21873u, var_2), vec2<u32>(4294967295u, var_2)), ~vec2<u32>(53524u, var_2)), ~vec2<u32>(var_2, var_2))), vec3<i32>(-u_input.b, ~reverseBits(u_input.a.x), 25343i));
    var_3 = Struct_2(1000f, var_3.c, Struct_1(_wgslsmith_mult_vec2_i32(u_input.a.yz, vec2<i32>(~var_3.d.x, countOneBits(var_3.d.x))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.c.a.x, 14215i, 2147483647i, -28437i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -33462i), vec4<i32>(u_input.b, 2147483647i, u_input.b, -26861i)))), ~(~4294967295u), _wgslsmith_f_op_f32(-var_0.x), vec2<u32>(~32601u, ~62448u)), var_3.d);
    return ~_wgslsmith_add_vec2_u32(reverseBits(firstTrailingBit(firstLeadingBit(var_3.b.e))), vec2<u32>(~0u >> (~var_2 % 32u), var_3.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(vec2<u32>(1u, 52899u));
    var_0 = ~func_1();
    let var_1 = false;
    var var_2 = Struct_3(Struct_2(-123f, Struct_1(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b), u_input.a.xz), vec4<i32>(1i, ~0i, min(u_input.b, -1i), _wgslsmith_mod_i32(1i, 1i)), 65141u, _wgslsmith_f_op_f32(ceil(-511f)), ~vec2<u32>(88593u, var_0.x)), Struct_1(vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.b), firstLeadingBit(63606i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.a.x, -2147483647i) << (vec4<u32>(450u, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u)), select(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, u_input.a.x), true), vec4<i32>(-1i, 0i, u_input.a.x, -32682i)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -302f), vec2<u32>(18633u, ~var_0.x)), vec3<i32>(u_input.a.x, 0i, -_wgslsmith_clamp_i32(-1i, -2147483647i, -2147483647i))), !(4294967295u > var_0.x), Struct_2(-1269f, Struct_1(select(abs(vec2<i32>(-1i, u_input.a.x)), vec2<i32>(-1i, -9497i), vec2<bool>(var_1, false)), min(abs(vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.a.x, u_input.a.x, -59997i, 14796i) & vec4<i32>(u_input.b, 0i, 3567i, u_input.b)), ~firstLeadingBit(var_0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1205f, 210f) * _wgslsmith_f_op_f32(f32(-1f) * -724f)), vec2<u32>(var_0.x, var_0.x) | ~vec2<u32>(var_0.x, 7336u)), Struct_1(u_input.a.xz, _wgslsmith_clamp_vec4_i32(vec4<i32>(23948i, u_input.a.x, u_input.b, 1i), ~vec4<i32>(-1i, u_input.b, 2147483647i, 13437i), vec4<i32>(-2147483647i, u_input.b, -1i, u_input.a.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) * _wgslsmith_div_f32(-1402f, -1121f)), ~(~vec2<u32>(63058u, 4294967295u))), -(select(vec3<i32>(-15725i, -1i, u_input.b), u_input.a, vec3<bool>(true, var_1, var_1)) & _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), u_input.a))), vec3<bool>(var_1, any(vec2<bool>(any(vec3<bool>(var_1, false, false)), var_0.x <= var_0.x)), !all(!vec4<bool>(true, true, var_1, var_1))), abs(~vec3<u32>(0u, 4294967295u, 0u) | ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, 53611u), vec3<u32>(4294967295u, 10644u, 56397u))));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(~1i, var_2.c.d.x | -36141i, u_input.a.x, ~(~abs(49550i))), var_2.c.b.b);
    var_3 = select(~(var_2.a.b.b | ~reverseBits(vec4<i32>(1i, 15725i, u_input.b, var_3.x))), reverseBits(-var_2.c.c.b), select(select(vec4<bool>(var_2.d.x, func_3(var_2.c, Struct_1(vec2<i32>(var_3.x, var_3.x), var_2.a.b.b, var_0.x, var_2.c.a, var_2.c.c.e)), false, any(vec2<bool>(var_1, false))), vec4<bool>(var_2.d.x, var_2.b, var_2.b, 0i != var_3.x), select(!vec4<bool>(var_2.d.x, false, true, var_2.b), select(vec4<bool>(var_1, var_2.d.x, true, var_1), vec4<bool>(var_2.b, var_2.b, var_2.d.x, true), var_1), !var_1)), select(!vec4<bool>(false, var_1, var_2.b, var_2.b), select(vec4<bool>(var_2.d.x, true, var_1, var_2.d.x), !vec4<bool>(false, var_1, false, var_1), !vec4<bool>(var_2.d.x, var_2.b, var_2.b, true)), false), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c.d)), _wgslsmith_mult_vec3_u32(var_2.e, _wgslsmith_div_vec3_u32(var_2.e, _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.b.c, var_2.a.b.e.x, var_0.x), countOneBits(var_2.e)))));
}

