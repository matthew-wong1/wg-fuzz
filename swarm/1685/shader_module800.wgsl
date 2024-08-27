struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1267f, -658f, 1186f, -1297f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), vec4<bool>(!(global0.x == 1194f), false, u_input.a >= -19171i, true), 4294967295u, i32(-1i) * -(i32(-1i) * -9629i), false), _wgslsmith_f_op_f32(-1233f * global0.x), vec2<bool>(global0.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(1000f * -1033f)), true), -813f);
    let var_1 = all(var_0.a.b.wzy);
    var var_2 = min(firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(var_0.a.c, var_0.a.c), 57115u, 74277u, _wgslsmith_clamp_u32(var_0.a.c, var_0.a.c, u_input.c)) >> (vec4<u32>(~0u, abs(4294967295u), u_input.d, 1u) % vec4<u32>(32u))), min(vec4<u32>(4294967295u, _wgslsmith_div_u32(4294967295u, abs(var_0.a.c)), _wgslsmith_mult_u32(countOneBits(12247u), var_0.a.c), var_0.a.c), firstTrailingBit(~vec4<u32>(var_0.a.c, 17753u, 26816u, u_input.d) << ((vec4<u32>(4294967295u, 4294967295u, var_0.a.c, 4294967295u) << (vec4<u32>(4294967295u, var_0.a.c, var_0.a.c, var_0.a.c) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    var_2 = _wgslsmith_add_vec4_u32(~(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(5685u, u_input.b, 1u, 8149u), vec4<u32>(15603u, 0u, 1u, 0u)), vec4<u32>(u_input.c, var_0.a.c, u_input.c, 0u) >> (vec4<u32>(u_input.b, 4294967295u, 98182u, u_input.b) % vec4<u32>(32u))) << (max(vec4<u32>(var_0.a.c, u_input.c, var_2.x, 1u), reverseBits(vec4<u32>(var_2.x, 4294967295u, u_input.c, u_input.b))) % vec4<u32>(32u))), ~vec4<u32>(u_input.b, _wgslsmith_sub_u32(var_2.x, ~6461u), var_2.x, max(0u, u_input.b)));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a, 144f, var_0.d, var_0.b) + vec4<f32>(var_0.a.a, 401f, global0.x, -460f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 346f, var_0.b, global0.x) * vec4<f32>(global0.x, 1000f, var_0.d, var_0.d))), select(select(var_0.a.b, vec4<bool>(var_1, var_1, true, false), var_0.c.x), vec4<bool>(true, true, var_1, var_0.c.x), any(vec2<bool>(var_1, var_1))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, var_0.a.a, -679f, -1025f)), vec4<f32>(var_0.a.a, 254f, 1000f, var_0.b))), vec4<f32>(-1124f, var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -2139f), 1000f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(abs(global0.x))) + _wgslsmith_div_f32(246f, _wgslsmith_f_op_f32(-var_0.d))), var_0.b, global0.x, global0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -964f)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = ~firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1 | _wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(1684u, 0u, 1u, arg_1.x)), ~(vec4<u32>(arg_1.x, 57087u, 5587u, u_input.c) << (vec4<u32>(0u, arg_1.x, 20556u, arg_1.x) % vec4<u32>(32u)))));
    var var_1 = vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(204f, -940f)))) + _wgslsmith_f_op_f32(func_3())));
    let var_2 = Struct_1(-930f, !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), true), all(vec2<bool>(true, true))), var_0, arg_0.x, true);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -118f), -701f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1698f, -1717f, 866f, -937f)))))))));
    let var_3 = -_wgslsmith_sub_vec2_i32(~max(vec2<i32>(-2147483647i, 22759i), countOneBits(u_input.e)), -_wgslsmith_mult_vec2_i32(~arg_0.xy, abs(vec2<i32>(10335i, 0i))));
    return Struct_3(~_wgslsmith_div_vec4_u32(arg_1, arg_1), 4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(arg_0.b, 22155u);
    let var_1 = arg_2;
    return vec3<bool>(select((select(var_1.d, 0i, false) == var_1.d) || arg_2.e, _wgslsmith_add_u32(arg_1.a.c, max(18886u, 4294967295u)) != var_0, any(!arg_1.a.b.zxz)), (any(!var_1.b.xwz) | all(vec4<bool>(var_1.e, true, var_1.b.x, true))) & any(select(vec2<bool>(arg_2.b.x, false), arg_1.c, arg_1.a.c > 1u)), var_1.b.x);
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.d, 35576u, u_input.d, 2291u)), ~(vec4<u32>(0u, u_input.d, u_input.d, u_input.d) ^ vec4<u32>(36173u, 0u, u_input.d, u_input.c))) ^ ~(vec4<u32>(22131u, 4294967295u, u_input.c, 25803u) & firstLeadingBit(vec4<u32>(0u, u_input.c, u_input.b, u_input.d))), ~u_input.b);
    return select(!(!func_4(func_2(vec4<i32>(u_input.e.x, u_input.e.x, -31336i, u_input.a), var_0.a), Struct_2(Struct_1(global0.x, vec4<bool>(false, false, arg_0, true), 44119u, u_input.a, arg_0), 433f, vec2<bool>(false, true), 704f), Struct_1(global0.x, vec4<bool>(arg_0, arg_0, arg_0, true), u_input.c, u_input.e.x, false))), !select(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0), func_4(func_2(vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x), var_0.a), Struct_2(Struct_1(global0.x, vec4<bool>(arg_0, arg_0, true, arg_0), u_input.d, u_input.a, true), global0.x, vec2<bool>(true, false), global0.x), Struct_1(global0.x, vec4<bool>(arg_0, false, arg_0, arg_0), 54536u, -1i, false)), select(vec3<bool>(arg_0, true, false), select(vec3<bool>(arg_0, true, false), vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false)), func_4(Struct_3(var_0.a, 0u), Struct_2(Struct_1(680f, vec4<bool>(false, arg_0, true, false), u_input.b, u_input.a, false), global0.x, vec2<bool>(true, true), 515f), Struct_1(280f, vec4<bool>(true, true, false, false), u_input.b, u_input.a, false)))), select(func_4(func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -12895i, u_input.e.x, -14660i), vec4<i32>(u_input.e.x, u_input.a, u_input.e.x, u_input.a)), ~vec4<u32>(0u, u_input.c, 0u, var_0.b)), Struct_2(Struct_1(-1000f, vec4<bool>(true, arg_0, false, true), 2960u, u_input.e.x, true), _wgslsmith_f_op_f32(sign(global0.x)), !vec2<bool>(false, arg_0), 344f), Struct_1(-2279f, vec4<bool>(false, false, false, arg_0), 1u, 2147483647i, !arg_0)).x, u_input.c < 38037u, all(vec4<bool>(true, arg_0 && arg_0, any(vec4<bool>(arg_0, false, true, true)), u_input.e.x != 33005i))));
}

fn func_5(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -200f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1563f, -1626f, arg_1.x)) - 615f), 1f, -616f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0, global0.x, -908f) * vec4<f32>(arg_0, global0.x, 251f, 720f)), vec4<f32>(global0.x, arg_0, arg_0, 581f))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-194f)))), -335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1000f)), _wgslsmith_f_op_f32(min(global0.x, -1525f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1000f, arg_0, -1264f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, arg_0, arg_0, 556f)))))));
    var var_0 = func_2(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(12236i, u_input.a, u_input.e.x, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, -1i) << (vec4<u32>(u_input.b, 9001u, u_input.c, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-9018i, u_input.a, -2147483647i, 30316i) << (vec4<u32>(1u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.b, 0u, u_input.d, 0u) & (vec4<u32>(4294967295u, u_input.d, u_input.d, u_input.d) ^ vec4<u32>(4294967295u, u_input.c, u_input.d, 4294967295u))) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~(countOneBits(vec4<u32>(33161u, 49456u, 4294967295u, 57113u)) ^ firstTrailingBit(vec4<u32>(u_input.d, 0u, 13520u, u_input.d))), vec4<u32>(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3046i, u_input.e.x, 2147483647i, u_input.e.x), vec4<i32>(u_input.a, -11741i, u_input.a, u_input.e.x), vec4<i32>(u_input.a, u_input.a, u_input.e.x, -116716i)), firstLeadingBit(vec4<u32>(1u, 4294967295u, u_input.c, u_input.b))).a.x, 1u, u_input.c, 39860u)));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3()), arg_0, -990f));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1096f * global0.x) + _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.x, 273f), 3032f)))) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -564f)))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -849f))) * _wgslsmith_f_op_f32(-global0.x)), select(!select(vec4<bool>(true, true, arg_1.x, arg_1.x), !vec4<bool>(true, arg_1.x, false, arg_1.x), !arg_1.x), !select(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(false, false, arg_1.x, arg_1.x), vec4<bool>(true, false, true, arg_1.x)), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(false, true, false, false)), !(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))), firstTrailingBit(u_input.d), 1i, all(arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-global0.x), select(vec3<bool>(true, _wgslsmith_f_op_f32(global0.x - global0.x) <= global0.x, _wgslsmith_f_op_f32(-506f + 557f) >= global0.x), select(vec3<bool>(true, true, true), !func_1(false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), vec3<bool>(true, true, true)));
    var var_1 = func_2(~_wgslsmith_sub_vec4_i32(~(vec4<i32>(u_input.e.x, 2147483647i, u_input.a, u_input.a) ^ vec4<i32>(-2147483647i, var_0.d, var_0.d, u_input.e.x)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-33455i, 2147483647i, u_input.e.x, 0i), vec4<i32>(u_input.a, -2147483647i, -2147483647i, -1i))), vec4<u32>(~_wgslsmith_mod_u32(1u, 1u | var_0.c), u_input.b, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 49149u, 31421u, 1u), vec4<u32>(var_0.c, 58110u, u_input.b, 1207u)), min(4294967295u, 68407u)) ^ max(var_0.c, 4294967295u), ~1u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(global0.x - var_0.a))), 1000f)), var_0.b, _wgslsmith_mod_u32(u_input.c, var_1.a.x), ~(2147483647i >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 9019u), var_1.a.yx), 0u, u_input.d) % 32u)), var_0.e);
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(ceil(var_0.a))))), _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -1083f))))))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), vec3<bool>(func_5(global0.x, !var_0.b.wzw).b.x, false, false)).b, reverseBits(var_0.c), -53795i, !var_0.e);
    let var_2 = vec4<i32>(~2147483647i, 1i << (u_input.b % 32u), 0i, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(4294967295u, ~1u, u_input.b, abs(53085u))), vec3<f32>(-2186f, _wgslsmith_f_op_f32(var_0.a + global0.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1829f, _wgslsmith_f_op_f32(var_0.a + var_0.a)), global0.x, true))), global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a)), var_0.a)))), var_1.a.wz);
}

