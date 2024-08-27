struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(19327i, 22251i), vec2<i32>(-41901i, -15879i), vec2<i32>(57106i, i32(-2147483648)), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -24985i), vec2<i32>(1i, 49383i), vec2<i32>(-1i, -5613i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(35802i, 1i), vec2<i32>(1i, 1i), vec2<i32>(2147483647i, -6223i), vec2<i32>(1i, -1i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(48935i, 16022i), vec2<i32>(0i, 1i), vec2<i32>(-2577i, -1i), vec2<i32>(-42997i, -20563i), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, 2147483647i), vec2<i32>(43422i, 0i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: bool) -> u32 {
    global0 = !arg_2;
    let var_0 = Struct_1(u_input.a.x, -_wgslsmith_dot_vec2_i32(-firstLeadingBit(vec2<i32>(-2147483647i, arg_1)), u_input.a >> (u_input.b.yz % vec2<u32>(32u))));
    var var_1 = ~(~(reverseBits(u_input.c) << (~arg_0 % 32u))) & ~(~(~u_input.c));
    global0 = any(!(!select(select(vec2<bool>(arg_3, true), vec2<bool>(arg_2, arg_3), vec2<bool>(arg_2, arg_2)), !vec2<bool>(true, arg_3), !arg_2)));
    global1 = array<vec2<i32>, 21>();
    return _wgslsmith_clamp_u32(u_input.c, ~reverseBits(firstTrailingBit(71832u)), _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(0u << (arg_0 % 32u)))) >> ((~0u >> (_wgslsmith_sub_u32(~4294967295u, u_input.c) % 32u)) % 32u);
}

fn func_4(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_div_u32(min(func_3(0u, -33687i, true, true), ~_wgslsmith_mult_u32(67483u << (u_input.c % 32u), firstLeadingBit(u_input.b.x))), ~arg_0);
    var var_1 = Struct_1(max(countOneBits(-13805i), u_input.a.x), u_input.a.x);
    var_1 = Struct_1((u_input.a.x ^ 12904i) << (12374u % 32u), var_1.a);
    var var_2 = Struct_1(0i, var_1.a);
    var var_3 = Struct_1(10681i << (~(~0u) % 32u), reverseBits(_wgslsmith_div_i32(~firstLeadingBit(var_2.b), 16682i)));
    return _wgslsmith_dot_vec2_u32(u_input.b.xy | u_input.b.yz, select(~vec2<u32>(arg_0, 0u) >> (u_input.b.xy % vec2<u32>(32u)), vec2<u32>(1u, ~84916u), vec2<bool>(true, any(vec4<bool>(true, true, false, false)))) << (~vec2<u32>(~u_input.b.x, ~57288u) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global1 = array<vec2<i32>, 21>();
    global1 = array<vec2<i32>, 21>();
    var var_0 = _wgslsmith_sub_u32(~func_4(func_3(abs(21359u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, u_input.a.x), u_input.a), true, true)), u_input.b.x);
    var var_1 = arg_1.a;
    let var_2 = ~(~select(~(~vec3<u32>(1u, u_input.b.x, 4294967295u)), vec3<u32>(~62885u, abs(u_input.b.x), 15805u), all(vec3<bool>(true, arg_2, arg_2))));
    return -246f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_i32(~vec3<i32>(-31552i, -2147483647i, -1i) << (select(vec3<u32>(0u, u_input.c, u_input.c), vec3<u32>(u_input.b.x, u_input.c, 0u), vec3<bool>(true, true, false)) % vec3<u32>(32u)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(36281i, -2147483647i, 5579i)))), Struct_1(_wgslsmith_clamp_i32(~(-2147483647i), -2147483647i, -1i), -18855i), u_input.a.x == u_input.a.x)));
    return Struct_1(28061i, u_input.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.x, 467f, arg_3.x))) - vec3<f32>(-146f, 1034f, 1351f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-515f, -349f, arg_3.x)), vec3<f32>(1555f, 1168f, -2418f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, 459f, 485f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1186f, 380f, arg_3.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, arg_3.x, arg_3.x) * vec3<f32>(511f, -471f, arg_3.x))), vec3<bool>(true, true, true))), vec3<bool>(any(vec4<bool>(true, false, false, true)), !(-1i == arg_2), true))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, -1000f, -1407f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -880f, -1416f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1157f, arg_3.x, arg_3.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(246f, 2148f, -1035f))))));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(var_1));
    global0 = true;
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_5(Struct_1(countOneBits(_wgslsmith_div_i32(u_input.a.x, -6758i) | 1i), u_input.a.x), func_5(Struct_1(~(-52124i), arg_0.b), Struct_1(_wgslsmith_add_i32(u_input.a.x, 56090i), ~0i), arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-893f, 1271f))), vec2<f32>(1292f, -1000f)))), 2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-849f, 467f), vec2<f32>(113f, 1494f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(723f, 1000f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-993f, 1814f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(590f, -224f), vec2<f32>(-697f, -1000f), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(786f, -1528f))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-346f + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_div_f32(-509f, -919f))), vec3<f32>(-752f, 386f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1443f, 208f)), _wgslsmith_f_op_f32(1079f * 130f), true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(498f, -347f, -579f) - vec3<f32>(215f, 850f, -1167f))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(165f, -317f, -1613f) + vec3<f32>(174f, -232f, -872f)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1705f, 496f, -213f))))))));
    var var_2 = !((_wgslsmith_f_op_f32(var_1.x * var_1.x) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(1131f * -525f)))) && all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    var var_3 = 235f;
    var var_4 = vec2<i32>(max(-1i, firstLeadingBit(u_input.a.x)), -24532i);
    return func_5(func_1(), arg_0, (arg_0.a | var_0.b) | arg_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_1.zx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(179f, var_1.x), vec2<f32>(var_1.x, var_1.x), true)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.x, var_1.x)))))));
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = 4294967295u;
    global1 = array<vec2<i32>, 21>();
    let var_1 = !(!(!vec2<bool>(true, arg_2 <= u_input.a.x)));
    global0 = true;
    let var_2 = u_input.b.x;
    return select(select(!select(select(vec3<bool>(false, var_1.x, false), vec3<bool>(var_1.x, false, true), vec3<bool>(true, false, var_1.x)), !vec3<bool>(false, var_1.x, true), any(vec4<bool>(var_1.x, false, true, false))), !vec3<bool>(arg_0.a <= arg_0.a, true, true || var_1.x), vec3<bool>(var_1.x, var_1.x, true)), select(vec3<bool>(true || (var_1.x || var_1.x), false, all(vec3<bool>(var_1.x, true, var_1.x))), vec3<bool>(true, false, true), vec3<bool>(true, all(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), true)), !(!(!vec3<bool>(var_1.x, var_1.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false)));
    let var_1 = select(!(!(!(!vec3<bool>(var_0, true, false)))), func_7(Struct_1(_wgslsmith_mod_i32(0i, 46185i), u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -240f)))), (~u_input.a.x | u_input.a.x) ^ countOneBits(u_input.a.x ^ -36948i), func_6(func_5(Struct_1(u_input.a.x, u_input.a.x), func_1(), u_input.a.x | u_input.a.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(339f, -1406f), vec2<f32>(-1243f, 1000f), true))))), !(!vec3<bool>(u_input.a.x != u_input.a.x, any(vec3<bool>(false, var_0, true)), var_0)));
    global1 = array<vec2<i32>, 21>();
    var var_2 = Struct_1(20861i, _wgslsmith_add_i32(_wgslsmith_mod_i32(max(-8207i, func_1().a), -countOneBits(-1i)), u_input.a.x));
    let var_3 = 87178u;
    let var_4 = Struct_1(var_2.a, _wgslsmith_add_i32(~_wgslsmith_div_i32(-1i, var_2.a), -1i));
    var var_5 = var_4;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(607f)) * _wgslsmith_div_f32(-463f, -909f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1121f, -487f, 1520f, -452f) - vec4<f32>(-1250f, -1000f, -1147f, -767f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-438f, -130f, -770f, -466f))) - vec4<f32>(_wgslsmith_f_op_f32(min(639f, 563f)), _wgslsmith_f_op_f32(select(-374f, -1729f, var_1.x)), -1249f, _wgslsmith_f_op_f32(max(1000f, 1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1576f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(181f, 584f) * vec2<f32>(-1000f, 140f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1210f, 300f)))))) * vec2<f32>(-997f, _wgslsmith_f_op_f32(f32(-1f) * -192f))));
}

