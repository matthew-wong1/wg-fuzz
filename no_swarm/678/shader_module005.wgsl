struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.d, firstLeadingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.d.x, 24178u), u_input.d), u_input.d, true))) << (u_input.d.x % 32u);
    let var_1 = Struct_1(~4294967295u);
    return ~u_input.d.www;
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_2(27803u, vec4<i32>(0i, -1i, ~(-2147483647i), -4904i), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, !any(vec3<bool>(false, true, false)))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(countOneBits(u_input.c), ~arg_0.x), ~arg_0.x), max(~u_input.d.x, countOneBits(u_input.c)), u_input.d.x));
    return _wgslsmith_mult_u32(3720u, ~(~firstTrailingBit(arg_0.x))) | _wgslsmith_add_u32(arg_0.x | 1u, _wgslsmith_add_u32(u_input.d.x ^ (arg_0.x >> (1u % 32u)), (u_input.d.x << (var_0.a % 32u)) & abs(40440u)));
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = 2147483647i;
    let var_1 = Struct_4(Struct_1(~(~16908u ^ u_input.d.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-653f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1036f))))), -1453f, true)), Struct_2(~(~(4294967295u >> (u_input.c % 32u))), select(vec4<i32>(var_0, _wgslsmith_add_i32(u_input.a, 0i), u_input.b, u_input.b | u_input.a), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, -2147483647i, var_0, -3555i), vec4<i32>(u_input.b, 2147483647i, 0i, var_0) | vec4<i32>(0i, var_0, var_0, 27676i)), !select(vec4<bool>(false, arg_2.x, false, arg_1), vec4<bool>(false, false, false, false), arg_0)), arg_2, ~u_input.d.yyw), Struct_1(~4294967295u));
    let var_2 = firstTrailingBit(-65520i);
    let var_3 = _wgslsmith_f_op_f32(1264f + 2505f);
    let var_4 = Struct_2(func_4(func_3()), abs(min(vec4<i32>(_wgslsmith_mult_i32(var_2, var_0), u_input.b, 40373i, countOneBits(u_input.b)), reverseBits(-var_1.c.b))), !(!select(vec2<bool>(var_1.c.c.x, var_1.c.c.x), vec2<bool>(true, true), !vec2<bool>(arg_1, true))), vec3<u32>(1u, _wgslsmith_sub_u32(13261u, var_1.a.a) & var_1.a.a, var_1.d.a));
    return Struct_2(48597u, _wgslsmith_mod_vec4_i32(vec4<i32>(~(-var_0), min(38521i, firstTrailingBit(var_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, 12752i), -var_4.b.yz), ~countOneBits(var_2)), min(vec4<i32>(-var_4.b.x, ~var_0, firstLeadingBit(-39454i), _wgslsmith_clamp_i32(-1601i, var_1.c.b.x, 2147483647i)), select(vec4<i32>(var_2, var_4.b.x, -1034i, var_1.c.b.x) >> (u_input.d % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(var_4.b, vec4<i32>(var_1.c.b.x, 38293i, 1i, u_input.a)), all(vec2<bool>(arg_2.x, false))))), vec2<bool>(true, true), ~var_1.c.d);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = arg_1.b;
    let var_1 = Struct_2(~arg_0.c.d.x, select(vec4<i32>(u_input.a, u_input.b, arg_0.c.b.x, _wgslsmith_mult_i32(65529i, 1i) >> (~arg_1.a % 32u)), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(30184i, arg_0.c.b.x, -1i, 0i), vec4<i32>(1222i, var_0.x, var_0.x, var_0.x)) >> ((u_input.d >> (vec4<u32>(58655u, 50631u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u))), arg_0.c.c.x), vec2<bool>((_wgslsmith_div_f32(1364f, arg_0.b) <= 1139f) || all(!arg_1.c), ~48261i >= ((-1i >> (u_input.d.x % 32u)) & 0i)), vec3<u32>(1u, arg_0.d.a ^ max(0u ^ u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(81527u, 6106u, 153938u), arg_0.c.d)), countOneBits(_wgslsmith_sub_u32(~1u, arg_1.a))));
    let var_2 = arg_0.c.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1380f - -495f), arg_0.b, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, arg_1.c.x), false)))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b)) + arg_0.b))));
    let var_4 = firstTrailingBit(max(_wgslsmith_add_vec4_u32(max(u_input.d, u_input.d & vec4<u32>(4294967295u, u_input.c, u_input.c, 4294967295u)), vec4<u32>(select(1u, 2086u, arg_0.c.c.x), min(38532u, arg_1.a), ~31485u, ~0u)), u_input.d));
    return u_input.d.yz;
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_4(Struct_1(1u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-149f - -786f))) - _wgslsmith_f_op_f32(1f * 654f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(168f * -1917f)))))), func_2(false, !all(vec3<bool>(true, true, true)), select(func_2(select(true, false, false), true, vec2<bool>(true, true)).c, vec2<bool>(true, true), all(vec3<bool>(true, true, true)))), Struct_1(4294967295u));
    var var_1 = countOneBits(vec2<i32>(firstTrailingBit(firstTrailingBit(-51061i)) >> (arg_2.x % 32u), ~(~(~arg_0.x))));
    var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-1i, var_1.x), 0i), select(_wgslsmith_sub_vec2_i32(~arg_3.xx, _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(arg_3.zy, var_0.c.b.xz), _wgslsmith_add_vec2_i32(arg_0.yy, vec2<i32>(arg_3.x, var_0.c.b.x)))), arg_1.yy, false && !var_0.c.c.x));
    var var_2 = Struct_2(func_3().x, arg_3, select(var_0.c.c, var_0.c.c, var_0.c.c), ~vec3<u32>(0u, 48565u, 4294967295u));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) - 1238f), -308f, _wgslsmith_f_op_f32(f32(-1f) * -808f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -230f, var_0.b, var_0.b)))) + vec4<f32>(_wgslsmith_f_op_f32(var_0.b * var_0.b), _wgslsmith_f_op_f32(abs(1722f)), var_0.b, _wgslsmith_f_op_f32(step(var_0.b, var_0.b)))))), vec4<bool>(var_2.c.x, any(vec3<bool>(true, var_0.c.c.x, !var_2.c.x)), true | var_2.c.x, any(!select(var_2.c, vec2<bool>(var_0.c.c.x, var_2.c.x), false)))));
    return select(select(select(func_2(var_2.a >= 1u, var_0.c.c.x, var_2.c).c, !select(vec2<bool>(false, false), var_2.c, var_2.c.x), vec2<bool>(any(var_0.c.c), var_2.c.x)), !(!func_2(false, false, var_0.c.c).c), var_0.c.c.x), select(var_0.c.c, !vec2<bool>(true && var_2.c.x, arg_2.x == var_2.d.x), select(vec2<bool>(false, true), var_0.c.c, all(vec3<bool>(var_0.c.c.x, true, var_0.c.c.x)))), var_2.c);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-897f)), _wgslsmith_f_op_f32(-385f + -735f), _wgslsmith_f_op_f32(abs(-908f)), _wgslsmith_f_op_f32(418f * -1297f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1211f), _wgslsmith_f_op_f32(round(-653f)), _wgslsmith_div_f32(235f, 597f), _wgslsmith_f_op_f32(f32(-1f) * -1294f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1303f, 1000f, 631f, -863f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-158f, 807f, 914f, 392f))) * vec4<f32>(-126f, -1223f, -898f, -1166f))))));
    let var_1 = Struct_2(81908u, firstLeadingBit(vec4<i32>(-1i, ~0i, u_input.b, ~1i)), select(select(!vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), _wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(-var_0.x)), func_6(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(1371i, 27046i)), -46183i, -2147483647i), -vec3<i32>(12353i, -71180i, -1i), func_5(Struct_4(Struct_1(1u), var_0.x, Struct_2(arg_0.x, vec4<i32>(-2147483647i, u_input.a, -6221i, u_input.b), vec2<bool>(false, false), vec3<u32>(u_input.d.x, u_input.c, 1u)), Struct_1(1u)), func_2(arg_2, arg_2, vec2<bool>(arg_2, arg_2))), vec4<i32>(u_input.a, -1410i, 25476i, reverseBits(2147483647i))), true), select(firstTrailingBit(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 13983u, 26984u), u_input.d.zyw), ~arg_1.ywx)), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_0.x, arg_1.x, arg_0.x)), ~(~u_input.d.yyw)), (arg_2 && true) & arg_2));
    var var_2 = arg_0.wzx;
    var_2 = arg_0.ywz;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(step(-1555f, 735f)), var_0.x, 603f) * _wgslsmith_div_vec4_f32(vec4<f32>(504f, 728f, -1000f, 330f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1946f, var_0.x, var_0.x, var_0.x) - vec4<f32>(530f, var_0.x, var_0.x, 740f))))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1085f)), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return -1198f;
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = arg_1.a;
    var var_2 = Struct_2(0u, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-19680i, 16759i, u_input.a), vec3<i32>(u_input.a, -39295i, u_input.b)) >> (21546u % 32u), firstTrailingBit(u_input.b << (69915u % 32u)), 0i << (var_0.a % 32u)), _wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-26593i, 2964i, u_input.b, u_input.b), vec4<i32>(1i, u_input.a, u_input.b, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-14931i, u_input.a, 1i, 5912i), ~vec4<i32>(510i, -1i, u_input.b, u_input.b)))), select(vec2<bool>((u_input.b > u_input.b) | all(vec3<bool>(false, false, false)), true), !select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !func_2(false, false, func_2(true, false, vec2<bool>(false, true)).c).c), u_input.d.yzw);
    var_2 = Struct_2(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, var_0.a, var_1, 1u)), ~arg_1.a), _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(1i, u_input.b), -var_2.b.x, -var_2.b.x, var_2.b.x << (var_0.a % 32u)), vec4<i32>(1i, -2147483647i ^ (u_input.b << (var_2.d.x % 32u)), 1i, ~_wgslsmith_dot_vec3_i32(var_2.b.zxy, vec3<i32>(u_input.b, -1i, var_2.b.x)))), var_2.c, select(_wgslsmith_div_vec3_u32(~func_3(), ~firstLeadingBit(vec3<u32>(var_2.d.x, 6158u, var_2.a))), var_2.d, select(vec3<bool>(true, true, any(vec3<bool>(var_2.c.x, var_2.c.x, true))), vec3<bool>(false, false, true), false | (arg_0.x == arg_0.x))));
    var var_3 = Struct_4(Struct_1(reverseBits(arg_1.a)), _wgslsmith_f_op_f32(-1f), Struct_2(func_4(var_2.d), vec4<i32>(27699i, _wgslsmith_clamp_i32(u_input.a, ~35440i, 19731i), firstTrailingBit(_wgslsmith_div_i32(-22356i, 2147483647i)), -24156i), vec2<bool>(func_2(true, var_2.c.x || true, !vec2<bool>(true, var_2.c.x)).c.x, !var_2.c.x), ~(~u_input.d.yzz)), Struct_1(_wgslsmith_sub_u32(~(~4294967295u), arg_1.a)));
    return select(!vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) > _wgslsmith_f_op_f32(-var_3.b), var_3.c.b.x >= _wgslsmith_mod_i32(24721i, var_3.c.b.x), var_1 == (var_0.a | 0u)), select(select(!vec3<bool>(var_2.c.x, true, var_2.c.x), select(vec3<bool>(var_3.c.c.x, false, false), !vec3<bool>(var_3.c.c.x, true, var_2.c.x), vec3<bool>(true, var_3.c.c.x, true)), vec3<bool>(false, var_3.c.c.x, false)), select(vec3<bool>(any(vec4<bool>(var_3.c.c.x, var_2.c.x, var_3.c.c.x, true)), true, !var_3.c.c.x), select(vec3<bool>(false, false, false), select(vec3<bool>(var_2.c.x, true, var_2.c.x), vec3<bool>(var_3.c.c.x, false, false), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, var_3.c.c.x, var_3.c.c.x), vec3<bool>(false, var_3.c.c.x, var_2.c.x), true)), select(vec3<bool>(var_3.b >= var_3.b, true, var_2.c.x), select(vec3<bool>(true, var_3.c.c.x, true), !vec3<bool>(var_3.c.c.x, false, true), var_2.c.x), !(!vec3<bool>(var_2.c.x, var_2.c.x, false)))), any(select(var_3.c.c, vec2<bool>(true, all(var_3.c.c)), var_2.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.d.yx);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1262f);
    var_0 = vec2<u32>(abs(reverseBits(33468u)), 30804u);
    var var_2 = func_7(vec3<f32>(1354f, _wgslsmith_f_op_f32(func_1(~vec4<u32>(78022u, 4294967295u, var_0.x, var_0.x), u_input.d & min(u_input.d, u_input.d), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-687f))))), Struct_1(_wgslsmith_clamp_u32(~4294967295u, 1147u, ~(~33087u))));
    var var_3 = !select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(true, var_2.x, var_2.x)), select(vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(var_2.x, true, true), true), var_1 != var_1), vec3<bool>(var_2.x, !var_2.x, true), !any(vec4<bool>(true, var_2.x, true, var_2.x))), !(!select(vec3<bool>(var_2.x, true, false), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, false, false))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.d.zz), abs(vec2<u32>(u_input.d.x, ~u_input.c) << (min(firstTrailingBit(u_input.d.xw), u_input.d.yy) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), var_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_1, -129f, -1687f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -1535f) - vec4<f32>(491f, 1296f, 738f, -988f)))))), 937f);
}

