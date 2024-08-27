struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, arg_1.d, arg_1.d, 423f))))));
}

fn func_3() -> u32 {
    var var_0 = func_1(_wgslsmith_mod_u32(1u, 1u), Struct_1(true, ~abs(vec4<u32>(1u, 42337u, 38550u, 0u)), vec4<i32>(~2147483647i, 2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, u_input.a.x), u_input.a.x << (0u % 32u)), u_input.a.x), -1000f));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-3223f, 1563f, 1000f, var_0.a.x), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1101f)))), _wgslsmith_f_op_vec4_f32(-var_0.a), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false)))))));
    var var_2 = Struct_2(Struct_1(any(vec4<bool>(true, select(true, false, true), any(vec4<bool>(false, false, true, false)), true)), ~firstLeadingBit(vec4<u32>(32836u, 48698u, 4294967295u, 120567u)), _wgslsmith_div_vec4_i32(select(abs(vec4<i32>(u_input.a.x, -41703i, u_input.a.x, -29503i)), vec4<i32>(0i, 65413i, u_input.a.x, u_input.a.x), true), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), select(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 48456i), vec4<i32>(-47241i, 66706i, 0i, u_input.a.x), false))), var_1.a.x), Struct_1(true, vec4<u32>(1u, 1u, 1u, 1u), ((vec4<i32>(u_input.a.x, 18469i, 0i, u_input.a.x) >> (vec4<u32>(0u, 0u, 1u, 2619u) % vec4<u32>(32u))) << (vec4<u32>(1u, 0u, 39615u, 59557u) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2733i, -20244i, -1i, u_input.a.x), vec4<i32>(-1i, -14856i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 47709i, u_input.a.x, u_input.a.x)), -vec4<i32>(-25140i, u_input.a.x, u_input.a.x, -73067i)), var_1.a.x), Struct_1(true, ~min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(21102u, 0u, 53099u, 1333u)), min(abs(~vec4<i32>(u_input.a.x, -20048i, u_input.a.x, u_input.a.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -7463i, u_input.a.x, 2147483647i) >> (vec4<u32>(5149u, 54119u, 4294967295u, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -1i, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(abs(var_0.a.x))), Struct_1(all(vec3<bool>(true, true, true)), vec4<u32>(1u, 1u, 1u, 1u), vec4<i32>(1i, abs(u_input.a.x), -u_input.a.x, 1i | u_input.a.x) | ~vec4<i32>(-39787i, 1i, u_input.a.x, 24897i), var_1.a.x), Struct_1(true | any(vec3<bool>(true, true, false)), abs(vec4<u32>(~4294967295u, 5421u, 24217u, _wgslsmith_add_u32(0u, 4294967295u))), vec4<i32>(u_input.a.x, 2147483647i, abs(u_input.a.x), u_input.a.x), var_1.a.x));
    var_0 = var_1;
    var_0 = Struct_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, 748f, var_2.a.a)))), -714f));
    return reverseBits(~abs(min(2525u & var_2.e.b.x, countOneBits(var_2.c.b.x))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_div_vec4_u32(~max(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(22602u, arg_0, arg_0, arg_0)), abs(select(vec4<u32>(85610u, 1u, 1u, 10368u), vec4<u32>(arg_0, arg_0, 0u, 97832u), vec4<bool>(false, true, true, true)))), ~(vec4<u32>(55581u, 4294967295u, arg_0, arg_0) ^ vec4<u32>(7831u, arg_0, arg_0, arg_0)) ^ vec4<u32>(18219u, 4294967295u, _wgslsmith_sub_u32(23695u, arg_0), func_3())), ~(~(~vec4<u32>(32738u, 4294967295u, 0u, arg_0)) << (vec4<u32>(_wgslsmith_clamp_u32(1u, arg_0, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(29854u, arg_0, arg_0, arg_0), vec4<u32>(arg_0, arg_0, 36033u, 22062u)), 10511u, 4294967295u >> (arg_0 % 32u)) % vec4<u32>(32u))));
    let var_1 = vec3<bool>(false, !(all(vec3<bool>(true, false, false)) && true) && all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true);
    let var_2 = _wgslsmith_clamp_i32(-25705i, select(countOneBits(2147483647i), u_input.a.x, !(_wgslsmith_mult_u32(1u, var_0.x) != max(0u, 1u))), _wgslsmith_add_i32(max(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~u_input.a.x >> (var_0.x % 32u)), u_input.a.x));
    let var_3 = any(vec2<bool>(true, true));
    var var_4 = vec4<bool>(var_1.x, var_1.x, !var_1.x, true);
    return Struct_2(Struct_1(true, vec4<u32>(~(arg_0 | 103520u), arg_0 ^ (1u ^ arg_0), reverseBits(func_3()), _wgslsmith_add_u32(29954u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, arg_0, var_0.x, var_0.x), var_0))), min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, var_2, 2147483647i, var_2), ~vec4<i32>(var_2, 12684i, var_2, 0i)), vec4<i32>(var_2, u_input.a.x, min(0i, var_2), ~(-24630i))), arg_1), Struct_1(!var_3, ~(~_wgslsmith_clamp_vec4_u32(var_0, var_0, vec4<u32>(var_0.x, var_0.x, 45854u, 17752u))), vec4<i32>((var_2 ^ 12186i) & u_input.a.x, _wgslsmith_add_i32(var_2, 30426i | var_2), 1i, var_2), arg_1), Struct_1(any(vec3<bool>(var_4.x, true, var_4.x)), abs(~vec4<u32>(var_0.x, 0u, arg_0, 56251u)), ~_wgslsmith_add_vec4_i32(vec4<i32>(var_2, var_2, -22811i, -2147483647i), vec4<i32>(11398i, 1411i, -1i, 2147483647i)) & _wgslsmith_div_vec4_i32(vec4<i32>(47371i, 0i, -36789i, 22453i), firstTrailingBit(vec4<i32>(52632i, var_2, 2147483647i, var_2))), -303f), Struct_1(true, vec4<u32>(0u, func_3(), 30066u, _wgslsmith_dot_vec2_u32(var_0.xz ^ vec2<u32>(var_0.x, arg_0), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0), var_0.zz))), _wgslsmith_mod_vec4_i32((vec4<i32>(var_2, u_input.a.x, 52105i, 20077i) ^ vec4<i32>(var_2, var_2, u_input.a.x, 27264i)) | vec4<i32>(1i, 1i, 1i, 1i), ~(-vec4<i32>(-1i, var_2, u_input.a.x, -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-151f, _wgslsmith_f_op_f32(-arg_2.a.x))))), Struct_1(true || any(select(vec4<bool>(true, true, true, var_1.x), vec4<bool>(var_4.x, var_4.x, true, var_1.x), false)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 77347u), ~var_0 | ~vec4<u32>(36661u, 1u, 4294967295u, var_0.x)), vec4<i32>(countOneBits(u_input.a.x), -var_2, _wgslsmith_add_i32(_wgslsmith_add_i32(-1i, 15564i), -13611i), abs(-2811i)), _wgslsmith_f_op_f32(-arg_2.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-344f, -2750f, arg_0.a.d, 333f))));
    var var_1 = -_wgslsmith_add_i32(1i << (arg_2.b.x % 32u), ~arg_0.c.c.x);
    let var_2 = true;
    var_1 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.a.c.x, arg_2.c.x & -2147483647i), arg_2.c.x);
    var var_3 = arg_1.x;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.d))) == _wgslsmith_f_op_f32(step(arg_2.d, arg_0.c.d)), _wgslsmith_div_vec4_u32(vec4<u32>(~arg_2.b.x, ~(~15908u), reverseBits(34974u), arg_0.b.b.x), vec4<u32>(9308u, 0u | ~arg_0.e.b.x, ~(arg_0.b.b.x ^ arg_2.b.x), 16795u)), abs(_wgslsmith_add_vec4_i32(arg_2.c, reverseBits(~vec4<i32>(29862i, 3042i, -2147483647i, arg_2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_2(~47279u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(568f)) * -1713f))), func_1(1u, Struct_1(true, ~vec4<u32>(2223u, 0u, 51919u, 60578u), max(vec4<i32>(1i, u_input.a.x, -7773i, u_input.a.x), vec4<i32>(1i, 12808i, u_input.a.x, 1i)), 330f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(187f, _wgslsmith_f_op_f32(f32(-1f) * -613f), _wgslsmith_f_op_f32(f32(-1f) * -660f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-353f, 914f, 410f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -2355f, 1794f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-208f, 1000f, -858f), vec3<f32>(-1159f, -1981f, -126f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1634f, 1126f, -1281f)) + _wgslsmith_div_vec3_f32(vec3<f32>(1272f, -275f, 1040f), vec3<f32>(371f, -504f, 2000f))))), Struct_1(all(vec3<bool>(true, true, true)), ~abs(max(vec4<u32>(4294967295u, 45807u, 34630u, 66591u), vec4<u32>(0u, 1u, 1818u, 0u))), vec4<i32>(2147483647i, u_input.a.x, -u_input.a.x, countOneBits(firstLeadingBit(u_input.a.x))), -2119f));
    var_0 = Struct_1(all(select(!vec4<bool>(false, false, false, var_0.a), select(vec4<bool>(true, false, var_0.a, true), !vec4<bool>(false, true, var_0.a, var_0.a), false), _wgslsmith_f_op_f32(-var_0.d) > _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_mult_vec4_u32(var_0.b, vec4<u32>(abs(countOneBits(var_0.b.x)), ~var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 76615u) & vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.xyy), 19307u)), _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, var_0.c.x, -2147483647i, -1197i), -vec4<i32>(-793i, u_input.a.x, u_input.a.x, var_0.c.x)), vec4<i32>(-_wgslsmith_clamp_i32(-49083i, 48374i, var_0.c.x), 0i, 2147483647i, func_2(_wgslsmith_add_u32(12609u, 0u), _wgslsmith_f_op_f32(var_0.d + var_0.d), Struct_3(vec4<f32>(-415f, 213f, var_0.d, var_0.d))).b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.d))));
    var var_1 = func_2(_wgslsmith_sub_u32(4294967295u, var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.d)) + _wgslsmith_f_op_f32(-var_0.d))))), func_1(var_0.b.x, Struct_1(false, ~var_0.b, ~var_0.c & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, 11014i), vec4<i32>(var_0.c.x, 2700i, 36107i, -22702i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f * var_0.d)))));
    let var_2 = _wgslsmith_mod_vec4_u32(var_0.b << ((_wgslsmith_add_vec4_u32(var_0.b, ~var_1.d.b) << (var_0.b % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(var_1.b.b), ~var_0.b) << (vec4<u32>(var_0.b.x, _wgslsmith_div_u32(37093u, var_1.c.b.x), var_1.b.b.x, ~var_1.c.b.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(~24346u, _wgslsmith_add_u32(21371u, var_0.b.x), var_1.c.b.x, _wgslsmith_sub_u32(0u, var_1.b.b.x))), vec4<u32>(~(~57505u), _wgslsmith_mult_u32(4294967295u & var_0.b.x, var_0.b.x), 1u, ~(var_0.b.x | var_0.b.x))));
    var_0 = Struct_1(!var_0.a, countOneBits(var_1.b.b), var_1.b.c, -1023f);
    var var_3 = func_2(877u << (var_2.x % 32u), _wgslsmith_f_op_f32(var_1.a.d * -421f), func_1(~var_0.b.x >> (0u % 32u), var_1.d)).c;
    var var_4 = func_2(_wgslsmith_sub_u32(~_wgslsmith_div_u32(countOneBits(var_0.b.x), _wgslsmith_mod_u32(0u, var_1.d.b.x)), 0u), -350f, func_1(_wgslsmith_add_u32(~func_3(), 62307u << (0u % 32u)), func_2(min(var_3.b.x >> (49497u % 32u), ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(min(1375f, var_1.c.d))), func_1(4294967295u, func_4(Struct_2(Struct_1(var_3.a, var_3.b, var_3.c, 615f), var_1.a, var_1.b, var_1.b, var_1.a), vec3<f32>(var_1.e.d, var_3.d, 1710f), Struct_1(true, vec4<u32>(var_2.x, var_3.b.x, var_2.x, var_0.b.x), vec4<i32>(var_0.c.x, 23085i, var_0.c.x, -24102i), var_0.d)))).a));
    let var_5 = select(vec2<u32>(_wgslsmith_mod_u32(57443u, 25656u), abs(_wgslsmith_div_u32(0u, var_4.d.b.x)) ^ (~var_3.b.x | firstLeadingBit(0u))), _wgslsmith_add_vec2_u32(min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_4.c.b.x, 68474u), var_3.b.yx), 31819u), vec2<u32>(var_2.x, countOneBits(0u))), countOneBits(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(4294967295u, var_0.b.x), var_2.xx, vec2<bool>(false, var_4.a.a)), func_4(Struct_2(Struct_1(false, vec4<u32>(1u, var_2.x, var_2.x, var_2.x), var_4.a.c, var_4.a.d), var_4.d, Struct_1(false, var_1.b.b, vec4<i32>(46539i, 39749i, var_0.c.x, 0i), 411f), var_1.b, var_4.c), vec3<f32>(var_0.d, var_1.a.d, 1087f), Struct_1(false, vec4<u32>(111127u, 42325u, var_1.e.b.x, 1u), var_0.c, -1363f)).b.xx, var_1.b.b.wx))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d.d, 586f) * vec2<f32>(var_0.d, var_4.b.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-907f, -755f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1980f, var_0.d)) + vec2<f32>(var_0.d, -1018f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b.d, 1353f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-625f, 1000f) * vec2<f32>(452f, 512f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(834f, var_1.e.d) + vec2<f32>(var_0.d, var_4.d.d)), _wgslsmith_div_vec2_f32(vec2<f32>(var_3.d, var_4.a.d), vec2<f32>(var_0.d, 1353f)), !vec2<bool>(var_3.a, var_3.a))))))));
}

