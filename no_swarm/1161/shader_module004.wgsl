struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1559f, vec2<u32>(1u, 0u));

var<private> global1: bool = false;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<i32>(6446i, 57195i, 1i, 1i), vec3<i32>(-1i, 7920i, 22818i), vec2<f32>(-579f, 284f)), Struct_1(vec4<i32>(-1i, 11265i, i32(-2147483648), -39427i), vec3<i32>(-1i, -38535i, -6728i), vec2<f32>(473f, -252f)), Struct_1(vec4<i32>(9929i, -55416i, -60965i, -4661i), vec3<i32>(18807i, 0i, -33950i), vec2<f32>(1304f, -547f)), Struct_1(vec4<i32>(2147483647i, 36408i, 0i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -1i), vec2<f32>(-788f, -755f)), Struct_1(vec4<i32>(1i, -41556i, 966i, 2147483647i), vec3<i32>(53850i, 1i, -1174i), vec2<f32>(-1488f, -435f)), Struct_1(vec4<i32>(1i, 0i, -31937i, 2147483647i), vec3<i32>(2147483647i, 19623i, -337i), vec2<f32>(-403f, 174f)), Struct_1(vec4<i32>(15073i, 56295i, -1i, 4961i), vec3<i32>(12924i, -1i, -2552i), vec2<f32>(-696f, -973f)), Struct_1(vec4<i32>(1i, 2147483647i, 41300i, 1i), vec3<i32>(-134i, -38413i, -29022i), vec2<f32>(-675f, 836f)), Struct_1(vec4<i32>(17225i, -1i, 10560i, 1613i), vec3<i32>(-1i, 7883i, 0i), vec2<f32>(1000f, 1941f)), Struct_1(vec4<i32>(5401i, i32(-2147483648), -16702i, 12665i), vec3<i32>(18953i, 10562i, -13059i), vec2<f32>(-1587f, 107f)), Struct_1(vec4<i32>(2147483647i, -1i, 1i, 28213i), vec3<i32>(i32(-2147483648), i32(-2147483648), -47502i), vec2<f32>(-463f, -2215f)), Struct_1(vec4<i32>(31903i, 12104i, -44532i, 16466i), vec3<i32>(-1i, -1i, 0i), vec2<f32>(441f, 463f)), Struct_1(vec4<i32>(i32(-2147483648), -2171i, -91011i, -19991i), vec3<i32>(2147483647i, -1i, 18448i), vec2<f32>(1000f, 1000f)), Struct_1(vec4<i32>(0i, i32(-2147483648), -11654i, -1i), vec3<i32>(20531i, 35604i, 2147483647i), vec2<f32>(175f, 1000f)), Struct_1(vec4<i32>(0i, 39405i, 0i, 1i), vec3<i32>(8645i, 1i, 5611i), vec2<f32>(-1310f, -686f)), Struct_1(vec4<i32>(i32(-2147483648), 7815i, -84596i, 43584i), vec3<i32>(-1i, 26307i, i32(-2147483648)), vec2<f32>(908f, 562f)), Struct_1(vec4<i32>(2147483647i, -21593i, i32(-2147483648), 0i), vec3<i32>(-21002i, -1i, 1i), vec2<f32>(-1236f, 1000f)), Struct_1(vec4<i32>(2147483647i, 1i, -1i, -4047i), vec3<i32>(-17902i, 1i, -1i), vec2<f32>(-317f, 1167f)), Struct_1(vec4<i32>(1i, i32(-2147483648), 31590i, -16003i), vec3<i32>(-27828i, -1i, 0i), vec2<f32>(-1190f, 1151f)), Struct_1(vec4<i32>(2147483647i, 41616i, -3440i, -75644i), vec3<i32>(0i, -32903i, 0i), vec2<f32>(-579f, -292f)), Struct_1(vec4<i32>(91145i, 0i, i32(-2147483648), -3437i), vec3<i32>(66654i, i32(-2147483648), i32(-2147483648)), vec2<f32>(1000f, 1000f)), Struct_1(vec4<i32>(1i, 26219i, i32(-2147483648), 1i), vec3<i32>(0i, -32445i, 2147483647i), vec2<f32>(-136f, 536f)), Struct_1(vec4<i32>(-1i, -23774i, 0i, -1i), vec3<i32>(2270i, 0i, i32(-2147483648)), vec2<f32>(-1181f, 1000f)), Struct_1(vec4<i32>(-24468i, -13473i, -17229i, 9317i), vec3<i32>(-1i, 54283i, 1i), vec2<f32>(482f, 1591f)), Struct_1(vec4<i32>(6206i, -1i, 83487i, 0i), vec3<i32>(38578i, 2147483647i, -50234i), vec2<f32>(117f, 285f)));

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> u32 {
    global2 = Struct_1(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-arg_2, -global2.a.x, abs(1i), ~global2.b.x)), vec4<i32>(1i, abs(-45070i), -1i, abs(global2.b.x))), -countOneBits(vec3<i32>(-14827i, arg_2, 3625i)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(global2.c)))));
    var var_0 = select(firstTrailingBit(firstLeadingBit(vec4<i32>(-arg_2, ~u_input.b.x, countOneBits(2147483647i), arg_2))), _wgslsmith_mod_vec4_i32(-vec4<i32>(-14498i << (arg_3.b.x % 32u), ~(-1i), 15021i, _wgslsmith_clamp_i32(1i, 1i, arg_2)), ~(~(vec4<i32>(0i, 36019i, u_input.a, u_input.b.x) << (vec4<u32>(global0.b.x, 4294967295u, 1u, arg_3.b.x) % vec4<u32>(32u))))), !(!arg_0.a));
    global1 = _wgslsmith_f_op_f32(round(-134f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.a)))), -1000f);
    return global0.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<f32>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_3(global4.x);
    let var_1 = Struct_2(arg_2.x, min(global0.b, vec2<u32>(1u, func_3(Struct_3(arg_0.x), _wgslsmith_f_op_f32(global0.a + -838f), -2147483647i, Struct_2(arg_3, global0.b)))));
    let var_2 = 42073i;
    let var_3 = abs(select(abs(firstTrailingBit(-1i) ^ -65206i), _wgslsmith_mod_i32(u_input.a, -1i), true || any(global4.xxx)));
    var var_4 = var_1;
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>) -> vec3<f32> {
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.x, _wgslsmith_div_u32(global0.b.x, 0u)), 25u)];
    let var_0 = ~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 0u), vec2<u32>(global0.b.x, _wgslsmith_mod_u32(24956u, arg_1.x))), global0.b.x);
    global4 = !select(vec4<bool>(any(!vec4<bool>(global4.x, arg_0.a, false, global4.x)), global4.x, !any(global4.zyy), true), vec4<bool>(all(global4.wyz), arg_0.a, true, ~u_input.a < global2.a.x), !select(vec4<bool>(false, true, false, global4.x), vec4<bool>(false, arg_0.a, true, true), global2.c.x >= global0.a));
    let var_1 = global0.b;
    let var_2 = Struct_2(422f, global0.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(994f, 1372f, global0.a))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, -159f, -1134f) - vec3<f32>(238f, global0.a, global0.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(833f, var_2.a, global2.c.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_4(func_2(vec4<bool>(global4.x, global4.x, all(vec4<bool>(true, true, true, false)), !global4.x), ~arg_1.b.x, _wgslsmith_f_op_vec2_f32(select(global2.c, vec2<f32>(arg_1.a, global0.a), all(vec4<bool>(global4.x, true, true, global4.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1060f))))), select(~vec3<u32>(4294967295u, 40899u, 0u), firstTrailingBit(abs(vec3<u32>(arg_1.b.x, arg_1.b.x, arg_0))), u_input.b.x < (-1i << (0u % 32u))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)), global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c.x)))), _wgslsmith_f_op_f32(abs(global0.a)), global2.c.x), !vec3<bool>(false, !(global4.x == global4.x), all(select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(true, true, global4.x, global4.x), true)))));
    let var_1 = ~arg_1.b.x;
    var var_2 = arg_1;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-953f - -1000f), -729f, global2.c.x) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-479f, -126f, var_2.a)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, -528f, -479f), vec3<f32>(-1000f, arg_1.a, var_2.a))))))) + vec3<f32>(global2.c.x, _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(603f + -1596f)), 1f));
    global4 = vec4<bool>(false, true, true, any(global4.xxx));
    return vec3<i32>(~min(global2.b.x, 82047i), ~(_wgslsmith_sub_i32(-30886i, u_input.a) & global2.b.x) | (global2.a.x | global2.b.x), _wgslsmith_add_i32(31228i, -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), global2.b.yx) << ((arg_0 ^ 79696u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstTrailingBit(global2.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, -13484i), vec3<i32>(_wgslsmith_clamp_i32(1i, global2.a.x, global2.a.x), ~global2.b.x, ~(-14799i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(1637i, 28032i, 0i), vec3<i32>(1i, global2.a.x, -65755i), func_1(global0.b.x, Struct_2(324f, vec2<u32>(16987u, 0u))))), vec2<f32>(global0.a, 1568f));
    global3 = array<Struct_1, 25>();
    let var_1 = ~37690u;
    global1 = any(select(vec4<bool>(global4.x, false, !global4.x, any(vec4<bool>(false, global4.x, global4.x, false))), select(select(!vec4<bool>(true, global4.x, global4.x, false), vec4<bool>(global4.x, true, global4.x, global4.x), true), select(vec4<bool>(false, global4.x, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, false, true), true), select(false, false, all(vec4<bool>(global4.x, true, global4.x, true)))), true));
    var var_2 = Struct_3(global4.x);
    global3 = array<Struct_1, 25>();
    var var_3 = func_2(select(select(!vec4<bool>(var_2.a, false, true, true), !(!vec4<bool>(true, var_2.a, false, global4.x)), vec4<bool>(true, global0.a <= -1269f, true, true)), select(!select(vec4<bool>(global4.x, var_2.a, global4.x, false), vec4<bool>(true, global4.x, false, global4.x), false), !select(vec4<bool>(true, global4.x, false, true), vec4<bool>(true, global4.x, false, global4.x), false), !(!var_2.a)), vec4<bool>(true != !var_2.a, true, false, true)), ~global0.b.x >> (~var_1 % 32u), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)))));
    global3 = array<Struct_1, 25>();
    let var_4 = -vec3<i32>(global2.a.x, firstLeadingBit(_wgslsmith_add_i32(48610i, global2.b.x >> (var_1 % 32u))), global2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(13452i), var_1, var_0.c.x);
}

