struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.d;
    var var_1 = Struct_3(Struct_2(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * 690f) - _wgslsmith_f_op_f32(-var_0.e)))), arg_0.d, Struct_1(vec3<f32>(_wgslsmith_div_f32(-1009f, -1456f), 1520f, -1367f), var_0.b, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(58021u, u_input.a, 30884u), var_0.c, _wgslsmith_mult_u32(u_input.a, 5550u)), -var_0.d >> ((vec4<u32>(var_0.b, var_0.c, 0u, arg_0.c.c) >> (vec4<u32>(var_0.c, 50153u, u_input.a, 36599u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(var_0.a.x + var_0.e))), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.a + var_0.a), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(285f, var_0.a.x, var_0.a.x))), vec3<bool>(true, arg_0.a.x, true))), var_0.b, min(arg_0.d.c, var_0.c), vec4<i32>(arg_0.d.d.x, ~(-22260i), ~20879i, select(0i, ~var_0.d.x, true & arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(771f * var_0.e))) * 1339f)), select(!select(select(vec3<bool>(false, arg_0.a.x, false), vec3<bool>(arg_0.a.x, arg_0.a.x, false), vec3<bool>(true, false, true)), select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(false, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, false, false)), 1000f != var_0.e), vec3<bool>(arg_0.d.c != _wgslsmith_sub_u32(130202u, 5761u), arg_0.a.x, select(!arg_0.a.x, all(vec2<bool>(true, false)), true)), ~(~var_0.d.x) >= firstTrailingBit(max(-1i, var_0.d.x))), ~(countOneBits(firstLeadingBit(vec2<u32>(arg_0.c.c, 37833u))) ^ ~(~vec2<u32>(u_input.a, 4294967295u))));
    let var_2 = select(vec4<bool>(-2147483647i > arg_0.c.d.x, arg_0.a.x, false, var_1.a.a.x), vec4<bool>(true, arg_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_1.a.d.e)))) == _wgslsmith_f_op_f32(max(var_1.a.d.a.x, -915f)), true), var_1.c.x || !any(!vec4<bool>(true, true, arg_0.a.x, true)));
    var var_3 = reverseBits(vec2<i32>(var_0.d.x, var_0.d.x));
    var_1 = Struct_3(var_1.a, arg_0.c, vec3<bool>(min(var_1.b.d.x, 1i) >= _wgslsmith_mod_i32(var_0.d.x, -var_1.a.c.d.x), any(vec3<bool>(true, true, true)), !(!var_1.a.a.x)), var_1.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(672f, 161f));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~min(countOneBits(i32(-1i) * -2147483647i), arg_0.a.d.d.x);
    let var_1 = Struct_1(arg_0.b.a, u_input.a, arg_0.a.c.b, vec4<i32>(-2147483647i, ~(~_wgslsmith_div_i32(-103i, var_0)), var_0, arg_0.a.d.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.c.xx, -1000f, Struct_1(vec3<f32>(arg_0.a.c.a.x, -1045f, -751f), u_input.a, 30321u, vec4<i32>(2147483647i, var_0, -59662i, arg_0.a.d.d.x), arg_0.a.b), arg_0.b)))) * 618f));
    var var_2 = Struct_3(arg_0.a, arg_0.b, !select(select(!arg_0.c, select(arg_0.c, arg_0.c, arg_0.c.x), arg_0.c), arg_0.c, all(vec3<bool>(true, false, false))), vec2<u32>(~firstLeadingBit(35771u) & abs(~u_input.a), _wgslsmith_mod_u32(6823u, u_input.a)));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(_wgslsmith_f_op_f32(700f - var_2.b.e), _wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_f_op_f32(-var_2.b.a.x))), reverseBits(arg_0.b.b), 52710u, -vec4<i32>(var_0, -29803i, var_0, firstTrailingBit(0i)), arg_0.a.d.a.x), _wgslsmith_clamp_u32(57504u, 42765u, ~(~59312u ^ u_input.a)));
    var_3 = Struct_4(var_1, max(1u, 1u));
    return Struct_1(vec3<f32>(var_2.b.e, _wgslsmith_f_op_f32(246f + 300f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.e)) + -1964f))), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(45656u, arg_0.a.d.b, 1u), vec3<u32>(var_2.d.x, u_input.a, arg_0.d.x)), ~(vec3<u32>(var_1.c, arg_0.a.c.b, 13894u) >> (vec3<u32>(var_3.b, 51303u, var_2.b.b) % vec3<u32>(32u)))) ^ ~_wgslsmith_sub_u32(firstTrailingBit(44335u), ~1u), ~countOneBits(_wgslsmith_div_u32(13797u, 9751u)) >> (_wgslsmith_mod_u32(abs(42910u), _wgslsmith_div_u32(~4294967295u, max(59162u, var_1.c))) % 32u), arg_0.b.d, -892f);
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_4(func_2(Struct_3(Struct_2(arg_2.a, arg_2.b, func_2(Struct_3(arg_2, Struct_1(vec3<f32>(1992f, -1000f, -166f), arg_2.d.b, arg_0.a.b, arg_0.a.d, 1118f), vec3<bool>(true, true, true), vec2<u32>(arg_0.a.c, arg_3.c))), func_2(Struct_3(arg_2, arg_3, vec3<bool>(arg_1, arg_2.a.x, arg_1), vec2<u32>(66784u, arg_0.b)))), arg_0.a, select(select(vec3<bool>(false, arg_2.a.x, true), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, false)), !vec3<bool>(true, arg_1, arg_1), !arg_2.a.x), ~vec2<u32>(1u, u_input.a))), 66642u);
    var var_1 = Struct_2(vec2<bool>(any(arg_2.a), true), arg_2.d.a.x, func_2(Struct_3(arg_2, Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), var_0.b, ~1u, arg_0.a.d, _wgslsmith_f_op_f32(arg_3.a.x * arg_0.a.a.x)), !(!vec3<bool>(arg_2.a.x, false, false)), max(vec2<u32>(30187u, arg_3.b), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_0.b, 1386u))))), Struct_1(arg_2.d.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, select(arg_0.a.b | var_0.a.c, 0u, true)), ~(0u << (1u % 32u)), countOneBits(select(arg_0.a.d, var_0.a.d, arg_2.a.x)) | (~arg_0.a.d & _wgslsmith_clamp_vec4_i32(vec4<i32>(17301i, var_0.a.d.x, 2147483647i, arg_3.d.x), arg_3.d, arg_3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c.e)))));
    var_1 = arg_2;
    let var_2 = Struct_3(Struct_2(var_1.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) - _wgslsmith_div_f32(arg_2.b, arg_0.a.e)))), var_1.c, func_2(Struct_3(Struct_2(vec2<bool>(false, var_1.a.x), -548f, var_1.d, Struct_1(vec3<f32>(981f, 476f, 231f), 0u, 19621u, arg_2.c.d, -182f)), var_1.d, select(vec3<bool>(arg_2.a.x, true, false), vec3<bool>(var_1.a.x, false, var_1.a.x), arg_2.a.x), vec2<u32>(arg_0.a.c, 4294967295u) | vec2<u32>(var_1.d.c, var_1.d.b)))), Struct_1(var_1.c.a, _wgslsmith_clamp_u32(4294967295u, 29187u, func_2(Struct_3(Struct_2(vec2<bool>(arg_1, false), 390f, Struct_1(vec3<f32>(1000f, 141f, -582f), 4294967295u, arg_0.a.c, var_0.a.d, var_0.a.a.x), arg_3), Struct_1(vec3<f32>(arg_0.a.a.x, 2173f, 347f), 0u, var_1.d.b, vec4<i32>(var_0.a.d.x, -2147483647i, arg_2.d.d.x, 0i), var_1.b), vec3<bool>(arg_2.a.x, false, true), vec2<u32>(1u, arg_3.b))).b | min(71004u, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_2.c.b, countOneBits(11938u)), max(_wgslsmith_div_vec2_u32(vec2<u32>(arg_3.b, var_1.d.c), vec2<u32>(13796u, u_input.a)), abs(vec2<u32>(arg_2.c.b, arg_2.d.c)))), ~(-var_1.d.d), 1000f), !select(!select(vec3<bool>(true, arg_2.a.x, false), vec3<bool>(var_1.a.x, false, var_1.a.x), var_1.a.x), vec3<bool>(true, true, true), !(!vec3<bool>(true, arg_2.a.x, false))), vec2<u32>(abs(_wgslsmith_div_u32(72379u, var_0.a.c)), _wgslsmith_mod_u32(func_2(Struct_3(Struct_2(vec2<bool>(var_1.a.x, false), 676f, Struct_1(arg_2.c.a, 1u, 0u, vec4<i32>(arg_0.a.d.x, -51716i, arg_3.d.x, 1i), -468f), Struct_1(vec3<f32>(var_0.a.a.x, 1059f, 147f), arg_0.b, 1u, vec4<i32>(1i, arg_0.a.d.x, arg_0.a.d.x, var_1.c.d.x), var_0.a.e)), arg_3, vec3<bool>(false, arg_1, var_1.a.x), vec2<u32>(var_1.c.b, arg_2.d.c))).b, ~4294967295u)) | min(vec2<u32>(arg_3.c, arg_0.a.b), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(1483u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_2.c.c, 1u), vec2<u32>(arg_3.c, arg_0.b)))));
    var_1 = Struct_2(var_2.a.a, -834f, var_2.a.d, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.d.a.x)), arg_3.e), 92294u, var_2.a.d.b, ~_wgslsmith_mod_vec4_i32(var_2.a.d.d, firstLeadingBit(vec4<i32>(0i, -1i, 2147483647i, var_2.b.d.x))), var_2.a.b));
    return vec4<u32>(~_wgslsmith_clamp_u32(~15068u, abs(arg_3.b), 0u), reverseBits(~39618u), func_2(var_2).c, ~0u) & countOneBits(vec4<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_2.a.d.b), vec3<u32>(8368u, arg_0.a.b, 34988u)), u_input.a), _wgslsmith_dot_vec3_u32(~vec3<u32>(97023u, arg_2.c.b, arg_0.a.b), ~vec3<u32>(var_2.a.d.c, u_input.a, 0u)), arg_0.b, select(~var_2.b.b, arg_2.d.c, arg_3.c < arg_2.c.c)));
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -149f))));
    let var_1 = firstLeadingBit(2147483647i) >> (_wgslsmith_mult_u32(min(~u_input.a, ~firstLeadingBit(u_input.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(47183u, u_input.a, 100608u, u_input.a))) % 32u);
    let var_2 = func_4(Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(867f - -1000f), var_0), ~min(u_input.a, u_input.a), ~25345u, vec4<i32>(arg_1.x, var_1, 0i, arg_1.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(arg_0, 1067f))), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 1u), max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 28816u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(9345u, u_input.a)))), false && arg_2.x, Struct_2(select(!select(vec2<bool>(arg_2.x, true), vec2<bool>(false, arg_2.x), vec2<bool>(false, true)), vec2<bool>(arg_2.x, true), arg_2.x), -674f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -1184f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -930f))), u_input.a, ~_wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1, -2147483647i, 0i, arg_1.x), -vec4<i32>(-1i, 2147483647i, var_1, 15255i)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-var_0))), func_2(Struct_3(Struct_2(arg_2, arg_0, Struct_1(vec3<f32>(-303f, var_0, var_0), 113947u, u_input.a, arg_1, arg_0), Struct_1(vec3<f32>(arg_0, 1553f, -1039f), 4294967295u, 6302u, arg_1, var_0)), Struct_1(vec3<f32>(var_0, arg_0, 1024f), 36633u, u_input.a, arg_1, 384f), vec3<bool>(true, true, true), vec2<u32>(8374u, u_input.a)))), func_2(Struct_3(Struct_2(select(arg_2, vec2<bool>(arg_2.x, false), true), _wgslsmith_f_op_f32(var_0 + var_0), Struct_1(vec3<f32>(arg_0, var_0, var_0), u_input.a, 0u, arg_1, var_0), func_2(Struct_3(Struct_2(vec2<bool>(true, false), arg_0, Struct_1(vec3<f32>(782f, -458f, -1241f), u_input.a, 4294967295u, arg_1, -535f), Struct_1(vec3<f32>(103f, 2238f, -1201f), u_input.a, u_input.a, arg_1, arg_0)), Struct_1(vec3<f32>(arg_0, 682f, var_0), 130044u, 61493u, vec4<i32>(-1i, 7494i, arg_1.x, 2082i), -637f), vec3<bool>(false, false, false), vec2<u32>(4294967295u, u_input.a)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, 645f, var_0))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(8404u, 91813u)), firstTrailingBit(1361u), _wgslsmith_clamp_vec4_i32(arg_1, arg_1, vec4<i32>(1756i, var_1, var_1, var_1)), _wgslsmith_f_op_f32(sign(arg_0))), vec3<bool>(arg_2.x, !arg_2.x, false), ~firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)))));
    let var_3 = var_2;
    var var_4 = 0i;
    return arg_2.x;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1476f, 616f, -946f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, -253f, -1000f)))))), ~(~func_4(Struct_4(Struct_1(vec3<f32>(843f, arg_1, 293f), u_input.a, 0u, vec4<i32>(-54328i, -44631i, 12176i, 1i), -320f), u_input.a), true, Struct_2(vec2<bool>(true, arg_0), arg_2.x, Struct_1(vec3<f32>(arg_2.x, 107f, arg_1), 1u, 32633u, vec4<i32>(-2147483647i, -1i, -2147483647i, -12910i), arg_2.x), Struct_1(vec3<f32>(arg_1, 597f, -891f), u_input.a, u_input.a, vec4<i32>(-28783i, -2147483647i, 22409i, 48328i), 1861f)), Struct_1(vec3<f32>(-1576f, arg_2.x, -1060f), u_input.a, u_input.a, vec4<i32>(12067i, 0i, 61923i, -1i), 1530f)).x), _wgslsmith_clamp_u32(func_4(Struct_4(func_2(Struct_3(Struct_2(vec2<bool>(false, arg_0), 447f, Struct_1(vec3<f32>(arg_2.x, -944f, arg_2.x), 0u, 4294967295u, vec4<i32>(591i, -1i, -1i, 2147483647i), -536f), Struct_1(vec3<f32>(arg_2.x, 769f, arg_1), 1u, u_input.a, vec4<i32>(0i, 36031i, -44503i, -14669i), arg_2.x)), Struct_1(vec3<f32>(-1333f, 531f, 277f), 1u, u_input.a, vec4<i32>(1i, -2147483647i, -1i, 10843i), arg_1), vec3<bool>(arg_0, true, false), vec2<u32>(u_input.a, u_input.a))), ~u_input.a), any(vec2<bool>(arg_0, false)), Struct_2(select(vec2<bool>(false, true), vec2<bool>(false, true), false), _wgslsmith_div_f32(arg_1, arg_2.x), func_2(Struct_3(Struct_2(vec2<bool>(arg_0, true), arg_1, Struct_1(vec3<f32>(1305f, 281f, arg_2.x), u_input.a, 12861u, vec4<i32>(1i, 1i, 19361i, -1i), 1733f), Struct_1(vec3<f32>(956f, arg_2.x, -528f), u_input.a, 15941u, vec4<i32>(-2147483647i, -15206i, 4653i, -16180i), -259f)), Struct_1(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), u_input.a, 37159u, vec4<i32>(47803i, 23176i, 0i, -1i), arg_2.x), vec3<bool>(false, false, arg_0), vec2<u32>(u_input.a, 1u))), func_2(Struct_3(Struct_2(vec2<bool>(arg_0, true), -1451f, Struct_1(vec3<f32>(arg_2.x, 1285f, arg_1), u_input.a, 4294967295u, vec4<i32>(-38147i, 0i, 2147483647i, -1i), 408f), Struct_1(vec3<f32>(arg_2.x, arg_1, -2148f), u_input.a, u_input.a, vec4<i32>(-1i, 1i, -4278i, 25722i), arg_1)), Struct_1(vec3<f32>(arg_2.x, -2956f, 1557f), u_input.a, 67863u, vec4<i32>(0i, 2170i, -13550i, 24936i), 170f), vec3<bool>(false, true, false), vec2<u32>(21619u, u_input.a)))), Struct_1(vec3<f32>(842f, arg_2.x, -429f), _wgslsmith_mult_u32(u_input.a, 1u), countOneBits(7591u), vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_f32(-arg_1))).x, 4294967295u, select((u_input.a >> (72230u % 32u)) | ~34186u, ~1u, true)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(~select(vec4<i32>(-2147483647i, 24032i, -35113i, -1644i), vec4<i32>(1i, -2147483647i, -1i, -33468i), vec4<bool>(false, arg_0, arg_0, true)), vec4<i32>(1i, 1i, 2147483647i >> (u_input.a % 32u), -52268i)), _wgslsmith_mult_vec4_i32(vec4<i32>(771i, 39008i, 0i, i32(-1i) * -7581i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(0i, 28458i, 16492i, -58101i)))), 1129f);
    var var_1 = Struct_2(!(!(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.x + -360f)))), var_0, var_0);
    var var_2 = Struct_4(var_1.c, 91965u);
    let var_3 = Struct_3(Struct_2(select(vec2<bool>(true, true), var_1.a, vec2<bool>(var_1.a.x, var_1.a.x && arg_0)), -988f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(178f, var_0.e)), _wgslsmith_f_op_f32(var_2.a.e + -173f), _wgslsmith_f_op_f32(select(192f, 888f, arg_0))), _wgslsmith_div_u32(var_0.b, 10038u) | _wgslsmith_add_u32(88703u, 1u), abs(u_input.a), var_0.d, var_2.a.e), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.c.a - var_2.a.a) * vec3<f32>(138f, var_1.b, arg_1)), 1u, 4294967295u, firstTrailingBit(var_1.d.d), var_1.c.a.x)), func_2(Struct_3(Struct_2(select(vec2<bool>(arg_0, true), vec2<bool>(false, var_1.a.x), var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(vec3<f32>(var_1.c.a.x, -452f, var_2.a.e), 0u, 1u, var_1.d.d, -1872f), var_1.d), var_1.d, !select(vec3<bool>(false, arg_0, var_1.a.x), vec3<bool>(true, var_1.a.x, true), arg_0), ~vec2<u32>(u_input.a, var_2.b))), select(vec3<bool>(arg_0, var_1.a.x, arg_0), !(!vec3<bool>(arg_0, var_1.a.x, false)), arg_0), ~(vec2<u32>(~1u, reverseBits(var_0.c)) & _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(var_1.c.b, u_input.a)), ~vec2<u32>(var_0.b, var_2.b))));
    var var_4 = ~var_2.a.d.xyy;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!func_1(891f, vec4<i32>(1i, 1i, 1i, 1i) << (firstLeadingBit(vec4<u32>(5310u, 1u, 36892u, u_input.a)) % vec4<u32>(32u)), vec2<bool>(u_input.a <= u_input.a, any(vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_f32(min(-818f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(139f * 310f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-873f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1246f, 1439f), vec2<f32>(-1457f, 1043f), false)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(434f, 2325f) * vec2<f32>(-1092f, -1525f))))));
    var var_1 = -_wgslsmith_mod_i32(~abs(-2147483647i), var_0.d.x) << (abs(67296u) % 32u);
    var var_2 = var_0.d.xzy;
    let var_3 = 31995u <= _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(74971u >> (u_input.a % 32u), ~var_0.c), _wgslsmith_add_u32(u_input.a << (32355u % 32u), _wgslsmith_sub_u32(13101u, var_0.c))), 0u);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.a, !var_3 | (28273i != var_2.x))))), var_0.b, 45237u, vec4<i32>(_wgslsmith_div_i32(~(-4071i), var_0.d.x), func_5(select(var_3, var_3, var_3), var_0.e, vec2<f32>(-2922f, 1240f)).d.x, min(0i, _wgslsmith_add_i32(var_2.x, -48909i)), -1i) ^ countOneBits(select(var_0.d, var_0.d, true)), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~4294967295u), var_0.b), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -977f) + _wgslsmith_f_op_f32(var_0.a.x - -286f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_0.e + -1393f), -347f, var_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-901f, var_0.e))))));
}

