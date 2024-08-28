struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_3) -> vec3<u32> {
    var var_0 = arg_3.b.e;
    var_0 = abs(~(abs(arg_3.d.e) << (~(~vec3<u32>(1u, 11818u, 31763u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.d.a.x), _wgslsmith_f_op_f32(select(arg_3.b.a.x, arg_3.b.a.x, true)), _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(trunc(arg_3.b.a.x)))))));
    var var_2 = -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_3.d.e.x, _wgslsmith_mod_i32(-2147483647i, -1i), max(0i, -51138i)), _wgslsmith_add_i32(~31929i, global0.x)), firstTrailingBit(-2147483647i), firstTrailingBit(_wgslsmith_mod_i32(66746i, _wgslsmith_sub_i32(2147483647i, arg_3.d.d.x))), -20607i);
    var var_3 = 0i;
    return arg_3.d.b.zww;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> vec3<i32> {
    global0 = vec3<i32>(countOneBits(-7485i), ~_wgslsmith_sub_i32(-global0.x, abs(global0.x)), -1i) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a >> (~u_input.a % 32u), ~2905u, (4294967295u | u_input.a) & _wgslsmith_add_u32(u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(func_3(global0.xz ^ vec2<i32>(arg_0, arg_0), _wgslsmith_div_vec4_f32(arg_1, vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), ~u_input.a, Struct_3(true, Struct_1(vec2<f32>(arg_1.x, 1000f), vec4<u32>(0u, 4294967295u, 0u, 97u), vec4<u32>(19201u, u_input.a, 5088u, u_input.a), vec2<i32>(arg_0, global0.x), vec3<i32>(arg_0, -2147483647i, 1i)), u_input.a, Struct_1(arg_1.yy, vec4<u32>(u_input.a, 78185u, u_input.a, 38600u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global0.yx, vec3<i32>(-2147483647i, global0.x, arg_0)))), ~firstLeadingBit(vec3<u32>(u_input.a, 74050u, u_input.a)))) % vec3<u32>(32u));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1726f, arg_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -521f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(673f))), 759f);
    var var_1 = vec4<i32>(-11986i, arg_0, -abs(global0.x), 24470i);
    var var_2 = arg_1.x;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-376f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, -1000f))))));
    return var_1.zxy;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_3.a.x))));
    global0 = select(~(~(~vec3<i32>(-2147483647i, -1i, arg_3.e.x)) >> (arg_3.b.zxy % vec3<u32>(32u))), reverseBits(~_wgslsmith_mod_vec3_i32(arg_0, max(arg_0, vec3<i32>(global0.x, -32040i, -2147483647i)))), vec3<bool>(false, select(!all(vec2<bool>(true, arg_2.x)), !arg_1, true), false));
    var var_1 = Struct_4(arg_2.x, any(!vec2<bool>(arg_2.x && false, true)), arg_3);
    var_1 = Struct_4(all(arg_2), true, arg_3);
    let var_2 = max(firstLeadingBit(u_input.a), u_input.a) > firstTrailingBit(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(48077u, 4294967295u, 4304u)), vec3<u32>(0u, ~arg_3.b.x, arg_3.b.x | u_input.a)));
    return arg_3;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = true;
    var_0 = arg_0.a;
    let var_1 = Struct_3(true, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(462f, arg_0.d.a.x) * vec2<f32>(224f, arg_0.b.a.x)), vec2<f32>(1000f, arg_0.b.a.x), !vec2<bool>(arg_0.a, arg_0.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.a)))), arg_0.b.c, ~(~(~vec4<u32>(arg_1.x, 1u, arg_0.b.c.x, 1u))), -_wgslsmith_clamp_vec2_i32(~global0.xx, vec2<i32>(-20258i, arg_0.b.d.x) ^ global0.yx, vec2<i32>(arg_0.d.e.x, arg_0.d.d.x)), arg_0.b.e), max(28732u, _wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 1u), arg_0.d.c.wyx), arg_0.d.c.xxy)), func_4(~(-(~arg_0.d.e)), true, vec4<bool>(arg_0.b.a.x < _wgslsmith_f_op_f32(sign(arg_0.b.a.x)), any(vec2<bool>(arg_0.a, true)), false, arg_0.a), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(arg_0.d.a, vec2<f32>(arg_0.d.a.x, arg_0.b.a.x))))), arg_0.b.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), arg_0.d.c), vec2<i32>(-12502i, -48268i) ^ reverseBits(arg_0.b.e.zz), vec3<i32>(global0.x, select(9096i, arg_0.d.d.x, false), -2147483647i))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.d.a, var_1.d.a)))))), min(var_1.b.c, ~(~arg_0.b.c & vec4<u32>(1u, u_input.a, 1u, 38399u))), select(var_1.d.b, ~vec4<u32>(1u, ~arg_0.c, _wgslsmith_clamp_u32(var_1.b.b.x, 738u, arg_1.x), 61088u), arg_0.a), ~vec2<i32>(global0.x, -firstLeadingBit(arg_0.b.d.x)), vec3<i32>(arg_0.b.d.x, var_1.b.e.x, -(~(-17268i))));
    var_0 = var_2.e.x != max(1180i, firstLeadingBit(select(min(var_1.d.d.x, -7399i), -var_1.d.e.x, true)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), arg_0.d.a.x)))), var_1.d.b, ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_2.b, var_1.d.b), var_1.d.c), global0.zx, -(~(~var_1.b.e)) >> (~vec3<u32>(var_1.b.b.x, var_1.d.c.x ^ var_1.c, var_2.c.x ^ 78974u) % vec3<u32>(32u)));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(any(!vec4<bool>(true, any(vec3<bool>(true, false, false)), any(vec3<bool>(true, false, false)), true)), func_5(Struct_3(false, func_4(func_2(global0.x, vec4<f32>(-389f, 390f, -1363f, -1097f)), true, select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), true), Struct_1(vec2<f32>(-1482f, -960f), vec4<u32>(16287u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 12234u, 4294967295u, 3174u), vec2<i32>(5453i, -2147483647i), vec3<i32>(-21267i, 27519i, 2147483647i))), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 1u, 129375u), ~4294967295u, 1u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(902f, -1321f)), vec4<u32>(u_input.a, 22833u, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global0.xx, -vec3<i32>(-2147483647i, global0.x, global0.x))), vec2<u32>(countOneBits(~0u), 1u)), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(51838u, u_input.a, 23365u, 4294967295u))), max(vec4<u32>(abs(u_input.a), 88769u, ~u_input.a, _wgslsmith_add_u32(u_input.a, 104007u)), ~vec4<u32>(3672u, u_input.a, u_input.a, 22093u) & vec4<u32>(32970u, u_input.a, 57802u, 8228u))), func_4(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(12064i, -2147483647i, 0i)), vec3<i32>(global0.x, i32(-1i) * -1i, global0.x)), (func_3(vec2<i32>(global0.x, 2147483647i), vec4<f32>(689f, 1000f, -441f, 444f), 0u, Struct_3(true, Struct_1(vec2<f32>(-333f, 669f), vec4<u32>(u_input.a, 5019u, 0u, u_input.a), vec4<u32>(0u, u_input.a, 33359u, u_input.a), vec2<i32>(58476i, 24682i), vec3<i32>(global0.x, global0.x, 32423i)), 27007u, Struct_1(vec2<f32>(357f, -282f), vec4<u32>(71340u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 708u, u_input.a), global0.yz, vec3<i32>(-9695i, global0.x, global0.x)))).x << (firstLeadingBit(56436u) % 32u)) <= ~u_input.a, !vec4<bool>(true, all(vec3<bool>(false, true, true)), true, any(vec4<bool>(true, true, false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-591f, 108f))), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 0u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, 110254u, u_input.a, u_input.a)), _wgslsmith_mult_vec4_u32(func_5(Struct_3(true, Struct_1(vec2<f32>(528f, -1002f), vec4<u32>(1u, 42267u, 42914u, u_input.a), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), global0.zz, vec3<i32>(0i, 0i, -57960i)), 39254u, Struct_1(vec2<f32>(1465f, 726f), vec4<u32>(77023u, 1u, u_input.a, 0u), vec4<u32>(45751u, 87593u, 1u, 0u), global0.zy, vec3<i32>(global0.x, -28433i, 0i))), vec2<u32>(0u, u_input.a)).c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 72089u, u_input.a, u_input.a), vec4<u32>(36315u, u_input.a, u_input.a, 46764u))), ~_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(global0.x, global0.x)), vec3<i32>(i32(-1i) * -34097i, 1i, -2168i))));
    global0 = vec3<i32>(firstTrailingBit(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -20130i), var_0.d.d >> (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))), -1i, var_0.b.e.x << (1u % 32u));
    var var_1 = ~vec4<u32>(~var_0.d.c.x, u_input.a, var_0.d.c.x, ~firstTrailingBit(40102u)) | var_0.d.c;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(1i, _wgslsmith_dot_vec3_i32(func_5(var_0, vec2<u32>(24651u, 1u)).e ^ vec3<i32>(1i, global0.x, -2147483647i), var_0.b.e)), -24i);
    var var_3 = vec2<bool>(!var_0.a, true);
    return var_0.b.b.x >> (abs(reverseBits(~(var_1.x | u_input.a))) % 32u);
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<f32>) -> Struct_3 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(1318f, func_5(arg_2, abs(select(arg_2.d.c.zx, vec2<u32>(arg_0.x, 0u), true))).a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2672f - _wgslsmith_f_op_f32(f32(-1f) * -469f))))), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x));
    var var_1 = arg_1;
    global0 = select(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(abs(global0.x), -2147483647i, -arg_2.d.e.x)), vec3<i32>(func_5(arg_2, firstTrailingBit(arg_2.d.c.xw)).e.x, 19921i << (_wgslsmith_div_u32(31620u, 4294967295u) % 32u), ~_wgslsmith_mult_i32(2588i, global0.x))), vec3<i32>(-1i, min(~(~0i), func_5(Struct_3(true, arg_2.b, var_1.c.x, Struct_1(vec2<f32>(var_0.x, arg_2.d.a.x), arg_2.d.b, vec4<u32>(u_input.a, arg_2.b.b.x, arg_1.c.x, 4294967295u), vec2<i32>(33883i, -1i), vec3<i32>(var_1.e.x, 2147483647i, -1i))), vec2<u32>(36025u, var_1.b.x)).d.x), _wgslsmith_div_i32(-(~var_1.e.x), 0i)), vec3<bool>(arg_2.a, false, arg_2.a));
    let var_2 = select(var_1.b, abs(_wgslsmith_sub_vec4_u32(~var_1.b, arg_2.b.b)), !vec4<bool>(arg_2.a, !arg_2.a, true, true));
    let var_3 = _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-var_0.x)));
    return Struct_3(false, arg_1, var_2.x, func_4(vec3<i32>(_wgslsmith_add_i32(3034i, func_5(Struct_3(arg_2.a, arg_1, 70933u, Struct_1(arg_1.a, var_1.c, vec4<u32>(u_input.a, 4294967295u, arg_1.c.x, 0u), var_1.d, arg_2.b.e)), vec2<u32>(u_input.a, var_1.c.x)).e.x), 44779i, arg_2.b.d.x), arg_2.a, !select(!vec4<bool>(arg_2.a, true, arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(true, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(arg_2.a, false, arg_2.a, true)), select(vec4<bool>(true, arg_2.a, false, true), vec4<bool>(false, true, false, true), arg_2.a)), Struct_1(arg_2.d.a, _wgslsmith_mult_vec4_u32(~var_1.c, var_2), _wgslsmith_add_vec4_u32(vec4<u32>(1762u, var_1.c.x, arg_1.c.x, var_2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(102150u, 95272u, u_input.a, 4294967295u), vec4<u32>(arg_0.x, arg_0.x, u_input.a, 4294967295u))), arg_1.d, firstTrailingBit(~var_1.e))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<u32>(func_1(), ~(u_input.a << (u_input.a % 32u)) >> (min(u_input.a, 0u) % 32u), 59272u), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2546f, 200f)))))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(66875u, u_input.a, 77930u, 9384u)) ^ ~(~vec4<u32>(1u, u_input.a, 41561u, u_input.a)), vec4<u32>(func_1(), ~43136u, ~4294967295u, 35139u), vec2<i32>(min(global0.x ^ global0.x, _wgslsmith_div_i32(global0.x, 20980i)), global0.x), _wgslsmith_sub_vec3_i32(select(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -31630i, global0.x), vec3<i32>(global0.x, global0.x, global0.x)), -vec3<i32>(25359i, -13581i, 44958i), any(vec2<bool>(true, false))), func_5(Struct_3(false, Struct_1(vec2<f32>(-1222f, 949f), vec4<u32>(u_input.a, 4294967295u, u_input.a, 27759u), vec4<u32>(4294967295u, u_input.a, 75944u, u_input.a), global0.zz, vec3<i32>(-2147483647i, -2147483647i, 43575i)), u_input.a, Struct_1(vec2<f32>(-1157f, 1812f), vec4<u32>(62912u, u_input.a, 4294967295u, 4819u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<i32>(global0.x, global0.x), vec3<i32>(global0.x, global0.x, global0.x))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a))).e)), Struct_3(false, func_5(Struct_3(true, Struct_1(vec2<f32>(1000f, -1081f), vec4<u32>(52204u, 22224u, 57834u, u_input.a), vec4<u32>(u_input.a, 1u, 33685u, 0u), global0.yz, vec3<i32>(-2708i, -2147483647i, global0.x)), u_input.a, Struct_1(vec2<f32>(405f, 476f), vec4<u32>(u_input.a, 1u, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, 0u, 4294967295u), global0.zz, vec3<i32>(2147483647i, global0.x, -18312i))), ~func_3(vec2<i32>(global0.x, global0.x), vec4<f32>(-616f, -401f, -590f, -419f), u_input.a, Struct_3(false, Struct_1(vec2<f32>(-806f, -508f), vec4<u32>(u_input.a, u_input.a, 0u, 22050u), vec4<u32>(614u, 1u, 21400u, 0u), global0.xz, vec3<i32>(45060i, 2147483647i, global0.x)), u_input.a, Struct_1(vec2<f32>(1551f, 1210f), vec4<u32>(u_input.a, 4294967295u, 12170u, 1u), vec4<u32>(u_input.a, u_input.a, 65022u, u_input.a), global0.xz, vec3<i32>(global0.x, 33801i, global0.x)))).yx), _wgslsmith_clamp_u32(u_input.a, u_input.a, countOneBits(4294967295u)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1423f, 1000f)))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 106004u), vec4<u32>(u_input.a, 1u, u_input.a, 0u)) | vec4<u32>(u_input.a, 4294967295u, 46195u, u_input.a), select(_wgslsmith_mult_vec4_u32(vec4<u32>(71817u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), func_5(Struct_3(true, Struct_1(vec2<f32>(532f, -309f), vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), vec4<u32>(23312u, 1u, 7075u, 0u), vec2<i32>(global0.x, global0.x), vec3<i32>(global0.x, global0.x, -2253i)), 49502u, Struct_1(vec2<f32>(454f, 1573f), vec4<u32>(u_input.a, 4294967295u, 28869u, 1u), vec4<u32>(14704u, 44496u, 88792u, 68482u), global0.zz, vec3<i32>(global0.x, global0.x, global0.x))), vec2<u32>(0u, u_input.a)).b, select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), func_5(Struct_3(true, Struct_1(vec2<f32>(597f, -807f), vec4<u32>(78143u, 4967u, u_input.a, u_input.a), vec4<u32>(1u, 0u, u_input.a, u_input.a), vec2<i32>(global0.x, 2147483647i), vec3<i32>(global0.x, global0.x, 19623i)), 0u, Struct_1(vec2<f32>(-2101f, -1005f), vec4<u32>(1u, u_input.a, 32664u, u_input.a), vec4<u32>(50249u, 4294967295u, u_input.a, u_input.a), global0.zy, vec3<i32>(24157i, global0.x, 1963i))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 16910u), vec2<u32>(u_input.a, 22890u))).d, _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, global0.x, global0.x), vec3<i32>(global0.x, global0.x, 28979i) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1110f - 1720f), 709f, -196f, _wgslsmith_f_op_f32(min(-153f, 471f))))));
    global0 = abs(var_0.b.e);
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-624f, -103f, -141f, var_0.b.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(231f, var_0.d.a.x, var_0.d.a.x, -1466f) - vec4<f32>(904f, var_0.b.a.x, var_0.d.a.x, var_1.a.x)))))))));
    var var_3 = -32696i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(firstTrailingBit(~func_5(Struct_3(var_0.a, var_0.d, var_1.b.x, var_1), vec2<u32>(var_0.d.c.x, 65177u)).e.x), _wgslsmith_dot_vec2_i32(var_0.b.d, ~vec2<i32>(var_1.d.x, var_0.d.d.x) << (var_1.b.yw % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(floor(var_1.a.x)))), var_1.a.x, var_0.d.a.x, var_0.d.a.x) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1693f, 634f, _wgslsmith_f_op_f32(717f * 1928f), -728f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_2.x, 528f, 1580f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_2.x, 1683f) * vec4<f32>(var_1.a.x, -638f, -504f, -2095f)))))), -14336i, abs(var_0.d.c.x));
}

