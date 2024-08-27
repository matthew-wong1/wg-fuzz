struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24>;

var<private> global1: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(vec3<i32>(-36941i, -15164i, i32(-2147483648)), 1057f, false, 318f, vec3<bool>(false, true, false)), Struct_2(-1184f, Struct_1(vec3<i32>(-7851i, -1i, -1i), 241f, false, 824f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(-33823i, 5869i, i32(-2147483648)), 782f, true, 953f, vec3<bool>(true, true, true))), 1646f, Struct_2(2154f, Struct_1(vec3<i32>(0i, -37520i, -34133i), 349f, true, -1891f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(0i, 0i, 4364i), -1046f, false, 307f, vec3<bool>(false, true, false)))), Struct_3(Struct_1(vec3<i32>(20745i, -15111i, -1i), -164f, true, 1545f, vec3<bool>(false, true, false)), Struct_2(-1539f, Struct_1(vec3<i32>(-6173i, -21267i, 1i), 1001f, true, 508f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(40502i, 34472i, 0i), -613f, true, -1000f, vec3<bool>(true, false, true))), -847f, Struct_2(1243f, Struct_1(vec3<i32>(1i, 13817i, 0i), 238f, true, -1968f, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(10665i, -16828i, -1i), 705f, true, 649f, vec3<bool>(false, true, true)))), Struct_3(Struct_1(vec3<i32>(11963i, -10148i, i32(-2147483648)), 144f, false, 974f, vec3<bool>(false, false, false)), Struct_2(-857f, Struct_1(vec3<i32>(-1i, -81578i, i32(-2147483648)), -775f, false, 2686f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(0i, 18075i, 0i), -1233f, false, 721f, vec3<bool>(false, false, true))), 484f, Struct_2(1286f, Struct_1(vec3<i32>(-10303i, -34824i, 18571i), -1000f, true, -399f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-10894i, 0i, 8995i), -955f, true, -1076f, vec3<bool>(true, false, false)))), Struct_3(Struct_1(vec3<i32>(27124i, 18107i, 2147483647i), -1000f, true, -1434f, vec3<bool>(true, true, false)), Struct_2(626f, Struct_1(vec3<i32>(0i, 0i, 1i), -907f, true, 1893f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(0i, 23260i, 0i), 407f, true, -605f, vec3<bool>(true, true, true))), 182f, Struct_2(1085f, Struct_1(vec3<i32>(i32(-2147483648), 43728i, 42049i), -703f, true, 619f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-22188i, -1i, -1i), 588f, true, -464f, vec3<bool>(true, false, true)))), Struct_3(Struct_1(vec3<i32>(47269i, 35551i, 5987i), 152f, true, 613f, vec3<bool>(false, false, true)), Struct_2(-2436f, Struct_1(vec3<i32>(-54008i, 2147483647i, -1i), 752f, true, -2214f, vec3<bool>(false, true, false)), Struct_1(vec3<i32>(58696i, 21248i, -10620i), 382f, true, -313f, vec3<bool>(false, false, true))), 849f, Struct_2(856f, Struct_1(vec3<i32>(60213i, i32(-2147483648), -1i), 271f, false, 1009f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(26612i, -33980i, -1i), -621f, false, 752f, vec3<bool>(false, false, false)))), Struct_3(Struct_1(vec3<i32>(0i, i32(-2147483648), 24881i), -949f, true, -897f, vec3<bool>(true, true, true)), Struct_2(-910f, Struct_1(vec3<i32>(-1i, 14966i, -34871i), -909f, false, -1525f, vec3<bool>(true, false, true)), Struct_1(vec3<i32>(2147483647i, -19335i, -903i), 1402f, true, -1240f, vec3<bool>(false, false, false))), 220f, Struct_2(1057f, Struct_1(vec3<i32>(0i, 1i, 2137i), -1750f, true, -295f, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(2147483647i, -40944i, 11012i), 1273f, true, 1236f, vec3<bool>(false, true, true)))), Struct_3(Struct_1(vec3<i32>(-8227i, i32(-2147483648), 1i), -773f, true, -1668f, vec3<bool>(true, true, true)), Struct_2(1864f, Struct_1(vec3<i32>(-28146i, -53456i, 0i), 175f, false, -667f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(1i, -3709i, -20455i), 1000f, false, -1000f, vec3<bool>(true, false, false))), 798f, Struct_2(2242f, Struct_1(vec3<i32>(2147483647i, -41948i, 2147483647i), -642f, true, -2509f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(333i, 0i, -1i), 655f, true, -327f, vec3<bool>(false, true, true)))), Struct_3(Struct_1(vec3<i32>(0i, -24576i, 0i), -358f, true, -1100f, vec3<bool>(false, true, false)), Struct_2(249f, Struct_1(vec3<i32>(-1i, 2147483647i, -9674i), 889f, true, -1305f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(28999i, i32(-2147483648), 22427i), -185f, false, -598f, vec3<bool>(true, false, false))), 1158f, Struct_2(-235f, Struct_1(vec3<i32>(-45869i, -1i, 0i), 1062f, false, 167f, vec3<bool>(true, false, false)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 0i), 266f, true, -1001f, vec3<bool>(true, true, true)))), Struct_3(Struct_1(vec3<i32>(26840i, 65933i, 51512i), -2061f, false, 457f, vec3<bool>(true, false, false)), Struct_2(171f, Struct_1(vec3<i32>(i32(-2147483648), 0i, -35093i), -214f, true, 2416f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 0i), -1000f, true, -382f, vec3<bool>(true, true, true))), 281f, Struct_2(1285f, Struct_1(vec3<i32>(0i, 47069i, -25116i), 985f, true, 1000f, vec3<bool>(false, false, false)), Struct_1(vec3<i32>(1i, i32(-2147483648), -4857i), 555f, false, 1513f, vec3<bool>(true, true, false)))));

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(0i, 2147483647i, -1i, i32(-2147483648)), vec4<i32>(0i, 35920i, -1i, 29771i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5) -> f32 {
    return 1f;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_sub_vec3_i32(~select(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -35354i, u_input.a), vec3<i32>(33075i, 2147483647i, 0i)), vec3<i32>(u_input.c, 46904i, -27016i) << (vec3<u32>(global2.x, 4294967295u, global2.x) % vec3<u32>(32u)), any(vec2<bool>(false, true))), -firstLeadingBit(min(vec3<i32>(27006i, u_input.a, u_input.a), vec3<i32>(u_input.c, 36665i, u_input.c)))) >> ((~vec3<u32>(~global2.x, 6209u, 1u) | ~vec3<u32>(~4294967295u, ~global2.x, 6849u)) % vec3<u32>(32u));
    var var_1 = any(vec2<bool>(all(vec4<bool>(any(vec3<bool>(true, false, false)), true, true, true)), true));
    var var_2 = Struct_3(Struct_1(vec3<i32>(-2147483647i, var_0.x, _wgslsmith_div_i32(1i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(141f, 1056f)), 246f) + 339f), any(vec3<bool>(all(vec2<bool>(true, false)), true, true)), 906f, select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), 1u != u_input.b), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), Struct_2(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(Struct_1(vec3<i32>(var_0.x, -2147483647i, -2147483647i), 1031f, false, -2296f, vec3<bool>(false, false, false)), Struct_2(-1599f, Struct_1(vec3<i32>(-46909i, 16282i, -3312i), 993f, false, -1097f, vec3<bool>(true, true, true)), Struct_1(vec3<i32>(1i, u_input.c, -45145i), 891f, true, -1043f, vec3<bool>(false, false, true))), 165f, Struct_2(-391f, Struct_1(vec3<i32>(var_0.x, u_input.a, 2147483647i), 171f, true, 271f, vec3<bool>(false, false, true)), Struct_1(vec3<i32>(var_0.x, -20441i, 1i), 916f, true, 952f, vec3<bool>(true, true, true))))))), Struct_1(-_wgslsmith_add_vec3_i32(vec3<i32>(6581i, var_0.x, u_input.a), vec3<i32>(1i, u_input.c, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-341f))), true, _wgslsmith_f_op_f32(f32(-1f) * -279f), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), all(vec4<bool>(true, true, true, true)))), Struct_1(select(select(vec3<i32>(u_input.a, var_0.x, var_0.x), vec3<i32>(var_0.x, 0i, -1i), true), ~vec3<i32>(-2147483647i, u_input.c, u_input.c), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1655f))), true, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(679f, 488f)), vec3<bool>(all(vec3<bool>(true, false, true)), true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_5(Struct_3(Struct_1(vec3<i32>(1i, -22889i, 0i), 1000f, true, -821f, vec3<bool>(true, false, true)), Struct_2(-669f, Struct_1(vec3<i32>(2147483647i, -23094i, -1i), 471f, true, 378f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(u_input.a, u_input.a, u_input.a), -512f, false, -1692f, vec3<bool>(false, false, true))), -181f, Struct_2(1322f, Struct_1(vec3<i32>(-30882i, u_input.a, u_input.a), 2179f, true, 291f, vec3<bool>(true, true, false)), Struct_1(vec3<i32>(u_input.a, var_0.x, u_input.a), 515f, false, 996f, vec3<bool>(true, false, false)))))))), Struct_2(919f, Struct_1(firstLeadingBit(vec3<i32>(var_0.x, -2147483647i, var_0.x) >> (vec3<u32>(global2.x, 56555u, global2.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(188f - 1000f) + -1282f), false, _wgslsmith_f_op_f32(f32(-1f) * -505f), vec3<bool>(any(vec2<bool>(false, true)), true, true)), Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.x, var_0.x, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, -653i, -25109i), vec3<i32>(u_input.c, 2147483647i, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f * -1793f)), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -183f))), vec3<bool>(any(vec3<bool>(false, true, false)), false, true))));
    var var_3 = -vec2<i32>(-firstTrailingBit(reverseBits(-8480i)), _wgslsmith_clamp_i32(-firstTrailingBit(var_0.x), ~(10541i ^ u_input.c), u_input.c));
    var_1 = any(vec4<bool>(false, var_2.d.c.c, !((global2.x << (u_input.b % 32u)) == 4294967295u), true));
    return !(!var_2.a.e.yx);
}

fn func_1() -> Struct_2 {
    var var_0 = select(!vec2<bool>(-15380i > u_input.c, true), select(vec2<bool>(all(vec4<bool>(true, false, true, false)) && true, all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), func_2(), false), !vec2<bool>(true, func_2().x));
    var var_1 = abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(-u_input.c, firstLeadingBit(-2147483647i), i32(-1i) * -46800i), ~max(min(vec3<i32>(-40017i, 0i, u_input.a), vec3<i32>(2147483647i, -21935i, 17866i)), vec3<i32>(15712i, u_input.a, u_input.c) | vec3<i32>(u_input.c, u_input.c, 66835i))));
    var var_2 = ~select(~(~vec3<u32>(u_input.b, 0u, 4294967295u)), ~((vec3<u32>(global2.x, 1u, u_input.b) << (vec3<u32>(13556u, u_input.b, 33896u) % vec3<u32>(32u))) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), vec3<bool>(true, func_2().x, _wgslsmith_f_op_f32(select(-759f, -956f, false)) >= _wgslsmith_f_op_f32(max(866f, 1200f))));
    let var_3 = var_2.x;
    let var_4 = _wgslsmith_add_u32(_wgslsmith_add_u32(0u, 85536u), ~var_2.x);
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))), Struct_1(-reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-55860i, -3739i, -1i), vec3<i32>(51652i, u_input.a, 0i))), -1000f, true, _wgslsmith_f_op_f32(f32(-1f) * -991f), !(!vec3<bool>(var_0.x, var_0.x, var_0.x))), Struct_1(vec3<i32>(35007i, 2147483647i & var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(17413i, var_1.x), vec2<i32>(1i, u_input.a)))), _wgslsmith_f_op_f32(-910f - 1371f), func_2().x, 414f, !(!select(vec3<bool>(true, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), true))));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = func_1();
    let var_1 = ~countOneBits(countOneBits(var_0.c.a));
    global1 = array<Struct_3, 9>();
    var var_2 = _wgslsmith_div_u32(global2.x, _wgslsmith_div_u32(6823u, ~u_input.b) ^ global2.x);
    global3 = array<vec4<i32>, 2>();
    return any(func_1().c.e.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.c, u_input.c, -45684i)) >> (vec3<u32>(u_input.b, 1u, 95189u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1066f, 864f)))))) - 194f), true & func_4(func_1()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2179f - 1377f))), vec3<bool>(all(vec3<bool>(any(vec3<bool>(true, false, true)), true, true)), true, any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))) || any(vec4<bool>(true, true, true, true))));
    global2 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global2.x, 58543u), u_input.b, _wgslsmith_sub_u32(4294967295u, ~u_input.b)), vec3<u32>(abs(u_input.b), ~(~14579u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 34904u, 0u), vec3<u32>(global2.x, global2.x, u_input.b) >> (vec3<u32>(1u, global2.x, u_input.b) % vec3<u32>(32u))))), 38635u);
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, _wgslsmith_f_op_f32(round(var_0.d)), 268f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1968f, 1000f, var_0.d))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.d) + vec3<f32>(var_0.d, 981f, var_0.d))))), var_0.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d * -1256f))), -537f, -693f) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(275f, var_0.b, 1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, -3120f, var_0.d)), !(-1i >= var_0.a.x)))));
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.b, abs(1u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(23667u, 58391u), vec2<u32>(73862u, global2.x)))), min(vec2<u32>(global2.x, firstTrailingBit(75917u)), vec2<u32>(~u_input.b >> (42402u % 32u), _wgslsmith_add_u32(global2.x, _wgslsmith_mod_u32(global2.x, 8714u)))), vec2<i32>(var_0.a.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.a.x, u_input.a) ^ ~2147483647i, -select(1i, var_2.b.a.x, false), -51621i)));
}

