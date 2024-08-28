struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<f32>(1975f, -1402f, -831f), -34367i, Struct_2(Struct_1(false, 4294967295u, vec2<bool>(false, false), true, 2037f)), -630f), Struct_3(vec3<f32>(-993f, 1000f, 542f), 0i, Struct_2(Struct_1(true, 6455u, vec2<bool>(false, false), false, -313f)), -501f), Struct_3(vec3<f32>(-457f, -1647f, -520f), 2147483647i, Struct_2(Struct_1(false, 4294967295u, vec2<bool>(false, false), true, -1985f)), 994f), Struct_3(vec3<f32>(-1000f, 1000f, 877f), -6490i, Struct_2(Struct_1(false, 4294967295u, vec2<bool>(false, false), false, 328f)), -1594f), Struct_3(vec3<f32>(490f, 828f, 1683f), -6619i, Struct_2(Struct_1(true, 1u, vec2<bool>(true, true), false, -844f)), -688f), Struct_3(vec3<f32>(-137f, -1445f, -1373f), i32(-2147483648), Struct_2(Struct_1(false, 0u, vec2<bool>(true, false), false, -292f)), -386f), Struct_3(vec3<f32>(428f, 376f, -318f), 71383i, Struct_2(Struct_1(false, 23776u, vec2<bool>(false, true), false, 469f)), 110f), Struct_3(vec3<f32>(445f, 346f, 593f), 0i, Struct_2(Struct_1(false, 21561u, vec2<bool>(true, false), true, -629f)), 537f), Struct_3(vec3<f32>(-1476f, -547f, 236f), 2147483647i, Struct_2(Struct_1(false, 6469u, vec2<bool>(true, true), true, 1144f)), 1768f), Struct_3(vec3<f32>(-1492f, -248f, -1862f), -48278i, Struct_2(Struct_1(true, 0u, vec2<bool>(false, false), false, -298f)), 778f), Struct_3(vec3<f32>(1476f, -1000f, 691f), 27562i, Struct_2(Struct_1(true, 71972u, vec2<bool>(true, false), false, -2429f)), -865f), Struct_3(vec3<f32>(1179f, 321f, 1577f), 2435i, Struct_2(Struct_1(true, 1u, vec2<bool>(false, true), true, -1581f)), 1209f), Struct_3(vec3<f32>(-332f, 508f, 1313f), 2147483647i, Struct_2(Struct_1(false, 1u, vec2<bool>(false, false), true, -2445f)), 1894f), Struct_3(vec3<f32>(743f, 562f, -1615f), 2147483647i, Struct_2(Struct_1(false, 47674u, vec2<bool>(true, true), true, 1590f)), -1459f), Struct_3(vec3<f32>(1658f, -1699f, 1500f), 1076i, Struct_2(Struct_1(false, 0u, vec2<bool>(false, false), true, 2714f)), -603f), Struct_3(vec3<f32>(2544f, 810f, -112f), 5409i, Struct_2(Struct_1(false, 0u, vec2<bool>(true, true), true, 639f)), -1248f), Struct_3(vec3<f32>(-147f, 993f, 1341f), 59281i, Struct_2(Struct_1(true, 0u, vec2<bool>(false, false), false, -617f)), -1205f), Struct_3(vec3<f32>(420f, 1258f, -122f), -21511i, Struct_2(Struct_1(true, 0u, vec2<bool>(false, false), false, 1127f)), 879f), Struct_3(vec3<f32>(-120f, -736f, -198f), -7637i, Struct_2(Struct_1(false, 0u, vec2<bool>(true, false), false, -332f)), -1000f), Struct_3(vec3<f32>(154f, 175f, 389f), 43977i, Struct_2(Struct_1(false, 55743u, vec2<bool>(false, true), true, -1433f)), -558f), Struct_3(vec3<f32>(-784f, 1951f, 100f), 55239i, Struct_2(Struct_1(false, 70461u, vec2<bool>(true, true), true, -1529f)), 538f), Struct_3(vec3<f32>(366f, -2197f, -1207f), -30732i, Struct_2(Struct_1(false, 1u, vec2<bool>(false, false), true, -1095f)), 158f), Struct_3(vec3<f32>(-445f, -411f, 755f), -13489i, Struct_2(Struct_1(true, 4294967295u, vec2<bool>(true, true), true, 653f)), -1137f), Struct_3(vec3<f32>(-509f, -1000f, -1641f), 0i, Struct_2(Struct_1(false, 4294967295u, vec2<bool>(false, true), true, -268f)), 1000f), Struct_3(vec3<f32>(-391f, 951f, -1103f), 0i, Struct_2(Struct_1(false, 4751u, vec2<bool>(false, true), false, 556f)), 481f), Struct_3(vec3<f32>(1215f, 1527f, -1698f), 2147483647i, Struct_2(Struct_1(false, 34942u, vec2<bool>(true, true), false, -586f)), -367f), Struct_3(vec3<f32>(-369f, -163f, -846f), 41722i, Struct_2(Struct_1(true, 4294967295u, vec2<bool>(false, true), false, -1000f)), -218f), Struct_3(vec3<f32>(1000f, -155f, -1396f), i32(-2147483648), Struct_2(Struct_1(false, 35819u, vec2<bool>(false, true), false, -509f)), 107f), Struct_3(vec3<f32>(957f, 1000f, 1924f), -1i, Struct_2(Struct_1(false, 92829u, vec2<bool>(false, false), true, -715f)), -543f), Struct_3(vec3<f32>(522f, -836f, -2416f), -42713i, Struct_2(Struct_1(false, 4294967295u, vec2<bool>(false, true), false, 1000f)), -1000f), Struct_3(vec3<f32>(-1786f, -896f, -670f), -48108i, Struct_2(Struct_1(false, 119u, vec2<bool>(false, true), true, 539f)), -322f));

var<private> global3: array<vec3<u32>, 10> = array<vec3<u32>, 10>(vec3<u32>(64304u, 25069u, 1u), vec3<u32>(1u, 67300u, 4294967295u), vec3<u32>(4294967295u, 0u, 1869u), vec3<u32>(0u, 15080u, 92482u), vec3<u32>(18185u, 53198u, 1u), vec3<u32>(1u, 18387u, 0u), vec3<u32>(1u, 15007u, 1u), vec3<u32>(4294967295u, 6380u, 1u), vec3<u32>(32525u, 1u, 32947u), vec3<u32>(0u, 58378u, 4294967295u));

var<private> global4: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> bool {
    global0 = array<bool, 19>();
    let var_0 = arg_1;
    global1 = array<Struct_3, 11>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1216f + 1000f), _wgslsmith_f_op_f32(trunc(271f))), _wgslsmith_f_op_f32(step(-929f, 1377f)), true)) < _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(1194f + -1123f)), 48222u, vec2<bool>(false & !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(8155u, 1u), 19u)], arg_0), true, _wgslsmith_f_op_f32(496f * 624f));
    global3 = array<vec3<u32>, 10>();
    return true;
}

fn func_3(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = Struct_4(4294967295u, _wgslsmith_div_vec2_u32(abs(u_input.a.xy), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 8256u)));
    let var_1 = Struct_2(Struct_1(all(vec3<bool>(any(vec4<bool>(arg_0.x, false, false, true)), false, false)), select(u_input.a.x, 4294967295u, func_2(arg_0.x || global4.x, Struct_4(var_0.a, var_0.b))), select(vec2<bool>(!arg_0.x, true), !(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.x, 19u)], global4.x)), select(vec2<bool>(global4.x, global0[_wgslsmith_index_u32(33738u, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true))), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -706f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = -min(_wgslsmith_clamp_vec2_i32(max(_wgslsmith_div_vec2_i32(vec2<i32>(17709i, u_input.c.x), u_input.b.wx), vec2<i32>(u_input.c.x, -2147483647i)), (vec2<i32>(u_input.c.x, u_input.c.x) >> (u_input.a.zz % vec2<u32>(32u))) >> (~u_input.a.xx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(u_input.b.xz & vec2<i32>(19380i, 74896i), ~vec2<i32>(u_input.c.x, -2147483647i), u_input.c & vec2<i32>(u_input.c.x, u_input.c.x))), vec2<i32>(u_input.c.x >> (69987u % 32u), 8159i) & u_input.b.yw);
    var var_3 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a.e, var_1.a.e, var_1.a.e)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e, var_1.a.e, 188f)))))), abs(_wgslsmith_clamp_i32(-u_input.c.x >> (0u % 32u), reverseBits(~u_input.b.x), ~(i32(-1i) * -1249i))), var_1, var_1.a.e);
    return Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -719f), var_1.a.e)));
}

fn func_1() -> StorageBuffer {
    global1 = array<Struct_3, 11>();
    var var_0 = func_3(vec2<bool>(!(!global4.x), !func_2(false, Struct_4(u_input.a.x, vec2<u32>(u_input.a.x, 1u))) || global4.x));
    let var_1 = vec4<i32>(u_input.b.x & u_input.b.x, i32(-1i) * -max(reverseBits(u_input.c.x), _wgslsmith_add_i32(u_input.c.x, u_input.b.x)), 2147483647i, countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c.x, ~u_input.b.x), ~u_input.c.x)));
    let var_2 = -u_input.b.x;
    var var_3 = firstTrailingBit(vec2<i32>(-var_1.x, countOneBits(1i)));
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) + var_0.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 486f, var_0.a) + vec3<f32>(var_0.a, -1228f, var_0.a)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1484f, 1034f, -324f) * vec3<f32>(-173f, var_0.a, 303f))))))), select(~(4294967295u | u_input.a.x) << (~u_input.a.x % 32u), u_input.a.x, global4.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    global3 = array<vec3<u32>, 10>();
    global4 = !select(vec4<bool>(!any(vec3<bool>(global4.x, global4.x, global4.x)), any(!vec3<bool>(global4.x, global4.x, true)), all(vec2<bool>(false, global4.x)), false), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)] == global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), !select(vec4<bool>(true, global4.x, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], global4.x, global4.x), global0[_wgslsmith_index_u32(21741u, 19u)]), select(global4.x, global0[_wgslsmith_index_u32(32553u, 19u)], true)), vec4<bool>(!(!global4.x), false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true));
    global3 = array<vec3<u32>, 10>();
    global4 = !(!(!(!(!vec4<bool>(global4.x, true, false, global4.x)))));
    let var_0 = u_input.c;
    global1 = array<Struct_3, 11>();
    global0 = array<bool, 19>();
    let x = u_input.a;
    s_output = func_1();
}

