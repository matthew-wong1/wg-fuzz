struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(800f, vec4<f32>(-232f, 1604f, 745f, 1742f)), Struct_1(-251f, vec4<f32>(1160f, -1074f, 1824f, -756f)), Struct_1(-1021f, vec4<f32>(-659f, -535f, 1000f, -1523f)), Struct_1(1178f, vec4<f32>(-1000f, 540f, 1574f, 1167f)), Struct_1(-1275f, vec4<f32>(594f, 1401f, 707f, -810f)), Struct_1(-1000f, vec4<f32>(-2114f, 437f, 2023f, -267f)), Struct_1(1871f, vec4<f32>(1445f, -553f, -781f, 726f)), Struct_1(469f, vec4<f32>(-809f, 2053f, 628f, -265f)), Struct_1(-1387f, vec4<f32>(-2001f, 703f, -1266f, -415f)), Struct_1(311f, vec4<f32>(1012f, -1007f, -1236f, -986f)), Struct_1(-1208f, vec4<f32>(-360f, -755f, 1477f, -1006f)), Struct_1(956f, vec4<f32>(-1015f, -1000f, 252f, 1652f)), Struct_1(1000f, vec4<f32>(414f, -638f, -257f, 916f)), Struct_1(-513f, vec4<f32>(519f, -194f, -1398f, -2242f)), Struct_1(-1117f, vec4<f32>(1032f, 738f, -1000f, -541f)), Struct_1(1000f, vec4<f32>(-1142f, -702f, -953f, 2247f)), Struct_1(-1103f, vec4<f32>(1275f, 594f, 866f, 462f)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(778f, 1602f) * arg_2)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, 1356f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(739f)), -183f, _wgslsmith_f_op_f32(-var_0.x))) * vec3<f32>(_wgslsmith_f_op_f32(round(-280f)), -686f, _wgslsmith_f_op_f32(round(-878f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(289f, 639f, arg_2.x))) - vec3<f32>(663f, -2001f, -1095f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-224f, 1273f), _wgslsmith_f_op_f32(round(-955f)), 569f))))));
    let var_2 = Struct_2((-vec4<i32>(2147483647i, -67824i, 72766i, arg_1.a.x) ^ ~u_input.a) >> (firstLeadingBit(reverseBits(~vec4<u32>(arg_0.x, 47062u, arg_3.x, 4294967295u))) % vec4<u32>(32u)));
    var_0 = arg_2;
    return vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1888f) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), all(vec4<bool>(any(vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), _wgslsmith_clamp_u32(arg_0.x, arg_3.x, arg_3.x) != ~arg_3.x, !any(vec2<bool>(false, true)))), all(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, true), true), vec2<bool>(true, true), true)), true);
}

fn func_4(arg_0: vec4<bool>) -> vec3<u32> {
    let var_0 = Struct_4(1913f, false, global0[_wgslsmith_index_u32(~(_wgslsmith_add_u32(1u, ~1u) | min(16075u, _wgslsmith_clamp_u32(49730u, 2529u, 5142u))), 17u)], -u_input.a.wzz, Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(367f, 1575f))), vec2<f32>(_wgslsmith_f_op_f32(abs(-387f)), 1000f)), vec2<bool>(arg_0.x, any(select(arg_0.xw, vec2<bool>(true, true), arg_0.x))), arg_0.ww, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-669f, 728f, -554f, -1124f) - vec4<f32>(-1063f, 313f, -487f, -592f))))));
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_0.e.d.b.yz), _wgslsmith_f_op_vec2_f32(-var_0.c.b.yw)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.c.b.zx + vec2<f32>(var_0.c.a, var_0.c.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1251f, -693f), var_0.e.d.b.wz))), _wgslsmith_f_op_vec2_f32(-var_0.c.b.zx), !select(vec2<bool>(arg_0.x, true), vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b))))), arg_0.yy, !select(!var_0.e.b, !vec2<bool>(false, arg_0.x), func_3(~vec2<u32>(31303u, 8155u), Struct_2(u_input.a), vec2<f32>(var_0.a, var_0.c.a), vec3<u32>(28417u, 17949u, 0u)).xw), var_0.e.d);
    global0 = array<Struct_1, 17>();
    let var_2 = ~vec2<u32>(1u, 1u);
    return ~(~abs(abs(vec3<u32>(0u, 0u, var_2.x)))) >> (max(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, var_2.x, 28499u), vec3<u32>(var_2.x, var_2.x, 82624u), vec3<u32>(var_2.x, 0u, 1513u)) << (vec3<u32>(var_2.x, var_2.x, 1u) % vec3<u32>(32u)), vec3<u32>(var_2.x & 16086u, _wgslsmith_dot_vec3_u32(vec3<u32>(17693u, var_2.x, var_2.x), vec3<u32>(var_2.x, var_2.x, 1u)), ~0u)), _wgslsmith_sub_vec3_u32(select(vec3<u32>(71986u, 24123u, var_2.x), vec3<u32>(25645u, var_2.x, 0u), vec3<bool>(false, var_0.e.c.x, arg_0.x)) & abs(vec3<u32>(0u, var_2.x, 4294967295u)), vec3<u32>(~87564u, _wgslsmith_add_u32(var_2.x, 1u), var_2.x))) % vec3<u32>(32u));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<f32>) -> bool {
    global0 = array<Struct_1, 17>();
    var var_0 = Struct_4(arg_1.b.x, arg_2.d.x < _wgslsmith_div_i32(i32(-1i) * -2147483647i, -5860i), arg_2.e.d, ~arg_2.d, Struct_3(arg_3, vec2<bool>(true, false), !(!vec2<bool>(arg_2.b, true)), arg_2.c));
    let var_1 = countOneBits(~(abs(~0u) | ~arg_0.x));
    global0 = array<Struct_1, 17>();
    let var_2 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_1, 48762u), var_1), _wgslsmith_sub_u32(var_1, 1u), firstTrailingBit(258u)) & _wgslsmith_div_u32(4294967295u, arg_0.x), arg_0.x, select(0u, max(~0u, 33256u), arg_2.a == 1604f));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_clamp_vec3_u32(func_4(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, arg_2), vec2<u32>(arg_2, 0u)), Struct_2(arg_3.a), arg_1.d.b.zx, vec3<u32>(arg_2, 2812u, arg_2))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 33159u, 4531u), vec3<u32>(4294967295u, arg_2, 0u)) & vec3<u32>(31363u, 11467u, arg_2)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 1u), vec4<u32>(44464u, arg_2, arg_2, arg_2)), arg_2, _wgslsmith_add_u32(arg_2, arg_2)), 14856u, ~(arg_2 & arg_2))), arg_0, Struct_4(-837f, arg_1.c.x, global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_3.a.xxw, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 962f))), vec2<bool>(!arg_1.b.x, true), func_3(vec2<u32>(arg_2, arg_2), arg_3, _wgslsmith_div_vec2_f32(arg_1.a, vec2<f32>(arg_0.a, arg_1.d.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2, arg_2, arg_2), vec3<u32>(1u, 21022u, arg_2), vec3<u32>(arg_2, 20260u, arg_2))).xw, Struct_1(arg_0.a, vec4<f32>(arg_0.a, 1149f, arg_0.b.x, arg_1.a.x)))), arg_0.b.zy);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f));
    global0 = array<Struct_1, 17>();
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(trunc(arg_1.a.x))), 1096f);
    let var_2 = -1000f;
    return Struct_2(~(-u_input.a));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 294f) * vec2<f32>(158f, -1533f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(step(-596f, 1000f)), _wgslsmith_f_op_f32(-830f - 1310f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1276f, 486f)) * _wgslsmith_f_op_f32(f32(-1f) * -1688f)), _wgslsmith_f_op_f32(-860f - _wgslsmith_f_op_f32(f32(-1f) * -730f)))), vec2<bool>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_2.a.x, 18866i), vec2<i32>(-1i, arg_2.a.x), arg_1.zx), -vec2<i32>(-2147483647i, 1i)) == (3733i ^ func_2(Struct_1(-1424f, vec4<f32>(-1279f, 1167f, 1000f, 1068f)), Struct_3(vec2<f32>(-464f, -984f), vec2<bool>(arg_1.x, false), vec2<bool>(arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(3276u, 17u)]), 1u, arg_2).a.x), !arg_1.x), !select(arg_1.yw, arg_1.yy, !(!arg_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(4294967295u), ~_wgslsmith_div_u32(_wgslsmith_mod_u32(72012u, arg_0.x), _wgslsmith_add_u32(89628u, 26169u))), 17u)]);
    global0 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(26651u, _wgslsmith_div_u32(arg_0.x, arg_0.x)) ^ arg_0.x, ~(_wgslsmith_clamp_u32(4294967295u, 8397u, arg_0.x) >> (~28736u % 32u)), (arg_0.x ^ _wgslsmith_div_u32(1u, arg_0.x)) & ~(~0u)), vec3<u32>(~arg_0.x, ~arg_0.x, 40491u));
    return arg_1;
}

fn func_7(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_i32(-firstTrailingBit(-35175i) & u_input.a.x, select(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), -2147483647i, all(vec2<bool>(true, true))));
    var var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-666f)), _wgslsmith_f_op_f32(f32(-1f) * -843f))))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -535f)), _wgslsmith_f_op_f32(f32(-1f) * -305f)))), _wgslsmith_div_f32(-166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-755f)))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4, var_4)), var_4, var_4, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1334f)))))) + vec4<f32>(_wgslsmith_f_op_f32(max(943f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(486f)), _wgslsmith_f_op_f32(select(var_4, var_4, true))))), var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -442f))) - _wgslsmith_f_op_f32(floor(307f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)))));
}

fn func_8(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_1, 17>();
    let var_0 = _wgslsmith_f_op_vec3_f32(select(arg_0.zyx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.wxz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1000f, arg_0.x))))), vec3<bool>(select(true, true, !func_5(vec3<u32>(43171u, 21408u, 4294967295u), global0[_wgslsmith_index_u32(4294967295u, 17u)], Struct_4(808f, false, global0[_wgslsmith_index_u32(1u, 17u)], vec3<i32>(u_input.a.x, -53390i, u_input.a.x), Struct_3(arg_1.wx, vec2<bool>(false, false), vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 17u)])), arg_1.yw)), !func_6(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), Struct_2(vec4<i32>(-38607i, u_input.a.x, u_input.a.x, 447i))).x, true)));
    var var_1 = arg_1.x;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)) + arg_1.zw))), !vec2<bool>(func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 0u, 39513u)), global0[_wgslsmith_index_u32(~0u, 17u)], Struct_4(-423f, true, Struct_1(arg_0.x, arg_0), u_input.a.xzw, Struct_3(arg_0.xz, vec2<bool>(true, true), vec2<bool>(true, true), Struct_1(1772f, arg_1))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_1.ww)), true), vec2<bool>(any(vec3<bool>(all(vec4<bool>(true, false, false, false)), true, select(false, false, true))), true && select(true, true, true)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1492f - 353f) + _wgslsmith_f_op_f32(round(-1621f))))), _wgslsmith_f_op_vec4_f32(arg_1 * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1949f, var_0.x, arg_0.x, arg_1.x) - arg_1), vec4<f32>(arg_1.x, 2690f, arg_1.x, 461f))))));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, _wgslsmith_div_f32(110f, 938f), _wgslsmith_f_op_f32(ceil(2057f)), _wgslsmith_f_op_f32(f32(-1f) * -1840f)))));
    var var_3 = func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_7(_wgslsmith_add_vec3_u32(arg_0.zyy, ~vec3<u32>(47993u, arg_0.x, var_0)), false, func_6(~vec4<u32>(arg_0.x, arg_0.x, 75073u, var_0), vec4<bool>(false, true, false, true), func_2(global0[_wgslsmith_index_u32(var_0, 17u)], Struct_3(var_2.wy, vec2<bool>(false, false), vec2<bool>(true, false), Struct_1(var_2.x, vec4<f32>(-648f, 2038f, -946f, var_2.x))), var_0, Struct_2(u_input.a))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -388f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(1341f)), 762f, _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1203f - _wgslsmith_f_op_f32(-467f - var_2.x)))));
    var_3 = func_8(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-523f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(761f)))), -1268f, 2115f, 475f), vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(-367f - -1280f), var_3.a.x));
    return 4294967295u;
}

fn func_9(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    global0 = array<Struct_1, 17>();
    let var_0 = ~(~arg_0);
    let var_1 = -vec2<i32>(-16193i, arg_2.x);
    var var_2 = -972f;
    var_2 = arg_1;
    return 11757u;
}

fn func_10(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(max(arg_3.x, arg_3.x))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(364f * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f + arg_3.x)) - arg_3.x) - arg_3.x));
    var var_1 = _wgslsmith_f_op_f32(abs(var_0.x));
    let var_2 = min(-u_input.a.x, u_input.a.x);
    var var_3 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1377f, _wgslsmith_f_op_f32(min(-755f, var_0.x))))), arg_3.x), any(vec3<bool>((arg_0 != 24849u) && any(vec2<bool>(false, false)), false, false)), func_8(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -787f))), vec4<f32>(-1076f, _wgslsmith_f_op_f32(-1082f * var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-927f, 691f))), var_0.x)).d, -abs(u_input.a.yxz), func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, var_0.x, -1000f))) + _wgslsmith_f_op_vec4_f32(-func_8(vec4<f32>(var_0.x, 1071f, -485f, 459f), vec4<f32>(-948f, -1869f, var_0.x, -904f)).d.b)), vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -162f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * arg_3.x), _wgslsmith_f_op_f32(arg_3.x - arg_3.x)), var_0.x)));
    var var_4 = func_8(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.c.b.x, -1234f, -1000f, -616f), vec4<f32>(-1000f, var_0.x, var_3.e.a.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_3.e.d.b.x, -1529f, var_3.a))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.c.a, _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(arg_3.x - arg_3.x)), 1000f), var_3.e.d.b, func_5(vec3<u32>(arg_0 >> (arg_1 % 32u), func_4(vec4<bool>(false, false, false, var_3.b)).x, ~arg_1), func_8(_wgslsmith_f_op_vec4_f32(-var_3.e.d.b), vec4<f32>(var_3.e.d.b.x, arg_3.x, -1091f, var_3.a)).d, Struct_4(497f, false, global0[_wgslsmith_index_u32(arg_0 ^ 0u, 17u)], _wgslsmith_mult_vec3_i32(var_3.d, u_input.a.zyw), var_3.e), vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 1066f)))));
    return Struct_2(-(_wgslsmith_add_vec4_i32(u_input.a, u_input.a | u_input.a) << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_2, arg_0, arg_2), vec4<u32>(1u, 57358u, 33048u, arg_0)), max(vec4<u32>(1u, arg_2, arg_0, 76028u), vec4<u32>(26134u, arg_2, 1631u, arg_1))) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = func_10(~50608u, ~0u, ~func_9(~func_1(vec4<u32>(4294967295u, 25232u, 12574u, 0u)), 212f, _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.xwy), u_input.a.yxx)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1484f), _wgslsmith_f_op_f32(ceil(-1261f))))))));
    var_0 = Struct_2(vec4<i32>(func_10(1u, ~0u, 27258u, vec2<f32>(_wgslsmith_div_f32(590f, 1636f), -894f)).a.x, -u_input.a.x, var_0.a.x, -37035i));
    let var_1 = var_0.a.x;
    let var_2 = var_0.a.yx & var_0.a.zz;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -181f, _wgslsmith_div_f32(964f, -603f)))) - vec3<f32>(-2196f, -495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -496f))))));
    let var_4 = func_10(select(_wgslsmith_mult_u32(26269u, ~(~62951u)), ~1u, true), 4294967295u, 4294967295u, _wgslsmith_div_vec2_f32(var_3.yz, var_3.xy));
    let x = u_input.a;
    s_output = StorageBuffer(-122f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.yz) * vec2<f32>(var_3.x, var_3.x))) * var_3.xx));
}

