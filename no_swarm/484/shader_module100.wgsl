struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<f32>(-1000f, 153f, -1052f, 333f), 0i, 533f), Struct_1(vec4<f32>(-507f, -819f, 1116f, 127f), 33865i, -1420f), Struct_1(vec4<f32>(196f, -365f, -1000f, -168f), -1i, -125f), Struct_1(vec4<f32>(-2150f, 503f, 716f, 1000f), 2147483647i, 1988f), Struct_1(vec4<f32>(-1000f, 304f, 590f, -1721f), 0i, -358f), Struct_1(vec4<f32>(-1232f, 947f, -566f, -1618f), 2147483647i, 169f), Struct_1(vec4<f32>(467f, 1000f, 386f, -1050f), 0i, -550f), Struct_1(vec4<f32>(716f, 1335f, -457f, -1281f), 4703i, -261f), Struct_1(vec4<f32>(1251f, -1000f, -739f, -1837f), 2147483647i, -874f), Struct_1(vec4<f32>(1427f, 1117f, -1182f, 264f), i32(-2147483648), -1242f), Struct_1(vec4<f32>(-1840f, 828f, 629f, 1513f), 40263i, -1040f), Struct_1(vec4<f32>(-824f, -889f, -1076f, -890f), i32(-2147483648), -125f), Struct_1(vec4<f32>(1000f, 1951f, 918f, -211f), 0i, -1000f), Struct_1(vec4<f32>(1136f, -582f, 678f, -514f), -30035i, 2442f), Struct_1(vec4<f32>(-1164f, 255f, -562f, 506f), 0i, -1000f), Struct_1(vec4<f32>(751f, 827f, -908f, -950f), 0i, 171f), Struct_1(vec4<f32>(1000f, -738f, 424f, -742f), -38065i, 863f), Struct_1(vec4<f32>(245f, -1000f, 1777f, 1220f), -1i, 993f), Struct_1(vec4<f32>(148f, 2471f, -109f, 145f), -33853i, 227f), Struct_1(vec4<f32>(-246f, -561f, -739f, 1000f), 2147483647i, 605f), Struct_1(vec4<f32>(-471f, 475f, -351f, 1331f), -15610i, -1000f), Struct_1(vec4<f32>(1635f, -188f, -363f, -1119f), 0i, -1454f), Struct_1(vec4<f32>(1338f, -1317f, 1000f, 160f), -51354i, -1138f), Struct_1(vec4<f32>(1000f, -1000f, -1315f, -1457f), 1i, 847f), Struct_1(vec4<f32>(1190f, 626f, -894f, 726f), -1i, 120f), Struct_1(vec4<f32>(-630f, -373f, -588f, 1000f), -60262i, -693f), Struct_1(vec4<f32>(1600f, -1000f, -1000f, 1000f), -31231i, -2520f), Struct_1(vec4<f32>(-1575f, 657f, 359f, 1000f), -1i, 1164f), Struct_1(vec4<f32>(-787f, -2062f, -165f, -142f), 2147483647i, 1224f), Struct_1(vec4<f32>(1295f, 1014f, -996f, 381f), 2147483647i, 413f), Struct_1(vec4<f32>(-1187f, 238f, -588f, -367f), 1i, -541f), Struct_1(vec4<f32>(319f, -871f, 210f, 837f), -21234i, -502f));

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool) -> i32 {
    return 13098i;
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = global1.x;
    var var_1 = arg_0.a.x;
    var_1 = !((arg_0.a.x & true) && arg_0.a.x);
    global0 = array<Struct_1, 32>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -2388f, global1.x) * vec3<f32>(global1.x, global1.x, global1.x))), vec3<f32>(-584f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2580f, global1.x, 494f), vec3<f32>(global1.x, -291f, -651f), true))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1381f, global1.x, 327f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(412f, -1466f, 621f)), true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1083f, global1.x, global1.x), vec3<f32>(global1.x, global1.x, 1256f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1110f, 186f, 893f))))), !select(true, false, arg_0.a.x))))));
    return select(arg_0.a, arg_0.a, !arg_0.a);
}

fn func_2() -> Struct_1 {
    var var_0 = global1.x;
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x + global1.x)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-364f, 1059f, 1000f, 1000f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(354f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(floor(global1.x))))), -38245i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - 1544f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))))));
    let var_2 = Struct_2(select(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), func_3(Struct_2(vec2<bool>(false, true))), any(vec4<bool>(true, true, false, false))), vec2<bool>(true, true)), true));
    var var_3 = global0[_wgslsmith_index_u32(u_input.e.x, 32u)];
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -490f, -516f, global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1166f, -1244f, global1.x) + vec4<f32>(-1590f, -919f, global1.x, global1.x)), any(vec4<bool>(false, false, false, false))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1844f) - global1.x), _wgslsmith_f_op_f32(-729f * global1.x), -145f, global1.x))), -(u_input.c.x >> (85957u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))));
    let var_1 = func_1(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)))) ^ ~_wgslsmith_add_i32(0i, var_0.b);
    var var_2 = func_2();
    let var_3 = Struct_2(select(select(vec2<bool>(true, u_input.d.x < var_1), vec2<bool>(true, true), true), vec2<bool>(select(all(vec2<bool>(false, true)), func_3(Struct_2(vec2<bool>(false, false))).x, true), select(true, false, any(vec2<bool>(true, false)))), true));
    let var_4 = var_3.a.x;
    var var_5 = select(_wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(u_input.d.x, u_input.c.x, _wgslsmith_dot_vec4_i32(min(vec4<i32>(18527i, 20691i, var_2.b, 13407i), vec4<i32>(9702i, u_input.c.x, 88968i, var_1)), select(u_input.d, u_input.d, var_3.a.x)))), firstLeadingBit(u_input.d.yxy), select(vec3<bool>(_wgslsmith_f_op_f32(ceil(var_0.c)) != _wgslsmith_f_op_f32(-var_2.a.x), false, false), !vec3<bool>(var_4, var_3.a.x, func_3(var_3).x), (all(vec3<bool>(var_3.a.x, var_3.a.x, var_3.a.x)) & true) | false));
    var var_6 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(min(reverseBits(u_input.c), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(4351i, -85537i, -56895i), u_input.c), vec3<i32>(var_1, 1699i, 71004i))), u_input.c & _wgslsmith_add_vec3_i32(vec3<i32>(var_2.b, var_2.b, 2147483647i), u_input.c), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(62610i, var_5.x, var_0.b), u_input.d.wzz) & vec3<i32>(9967i, u_input.d.x, var_1), vec3<i32>(~var_2.b, 4618i, -2147483647i))));
    var var_7 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-133f, -1277f, global1.x, 665f) - var_2.a)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.a))))), -(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(var_5.x, 2147483647i), vec2<i32>(47620i, -97509i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec3<i32>(i32(-1i) * -(u_input.c.x << (11006u % 32u)), _wgslsmith_mod_i32(abs(-51470i), max(firstLeadingBit(17430i), _wgslsmith_mod_i32(-23321i, var_0.b))), var_1), vec4<i32>(var_2.b, 70925i, 16347i, _wgslsmith_add_i32(countOneBits(reverseBits(var_2.b)), var_1)), ~vec3<u32>(u_input.e.x >> (1174u % 32u), u_input.e.x, u_input.e.x) | vec3<u32>(1u, ~(~u_input.b), u_input.b), firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_i32(2147483647i << (u_input.a % 32u), ~(-1723i), _wgslsmith_mult_i32(-10635i, 800i)))));
}

