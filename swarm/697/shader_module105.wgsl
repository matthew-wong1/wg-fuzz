struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(-61813i, Struct_3(Struct_1(vec4<bool>(false, true, false, true), -151f, 90738u, vec2<f32>(1871f, 117f), vec4<f32>(1347f, -502f, 490f, -1166f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -1209f, 5516u, vec2<f32>(160f, -330f), vec4<f32>(668f, -1304f, 1926f, 678f)), Struct_1(vec4<bool>(false, false, true, true), 1000f, 0u, vec2<f32>(-407f, -2445f), vec4<f32>(-457f, 369f, 1788f, -1284f)), vec2<bool>(false, true)), -812f, vec4<f32>(370f, -193f, 142f, -207f), 73756u), Struct_2(Struct_1(vec4<bool>(true, false, true, true), -234f, 4294967295u, vec2<f32>(1000f, 1071f), vec4<f32>(122f, -1140f, -867f, -1771f)), Struct_1(vec4<bool>(true, true, true, false), -653f, 32398u, vec2<f32>(1000f, -884f), vec4<f32>(-865f, 405f, 628f, 1563f)), vec2<bool>(false, true)), Struct_3(Struct_1(vec4<bool>(false, false, true, false), -699f, 1u, vec2<f32>(484f, -571f), vec4<f32>(147f, 540f, 184f, 387f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), 1105f, 0u, vec2<f32>(1813f, -614f), vec4<f32>(476f, -691f, 1229f, -135f)), Struct_1(vec4<bool>(false, true, true, true), 2263f, 0u, vec2<f32>(-745f, -1837f), vec4<f32>(-339f, -660f, 2342f, 693f)), vec2<bool>(true, true)), -503f, vec4<f32>(-1855f, 528f, -1000f, -705f), 69189u)), Struct_4(2147483647i, Struct_3(Struct_1(vec4<bool>(false, true, false, false), -1930f, 22234u, vec2<f32>(-370f, -448f), vec4<f32>(153f, 953f, -1967f, 374f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), 584f, 6538u, vec2<f32>(-513f, 104f), vec4<f32>(-264f, -581f, -884f, 967f)), Struct_1(vec4<bool>(true, true, false, true), 341f, 31346u, vec2<f32>(1484f, 1978f), vec4<f32>(-744f, -559f, -202f, 411f)), vec2<bool>(true, true)), 1521f, vec4<f32>(-2037f, -505f, 105f, -697f), 12160u), Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1000f, 27703u, vec2<f32>(1028f, -216f), vec4<f32>(1340f, -1485f, -305f, 1315f)), Struct_1(vec4<bool>(true, false, false, false), -278f, 31727u, vec2<f32>(-489f, -325f), vec4<f32>(-1004f, 1601f, 478f, -806f)), vec2<bool>(true, true)), Struct_3(Struct_1(vec4<bool>(false, true, true, true), -1330f, 77483u, vec2<f32>(-243f, 472f), vec4<f32>(1625f, -827f, 868f, 460f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), -583f, 1u, vec2<f32>(-2597f, -1000f), vec4<f32>(-263f, -669f, 131f, 687f)), Struct_1(vec4<bool>(true, true, false, false), -211f, 4294967295u, vec2<f32>(819f, 818f), vec4<f32>(-1461f, -1641f, 619f, -899f)), vec2<bool>(false, false)), 949f, vec4<f32>(-237f, 779f, -660f, 1058f), 1u)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_5) -> vec4<bool> {
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    let var_0 = arg_1.xwx;
    let var_1 = -var_0.xx;
    let var_2 = _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(arg_3.a.a.c, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, arg_3.d), arg_3.a.a.a.x), vec3<u32>(1u, 31670u, arg_3.d)), max(~u_input.b, ~vec3<u32>(arg_3.d, arg_2.x, arg_3.a.b.a.c)))), vec3<u32>(firstLeadingBit(arg_3.a.e), 5476u, 593u));
    return !(!select(arg_3.a.b.a.a, arg_3.a.a.a, select(arg_3.a.b.b.a, vec4<bool>(true, false, false, arg_3.c), vec4<bool>(false, arg_3.c, true, arg_3.a.b.c.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<u32> {
    global0 = array<Struct_4, 2>();
    var var_0 = arg_0.b.c;
    let var_1 = true;
    let var_2 = reverseBits(41221u);
    var var_3 = arg_2.d.x;
    return countOneBits(vec3<u32>(~countOneBits(_wgslsmith_sub_u32(58509u, arg_0.a.c)), 1u, ~_wgslsmith_div_u32(~2778u, abs(arg_2.a.c))));
}

fn func_2() -> Struct_5 {
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    var var_0 = ~func_4(Struct_2(Struct_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(f32(-1f) * -1881f), 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(235f, -219f) + vec2<f32>(-546f, 101f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -545f, 390f, -1120f) - vec4<f32>(675f, 866f, -409f, -1517f))), Struct_1(func_3(203f, vec4<i32>(u_input.a, u_input.a, u_input.a, -51752i), u_input.b.zy, Struct_5(Struct_3(Struct_1(vec4<bool>(false, false, false, false), -732f, 4294967295u, vec2<f32>(-411f, -1139f), vec4<f32>(1002f, 591f, 1000f, 325f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -333f, u_input.b.x, vec2<f32>(1000f, 1511f), vec4<f32>(-1193f, 603f, 147f, 964f)), Struct_1(vec4<bool>(false, false, true, true), 619f, 0u, vec2<f32>(1117f, -516f), vec4<f32>(1617f, -1000f, -350f, -951f)), vec2<bool>(true, false)), 650f, vec4<f32>(1968f, -306f, 682f, 1399f), u_input.b.x), vec2<i32>(-33610i, u_input.a), true, u_input.b.x)), 1609f, u_input.b.x << (50054u % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1042f)), vec4<f32>(1f, 1f, 1f, 1f)), vec2<bool>(true, true)), _wgslsmith_clamp_vec3_i32(select(-vec3<i32>(-28603i, 0i, -1i), vec3<i32>(u_input.a, -3870i, 2147483647i) | vec3<i32>(13291i, -2147483647i, 0i), true), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -39838i, 2595i), vec3<i32>(u_input.c, -1i, u_input.a), vec3<i32>(u_input.d, u_input.a, -9470i)), vec3<i32>(-1i) * -vec3<i32>(-1478i, 0i, 2147483647i)), Struct_3(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1636f - 820f), u_input.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-203f, -385f) * vec2<f32>(141f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-923f, 336f, -1087f, 2211f))), Struct_2(Struct_1(vec4<bool>(false, true, false, true), -254f, u_input.b.x, vec2<f32>(-743f, 748f), vec4<f32>(-185f, -1002f, 612f, 1300f)), Struct_1(vec4<bool>(false, false, false, true), -1846f, 31540u, vec2<f32>(-904f, 647f), vec4<f32>(-938f, -1372f, -809f, 1038f)), vec2<bool>(true, true)), 1506f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, 1307f, -505f, -194f)), ~_wgslsmith_clamp_u32(u_input.b.x, 25432u, 15898u)));
    let var_1 = max(-select(~(vec4<i32>(u_input.c, 42603i, u_input.a, 37923i) & vec4<i32>(u_input.a, 65791i, 5093i, -35861i)), countOneBits(vec4<i32>(1i, u_input.d, u_input.c, -62456i)) | countOneBits(vec4<i32>(u_input.a, -28563i, -43642i, 33684i)), vec4<bool>(2147483647i != u_input.d, true, false, true)), -vec4<i32>(u_input.c, u_input.c, u_input.a, -26571i));
    return Struct_5(Struct_3(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -749f))), 1u, vec2<f32>(_wgslsmith_div_f32(-1000f, 215f), 1435f), _wgslsmith_div_vec4_f32(vec4<f32>(-362f, -949f, 398f, 1000f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(675f, -1350f, -1327f, -152f))))), Struct_2(Struct_1(vec4<bool>(true, false, true, true), _wgslsmith_f_op_f32(abs(711f)), 1u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(691f, 843f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-645f, 1948f, 3038f, 622f)))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1752f * 681f), ~6277u, vec2<f32>(-1560f, 428f), vec4<f32>(-1083f, 1435f, -1000f, 462f)), vec2<bool>(true, true)), 1f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1712f - -1359f) * -272f), 472f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(567f, -528f)))), 230f), var_0.x), vec2<i32>(-var_1.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-1i, 5421i), var_1.x | -21048i)) << (~(~(u_input.b.zz << (vec2<u32>(1u, 3223u) % vec2<u32>(32u)))) % vec2<u32>(32u)), !(_wgslsmith_div_u32(~75123u, firstTrailingBit(var_0.x)) > var_0.x), u_input.b.x);
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_4, arg_3: u32) -> vec3<bool> {
    var var_0 = abs(_wgslsmith_add_vec4_i32((firstTrailingBit(vec4<i32>(u_input.d, arg_1.b.x, arg_1.b.x, u_input.d)) << (~vec4<u32>(4294967295u, arg_1.d, 1843u, 1u) % vec4<u32>(32u))) | (-vec4<i32>(35364i, arg_2.a, u_input.a, 0i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.x, u_input.d, 0i, arg_1.b.x), vec4<i32>(arg_0.b.x, arg_1.b.x, 26006i, -20451i))), max(_wgslsmith_add_vec4_i32(vec4<i32>(arg_2.a, -2147483647i, 2147483647i, -2147483647i), reverseBits(vec4<i32>(arg_1.b.x, arg_2.a, arg_1.b.x, 0i))), vec4<i32>(u_input.c, -2147483647i, 0i, select(arg_2.a, arg_0.b.x, arg_1.c)))));
    var var_1 = select(arg_1.a.a.a.xzy, !select(func_3(_wgslsmith_f_op_f32(trunc(1569f)), ~vec4<i32>(arg_0.b.x, arg_2.a, 2147483647i, arg_2.a), ~u_input.b.yz, arg_1).yyx, vec3<bool>(arg_0.c, all(vec3<bool>(arg_1.c, true, false)), arg_1.c), arg_2.c.a.a.yww), !(!(all(vec4<bool>(false, false, arg_0.a.a.a.x, false)) || func_3(arg_0.a.a.b, vec4<i32>(-1i, -1i, arg_2.a, var_0.x), u_input.b.zy, Struct_5(arg_1.a, vec2<i32>(var_0.x, -26304i), true, 1u)).x)));
    var var_2 = arg_1.b.x;
    var var_3 = u_input.b;
    var var_4 = arg_0;
    return select(!arg_1.a.a.a.xzx, !arg_2.c.a.a.zwy, !func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(693f - -260f)), vec4<i32>(var_0.x, 39261i, -arg_1.b.x, ~68496i), ~_wgslsmith_div_vec2_u32(vec2<u32>(28776u, 17293u), vec2<u32>(0u, arg_1.a.a.c)), func_2()).yzz);
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = !(true && any(vec2<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(false, true)))));
    var var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(1u), 10800u), _wgslsmith_clamp_u32(abs(35714u), 8890u, max(u_input.b.x, 1u)), u_input.b.x), 1u);
    var var_2 = !vec3<bool>(true, true, 0i != _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_0) | vec2<i32>(-2147483647i, 23893i), ~vec2<i32>(-1i, -2147483647i)));
    var_2 = select(select(!vec3<bool>(false, var_0, true), select(func_5(Struct_5(Struct_3(Struct_1(vec4<bool>(true, var_0, true, var_2.x), -293f, arg_3, vec2<f32>(-1713f, 860f), vec4<f32>(1000f, arg_1, -1208f, arg_2)), Struct_2(Struct_1(vec4<bool>(true, var_0, true, var_0), arg_2, var_1.x, vec2<f32>(-1173f, -203f), vec4<f32>(1964f, -2189f, arg_1, arg_2)), Struct_1(vec4<bool>(true, var_0, var_0, var_2.x), -1532f, var_1.x, vec2<f32>(arg_1, 202f), vec4<f32>(-1000f, arg_1, arg_2, -1580f)), var_2.xx), arg_2, vec4<f32>(arg_1, -2182f, -1198f, arg_1), 1u), vec2<i32>(arg_0, 1i), false, var_1.x), func_2(), Struct_4(2147483647i, Struct_3(Struct_1(vec4<bool>(false, var_2.x, var_2.x, var_0), -781f, var_1.x, vec2<f32>(arg_1, arg_2), vec4<f32>(891f, 206f, arg_2, 1580f)), Struct_2(Struct_1(vec4<bool>(true, false, false, true), arg_2, 1u, vec2<f32>(arg_2, arg_1), vec4<f32>(-1355f, arg_1, -2069f, arg_2)), Struct_1(vec4<bool>(var_0, true, var_2.x, false), 313f, arg_3, vec2<f32>(702f, 838f), vec4<f32>(arg_1, arg_1, -1122f, arg_1)), var_2.zx), 2138f, vec4<f32>(-1987f, arg_1, arg_2, -481f), u_input.b.x), Struct_2(Struct_1(vec4<bool>(true, true, true, var_2.x), 265f, var_1.x, vec2<f32>(arg_2, arg_1), vec4<f32>(174f, -701f, arg_1, arg_2)), Struct_1(vec4<bool>(false, var_2.x, true, var_0), 1677f, 0u, vec2<f32>(103f, arg_2), vec4<f32>(557f, -2357f, arg_1, 1413f)), vec2<bool>(true, true)), Struct_3(Struct_1(vec4<bool>(var_0, var_0, var_0, false), arg_2, arg_3, vec2<f32>(-674f, 1194f), vec4<f32>(arg_2, 1152f, -1590f, 832f)), Struct_2(Struct_1(vec4<bool>(var_0, var_0, true, false), arg_1, 105821u, vec2<f32>(arg_1, 1478f), vec4<f32>(907f, -1000f, arg_2, arg_2)), Struct_1(vec4<bool>(true, var_2.x, true, var_0), arg_2, 4294967295u, vec2<f32>(-548f, arg_2), vec4<f32>(1658f, arg_1, -665f, 1522f)), vec2<bool>(true, var_2.x)), -234f, vec4<f32>(arg_1, arg_1, 1237f, arg_2), 10183u)), 11190u), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, true, false), vec3<bool>(var_0, true, true)), !(!vec3<bool>(true, var_0, var_2.x))), func_2().a.b.a.a.x), !(!vec3<bool>(true, any(vec2<bool>(var_2.x, var_2.x)), any(vec2<bool>(var_2.x, var_0)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))) * _wgslsmith_f_op_f32(-arg_1)), firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-11595i, 0i, arg_0, arg_0), vec4<i32>(arg_0, 33375i, u_input.d, 2147483647i)) >> (vec4<u32>(arg_3, arg_3, 4294967295u, u_input.b.x) % vec4<u32>(32u))), ~vec2<u32>(4294967295u, ~var_1.x), Struct_5(Struct_3(Struct_1(vec4<bool>(var_2.x, var_0, true, true), 1000f, arg_3, vec2<f32>(arg_2, arg_2), vec4<f32>(-1000f, arg_1, arg_1, -670f)), Struct_2(Struct_1(vec4<bool>(true, var_2.x, var_0, false), -428f, 22395u, vec2<f32>(arg_2, 714f), vec4<f32>(arg_2, 1000f, 356f, -1926f)), Struct_1(vec4<bool>(var_2.x, var_0, var_0, var_2.x), arg_1, u_input.b.x, vec2<f32>(arg_2, arg_2), vec4<f32>(arg_2, 498f, -1320f, arg_1)), var_2.xx), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_1, 605f, arg_2) + vec4<f32>(-1474f, arg_1, arg_2, arg_2)), 9817u), _wgslsmith_div_vec2_i32(-vec2<i32>(-2147483647i, arg_0), firstTrailingBit(vec2<i32>(arg_0, arg_0))), false, ~4294967295u)).xxx);
    let var_3 = global0[_wgslsmith_index_u32(6296u, 2u)];
    return Struct_3(func_2().a.b.a, Struct_2(var_3.b.b.b, func_2().a.b.b, func_5(Struct_5(func_2().a, min(vec2<i32>(u_input.a, arg_0), vec2<i32>(u_input.a, arg_0)), true, var_3.c.b.c), func_2(), Struct_4(abs(u_input.d), func_2().a, func_2().a.b, var_3.b), ~(~arg_3)).yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -665f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1656f, var_3.b.a.e.x, -796f, arg_1) + var_3.c.a.e)) + vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.d.x), _wgslsmith_f_op_f32(510f + _wgslsmith_f_op_f32(-1000f * arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-401f, var_3.b.b.a.e.x)), _wgslsmith_f_op_f32(sign(arg_2))), _wgslsmith_f_op_f32(var_3.c.b.e.x - func_2().a.c))), _wgslsmith_mod_u32(0u, ~0u));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>) -> u32 {
    global0 = array<Struct_4, 2>();
    var var_0 = vec3<f32>(arg_0.a.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1021f, _wgslsmith_f_op_f32(floor(-2156f))) + -2289f), _wgslsmith_f_op_f32(-arg_0.d.x));
    global0 = array<Struct_4, 2>();
    var_0 = arg_0.b.a.e.xww;
    var_0 = arg_0.d.yzw;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(44916u), ~(_wgslsmith_add_u32(1u & u_input.b.x, u_input.b.x) ^ func_6(func_1(u_input.c, -1548f, 2478f, 4294967295u), ~vec4<u32>(15527u, u_input.b.x, u_input.b.x, 1u)))), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(~u_input.d, 153f, -1824f, countOneBits(0u)).d.x - _wgslsmith_f_op_f32(floor(-1073f))), _wgslsmith_f_op_f32(f32(-1f) * -1113f)), ~max(~(-2147483647i), -_wgslsmith_mult_i32(0i, 1i)));
}

