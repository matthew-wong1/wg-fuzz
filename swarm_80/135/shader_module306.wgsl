struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = !vec3<bool>(true, false, any(vec2<bool>(true, true)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) - _wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(floor(-487f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1492f)) * _wgslsmith_f_op_f32(trunc(887f))) - _wgslsmith_f_op_f32(max(-851f, -579f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2233f)) * 1111f) + _wgslsmith_f_op_f32(step(-717f, _wgslsmith_f_op_f32(f32(-1f) * -2772f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f + 834f) - -457f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f - -1291f)), _wgslsmith_f_op_f32(-814f + 1227f)));
    let var_2 = true;
    var var_3 = Struct_1(min(65692u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(1u, 24308u, 30628u, 22110u)))), 0i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 139f)), _wgslsmith_f_op_f32(select(var_1.x, -681f, false)), 890f), ~(-_wgslsmith_mult_i32(u_input.a, countOneBits(u_input.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)))) * var_1.yx), var_1.zw, any(!vec3<bool>(true, false, var_0.x)) == true)));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.x, 908f), _wgslsmith_f_op_f32(-var_3.e.x)))))), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-340f)) * _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(941f, -847f)), var_3.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), var_1.x)))), 1076f);
    return _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1137f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.x) - _wgslsmith_f_op_f32(f32(-1f) * -1436f)) + var_3.c.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = vec4<f32>(arg_0.c.x, -1000f, arg_0.c.x, 491f);
    let var_1 = Struct_3(1898f, _wgslsmith_sub_i32(-55751i, ~(~arg_0.b) << (arg_1.x % 32u)), arg_0.e.x, ~(~(~arg_1 << (firstLeadingBit(arg_1) % vec3<u32>(32u)))), Struct_2(arg_0.a, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(23467u, 870u, 45883u, arg_0.a), vec4<u32>(1u, arg_2, arg_0.a, arg_0.a)) | 4294967295u), Struct_1(4294967295u, i32(-1i) * -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(103f, arg_0.e.x, arg_0.e.x))), vec3<f32>(var_0.x, arg_0.c.x, arg_0.e.x)), arg_0.d, _wgslsmith_f_op_vec2_f32(func_3()))));
    let var_2 = -95i;
    let var_3 = ~(~(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(12389i, -27616i, var_1.e.c.d, 17679i))));
    let var_4 = true;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<u32> {
    let var_0 = func_2(arg_0, vec3<u32>(1u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_3.x, arg_2.e.c.a, 1u), vec3<u32>(70521u, 0u, arg_0.a) | arg_2.d), select(49864u, ~_wgslsmith_sub_u32(4294967295u, arg_3.x), func_2(Struct_1(53022u, arg_2.b, arg_0.c, u_input.a, arg_0.c.xx), vec3<u32>(arg_2.d.x, 1u, 0u), arg_2.d.x).b >= ~arg_0.d)), 1u);
    var var_1 = Struct_1(_wgslsmith_clamp_u32(arg_0.a, 19876u, reverseBits(reverseBits(var_0.a))), 1i, var_0.c, -(~1i << (_wgslsmith_dot_vec2_u32(~vec2<u32>(51337u, 1u), ~vec2<u32>(arg_3.x, 1u)) % 32u)), _wgslsmith_f_op_vec2_f32(-arg_2.e.c.c.xx));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_2.a)), -1570f)) >= -348f;
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, -1i), -50644i, -var_1.b, var_1.b & var_0.d), max(vec4<i32>(-43360i, u_input.a, -68645i, -2147483647i), vec4<i32>(u_input.a, -1i, 0i, arg_0.b))), vec4<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.b), vec2<i32>(arg_0.b, 13974i)), ~(-2147483647i), true), arg_0.d, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b, 81299i), vec2<i32>(u_input.a, arg_2.e.c.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -11210i), vec2<i32>(arg_2.e.c.d, u_input.a))), i32(-1i) * -var_1.d)), ~vec4<i32>(~(i32(-1i) * -12464i), i32(-1i) * -2617i, abs(arg_2.b), -2147483647i));
    var var_4 = 4294967295u;
    return vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~14739u >> (arg_0.a % 32u), ~abs(1u)), min(firstLeadingBit(arg_3), vec2<u32>(18293u, 4294967295u ^ var_1.a))), ~(~_wgslsmith_mult_u32(arg_0.a, 0u >> (var_0.a % 32u))), 11994u);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(47607u, 29710u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(77154u, 0u, 4294967295u, 1u)), countOneBits(37695u)), ~vec3<u32>(1u, 4294967295u, 1u));
    let var_1 = reverseBits((func_4(func_2(Struct_1(18770u, -38038i, vec3<f32>(-2097f, -523f, -187f), arg_1, vec2<f32>(476f, 1000f)), vec3<u32>(0u, var_0, 32643u), var_0), vec4<bool>(true, true, true, true), Struct_3(517f, u_input.a, -573f, vec3<u32>(var_0, 1u, var_0), Struct_2(var_0, var_0, Struct_1(var_0, -31360i, vec3<f32>(-1000f, 2419f, -1340f), 30629i, vec2<f32>(-636f, 449f)))), vec2<u32>(20398u, 1u)) << (~(~vec3<u32>(var_0, var_0, var_0)) % vec3<u32>(32u))) & ~vec3<u32>(_wgslsmith_div_u32(37549u, 43138u), 11282u, max(0u, var_0)));
    var var_2 = Struct_1(~select(~46274u, var_1.x >> (4294967295u % 32u), any(vec2<bool>(true, false))) >> (13674u % 32u), firstTrailingBit(-arg_0.x), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-862f))), 1000f), arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_div_f32(141f, 488f)))));
    let var_3 = Struct_1(47769u | (_wgslsmith_sub_u32(54902u, var_2.a) ^ ~4294967295u), max(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -18633i, var_2.d, var_2.d), vec4<i32>(-66327i, -2763i, var_2.b, arg_0.x), vec4<i32>(-1i, var_2.d, var_2.b, -1i)), vec4<i32>(2147483647i, -55707i, -25502i, 2147483647i))), 1i), _wgslsmith_div_vec3_f32(var_2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)))), -49728i, var_2.c.yz);
    var_2 = var_3;
    return 21574u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(24027u, 1u, Struct_1(_wgslsmith_clamp_u32(104378u, ~func_1(vec3<i32>(u_input.a, u_input.a, -2147483647i), 0i), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(68055u, 4294967295u), vec2<u32>(4111u, 4294967295u)))), min(reverseBits(select(u_input.a, 24397i, true)), abs(u_input.a)), vec3<f32>(1f, -1606f, 1f), ~0i, vec2<f32>(func_2(func_2(Struct_1(1u, u_input.a, vec3<f32>(2587f, 364f, 2346f), u_input.a, vec2<f32>(-925f, -1329f)), vec3<u32>(4294967295u, 114437u, 51916u), 6549u), vec3<u32>(1u, 1u, 1u), min(52021u, 4294967295u)).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f)))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.c.c.x))), ~(abs(_wgslsmith_mult_i32(-1i, -1i)) >> (abs(firstLeadingBit(var_0.b)) % 32u)), -832f, vec3<u32>(var_0.c.a, _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(var_0.c.a, 38937u)), 19152u), Struct_2(~_wgslsmith_mod_u32(countOneBits(60396u), var_0.b), abs(~66961u), func_2(var_0.c, vec3<u32>(firstTrailingBit(var_0.a), 10033u >> (var_0.b % 32u), 4294967295u), var_0.c.a)));
    var var_2 = vec2<bool>(true, true);
    let var_3 = var_0.c.a;
    var var_4 = vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(func_2(var_0.c, vec3<u32>(16865u, 8074u, var_3), var_1.d.x).d, var_0.c.d | 1i, var_0.c.d), reverseBits(7714i & var_1.e.c.d)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -var_0.c.b), vec2<i32>(~u_input.a, 1i)) ^ u_input.a, ~var_1.e.c.d, var_1.b);
    var_4 = _wgslsmith_mult_vec4_i32(~(~(vec4<i32>(-20660i, 933i, 16998i, -1i) ^ vec4<i32>(var_0.c.d, 48171i, 0i, 0i))) ^ (-(vec4<i32>(2147483647i, -32677i, -22489i, var_0.c.b) << (vec4<u32>(4294967295u, var_1.e.a, var_0.c.a, 17941u) % vec4<u32>(32u))) << (vec4<u32>(75859u, 1u, var_0.c.a, func_2(Struct_1(4294967295u, var_4.x, var_0.c.c, 0i, var_0.c.e), vec3<u32>(4294967295u, 4294967295u, var_1.e.c.a), var_1.e.a).a) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(~u_input.a), _wgslsmith_mult_i32(var_4.x, u_input.a ^ 1i), ~var_4.x, ~u_input.a));
    var var_5 = var_0.c;
    let var_6 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.e.x - -836f)))), var_0.c.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(var_5.a, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(54749u, var_1.e.a)), reverseBits(_wgslsmith_sub_u32(var_3, var_1.d.x))), firstTrailingBit(vec4<i32>(select(_wgslsmith_mult_i32(var_0.c.b, var_4.x), ~u_input.a, true), firstTrailingBit(var_0.c.b), _wgslsmith_add_i32(max(-1i, 50174i), -1640i), select(1i, 265i, any(vec3<bool>(false, var_2.x, var_2.x))))), -var_1.b >> (var_0.c.a % 32u), vec4<u32>(21585u, ~(~(~1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a, 43059u, var_5.a, 39588u), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_1.d.x, var_0.a, 0u, var_1.e.b), vec4<u32>(var_0.c.a, 9740u, 104311u, 4294967295u))), 0u));
}

