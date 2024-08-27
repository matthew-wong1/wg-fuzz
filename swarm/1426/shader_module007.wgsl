struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec4<u32>(1u, 0u, 39144u, 61074u), 1893u, vec3<f32>(-438f, 1273f, -2771f), Struct_1(14796i, vec4<u32>(4294967295u, 87751u, 43180u, 1u), true)), Struct_2(vec4<u32>(4294967295u, 67804u, 100251u, 4294967295u), 1u, vec3<f32>(-1000f, 1000f, 1139f), Struct_1(-28339i, vec4<u32>(4294967295u, 0u, 1u, 1u), false)), Struct_2(vec4<u32>(4294967295u, 52670u, 1u, 125135u), 26451u, vec3<f32>(-434f, -1000f, 1052f), Struct_1(45319i, vec4<u32>(4553u, 0u, 0u, 1u), true)), Struct_2(vec4<u32>(4294967295u, 40831u, 55409u, 13451u), 12202u, vec3<f32>(296f, -1250f, 586f), Struct_1(1i, vec4<u32>(1u, 0u, 65586u, 1u), true)), Struct_2(vec4<u32>(1u, 0u, 48432u, 0u), 0u, vec3<f32>(942f, 288f, 1000f), Struct_1(2853i, vec4<u32>(1u, 2860u, 19985u, 76371u), true)), Struct_2(vec4<u32>(0u, 30481u, 0u, 0u), 21089u, vec3<f32>(-434f, 315f, 1617f), Struct_1(55729i, vec4<u32>(1u, 1u, 0u, 38632u), true)), Struct_2(vec4<u32>(0u, 0u, 34098u, 4294967295u), 4294967295u, vec3<f32>(-1290f, -1176f, 216f), Struct_1(1i, vec4<u32>(74119u, 43212u, 2231u, 1u), false)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 75928u, 44899u), 11218u, vec3<f32>(-895f, -705f, 1000f), Struct_1(25979i, vec4<u32>(1u, 31131u, 1u, 4294967295u), false)), Struct_2(vec4<u32>(9265u, 27321u, 2281u, 15218u), 3951u, vec3<f32>(1227f, -1147f, 1000f), Struct_1(0i, vec4<u32>(0u, 0u, 13445u, 10264u), false)), Struct_2(vec4<u32>(5141u, 4294967295u, 4294967295u, 1u), 4294967295u, vec3<f32>(-597f, 1000f, -300f), Struct_1(1i, vec4<u32>(0u, 31217u, 4294967295u, 146719u), true)), Struct_2(vec4<u32>(0u, 1u, 8767u, 4294967295u), 58770u, vec3<f32>(-1000f, 612f, -156f), Struct_1(6587i, vec4<u32>(113505u, 37854u, 111207u, 4294967295u), false)), Struct_2(vec4<u32>(20819u, 1265u, 407u, 0u), 34777u, vec3<f32>(1514f, -934f, -1216f), Struct_1(-49553i, vec4<u32>(6787u, 69081u, 0u, 1u), false)), Struct_2(vec4<u32>(4294967295u, 1u, 2146u, 0u), 7451u, vec3<f32>(-493f, -1523f, -162f), Struct_1(2147483647i, vec4<u32>(5860u, 1u, 1u, 2176u), false)), Struct_2(vec4<u32>(12451u, 62891u, 24217u, 41371u), 1342u, vec3<f32>(1000f, -1072f, 1786f), Struct_1(0i, vec4<u32>(35169u, 4294967295u, 0u, 34868u), false)), Struct_2(vec4<u32>(36676u, 3847u, 4294967295u, 3954u), 0u, vec3<f32>(-1183f, -1861f, -340f), Struct_1(i32(-2147483648), vec4<u32>(24730u, 1612u, 4294967295u, 1u), true)), Struct_2(vec4<u32>(102107u, 1u, 0u, 4294967295u), 75287u, vec3<f32>(-1695f, -194f, -222f), Struct_1(1i, vec4<u32>(1u, 26241u, 0u, 54397u), true)), Struct_2(vec4<u32>(4294967295u, 19502u, 21174u, 5659u), 110949u, vec3<f32>(-911f, -1260f, -1000f), Struct_1(-41711i, vec4<u32>(28063u, 4294967295u, 36936u, 5153u), true)), Struct_2(vec4<u32>(124452u, 0u, 4294967295u, 2107u), 43637u, vec3<f32>(598f, 1659f, -482f), Struct_1(0i, vec4<u32>(0u, 4294967295u, 21771u, 14233u), true)), Struct_2(vec4<u32>(29752u, 1u, 36787u, 0u), 1u, vec3<f32>(-1000f, -1889f, -375f), Struct_1(16248i, vec4<u32>(0u, 38708u, 1u, 4294967295u), true)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 50624u, 4294967295u), 67269u, vec3<f32>(668f, 1548f, -1501f), Struct_1(10072i, vec4<u32>(0u, 86642u, 0u, 15648u), false)), Struct_2(vec4<u32>(20244u, 0u, 5980u, 1u), 1u, vec3<f32>(-216f, -1033f, 342f), Struct_1(-1i, vec4<u32>(19703u, 20899u, 87141u, 6952u), false)));

var<private> global1: array<vec4<f32>, 14>;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0.c;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(abs(arg_0.b.x) << (~_wgslsmith_dot_vec4_u32(arg_0.b, arg_0.b) % 32u)), 51493u), 14u)];
    let var_2 = _wgslsmith_f_op_f32(-1f);
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - var_1.x), _wgslsmith_f_op_f32(-362f - 1029f), _wgslsmith_f_op_f32(f32(-1f) * -153f), var_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_0.b.x, 14u)]) * _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(arg_0.b.x, 14u)]))) - global1[_wgslsmith_index_u32(1u, 14u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2), var_1.x, 491f, _wgslsmith_f_op_f32(var_1.x - var_2)) + vec4<f32>(var_1.x, 218f, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_div_f32(var_2, -1301f)))));
    global1 = array<vec4<f32>, 14>();
    return !select(select(vec4<bool>(true, false, all(vec4<bool>(false, arg_0.c, global2.x, false)), true), vec4<bool>(arg_0.c & true, arg_0.c, select(global2.x, true, true), any(global2.zw)), all(!global2.yzw)), !vec4<bool>(true, global2.x, true, false), var_0);
}

fn func_2() -> vec4<u32> {
    var var_0 = !select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), func_3(Struct_1(u_input.a.x, vec4<u32>(35221u, 32593u, 1u, 48037u), global2.x))), func_3(Struct_1(-2147483647i, ~vec4<u32>(1u, 1u, 4294967295u, 51019u), global2.x)), !global2.x);
    global2 = vec4<bool>(true, var_0.x || all(vec3<bool>(true, var_0.x | false, true)), false, 356f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1127f))));
    var_0 = select(vec4<bool>(true & all(vec3<bool>(true, var_0.x, global2.x)), true, all(!(!vec4<bool>(global2.x, true, var_0.x, var_0.x))), func_3(Struct_1(-64835i, vec4<u32>(1u, 1u, 1u, 1u), false | var_0.x)).x), !(!(!func_3(Struct_1(u_input.a.x, vec4<u32>(64231u, 0u, 0u, 1u), true)))), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (~1u % 32u), min(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x))) != -9896i);
    global2 = vec4<bool>(true, all(vec2<bool>(var_0.x, select(all(vec4<bool>(false, false, true, true)), var_0.x | global2.x, !global2.x))), false, global2.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-1517f)), _wgslsmith_f_op_f32(f32(-1f) * -899f), -1777f, _wgslsmith_f_op_f32(round(1160f))))));
    return reverseBits(~(~(~vec4<u32>(1u, 1u, 1u, 1u))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -firstTrailingBit(_wgslsmith_sub_vec3_i32(arg_3.wyy, vec3<i32>(u_input.a.x, -34833i, 39195i))), ~(vec3<i32>(-78103i, max(arg_3.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(24859i, u_input.a.x, 1i, 2147483647i), vec4<i32>(-1i, u_input.a.x, -2147483647i, 12509i))) >> (arg_2.a % vec3<u32>(32u))));
    global1 = array<vec4<f32>, 14>();
    return _wgslsmith_add_vec4_u32(select(~(~vec4<u32>(arg_2.a.x, 53375u, arg_2.a.x, 0u) & ~vec4<u32>(0u, 0u, 1u, arg_2.a.x)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_2.a.x, arg_2.a.x, 18224u, 1u)), ~firstLeadingBit(vec4<u32>(4294967295u, arg_2.a.x, 57045u, 4294967295u))), false), ~func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(func_1(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(40672u, 14u)]), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-250f, 1047f, 193f), vec3<f32>(-782f, -180f, -781f))), Struct_4(vec3<u32>(4294967295u, 30985u, 46237u), true), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 28694i) & vec4<i32>(2147483647i, -73259i, -26318i, -2147483647i)) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec4_u32(~vec4<u32>(35140u, 0u, 1u, 0u), vec4<u32>(65576u, 4294967295u, 0u, 0u))), global2.x), 1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1481f, -373f, 489f) * vec3<f32>(-814f, -848f, -1534f)), vec3<f32>(-150f, 1597f, -809f), global2.zwz)) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, -241f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1358f, -2371f, 110f) - vec3<f32>(-1000f, 484f, -1755f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(218f, 451f, -631f), vec3<f32>(-920f, 2023f, -711f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-455f, -648f, -443f))))))), Struct_1(-24707i, ~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), global2.x));
    var var_1 = select(vec4<u32>(var_0.b, countOneBits(_wgslsmith_sub_u32(4294967295u & var_0.d.b.x, _wgslsmith_sub_u32(27014u, var_0.d.b.x))), 0u, 4294967295u), vec4<u32>(select(~(49239u >> (1u % 32u)), firstLeadingBit(2722u) ^ (var_0.a.x << (27493u % 32u)), true), 4294967295u, _wgslsmith_clamp_u32(4294967295u, var_0.b, 1u), ~1u), vec4<bool>(var_0.d.c, false, global2.x, false));
    global1 = array<vec4<f32>, 14>();
    var var_2 = var_0.d.b.x;
    let var_3 = _wgslsmith_div_f32(-1382f, 2036f);
    var var_4 = Struct_4(~(~vec3<u32>(~82810u, _wgslsmith_mod_u32(var_1.x, var_1.x), max(18439u, 84702u))), select(var_0.d.c, false, (1u >> (abs(var_0.d.b.x) % 32u)) < 1u));
    var_1 = ~_wgslsmith_add_vec4_u32(abs(~vec4<u32>(var_1.x, 1u, var_1.x, 620u)), var_0.d.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -1641f, _wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(trunc(var_0.c.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(global1[_wgslsmith_index_u32(var_1.x, 14u)], global1[_wgslsmith_index_u32(var_0.d.b.x, 14u)])))))), vec4<f32>(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1995f))), -1536f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(var_3 * var_0.c.x)))));
}

