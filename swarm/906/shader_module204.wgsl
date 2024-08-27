struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(246f, -1000f, -1270f), vec3<f32>(-960f, -745f, -909f), vec3<f32>(1115f, -1308f, -849f), vec3<f32>(-1624f, -302f, -774f), vec3<f32>(-602f, -186f, 847f), vec3<f32>(-622f, 194f, 1175f), vec3<f32>(-165f, -1440f, -298f), vec3<f32>(-570f, 524f, -1612f), vec3<f32>(1950f, 1000f, 1677f), vec3<f32>(887f, 283f, -592f), vec3<f32>(-2212f, -268f, -110f), vec3<f32>(-1000f, -1000f, 1076f), vec3<f32>(-933f, -724f, 211f), vec3<f32>(-787f, -605f, 494f), vec3<f32>(-207f, -227f, -2653f), vec3<f32>(333f, 179f, -621f), vec3<f32>(-169f, 1964f, -1197f), vec3<f32>(-1261f, 299f, 823f), vec3<f32>(1235f, 1000f, -252f), vec3<f32>(1491f, 258f, 1000f), vec3<f32>(-1000f, 1054f, -543f), vec3<f32>(1224f, -938f, -809f), vec3<f32>(-1000f, -450f, -312f), vec3<f32>(762f, 385f, 747f), vec3<f32>(-153f, 951f, 1937f), vec3<f32>(-1998f, 1000f, -1218f), vec3<f32>(749f, 539f, -805f), vec3<f32>(449f, 527f, 1672f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_3(select(!vec3<bool>(true, u_input.b.x != 19661u, all(vec4<bool>(true, true, false, false))), select(vec3<bool>(true, any(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, any(vec3<bool>(false, false, false)), u_input.c.x == 14103i), vec3<bool>(true, true, true)), vec3<bool>(true, true, select(all(vec4<bool>(false, false, true, true)), true, all(vec2<bool>(true, false))))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-2177f - 1331f), _wgslsmith_f_op_f32(round(649f)), _wgslsmith_div_f32(785f, 497f), 1045f))), max(arg_0.xyz, -vec3<i32>(~11201i, arg_0.x, u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-795f + 299f), 198f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2154f + _wgslsmith_f_op_f32(2161f + -1000f)))), abs(vec2<i32>(i32(-1i) * -arg_0.x, ~(41795i << (u_input.b.x % 32u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.b.a)) + var_0.b.a)), vec4<bool>(_wgslsmith_f_op_f32(min(451f, var_0.b.a.x)) > -1565f, !(!var_0.a.x), !((var_0.a.x && true) & select(false, false, true)), true));
    global0 = array<vec3<f32>, 28>();
    var_0 = Struct_3(vec3<bool>(any(vec2<bool>(true, true)), any(!var_1.b), true), Struct_1(_wgslsmith_f_op_vec4_f32(var_1.a + var_1.a)), firstTrailingBit(vec3<i32>(1946i, select(-1i, abs(arg_0.x), var_0.c.x >= 27711i), _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(u_input.c.x, -1i)))), var_0.b.a.x, firstTrailingBit(-vec2<i32>(~(-2147483647i), -arg_0.x)));
    global0 = array<vec3<f32>, 28>();
    return vec4<f32>(-1520f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-286f, var_0.d, true)))))), var_0.d, var_1.a.x);
}

fn func_2() -> Struct_1 {
    var var_0 = !(!vec3<bool>(any(vec2<bool>(true, true)), select(u_input.c.x, -2147483647i, true) != _wgslsmith_dot_vec4_i32(vec4<i32>(-4224i, -35767i, u_input.c.x, -4108i), vec4<i32>(u_input.c.x, -1i, -35823i, u_input.c.x)), true));
    let var_1 = vec3<bool>(!var_0.x, true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1281f + 1387f)))) == _wgslsmith_f_op_f32(trunc(-760f)));
    let var_2 = max(-_wgslsmith_add_i32(~23944i, abs(~u_input.c.x)), u_input.c.x);
    let var_3 = ~firstTrailingBit(1i);
    let var_4 = Struct_4(Struct_3(select(select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_1.x, false, false), false), vec3<bool>(true, true, !var_0.x), false), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(2147483647i, var_3, u_input.c.x, var_2))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(var_3, var_2, 2147483647i) | u_input.c, select(vec3<i32>(var_3, 1i, 1i), u_input.c, false)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1578f), _wgslsmith_f_op_f32(f32(-1f) * -763f))), 252f, var_1.x)), ~u_input.c.zx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, -1682f, 186f, 1857f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1132f, -172f, -582f, -131f) * vec4<f32>(1000f, -1067f, -1530f, -311f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1766f, 2248f, -516f, -686f))))));
    return var_4.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1215f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1360f, 648f, false))), arg_2.x), arg_1.b.a)), !(!(!select(vec4<bool>(arg_1.a.x, true, arg_1.a.x, false), vec4<bool>(arg_1.a.x, false, arg_1.a.x, false), vec4<bool>(true, arg_1.a.x, false, false)))));
    global0 = array<vec3<f32>, 28>();
    let var_1 = ~u_input.a >> (select(min(u_input.b.zz, select(countOneBits(vec2<u32>(13392u, 35292u)), u_input.a, true)), u_input.b.xy ^ _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(arg_3, arg_3)), vec2<u32>(arg_3, 4294967295u)), select(!select(vec2<bool>(false, true), var_0.b.xw, var_0.b.x), !(!arg_1.a.yx), arg_1.a.x & true)) % vec2<u32>(32u));
    global0 = array<vec3<f32>, 28>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a.x, -1000f, 269f, -466f), arg_1.b.a)))))));
    return arg_0;
}

fn func_1(arg_0: vec2<u32>) -> vec2<u32> {
    let var_0 = !(!vec2<bool>(any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true))), any(vec3<bool>(false, true, true)) & (75776u < u_input.a.x)));
    var var_1 = Struct_4(Struct_3(vec3<bool>(all(vec2<bool>(false, var_0.x)), var_0.x != true, _wgslsmith_f_op_f32(602f + 2169f) >= _wgslsmith_f_op_f32(step(-908f, 243f))), func_4(func_2(), Struct_3(!vec3<bool>(var_0.x, var_0.x, var_0.x), func_2(), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1030f), countOneBits(vec2<i32>(43131i, u_input.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(598f, 315f, 213f, -231f), vec4<f32>(-1042f, 635f, 890f, 747f)) + vec4<f32>(1584f, 756f, -160f, -964f)), 1u), min(u_input.c, (u_input.c ^ u_input.c) >> (vec3<u32>(u_input.a.x, arg_0.x, 1u) % vec3<u32>(32u))), -1061f, ~firstTrailingBit(select(u_input.c.zz, vec2<i32>(2147483647i, u_input.c.x), var_0.x))), -908f, func_4(Struct_1(vec4<f32>(-1067f, _wgslsmith_f_op_vec4_f32(func_3(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, 2147483647i))).x, _wgslsmith_f_op_f32(1000f - -1100f), 1f)), Struct_3(!select(vec3<bool>(false, false, var_0.x), vec3<bool>(false, false, true), vec3<bool>(var_0.x, true, false)), func_2(), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 59605i, -2147483647i), vec3<i32>(7428i, -59517i, 1201i)), _wgslsmith_div_vec3_i32(u_input.c, u_input.c), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c, u_input.c), 28179i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(447f, -763f, -808f, -1348f) * vec4<f32>(327f, 155f, 387f, -1000f)))), abs(1u)));
    let var_2 = Struct_2(var_1.a.b.a, select(vec4<bool>(all(!var_0), true, !(!var_0.x), true), select(select(vec4<bool>(false, var_0.x, true, var_1.a.a.x), vec4<bool>(false, var_1.a.a.x, false, true), !var_0.x), vec4<bool>(var_1.a.a.x, !var_0.x, false || var_0.x, true), select(vec4<bool>(var_0.x, false, true, var_1.a.a.x), select(vec4<bool>(true, var_1.a.a.x, false, var_1.a.a.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_1.a.a.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), all(vec2<bool>(true, 132f != var_1.a.b.a.x))));
    let var_3 = var_1.a;
    var var_4 = vec2<f32>(var_2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x - var_2.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(926f, _wgslsmith_f_op_f32(1240f + var_2.a.x), true))))));
    return vec2<u32>(max(arg_0.x, u_input.a.x), countOneBits(1u) >> (select(arg_0.x, countOneBits(0u), true) % 32u)) ^ abs(~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.xy, u_input.a), vec2<u32>(0u, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(0u, ~(~0u));
    var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(86478u, 1u), vec2<u32>(var_0.x, countOneBits(5264u ^ _wgslsmith_div_u32(u_input.b.x, var_0.x))));
    var_0 = min(u_input.a, ~abs(func_1(_wgslsmith_mod_vec2_u32(u_input.b.zz, vec2<u32>(1u, 1u)))));
    global0 = array<vec3<f32>, 28>();
    var var_1 = select(vec2<bool>(false & (firstLeadingBit(28357u) != u_input.b.x), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), true))), vec2<bool>(!all(vec4<bool>(true, true, true, true)), true), select(!vec2<bool>(0i <= u_input.c.x, true), select(vec2<bool>(true, true), vec2<bool>(u_input.c.x != u_input.c.x, -43121i > u_input.c.x), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, true))), true));
    var_0 = vec2<u32>(var_0.x, reverseBits(u_input.a.x));
    var var_2 = (~reverseBits(firstLeadingBit(vec4<u32>(var_0.x, 0u, 43474u, u_input.b.x))) ^ firstTrailingBit(reverseBits(max(vec4<u32>(60525u, 0u, 0u, 6459u), vec4<u32>(109070u, 4294967295u, 4294967295u, var_0.x))))) | ~_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 22163u, u_input.b.x, u_input.b.x) & abs(vec4<u32>(u_input.a.x, 75981u, var_0.x, 1u)), countOneBits(vec4<u32>(1u, 4294967295u, 1u, 1u) & vec4<u32>(u_input.b.x, 22003u, 4294967295u, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), -u_input.c.x);
}

