struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<u32>(0u, 42501u), vec4<u32>(4294967295u, 17309u, 16859u, 16339u), vec4<bool>(true, true, false, false), -346f, vec4<f32>(-1000f, -1469f, 912f, 1527f)), Struct_1(vec2<u32>(8247u, 0u), vec4<u32>(24749u, 1u, 65839u, 0u), vec4<bool>(true, true, true, false), -1793f, vec4<f32>(-998f, -463f, -1491f, -552f)), Struct_1(vec2<u32>(79184u, 69055u), vec4<u32>(0u, 1u, 4263u, 4294967295u), vec4<bool>(true, true, true, true), 742f, vec4<f32>(798f, 340f, -1275f, 1453f)), Struct_1(vec2<u32>(14372u, 1u), vec4<u32>(13388u, 0u, 19653u, 11059u), vec4<bool>(true, true, true, true), -1123f, vec4<f32>(-1512f, 125f, -968f, 430f)), Struct_1(vec2<u32>(51834u, 94205u), vec4<u32>(12497u, 32831u, 1u, 1u), vec4<bool>(true, false, false, true), -1376f, vec4<f32>(-1566f, 555f, 1000f, 1237f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(32358u, 0u, 28400u, 1u), vec4<bool>(true, true, false, false), -1865f, vec4<f32>(415f, -565f, -765f, -231f)), Struct_1(vec2<u32>(49757u, 12288u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<bool>(false, true, false, false), -392f, vec4<f32>(1737f, 393f, -1893f, 1000f)), Struct_1(vec2<u32>(5086u, 1u), vec4<u32>(13677u, 0u, 0u, 1u), vec4<bool>(true, true, false, false), -1000f, vec4<f32>(913f, 1562f, 474f, -1000f)), Struct_1(vec2<u32>(21605u, 2942u), vec4<u32>(41285u, 0u, 1u, 20610u), vec4<bool>(true, true, true, false), -1000f, vec4<f32>(446f, 169f, -651f, -719f)), Struct_1(vec2<u32>(1u, 6599u), vec4<u32>(5469u, 29908u, 46958u, 87750u), vec4<bool>(true, false, false, false), 1127f, vec4<f32>(177f, -289f, 705f, 737f)), Struct_1(vec2<u32>(14803u, 0u), vec4<u32>(4294967295u, 54532u, 6412u, 1u), vec4<bool>(false, false, true, false), -1909f, vec4<f32>(1000f, 821f, -613f, -1238f)), Struct_1(vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 0u, 0u, 15602u), vec4<bool>(false, false, false, true), -995f, vec4<f32>(2167f, -1487f, -266f, 419f)), Struct_1(vec2<u32>(0u, 33767u), vec4<u32>(13990u, 4294967295u, 4294967295u, 0u), vec4<bool>(true, false, true, true), -206f, vec4<f32>(-1054f, -1000f, 568f, -1267f)), Struct_1(vec2<u32>(4294967295u, 84703u), vec4<u32>(16558u, 82958u, 0u, 4294967295u), vec4<bool>(true, true, false, true), -266f, vec4<f32>(264f, -647f, 203f, -1010f)), Struct_1(vec2<u32>(4713u, 4294967295u), vec4<u32>(12674u, 4294967295u, 1u, 79435u), vec4<bool>(true, true, false, false), 1410f, vec4<f32>(1000f, 102f, -706f, 1576f)), Struct_1(vec2<u32>(59862u, 20381u), vec4<u32>(1u, 42261u, 4081u, 19414u), vec4<bool>(false, false, false, false), 2358f, vec4<f32>(1516f, -1505f, -2065f, -412f)), Struct_1(vec2<u32>(0u, 11432u), vec4<u32>(15291u, 1u, 0u, 24828u), vec4<bool>(true, false, true, false), -754f, vec4<f32>(273f, 1023f, 643f, 1339f)), Struct_1(vec2<u32>(30064u, 1099u), vec4<u32>(71310u, 60955u, 1u, 1u), vec4<bool>(true, true, true, true), -997f, vec4<f32>(987f, 1197f, -212f, 1000f)), Struct_1(vec2<u32>(0u, 22652u), vec4<u32>(0u, 22536u, 1u, 0u), vec4<bool>(false, true, false, true), 1354f, vec4<f32>(2034f, -166f, -1359f, -813f)), Struct_1(vec2<u32>(60096u, 0u), vec4<u32>(1u, 0u, 0u, 1u), vec4<bool>(true, false, false, false), -320f, vec4<f32>(1000f, -985f, -1000f, 526f)), Struct_1(vec2<u32>(15920u, 48142u), vec4<u32>(0u, 90926u, 3072u, 25957u), vec4<bool>(false, false, false, false), -817f, vec4<f32>(980f, 1388f, 1000f, 336f)));

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = arg_3;
    var var_1 = global0[_wgslsmith_index_u32(0u, 21u)];
    global1 = arg_2;
    var var_2 = arg_2;
    var_1 = Struct_1(arg_1.b, ~(min(vec4<u32>(u_input.b.x, u_input.b.x, 15291u, u_input.b.x), vec4<u32>(65745u, 27806u, var_1.b.x, 7380u)) ^ ~select(arg_3.b, vec4<u32>(u_input.b.x, 77188u, 46849u, 56987u), arg_3.c)), vec4<bool>(abs(var_2.b.x << (89620u % 32u)) != ~(~42181u), (countOneBits(arg_1.b.x) == ~var_1.b.x) && var_0.c.x, select(_wgslsmith_f_op_f32(max(arg_1.a.x, 270f)) <= 1158f, select(false, true, all(var_0.c)), arg_3.c.x), _wgslsmith_div_u32(var_1.a.x, 1u) > _wgslsmith_div_u32(global1.b.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1089f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(366f, arg_3.d, var_2.a.x, global1.a.x)))) + _wgslsmith_f_op_vec4_f32(arg_3.e * _wgslsmith_f_op_vec4_f32(vec4<f32>(172f, var_1.e.x, var_0.d, arg_3.e.x) - arg_0))), var_0.e, !select(arg_3.c, var_0.c, arg_2.a.x == -1000f))));
    return 31334u;
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = -(vec2<i32>(-1i) * -(_wgslsmith_mult_vec2_i32(u_input.a.yw, u_input.a.zy) ^ ~vec2<i32>(49222i, 2147483647i)));
    let var_1 = vec3<bool>(false | arg_0.c.x, arg_0.c.x, !(!(arg_0.c.x || arg_0.c.x)));
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(global1.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a)), global2.yz)), countOneBits(~vec2<u32>(firstTrailingBit(1u), reverseBits(19063u))));
    var var_3 = select(!vec2<bool>(var_1.x, ~u_input.a.x <= var_0.x), !(!vec2<bool>(arg_0.c.x, var_1.x && var_1.x)), !(!vec2<bool>(false, false & var_1.x)));
    var var_4 = arg_0.b.zwz;
    return countOneBits(~(vec4<u32>(_wgslsmith_sub_u32(1u, 1u), firstTrailingBit(arg_0.b.x), u_input.b.x, ~0u) & vec4<u32>(~var_4.x, 4294967295u, ~global1.b.x, reverseBits(27060u))));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_1(arg_0.b, func_4(Struct_1(vec2<u32>(~4294967295u, func_3(vec4<f32>(2099f, -586f, global2.x, arg_1.x), arg_0, Struct_2(vec2<f32>(global2.x, -893f), vec2<u32>(38638u, global1.b.x)), Struct_1(u_input.b.zx, vec4<u32>(u_input.b.x, 4294967295u, 16673u, global1.b.x), vec4<bool>(false, true, true, true), 430f, vec4<f32>(global2.x, 1105f, global2.x, -743f)))), ~(vec4<u32>(u_input.b.x, global1.b.x, 30949u, u_input.b.x) & u_input.b), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, 795f, arg_1.x, global2.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, global2.x, -146f, -1016f)), true)))), select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true)))), vec4<bool>(true, true, true, 754i != u_input.a.x), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), !all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(-2426f, 643f))) + _wgslsmith_f_op_f32(trunc(arg_0.a.x))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1090f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1664f)) - _wgslsmith_f_op_f32(select(1306f, global2.x, true))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global1.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(-1f)));
    let var_1 = u_input.a.xwz;
    return arg_0;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> i32 {
    global1 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), -315f)), ~abs(reverseBits(arg_0.b))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1.a))));
    global0 = array<Struct_1, 21>();
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) * _wgslsmith_div_f32(1055f, arg_1.a.x))), _wgslsmith_f_op_vec2_f32(-global1.a)), vec2<u32>(u_input.b.x, 16188u));
    global1 = arg_1;
    global1 = arg_1;
    return _wgslsmith_mult_i32(u_input.a.x, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 21>();
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1698f, _wgslsmith_f_op_f32(round(global1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.x)))))) - -1524f), _wgslsmith_f_op_f32(f32(-1f) * -411f));
    global2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x - 440f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, -670f, -552f > global2.x))))));
    var var_0 = 1u;
    let var_1 = true;
    let var_2 = ~(i32(-1i) * -max(func_1(Struct_2(vec2<f32>(-520f, global1.a.x), vec2<u32>(50906u, 10066u)), Struct_2(vec2<f32>(-1521f, global2.x), vec2<u32>(global1.b.x, global1.b.x)), vec4<f32>(global2.x, -652f, -277f, global1.a.x)), -u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_vec2_i32(u_input.a.yz, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, var_2), u_input.a.yz) & -u_input.a.zy), -abs(abs(vec2<i32>(-40943i, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -458f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_div_f32(global1.a.x, -173f)) + global2.x)));
}

