struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(70284i, 13303i, -27214i), vec3<i32>(0i, -10213i, 5451i), vec3<i32>(i32(-2147483648), 1i, 45606i), vec3<i32>(6154i, 1i, 1i), vec3<i32>(-42033i, i32(-2147483648), -10784i), vec3<i32>(-22501i, 2147483647i, -19210i), vec3<i32>(2147483647i, -6689i, 1i), vec3<i32>(-1200i, 48836i, 10247i), vec3<i32>(2147483647i, -2380i, 0i), vec3<i32>(2147483647i, -5377i, i32(-2147483648)), vec3<i32>(-11040i, 61060i, 41692i), vec3<i32>(-56450i, 1i, -35095i), vec3<i32>(4369i, 36902i, -10491i), vec3<i32>(i32(-2147483648), 1440i, -12278i), vec3<i32>(-34761i, -23174i, 0i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(10381i, -1i, 0i), vec3<i32>(-21819i, 0i, -1i), vec3<i32>(-1i, -1i, -25450i), vec3<i32>(2147483647i, 69365i, i32(-2147483648)), vec3<i32>(2147483647i, -1i, i32(-2147483648)), vec3<i32>(0i, 6662i, -52294i), vec3<i32>(i32(-2147483648), 44222i, 3826i), vec3<i32>(1i, -1i, 1i), vec3<i32>(4182i, -20130i, -52845i), vec3<i32>(-49946i, -87547i, 4191i), vec3<i32>(12307i, -57404i, 4528i), vec3<i32>(i32(-2147483648), -16722i, -18295i), vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -29807i, 0i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(27028i, 1i, -3444i));

var<private> global1: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(1i, 11229i, -742i), vec3<i32>(8359i, -50265i, -9367i), vec3<i32>(2147483647i, -34705i, 7605i), vec3<i32>(7932i, -16582i, 8226i), vec3<i32>(0i, 0i, 14676i), vec3<i32>(1i, 2147483647i, 47103i), vec3<i32>(-1i, -2483i, -22789i), vec3<i32>(-73349i, 2147483647i, i32(-2147483648)), vec3<i32>(-33150i, 8468i, i32(-2147483648)), vec3<i32>(2147483647i, 19847i, 1i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<bool> {
    let var_0 = -(i32(-1i) * -1i);
    var var_1 = Struct_1(_wgslsmith_mult_vec2_i32(arg_0.a, -vec2<i32>(-31818i, 1i)), abs(firstTrailingBit(~arg_0.b) | ~firstLeadingBit(4294967295u)));
    var var_2 = arg_0;
    let var_3 = arg_0;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f) + _wgslsmith_f_op_f32(step(388f, 352f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-870f, 697f)))), -199f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1413f) - 839f));
    return vec4<bool>(true, true, arg_1, arg_1);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<vec3<i32>, 32>();
    global1 = array<vec3<i32>, 10>();
    global1 = array<vec3<i32>, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(536f, -1233f, -288f, 304f), vec4<f32>(-1631f, -496f, -1005f, 1325f), true))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-809f, -448f, 990f, -1597f), vec4<f32>(277f, -1033f, -677f, 351f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, 599f, -843f, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(695f, -382f, -333f, 1362f), vec4<f32>(1000f, 952f, -1000f, -1683f))), vec4<f32>(_wgslsmith_f_op_f32(1000f - -138f), _wgslsmith_div_f32(464f, 127f), _wgslsmith_div_f32(272f, -765f), _wgslsmith_f_op_f32(-1000f - 297f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(413f, -139f, -2102f, 855f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(201f, -366f, -333f, 542f) + vec4<f32>(1600f, -1072f, 1000f, 911f)), !vec4<bool>(false, false, arg_0, false)))))));
    var var_1 = ~(u_input.d.wz | vec2<u32>(abs(u_input.c), 0u)) ^ ~u_input.d.xw;
    return var_0.xy;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), !func_2(Struct_1(u_input.e.yz, 53615u), false))), Struct_1((u_input.e.ww | _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 9866i), u_input.e.wx)) >> (_wgslsmith_add_vec2_u32(u_input.d.xx, firstLeadingBit(u_input.d.yy)) % vec2<u32>(32u)), 4294967295u), Struct_1(max(-u_input.e.xy, max(vec2<i32>(u_input.b, 2147483647i), firstTrailingBit(u_input.e.wz))), u_input.a)));
    var var_1 = -_wgslsmith_dot_vec4_i32(min(-vec4<i32>(u_input.b, u_input.e.x, 2147483647i, u_input.b), -vec4<i32>(-35976i, 5223i, 1i, 1i)), u_input.e);
    var_1 = (-2147483647i | _wgslsmith_sub_i32(0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 2539i, u_input.e.x, u_input.b), u_input.e))) >> (u_input.c % 32u);
    let var_2 = _wgslsmith_div_f32(601f, _wgslsmith_f_op_f32(sign(var_0.x)));
    let var_3 = Struct_1(vec2<i32>(max(22057i, u_input.b) | ((i32(-1i) * -28279i) << (_wgslsmith_div_u32(1u, 44426u) % 32u)), -_wgslsmith_mod_i32(2455i, -4895i)), 1u);
    return u_input.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1601f, -1357f, -1126f, -917f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(478f, 387f, 1000f, 290f)))))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-433f)), 466f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1992f - _wgslsmith_f_op_f32(-1000f * 1222f))), _wgslsmith_f_op_f32(-689f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-340f - 495f), _wgslsmith_f_op_f32(-1407f * 1000f))))), vec4<bool>(true, all(func_2(arg_2, true)), !(_wgslsmith_add_u32(4294967295u, u_input.c) <= _wgslsmith_sub_u32(4294967295u, 4294967295u)), true)));
    var var_1 = 1000f;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + var_0.x), _wgslsmith_f_op_f32(round(var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 1328f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-653f, _wgslsmith_f_op_f32(var_0.x + var_0.x)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x))), vec2<bool>(true, true)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(round(653f)), true))) * -817f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(221f, -991f, -324f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(860f, -337f, -2034f))))))) - vec3<f32>(-805f, _wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(u_input.d.xyz, u_input.d.zww)), vec3<i32>(func_1(), u_input.b, ~(-2147483647i)), Struct_1(u_input.e.ww ^ u_input.e.yy, ~1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -356f), -990f)) * _wgslsmith_f_op_f32(sign(101f)))));
    let var_1 = false;
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(select(u_input.a, 1u, var_1), ~_wgslsmith_dot_vec3_u32(u_input.d.wwx, u_input.d.yzz), _wgslsmith_add_u32(52531u, _wgslsmith_add_u32(1u, 11010u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.d.x, 4294967295u), ~u_input.d.yzw), ~(firstTrailingBit(u_input.d.yyw) | u_input.d.yzw));
    var var_3 = Struct_1(_wgslsmith_div_vec2_i32(-firstTrailingBit(vec2<i32>(0i, -48512i)), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), max(vec2<i32>(u_input.e.x, 0i), vec2<i32>(u_input.b, u_input.e.x)) >> (firstTrailingBit(vec2<u32>(u_input.c, 0u)) % vec2<u32>(32u)))), 11229u);
    let var_4 = Struct_1(abs(vec2<i32>(-1i) * -(vec2<i32>(-11541i, -35401i) << (var_2.zx % vec2<u32>(32u)))), firstTrailingBit(60239u) >> (~(~min(1u, var_2.x)) % 32u));
    var var_5 = var_4;
    global0 = array<vec3<i32>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-var_0.yy))));
}

