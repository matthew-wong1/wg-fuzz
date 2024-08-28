struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>) -> bool {
    return select((!(arg_1.x <= arg_1.x) == false) != true, !any(vec2<bool>(true, true)), select(any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true)), !(arg_0 > 424f), all(vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, true))));
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(false, select(false, true, !func_3(-603f, vec2<u32>(102640u, 4294967295u))), 420f, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<i32>(u_input.a, u_input.a, 17809i)) << (firstTrailingBit(76244u) % 32u))), Struct_1(true, any(vec3<bool>(true, true, true)), -1711f, -49996i), 1u, Struct_1(!all(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-207f, -896f)))), ~countOneBits(36203i)), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~select(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(34322i, u_input.b.x, u_input.a, u_input.b.x), vec4<bool>(true, false, true, true)), ~(~vec4<i32>(-13335i, -2147483647i, u_input.a, -23711i))), -vec4<i32>(u_input.b.x, u_input.a >> (4294967295u % 32u), _wgslsmith_clamp_i32(-8005i, -1i, 0i), -1i)));
    let var_1 = !var_0.b.b;
    let var_2 = abs(-var_0.b.d);
    var var_3 = Struct_1(false, var_1 | (!(!var_1) != (-2147483647i <= ~var_2)), var_0.a.c, ~(~countOneBits(var_2)));
    var_3 = Struct_1(var_3.b, 170f > _wgslsmith_f_op_f32(638f * _wgslsmith_f_op_f32(abs(var_3.c))), var_3.c, var_3.d);
    return var_0.c;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = vec2<u32>(~_wgslsmith_sub_u32(61587u, _wgslsmith_add_u32(arg_1, 1u)), arg_1) & ~vec2<u32>(min(arg_1, arg_0), ~(~arg_0));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-515f - 958f) + _wgslsmith_div_f32(-409f, -564f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1808f * -900f)))))));
    var var_2 = Struct_1(func_3(-1023f, ~_wgslsmith_mod_vec2_u32(firstLeadingBit(var_0), _wgslsmith_add_vec2_u32(vec2<u32>(24445u, var_0.x), vec2<u32>(arg_0, var_0.x)))), var_0.x != max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 2377u, arg_0), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, arg_1), vec3<u32>(1u, arg_1, arg_0))), var_0.x), var_1, u_input.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_2.c, -447f) + vec3<f32>(425f, var_2.c, 506f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, -146f, 500f))))))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1019f + var_2.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -864f), var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 + var_1))))));
    var var_4 = Struct_2(Struct_1(arg_2.x, all(!(!arg_2.xx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1983f))), min(~var_2.d, u_input.a & (var_2.d << (61575u % 32u)))), Struct_1((u_input.a << (~arg_1 % 32u)) == _wgslsmith_add_i32(25626i, firstTrailingBit(-1i)), true, _wgslsmith_f_op_f32(round(var_1)), -2147483647i), ~var_0.x, Struct_1(_wgslsmith_clamp_i32(2147483647i, u_input.b.x, _wgslsmith_mod_i32(var_2.d, 44471i)) >= _wgslsmith_mod_i32(~(-1i), abs(u_input.b.x)), !arg_2.x, var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.a), -37973i), ~vec2<i32>(u_input.b.x, var_2.d))), vec4<i32>(-_wgslsmith_sub_i32(1378i, -2147483647i << (var_0.x % 32u)), 0i >> (~(~arg_1) % 32u), 28108i | _wgslsmith_sub_i32(u_input.b.x, reverseBits(0i)), 44354i));
    return ~(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.x, var_4.c), vec4<u32>(var_0.x, 0u, 7525u, 33069u)), vec4<u32>(22968u, var_4.c, var_0.x, arg_0) & vec4<u32>(0u, arg_0, var_4.c, 0u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, 45945u, 52230u, var_0.x), vec4<u32>(1u, 35479u, 45285u, 0u))) << (_wgslsmith_sub_vec4_u32(~abs(vec4<u32>(arg_1, 19408u, var_4.c, 1u) | vec4<u32>(arg_0, arg_0, 24174u, 4294967295u)), select(select(vec4<u32>(84836u, arg_1, var_0.x, 0u), vec4<u32>(15520u, var_0.x, var_0.x, arg_0), vec4<bool>(false, true, false, false)), select(vec4<u32>(arg_1, 4294967295u, 57197u, 4294967295u), vec4<u32>(var_0.x, arg_1, 30064u, 64264u), false), all(vec2<bool>(false, false))) & _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, arg_1, arg_1, 1u), abs(vec4<u32>(var_4.c, 23640u, 56444u, var_4.c)))) % vec4<u32>(32u));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_2 {
    var var_0 = countOneBits(abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-26204i, -3819i, 11230i) >> (arg_0.zwx % vec3<u32>(32u))), vec3<i32>(u_input.a, u_input.a, -u_input.a))));
    var_0 = abs(-_wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x << (arg_1.x % 32u), abs(u_input.b.x)), reverseBits(~vec3<i32>(23829i, u_input.b.x, u_input.b.x))));
    var_0 = (-(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1i, 54031i), vec3<i32>(2147483647i, 2147483647i, 31957i)) ^ countOneBits(vec3<i32>(13288i, var_0.x, 25363i))) | select(~(~vec3<i32>(-2147483647i, -2147483647i, -6135i)), vec3<i32>(~var_0.x, ~u_input.b.x, -26636i), u_input.b.x >= _wgslsmith_mult_i32(u_input.b.x, 1i))) & _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(0i), reverseBits(2374i) | -u_input.b.x, -_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -10972i))), ~(-vec3<i32>(19834i, 21406i, var_0.x)) ^ -(~vec3<i32>(u_input.b.x, var_0.x, var_0.x)));
    let var_1 = abs(vec2<u32>(~(~arg_0.x << (_wgslsmith_mod_u32(arg_0.x, arg_0.x) % 32u)), ~_wgslsmith_sub_u32(arg_0.x << (7641u % 32u), _wgslsmith_sub_u32(arg_0.x, 4294967295u))));
    let var_2 = Struct_2(Struct_1(false || all(vec4<bool>(false, true, false, arg_3)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(873f, arg_2.x)) * _wgslsmith_f_op_f32(ceil(-349f))), var_1), arg_2.x, _wgslsmith_add_i32(var_0.x, -68051i)), Struct_1(arg_3, (!arg_3 | (arg_2.x < 1116f)) | !arg_3, -1031f, _wgslsmith_mod_i32(var_0.x, -(~var_0.x))), max(var_1.x, _wgslsmith_add_u32(min(_wgslsmith_div_u32(arg_0.x, 0u), ~var_1.x), ~(~arg_1.x))), Struct_1(!arg_3, func_3(arg_2.x, arg_0.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-121f))), abs(_wgslsmith_mod_i32(-2147483647i, u_input.b.x) | select(-10736i, -1i, false))), _wgslsmith_add_vec4_i32(~min(vec4<i32>(2685i, var_0.x, -2147483647i, var_0.x), vec4<i32>(u_input.a, var_0.x, -3379i, var_0.x)), ~(-vec4<i32>(-36235i, var_0.x, -49857i, -18294i))) << (countOneBits(arg_0 & countOneBits(arg_0)) % vec4<u32>(32u)));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = 1i;
    var_0 = -764f;
    let var_2 = func_5(min(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0, 15996u, arg_0), ~vec4<u32>(arg_0, 25272u, 19344u, 9699u)), func_4(0u, func_2(), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))))), _wgslsmith_mult_vec2_u32(vec2<u32>(30126u, ~firstLeadingBit(0u)), vec2<u32>(~0u, arg_0)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, 755f), vec2<bool>(true, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1, arg_1), vec2<f32>(arg_1, -364f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), vec2<bool>(true, true))), all(vec2<bool>(true, true)));
    var var_3 = vec4<u32>(~1747u, ~47564u, _wgslsmith_mod_u32(1u, 4294967295u), arg_0);
    return var_2.b;
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = func_1(arg_0.c, _wgslsmith_f_op_f32(ceil(arg_0.d.c)));
    var var_1 = arg_0;
    let var_2 = Struct_2(Struct_1(!any(select(vec2<bool>(true, true), vec2<bool>(arg_0.d.b, var_0.b), vec2<bool>(var_0.b, var_0.a))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1865f, _wgslsmith_f_op_f32(arg_0.a.c + -792f))) + var_0.c), arg_2.x), Struct_1(!(!var_1.d.a), all(select(!vec3<bool>(var_0.a, var_0.a, true), !vec3<bool>(true, var_1.d.a, arg_0.d.a), select(vec3<bool>(var_1.b.a, false, true), vec3<bool>(false, true, arg_0.d.a), true))), arg_0.b.c, -var_0.d & min(arg_2.x, var_1.d.d)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(4294967295u & ~var_1.c, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(arg_0.c, arg_0.c)), ~arg_0.c), 1u), var_1.b, arg_0.e);
    var var_3 = var_0.a && true;
    var var_4 = abs(9768i);
    return arg_0.a;
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c)))) + 147f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, arg_0, arg_1.c, arg_1.c)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, -211f, arg_0)))))))) + vec4<f32>(324f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1990f, _wgslsmith_f_op_f32(f32(-1f) * -321f))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c))))));
    var var_2 = select(vec4<bool>(func_1(1u, _wgslsmith_f_op_f32(-1409f - var_1.x)).a, arg_1.a, !(_wgslsmith_f_op_f32(-arg_0) <= _wgslsmith_f_op_f32(max(arg_1.c, arg_1.c))), true), select(select(vec4<bool>(!arg_1.b, arg_1.b | true, all(vec3<bool>(arg_1.a, arg_1.a, true)), !arg_1.a), !vec4<bool>(arg_1.a, false, arg_1.b, false), vec4<bool>(true, arg_1.b, arg_1.a, true)), !select(select(vec4<bool>(arg_1.b, true, false, true), vec4<bool>(false, false, true, true), arg_1.b), !vec4<bool>(true, arg_1.a, arg_1.a, arg_1.b), all(vec4<bool>(true, true, arg_1.a, arg_1.a))), arg_1.c >= arg_0), func_6(Struct_2(Struct_1(any(vec3<bool>(arg_1.a, arg_1.b, true)), true, arg_1.c, -u_input.b.x), Struct_1(any(vec4<bool>(arg_1.b, false, true, arg_1.b)), false, _wgslsmith_f_op_f32(-arg_1.c), -arg_1.d), 57804u, arg_1, select(firstLeadingBit(vec4<i32>(arg_1.d, -22248i, arg_1.d, arg_1.d)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.d, -1i, arg_1.d, 0i), vec4<i32>(0i, u_input.b.x, -42737i, 0i)), !vec4<bool>(arg_1.b, arg_1.b, arg_1.a, arg_1.b))), firstTrailingBit(max(func_1(5526u, 212f).d, u_input.b.x)), ~(-u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) + 697f)).b);
    var_2 = select(vec4<bool>(var_2.x, !arg_1.b, func_1(~(~24925u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(1383f)), -1000f, true))).a, var_2.x), !vec4<bool>(any(vec4<bool>(true, false, var_2.x, false)), arg_1.b, !(!var_2.x), func_5(vec4<u32>(79225u, 0u, 4294967295u, 4294967295u), min(vec2<u32>(10175u, 4294967295u), vec2<u32>(24458u, 1898u)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.x, arg_1.c), vec2<f32>(arg_1.c, 421f))), var_2.x || arg_1.a).d.a), false);
    var var_3 = ~65121u;
    return func_5(select((func_4(1u, 0u, var_2.zyz) | vec4<u32>(1u, 1u, 1u, 1u)) << (_wgslsmith_mult_vec4_u32(max(vec4<u32>(86071u, 4294967295u, 75489u, 1u), vec4<u32>(7850u, 5271u, 0u, 0u)), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u) >> (min(~vec4<u32>(10876u, 81567u, 73542u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), arg_1.b), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(36092u, 45424u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(var_1.yw)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1660f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.yw * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.c, arg_1.c), var_1.zw, arg_1.b))), vec2<f32>(_wgslsmith_div_f32(401f, arg_1.c), var_1.x))))), !any(vec2<bool>(arg_1.a, -150f < arg_1.c))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) + _wgslsmith_f_op_f32(-798f + -833f))), func_6(Struct_2(func_1(31823u, 2248f), Struct_1(false, false, 613f, 12570i), ~1u, func_1(4294967295u, -567f), -vec4<i32>(2147483647i, -35683i, u_input.a, 20397i)), u_input.a, u_input.b, -188f)), Struct_1(u_input.a != (-2163i | u_input.b.x), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -442f), 1i), 4294967295u, Struct_1(true, func_5(min(~vec4<u32>(0u, 4294967295u, 1301u, 60467u), select(vec4<u32>(83904u, 0u, 3708u, 23981u), vec4<u32>(6450u, 51882u, 47584u, 1u), false)), vec2<u32>(1u, abs(4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(543f, 412f), vec2<f32>(-559f, -291f), false))), false & all(vec3<bool>(true, false, false))).a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-631f)), _wgslsmith_f_op_f32(1565f * -168f))), ~u_input.b.x), abs(firstTrailingBit(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.a, -481i, -3339i)))));
    let var_1 = u_input.a ^ (var_0.e.x >> (var_0.c % 32u));
    let var_2 = reverseBits(reverseBits(vec2<u32>(~_wgslsmith_mult_u32(25491u, var_0.c), 1386u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.c));
    var var_4 = reverseBits(_wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(25112u, 30269u, 1u, 757u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, var_2.x, 4294967295u, 4294967295u), vec4<u32>(1800u, 35512u, 0u, var_0.c) | vec4<u32>(45868u, 1u, 4294967295u, 0u))) | vec4<u32>(0u, var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.x, 6780u, 0u, var_2.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, 22815u, 47312u, var_0.c), vec4<u32>(2075u, 39967u, 54042u, var_0.c))), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a, abs(~(~vec4<u32>(57211u, 0u, 2914u, 38330u))) ^ select(vec4<u32>(~var_0.c, max(36458u, 44179u), ~var_4.x, ~11846u), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(85566u, 4294967295u, var_4.x, 1u)), ~vec4<u32>(var_2.x, 0u, 1u, var_4.x), vec4<u32>(1u, var_2.x, var_0.c, 65443u) & vec4<u32>(var_0.c, var_2.x, var_4.x, var_2.x)), select(!vec4<bool>(false, false, true, var_0.b.a), select(vec4<bool>(var_0.d.a, var_0.a.a, false, true), vec4<bool>(var_0.d.a, var_0.d.b, true, var_0.d.a), var_0.b.b), !vec4<bool>(false, true, var_0.a.a, var_0.d.a))), 12945u);
}

