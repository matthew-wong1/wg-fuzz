struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

var<private> global1: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(782f, 437f, -549f), vec3<f32>(2624f, -118f, -129f), vec3<f32>(-358f, 1213f, -743f), vec3<f32>(-224f, -118f, 130f), vec3<f32>(2213f, -479f, 1580f), vec3<f32>(-807f, 661f, 607f), vec3<f32>(908f, -537f, -903f), vec3<f32>(2367f, -100f, -1432f), vec3<f32>(-818f, 1384f, 529f), vec3<f32>(733f, -930f, 729f), vec3<f32>(307f, -1257f, -240f), vec3<f32>(1461f, -178f, -921f), vec3<f32>(1692f, 521f, -1496f), vec3<f32>(1000f, -792f, -1425f), vec3<f32>(410f, -155f, -867f), vec3<f32>(221f, -1382f, -326f), vec3<f32>(-539f, 540f, -382f), vec3<f32>(-1000f, -986f, 258f), vec3<f32>(-835f, -920f, -391f), vec3<f32>(1901f, 1786f, -938f), vec3<f32>(-595f, -320f, -1263f), vec3<f32>(1166f, 986f, 1860f), vec3<f32>(1000f, 1100f, 1000f), vec3<f32>(1000f, 1984f, 451f), vec3<f32>(-2035f, 262f, 1389f), vec3<f32>(-876f, 438f, 1000f), vec3<f32>(-1423f, -416f, -490f), vec3<f32>(730f, 379f, -998f), vec3<f32>(788f, 1869f, -534f), vec3<f32>(2245f, 677f, 1699f), vec3<f32>(1199f, 916f, 1698f), vec3<f32>(-1135f, 184f, 1000f));

var<private> global2: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, false, false)), Struct_2(vec3<bool>(true, false, false)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(false, true, true)), Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(false, true, false)), Struct_2(vec3<bool>(true, false, true)), Struct_2(vec3<bool>(false, true, false)));

var<private> global3: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(430u, 1u), vec2<u32>(1u, 104211u), vec2<u32>(1u, 102394u), vec2<u32>(30694u, 4294967295u), vec2<u32>(75157u, 1u), vec2<u32>(0u, 23639u), vec2<u32>(4294967295u, 0u), vec2<u32>(46139u, 0u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec2<u32>) -> vec3<i32> {
    let var_0 = Struct_1(arg_0.a, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(round(arg_0.c))), _wgslsmith_div_f32(-258f, _wgslsmith_f_op_f32(-1183f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1))))));
    var var_1 = var_0.a.xy;
    return ~(-(~max(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(-1i, 18349i, 10961i)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = vec2<f32>(arg_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-922f - -207f)))));
    global1 = array<vec3<f32>, 32>();
    global1 = array<vec3<f32>, 32>();
    global3 = array<vec2<u32>, 8>();
    global3 = array<vec2<u32>, 8>();
    return arg_3.a >> (vec4<u32>(u_input.a, arg_3.a.x, 92426u >> (arg_3.a.x % 32u), _wgslsmith_div_u32(0u, arg_3.a.x)) % vec4<u32>(32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(func_4(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(Struct_1(vec4<u32>(106605u, u_input.a, 37158u, arg_1.x), -676f, -1188f), 1398f, false, arg_1), vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -2147483647i, -4791i)), vec3<i32>(-77801i >> (arg_1.x % 32u), -1i, countOneBits(-27588i)), vec3<i32>(i32(-1i) * -1i, 1i, 12938i)), Struct_2(vec3<bool>(true, true, true & arg_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1062f)) * _wgslsmith_f_op_f32(select(-864f, 258f, arg_0.a.x))), _wgslsmith_f_op_f32(-1001f - _wgslsmith_f_op_f32(abs(1542f)))), Struct_1(~vec4<u32>(1u, 4294967295u, 14972u, 25594u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1528f), -215f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1283f) - _wgslsmith_div_f32(356f, 1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1655f)) - _wgslsmith_f_op_f32(step(-837f, -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1119f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -494f) + _wgslsmith_div_f32(122f, -147f)))));
    let var_1 = ~(~_wgslsmith_sub_vec2_u32(firstLeadingBit(global3[_wgslsmith_index_u32(var_0.a.x, 8u)]) & ~vec2<u32>(var_0.a.x, 0u), firstLeadingBit(~vec2<u32>(1u, 4294967295u))));
    let var_2 = var_0;
    global1 = array<vec3<f32>, 32>();
    var var_3 = arg_0;
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = arg_1 & arg_1;
    let var_1 = ~_wgslsmith_mult_u32(func_4(vec3<i32>(arg_1, _wgslsmith_mod_i32(arg_1, 1i), var_0 >> (1u % 32u)), global2[_wgslsmith_index_u32(max(49561u, arg_0.a.x), 16u)], vec2<f32>(arg_0.c, -1499f), func_2(global2[_wgslsmith_index_u32(firstLeadingBit(13242u), 16u)], global3[_wgslsmith_index_u32(u_input.a, 8u)])).x, 91865u);
    global0 = array<vec3<f32>, 28>();
    var var_2 = !(!select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), all(vec2<bool>(true, true))), vec3<bool>(true, any(vec4<bool>(false, false, true, false)), false), true));
    let var_3 = select(vec3<bool>(var_2.x, true != any(select(vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x))), !(_wgslsmith_div_u32(var_1, var_1) != var_1)), !vec3<bool>(_wgslsmith_f_op_f32(1799f * arg_0.c) == _wgslsmith_f_op_f32(-arg_0.b), any(!vec3<bool>(false, false, var_2.x)), true), var_2.x);
    return arg_0.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: bool) -> Struct_2 {
    let var_0 = -7545i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1339f, 1116f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2154f, 814f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-120f * -1374f) - _wgslsmith_f_op_f32(-317f + -834f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(505f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_5(func_2(Struct_2(vec3<bool>(arg_2, arg_2, arg_2)), arg_0.zz), ~arg_1))))));
    global1 = array<vec3<f32>, 32>();
    var var_2 = Struct_2(!(!select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, arg_2, true), select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), arg_2))));
    let var_3 = vec4<bool>(true, arg_2, var_2.a.x, ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 1u), arg_0.x) < arg_0.x);
    return global2[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(firstTrailingBit(_wgslsmith_div_u32(arg_0.x, ~72212u))), 93532u), 16u)];
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = firstTrailingBit(~func_4(firstTrailingBit(vec3<i32>(2147483647i, 1151i, -38794i)), func_1(~vec4<u32>(29141u, 0u, u_input.a, 4294967295u), 8022i, true), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(435f, -358f))), func_2(Struct_2(vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), vec2<u32>(1u, 1u))).x);
    global0 = array<vec3<f32>, 28>();
    var var_1 = min(~0u, ~var_0);
    let var_2 = func_2(func_1(vec4<u32>(var_0, 0u, select(0u, var_0, arg_0.a.x) << (var_0 % 32u), 70094u), _wgslsmith_mult_i32(-83492i, firstTrailingBit(_wgslsmith_clamp_i32(-1i, 4109i, 934i))), !any(select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x), vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), arg_0.a.x))), vec2<u32>(24669u, 0u));
    var var_3 = Struct_1(vec4<u32>(~var_2.a.x, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_2.a.x, 0u)), firstLeadingBit(vec2<u32>(var_2.a.x, 1u))), _wgslsmith_add_u32(reverseBits(u_input.a) << (_wgslsmith_mod_u32(var_0, var_2.a.x) % 32u), u_input.a << ((var_0 ^ u_input.a) % 32u)), 1u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1059f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c - -1201f) + var_2.c) - 130f))), _wgslsmith_div_f32(-1325f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-420f, -215f)) - -575f)))));
    return Struct_2(arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, countOneBits(u_input.a)), reverseBits(42030i), all(vec2<bool>(true, true)) == all(vec4<bool>(true, true, true, true))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f), _wgslsmith_f_op_f32(f32(-1f) * -503f)) + -806f);
    var var_2 = ~max(firstTrailingBit(vec4<u32>(4294967295u, 29815u, u_input.a, 54227u)) & ~vec4<u32>(u_input.a, 1u, u_input.a, 35267u), ~func_4(vec3<i32>(-1i, -2147483647i, -22109i), Struct_2(var_0.a), vec2<f32>(1250f, 288f), Struct_1(vec4<u32>(53311u, u_input.a, u_input.a, 0u), -1262f, 948f))) << (min(~vec4<u32>(func_2(var_0, global3[_wgslsmith_index_u32(u_input.a, 8u)]).a.x, ~0u, ~4294967295u, u_input.a), ~(~select(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, 26294u, u_input.a, u_input.a), true))) % vec4<u32>(32u));
    let var_3 = Struct_2(!(!var_0.a));
    let var_4 = var_2.x;
    global1 = array<vec3<f32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 96160u), var_2.zy), u_input.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.a, 21577u, 8753u), _wgslsmith_mult_vec4_u32(vec4<u32>(25641u, 1u, 1u, 31534u), vec4<u32>(var_2.x, u_input.a, 1u, u_input.a))), var_2.x, _wgslsmith_mult_u32(u_input.a, ~u_input.a))), -246f);
}

