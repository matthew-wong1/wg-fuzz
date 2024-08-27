struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-1465f, vec4<f32>(-836f, 753f, -1748f, 1412f), -55055i, vec4<i32>(2610i, -57088i, 1i, 35323i)), Struct_1(1629f, vec4<f32>(379f, 1030f, -411f, 653f), 49488i, vec4<i32>(34692i, -63844i, 0i, -1987i)), Struct_1(-1835f, vec4<f32>(-687f, 150f, 1000f, 375f), -4856i, vec4<i32>(1i, -1i, -147i, 0i)), Struct_1(284f, vec4<f32>(-721f, 577f, 1581f, -154f), i32(-2147483648), vec4<i32>(7790i, 2147483647i, -48289i, 26440i)), Struct_1(815f, vec4<f32>(-481f, 230f, 340f, 608f), 0i, vec4<i32>(-68794i, 0i, 1i, 39488i)), Struct_1(-1041f, vec4<f32>(-437f, -792f, -289f, 640f), 2147483647i, vec4<i32>(-9345i, 2147483647i, 16597i, -13754i)), Struct_1(-525f, vec4<f32>(-702f, 593f, 274f, -187f), 0i, vec4<i32>(-9741i, -56146i, i32(-2147483648), 19210i)), Struct_1(-390f, vec4<f32>(239f, -903f, -1652f, 1137f), 0i, vec4<i32>(0i, 16621i, -1i, 28902i)), Struct_1(-734f, vec4<f32>(628f, -1337f, 2043f, 288f), 23096i, vec4<i32>(0i, 1i, i32(-2147483648), -48090i)), Struct_1(1025f, vec4<f32>(1000f, -122f, 897f, -1528f), i32(-2147483648), vec4<i32>(0i, 2147483647i, i32(-2147483648), 5646i)), Struct_1(-256f, vec4<f32>(-247f, 577f, -468f, -2048f), -12533i, vec4<i32>(47080i, 1i, 10506i, 48961i)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1() -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(abs(~countOneBits(u_input.c.x)), 11u)];
    let var_1 = vec3<bool>(!select(false, !all(vec4<bool>(true, true, false, true)), true), !((true || select(true, false, false)) || any(vec3<bool>(false, false, true))), false);
    var var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 11u)];
    var var_3 = _wgslsmith_mod_i32(2908i, -(-_wgslsmith_mult_i32(34126i, var_2.d.x) ^ (var_0.d.x << ((u_input.c.x ^ u_input.c.x) % 32u))));
    let var_4 = abs(_wgslsmith_mult_i32(countOneBits(-25203i), _wgslsmith_mod_i32(var_2.d.x, u_input.a)));
    return vec3<u32>(~4294967295u, u_input.c.x, _wgslsmith_mult_u32(firstTrailingBit(~62813u), u_input.c.x));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = _wgslsmith_mod_vec3_u32(~u_input.c.xwy, vec3<u32>(firstLeadingBit(10230u >> (u_input.c.x % 32u)), ~_wgslsmith_clamp_u32(0u, u_input.c.x, u_input.c.x), u_input.c.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 32513u))) | (~vec3<u32>(u_input.c.x, 103503u, 21919u) ^ vec3<u32>(_wgslsmith_div_u32(45292u, 94216u), 1u, 64880u)));
    var var_1 = _wgslsmith_f_op_f32(1f + 1000f);
    let var_2 = u_input.b.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1050f)))))), -374f);
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-316f, -1153f), _wgslsmith_f_op_f32(1000f + 1377f), any(vec4<bool>(false, true, false, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(488f, 108f)) + _wgslsmith_f_op_f32(996f * 783f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(-1436f + 605f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1197f, 561f, 1365f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1253f, -411f, -682f, 913f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(258f, 297f, 218f, -2939f))))))), _wgslsmith_mult_i32(u_input.a, ~(-abs(-2147483647i))), vec4<i32>(-(~u_input.b.x), 35046i, firstTrailingBit(u_input.d) ^ 52960i, u_input.a));
    var var_1 = Struct_1(449f, vec4<f32>(1000f, var_0.b.x, _wgslsmith_f_op_f32(func_3()), var_0.a), var_0.d.x, ~_wgslsmith_mod_vec4_i32(var_0.d, _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.d, vec4<i32>(var_0.d.x, 0i, var_0.c, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.x, 7848i, var_0.d.x, -1i), vec4<i32>(37704i, u_input.b.x, -58837i, 5891i)))));
    var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1832f)) + var_1.b.x), 629f), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1209f)), 438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.b.x, -453f)), _wgslsmith_f_op_f32(273f - var_1.b.x))) + _wgslsmith_f_op_f32(ceil(var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x), _wgslsmith_f_op_f32(max(-1396f, var_0.a))))), -2147483647i ^ (firstTrailingBit(var_1.d.x | 0i) & 1i), abs(~_wgslsmith_sub_vec4_i32(vec4<i32>(-1149i, u_input.d, -15570i, 0i) & vec4<i32>(-1i, var_1.d.x, 33832i, u_input.d), select(vec4<i32>(var_0.d.x, 0i, 0i, -1i), vec4<i32>(-21911i, var_1.c, var_0.c, -4003i), false))));
    var_1 = var_0;
    return select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(any(vec4<bool>(false, false, true, true)), true, true)), !vec3<bool>(true, u_input.c.x <= arg_0.x, -2147483647i > u_input.a)), select(select(vec3<bool>(true, false, false), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), any(vec2<bool>(false, false))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), false), vec3<bool>(-u_input.a >= ~2147483647i, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~_wgslsmith_div_vec3_u32(func_1(), u_input.c.xzz), ~(~select(vec3<u32>(u_input.c.x, 0u, u_input.c.x), u_input.c.zwx, vec3<bool>(true, true, true))) << (((u_input.c.xxx >> (vec3<u32>(89027u, u_input.c.x, 0u) % vec3<u32>(32u))) ^ u_input.c.www) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec3<bool>(true, false, false))), any(func_2(vec4<u32>(4294967295u, u_input.c.x, 0u, 0u))))));
    global0 = array<Struct_1, 11>();
    var var_1 = any(vec2<bool>(false || any(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, false, false)))) | !func_2(u_input.c | ~vec4<u32>(u_input.c.x, 9363u, var_0.x, 0u)).x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(340f, -368f)), 643f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(993f, -775f) + _wgslsmith_f_op_f32(f32(-1f) * -334f)), 1f, 694f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1362f + -1110f))), 626f)), ~u_input.b.x, -(~(vec4<i32>(5304i, 2147483647i, u_input.a, 718i) >> (u_input.c % vec4<u32>(32u)))));
    let var_3 = (countOneBits(u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 39542u, countOneBits(4294967295u), _wgslsmith_div_u32(u_input.c.x, 0u)), vec4<u32>(var_0.x, var_0.x, 49085u, 15777u) ^ reverseBits(vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u))) % vec4<u32>(32u))) << (_wgslsmith_clamp_vec4_u32(firstLeadingBit(_wgslsmith_clamp_vec4_u32(~u_input.c, ~vec4<u32>(1u, var_0.x, 21032u, 7566u), u_input.c)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_0.x, u_input.c.x, var_0.x)), vec4<u32>(45751u, u_input.c.x, func_1().x, func_1().x)), min(~(~vec4<u32>(56891u, var_0.x, 6811u, 80819u)), (u_input.c ^ vec4<u32>(405u, var_0.x, 0u, 35118u)) << (~u_input.c % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_4 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u & var_0.x, ~var_0.x, ~var_0.x, abs(74972u)) ^ ~reverseBits(u_input.c), ~min(~u_input.c, var_3));
    let var_5 = global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_4.x ^ 4294967295u, var_3.x), ~var_0.x)), 11u)];
    let x = u_input.a;
    s_output = StorageBuffer(-(_wgslsmith_clamp_vec3_i32(reverseBits(var_5.d.zwy), vec3<i32>(var_2.c, -1i, var_2.d.x) | u_input.b, var_5.d.zww) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, 15789u, 11687u), vec3<u32>(58569u, 1u, var_4.x)) & vec3<u32>(var_3.x, u_input.c.x, 5311u)) % vec3<u32>(32u))));
}

