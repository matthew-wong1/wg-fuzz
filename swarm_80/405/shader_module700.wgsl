struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    global0 = false & all(arg_0.d.yz);
    let var_0 = arg_0.d;
    global0 = true;
    var var_1 = Struct_4(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.a.x) * -578f)), _wgslsmith_f_op_f32(arg_0.a.x * -295f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.a.x))))), arg_1.a, Struct_3(~(~(vec3<u32>(arg_0.c.b.x, 29324u, 1u) | vec3<u32>(arg_0.c.b.x, u_input.b, 0u))), vec4<u32>(24773u ^ _wgslsmith_mod_u32(u_input.b, arg_0.c.b.x), arg_0.c.b.x, 0u, ~0u | _wgslsmith_clamp_u32(0u, u_input.b, 4294967295u)), arg_0.c.c), select(vec4<bool>((10674u | arg_0.c.a.x) != ~u_input.b, !arg_0.d.x, true, any(select(arg_0.d.yzw, var_0.xzx, vec3<bool>(false, false, false)))), vec4<bool>(false, false, true, true), false));
    var_1 = Struct_4(var_1.a, Struct_1(arg_0.b.a), arg_0.c, var_1.d);
    return _wgslsmith_dot_vec3_u32(firstTrailingBit(abs(firstTrailingBit(var_1.c.b.wxx)) >> (vec3<u32>(~31069u, firstLeadingBit(arg_0.c.a.x), u_input.b) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(abs(_wgslsmith_div_vec3_u32(var_1.c.b.wyz, ~vec3<u32>(arg_0.c.a.x, arg_0.c.b.x, 39096u))), min(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_1.c.b.x, arg_0.c.b.x), 0u, ~u_input.b), vec3<u32>(1u, _wgslsmith_div_u32(arg_0.c.b.x, var_1.c.a.x), ~arg_0.c.b.x))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(abs(abs(abs(~vec3<u32>(7855u, u_input.b, 67u)))), vec4<u32>(_wgslsmith_sub_u32(func_3(Struct_4(vec4<f32>(-733f, 1221f, -643f, 1148f), Struct_1(vec3<i32>(u_input.c.x, u_input.a.x, 2147483647i)), Struct_3(vec3<u32>(23496u, 0u, u_input.b), vec4<u32>(0u, u_input.b, 1u, u_input.b), -5299i), vec4<bool>(false, false, true, true)), Struct_2(Struct_1(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), Struct_1(vec3<i32>(399i, 1i, 14370i)))), max(30896u, u_input.b)), u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(21963u | u_input.b, ~4294967295u, u_input.b), ~(~vec3<u32>(0u, 4294967295u, 0u))), 1u), ~abs(reverseBits(_wgslsmith_mod_i32(u_input.c.x, -1i))));
    let var_1 = var_0;
    global0 = select(false, false, true);
    var var_2 = Struct_2(Struct_1(vec3<i32>(var_1.c, u_input.a.x, u_input.c.x)), Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(u_input.c) >> (var_0.b.zxx % vec3<u32>(32u)), vec3<i32>(var_0.c, firstLeadingBit(0i), 21996i))));
    global0 = true;
    return var_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_1 {
    global0 = all(vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), arg_0.a.x <= -10571i)), !(_wgslsmith_mod_i32(u_input.c.x, 1i) < firstTrailingBit(arg_1.x)), true, true));
    var var_0 = max(vec3<i32>(select(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, arg_0.a.x, -2147483647i)), ~u_input.c.x, true), _wgslsmith_add_i32(-arg_1.x, func_2().a.x), 22055i), select(~_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(-2147483647i, arg_0.a.x, arg_1.x)), vec3<i32>(~(-2147483647i), -18554i, ~u_input.a.x), false)) << (_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~0u, u_input.b << (4416u % 32u), _wgslsmith_sub_u32(0u, u_input.b)), vec3<u32>(47444u, u_input.b, 1u) & firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 28732u))), vec3<u32>(countOneBits(u_input.b), abs(u_input.b) | ~1u, u_input.b)) % vec3<u32>(32u));
    let var_1 = Struct_2(arg_0, Struct_1(vec3<i32>(-2147483647i, firstLeadingBit(-20498i), arg_0.a.x)));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(794f, 653f, 234f, 589f) * vec4<f32>(-1067f, -219f, -193f, 701f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1301f, 589f, -1097f))) + vec4<f32>(-1945f, _wgslsmith_f_op_f32(min(-582f, 105f)), -1122f, _wgslsmith_div_f32(1159f, 1135f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(155f, -155f, 1473f, _wgslsmith_f_op_f32(f32(-1f) * -1217f)) + vec4<f32>(_wgslsmith_f_op_f32(ceil(615f)), 1538f, 303f, _wgslsmith_f_op_f32(step(933f, 2286f))))), arg_0, Struct_3(vec3<u32>(_wgslsmith_mod_u32(1u, 28678u), 1u, 82722u) | (~vec3<u32>(0u, 72355u, u_input.b) >> (abs(vec3<u32>(4294967295u, u_input.b, u_input.b)) % vec3<u32>(32u))), vec4<u32>(countOneBits(1u), u_input.b, ~1u, u_input.b), _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 27683i, var_1.b.a.x, var_1.b.a.x), vec4<i32>(var_1.b.a.x, 0i, 2147483647i, var_0.x)), -vec4<i32>(17479i, u_input.a.x, -106866i, -1i), false), max(vec4<i32>(var_0.x, var_0.x, 2147483647i, 1i), vec4<i32>(arg_1.x, var_0.x, -2147483647i, 1i)))), vec4<bool>(true, true, true, true));
    let var_3 = var_2.c;
    return Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(abs(var_2.b.a), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.c.c, 74211i, arg_0.a.x), var_1.a.a)), -16121i, max(u_input.a.x, abs(~7959i))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: f32, arg_3: bool) -> vec4<bool> {
    let var_0 = 552f;
    var var_1 = Struct_2(func_4(func_2(), select(arg_0.a.zx, _wgslsmith_sub_vec2_i32(arg_0.a.yy, vec2<i32>(-58831i, 2147483647i)), select(select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, false), vec2<bool>(arg_3, false)), select(vec2<bool>(false, true), vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false)), select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), false)))), func_4(func_2(), u_input.a));
    var var_2 = _wgslsmith_f_op_f32(842f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, -1011f) - -391f)));
    let var_3 = false | (_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.b, 0u, 85597u, 38560u)), vec4<u32>(42938u, abs(22812u), firstTrailingBit(u_input.b), u_input.b)) > _wgslsmith_mult_u32(_wgslsmith_add_u32(reverseBits(27571u), 0u | u_input.b), abs(_wgslsmith_add_u32(u_input.b, u_input.b))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -298f);
    return vec4<bool>(all(vec3<bool>(any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, var_3, var_3)), all(vec3<bool>(false, arg_3, arg_3)))), !any(vec2<bool>(select(arg_3, var_3, true), arg_3)), false, ~u_input.b >= ~min(select(12285u, u_input.b, arg_3), u_input.b));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    let var_0 = func_5(func_4(func_2(), min(u_input.c.zy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), ~vec2<i32>(u_input.a.x, 44312i)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(arg_0.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 427f)), !select(true, false, true))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-394f))), _wgslsmith_f_op_f32(floor(2605f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(exp2(arg_1))))))), any(vec3<bool>(true, true, !all(vec3<bool>(false, false, false)))));
    let var_1 = Struct_3(~(~_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 41085u, u_input.b), vec3<u32>(4294967295u, u_input.b, 55621u)), vec3<u32>(0u, 129989u, 3952u))), ~vec4<u32>(4294967295u, _wgslsmith_add_u32(4294967295u, u_input.b) >> ((42353u ^ u_input.b) % 32u), ~(~u_input.b), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), u_input.b)), -firstTrailingBit(0i));
    var var_2 = u_input.a.x >> (130496u % 32u);
    global0 = var_0.x | all(vec3<bool>(false, (var_0.x & var_0.x) && any(vec2<bool>(true, var_0.x)), u_input.c.x <= u_input.c.x));
    var_2 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(func_4(Struct_1(u_input.c), u_input.a).a.zx, _wgslsmith_mult_vec2_i32(u_input.c.xz, vec2<i32>(-48445i, var_1.c)))), ~min(abs(u_input.c.xz), u_input.a)));
    return var_1;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = true && !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b > 1u));
    let var_1 = _wgslsmith_clamp_i32(arg_0.c, func_4(arg_3.a, arg_1.a.xx).a.x, 0i);
    let var_2 = firstTrailingBit(select(arg_0.a, vec3<u32>(max(~u_input.b, 15532u), ~abs(u_input.b), _wgslsmith_mod_u32(1u & arg_2.b.x, ~arg_2.a.x)), all(vec4<bool>(true, true, true, func_5(Struct_1(vec3<i32>(arg_0.c, u_input.c.x, arg_1.a.x)), vec2<f32>(794f, 207f), -556f, false).x))));
    var var_3 = func_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-505f - 1000f) - -1155f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(370f)), 545f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1394f)) * -2502f), -886f, -397f), -571f);
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, -1478f, -1863f, 142f) * vec4<f32>(298f, -167f, 471f, 228f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(198f, 156f, -328f, 468f))), vec4<bool>(true, false, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-332f, -1182f)), -1206f, _wgslsmith_f_op_f32(f32(-1f) * -816f), _wgslsmith_f_op_f32(1564f - _wgslsmith_f_op_f32(-893f * 2866f))))), Struct_1(-vec3<i32>(var_3.c, var_1, 2147483647i) >> (var_3.a % vec3<u32>(32u))), arg_2, func_5(Struct_1(~(arg_3.b.a | vec3<i32>(var_1, -2147483647i, arg_2.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1422f, 1197f) * vec2<f32>(-983f, -804f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f - -1363f) + -2183f)), func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-434f, -1709f, -1000f, -110f))), -861f).b.x >= (firstTrailingBit(0u) << (arg_0.a.x % 32u))));
    return var_4.c;
}

fn func_7(arg_0: vec4<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = func_5(func_4(Struct_1(u_input.c), vec2<i32>(-2147483647i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.b.x, 4294967295u, u_input.b), arg_1.b) % 32u), -941i)), vec2<f32>(1060f, _wgslsmith_f_op_f32(step(149f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(860f * -1367f), _wgslsmith_f_op_f32(round(-474f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -877f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1330f, -279f)))))), arg_0.x).xyw;
    global0 = select(all(arg_0), arg_0.x == true, false);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(100f, 2766f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-424f)) - 1376f), _wgslsmith_f_op_f32(939f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -729f)));
    global0 = false;
    global0 = firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~u_input.b, 4294967295u, u_input.b), 3056u, u_input.b)) == 1u;
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(func_7(vec4<bool>(true, true, true, true), func_6(func_1(vec4<f32>(387f, 225f, -271f, -360f), _wgslsmith_f_op_f32(300f + 1000f)), Struct_1(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(592f, 1528f, 1378f, 2620f))), _wgslsmith_f_op_f32(-1363f - 622f)), Struct_2(func_4(Struct_1(u_input.c), u_input.c.zx), Struct_1(vec3<i32>(21861i, 63893i, u_input.a.x))))), u_input.c.x);
    global0 = var_0.x >= u_input.c.x;
    global0 = all(!vec3<bool>(any(vec4<bool>(true, true, true, true)), true, !all(vec3<bool>(false, false, false))));
    global0 = select(true, all(!vec4<bool>(func_5(Struct_1(u_input.c), vec2<f32>(990f, -923f), 583f, true).x, true, func_5(Struct_1(u_input.c), vec2<f32>(180f, -1133f), 1411f, true).x, true)), any(!func_5(func_4(Struct_1(vec3<i32>(var_0.x, 1i, var_0.x)), vec2<i32>(-6119i, var_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1730f, -260f)), _wgslsmith_f_op_f32(1768f + 433f), func_5(Struct_1(u_input.c), vec2<f32>(-795f, 1021f), 277f, false).x).xz));
    let var_1 = 19849u;
    let var_2 = func_4(Struct_1(_wgslsmith_sub_vec3_i32(u_input.c, u_input.c) | (vec3<i32>(-1i) * -u_input.c)), vec2<i32>(-21677i, -25994i) << (select(_wgslsmith_div_vec2_u32(~vec2<u32>(var_1, u_input.b), vec2<u32>(var_1, 6253u)), min(vec2<u32>(u_input.b, var_1), vec2<u32>(13484u, var_1)), vec2<bool>(true, true)) % vec2<u32>(32u)));
    var var_3 = 191f;
    var var_4 = !(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(40249u, func_7(!select(func_5(var_2, vec2<f32>(962f, 576f), -269f, true), !vec4<bool>(var_4.x, true, var_4.x, false), !vec4<bool>(true, var_4.x, var_4.x, true)), func_6(Struct_3(vec3<u32>(u_input.b, 24706u, var_1) << (vec3<u32>(6654u, 9704u, var_1) % vec3<u32>(32u)), vec4<u32>(var_1, 0u, u_input.b, 4294967295u) >> (vec4<u32>(1661u, var_1, u_input.b, 29360u) % vec4<u32>(32u)), -var_0.x), func_4(Struct_1(var_2.a), func_4(var_2, u_input.a).a.yz), Struct_3(func_6(Struct_3(vec3<u32>(var_1, var_1, var_1), vec4<u32>(34274u, u_input.b, 71388u, 0u), -9694i), var_2, Struct_3(vec3<u32>(3491u, u_input.b, 15152u), vec4<u32>(16484u, u_input.b, u_input.b, var_1), var_2.a.x), Struct_2(Struct_1(vec3<i32>(var_2.a.x, var_0.x, var_0.x)), var_2)).a, ~vec4<u32>(1576u, 0u, u_input.b, var_1), -var_0.x), Struct_2(var_2, func_4(Struct_1(vec3<i32>(var_2.a.x, u_input.c.x, var_2.a.x)), var_0)))));
}

