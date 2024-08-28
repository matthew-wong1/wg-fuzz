struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(570f, 1527f, 1411f), vec3<f32>(-758f, -703f, 1810f), vec3<f32>(-227f, -311f, 1553f), vec3<f32>(-1000f, -1236f, -953f), vec3<f32>(-3002f, 908f, 1976f), vec3<f32>(1767f, -125f, -544f), vec3<f32>(-438f, 1000f, -228f), vec3<f32>(-1020f, -1544f, -1690f), vec3<f32>(2175f, -2010f, 850f), vec3<f32>(796f, -803f, -1000f), vec3<f32>(960f, -226f, -307f), vec3<f32>(-200f, -735f, 2190f), vec3<f32>(-180f, -150f, -792f), vec3<f32>(1000f, -924f, -126f), vec3<f32>(-1214f, 642f, 996f), vec3<f32>(1250f, -3469f, -674f), vec3<f32>(-1762f, -2453f, 1449f), vec3<f32>(-864f, -1000f, 344f), vec3<f32>(1795f, -357f, -1248f), vec3<f32>(-738f, 2268f, 269f), vec3<f32>(311f, 1993f, 1062f), vec3<f32>(-1397f, 531f, 504f), vec3<f32>(-1120f, -1137f, -425f), vec3<f32>(1442f, -898f, -869f), vec3<f32>(-2134f, -555f, 661f));

var<private> global2: Struct_1 = Struct_1(-1i, -2792i, false, 12906u, vec4<u32>(0u, 37182u, 4294967295u, 1u));

var<private> global3: Struct_1 = Struct_1(-44259i, 13374i, false, 4294967295u, vec4<u32>(62199u, 16531u, 1u, 4294967295u));

var<private> global4: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(20600i, 5962i, true, 0u, vec4<u32>(0u, 17767u, 0u, 4294967295u)), Struct_1(1i, -14158i, false, 1u, vec4<u32>(50406u, 4294967295u, 61863u, 4294967295u)), Struct_1(-4025i, 0i, false, 4294967295u, vec4<u32>(94335u, 0u, 1u, 1641u)), Struct_1(60740i, 0i, false, 79973u, vec4<u32>(1u, 83329u, 49410u, 1u)), Struct_1(2147483647i, 419i, false, 4294967295u, vec4<u32>(41578u, 4294967295u, 50742u, 18470u)), Struct_1(-73624i, 1i, false, 4294967295u, vec4<u32>(45617u, 8749u, 0u, 4294967295u)), Struct_1(1795i, 61141i, true, 45012u, vec4<u32>(2614u, 4294967295u, 2808u, 0u)), Struct_1(i32(-2147483648), 2147483647i, true, 77030u, vec4<u32>(0u, 1u, 0u, 41015u)), Struct_1(0i, 1953i, true, 0u, vec4<u32>(4294967295u, 0u, 49991u, 4294967295u)), Struct_1(0i, -51932i, false, 17953u, vec4<u32>(27603u, 4294967295u, 0u, 12307u)), Struct_1(0i, 1i, true, 0u, vec4<u32>(31157u, 1u, 0u, 20881u)), Struct_1(i32(-2147483648), -69129i, false, 0u, vec4<u32>(4294967295u, 1u, 19148u, 51664u)), Struct_1(-321i, 0i, false, 2325u, vec4<u32>(28802u, 0u, 68201u, 28792u)), Struct_1(0i, -11840i, true, 27971u, vec4<u32>(75638u, 23394u, 0u, 32659u)), Struct_1(1i, -26741i, false, 4294967295u, vec4<u32>(81117u, 0u, 12621u, 12655u)), Struct_1(2147483647i, 43927i, true, 0u, vec4<u32>(19332u, 79359u, 12254u, 54327u)), Struct_1(27439i, 0i, true, 19101u, vec4<u32>(17780u, 15281u, 26683u, 33702u)), Struct_1(-100420i, 0i, false, 59895u, vec4<u32>(1u, 0u, 0u, 4294967295u)), Struct_1(2147483647i, 0i, false, 0u, vec4<u32>(0u, 3153u, 1u, 16875u)), Struct_1(0i, -885i, false, 43104u, vec4<u32>(68112u, 1u, 4294967295u, 89705u)), Struct_1(38711i, -1i, true, 0u, vec4<u32>(22823u, 22040u, 4294967295u, 0u)), Struct_1(10008i, 14284i, false, 0u, vec4<u32>(1u, 4294967295u, 2584u, 25121u)), Struct_1(1i, 2847i, false, 23569u, vec4<u32>(0u, 72921u, 1u, 1u)), Struct_1(58404i, 2147483647i, false, 67722u, vec4<u32>(0u, 29409u, 90609u, 4294967295u)), Struct_1(-46915i, 0i, false, 0u, vec4<u32>(25704u, 66894u, 4294967295u, 1u)), Struct_1(-1224i, 24680i, true, 4294967295u, vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(1i, i32(-2147483648), true, 45549u, vec4<u32>(0u, 0u, 82880u, 70961u)), Struct_1(i32(-2147483648), i32(-2147483648), false, 24508u, vec4<u32>(35535u, 1u, 4294967295u, 4294967295u)), Struct_1(2147483647i, -1i, false, 2788u, vec4<u32>(71190u, 73666u, 4294967295u, 1u)), Struct_1(-67805i, -13831i, false, 32927u, vec4<u32>(79403u, 26045u, 1u, 55476u)), Struct_1(2147483647i, -1i, true, 46413u, vec4<u32>(4294967295u, 23814u, 1u, 4294967295u)), Struct_1(-1i, i32(-2147483648), true, 1u, vec4<u32>(59801u, 4294967295u, 0u, 1u)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> u32 {
    return 29422u;
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<vec3<f32>, 25>();
    global2 = Struct_1(0i, i32(-1i) * -2147483647i, global3.c, 4294967295u, _wgslsmith_mult_vec4_u32(firstTrailingBit(global3.e), vec4<u32>(1u, 1873u << (u_input.b % 32u), _wgslsmith_mod_u32(0u, 1u) << (global3.d % 32u), ~global3.e.x << (~u_input.b % 32u))));
    global3 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(reverseBits(global3.e), global3.e), 109024u), 32u)];
    global2 = Struct_1(arg_0.b, 8208i, abs(~(-1i)) > _wgslsmith_mod_i32(~29851i | global2.b, _wgslsmith_mod_i32(reverseBits(global3.b), 21077i)), 8643u, vec4<u32>(min(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 21558u), _wgslsmith_mod_u32(u_input.b, global2.d)), 72700u >> (firstTrailingBit(u_input.b) % 32u)), arg_0.d, 1u | global2.e.x, global2.d));
    global0 = array<vec4<i32>, 19>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1742f)))) - _wgslsmith_f_op_f32(min(281f, 482f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1197f, -956f), _wgslsmith_div_f32(-805f, 1192f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(853f - 232f), _wgslsmith_f_op_f32(sign(815f)), !arg_0.c))))), ((_wgslsmith_f_op_f32(select(1947f, 461f, global3.c)) >= _wgslsmith_f_op_f32(abs(1309f))) & true) & select(all(vec2<bool>(false, global3.c)) && any(vec4<bool>(true, true, global3.c, global3.c)), true, true)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1302f);
    return any(vec2<bool>(!select(true, global2.c, true), global3.c));
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(~u_input.b, global3.e.x), abs(16665u) | func_1()) < u_input.b, func_4(vec4<f32>(_wgslsmith_f_op_f32(-678f + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f + -1383f) - 1f), 1f, _wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(global3.d | 0u, 32u)]))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.b, 25u)]) + global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b << (34655u % 32u), global3.d), 25u)])));
    var var_1 = vec2<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(countOneBits(_wgslsmith_div_i32(49135i, global3.b)), ~(-1i)), -firstTrailingBit(abs(global2.a))));
    global0 = array<vec4<i32>, 19>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f - -418f) + _wgslsmith_f_op_f32(f32(-1f) * -2339f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1213f - -758f))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f + 1000f))))));
    let var_3 = -5236i;
    return u_input.b;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global3 = global4[_wgslsmith_index_u32(u_input.b, 32u)];
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(~u_input.b, ~arg_2.d)), 25u)])));
    var var_1 = arg_2.b;
    let var_2 = !vec3<bool>(true, false, arg_1);
    let var_3 = abs(vec3<i32>(-(~global3.a ^ _wgslsmith_div_i32(global3.b, global2.b)), _wgslsmith_div_i32(-arg_2.a << (func_1() % 32u), -global3.a), 2147483647i));
    return Struct_1(_wgslsmith_clamp_i32(arg_3, abs(arg_0), -arg_2.b), arg_3, !any(vec2<bool>(global3.c, false)) | true, firstLeadingBit(u_input.b) << (1u % 32u), global2.e);
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(u_input.a.yxy, select(u_input.c, max(vec3<i32>(-13035i, global3.a, u_input.c.x), -u_input.a.zxy), !select(vec3<bool>(false, true, global2.c), vec3<bool>(global2.c, false, global2.c), vec3<bool>(global2.c, true, true)))) ^ max(~vec3<i32>(-2147483647i, 463i, -2147483647i), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global3.a, u_input.d.x), u_input.c), u_input.a.x), -global2.a | _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 2147483647i), u_input.c), firstLeadingBit(global3.a | global3.a)));
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(global3.a, firstLeadingBit(-2147483647i), global2.b), u_input.c) >> (~(abs(max(vec3<u32>(u_input.b, arg_1.x, 4294967295u), vec3<u32>(4294967295u, 50164u, 72323u))) >> (global3.e.zxy % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = max(~reverseBits(vec2<i32>(_wgslsmith_mult_i32(global3.a, var_0.x), ~u_input.a.x)), vec2<i32>(-1i, ~(~global3.b)));
    var var_2 = !vec4<bool>(true, arg_2.c, global3.c, true);
    var_2 = vec4<bool>(false, any(!(!vec4<bool>(var_2.x, global2.c, true, global3.c))) | false, any(!(!var_2.wzx)), false);
    return Struct_1(-(-58486i << (func_2() % 32u)) ^ arg_2.a, 2147483647i << (~arg_1.x % 32u), !(_wgslsmith_f_op_f32(-arg_0.x) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x))), _wgslsmith_dot_vec2_u32(~global2.e.xz, arg_2.e.wy & vec2<u32>(~1u, 0u)), countOneBits(func_5(u_input.d.x, all(select(vec4<bool>(true, global2.c, false, var_2.x), vec4<bool>(false, true, var_2.x, global3.c), arg_2.c)), func_5(abs(var_0.x), u_input.d.x <= 2147483647i, Struct_1(-3284i, 4380i, var_2.x, 4294967295u, vec4<u32>(1u, u_input.b, 73989u, global2.d)), -1i), ~countOneBits(global2.a)).e));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 19>();
    let var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global1[_wgslsmith_index_u32(0u, 25u)]))), vec2<u32>(func_1(), 61023u | global3.d), func_5(u_input.c.x >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(25890u, 0u, 4294967295u, 81483u)), vec4<u32>(global2.d, 1u, 4294967295u, u_input.b)) % 32u), _wgslsmith_clamp_u32(5425u, _wgslsmith_add_u32(39111u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global2.e.x, 4294967295u, u_input.b), global3.e)) != firstTrailingBit(23716u), global4[_wgslsmith_index_u32(func_2(), 32u)], abs(-12173i)));
    let var_1 = var_0.a;
    var var_2 = Struct_1(firstTrailingBit(global2.a), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(global0[_wgslsmith_index_u32(var_0.e.x, 19u)] ^ global0[_wgslsmith_index_u32(0u, 19u)]), vec4<i32>(_wgslsmith_add_i32(1i, global3.a), global3.b, i32(-1i) * -1i, ~1i)), -(-4621i << (global2.d % 32u))), select(!(1i >= global2.a), (abs(var_0.b) & 33787i) <= ~(-11874i), true), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(global2.e.x, 1u), _wgslsmith_mult_u32(var_0.e.x, ~23929u))), vec4<u32>(func_2(), ~global2.d, global2.d, 4294967295u));
    var var_3 = Struct_1(2147483647i, ~(~(_wgslsmith_clamp_i32(global2.a, 2147483647i, -83584i) << (~u_input.b % 32u))), var_0.c, global3.e.x, vec4<u32>(func_1(), func_1(), abs(_wgslsmith_mod_u32(global2.d, var_2.d)), firstTrailingBit(1u)) & ~(~countOneBits(var_2.e)));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), ~(~global0[_wgslsmith_index_u32(global3.e.x, 19u)] << (vec4<u32>(~4294967295u, 1u, var_0.d, 16254u) % vec4<u32>(32u))));
}

