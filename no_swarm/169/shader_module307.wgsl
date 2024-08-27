struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = -224f;
    var var_1 = reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)) >> (~arg_0 % vec3<u32>(32u))) >> (select(arg_0, ~(~(~vec3<u32>(4294967295u, 1u, 28970u))), any(select(!arg_1.d.xwx, select(vec3<bool>(false, arg_1.d.x, arg_1.d.x), vec3<bool>(true, arg_1.d.x, arg_1.d.x), arg_1.d.x), arg_1.d.x))) % vec3<u32>(32u));
    var_1 = ~(-_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(var_1.x, 2147483647i, 23250i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -27601i, var_1.x), vec3<i32>(var_1.x, -69090i, var_1.x), vec3<i32>(1i, -6530i, 2147483647i)), vec3<i32>(var_1.x, var_1.x, -84164i)));
    var_1 = select(~vec3<i32>(_wgslsmith_sub_i32(-2147483647i, firstTrailingBit(0i)), -36540i, -24658i), _wgslsmith_div_vec3_i32(max(firstTrailingBit(vec3<i32>(var_1.x, var_1.x, var_1.x)) >> (vec3<u32>(arg_0.x, arg_1.a, arg_1.a) % vec3<u32>(32u)), ~(vec3<i32>(var_1.x, var_1.x, var_1.x) << (vec3<u32>(80643u, arg_1.a, u_input.a) % vec3<u32>(32u)))), -vec3<i32>(i32(-1i) * -9334i, var_1.x, 1198i)), vec3<bool>(arg_1.d.x || false, any(select(select(arg_1.d, vec4<bool>(false, true, arg_1.d.x, true), arg_1.d.x), arg_1.d, vec4<bool>(arg_1.d.x, true, arg_1.d.x, arg_1.d.x))), any(select(vec4<bool>(arg_1.d.x, true, arg_1.d.x, true), select(vec4<bool>(arg_1.d.x, arg_1.d.x, true, false), arg_1.d, arg_1.d), !arg_1.d.x))));
    var var_2 = arg_1.a;
    return _wgslsmith_f_op_f32(round(-847f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1262f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -421f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f + -768f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(step(394f, -1376f)), _wgslsmith_f_op_f32(func_3(vec3<u32>(15027u, u_input.a, 89679u), Struct_1(0u, vec3<f32>(-1540f, -850f, 148f), vec3<f32>(666f, -314f, 695f), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(2273f - -591f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1579f, 1000f, -382f, 254f), vec4<f32>(-573f, 2782f, -1511f, 149f)))), vec4<f32>(_wgslsmith_div_f32(583f, 2038f), _wgslsmith_f_op_f32(select(353f, 376f, true)), _wgslsmith_f_op_f32(abs(1615f)), _wgslsmith_f_op_f32(-2200f * 633f))))));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(min(min(_wgslsmith_sub_vec2_i32(vec2<i32>(155i, 4742i), vec2<i32>(-6502i, 2147483647i)), -vec2<i32>(21388i, 1i)), ~countOneBits(vec2<i32>(27595i, -26046i))), ~_wgslsmith_mod_vec2_i32(~vec2<i32>(3038i, -1i), vec2<i32>(-69901i, 65591i))), firstLeadingBit(vec2<i32>(2147483647i, firstLeadingBit(_wgslsmith_clamp_i32(-2962i, -1i, -16639i)))));
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1195f * _wgslsmith_div_f32(var_0.x, -426f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1049f))), var_0.x, -402f), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-992f, var_0.x, var_0.x, -206f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, var_0.x, var_0.x, var_0.x)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1308f, -269f)) * _wgslsmith_f_op_f32(select(-1332f, 1131f, false))), true)), _wgslsmith_f_op_f32(var_0.x + var_0.x)), _wgslsmith_f_op_vec2_f32(-var_0.yy)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-904f, var_2.x, var_0.x, 570f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, 869f, var_2.x, -159f) * vec4<f32>(-1145f, 905f, var_2.x, -528f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -153f, 449f, var_2.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1101f, var_2.x, var_2.x) + vec4<f32>(-1004f, 334f, var_2.x, 1077f))))));
    return Struct_2(~firstLeadingBit(65513u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_0.x, -851f, var_0.x)) + vec4<f32>(-878f, var_2.x, 1773f, -1178f)) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(1719f + var_0.x), _wgslsmith_f_op_f32(var_2.x - var_0.x), _wgslsmith_f_op_f32(-1443f - var_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 859f, 101f) * vec4<f32>(-277f, 1084f, 369f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, 578f, -1547f, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 320f, var_0.x, 827f), vec4<f32>(806f, 2143f, 1000f, 399f))))), Struct_1(u_input.a, var_0.wzy, vec3<f32>(_wgslsmith_f_op_f32(max(-110f, -189f)), var_2.x, _wgslsmith_f_op_f32(-var_2.x)), !vec4<bool>(u_input.a != 90691u, true, true, true)), vec2<bool>(false, true), Struct_1(1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zzw - vec3<f32>(-244f, -594f, var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, -1254f, var_0.x))), var_0.wzw)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
}

fn func_1() -> i32 {
    var var_0 = func_2();
    return firstTrailingBit(select(min(6899i, _wgslsmith_div_i32(-4099i, ~(-23054i))), i32(-1i) * -4750i, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(1i, 2147483647i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(16402i, 1i), vec2<i32>(~2894i, reverseBits(-47389i))), vec2<i32>(abs(_wgslsmith_mult_i32(-40677i, -11208i)), 2147483647i));
    let var_1 = ~(~(~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, 9135u), vec3<u32>(67269u, 23006u, 22993u)), vec3<u32>(3778u, u_input.a, 17056u))));
    var var_2 = -reverseBits(vec4<i32>(~_wgslsmith_mult_i32(1i, 1288i), countOneBits(func_1()), var_0.x, ~0i));
    let var_3 = func_2();
    let var_4 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.c.x) + -1115f), _wgslsmith_f_op_f32(var_3.c.b.x + var_3.e.b.x), 1279f)), var_3.c.b, func_2().e.d);
    var var_5 = func_2();
    var var_6 = !(!(!(true & !var_3.c.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~((vec4<u32>(var_1.x, 8839u, var_1.x, var_4.a) & ~vec4<u32>(44709u, u_input.a, 7190u, var_1.x)) | ~(vec4<u32>(37699u, 0u, var_4.a, var_1.x) << (vec4<u32>(var_5.c.a, var_4.a, 0u, var_3.a) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(~min(vec4<i32>(11947i, 2147483647i, var_2.x, var_2.x) << (vec4<u32>(var_1.x, 0u, 0u, 44421u) % vec4<u32>(32u)), vec4<i32>(var_0.x, 2147483647i, 5720i, var_0.x)), max(-vec4<i32>(var_0.x, -2147483647i, -2147483647i, -881i), vec4<i32>(1i, var_2.x, -2147483647i, 38157i) & vec4<i32>(var_0.x, 2147483647i, -29931i, var_2.x)) ^ ~vec4<i32>(var_0.x, var_2.x, var_2.x, var_0.x)), var_1.x, var_5.c.b.x);
}

