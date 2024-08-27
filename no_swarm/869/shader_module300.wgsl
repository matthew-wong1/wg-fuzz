struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 49594u);

var<private> global1: i32;

var<private> global2: u32 = 58490u;

var<private> global3: array<Struct_5, 29> = array<Struct_5, 29>(Struct_5(379f, -1448f, Struct_2(vec3<i32>(i32(-2147483648), 1i, -42735i))), Struct_5(-787f, 3213f, Struct_2(vec3<i32>(-1i, 14100i, 1i))), Struct_5(-571f, 1699f, Struct_2(vec3<i32>(13314i, 1i, 0i))), Struct_5(-880f, -818f, Struct_2(vec3<i32>(-30641i, -3116i, 664i))), Struct_5(622f, -342f, Struct_2(vec3<i32>(-31318i, i32(-2147483648), 0i))), Struct_5(-1055f, -1304f, Struct_2(vec3<i32>(1340i, -33626i, i32(-2147483648)))), Struct_5(-885f, -843f, Struct_2(vec3<i32>(1i, -70561i, 2147483647i))), Struct_5(344f, -1632f, Struct_2(vec3<i32>(-35616i, 0i, 2147483647i))), Struct_5(266f, 839f, Struct_2(vec3<i32>(i32(-2147483648), 0i, -1i))), Struct_5(-594f, 629f, Struct_2(vec3<i32>(2147483647i, i32(-2147483648), -4201i))), Struct_5(-487f, 1000f, Struct_2(vec3<i32>(-1i, i32(-2147483648), -1i))), Struct_5(-1906f, 1116f, Struct_2(vec3<i32>(0i, -1148i, -1i))), Struct_5(-224f, 1096f, Struct_2(vec3<i32>(1i, -758i, 0i))), Struct_5(-1286f, 433f, Struct_2(vec3<i32>(-37751i, i32(-2147483648), -1i))), Struct_5(302f, 583f, Struct_2(vec3<i32>(23158i, -35510i, 1412i))), Struct_5(-555f, -1336f, Struct_2(vec3<i32>(1i, 40117i, 41327i))), Struct_5(-1208f, 620f, Struct_2(vec3<i32>(0i, 6256i, 1i))), Struct_5(1216f, 808f, Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i))), Struct_5(536f, 586f, Struct_2(vec3<i32>(1i, -8655i, -16366i))), Struct_5(-263f, -1417f, Struct_2(vec3<i32>(21248i, -26094i, i32(-2147483648)))), Struct_5(-520f, 964f, Struct_2(vec3<i32>(-8539i, 1i, 13845i))), Struct_5(-1010f, -1000f, Struct_2(vec3<i32>(50458i, 9192i, 54206i))), Struct_5(1568f, -269f, Struct_2(vec3<i32>(-58637i, i32(-2147483648), -1i))), Struct_5(-2329f, 2660f, Struct_2(vec3<i32>(i32(-2147483648), -35320i, 0i))), Struct_5(-289f, 1730f, Struct_2(vec3<i32>(i32(-2147483648), 12182i, 1i))), Struct_5(1410f, -140f, Struct_2(vec3<i32>(0i, -14017i, -28056i))), Struct_5(-1548f, -2070f, Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)))), Struct_5(386f, -1000f, Struct_2(vec3<i32>(1i, 2147483647i, -11436i))), Struct_5(-510f, 621f, Struct_2(vec3<i32>(67793i, i32(-2147483648), 0i))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> i32 {
    return arg_1.x;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_4(Struct_3(arg_1.d, arg_1.b, !(!select(vec3<bool>(false, arg_1.e.x, arg_3.x), vec3<bool>(true, true, arg_3.x), true)), 1i, arg_3.zxz), Struct_3(~(~arg_1.b.a.x) >> (~839u % 32u), Struct_2(~(-vec3<i32>(0i, arg_1.d, -46227i))), !arg_3.zww, ~func_3(_wgslsmith_div_vec3_f32(vec3<f32>(-477f, arg_2, arg_2), vec3<f32>(arg_2, arg_2, 1419f)), -vec4<i32>(u_input.d, arg_1.b.a.x, arg_0, -14246i), u_input.b.zzy), select(select(arg_3.ywx, vec3<bool>(true, arg_3.x, arg_1.c.x), true), !vec3<bool>(false, arg_1.c.x, false), select(arg_3.yyy, vec3<bool>(arg_3.x, arg_1.c.x, true), true))), ~(countOneBits(vec2<i32>(arg_1.d, arg_1.b.a.x)) & _wgslsmith_div_vec2_i32(max(arg_1.b.a.zy, vec2<i32>(u_input.d, u_input.e)), abs(arg_1.b.a.zz))));
    var var_1 = var_0;
    global2 = 1u;
    global3 = array<Struct_5, 29>();
    var var_2 = reverseBits(global0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2) * _wgslsmith_f_op_f32(1056f * 1554f));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -690f), -1626f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2309f + 1935f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d, Struct_3(u_input.d, Struct_2(vec3<i32>(u_input.e, -9570i, u_input.e)), vec3<bool>(false, true, false), u_input.d, vec3<bool>(true, true, false)), -500f, vec4<bool>(false, true, false, false))))))), -1000f);
    var var_1 = vec3<u32>(abs(_wgslsmith_mod_u32(1u | _wgslsmith_div_u32(u_input.a.x, 27645u), ~(~u_input.b.x))), ~abs(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, 134741u, global0.x, 0u)))), 45029u);
    let var_2 = Struct_1(~82669u, firstTrailingBit(4294967295u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(631f, -855f, 1476f, var_0.x))), vec4<bool>(true, true, true, true)))))), vec3<bool>(true, all(vec2<bool>(true, true)), !(!any(vec3<bool>(true, false, true)))));
    return Struct_1(~52947u, _wgslsmith_dot_vec3_u32(vec3<u32>(~(31670u >> (0u % 32u)), ~1u, ~_wgslsmith_mod_u32(var_2.a, 6761u)), vec3<u32>(~(~1u), _wgslsmith_mult_u32(1u, _wgslsmith_div_u32(var_2.a, var_1.x)), 0u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.e, Struct_3(u_input.e, Struct_2(vec3<i32>(u_input.d, u_input.d, u_input.e)), var_2.d, u_input.e, vec3<bool>(var_2.d.x, var_2.d.x, var_2.d.x)), var_2.c.x, vec4<bool>(true, var_2.d.x, var_2.d.x, false))), _wgslsmith_div_f32(-729f, var_2.c.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_2.c.x) * _wgslsmith_f_op_f32(var_2.c.x - var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.c * _wgslsmith_f_op_vec4_f32(-var_0)))), !vec3<bool>(var_2.d.x, true, var_2.d.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = u_input.d & u_input.e;
    var var_1 = true;
    var var_2 = func_1();
    var var_3 = !select(vec4<bool>(any(!arg_1.d.zy), select(true, true, !arg_1.d.x), func_1().d.x, true), vec4<bool>(false, all(vec3<bool>(true, arg_1.d.x, true)), all(!vec4<bool>(arg_1.d.x, false, true, var_2.d.x)), !(var_2.a == u_input.b.x)), !(!vec4<bool>(false, true, arg_1.d.x, arg_1.d.x)));
    global0 = u_input.c;
    return max(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, 33172i, u_input.d), ~vec3<i32>(1351i, -60961i, 36549i)) | (abs(vec3<i32>(-2147483647i, u_input.d, 3716i)) ^ ~vec3<i32>(u_input.d, u_input.e, u_input.e)), ~(vec3<i32>(16404i, u_input.d, u_input.d) >> (vec3<u32>(var_2.b, 0u, global0.x) % vec3<u32>(32u))) & ~select(vec3<i32>(-32085i, u_input.e, 24245i), vec3<i32>(u_input.d, u_input.e, -2147483647i), var_2.d)), -_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(0i, u_input.e), _wgslsmith_dot_vec2_i32(vec2<i32>(-23212i, u_input.d), vec2<i32>(-11033i, u_input.e)), _wgslsmith_div_i32(0i, -1i)), vec3<i32>(~27950i, -2147483647i, -37100i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-646f, -307f, -719f)))), func_1()));
    let var_1 = var_0.a.xy;
    let var_2 = 25804u;
    let var_3 = u_input.b.wyx;
    let var_4 = Struct_1(var_2 & 89024u, global0.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-334f, -1975f, -479f, -150f), vec4<f32>(131f, 654f, -235f, 157f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-402f, -1325f, -174f, -961f), vec4<f32>(1328f, 948f, 1000f, -1087f))))), vec4<f32>(-112f, -754f, _wgslsmith_f_op_f32(-func_1().c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(907f * 980f), _wgslsmith_f_op_f32(2369f * -2417f))))), vec3<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), true, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.a.x, var_0.a.x, firstTrailingBit(-29815i), select(-39572i, 1i, true))), select((vec4<i32>(1481i, 2147483647i, -1i, 2147483647i) >> (u_input.b % vec4<u32>(32u))) << (abs(vec4<u32>(var_3.x, 1u, 62347u, var_2)) % vec4<u32>(32u)), (vec4<i32>(var_0.a.x, var_1.x, -15144i, 60161i) << (vec4<u32>(0u, var_3.x, global0.x, 27762u) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, -4580i, 1i, var_1.x), vec4<i32>(u_input.e, 2147483647i, u_input.e, var_0.a.x)), true)), _wgslsmith_div_vec4_u32(max(~(~u_input.b), vec4<u32>(abs(23903u), 1u, ~111221u, _wgslsmith_mod_u32(var_4.b, 4294967295u))), ~firstTrailingBit(u_input.b ^ u_input.b)), reverseBits(-abs(~0i)), _wgslsmith_div_u32(77824u, _wgslsmith_sub_u32(var_4.a, var_4.b)), vec2<f32>(1095f, _wgslsmith_f_op_f32(select(var_4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.c.x, var_4.c.x)), all(vec4<bool>(false, var_4.d.x, var_4.d.x, false))))));
}

