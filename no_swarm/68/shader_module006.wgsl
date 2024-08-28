struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(false, false, false, false, true, true, false);

var<private> global1: u32 = 43940u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = select(!(-reverseBits(-1i) <= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-1i, -4958i, 49034i)), vec3<i32>(u_input.a, u_input.a, 1i))), all(vec3<bool>(all(select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(28272u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(28365u, 7u)], false, global0[_wgslsmith_index_u32(0u, 7u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(19674u, 7u)], false))), _wgslsmith_f_op_f32(f32(-1f) * -100f) <= _wgslsmith_f_op_f32(trunc(773f)), true)), true);
    let var_1 = Struct_1(-1383f, vec2<u32>(~4294967295u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 8782u, 64159u), ~vec3<u32>(0u, 81056u, 72092u))), false, _wgslsmith_div_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(52732u, 67575u, 22038u, 4294967295u)), max(select(vec4<u32>(12523u, 39756u, 0u, 45784u), vec4<u32>(10632u, 24327u, 1u, 4294967295u), false), vec4<u32>(0u, 4294967295u, 73763u, 739u))) | _wgslsmith_sub_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 46087u), vec4<u32>(4294967295u, 3059u, 1u, 65128u), vec4<u32>(1u, 0u, 1u, 51820u)), vec4<u32>(1u, 1u, 1u, 1u)), ~(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-49389i, u_input.a, u_input.a)) >> (select(vec3<u32>(41817u, 4294967295u, 0u), vec3<u32>(29560u, 0u, 47869u), vec3<bool>(var_0, var_0, false)) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    global0 = array<bool, 7>();
    let var_2 = countOneBits(u_input.a);
    var var_3 = max(max(select(var_1.e.xx, _wgslsmith_sub_vec2_i32(var_1.e.xx, var_1.e.zx), any(vec3<bool>(var_0, global0[_wgslsmith_index_u32(32679u, 7u)], var_0))) ^ var_1.e.yy, vec2<i32>(var_1.e.x, ~firstLeadingBit(-2147483647i))), -(~vec2<i32>(i32(-1i) * -1i, -var_1.e.x)));
    return var_1.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2301f), -1347f)), vec2<u32>(min(~4294967295u, 60687u), 76909u), all(arg_0.wxx), vec4<u32>(reverseBits(1u), ~103714u & firstTrailingBit(0u), 1u, 14485u), _wgslsmith_mult_vec3_i32(select(arg_1.yyw, -arg_1.www, arg_0.wzx), arg_1.xww)), 9835u, !func_3() || true, vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(837f - 260f))), _wgslsmith_f_op_f32(step(282f, _wgslsmith_f_op_f32(f32(-1f) * -789f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1249f)), _wgslsmith_f_op_f32(871f - -1000f), func_3()))), _wgslsmith_div_f32(-447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)))));
    global1 = _wgslsmith_sub_u32(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.b, 4294967295u, var_0.a.b.x, var_0.b), max(vec4<u32>(var_0.a.d.x, 69819u, 40886u, var_0.a.d.x), var_0.a.d)) << (4294967295u % 32u)), 1u);
    let var_1 = -_wgslsmith_mult_vec4_i32(arg_1, firstTrailingBit(~arg_1));
    var var_2 = Struct_1(1242f, vec2<u32>(select(_wgslsmith_add_u32(0u, var_0.b), var_0.b, true), _wgslsmith_div_u32(65865u, 1u)) | abs(vec2<u32>(var_0.b, 1u)), true, firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.b.x, var_0.b, var_0.a.b.x, 4294967295u), vec4<u32>(var_0.b, var_0.b, 22570u, 1u)), var_0.b, _wgslsmith_sub_u32(16480u, 1u), var_0.b) << (vec4<u32>(reverseBits(8210u), ~var_0.b, var_0.b, firstTrailingBit(4294967295u)) % vec4<u32>(32u))), vec3<i32>(reverseBits(var_1.x), var_1.x, 9350i));
    var var_3 = var_0.a;
    return select(select(vec2<bool>(true, any(vec3<bool>(true, false, arg_0.x))), select(select(arg_0.zz, !arg_0.yx, global0[_wgslsmith_index_u32(56906u, 7u)]), arg_0.xy, !(!vec2<bool>(var_3.c, var_2.c))), ~(~(-1i)) >= (countOneBits(-1i) << (min(var_3.b.x, var_2.b.x) % 32u))), arg_0.xy, arg_0.wy);
}

fn func_2() -> bool {
    global0 = array<bool, 7>();
    return any(func_4(select(vec4<bool>(true, func_3(), select(true, global0[_wgslsmith_index_u32(13098u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)]), func_3()), !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], true, global0[_wgslsmith_index_u32(55152u, 7u)], true)), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(70662u, 7u)], global0[_wgslsmith_index_u32(75306u, 7u)]), true)), vec4<i32>(-_wgslsmith_clamp_i32(-2147483647i, u_input.a, u_input.a), u_input.a, -u_input.a << (1u % 32u), abs(1i))));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    global1 = _wgslsmith_div_u32(4294967295u, 4294967295u);
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(select(841f, _wgslsmith_f_op_f32(select(135f, _wgslsmith_f_op_f32(sign(arg_2)), all(vec4<bool>(func_2(), global0[_wgslsmith_index_u32(0u, 7u)], true, func_3())))), true));
    let var_2 = max(u_input.a, arg_3.a.e.x);
    var var_3 = Struct_1(arg_1.a.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(~var_0.b.x, select(51210u, var_0.b.x, false)), reverseBits(~arg_3.a.d.ww)), any(!vec3<bool>(func_3(), true, all(vec3<bool>(arg_1.c, arg_1.c, var_0.c)))), vec4<u32>(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(arg_3.b, arg_3.b)) & arg_3.b, _wgslsmith_dot_vec4_u32(var_0.d, arg_1.a.d), ~_wgslsmith_clamp_u32(countOneBits(14624u), ~arg_3.a.d.x, arg_0), _wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, var_0.d.x, arg_1.b), arg_1.a.d)), arg_3.a.d.x)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(18879i, arg_3.a.e.x, var_2) ^ ~arg_1.a.e, var_0.e)));
    return vec3<i32>(-20984i, -25914i, -u_input.a | -_wgslsmith_div_i32(-5149i, -28234i)) ^ arg_1.a.e;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: bool) -> Struct_2 {
    global0 = array<bool, 7>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(round(-804f)), ~vec2<u32>(abs(_wgslsmith_clamp_u32(24130u, arg_1.b.x, 1u)), 1u), !func_2(), arg_1.d, select(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a, 14986i, u_input.a)), ~vec3<i32>(u_input.a, arg_1.e.x, -1i)), arg_1.e >> (firstLeadingBit(countOneBits(arg_1.d.ywy)) % vec3<u32>(32u)), select(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1.d.x, 7u)], arg_1.c), arg_0, !select(vec3<bool>(true, false, arg_1.c), arg_0, arg_0))));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.e.x >> (_wgslsmith_add_u32(max(arg_1.d.x, arg_1.b.x), select(arg_1.d.x, 4294967295u, arg_3)) % 32u), -_wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -40587i), vec2<i32>(2147483647i, arg_1.e.x)))), countOneBits(vec2<i32>(-var_0.e.x, ~(-arg_1.e.x))), var_0.e.zx);
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.a, -586f)), _wgslsmith_f_op_f32(1992f * _wgslsmith_f_op_f32(arg_1.a + 192f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(299f, 1319f))), var_0.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, var_0.a)) + _wgslsmith_div_f32(682f, 429f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, arg_1.a)) * _wgslsmith_f_op_f32(arg_2.x * -174f)), _wgslsmith_f_op_f32(select(960f, 739f, arg_3)), _wgslsmith_f_op_f32(abs(var_0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2))))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.a, 437f)) + -114f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a)), 1058f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * var_0.a)) * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) - _wgslsmith_f_op_f32(step(-265f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, 914f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_f_op_f32(197f - _wgslsmith_f_op_f32(-170f * -1046f)))));
    return Struct_2(arg_1, ~_wgslsmith_mult_u32(~arg_1.d.x, var_0.d.x), false, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 - arg_2) - _wgslsmith_div_vec4_f32(arg_2, vec4<f32>(arg_2.x, arg_2.x, arg_1.a, -203f))))))));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: f32) -> vec4<u32> {
    var var_0 = arg_2.yx;
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(firstTrailingBit(arg_0.a.d) >> (arg_0.a.d % vec4<u32>(32u))), ~(~vec4<u32>(73938u, arg_0.b, 1u, arg_0.b))), _wgslsmith_clamp_vec4_u32(arg_0.a.d, _wgslsmith_mod_vec4_u32(abs(~arg_0.a.d), firstLeadingBit(reverseBits(vec4<u32>(arg_0.b, arg_0.b, arg_0.a.d.x, 0u)))), ~arg_0.a.d));
    var_0 = func_4(select(!(!select(vec4<bool>(false, true, false, arg_0.a.c), vec4<bool>(true, arg_1, true, global0[_wgslsmith_index_u32(35318u, 7u)]), vec4<bool>(arg_1, arg_2.x, global0[_wgslsmith_index_u32(12229u, 7u)], var_0.x))), select(!vec4<bool>(true, arg_0.a.c, var_0.x, false), select(!vec4<bool>(arg_0.a.c, global0[_wgslsmith_index_u32(98515u, 7u)], false, var_0.x), !vec4<bool>(true, true, true, arg_0.a.c), false), !vec4<bool>(arg_1, true, false, true)), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 7u)], arg_2.x, false, arg_0.c), !(!vec4<bool>(arg_1, arg_2.x, false, false)), ~(-2053i) > _wgslsmith_dot_vec3_i32(arg_0.a.e, arg_0.a.e))), select(vec4<i32>(arg_0.a.e.x, -(arg_0.a.e.x | -4236i), _wgslsmith_div_i32(~3345i, _wgslsmith_sub_i32(arg_0.a.e.x, 9066i)), ~_wgslsmith_mod_i32(11585i, u_input.a)), -(vec4<i32>(u_input.a, -74311i, u_input.a, arg_0.a.e.x) << (arg_0.a.d % vec4<u32>(32u))) | vec4<i32>(firstLeadingBit(arg_0.a.e.x), func_5(vec3<bool>(true, global0[_wgslsmith_index_u32(arg_0.a.b.x, 7u)], false), Struct_1(-2647f, vec2<u32>(arg_0.a.d.x, arg_0.b), false, arg_0.a.d, vec3<i32>(arg_0.a.e.x, 62997i, 1i)), vec4<f32>(-2409f, -548f, arg_0.d.x, -501f), true).a.e.x, 0i, 1i), vec4<bool>(max(1u, arg_0.b) > reverseBits(81249u), func_4(vec4<bool>(false, var_0.x, true, arg_0.a.c), abs(vec4<i32>(arg_0.a.e.x, u_input.a, 1i, arg_0.a.e.x))).x, any(!vec4<bool>(arg_1, true, arg_0.a.c, global0[_wgslsmith_index_u32(arg_0.b, 7u)])), select(arg_1, arg_0.a.c, true) && any(vec3<bool>(false, var_0.x, arg_2.x)))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-539f + _wgslsmith_f_op_f32(sign(arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), -530f));
    global1 = 15831u;
    return ~(arg_0.a.d | arg_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (abs(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(2685u, 64395u)), vec2<u32>(4294967295u, 30083u))) & 1u) <= 14699u;
    var var_1 = ~vec3<u32>(~(~_wgslsmith_mod_u32(0u, 508u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 35802u, 0u))), abs(0u));
    var var_2 = _wgslsmith_add_vec4_u32(func_6(func_5(select(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], false, false), global0[_wgslsmith_index_u32(var_1.x, 7u)]), select(vec3<bool>(true, false, false), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(47065u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(27376u, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)])), !vec3<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)])), Struct_1(_wgslsmith_f_op_f32(sign(-1000f)), vec2<u32>(var_1.x, var_1.x), true, ~vec4<u32>(41116u, var_1.x, 0u, 39058u), func_1(var_1.x, Struct_2(Struct_1(964f, var_1.xx, false, vec4<u32>(50138u, 64612u, 1u, var_1.x), vec3<i32>(1i, u_input.a, u_input.a)), 7736u, false, vec4<f32>(620f, -446f, 138f, -486f)), 508f, Struct_2(Struct_1(1781f, var_1.yx, global0[_wgslsmith_index_u32(9211u, 7u)], vec4<u32>(19574u, 20509u, var_1.x, 36623u), vec3<i32>(-1i, 43800i, u_input.a)), var_1.x, false, vec4<f32>(-908f, 725f, -168f, -1000f)))), vec4<f32>(1f, 1f, 1f, 1f), true), all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], false, global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(var_1.x, 7u)])) == true, vec3<bool>(any(!vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 7u)])), true, func_5(!vec3<bool>(global0[_wgslsmith_index_u32(1u, 7u)], false, global0[_wgslsmith_index_u32(4294967295u, 7u)]), func_5(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], true, global0[_wgslsmith_index_u32(36089u, 7u)]), Struct_1(-232f, vec2<u32>(18618u, var_1.x), global0[_wgslsmith_index_u32(4294967295u, 7u)], vec4<u32>(var_1.x, var_1.x, 45180u, var_1.x), vec3<i32>(317i, u_input.a, u_input.a)), vec4<f32>(-2066f, -556f, 665f, -430f), global0[_wgslsmith_index_u32(var_1.x, 7u)]).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, -587f, -960f, 762f) * vec4<f32>(744f, -1039f, 1473f, -1161f)), true).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2108f)) * _wgslsmith_f_op_f32(min(751f, 598f))))), func_5(select(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], true, false), select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(82627u, 7u)], false), vec3<bool>(global0[_wgslsmith_index_u32(171571u, 7u)], global0[_wgslsmith_index_u32(62633u, 7u)], false), global0[_wgslsmith_index_u32(75330u, 7u)]), !vec3<bool>(true, global0[_wgslsmith_index_u32(22158u, 7u)], true)), !select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], true, true), true), true), Struct_1(1f, ~(~vec2<u32>(0u, 2098u)), func_2(), ~vec4<u32>(var_1.x, var_1.x, 4294967295u, 35921u), _wgslsmith_mod_vec3_i32(func_1(47450u, Struct_2(Struct_1(137f, var_1.xz, false, vec4<u32>(var_1.x, 1u, 4294967295u, var_1.x), vec3<i32>(u_input.a, u_input.a, u_input.a)), var_1.x, false, vec4<f32>(1000f, -488f, -767f, -658f)), -754f, Struct_2(Struct_1(449f, vec2<u32>(62372u, var_1.x), true, vec4<u32>(62668u, 0u, 4294967295u, 75849u), vec3<i32>(46946i, u_input.a, u_input.a)), 4294967295u, global0[_wgslsmith_index_u32(var_1.x, 7u)], vec4<f32>(353f, -1101f, -1512f, -540f))), ~vec3<i32>(40386i, u_input.a, 0i))), vec4<f32>(_wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(f32(-1f) * -608f)), _wgslsmith_f_op_f32(f32(-1f) * -1885f), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(733f, _wgslsmith_div_f32(443f, -1196f)))), ~84961u < _wgslsmith_sub_u32(func_6(Struct_2(Struct_1(-1804f, vec2<u32>(0u, var_1.x), false, vec4<u32>(1u, var_1.x, 1u, 697u), vec3<i32>(u_input.a, 2147483647i, 2147483647i)), var_1.x, false, vec4<f32>(884f, 181f, -270f, 1000f)), false, vec3<bool>(global0[_wgslsmith_index_u32(76981u, 7u)], false, global0[_wgslsmith_index_u32(var_1.x, 7u)]), -372f).x, ~4756u)).a.d);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-231f))))), var_2.xw, !(!global0[_wgslsmith_index_u32(var_2.x, 7u)]) & !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(20735u, var_2.x), 7u)], vec4<u32>(max(7735u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 83469u, 4294967295u, var_1.x), vec4<u32>(var_1.x, 57246u, var_1.x, 4294967295u))), firstTrailingBit(var_2.x << (var_1.x % 32u)), min(1u, _wgslsmith_add_u32(var_1.x, var_1.x)), _wgslsmith_div_u32(16655u, 1u)), vec3<i32>(func_5(select(vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(30328u, 7u)], true), vec3<bool>(global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(10113u, 7u)], global0[_wgslsmith_index_u32(24666u, 7u)]), true), func_5(vec3<bool>(global0[_wgslsmith_index_u32(48259u, 7u)], global0[_wgslsmith_index_u32(76215u, 7u)], false), Struct_1(-436f, var_2.wx, false, vec4<u32>(var_1.x, var_1.x, var_2.x, var_1.x), vec3<i32>(71049i, 16831i, u_input.a)), vec4<f32>(-247f, -355f, -492f, -568f), global0[_wgslsmith_index_u32(1u, 7u)]).a, vec4<f32>(697f, 1000f, 282f, 420f), true).a.e.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-14299i, u_input.a, 2147483647i, u_input.a), vec4<i32>(1i, 39690i, -16370i, u_input.a), global0[_wgslsmith_index_u32(45331u, 7u)]), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), firstLeadingBit(u_input.a & u_input.a))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -699f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f + -171f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(851f, -836f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -1052f, 891f, -149f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(864f, -1000f, -1372f, 149f) * _wgslsmith_div_vec4_f32(vec4<f32>(306f, -637f, -1406f, -955f), vec4<f32>(445f, -458f, -297f, 867f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f * 277f)), _wgslsmith_f_op_f32(f32(-1f) * -981f), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(186f + 346f)))))));
    var_2 = max(~countOneBits(var_3.a.d), var_3.a.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d.xyz, min(-1i, var_3.a.e.x | _wgslsmith_dot_vec2_i32(var_3.a.e.zx, firstLeadingBit(vec2<i32>(-37613i, u_input.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-123f, _wgslsmith_f_op_f32(-func_5(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_2.x, 7u)]), var_3.a, var_3.d, true).a.a), _wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_f_op_f32(step(var_3.d.x, func_5(vec3<bool>(true, false, false), Struct_1(var_3.a.a, vec2<u32>(0u, var_2.x), false, var_3.a.d, vec3<i32>(2147483647i, 11845i, -2147483647i)), vec4<f32>(-577f, var_3.a.a, -1197f, var_3.a.a), global0[_wgslsmith_index_u32(33282u, 7u)]).d.x))) + var_3.d));
}

