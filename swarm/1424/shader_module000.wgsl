struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = -countOneBits(-(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 49929i, u_input.b.x))));
    var_0 = vec4<i32>(13376i, firstTrailingBit(~(~u_input.b.x & _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 60i), vec2<i32>(u_input.b.x, 0i)))), max(-30590i, var_0.x), ~reverseBits(var_0.x));
    var_0 = select(vec4<i32>(_wgslsmith_sub_i32(var_0.x, -14427i), -u_input.b.x, firstLeadingBit(var_0.x >> (u_input.c % 32u)) ^ ((var_0.x >> (46088u % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 12871u, u_input.c), vec4<u32>(45515u, u_input.c, 59764u, 0u)) % 32u)), 2147483647i), vec4<i32>(0i, 1i, _wgslsmith_dot_vec3_i32(~var_0.wyx, ~var_0.yyw | vec3<i32>(2147483647i, var_0.x, var_0.x)), _wgslsmith_mult_i32(-(~(-28931i)), -u_input.b.x)), all(select(vec4<bool>(true, false, any(vec2<bool>(true, true)), false), vec4<bool>(all(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(false, false, true)), u_input.c != 48403u), vec4<bool>(false, true, true, all(vec3<bool>(true, true, false))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-863f, arg_0) * vec2<f32>(arg_0, -153f))))) * vec2<f32>(_wgslsmith_f_op_f32(529f * arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(891f, _wgslsmith_f_op_f32(arg_0 - 602f))) - -935f)));
    var_0 = _wgslsmith_add_vec4_i32(vec4<i32>((u_input.a << (u_input.c % 32u)) << (_wgslsmith_div_u32(31118u, 4294967295u) % 32u), 16958i, max(-u_input.a, -var_0.x), var_0.x), ~max(~vec4<i32>(u_input.a, var_0.x, var_0.x, var_0.x), select(vec4<i32>(-2147483647i, u_input.b.x, 0i, 63299i), vec4<i32>(var_0.x, u_input.b.x, var_0.x, -27651i), vec4<bool>(false, true, false, true)))) ^ (_wgslsmith_clamp_vec4_i32(max(firstLeadingBit(vec4<i32>(-33026i, u_input.b.x, var_0.x, -12831i)), _wgslsmith_div_vec4_i32(vec4<i32>(-45486i, var_0.x, 0i, 19926i), vec4<i32>(var_0.x, u_input.b.x, var_0.x, 24331i))), vec4<i32>(u_input.a, -var_0.x, -3581i, 0i), select(-vec4<i32>(u_input.a, u_input.b.x, u_input.a, 2147483647i), max(vec4<i32>(var_0.x, u_input.a, -11500i, 2147483647i), vec4<i32>(61405i, u_input.a, -21849i, -29454i)), any(vec2<bool>(true, false)))) >> (vec4<u32>(~_wgslsmith_div_u32(1u, 4294967295u), 13687u, reverseBits(u_input.c), 4635u) % vec4<u32>(32u)));
    return _wgslsmith_dot_vec2_i32(~var_0.zz, min(-(~(-var_0.xx)), select(countOneBits(-var_0.xw), vec2<i32>(-2147483647i, ~2147483647i), !(1177f == var_1.x))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> vec2<i32> {
    let var_0 = Struct_1(abs(~arg_1.x) & arg_1.x);
    var var_1 = var_0;
    let var_2 = 2147483647i;
    let var_3 = var_0;
    var var_4 = 139f;
    return ~(select(~(~vec2<i32>(1i, var_2)), -vec2<i32>(arg_1.x, var_3.a) << ((vec2<u32>(u_input.c, 8184u) | vec2<u32>(u_input.c, 11137u)) % vec2<u32>(32u)), vec2<bool>(!arg_0, any(vec3<bool>(false, arg_0, arg_0)))) | -_wgslsmith_clamp_vec2_i32(u_input.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -20883i), vec2<i32>(-9256i, u_input.b.x), arg_1.zw), firstLeadingBit(vec2<i32>(var_3.a, var_0.a))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))));
    let var_1 = !select(vec2<bool>(false, arg_0.x & (arg_1.x >= arg_1.x)), select(!arg_0.zx, !select(arg_0.zw, arg_0.yx, vec2<bool>(true, arg_0.x)), arg_0.yw), any(vec2<bool>(arg_0.x, arg_0.x)));
    return Struct_2(func_4(true, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, func_3(-1946f), -1i, min(u_input.b.x, 1347i)), vec4<i32>(u_input.a, -2147483647i, _wgslsmith_sub_i32(u_input.b.x, 1i), 10074i), (vec4<i32>(0i, 28918i, 28362i, 1i) | vec4<i32>(u_input.b.x, -1i, 0i, u_input.b.x)) << (~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u)))), _wgslsmith_add_vec2_i32(abs(u_input.b), abs(min(u_input.b, u_input.b))) | u_input.b, Struct_1(1i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(671f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1806f), -498f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1253f, 737f, 350f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) + _wgslsmith_f_op_f32(abs(232f))), arg_1.x, -415f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = ~(arg_0.a.x << (_wgslsmith_div_u32(u_input.c, _wgslsmith_sub_u32(~0u, 1u << (u_input.c % 32u))) % 32u));
    var_0 = max(_wgslsmith_div_i32(arg_1.b.x, -2147483647i), 8262i);
    var var_1 = (arg_0.b.x & _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i) * -u_input.b)) | countOneBits(28107i);
    var var_2 = func_2(select(vec4<bool>(true, ~u_input.c != u_input.c, all(vec2<bool>(false, true)), !(arg_1.d.x < arg_0.d.x)), select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(any(vec3<bool>(false, false, true)), true, false)), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-103f + _wgslsmith_f_op_f32(floor(arg_1.d.x))), _wgslsmith_div_f32(-1548f, _wgslsmith_f_op_f32(f32(-1f) * -2059f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_1.d.xyw))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true))))).c;
    var_2 = arg_1.c;
    return arg_1.d.x;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~vec2<u32>(u_input.c, 1u);
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, select(u_input.a, 6667i, arg_0.x)), -(~(-38872i))), u_input.b.x), -1i);
    let var_2 = vec3<u32>(0u, reverseBits(_wgslsmith_sub_u32(_wgslsmith_div_u32(select(72082u, 7819u, false), 0u), var_0.x)), ~1u);
    var var_3 = var_1.x;
    let var_4 = i32(-1i) * -(~_wgslsmith_mult_i32(var_1.x, u_input.a));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-906f + -546f) * -1330f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(vec4<bool>(true, arg_0.x, arg_0.x, true), vec3<f32>(242f, 1144f, -1342f)), Struct_2(var_1, u_input.b, Struct_1(15695i), vec4<f32>(1000f, 1337f, 362f, -814f)))))));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !vec4<bool>(true, !any(vec2<bool>(true, true)), arg_1, true);
    var var_1 = u_input.b;
    let var_2 = arg_2;
    var_0 = vec4<bool>(!(all(vec2<bool>(arg_1, var_0.x)) || all(!vec2<bool>(var_0.x, var_0.x))), var_0.x, true && var_0.x, true);
    let var_3 = any(vec2<bool>(var_0.x | arg_1, var_0.x));
    return arg_2;
}

fn func_7(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(arg_3.d.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.d.x, -122f)))));
    let var_1 = -647f;
    let var_2 = arg_3.c;
    var var_3 = func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.d + arg_3.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.d.x, 1174f, arg_3.d.x, 626f)))) * arg_3.d), !arg_2, Struct_1(4812i));
    var var_4 = func_2(vec4<bool>(!(!(!arg_2)), any(select(!vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, true, false), false)), all(vec3<bool>(all(vec2<bool>(true, false)), false, any(vec2<bool>(arg_2, arg_2)))), false | all(!vec3<bool>(false, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, arg_3.d.x, var_1) * vec3<f32>(-1380f, -208f, arg_3.d.x))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1758f)), arg_3.d.x, _wgslsmith_f_op_f32(select(-310f, 1908f, true)))))));
    return Struct_1(min(-2147483647i, u_input.b.x) << (u_input.c % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, -856f, 351f, 673f))), vec4<f32>(-470f, _wgslsmith_f_op_f32(select(-1000f, -1025f, true)), _wgslsmith_f_op_f32(func_1(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -695f))), all(vec2<bool>(true, false)), Struct_1(~(-2147483647i))), max(2147483647i, -2147483647i), true, func_2(vec4<bool>(select(true, false, true), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), true, all(vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-543f - 1435f), -424f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1199f, -1460f) - vec3<f32>(1566f, 263f, 1074f)))))));
    let var_1 = _wgslsmith_div_vec3_i32(firstTrailingBit(-vec3<i32>(_wgslsmith_clamp_i32(var_0.a, var_0.a, -13274i), u_input.a, 2147483647i)), vec3<i32>(-firstLeadingBit(abs(-15328i)), 8889i, _wgslsmith_dot_vec2_i32(reverseBits(u_input.b), u_input.b)));
    let var_2 = !(!vec2<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(924f, _wgslsmith_div_f32(-255f, 167f)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-464f, 1000f), vec2<f32>(763f, -1236f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-383f, 282f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(2527f, 2313f) + vec2<f32>(229f, -237f)), vec2<f32>(-684f, 790f), select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, true), var_2.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(861f, 197f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1271f, -897f) - vec2<f32>(767f, 779f)))), select(!select(vec2<bool>(var_2.x, false), var_2, var_2), var_2, select(vec2<bool>(var_2.x, false), var_2, var_2)))));
    var var_4 = func_2(vec4<bool>(!var_2.x, any(vec3<bool>(var_2.x, var_2.x, -1000f == var_3.x)), !var_2.x, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1000f, var_3.x)));
    var_4 = func_2(vec4<bool>((1369f >= _wgslsmith_f_op_f32(floor(-801f))) | true, all(select(vec3<bool>(var_2.x, var_2.x, true), select(vec3<bool>(false, true, var_2.x), vec3<bool>(true, true, true), vec3<bool>(var_2.x, var_2.x, true)), !vec3<bool>(var_2.x, var_2.x, var_2.x))), !(0u > _wgslsmith_div_u32(u_input.c, 0u)), _wgslsmith_f_op_f32(-1000f + var_3.x) <= _wgslsmith_f_op_f32(func_1(select(vec3<bool>(true, true, true), vec3<bool>(false, false, var_2.x), var_2.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(835f, 1154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.x) - var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~1u, 0u, 4294967295u), u_input.c, var_1.yz);
}

