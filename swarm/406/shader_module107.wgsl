struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25> = array<Struct_3, 25>(Struct_3(Struct_2(Struct_1(2147483647i, vec2<u32>(68702u, 0u), vec2<f32>(-1498f, -489f)), vec2<u32>(1u, 1u)), true, Struct_1(-25712i, vec2<u32>(62749u, 0u), vec2<f32>(-141f, -865f)), 25687i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(4294967295u, 48929u), vec2<f32>(795f, 989f)), vec2<u32>(118834u, 67720u)), true, Struct_1(-1i, vec2<u32>(69734u, 0u), vec2<f32>(545f, -579f)), -32620i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(1u, 20760u), vec2<f32>(-381f, -950f)), vec2<u32>(1u, 34082u)), false, Struct_1(i32(-2147483648), vec2<u32>(1u, 4294967295u), vec2<f32>(101f, -2441f)), -17414i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(0u, 62917u), vec2<f32>(-696f, -632f)), vec2<u32>(0u, 4294967295u)), true, Struct_1(-27585i, vec2<u32>(4294967295u, 0u), vec2<f32>(2444f, -929f)), 0i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(95713u, 31488u), vec2<f32>(-950f, 913f)), vec2<u32>(0u, 0u)), false, Struct_1(41116i, vec2<u32>(80372u, 65102u), vec2<f32>(489f, -1090f)), -1i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(103809u, 1u), vec2<f32>(772f, -1531f)), vec2<u32>(4294967295u, 4294967295u)), true, Struct_1(-57637i, vec2<u32>(25406u, 1u), vec2<f32>(-1913f, 1398f)), 0i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(17463u, 45446u), vec2<f32>(213f, 746f)), vec2<u32>(4294967295u, 61290u)), false, Struct_1(0i, vec2<u32>(34620u, 0u), vec2<f32>(1000f, -705f)), -1i), Struct_3(Struct_2(Struct_1(27091i, vec2<u32>(2600u, 0u), vec2<f32>(1879f, 987f)), vec2<u32>(24674u, 73397u)), true, Struct_1(2147483647i, vec2<u32>(0u, 53691u), vec2<f32>(1000f, 310f)), 59432i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(0u, 65988u), vec2<f32>(-149f, -1122f)), vec2<u32>(4294967295u, 34287u)), false, Struct_1(-9701i, vec2<u32>(4294967295u, 31637u), vec2<f32>(1858f, -393f)), 30627i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(15517u, 54492u), vec2<f32>(919f, 512f)), vec2<u32>(4294967295u, 0u)), true, Struct_1(1i, vec2<u32>(57090u, 34005u), vec2<f32>(-1091f, 653f)), 18389i), Struct_3(Struct_2(Struct_1(2147483647i, vec2<u32>(4294967295u, 4294967295u), vec2<f32>(933f, -667f)), vec2<u32>(1650u, 4294967295u)), false, Struct_1(18187i, vec2<u32>(37812u, 45805u), vec2<f32>(-1052f, -1613f)), -1i), Struct_3(Struct_2(Struct_1(-47967i, vec2<u32>(102359u, 55324u), vec2<f32>(1822f, 1726f)), vec2<u32>(0u, 4294967295u)), false, Struct_1(1i, vec2<u32>(0u, 88618u), vec2<f32>(-276f, 506f)), -1478i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(28138u, 8852u), vec2<f32>(-1141f, 166f)), vec2<u32>(0u, 0u)), false, Struct_1(40076i, vec2<u32>(1u, 1u), vec2<f32>(-898f, -1364f)), 1i), Struct_3(Struct_2(Struct_1(58606i, vec2<u32>(4294967295u, 0u), vec2<f32>(312f, -746f)), vec2<u32>(0u, 0u)), true, Struct_1(0i, vec2<u32>(33166u, 12447u), vec2<f32>(926f, 1000f)), 5674i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(15725u, 0u), vec2<f32>(689f, 1000f)), vec2<u32>(42873u, 34732u)), true, Struct_1(16573i, vec2<u32>(763u, 0u), vec2<f32>(-2535f, 2168f)), 28557i), Struct_3(Struct_2(Struct_1(-58526i, vec2<u32>(48578u, 51502u), vec2<f32>(-1625f, 1128f)), vec2<u32>(31408u, 3233u)), false, Struct_1(-21714i, vec2<u32>(5302u, 1u), vec2<f32>(-1849f, 333f)), 2147483647i), Struct_3(Struct_2(Struct_1(24020i, vec2<u32>(0u, 0u), vec2<f32>(1751f, 385f)), vec2<u32>(34446u, 38883u)), true, Struct_1(-39637i, vec2<u32>(1u, 0u), vec2<f32>(-1466f, -548f)), 1i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(4294967295u, 0u), vec2<f32>(-239f, 2157f)), vec2<u32>(4294967295u, 0u)), false, Struct_1(2147483647i, vec2<u32>(0u, 20549u), vec2<f32>(-1168f, 1008f)), i32(-2147483648)), Struct_3(Struct_2(Struct_1(-51220i, vec2<u32>(74337u, 36936u), vec2<f32>(-2079f, 758f)), vec2<u32>(1u, 57247u)), false, Struct_1(0i, vec2<u32>(29011u, 1u), vec2<f32>(2300f, -586f)), 1i), Struct_3(Struct_2(Struct_1(1i, vec2<u32>(0u, 0u), vec2<f32>(-1381f, 1000f)), vec2<u32>(1u, 1u)), true, Struct_1(-87937i, vec2<u32>(4939u, 104335u), vec2<f32>(1877f, 1000f)), -1i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(107154u, 1u), vec2<f32>(-448f, 673f)), vec2<u32>(457u, 59427u)), false, Struct_1(i32(-2147483648), vec2<u32>(40047u, 1u), vec2<f32>(571f, 106f)), -1i), Struct_3(Struct_2(Struct_1(0i, vec2<u32>(117417u, 4294967295u), vec2<f32>(188f, 1000f)), vec2<u32>(46191u, 33796u)), true, Struct_1(-1i, vec2<u32>(26852u, 20009u), vec2<f32>(104f, 325f)), 2147483647i), Struct_3(Struct_2(Struct_1(i32(-2147483648), vec2<u32>(53048u, 80122u), vec2<f32>(-495f, 398f)), vec2<u32>(1u, 52781u)), true, Struct_1(0i, vec2<u32>(0u, 4294967295u), vec2<f32>(-629f, 944f)), -5714i), Struct_3(Struct_2(Struct_1(1i, vec2<u32>(0u, 1u), vec2<f32>(847f, -931f)), vec2<u32>(5930u, 1u)), false, Struct_1(i32(-2147483648), vec2<u32>(20573u, 33405u), vec2<f32>(-2585f, 1806f)), -4292i), Struct_3(Struct_2(Struct_1(24106i, vec2<u32>(30854u, 70005u), vec2<f32>(833f, 1236f)), vec2<u32>(11780u, 25195u)), true, Struct_1(-27537i, vec2<u32>(0u, 0u), vec2<f32>(-1210f, 762f)), i32(-2147483648)));

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 1>;

var<private> global3: array<Struct_3, 14>;

var<private> global4: array<Struct_3, 14>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global3 = array<Struct_3, 14>();
    global0 = array<Struct_3, 25>();
    let var_0 = global3[_wgslsmith_index_u32(max(global1.x << (min(~_wgslsmith_mod_u32(arg_0.b.x, 60613u), global1.x) % 32u), ~(~_wgslsmith_mod_u32(1u, global1.x)) ^ ~reverseBits(arg_0.b.x)), 14u)];
    let var_1 = abs(firstTrailingBit(~0u));
    let var_2 = global4[_wgslsmith_index_u32(~0u, 14u)];
    return !all(select(vec2<bool>(true, var_2.b), vec2<bool>(!var_0.b, var_2.c.c.x <= 863f), select(select(vec2<bool>(true, false), vec2<bool>(false, var_2.b), vec2<bool>(true, false)), vec2<bool>(true, true), true)));
}

fn func_2() -> u32 {
    global3 = array<Struct_3, 14>();
    let var_0 = vec3<bool>(select(-661f <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-282f)), _wgslsmith_f_op_f32(select(401f, -161f, false)))), !(!func_3(Struct_2(Struct_1(u_input.c.x, vec2<u32>(global1.x, 119240u), vec2<f32>(1867f, 1460f)), vec2<u32>(0u, 4294967295u)))), false), true, any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), (u_input.b & 1i) < (i32(-1i) * -29587i))));
    global3 = array<Struct_3, 14>();
    global1 = select(u_input.a.zxz & _wgslsmith_mod_vec3_u32(~select(u_input.a.zzw, vec3<u32>(1u, 12383u, 1u), false), firstLeadingBit(~vec3<u32>(u_input.a.x, global1.x, u_input.e))), _wgslsmith_sub_vec3_u32(u_input.a.zwx, u_input.a.xzx), vec3<bool>(var_0.x, var_0.x, (var_0.x && (var_0.x & var_0.x)) == ((global2[_wgslsmith_index_u32(46170u, 1u)] | -3472i) >= _wgslsmith_mod_i32(u_input.d.x, global2[_wgslsmith_index_u32(u_input.e, 1u)]))));
    var var_1 = firstTrailingBit(u_input.e);
    return ~(~_wgslsmith_mod_u32(global1.x & reverseBits(u_input.e), ~global1.x));
}

fn func_1(arg_0: vec4<i32>) -> StorageBuffer {
    global4 = array<Struct_3, 14>();
    var var_0 = vec2<u32>(min(func_2(), u_input.a.x), u_input.e);
    let var_1 = !vec3<bool>(false, true && (false & any(vec3<bool>(true, false, true))), func_3(Struct_2(Struct_1(26734i, global1.yy, vec2<f32>(-117f, 1321f)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.x), u_input.a.yz))));
    let var_2 = -2147483647i;
    let var_3 = -_wgslsmith_mult_vec4_i32(max(select(countOneBits(u_input.c), firstTrailingBit(vec4<i32>(arg_0.x, -1i, -8884i, -21732i)), var_1.x), countOneBits(reverseBits(vec4<i32>(u_input.d.x, var_2, -1057i, 0i)))), ~(vec4<i32>(11330i, -29163i, -42585i, global2[_wgslsmith_index_u32(var_0.x, 1u)]) << (firstLeadingBit(u_input.a) % vec4<u32>(32u))));
    return StorageBuffer(u_input.a.x | _wgslsmith_dot_vec3_u32(u_input.a.zxy, countOneBits(u_input.a.yyx)), ~vec3<u32>(global1.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(var_0.x, 1u), ~4974u), ~_wgslsmith_dot_vec2_u32(global1.yy, u_input.a.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 14>();
    global1 = ~(~(~vec3<u32>(_wgslsmith_add_u32(0u, global1.x), _wgslsmith_mult_u32(1u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 20957u), vec2<u32>(1u, 11616u)))));
    var var_0 = u_input.c.wyy;
    let var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 14u)];
    global4 = array<Struct_3, 14>();
    let var_2 = vec4<bool>(false, var_1.b || true, !var_1.b, var_1.b);
    let x = u_input.a;
    s_output = func_1(~_wgslsmith_sub_vec4_i32(select(~u_input.c, vec4<i32>(-18201i, -1i, var_0.x, u_input.c.x), select(var_2, var_2, var_2.x)), reverseBits(vec4<i32>(-1i, 31521i, u_input.d.x, 1i))));
}

