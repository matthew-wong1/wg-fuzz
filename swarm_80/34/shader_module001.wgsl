struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> u32 {
    return _wgslsmith_div_u32(~(~countOneBits(~arg_3)), 1u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<u32>) -> f32 {
    let var_0 = -2147483647i;
    let var_1 = arg_0;
    var var_2 = vec4<u32>(84279u, u_input.d, _wgslsmith_mult_u32(var_1.x, func_3(Struct_2(u_input.a, false, 9839u, Struct_1(vec4<i32>(-2147483647i, -5369i, -27689i, 23960i), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(27750i, 24902i, -2147483647i, 37752i), vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(round(-1265f)), Struct_1(vec4<i32>(u_input.b, -12157i, u_input.b, 1i), vec3<bool>(true, true, true)), _wgslsmith_dot_vec2_u32(arg_2.xz, vec2<u32>(1u, var_1.x))) | ~3486u), 1u);
    return -1022f;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<u32>(18709u, firstLeadingBit(_wgslsmith_div_u32(arg_3.x, u_input.d))), _wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2.a.x, -30978i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(25126u, 0u), vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)), reverseBits(vec2<i32>(u_input.a.x, arg_2.a.x))), ~arg_3)));
}

fn func_4(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.d), ~(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 53236u, u_input.d), vec3<u32>(66295u, 9241u, u_input.d))) << (reverseBits(min(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, u_input.d))) % vec2<u32>(32u))));
    let var_1 = !vec4<bool>(false, false, -644f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-764f)), _wgslsmith_f_op_f32(-arg_0.x))), true);
    let var_2 = Struct_1(reverseBits(~(~vec4<i32>(u_input.c, u_input.b, -7468i, u_input.c))) << (min(min(vec4<u32>(0u, var_0.x, 10299u, u_input.d), ~vec4<u32>(1u, u_input.d, var_0.x, u_input.d)), abs(vec4<u32>(var_0.x, var_0.x, u_input.d, var_0.x)) & (vec4<u32>(var_0.x, 42671u, var_0.x, var_0.x) ^ vec4<u32>(var_0.x, 34465u, 4294967295u, u_input.d))) % vec4<u32>(32u)), !vec3<bool>(!var_1.x, true && any(vec3<bool>(true, var_1.x, true)), var_1.x));
    let var_3 = min(u_input.d, 1u);
    let var_4 = vec3<u32>(1u, 18679u, 4294967295u) >> (~select(~countOneBits(vec3<u32>(var_3, u_input.d, u_input.d)), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(1u, 47726u, 17647u)), vec3<u32>(37388u, var_3, u_input.d)), !(!var_1.ywz)) % vec3<u32>(32u));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(6884i, -53729i, max(0i, u_input.c) << (~u_input.d % 32u));
    let var_1 = (func_4(vec3<f32>(347f, -398f, _wgslsmith_f_op_f32(func_1(vec2<f32>(457f, 313f), Struct_1(vec4<i32>(19720i, u_input.c, var_0.x, var_0.x), vec3<bool>(true, true, true)), Struct_1(vec4<i32>(var_0.x, var_0.x, -1i, u_input.a.x), vec3<bool>(true, false, true)), vec3<u32>(1u, u_input.d, u_input.d))))) >> (abs(vec4<u32>(~u_input.d, _wgslsmith_div_u32(u_input.d, 29588u), 3589u, ~u_input.d)) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 5470i, var_0.x, var_0.x), vec4<i32>(0i, var_0.x, var_0.x, u_input.c)), -var_0.x, u_input.b)), -(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.x, -1i, u_input.b), vec4<i32>(var_0.x, var_0.x, 2147483647i, -2147483647i))));
    var var_2 = Struct_1(var_1, !select(vec3<bool>(all(vec4<bool>(false, false, false, false)), true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), vec3<bool>(true, true, true)));
    var_2 = Struct_1(vec4<i32>(firstLeadingBit(var_2.a.x), -(~(-13961i)), ~u_input.a.x, _wgslsmith_mod_i32(reverseBits(abs(var_1.x)), 22950i)), !var_2.b);
    var var_3 = !any(vec2<bool>(true, true));
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(774f, -2317f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1371f, 164f))), !var_2.b.zz)), Struct_1(var_2.a, var_2.b), Struct_1(~vec4<i32>(-37283i, -2021i, 0i, 0i), vec3<bool>(var_2.b.x, var_2.b.x, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 28783u, u_input.d), vec3<u32>(u_input.d, 4294967295u, 5644u) ^ vec3<u32>(4294967295u, u_input.d, 1u), ~vec3<u32>(45665u, u_input.d, u_input.d))))))));
    var var_5 = Struct_2(~u_input.a, var_2.b.x, 25689u, Struct_1(min(vec4<i32>(i32(-1i) * -23460i, var_0.x, 1i, 0i), abs(_wgslsmith_clamp_vec4_i32(var_2.a, var_2.a, var_1))), select(var_2.b, var_2.b, vec3<bool>(0u < u_input.d, true, true))), Struct_1(var_2.a, var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1 << (vec4<u32>(4294967295u, var_5.c, (u_input.d | var_5.c) & 1u, _wgslsmith_div_u32(abs(u_input.d), u_input.d ^ u_input.d)) % vec4<u32>(32u)), 1u, var_5.c, firstLeadingBit(-69574i), ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_5.c, var_5.c, 4294967295u, 4294967295u), ~vec4<u32>(21489u, 108237u, 4294967295u, 27336u)), ~4294967295u, _wgslsmith_mult_u32(firstLeadingBit(0u), 0u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(30145u, 31661u, var_5.c), vec3<u32>(4294967295u, 1u, 0u), var_5.b), select(vec3<u32>(u_input.d, var_5.c, 9915u), vec3<u32>(32454u, u_input.d, 4294967295u), var_2.b))));
}

