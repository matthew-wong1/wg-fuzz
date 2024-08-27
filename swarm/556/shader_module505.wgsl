struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    return arg_1;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-965f, 992f, arg_1.x, arg_0)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(126f, -627f, -1088f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(-func_2(Struct_1(vec4<f32>(595f, -647f, arg_0, 811f), false, vec3<bool>(false, true, true), 1i), Struct_2(Struct_1(vec4<f32>(-1126f, 1000f, arg_1.x, arg_0), false, vec3<bool>(false, true, true), 69613i), vec3<u32>(19367u, u_input.b, 0u), Struct_1(vec4<f32>(-469f, -212f, 157f, 1000f), true, vec3<bool>(false, true, false), 0i))).c.a), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2221f, arg_0, arg_1.x, -311f)))))), true, select(vec3<bool>(false, false, false), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)), true), max(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(2147483647i), ~u_input.c.x, _wgslsmith_sub_i32(0i, -46777i)), _wgslsmith_div_vec3_i32(min(vec3<i32>(u_input.c.x, -23782i, u_input.c.x), vec3<i32>(-2147483647i, 1i, 13128i)), abs(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), ~_wgslsmith_div_i32(~14297i, u_input.c.x)));
    var var_1 = false;
    var_0 = Struct_1(var_0.a, false, !vec3<bool>(any(vec3<bool>(false, false, false)), var_0.c.x, var_0.b || all(vec2<bool>(false, var_0.b))), var_0.d & max(1i, _wgslsmith_sub_i32(u_input.c.x, var_0.d) | _wgslsmith_mod_i32(-16776i, u_input.c.x)));
    var_1 = !all(var_0.c.zz);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2192f, -190f, arg_1.x, arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_0.a.x, 335f, -1000f)))))), !(!var_0.c.x), vec3<bool>(arg_1.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(952f)) + 540f), select(var_0.b, var_0.b, true), var_0.c.x), u_input.c.x);
    return func_2(func_2(Struct_1(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.a.x, -632f, arg_0, -847f), var_0.a))), false, !select(var_0.c, var_0.c, var_0.c), -37505i), func_2(func_2(Struct_1(vec4<f32>(arg_1.x, 852f, 840f, arg_1.x), true, var_0.c, var_0.d), Struct_2(Struct_1(var_0.a, true, var_0.c, 2147483647i), vec3<u32>(u_input.b, 4294967295u, u_input.a), Struct_1(vec4<f32>(-993f, -546f, 301f, -1142f), true, var_0.c, u_input.c.x))).c, Struct_2(Struct_1(vec4<f32>(655f, 1000f, -615f, -1410f), var_0.c.x, var_0.c, -1i), vec3<u32>(88951u, 8488u, u_input.a), func_2(Struct_1(var_0.a, var_0.b, vec3<bool>(false, true, var_0.c.x), u_input.c.x), Struct_2(Struct_1(vec4<f32>(arg_1.x, arg_0, 1036f, -259f), var_0.b, vec3<bool>(var_0.b, false, var_0.b), -5191i), vec3<u32>(1u, u_input.a, 68402u), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -733f, arg_1.x), var_0.c.x, vec3<bool>(var_0.c.x, false, true), 0i))).c))).c, Struct_2(Struct_1(var_0.a, true, var_0.c, var_0.d ^ u_input.c.x), ~(~(~vec3<u32>(4294967295u, u_input.a, u_input.a))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1774f, var_0.a.x, -787f, 813f)) + _wgslsmith_f_op_vec4_f32(step(var_0.a, var_0.a))), var_0.c.x, vec3<bool>(true, !var_0.b, true), u_input.c.x))).a;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_div_vec2_u32(abs(vec2<u32>(0u, ~(~27444u))), select(arg_0.b.zx, ~(~(~arg_2)), all(vec4<bool>(arg_0.a.c.x, !arg_0.c.b, any(vec3<bool>(arg_0.c.c.x, false, false)), !arg_0.a.b))));
    var var_1 = arg_3;
    var var_2 = _wgslsmith_mod_vec2_u32(~(~(~countOneBits(arg_2))), vec2<u32>(~4294967295u, ~_wgslsmith_dot_vec3_u32(arg_0.b, vec3<u32>(9106u, var_0.x, 11478u)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, 70334u, var_0.x), arg_0.b) % 32u)));
    var var_3 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(837f, -839f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1275f, 757f, arg_0.c.b)), func_2(arg_0.a, arg_0).a.a.x))))), _wgslsmith_f_op_vec3_f32(-arg_0.a.a.yyx)).c.x;
    var_1 = -2147483647i;
    return vec4<i32>(u_input.c.x, u_input.c.x, ~arg_0.a.d, 1i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(func_2(func_2(arg_0.c, arg_0).a, func_2(Struct_1(vec4<f32>(170f, arg_0.a.a.x, arg_1, arg_1), true, vec3<bool>(true, false, arg_0.a.b), 60178i), Struct_2(Struct_1(arg_0.c.a, arg_0.c.c.x, arg_0.a.c, -2147483647i), vec3<u32>(arg_0.b.x, 22884u, var_0.x), arg_0.c))).b.x, ~select(var_2.x, arg_0.b.x, true), 0u, _wgslsmith_sub_u32(45196u << (var_2.x % 32u), 18021u)), _wgslsmith_div_vec4_u32(max(abs(vec4<u32>(15493u, var_2.x, 1u, arg_2.x)), vec4<u32>(var_0.x, arg_2.x, 58546u, var_2.x) | vec4<u32>(58320u, 12402u, var_0.x, var_0.x)), select(select(vec4<u32>(u_input.b, 4294967295u, var_0.x, 4294967295u), vec4<u32>(0u, 58395u, 26540u, var_0.x), arg_0.c.b), firstTrailingBit(vec4<u32>(42749u, 0u, 0u, 102080u)), func_2(arg_0.a, arg_0).c.b))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    let var_0 = min(1i, u_input.c.x);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(arg_0.a, _wgslsmith_div_vec4_f32(vec4<f32>(941f, 341f, arg_2, -1000f), vec4<f32>(arg_1.a.x, arg_2, arg_2, arg_0.a.x)), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_0.c.x, true, arg_1.b, arg_1.c.x), vec4<bool>(arg_1.b, arg_0.c.x, arg_0.c.x, false)))))), false, select(arg_0.c, arg_0.c, all(arg_1.c)), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c.x, var_0), 0i & arg_0.d) ^ -11191i), abs(~(select(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(14026u, u_input.a, u_input.a), arg_1.b) ^ vec3<u32>(4294967295u, u_input.a, 32322u))), arg_1);
    let var_2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -32014i, -68772i, arg_1.d), vec4<i32>(1i & arg_0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(58664i, arg_1.d), vec2<i32>(1931i, -2147483647i)), ~30651i, var_0 >> (1783u % 32u)) << (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.a, var_1.b.x, 48265u)), vec4<u32>(var_1.b.x, var_1.b.x, u_input.a, 50336u), vec4<u32>(4294967295u, 30534u, 2069u, u_input.b)) % vec4<u32>(32u)));
    let var_3 = func_2(Struct_1(arg_1.a, !any(vec2<bool>(var_1.a.b, true)), select(!arg_1.c, select(vec3<bool>(true, arg_0.b, arg_1.b), vec3<bool>(var_1.a.b, var_1.c.b, var_1.a.b), vec3<bool>(var_1.c.c.x, true, arg_1.c.x)), !arg_1.c.x || !arg_1.c.x), _wgslsmith_clamp_i32(~(var_2 ^ -2147483647i), 9727i, u_input.c.x)), var_1);
    var var_4 = var_1.b.zz;
    return func_4(Struct_2(func_3(arg_1.a.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.x, 1745f, var_1.c.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, var_1.a.a.x, 993f) - var_1.c.a.yzz)))), ~vec3<u32>(21843u, 4294967295u, var_3.b.x) & max(_wgslsmith_mult_vec3_u32(var_3.b, var_3.b), vec3<u32>(var_1.b.x, 10142u, u_input.a)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1799f, arg_2, arg_0.a.x, arg_2))), _wgslsmith_f_op_vec4_f32(var_1.c.a * vec4<f32>(1060f, arg_0.a.x, arg_2, arg_2))), any(!vec4<bool>(true, false, var_1.a.b, true)), var_1.a.c, 3377i)), _wgslsmith_f_op_f32(f32(-1f) * -757f), ~vec2<u32>(firstTrailingBit(var_3.b.x) << (16195u % 32u), abs(var_1.b.x)), abs(var_1.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var var_1 = firstLeadingBit(u_input.c.x);
    var_0 = -2147483647i;
    var_1 = u_input.c.x;
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~(vec2<u32>(4294967295u, u_input.a) << (vec2<u32>(4294967295u, 11724u) % vec2<u32>(32u))), vec2<u32>(1u ^ u_input.b, ~u_input.b)), vec2<u32>(abs(max(u_input.a, u_input.b)), ~4294967295u)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, firstTrailingBit(-18733i), _wgslsmith_div_i32(-10911i, u_input.c.x), firstTrailingBit(u_input.c.x)), _wgslsmith_div_vec4_i32(func_1(Struct_1(vec4<f32>(-533f, 195f, -1000f, 1442f), var_2, vec3<bool>(var_2, false, var_2), u_input.c.x), Struct_1(vec4<f32>(715f, -177f, -629f, -1291f), var_2, vec3<bool>(var_2, true, false), u_input.c.x), 1508f), countOneBits(vec4<i32>(u_input.c.x, u_input.c.x, -24758i, 2147483647i)))), _wgslsmith_div_vec4_i32(vec4<i32>(36871i, 1i, u_input.c.x, 22363i) << (~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(51316i), u_input.c.x, u_input.c.x, ~0i))), _wgslsmith_f_op_f32(f32(-1f) * -726f), 28951u, func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1347f - 476f) + _wgslsmith_f_op_f32(f32(-1f) * -437f)) - -1067f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(130f)), _wgslsmith_f_op_f32(1000f - 307f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(897f - 1410f) - func_2(Struct_1(vec4<f32>(-615f, 511f, 228f, -137f), var_2, vec3<bool>(false, true, false), u_input.c.x), Struct_2(Struct_1(vec4<f32>(1174f, -1341f, 595f, 1150f), var_2, vec3<bool>(true, var_2, var_2), -5278i), vec3<u32>(u_input.a, 1u, 35179u), Struct_1(vec4<f32>(-831f, -2286f, 622f, 1108f), var_2, vec3<bool>(var_2, var_2, false), u_input.c.x))).c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(139f))))).d);
}

