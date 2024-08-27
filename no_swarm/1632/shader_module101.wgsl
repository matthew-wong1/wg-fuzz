struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_1(abs(countOneBits(vec3<u32>(_wgslsmith_div_u32(0u, 1u), ~38854u, ~21624u))));
    var var_1 = Struct_2(any(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec4<bool>(false, true, true, true))), true)), 0i == ~(~(-u_input.a.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1043f, 194f))))), var_0, var_0);
    let var_2 = 755f;
    return ~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.a.x, var_1.e.a.x), ~(~1u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(7702u, ~arg_1.a.x, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(25228u, arg_1.a.x, 0u, 32368u), vec4<u32>(55778u, arg_1.a.x, arg_1.a.x, arg_1.a.x))), vec4<u32>(arg_1.a.x ^ 1u, arg_1.a.x, func_3(vec3<i32>(-1i, -1i, arg_0.x) & vec3<i32>(14684i, arg_0.x, u_input.a.x)), _wgslsmith_clamp_u32(arg_1.a.x, 71099u, 47499u)));
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(firstTrailingBit(arg_1.a.x), ~var_0.x & _wgslsmith_mod_u32(0u, 1u)), ~(~vec2<u32>(arg_1.a.x, 25385u) | _wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a.x, 13781u), var_0.zz)) ^ (vec2<u32>(arg_1.a.x, ~1u) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, arg_1.a.x), var_0.ww) % vec2<u32>(32u))));
    var var_2 = Struct_3(Struct_2(true, true, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -583f) * vec2<f32>(-239f, 478f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(127f, -452f) * vec2<f32>(-1054f, -798f)))), arg_1, arg_1));
    var_2 = Struct_3(Struct_2(var_2.a.b, false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(967f - 1633f), -870f)), arg_1, Struct_1(~vec3<u32>(var_1.x, var_1.x, var_1.x) >> (var_0.xyw % vec3<u32>(32u)))));
    var var_3 = Struct_3(Struct_2(var_2.a.a, false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.a.c - var_2.a.c))), var_2.a.c), Struct_1(abs(vec3<u32>(var_1.x, var_1.x, 35692u))), arg_1));
    return var_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1898f, 1f, _wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, arg_0.c.x, 339f, arg_0.c.x)))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -419f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, -555f, arg_0.c.x, 894f)))))));
    var var_1 = Struct_1(vec3<u32>(arg_0.e.a.x << (_wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~1u) % 32u), arg_3.x << (~arg_3.x % 32u), select(_wgslsmith_add_u32(1u, arg_1.a.x), arg_3.x, _wgslsmith_f_op_f32(min(var_0.x, -1200f)) >= _wgslsmith_f_op_f32(var_0.x + arg_0.c.x))));
    let var_2 = select(countOneBits(abs(~(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 1595i) | vec4<i32>(2147483647i, 2147483647i, u_input.a.x, -17510i)))), abs(min(firstTrailingBit(vec4<i32>(11194i, -66519i, u_input.a.x, -5519i)), ~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -27228i))) & -_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -16349i), vec4<i32>(u_input.a.x, u_input.a.x, -963i, u_input.a.x), arg_0.b), vec4<i32>(-18729i, u_input.a.x, 2147483647i, u_input.a.x)), vec4<bool>(all(vec2<bool>(false, all(vec4<bool>(true, false, arg_0.b, arg_0.a)))), arg_0.a, arg_0.a, false));
    var var_3 = arg_2;
    let var_4 = _wgslsmith_f_op_vec2_f32(arg_0.c - var_0.xw);
    return func_2(vec3<i32>(-67691i, 1i, u_input.a.x >> (~arg_3.x % 32u)), arg_1).e;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    return func_2(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x ^ -1i, reverseBits(2147483647i), -1i), ~(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x))), func_4(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(32367i, u_input.a.x, 21933i)), Struct_1(vec3<u32>(25010u, arg_2, 0u) >> (vec3<u32>(4294967295u, 53708u, arg_1.x) % vec3<u32>(32u)))), func_2(-abs(vec3<i32>(u_input.a.x, -2147483647i, -3460i)), arg_0.d).e, func_4(arg_0, arg_0.e, Struct_1(func_4(arg_0, Struct_1(arg_0.d.a), Struct_1(vec3<u32>(34299u, arg_1.x, 65140u)), arg_0.e.a.yy).a), countOneBits(select(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, arg_1.x), arg_0.a))), ~(vec2<u32>(arg_1.x, 0u) << (~vec2<u32>(arg_2, arg_1.x) % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    var var_0 = arg_0.d.a.x;
    var var_1 = true;
    var var_2 = 4294967295u;
    var var_3 = arg_0;
    var_0 = countOneBits(abs(0u));
    return Struct_3(func_5(Struct_2(any(vec4<bool>(true, true, true, true)), var_3.a, var_3.c, func_4(func_2(vec3<i32>(u_input.a.x, -2147483647i, -17073i), arg_0.e), func_2(vec3<i32>(u_input.a.x, 19241i, u_input.a.x), arg_0.e).d, var_3.d, firstTrailingBit(var_3.e.a.zx)), var_3.e), ~vec2<u32>(1u, _wgslsmith_add_u32(arg_0.d.a.x, var_3.d.a.x)), ~_wgslsmith_sub_u32(4294967295u, 36770u | var_3.e.a.x), var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~0u;
    var var_1 = func_1(Struct_2(u_input.a.x <= 2147483647i, false, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-813f)), _wgslsmith_f_op_f32(abs(-842f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-303f, -1000f))), Struct_1(~vec3<u32>(48370u, 69554u, 46494u)), Struct_1(~(~vec3<u32>(var_0, 1u, 85536u)))));
    let var_2 = Struct_3(var_1.a);
    let var_3 = func_5(Struct_2(all(select(!vec2<bool>(var_1.a.a, var_1.a.b), select(vec2<bool>(var_1.a.a, true), vec2<bool>(true, true), vec2<bool>(false, var_2.a.b)), !var_1.a.b)), false, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.c.x, var_2.a.c.x), vec2<f32>(384f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c.x, 714f)) * _wgslsmith_f_op_vec2_f32(min(var_2.a.c, var_1.a.c))))), Struct_1(max(vec3<u32>(0u, var_2.a.e.a.x, var_2.a.e.a.x), var_1.a.e.a)), func_2(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, 38423i), vec3<i32>(u_input.a.x, -16605i, u_input.a.x)), ~vec3<i32>(u_input.a.x, 22788i, 2147483647i)), Struct_1(~vec3<u32>(1u, var_2.a.e.a.x, var_0))).d), firstTrailingBit(var_2.a.e.a.yz), 9387u, !(false || var_2.a.b)).d.a;
    var_1 = func_1(Struct_2(var_1.a.a, !all(vec2<bool>(var_2.a.a, false)), vec2<f32>(1639f, _wgslsmith_f_op_f32(floor(var_1.a.c.x))), Struct_1(vec3<u32>(~4294967295u, ~var_3.x, var_2.a.e.a.x)), func_4(var_1.a, func_5(Struct_2(var_2.a.a, var_2.a.b, vec2<f32>(var_1.a.c.x, var_1.a.c.x), Struct_1(var_3), Struct_1(vec3<u32>(var_3.x, 1u, var_1.a.e.a.x))), func_1(var_1.a).a.e.a.xx, var_0 & 16970u, var_2.a.a).d, func_2(~vec3<i32>(u_input.a.x, -2147483647i, 43190i), var_1.a.e).d, ~func_4(var_1.a, Struct_1(var_2.a.d.a), Struct_1(vec3<u32>(27896u, var_3.x, var_1.a.d.a.x)), vec2<u32>(29315u, 1u)).a.zy)));
    var_1 = Struct_3(Struct_2(var_1.a.b, var_2.a.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.a.c + vec2<f32>(var_2.a.c.x, var_2.a.c.x))))), func_5(func_2(-vec3<i32>(-9384i, u_input.a.x, 20277i), Struct_1(vec3<u32>(4294967295u, 4294967295u, var_1.a.d.a.x))), abs(select(var_3.yx, vec2<u32>(0u, 4294967295u), vec2<bool>(var_2.a.b, var_2.a.a))), ~var_0, func_5(Struct_2(var_2.a.a, var_1.a.a, vec2<f32>(1824f, 262f), Struct_1(vec3<u32>(0u, var_3.x, var_2.a.d.a.x)), var_2.a.d), var_3.zy, func_5(Struct_2(true, var_2.a.b, vec2<f32>(var_2.a.c.x, var_1.a.c.x), var_2.a.e, var_2.a.d), vec2<u32>(0u, var_2.a.d.a.x), 0u, var_1.a.b).d.a.x, var_1.a.c.x <= -1093f).a).e, func_1(Struct_2(var_1.a.a, var_1.a.b, vec2<f32>(var_1.a.c.x, -1205f), Struct_1(vec3<u32>(4294967295u, var_0, var_0)), func_1(Struct_2(var_1.a.b, var_1.a.a, var_2.a.c, var_1.a.e, Struct_1(vec3<u32>(1u, var_2.a.d.a.x, var_2.a.e.a.x)))).a.d)).a.d));
    var var_4 = _wgslsmith_f_op_f32(func_2(-(vec3<i32>(u_input.a.x, u_input.a.x, -1i) | vec3<i32>(u_input.a.x, -4692i, 51503i)) ^ countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), func_5(func_5(func_5(var_2.a, vec2<u32>(var_3.x, 0u), 0u, var_2.a.b), vec2<u32>(var_0, var_1.a.e.a.x), min(var_2.a.e.a.x, var_0), all(vec3<bool>(false, false, true))), var_2.a.d.a.yy, ~var_2.a.e.a.x, var_1.a.c.x >= _wgslsmith_f_op_f32(exp2(var_1.a.c.x))).d).c.x * 433f);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.e.a.x, min(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(-9398i, 1i, u_input.a.x)), reverseBits(vec3<i32>(1i, 1i, -34007i))), i32(-1i) * -50494i), vec2<i32>(1i, u_input.a.x)), var_2.a.c.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.x, 173f, 630f, var_1.a.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a.c.x, 592f, var_1.a.c.x, var_1.a.c.x), vec4<f32>(-1059f, var_2.a.c.x, var_1.a.c.x, var_2.a.c.x), var_1.a.b)) * vec4<f32>(var_2.a.c.x, 1059f, 569f, 589f)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-327f, -356f, var_1.a.c.x, var_2.a.c.x) * vec4<f32>(var_1.a.c.x, var_1.a.c.x, -126f, var_2.a.c.x)), vec4<f32>(var_1.a.c.x, var_1.a.c.x, 238f, -1467f)))))));
}

