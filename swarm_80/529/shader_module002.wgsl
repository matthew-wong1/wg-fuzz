struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<i32> {
    var var_0 = false;
    var var_1 = select(reverseBits(_wgslsmith_div_i32(~u_input.a, min(20677i, _wgslsmith_add_i32(22560i, u_input.b.x)))), 9115i, any(vec4<bool>(true, true, any(vec2<bool>(true, true)), true)));
    var var_2 = Struct_1(-vec3<i32>(-u_input.b.x, u_input.b.x, -_wgslsmith_clamp_i32(u_input.a, u_input.a, -34863i)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c, u_input.e, 12528u), ~vec4<u32>(0u, u_input.e, 0u, 11275u))) << (select(~vec4<u32>(u_input.e, u_input.c, 4294967295u, u_input.e) & vec4<u32>(u_input.d, u_input.e, 57488u, u_input.d), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 34781u, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.d, 22948u, 1u)), true) % vec4<u32>(32u)), true | all(vec4<bool>(true, true, true, true)), vec2<bool>(false, u_input.a <= -19779i));
    var var_3 = Struct_1(vec3<i32>(1i, ~(~min(-7352i, -23998i)), i32(-1i) * -u_input.b.x), _wgslsmith_sub_vec4_u32(reverseBits(~vec4<u32>(var_2.b.x, var_2.b.x, u_input.c, var_2.b.x)), abs(vec4<u32>(abs(var_2.b.x), 20029u << (u_input.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 40270u), vec2<u32>(4344u, 4294967295u)), var_2.b.x))), true, var_2.d);
    var var_4 = select(select(vec4<bool>(var_3.d.x, true, _wgslsmith_add_i32(0i, -55071i) < var_3.a.x, all(var_3.d) || var_2.d.x), !vec4<bool>(any(vec4<bool>(true, var_3.c, var_3.c, false)), true, select(var_2.c, false, false), all(vec2<bool>(true, true))), select(select(!vec4<bool>(var_3.c, false, var_3.d.x, var_3.c), vec4<bool>(var_3.c, true, true, var_2.c), vec4<bool>(false, true, var_3.d.x, var_2.d.x)), vec4<bool>(!var_2.d.x, false, var_2.d.x, var_2.c), select(vec4<bool>(true, true, var_2.c, true), vec4<bool>(var_3.c, var_3.d.x, var_2.d.x, var_2.c), select(vec4<bool>(var_2.d.x, var_3.c, false, var_2.c), vec4<bool>(var_2.d.x, var_2.c, var_3.c, var_3.c), vec4<bool>(var_2.d.x, false, true, var_3.c))))), select(vec4<bool>(~var_3.a.x >= _wgslsmith_mod_i32(var_2.a.x, 11360i), true, var_3.a.x <= var_2.a.x, -5471i >= -var_3.a.x), select(!(!vec4<bool>(false, var_2.c, true, var_2.d.x)), vec4<bool>(all(var_2.d), !var_2.d.x, true, false), select(select(vec4<bool>(true, var_2.d.x, true, var_2.d.x), vec4<bool>(var_2.d.x, var_2.c, var_2.c, true), var_2.d.x), select(vec4<bool>(true, var_2.c, var_2.c, false), vec4<bool>(var_3.d.x, true, var_2.d.x, false), false), any(vec4<bool>(true, false, var_3.d.x, false)))), select(select(select(vec4<bool>(var_2.c, false, var_2.d.x, true), vec4<bool>(false, true, var_3.c, false), var_2.c), !vec4<bool>(var_3.d.x, true, false, true), vec4<bool>(false, false, var_2.c, var_3.d.x)), !select(vec4<bool>(var_2.c, var_2.d.x, false, var_2.d.x), vec4<bool>(true, var_2.d.x, var_3.d.x, true), vec4<bool>(true, var_3.d.x, true, var_2.d.x)), vec4<bool>(any(vec2<bool>(false, false)), var_3.c || var_2.d.x, all(vec3<bool>(var_2.d.x, var_2.c, var_3.c)), !var_2.c))), !(!select(vec4<bool>(false, var_3.d.x, false, false), !vec4<bool>(true, var_3.d.x, false, false), true)));
    return firstLeadingBit((-(~vec4<i32>(var_3.a.x, -37818i, var_3.a.x, var_2.a.x)) | (reverseBits(vec4<i32>(2147483647i, 49571i, 2147483647i, 10104i)) >> (var_3.b % vec4<u32>(32u)))) | ~reverseBits(abs(vec4<i32>(4336i, -1i, -2147483647i, var_3.a.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_vec4_i32(min(vec4<i32>(~firstLeadingBit(arg_1.a.x), min(~1i, abs(1i)), arg_1.a.x, u_input.b.x), countOneBits(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 38079i, arg_0.a.x, arg_1.a.x), vec4<i32>(arg_1.a.x, arg_0.a.x, -1i, -2147483647i)))), firstTrailingBit(func_3()));
    let var_1 = ~arg_1.b.xx;
    var var_2 = abs(arg_2);
    var var_3 = max(vec2<i32>(0i, abs(firstLeadingBit(21841i))), ~arg_1.a.yx);
    var_2 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, 784u), 0u), 51509u, var_1.x);
    return !select(vec4<bool>(!any(arg_1.d), false, !(!arg_0.c), any(!arg_1.d)), vec4<bool>(any(select(vec2<bool>(false, arg_1.d.x), vec2<bool>(false, arg_0.c), true)), _wgslsmith_f_op_f32(select(-192f, -1631f, arg_0.d.x)) > 907f, select(!arg_0.c, true, arg_1.d.x), true), select(!select(vec4<bool>(arg_0.d.x, false, arg_0.c, false), vec4<bool>(true, false, false, arg_0.c), vec4<bool>(arg_1.d.x, arg_0.d.x, arg_0.d.x, arg_1.d.x)), select(!vec4<bool>(false, true, arg_0.c, false), select(vec4<bool>(arg_0.c, arg_0.c, true, arg_1.d.x), vec4<bool>(true, true, arg_1.d.x, true), arg_0.d.x), !vec4<bool>(false, arg_0.c, arg_1.c, arg_1.c)), !all(vec4<bool>(arg_0.c, arg_1.d.x, arg_0.d.x, true))));
}

fn func_1(arg_0: f32) -> vec4<i32> {
    var var_0 = !select(select(vec4<bool>(true, true, u_input.a >= u_input.a, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_2(Struct_1(u_input.b, vec4<u32>(1u, 1u, u_input.d, u_input.c), false, vec2<bool>(false, false)), Struct_1(u_input.b, vec4<u32>(4294967295u, u_input.d, u_input.d, 0u), false, vec2<bool>(true, false)), vec3<u32>(u_input.c, u_input.c, u_input.c))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true)), vec4<bool>(true, any(vec2<bool>(false, false)) || false, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), all(vec4<bool>(true, true, true, true))), true);
    let var_1 = func_2(Struct_1(u_input.b, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 19960u, u_input.e, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(89217u, u_input.e, u_input.c, u_input.e), vec4<u32>(u_input.e, 41767u, 31008u, 78055u))), countOneBits(_wgslsmith_mult_u32(u_input.c, u_input.e)), u_input.e, 57609u), _wgslsmith_f_op_f32(f32(-1f) * -1319f) > arg_0, !(!(!var_0.yz))), Struct_1(vec3<i32>(u_input.a, u_input.b.x, ~select(u_input.b.x, u_input.b.x, true)), _wgslsmith_sub_vec4_u32(~vec4<u32>(19283u, 0u, 29717u, u_input.d), vec4<u32>(16036u, ~66956u, u_input.d, u_input.d)), var_0.x, !select(vec2<bool>(false, true), var_0.wy, var_0.x)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 1u, u_input.e) & abs(vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<u32>(7023u, u_input.e, u_input.e) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 22654u), vec3<u32>(16309u, u_input.d, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(u_input.d, u_input.c, 42813u))).xyx;
    var_0 = func_2(Struct_1(vec3<i32>(u_input.a, -u_input.a, 21138i), vec4<u32>(~39023u, ~min(u_input.d, 4294967295u), _wgslsmith_div_u32(1u, ~0u), reverseBits(firstTrailingBit(u_input.c))), var_1.x, vec2<bool>(!(!var_1.x), !(u_input.a <= -25923i))), Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-39722i, u_input.b.x, -2147483647i), vec3<i32>(1i, u_input.a, 2147483647i), var_1), -vec3<i32>(u_input.a, 2147483647i, u_input.a)), u_input.b), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.e, u_input.d, 3618u), vec4<u32>(u_input.e, 8143u, u_input.c, 25488u))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c, 1u, u_input.e, u_input.c), vec4<u32>(u_input.e, 0u, 0u, 0u)), all(select(!vec4<bool>(var_1.x, true, var_1.x, var_0.x), !vec4<bool>(false, var_1.x, true, false), true)), select(!func_2(Struct_1(vec3<i32>(2147483647i, 24299i, u_input.b.x), vec4<u32>(19307u, u_input.d, u_input.d, u_input.d), true, var_0.xw), Struct_1(u_input.b, vec4<u32>(u_input.d, 0u, 23426u, u_input.c), var_1.x, vec2<bool>(var_1.x, var_1.x)), vec3<u32>(u_input.c, u_input.d, u_input.e)).yy, var_0.yz, all(!vec3<bool>(true, true, var_0.x)))), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, u_input.c, 4294967295u, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.e, u_input.c, u_input.c), vec4<u32>(u_input.e, 0u, 0u, u_input.c))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.e, u_input.c, 1u), vec4<u32>(u_input.c, 79544u, 0u, u_input.c))), u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(6122u, 1u), vec2<u32>(1u, u_input.e)) ^ u_input.c));
    var_0 = vec4<bool>(func_2(Struct_1(u_input.b, vec4<u32>(1u, min(21019u, u_input.d), _wgslsmith_dot_vec3_u32(vec3<u32>(365u, 0u, u_input.c), vec3<u32>(1u, 1u, u_input.c)), countOneBits(u_input.c)), !var_1.x, !select(vec2<bool>(false, false), vec2<bool>(var_0.x, var_1.x), true)), Struct_1(~(u_input.b ^ u_input.b), ~vec4<u32>(u_input.c, u_input.c, u_input.e, 74492u) >> (~vec4<u32>(u_input.d, u_input.c, 1u, u_input.d) % vec4<u32>(32u)), true, vec2<bool>(var_0.x, var_0.x)), (~vec3<u32>(u_input.c, u_input.c, 0u) >> (select(vec3<u32>(1u, u_input.d, u_input.c), vec3<u32>(0u, u_input.d, u_input.c), var_0.x) % vec3<u32>(32u))) ^ countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(11990u, u_input.d, 0u), vec3<u32>(u_input.d, u_input.c, 22022u)))).x, true, var_0.x, all(func_2(Struct_1(u_input.b, vec4<u32>(106055u, 63627u, u_input.c, 4294967295u), true, vec2<bool>(var_1.x, false)), Struct_1(u_input.b, vec4<u32>(u_input.d, 48794u, u_input.e, 0u), true, var_0.yy), firstTrailingBit(vec3<u32>(u_input.d, 80440u, u_input.d))).yy) && !var_1.x);
    let var_2 = vec3<i32>(~_wgslsmith_add_i32(-(i32(-1i) * -17137i), -u_input.a ^ u_input.b.x), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(min(-14209i, u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.b.x)), -u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(-u_input.a, countOneBits(u_input.b.x)))), abs(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-7032i, -11212i), vec2<i32>(1i, -27471i))), vec2<i32>(select(0i, -1i, var_0.x), max(u_input.a, -1i)))));
    return max(vec4<i32>(-2147483647i, min(select(89018i, var_2.x, true), ~_wgslsmith_div_i32(var_2.x, -1i)), u_input.b.x, ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.b.x, u_input.a), u_input.b.x, _wgslsmith_mult_i32(var_2.x, var_2.x))), vec4<i32>(-26542i, var_2.x, -(u_input.b.x ^ -1i), _wgslsmith_sub_i32(reverseBits(-24416i), u_input.a)) | -vec4<i32>(~(-72029i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_2.x, var_2.x, u_input.b.x), vec4<i32>(var_2.x, u_input.a, var_2.x, u_input.a)), func_3().x, var_2.x));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    return StorageBuffer(~max(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 3277u, arg_3.b.x, 4294967295u), vec4<u32>(arg_0, 1u, u_input.d, arg_3.b.x)), firstLeadingBit(vec4<u32>(44345u, 1u, u_input.e, arg_0))) & arg_3.b, arg_0, -_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(countOneBits(-19940i), -2147483647i, ~(-1i))), vec3<i32>(_wgslsmith_add_i32(arg_1.x, _wgslsmith_sub_i32(2147483647i & arg_3.a.x, 2147483647i)), -(_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, -31477i) & -33763i), 6532i), ~(~_wgslsmith_mod_vec3_i32(select(arg_1.zzz, u_input.b, arg_3.d.x), vec3<i32>(arg_1.x, -1i, u_input.a) >> (vec3<u32>(4294967295u, u_input.d, arg_0) % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(4294967295u, min(vec4<i32>(u_input.b.x, max(reverseBits(-11967i), 24282i), i32(-1i) * -u_input.a, _wgslsmith_mod_i32(max(-2147483647i, -15909i), min(2147483647i, u_input.a))), select(-func_1(488f), vec4<i32>(u_input.a, min(u_input.a, u_input.a), u_input.a ^ u_input.a, ~(-1i)), vec4<bool>(true, true, func_2(Struct_1(vec3<i32>(2147483647i, 1i, -1i), vec4<u32>(37859u, u_input.c, u_input.d, 32671u), false, vec2<bool>(true, true)), Struct_1(u_input.b, vec4<u32>(u_input.d, 4294967295u, u_input.e, u_input.e), true, vec2<bool>(false, true)), vec3<u32>(u_input.c, u_input.d, u_input.d)).x, true))), 1f, Struct_1(-u_input.b, min(vec4<u32>(u_input.e, ~0u, _wgslsmith_div_u32(32049u, 36444u), u_input.c), ~abs(vec4<u32>(5541u, 4721u, 0u, 0u))), false, func_2(Struct_1(u_input.b, abs(vec4<u32>(u_input.d, 51071u, u_input.d, 4087u)), any(vec3<bool>(false, true, true)), vec2<bool>(true, true)), Struct_1(min(u_input.b, u_input.b), ~vec4<u32>(1u, u_input.d, u_input.d, u_input.c), select(false, false, true), vec2<bool>(false, false)), _wgslsmith_add_vec3_u32(~vec3<u32>(45291u, 0u, u_input.c), ~vec3<u32>(u_input.e, 94802u, 4294967295u))).ww));
}

