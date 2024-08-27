struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_3,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a * -1638f)), arg_2.a, arg_0.x) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.a, -1481f, -699f)))))), -arg_2.c);
    let var_1 = -_wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_2.c, -1i, -1i, -77659i)) ^ reverseBits(reverseBits(vec4<i32>(-9631i, 2147483647i, -2147483647i, arg_2.c))), -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.b, var_0.b, 41179i), firstLeadingBit(vec4<i32>(arg_2.c, arg_2.c, 29586i, arg_2.c))));
    var var_2 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-375f, 902f)), -282f)), arg_2.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1202f, _wgslsmith_f_op_f32(f32(-1f) * -495f))))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, _wgslsmith_f_op_f32(ceil(1728f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.x, -370f))))), 1i);
    var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, arg_2.a, false)) - 1838f))), -1491f, _wgslsmith_f_op_f32(f32(-1f) * -1531f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-325f, _wgslsmith_f_op_f32(var_0.a.x - 137f), true)), -878f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-700f, -1481f))), -894f)));
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> i32 {
    var var_0 = Struct_4(1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1311f, -684f, 161f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(273f, -757f, -794f) - vec3<f32>(1174f, 476f, -993f)))) + vec3<f32>(-1000f, -322f, -382f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), 1f, -819f)), Struct_3(-713f, select(select(arg_0.zz, select(vec2<bool>(false, arg_0.x), arg_0.xx, arg_0.xy), false), arg_0.xy, vec2<bool>(func_3(vec3<f32>(425f, -187f, -1762f), vec4<bool>(true, false, true, true), Struct_3(1000f, arg_0.xy, -1i, u_input.a, vec4<bool>(false, true, arg_0.x, true))), true)), ~arg_1, ~u_input.a, vec4<bool>(arg_0.x | any(arg_0), any(arg_0), !select(true, arg_0.x, arg_0.x), true)), Struct_1(!select(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(false, true, arg_0.x, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), vec4<bool>(arg_0.x, arg_0.x, false, true), select(false, arg_0.x, arg_0.x)), vec4<i32>(~firstLeadingBit(arg_1), 1i, 0i, abs(-2147483647i) & (arg_2 & 2147483647i)), -(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, 8576i), vec3<i32>(arg_1, arg_2, arg_1)) >> ((vec3<u32>(46015u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 0u, 16261u) % vec3<u32>(32u))) % vec3<u32>(32u))), -587f, vec4<i32>(i32(-1i) * -1i, -(arg_2 >> (0u % 32u)), arg_1, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, arg_1), vec3<i32>(0i, arg_1, arg_2)), -vec3<i32>(arg_2, arg_2, arg_1)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), -2985i ^ arg_1);
    var_0 = Struct_4(61250u, var_0.b, var_0.c, Struct_1(var_0.d.a, var_0.d.b, ~(-(~vec3<i32>(arg_2, -11865i, arg_1))), _wgslsmith_f_op_f32(var_1.a.x * -1000f), var_0.d.b));
    var_0 = Struct_4(u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1204f, -396f, 913f), vec3<f32>(-626f, var_0.c.a, var_1.a.x))), true))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f + -191f))), vec2<bool>(true, false), ~(i32(-1i) * -var_0.c.c), max(u_input.a, _wgslsmith_sub_u32(61919u >> (u_input.a % 32u), 45343u)), select(vec4<bool>(true, all(vec3<bool>(false, true, arg_0.x)), false, true), !select(var_0.c.e, var_0.d.a, vec4<bool>(true, var_0.c.e.x, var_0.d.a.x, var_0.d.a.x)), vec4<bool>(true, all(vec4<bool>(false, arg_0.x, true, var_0.d.a.x)), false, !arg_0.x))), Struct_1(select(var_0.c.e, select(select(vec4<bool>(var_0.c.e.x, arg_0.x, false, arg_0.x), var_0.d.a, vec4<bool>(false, arg_0.x, false, false)), !var_0.d.a, vec4<bool>(false, false, var_0.c.b.x, true)), any(select(arg_0.xx, var_0.d.a.yw, true))), -(~vec4<i32>(var_0.d.b.x, var_1.b, 35947i, arg_2)), _wgslsmith_mult_vec3_i32(~var_0.d.e.wzw, var_0.d.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, -1303f) - var_1.a.x), vec4<i32>(-1i, arg_1, var_1.b, -1i)));
    var var_2 = Struct_3(var_1.a.x, select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), arg_0.xy)), !vec2<bool>(any(vec3<bool>(false, false, arg_0.x)), arg_0.x), var_0.c.e.zw), ~var_0.d.e.x, u_input.a, select(vec4<bool>(all(var_0.c.e) != all(arg_0.yz), arg_0.x, false, any(!var_0.c.e.zxw)), vec4<bool>(!(!var_0.c.b.x), any(arg_0.xx), !var_0.c.e.x, func_3(var_0.b, select(var_0.d.a, vec4<bool>(false, arg_0.x, var_0.d.a.x, var_0.d.a.x), false), var_0.c)), var_0.c.e));
    return -1i;
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = vec4<bool>(!select(!all(vec2<bool>(arg_2, arg_2)), false, arg_0.c), false, true, any(vec3<bool>(any(vec3<bool>(arg_0.c, true, false)), all(arg_0.b.a.xz), any(arg_0.b.a))) || !(!(arg_0.a.e.x | arg_2)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(742f, -520f, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1425f, arg_0.a.a, arg_1))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.a.a, -659f, arg_1))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.b.d, arg_1, arg_1))), !var_0.ywy))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-658f, arg_1, arg_0.b.d)))), vec3<f32>(arg_0.b.d, _wgslsmith_f_op_f32(max(arg_0.a.a, -675f)), _wgslsmith_f_op_f32(ceil(-295f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0.b.d, 848f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1016f, arg_1, arg_0.a.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1, -278f, -1090f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, arg_1, -1174f))))), true));
    var var_2 = Struct_1(vec4<bool>(true, false, arg_2 & (_wgslsmith_f_op_f32(select(var_1.x, var_1.x, arg_0.a.b.x)) >= _wgslsmith_f_op_f32(sign(arg_1))), !(false || arg_2)), ~select(abs(arg_0.b.b), ~countOneBits(vec4<i32>(arg_0.a.c, -3043i, 0i, -5843i)), !select(var_0, vec4<bool>(var_0.x, arg_0.b.a.x, arg_2, true), var_0.x)), vec3<i32>(-6832i << (u_input.a % 32u), abs(-arg_3.x), abs(arg_0.b.c.x)), arg_0.a.a, ~(-arg_0.b.e));
    let var_3 = var_2.a.ww;
    var_2 = Struct_1(!(!(!vec4<bool>(false, true, arg_0.c, false))), (vec4<i32>(-17488i | arg_0.b.e.x, _wgslsmith_sub_i32(arg_3.x, -47664i), -64181i, 1i) ^ (~vec4<i32>(2147483647i, -22858i, -42570i, arg_3.x) & reverseBits(vec4<i32>(var_2.c.x, arg_0.a.c, -43322i, 32248i)))) | (arg_0.b.b & _wgslsmith_sub_vec4_i32(reverseBits(var_2.b), vec4<i32>(arg_3.x, -7498i, var_2.b.x, arg_3.x))), abs(_wgslsmith_mod_vec3_i32(~(~arg_3), vec3<i32>(~0i, _wgslsmith_mult_i32(0i, arg_0.a.c), abs(arg_0.b.b.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-221f, arg_0.a.a)), _wgslsmith_f_op_f32(sign(arg_1)))), (vec4<i32>(-1i) * -vec4<i32>(var_2.b.x, 0i, var_2.c.x, arg_0.a.c)) & vec4<i32>(var_2.c.x, ~abs(arg_0.a.c), min(6478i, max(var_2.c.x, arg_3.x)), reverseBits(23258i >> (u_input.a % 32u))));
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1008f)) - var_2.d), select(select(select(!vec2<bool>(false, var_0.x), arg_0.a.e.zy, !var_3.x), vec2<bool>(var_0.x, arg_1 <= arg_0.a.a), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, var_2.d, var_1.x) - vec3<f32>(232f, arg_1, arg_1)), var_0, Struct_3(arg_1, var_0.ww, 4273i, 8120u, arg_0.a.e))), var_2.a.yy, true), var_2.e.x, u_input.a, select(select(!(!var_2.a), var_0, !any(var_2.a.zwx)), !(!(!vec4<bool>(false, arg_2, var_0.x, var_3.x))), var_2.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_5, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(326f, arg_0.a, 937f), vec3<f32>(arg_0.a, arg_1.b.d, arg_1.b.d))))), vec3<f32>(679f, _wgslsmith_div_f32(711f, -319f), 821f), all(select(!vec2<bool>(arg_0.b.x, arg_0.b.x), !arg_1.a.b, !arg_0.b)))));
    var var_1 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d, _wgslsmith_mod_u32(~44127u, u_input.a), 78406u, 1u), vec4<u32>(firstTrailingBit(1u << (arg_0.d % 32u)), 1u, 1u, _wgslsmith_sub_u32(~arg_2, ~arg_1.d))));
    var var_2 = func_4(Struct_5(arg_1.a, Struct_1(arg_1.a.e, vec4<i32>(arg_1.a.c, ~2147483647i, func_2(arg_1.b.a.zww, -2147483647i, 16183i), -arg_1.b.e.x), -(arg_1.b.e.xxz >> (vec3<u32>(18738u, u_input.a, var_1.x) % vec3<u32>(32u))), -534f, vec4<i32>(1i, arg_1.a.c, arg_0.c, arg_0.c) | arg_1.b.e), any(arg_0.e.xwx) && ((true || arg_0.b.x) || !arg_0.e.x), arg_2), -603f, any(!select(arg_1.a.e.zwz, vec3<bool>(arg_1.a.b.x, arg_0.b.x, true), arg_1.b.a.x)) & arg_0.b.x, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, -28432i, -19314i), arg_1.b.e.xzx), arg_1.a.c), _wgslsmith_mult_vec3_i32(arg_1.b.b.zww, vec3<i32>(arg_1.b.b.x, 2147483647i, -21734i)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c, 1i, -1i), arg_1.b.c), ~vec3<i32>(15507i, arg_0.c, arg_0.c))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-419f)) + _wgslsmith_f_op_f32(-arg_0.a)));
    var var_3 = Struct_5(func_4(Struct_5(Struct_3(351f, arg_0.e.xw, var_2.c, _wgslsmith_mult_u32(u_input.a, var_1.x), select(arg_1.a.e, vec4<bool>(false, var_2.b.x, arg_1.c, false), var_2.e.x)), arg_1.b, all(!arg_0.e), ~26954u | arg_0.d), -161f, !arg_1.c, min(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 0i, 30420i), vec3<i32>(arg_1.b.e.x, arg_1.a.c, var_2.c))), arg_1.b.e.zzz)), Struct_1(vec4<bool>(select(any(vec3<bool>(true, arg_0.b.x, arg_0.e.x)), !var_2.e.x, var_2.e.x), select(true, arg_1.b.a.x, arg_0.b.x), false, all(var_2.e.wwz)), arg_1.b.b, arg_1.b.e.zxy ^ arg_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(609f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - var_2.a) + _wgslsmith_f_op_f32(-arg_0.a))), firstLeadingBit((vec4<i32>(-1i, -2147483647i, var_2.c, -20147i) & vec4<i32>(arg_0.c, arg_0.c, 24244i, -1i)) | firstLeadingBit(vec4<i32>(arg_1.b.e.x, arg_1.b.c.x, 15662i, var_2.c)))), var_2.b.x, _wgslsmith_add_u32(reverseBits(4294967295u), var_2.d));
    return _wgslsmith_f_op_f32(-arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(f32(-1f) * -245f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1981f, -704f)), _wgslsmith_f_op_f32(func_1(Struct_3(-1230f, vec2<bool>(true, true), -11409i, u_input.a, vec4<bool>(true, true, false, false)), Struct_5(Struct_3(1695f, vec2<bool>(true, true), -2147483647i, u_input.a, vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(0i, 29637i, 2147483647i, -1i), vec3<i32>(-38932i, -2147483647i, -14639i), 1581f, vec4<i32>(10821i, -852i, -2147483647i, -4951i)), false, u_input.a), 13012u))))), _wgslsmith_f_op_f32(round(880f)));
    let var_1 = 725f;
    var var_2 = true;
    let var_3 = !vec3<bool>(!all(vec2<bool>(true, false)), any(vec4<bool>(true, true, true, true)), true);
    let var_4 = false;
    let var_5 = !(any(vec2<bool>(true, false)) && var_4);
    var_2 = false;
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 + var_1)));
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(vec4<i32>(1i, 33036i, 2577i, -4826i))), firstTrailingBit(-9696i)), -197f, -2011f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_3(var_1, vec2<bool>(true, var_5), -66111i, 1u, vec4<bool>(var_3.x, var_4, false, true)), Struct_5(Struct_3(790f, var_3.yx, -8340i, u_input.a, vec4<bool>(var_4, true, var_3.x, var_4)), Struct_1(vec4<bool>(var_5, var_3.x, var_5, true), vec4<i32>(1i, -2147483647i, 0i, 17088i), vec3<i32>(1613i, -16732i, 10014i), -316f, vec4<i32>(-22685i, -2147483647i, -1i, 28164i)), true, u_input.a), 1u)))) * var_1), _wgslsmith_f_op_f32(var_1 + -588f), var_1, -313f), reverseBits(1i));
}

