struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-1592f, -276f, -818f), vec3<f32>(-1136f, 233f, 1000f), vec3<f32>(1000f, 535f, 416f), vec3<f32>(959f, 727f, -1713f), vec3<f32>(1000f, 696f, -1376f));

var<private> global2: Struct_2 = Struct_2(vec4<u32>(4294967295u, 1u, 101541u, 44869u));

var<private> global3: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true));

var<private> global4: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(4294967295u, 0u, 125844u, 18599u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(143843u, 40269u, 0u, 0u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-685f, _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)))) * 955f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(757f * arg_0.x)))));
    var var_1 = _wgslsmith_clamp_vec4_i32(~select(-_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -1i, -46091i, 0i), vec4<i32>(16713i, 0i, 1i, -33828i), vec4<i32>(20307i, 41218i, -66811i, -42255i)), vec4<i32>(31044i, abs(1969i), 13285i, -1i), select(vec4<bool>(false, arg_2.a, arg_3, true), vec4<bool>(false, true, arg_2.a, arg_3), false)), abs(-min(~vec4<i32>(-48550i, 43358i, 1i, 15669i), ~vec4<i32>(1i, -57603i, -2147483647i, 46671i))), select(vec4<i32>(1i, 1i, 1i, 1i), firstTrailingBit(-(vec4<i32>(-41864i, -2147483647i, 0i, 45357i) << (u_input.b % vec4<u32>(32u)))), arg_3 & select(true, arg_2.a, any(global3[_wgslsmith_index_u32(4294967295u, 28u)]))));
    global4 = array<vec4<u32>, 3>();
    var var_2 = ~vec2<i32>(var_1.x, countOneBits(firstTrailingBit(2147483647i)));
    var_1 = ~firstTrailingBit(~select(-vec4<i32>(-30629i, -2147483647i, -2147483647i, var_1.x), vec4<i32>(-2147483647i, -21599i, var_2.x, var_1.x), vec4<bool>(false, true, arg_2.a, arg_3)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-1076f + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x), -513f) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(253f, -598f)) * arg_0.x), _wgslsmith_f_op_f32(step(613f, -1450f)), _wgslsmith_div_f32(-1203f, _wgslsmith_f_op_f32(arg_0.x + -487f)), 233f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1177f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-278f, arg_0.x, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - -1296f)), _wgslsmith_f_op_f32(sign(-207f)), -846f)));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(~select(u_input.a ^ ~0u, global2.a.x & 1u, any(vec4<bool>(false, false, false, false))), 3u)]);
    var var_1 = 1i;
    var var_2 = global4[_wgslsmith_index_u32(0u, 3u)] | var_0.a;
    let var_3 = abs(65865u);
    return _wgslsmith_clamp_i32(arg_0.x, -21953i, arg_0.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec4<i32>(select(-(~0i), _wgslsmith_mod_i32(1i, ~0i), -2147483647i <= firstTrailingBit(~2147483647i)), ~(-34547i) >> (arg_0.x % 32u), func_4(max(reverseBits(vec2<i32>(-22200i, 1i)), vec2<i32>(0i, 0i)) | -(vec2<i32>(-34237i, 34679i) << (u_input.b.wy % vec2<u32>(32u))), 1f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(540f, 175f, 1480f, 952f) - vec4<f32>(1222f, 636f, 735f, 1000f)), _wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(-1000f, -977f), true, Struct_1(true), false)), false)), vec4<f32>(-1490f, -623f, -929f, _wgslsmith_f_op_f32(-1261f - -2163f))))), _wgslsmith_sub_i32(((i32(-1i) * -27992i) >> (1u % 32u)) >> (firstLeadingBit(59604u) % 32u), -2868i));
    let var_1 = var_0;
    var var_2 = all(!vec4<bool>(!any(vec2<bool>(true, true)), true, true, !(0i <= var_1.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2036f, 1168f), vec2<f32>(1164f, -1010f), false)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, -304f) - vec2<f32>(-150f, -171f))))))));
    var var_4 = select(!(!vec3<bool>(true, false, all(vec2<bool>(false, true)))), select(select(vec3<bool>(true, var_3.x == -579f, true), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), true), select(vec3<bool>(-10524i > var_1.x, true, true), vec3<bool>(true, true, any(vec2<bool>(true, false))), select(all(vec2<bool>(false, false)), true, select(false, true, true))), true), select(_wgslsmith_mult_u32(1u, ~global2.a.x) < _wgslsmith_dot_vec2_u32(arg_0.zx, ~vec2<u32>(77975u, global2.a.x)), true, true));
    return Struct_2(global4[_wgslsmith_index_u32(arg_0.x, 3u)]);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = Struct_4(arg_2.a, true, arg_2.c);
    let var_1 = _wgslsmith_dot_vec2_u32(arg_0.a.ww, vec2<u32>(56806u, _wgslsmith_dot_vec3_u32(~(~var_0.a.a.yzy), ~vec3<u32>(var_0.a.a.x, u_input.a, arg_0.a.x) | (vec3<u32>(76723u, arg_0.a.x, 0u) | arg_2.a.a.wzw))));
    var var_2 = -2158f;
    var var_3 = 2147483647i;
    var_2 = 1836f;
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(func_2(~global2.a), func_2(global4[_wgslsmith_index_u32(4294967295u, 3u)]), Struct_4(func_2(~u_input.b), true, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1524f, 1725f)))), firstLeadingBit(vec4<i32>(-11882i, -(14784i >> (global2.a.x % 32u)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(15487i, 1i, 73533i, 0i), vec4<i32>(17148i, 40006i, 11719i, -1i), true), vec4<i32>(1i, 1i, 1i, 1i)), ~abs(-8612i))));
    var var_1 = Struct_1(any(!(!vec3<bool>(false, var_0.b, var_0.b))));
    return var_0.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(firstLeadingBit(arg_2.a.a.x), 28u)], 346f);
    global2 = Struct_2(abs(~vec4<u32>(abs(arg_0.a.x), _wgslsmith_mod_u32(1u, arg_2.a.a.x), _wgslsmith_dot_vec4_u32(global2.a, global4[_wgslsmith_index_u32(20700u, 3u)]), _wgslsmith_clamp_u32(arg_0.a.x, arg_2.a.a.x, arg_0.a.x))));
    var var_1 = !(var_0.a.x & !var_0.a.x);
    global3 = array<vec4<bool>, 28>();
    let var_2 = vec2<i32>(i32(-1i) * -1i, -40764i);
    return func_5(arg_2.a, arg_0, func_5(arg_1, func_5(arg_2.a, Struct_2(~arg_0.a), func_5(Struct_2(arg_2.a.a), func_1(), Struct_4(arg_2.a, true, vec2<f32>(-419f, 1651f)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_2.x, 0i, var_2.x), vec4<i32>(1i, 0i, -1i, var_2.x))), ~vec4<i32>(-14901i, var_2.x, 0i, 22536i)).a, arg_2, abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_2.x, 0i, 2147483647i) | vec4<i32>(var_2.x, -2147483647i, var_2.x, var_2.x), -vec4<i32>(var_2.x, 12795i, 13101i, -1i)))), abs(firstLeadingBit(vec4<i32>(1i, var_2.x, abs(2147483647i), -var_2.x)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(u_input.b), Struct_2(u_input.b), Struct_4(func_1(), any(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(932f, -795f) + vec2<f32>(-647f, -616f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-149f, -115f) + vec2<f32>(-130f, -262f))))));
    var_0 = Struct_2(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.x, 1u, var_0.a.x, 3069u), vec4<u32>(4294967295u, 0u, var_0.a.x, 63212u), vec4<u32>(global2.a.x, global2.a.x, 29907u, 0u))));
    var var_1 = select(vec4<bool>(true, false, false, all(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), true);
    var_0 = Struct_2(func_6(func_5(func_6(Struct_2(global2.a), Struct_2(vec4<u32>(global2.a.x, u_input.a, 4294967295u, var_0.a.x)), func_5(Struct_2(vec4<u32>(var_0.a.x, 0u, var_0.a.x, u_input.b.x)), Struct_2(global2.a), Struct_4(Struct_2(vec4<u32>(u_input.a, 4164u, 1u, 24053u)), var_1.x, vec2<f32>(-727f, -588f)), vec4<i32>(0i, -67403i, 44599i, -1i))), func_1(), func_5(Struct_2(u_input.b), Struct_2(vec4<u32>(global2.a.x, 1u, 1u, 46077u)), func_5(Struct_2(u_input.b), Struct_2(global2.a), Struct_4(Struct_2(vec4<u32>(global2.a.x, u_input.b.x, u_input.a, var_0.a.x)), true, vec2<f32>(-871f, -654f)), vec4<i32>(-23808i, 12260i, -2147483647i, -18489i)), ~vec4<i32>(-1i, -1640i, 17005i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i)).a, func_6(func_2(global4[_wgslsmith_index_u32(~40615u, 3u)]), Struct_2(~vec4<u32>(var_0.a.x, 93077u, var_0.a.x, 0u)), func_5(Struct_2(u_input.b), func_6(Struct_2(vec4<u32>(global2.a.x, global2.a.x, 1u, 15336u)), Struct_2(u_input.b), Struct_4(Struct_2(var_0.a), true, vec2<f32>(185f, 403f))), func_5(Struct_2(u_input.b), Struct_2(global4[_wgslsmith_index_u32(1u, 3u)]), Struct_4(Struct_2(vec4<u32>(var_0.a.x, u_input.a, 1u, u_input.a)), true, vec2<f32>(667f, 970f)), vec4<i32>(-90080i, -1i, 50814i, -2147483647i)), vec4<i32>(2147483647i, 5495i, -1i, -1i))), func_5(func_6(Struct_2(vec4<u32>(1u, 18269u, u_input.a, 22561u)), func_1(), Struct_4(Struct_2(vec4<u32>(82331u, var_0.a.x, global2.a.x, u_input.b.x)), var_1.x, vec2<f32>(-716f, -306f))), Struct_2(vec4<u32>(var_0.a.x, 36433u, 0u, global2.a.x)), func_5(Struct_2(u_input.b), func_1(), Struct_4(Struct_2(vec4<u32>(42726u, 1u, 21402u, 0u)), false, vec2<f32>(688f, -1219f)), vec4<i32>(2147483647i, 25263i, -2147483647i, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-19893i, 2147483647i, 26362i, 2147483647i), -vec4<i32>(1i, 2147483647i, -36381i, 1i)))).a);
    global2 = func_5(func_1(), Struct_2(_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, u_input.b.x, 3022u, global2.a.x), vec4<u32>(var_0.a.x, 18256u, global2.a.x, 3591u) & var_0.a, var_1.x), countOneBits(_wgslsmith_div_vec4_u32(u_input.b, global4[_wgslsmith_index_u32(u_input.b.x, 3u)])))), Struct_4(func_2(~vec4<u32>(global2.a.x, var_0.a.x, u_input.b.x, 0u)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(300f, 1250f) + vec2<f32>(-1582f, -316f))) + vec2<f32>(_wgslsmith_f_op_f32(select(228f, -1000f, true)), _wgslsmith_f_op_f32(1000f * 962f)))), vec4<i32>(~max(0i, 0i), 2147483647i, 2147483647i, (2147483647i << (global2.a.x % 32u)) ^ -2147483647i) >> (~(~func_5(Struct_2(vec4<u32>(global2.a.x, var_0.a.x, var_0.a.x, 77043u)), Struct_2(vec4<u32>(global2.a.x, u_input.a, 4294967295u, global2.a.x)), Struct_4(Struct_2(global4[_wgslsmith_index_u32(var_0.a.x, 3u)]), true, vec2<f32>(787f, 119f)), vec4<i32>(1i, -30618i, 0i, 1i)).a.a) % vec4<u32>(32u))).a;
    global3 = array<vec4<bool>, 28>();
    var_1 = select(vec4<bool>(var_1.x, var_1.x, !var_1.x != var_1.x, any(!vec2<bool>(var_1.x, var_1.x))), !(!vec4<bool>(any(var_1.wy), var_1.x | var_1.x, func_5(Struct_2(vec4<u32>(4294967295u, global2.a.x, global2.a.x, var_0.a.x)), Struct_2(vec4<u32>(global2.a.x, u_input.b.x, 1u, global2.a.x)), Struct_4(Struct_2(vec4<u32>(global2.a.x, 8171u, 1u, 64772u)), var_1.x, vec2<f32>(-2334f, -581f)), vec4<i32>(-2147483647i, -34403i, -1462i, -1i)).b, true)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1076f) * -405f), -171f, _wgslsmith_f_op_f32(func_5(Struct_2(var_0.a), Struct_2(var_0.a), Struct_4(Struct_2(vec4<u32>(51079u, 0u, 4294967295u, var_0.a.x)), true, vec2<f32>(-868f, 587f)), vec4<i32>(1i, -2147483647i, -2523i, -53343i)).c.x + _wgslsmith_f_op_f32(f32(-1f) * -2068f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-214f, 424f)))));
}

