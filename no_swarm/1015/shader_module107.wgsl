struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: Struct_3,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -175f;

var<private> global1: bool = true;

var<private> global2: vec4<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    global2 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(arg_3.b.x, -39560i, arg_3.b.x, 57063i) | vec4<i32>(0i, global2.x, -2147483647i, 1i)), firstTrailingBit(vec4<i32>(-2147483647i, u_input.a, 1i, -2147483647i))), (vec4<i32>(u_input.a, -13511i, u_input.a, arg_3.b.x) | (vec4<i32>(global2.x, u_input.a, global2.x, u_input.a) >> (vec4<u32>(4294967295u, 4294967295u, 15231u, 0u) % vec4<u32>(32u)))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)));
    let var_1 = Struct_4(Struct_2(vec3<bool>(true, true, true), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, 21164u, 84488u, 0u), vec4<u32>(18564u, 44292u, 4294967295u, 35220u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), u_input.a >> (~(~49870u) % 32u));
    let var_2 = var_1;
    var_0 = var_1.a.a.zx;
    return any(select(!vec2<bool>(false, 100672u <= var_1.a.b.x), !select(select(vec2<bool>(false, var_1.a.a.x), vec2<bool>(false, true), var_2.a.a.xz), !vec2<bool>(true, var_2.a.a.x), true), select(arg_2, var_1.a.a.zx, true)));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = Struct_4(Struct_2(vec3<bool>(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(532f, -172f, 1583f, -1458f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-399f, 819f, -1320f) + vec3<f32>(826f, -160f, 822f)), vec2<bool>(true, true), Struct_1(vec4<f32>(182f, -1718f, -902f, -1743f), vec2<i32>(11438i, 2147483647i))), !all(vec2<bool>(true, false)), select(true, true, any(vec4<bool>(false, false, false, false)))), _wgslsmith_mult_vec4_u32(~(~arg_0), arg_0 ^ abs(arg_0))), -(~1441i));
    let var_1 = _wgslsmith_add_vec2_u32(select(_wgslsmith_mod_vec2_u32(reverseBits(var_0.a.b.yy) | ~vec2<u32>(4294967295u, var_0.a.b.x), var_0.a.b.zy), _wgslsmith_mult_vec2_u32(~(~arg_0.zy), arg_0.zz), !(!var_0.a.a.xx)), var_0.a.b.zw);
    var_0 = Struct_4(var_0.a, u_input.a);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1f), 181f, 1105f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1969f)) * _wgslsmith_div_f32(-491f, 1371f))))));
    var var_3 = _wgslsmith_f_op_f32(var_2.x * var_2.x);
    return ~13219u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32) -> vec3<bool> {
    let var_0 = 1u;
    global1 = false;
    var var_1 = ~_wgslsmith_add_i32(40469i, ~_wgslsmith_add_i32(firstLeadingBit(u_input.a), -global2.x));
    global0 = -1549f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1691f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(ceil(arg_2)))))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2))));
    return select(vec3<bool>(!(!select(true, false, arg_0)), any(!vec4<bool>(false, arg_0, true, true)), any(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)))), !(!select(vec3<bool>(true, arg_0, true), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, true)), !vec3<bool>(arg_0, false, true))), !vec3<bool>(arg_0, !(!arg_0), true));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> i32 {
    global1 = arg_1 && any(func_4(false, func_2(vec4<u32>(1u, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -513f)));
    let var_0 = vec3<bool>(true, arg_0.b.a.x, !arg_1);
    var var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a, global2.x, arg_0.a.b.x), vec4<i32>(44238i, -42086i, global2.x, -2147483647i)) >> (vec4<u32>(6362u, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, global2.x), vec4<i32>(global2.x, u_input.a, -2147483647i, arg_0.a.b.x))), -vec4<i32>(-36776i, global2.x, -1i, arg_0.a.b.x))), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.b.x, global2.x, -17690i, u_input.a), -vec4<i32>(arg_0.a.b.x, global2.x, 683i, global2.x)) ^ ~abs(vec4<i32>(40902i, 16378i, -2147483647i, 37680i))));
    let var_2 = Struct_2(!select(select(vec3<bool>(false, true, false), !var_0, vec3<bool>(var_0.x, arg_0.b.a.x, arg_1)), vec3<bool>(arg_1, true, var_0.x), func_4(func_3(arg_0.d, vec3<f32>(arg_0.d.x, arg_0.c, arg_0.a.a.x), arg_0.b.a.xz, Struct_1(arg_0.a.a, vec2<i32>(-27361i, global2.x))), arg_0.b.b.x, arg_0.a.a.x)), abs(~_wgslsmith_clamp_vec4_u32(~arg_0.b.b, countOneBits(arg_0.b.b), arg_0.b.b)));
    var var_3 = arg_0.c;
    return _wgslsmith_clamp_i32(_wgslsmith_add_i32(countOneBits(u_input.a), min(~(-1i), _wgslsmith_mod_i32(37428i, global2.x))), global2.x, -1430i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(vec4<bool>(false, -func_1(Struct_3(Struct_1(vec4<f32>(-161f, -794f, -297f, -860f), vec2<i32>(global2.x, u_input.a)), Struct_2(vec3<bool>(false, false, false), vec4<u32>(42534u, 1u, 64097u, 816u)), 476f, vec4<f32>(-317f, -1311f, 1056f, -1101f)), true) <= 62347i, func_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1677f, 1514f, 1139f, 1068f)), vec4<f32>(-1000f, 835f, 936f, -122f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, -335f, 444f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-271f, -1598f, -882f) + vec3<f32>(884f, 1771f, -853f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), global2.ww)), (func_4(false, 16397u, -323f).x | (u_input.a > 2147483647i)) & false), Struct_4(Struct_2(vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 1u, 1u)), abs(global2.x)), Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(2037f, 224f, 991f, -748f), vec4<f32>(1119f, 689f, -1039f, -263f), true)) + _wgslsmith_div_vec4_f32(vec4<f32>(-237f, -228f, -819f, -356f), vec4<f32>(-1067f, 1243f, 525f, 602f))), _wgslsmith_sub_vec2_i32(abs(global2.zw), vec2<i32>(u_input.a, global2.x))), Struct_2(vec3<bool>(false, true, false), vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(79304u, 918u), vec2<u32>(16570u, 6283u)), ~4294967295u, ~1u)), _wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(f32(-1f) * -1165f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(-477f, -1098f)), _wgslsmith_f_op_f32(f32(-1f) * -886f), 2317f))), firstTrailingBit(vec3<u32>(21428u, _wgslsmith_div_u32(12361u, ~78297u), min(10288u, ~6677u))), global2.yz);
    global2 = min(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i & var_0.b.b, _wgslsmith_div_i32(var_0.b.b, 2147483647i), countOneBits(2147483647i), var_0.b.b >> (var_0.c.b.b.x % 32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2799i, 53563i) ^ vec4<i32>(u_input.a, global2.x, var_0.e.x, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 6869i, -1i), vec4<i32>(34961i, var_0.c.a.b.x, 1i, -3371i))), -max(vec4<i32>(-28355i, global2.x, var_0.e.x, 0i), vec4<i32>(1i, var_0.c.a.b.x, -32481i, global2.x))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, global2.x, 46471i, 1i), vec4<i32>(global2.x, var_0.e.x, 1i, -2147483647i), vec4<i32>(-2147483647i, var_0.e.x, 1i, 27547i)), min(vec4<i32>(-16906i, 48125i, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, 5147i, -17670i)), !var_0.c.b.a.x) | (vec4<i32>(-1i) * -vec4<i32>(6731i, u_input.a, 1i, 41670i))), select(vec4<i32>(-global2.x, ~global2.x, global2.x, abs(~u_input.a)), max(vec4<i32>(i32(-1i) * -6478i, abs(40040i), u_input.a, _wgslsmith_mult_i32(global2.x, global2.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global2.x, u_input.a, -1603i), vec4<i32>(var_0.c.a.b.x, var_0.c.a.b.x, -1030i, -38258i)), abs(vec4<i32>(var_0.b.b, global2.x, -2147483647i, u_input.a)))), var_0.a));
    global0 = var_0.c.a.a.x;
    var_0 = Struct_5(select(!(!vec4<bool>(var_0.c.b.a.x, false, false, false)), !vec4<bool>(var_0.a.x, var_0.a.x | true, true, all(var_0.a.zyy)), var_0.a.x), Struct_4(var_0.b.a, abs(38667i)), var_0.c, vec3<u32>(max(var_0.d.x, _wgslsmith_dot_vec4_u32(var_0.b.a.b, var_0.b.a.b)), var_0.d.x, _wgslsmith_sub_u32(countOneBits(countOneBits(57468u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(13715u, var_0.c.b.b.x)))), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-var_0.c.a.b, max(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, 8082i), global2.zw), global2.zy), vec2<i32>(~u_input.a, 1i | _wgslsmith_mod_i32(-13366i, u_input.a))));
    var var_1 = var_0.c.b.b.x >= select(var_0.b.a.b.x, 1u, var_0.c.b.a.x && true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.b.x, ~select(vec4<i32>(global2.x, var_0.c.a.b.x, var_0.e.x, -9265i) << (reverseBits(vec4<u32>(86195u, 4294967295u, 1836u, 0u)) % vec4<u32>(32u)), vec4<i32>(u_input.a | global2.x, ~(-2147483647i), 1i, ~10062i), false), var_0.c.a.b.x, firstTrailingBit(0u), -2147483647i);
}

