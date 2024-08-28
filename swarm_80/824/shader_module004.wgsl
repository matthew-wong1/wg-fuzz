struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(18726u, 89050u, vec4<bool>(true, false, false, false), vec2<i32>(19504i, -23208i), vec3<f32>(-2419f, 523f, 126f)), false, -1686f, 4294967295u), Struct_2(Struct_1(0u, 4294967295u, vec4<bool>(false, false, true, true), vec2<i32>(-34289i, -1i), vec3<f32>(1210f, 518f, 916f)), true, 1000f, 50254u), Struct_2(Struct_1(125285u, 1u, vec4<bool>(true, true, true, true), vec2<i32>(-1i, 1i), vec3<f32>(-2079f, 374f, 137f)), false, 1363f, 6018u), Struct_2(Struct_1(1u, 1u, vec4<bool>(false, true, true, false), vec2<i32>(-39137i, -1i), vec3<f32>(-447f, 1608f, -1799f)), true, -483f, 48391u), Struct_2(Struct_1(13401u, 29029u, vec4<bool>(true, false, false, false), vec2<i32>(19859i, -1i), vec3<f32>(-447f, -784f, -1492f)), true, -767f, 4294967295u), Struct_2(Struct_1(75820u, 4294967295u, vec4<bool>(true, true, false, false), vec2<i32>(2147483647i, -14587i), vec3<f32>(-1000f, -1171f, -117f)), true, -940f, 0u), Struct_2(Struct_1(1875u, 64374u, vec4<bool>(true, false, false, true), vec2<i32>(22317i, i32(-2147483648)), vec3<f32>(615f, 453f, -443f)), false, -583f, 601u), Struct_2(Struct_1(1u, 38615u, vec4<bool>(false, true, false, true), vec2<i32>(-1i, 0i), vec3<f32>(-917f, 186f, 1000f)), true, -1160f, 0u), Struct_2(Struct_1(4294967295u, 29433u, vec4<bool>(true, true, false, true), vec2<i32>(i32(-2147483648), 2147483647i), vec3<f32>(-213f, 1768f, 1007f)), false, -756f, 1u), Struct_2(Struct_1(4294967295u, 1u, vec4<bool>(false, false, false, false), vec2<i32>(34782i, 8427i), vec3<f32>(155f, 143f, -758f)), false, -125f, 60493u), Struct_2(Struct_1(4294967295u, 4294967295u, vec4<bool>(false, true, true, false), vec2<i32>(1i, 25487i), vec3<f32>(-152f, -1415f, -933f)), false, 243f, 22674u), Struct_2(Struct_1(120738u, 774u, vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), 1i), vec3<f32>(-747f, 433f, -151f)), true, -524f, 4294967295u), Struct_2(Struct_1(34267u, 31115u, vec4<bool>(true, true, true, false), vec2<i32>(-1i, 45924i), vec3<f32>(-2022f, 965f, -307f)), true, 1034f, 4294967295u), Struct_2(Struct_1(0u, 4294967295u, vec4<bool>(false, true, true, false), vec2<i32>(-36963i, -26740i), vec3<f32>(1772f, -1287f, 1589f)), false, 109f, 0u), Struct_2(Struct_1(1u, 59854u, vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 18316i), vec3<f32>(-359f, 706f, 1842f)), false, 1000f, 0u), Struct_2(Struct_1(0u, 0u, vec4<bool>(false, true, false, true), vec2<i32>(-29294i, 30823i), vec3<f32>(-980f, -1883f, 154f)), true, -1000f, 4294967295u), Struct_2(Struct_1(19547u, 20228u, vec4<bool>(false, true, true, true), vec2<i32>(49018i, 6816i), vec3<f32>(-672f, 195f, 1837f)), false, -1315f, 25266u), Struct_2(Struct_1(4294967295u, 4412u, vec4<bool>(true, true, true, false), vec2<i32>(-55330i, 2147483647i), vec3<f32>(1038f, -780f, 1248f)), true, 429f, 55142u), Struct_2(Struct_1(46478u, 1u, vec4<bool>(false, false, true, true), vec2<i32>(27080i, 29390i), vec3<f32>(-1000f, 379f, 1243f)), false, 118f, 0u), Struct_2(Struct_1(0u, 45290u, vec4<bool>(false, false, false, true), vec2<i32>(1i, -48317i), vec3<f32>(1128f, -1662f, -293f)), true, 368f, 0u), Struct_2(Struct_1(30267u, 4294967295u, vec4<bool>(false, true, false, false), vec2<i32>(0i, 5030i), vec3<f32>(-714f, 771f, -157f)), true, -1565f, 5467u), Struct_2(Struct_1(29833u, 95302u, vec4<bool>(false, false, false, true), vec2<i32>(i32(-2147483648), -34509i), vec3<f32>(875f, 1958f, -414f)), false, -824f, 85674u), Struct_2(Struct_1(1u, 80715u, vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 2147483647i), vec3<f32>(553f, -507f, -864f)), true, 693f, 4294967295u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f + _wgslsmith_f_op_f32(min(345f, -1442f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-915f * _wgslsmith_div_f32(1684f, 408f)), _wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(step(306f, -189f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-877f, -149f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-344f, -1190f), vec2<f32>(-419f, 1159f), vec2<bool>(arg_0.x, arg_0.x))))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1092f, -532f))))));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1245f, 292f, var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-120f, var_0.x, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1459f, 163f, -685f, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1389f, var_0.x, var_0.x, 1744f)))))), all(vec4<bool>((true == arg_0.x) || true, false, true, !all(vec2<bool>(arg_0.x, true)))), Struct_2(Struct_1(arg_1.x, ~arg_1.x, select(!vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_0.x, false, true), true), vec4<bool>(true, true, true, false)), vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-383f, var_0.x, 561f) - vec3<f32>(var_0.x, var_0.x, -1284f))))), false & !arg_0.x, _wgslsmith_div_f32(1240f, _wgslsmith_div_f32(-695f, _wgslsmith_f_op_f32(select(-668f, var_0.x, arg_0.x)))), arg_1.x), 20924u << (arg_1.x % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 742f)) - var_0.x));
    global0 = array<Struct_2, 23>();
    var var_2 = var_1.c.a;
    var_2 = var_1.c.a;
    return firstLeadingBit(1u);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_5) -> Struct_1 {
    var var_0 = !arg_1.c.a.c;
    let var_1 = -311f;
    global0 = array<Struct_2, 23>();
    let var_2 = Struct_4(vec4<u32>(~69270u, 84041u, func_3(!vec2<bool>(var_0.x, false), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1.c.a.a, u_input.b, 1u)), ~vec3<u32>(71366u, 0u, 1u))), (_wgslsmith_sub_u32(4294967295u, u_input.b) | 4294967295u) << (arg_1.d % 32u)), vec3<i32>(-57278i, -(-15394i | u_input.a), select(2147483647i, 2147483647i, all(!vec4<bool>(arg_1.c.a.c.x, false, arg_1.c.b, arg_1.c.a.c.x)))), ~vec2<u32>(arg_1.c.a.b, reverseBits(_wgslsmith_mult_u32(u_input.b, u_input.b))), _wgslsmith_mult_i32(~(-arg_1.c.a.d.x), firstLeadingBit(u_input.a)), arg_1.a);
    var_0 = select(arg_1.c.a.c, !vec4<bool>(!(!var_0.x), true, _wgslsmith_f_op_f32(arg_0.x + arg_1.e) != 524f, !(arg_1.b | var_0.x)), !select(select(select(vec4<bool>(var_0.x, true, arg_1.b, false), arg_1.c.a.c, vec4<bool>(arg_1.b, arg_1.b, true, false)), select(vec4<bool>(true, false, arg_1.b, false), arg_1.c.a.c, arg_1.b), vec4<bool>(arg_1.b, true, var_0.x, var_0.x)), arg_1.c.a.c, select(arg_1.c.a.c, vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, var_0.x)))));
    return Struct_1(~(~(~4294967295u << (0u % 32u))), 0u, select(!(!(!vec4<bool>(arg_1.b, false, true, var_0.x))), arg_1.c.a.c, var_0.x), vec2<i32>(2147483647i, -33670i), arg_1.c.a.e);
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<f32>, arg_3: i32) -> Struct_3 {
    var var_0 = arg_2.x;
    var var_1 = func_2(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1411f * -1000f), arg_2.x, arg_0))), Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -120f), arg_2.x, _wgslsmith_f_op_f32(2580f + -497f)) * vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x, _wgslsmith_f_op_f32(518f * 209f), _wgslsmith_f_op_f32(-arg_2.x))), true, global0[_wgslsmith_index_u32(~u_input.b, 23u)], 0u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1410f)))));
    var var_2 = -1141f;
    var var_3 = (27353i <= _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 13993i, -505i), ~vec3<i32>(var_1.d.x, arg_3, u_input.a)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(-2221i, arg_3)))) || !arg_1;
    global0 = array<Struct_2, 23>();
    return Struct_3(global0[_wgslsmith_index_u32(var_1.b, 23u)], 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, var_1.e.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    var var_0 = func_1(true, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(318f)), _wgslsmith_f_op_f32(step(-976f, 692f)), _wgslsmith_f_op_f32(abs(-1301f))))), u_input.a);
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.a, 1i) & (((u_input.a & -1i) & 1i) ^ func_1(true, all(vec3<bool>(var_0.a.b, true, var_0.a.a.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.a.a.e.x, var_0.c.x) + var_0.a.a.e), u_input.a).a.a.d.x), -1i);
    var_0 = func_1(false, var_0.a.b, vec3<f32>(var_0.c.x, 244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(var_0.a.a.c.x, var_0.a.a.c.x, var_0.a.a.e, 2147483647i).c.x) * var_0.c.x)), -35811i);
    var var_2 = 781f;
    let var_3 = vec4<i32>(-1i, ~(-2102i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 0i, -1i), vec3<i32>(1i, 4855i, -2147483647i) ^ ~vec3<i32>(35003i, var_1.x, -1i)), _wgslsmith_sub_i32(var_1.x & -2147483647i, u_input.a >> (var_0.b % 32u)) ^ _wgslsmith_mult_i32(-1i << (u_input.b % 32u), _wgslsmith_mult_i32(61891i, -8853i))) << (vec4<u32>(~(~(~4294967295u)), var_0.a.d, 37398u, var_0.b) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-244f, _wgslsmith_f_op_f32(trunc(-103f))) * _wgslsmith_f_op_vec2_f32(-func_1(func_1(var_0.a.b, true, var_0.a.a.e, -2147483647i).a.a.c.x, true, var_0.a.a.e, ~(-1i)).a.a.e.zy)), 56845u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2448f)), 5263i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_div_f32(525f, var_0.c.x))));
}

