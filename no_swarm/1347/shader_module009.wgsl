struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 7> = array<f32, 7>(577f, 1000f, 400f, -459f, -681f, 210f, 423f);

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -32784i), 702f, vec4<i32>(i32(-2147483648), -1i, -1i, 1i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(0i, 44381i), 384f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 16601i), vec4<bool>(true, true, false, true)), vec3<bool>(false, false, true), vec4<i32>(1i, -1i, 0i, 17964i)), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), -1i), -915f, vec4<i32>(-1i, 0i, 0i, 0i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(775i, -15964i), -653f, vec4<i32>(1341i, -39071i, 0i, 8219i), vec4<bool>(false, false, true, false)), vec3<bool>(true, true, true), vec4<i32>(1i, -12743i, -31797i, -1i)), Struct_2(Struct_1(vec2<i32>(-1162i, 2147483647i), 728f, vec4<i32>(2147483647i, 2147483647i, 1i, 1i), vec4<bool>(false, true, false, true)), Struct_1(vec2<i32>(0i, -23235i), 1356f, vec4<i32>(1i, 1i, 2147483647i, -71536i), vec4<bool>(true, true, false, true)), vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), -36650i, -1487i, 0i)), Struct_2(Struct_1(vec2<i32>(2237i, 0i), 2028f, vec4<i32>(-1i, 2147483647i, 0i, -28820i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(-5640i, 0i), -1000f, vec4<i32>(34682i, 12749i, 1i, -923i), vec4<bool>(false, true, false, false)), vec3<bool>(true, true, true), vec4<i32>(-23297i, -14772i, 28807i, -40988i)), Struct_2(Struct_1(vec2<i32>(1i, 23792i), 286f, vec4<i32>(24127i, -37218i, i32(-2147483648), 18049i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(-41888i, 1i), 178f, vec4<i32>(0i, 2147483647i, -18089i, -8287i), vec4<bool>(false, false, true, true)), vec3<bool>(false, true, false), vec4<i32>(-3370i, 14967i, -1i, -61483i)), Struct_2(Struct_1(vec2<i32>(37466i, -39125i), 507f, vec4<i32>(2147483647i, 2147483647i, -40656i, 8304i), vec4<bool>(false, true, true, false)), Struct_1(vec2<i32>(-1i, 2147483647i), -1300f, vec4<i32>(-19120i, -1i, -62024i, -31331i), vec4<bool>(false, false, false, true)), vec3<bool>(true, true, false), vec4<i32>(1i, 23317i, i32(-2147483648), 1i)), Struct_2(Struct_1(vec2<i32>(37596i, 365i), -325f, vec4<i32>(1i, -1i, 1555i, -1i), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(2147483647i, -9012i), -1237f, vec4<i32>(-33693i, i32(-2147483648), 25578i, 34042i), vec4<bool>(false, true, false, false)), vec3<bool>(false, true, true), vec4<i32>(2147483647i, 0i, 47297i, -8931i)), Struct_2(Struct_1(vec2<i32>(-21122i, 1i), 999f, vec4<i32>(2147483647i, 0i, 0i, 0i), vec4<bool>(false, false, true, true)), Struct_1(vec2<i32>(1i, 2147483647i), 380f, vec4<i32>(0i, 1i, 269i, 0i), vec4<bool>(false, false, false, false)), vec3<bool>(false, true, false), vec4<i32>(64230i, i32(-2147483648), i32(-2147483648), 46263i)), Struct_2(Struct_1(vec2<i32>(-11199i, -567i), -890f, vec4<i32>(2147483647i, 41846i, -17289i, 0i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(i32(-2147483648), -487i), -797f, vec4<i32>(10241i, 2147483647i, 1i, i32(-2147483648)), vec4<bool>(true, false, true, true)), vec3<bool>(false, true, false), vec4<i32>(38449i, 1i, -1i, 19253i)), Struct_2(Struct_1(vec2<i32>(0i, 0i), -160f, vec4<i32>(0i, -1055i, -22923i, -1i), vec4<bool>(true, true, true, false)), Struct_1(vec2<i32>(1i, -1i), 1000f, vec4<i32>(82187i, 2147483647i, -26666i, 38496i), vec4<bool>(true, true, false, true)), vec3<bool>(false, false, true), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -7121i)), Struct_2(Struct_1(vec2<i32>(50379i, i32(-2147483648)), 600f, vec4<i32>(-1i, 12580i, 2147483647i, -14443i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(1i, i32(-2147483648)), -1000f, vec4<i32>(1i, 43183i, i32(-2147483648), 1i), vec4<bool>(true, false, false, false)), vec3<bool>(true, true, false), vec4<i32>(30949i, -31947i, i32(-2147483648), -1i)), Struct_2(Struct_1(vec2<i32>(60381i, -1i), -669f, vec4<i32>(i32(-2147483648), 0i, 0i, 15068i), vec4<bool>(false, false, true, false)), Struct_1(vec2<i32>(43026i, i32(-2147483648)), 758f, vec4<i32>(i32(-2147483648), 1864i, 8065i, -9132i), vec4<bool>(true, false, false, true)), vec3<bool>(false, true, false), vec4<i32>(45547i, -1i, -14549i, 1i)), Struct_2(Struct_1(vec2<i32>(17700i, -32309i), -1045f, vec4<i32>(-294i, 0i, 2147483647i, i32(-2147483648)), vec4<bool>(false, true, true, true)), Struct_1(vec2<i32>(2147483647i, 0i), 981f, vec4<i32>(-51773i, i32(-2147483648), 0i, 42416i), vec4<bool>(true, false, false, true)), vec3<bool>(true, false, false), vec4<i32>(0i, 46273i, 2147483647i, -24012i)), Struct_2(Struct_1(vec2<i32>(-34132i, -33093i), 1116f, vec4<i32>(-1i, -51249i, 24246i, -28054i), vec4<bool>(true, false, false, false)), Struct_1(vec2<i32>(0i, 28825i), -467f, vec4<i32>(2147483647i, -30487i, 6662i, 0i), vec4<bool>(false, false, false, false)), vec3<bool>(false, true, false), vec4<i32>(-25553i, 0i, i32(-2147483648), 1i)), Struct_2(Struct_1(vec2<i32>(-1i, 7265i), -1018f, vec4<i32>(2147483647i, 0i, -1i, -97124i), vec4<bool>(false, false, false, true)), Struct_1(vec2<i32>(i32(-2147483648), -44348i), 1606f, vec4<i32>(8937i, 5658i, -28975i, 2147483647i), vec4<bool>(false, true, true, true)), vec3<bool>(false, true, true), vec4<i32>(39312i, 2147483647i, -4999i, 7634i)), Struct_2(Struct_1(vec2<i32>(-1i, -23304i), -786f, vec4<i32>(40876i, 1i, 27240i, 1i), vec4<bool>(false, true, false, false)), Struct_1(vec2<i32>(-40415i, -10912i), 388f, vec4<i32>(2147483647i, -1i, i32(-2147483648), -13778i), vec4<bool>(false, true, true, false)), vec3<bool>(true, false, true), vec4<i32>(-22792i, -23779i, -16217i, 18603i)), Struct_2(Struct_1(vec2<i32>(1i, 38988i), -122f, vec4<i32>(2147483647i, -1i, 0i, 0i), vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(1i, -1i), -571f, vec4<i32>(-14636i, 2147483647i, -23437i, 16014i), vec4<bool>(true, true, false, false)), vec3<bool>(true, false, true), vec4<i32>(36113i, -23369i, i32(-2147483648), 19987i)));

var<private> global3: array<u32, 12> = array<u32, 12>(1u, 4294967295u, 45128u, 1u, 1u, 0u, 42748u, 1u, 0u, 1u, 41578u, 39513u);

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_3) -> u32 {
    global2 = array<Struct_2, 17>();
    global2 = array<Struct_2, 17>();
    global4 = -254f;
    global0 = global3[_wgslsmith_index_u32(25958u, 12u)];
    var var_0 = arg_1.b.a.c.x <= ~(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b.b.c.x, u_input.a.x), vec2<i32>(u_input.d.x, -2147483647i))));
    return _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, 0u), 12u)], ~64436u);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    global3 = array<u32, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.b + global1[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_div_f32(-1687f, 677f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_0.a.b)))))), vec4<f32>(564f, _wgslsmith_f_op_f32(-115f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 716f) - arg_3)), arg_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1255f - _wgslsmith_f_op_f32(-325f * arg_0.a.b))))));
    var var_1 = ~(~(40155u << ((_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(1u, 12u)], 4294967295u, 1u), vec3<u32>(4294967295u, 11646u, arg_1)) & 13683u) % 32u)));
    var var_2 = arg_0.b.d.wz;
    var var_3 = abs(89308i);
    return Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - -115f), _wgslsmith_sub_vec4_i32(-(~arg_0.b.c), vec4<i32>(1i, firstLeadingBit(firstLeadingBit(-1i)), ~(~arg_2.x), arg_0.b.c.x)), vec4<bool>(false, arg_0.a.d.x, !((arg_1 >> (979u % 32u)) <= _wgslsmith_clamp_u32(0u, arg_1, 136056u)), true));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~max(1u, (global3[_wgslsmith_index_u32(10999u, 12u)] & ~0u) ^ global3[_wgslsmith_index_u32(~(~u_input.b), 12u)]), 7u)];
    let var_1 = -10054i;
    let var_2 = func_3(Struct_2(Struct_1(_wgslsmith_div_vec2_i32(arg_0.a, vec2<i32>(2147483647i, -57780i)), _wgslsmith_f_op_f32(floor(-2498f)), ~arg_0.c, func_3(Struct_2(arg_0, Struct_1(vec2<i32>(var_1, arg_0.a.x), 1639f, vec4<i32>(arg_0.a.x, u_input.d.x, -2147483647i, arg_1), arg_0.d), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.c), _wgslsmith_div_u32(104008u, u_input.b), vec4<i32>(-83051i, u_input.a.x, arg_0.a.x, 16145i), 2185f).d), arg_0, !(!(!vec3<bool>(false, false, arg_0.d.x))), arg_0.c), abs(0u), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.c.x & 1i, 1i, -1i, select(-11514i, max(-29699i, 2147483647i), true)), vec4<i32>(2147483647i, _wgslsmith_div_i32(33877i, arg_0.c.x >> (3191u % 32u)), firstTrailingBit(arg_0.c.x), _wgslsmith_mult_i32(_wgslsmith_add_i32(-21756i, u_input.a.x), arg_0.c.x)), ~_wgslsmith_sub_vec4_i32(arg_0.c, -vec4<i32>(-15998i, -11149i, u_input.d.x, u_input.a.x))), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(31583u, 7u)]), 1871f)), -375f))));
    global4 = 872f;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(abs(~vec3<u32>(global3[_wgslsmith_index_u32(u_input.c, 12u)], 6286u, 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(u_input.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33232u, 12u)], 12u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 12u)], 12u)]), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)])), u_input.b))), ~(~(~vec3<u32>(0u, 35658u, u_input.c)))), 17u)];
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(~u_input.b, 7u)], global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(15456u, global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 12u)], 12u)]), vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(5337u, 12u)])), _wgslsmith_div_u32(4294967295u, u_input.b))), 7u)], -1312f));
    var var_1 = max(~(u_input.c ^ _wgslsmith_clamp_u32(~u_input.c, global3[_wgslsmith_index_u32(u_input.c, 12u)], ~1u)), max(4294967295u, 42954u));
    return func_4(func_3(global2[_wgslsmith_index_u32(func_2(select(vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), Struct_3(Struct_1(u_input.a.xx, var_0.x, vec4<i32>(0i, 53333i, 8205i, 76201i), vec4<bool>(true, false, true, true)), global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(43009u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 12u)]), 12u)], 12u)], 17u)], vec4<bool>(false, true, false, false), true)), 17u)], u_input.b, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x >> (70220u % 32u), 4276i) | _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.d.x, -2147483647i, u_input.a.x, 4481i), vec4<i32>(1432i, u_input.d.x, 9619i, u_input.d.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.d.x, -57962i), vec4<i32>(u_input.a.x, -2147483647i, -39087i, u_input.a.x))), var_0.x), func_3(Struct_2(Struct_1(abs(u_input.d.xz), -1000f, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1966i, -29381i), vec4<i32>(u_input.a.x, -67722i, u_input.d.x, u_input.d.x)), vec4<bool>(true, true, true, true)), func_3(global2[_wgslsmith_index_u32(100267u, 17u)], reverseBits(48067u), vec4<i32>(u_input.d.x, 21701i, -18682i, u_input.a.x), -1210f), vec3<bool>(false, false, false), -(vec4<i32>(2147483647i, 0i, 26900i, u_input.d.x) ^ vec4<i32>(-1i, u_input.d.x, u_input.a.x, 0i))), 5741u, (vec4<i32>(u_input.a.x, 4637i, u_input.a.x, -1i) >> (vec4<u32>(u_input.c, u_input.b, global3[_wgslsmith_index_u32(47030u, 12u)], 33277u) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 12u)], 12790u, u_input.b, 4294967295u), ~vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 12u)], global3[_wgslsmith_index_u32(17022u, 12u)], 29051u, u_input.b)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -1669f) * -974f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(686f, 544f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 7u)] - 350f)))).c.x);
}

fn func_5(arg_0: Struct_2) -> vec4<i32> {
    global0 = reverseBits(abs(min(select(0u, global3[_wgslsmith_index_u32(12477u, 12u)], arg_0.b.d.x), global3[_wgslsmith_index_u32(45089u, 12u)])) | 4294967295u);
    var var_0 = Struct_2(arg_0.a, Struct_1(func_3(Struct_2(arg_0.b, Struct_1(vec2<i32>(2147483647i, arg_0.b.c.x), -396f, vec4<i32>(-7987i, arg_0.b.a.x, arg_0.b.c.x, -1121i), arg_0.b.d), arg_0.b.d.wzx, reverseBits(vec4<i32>(arg_0.d.x, 15774i, -56573i, arg_0.d.x))), _wgslsmith_add_u32(26894u, _wgslsmith_mod_u32(u_input.c, 4294967295u)), (vec4<i32>(0i, 55760i, -2147483647i, -40015i) ^ vec4<i32>(-1i, arg_0.a.a.x, arg_0.d.x, u_input.d.x)) ^ vec4<i32>(u_input.a.x, -1i, u_input.d.x, u_input.d.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-140f))))).c.yz, 743f, vec4<i32>(1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(34336i, 54368i, arg_0.b.c.x), vec3<i32>(0i, -5905i, arg_0.b.a.x)), u_input.d.x, _wgslsmith_add_i32(-2147483647i ^ arg_0.a.a.x, ~u_input.a.x)), vec4<bool>(all(vec4<bool>(false, arg_0.a.d.x, true, arg_0.a.d.x)), func_3(arg_0, select(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], arg_0.c.x), vec4<i32>(u_input.a.x, 12679i, -2147483647i, arg_0.b.c.x), arg_0.a.b).d.x, false, global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 7u)] <= global1[_wgslsmith_index_u32(u_input.b << (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 12u)], 12u)] % 32u), 7u)])), arg_0.b.d.zyw, arg_0.b.c);
    global3 = array<u32, 12>();
    let var_1 = firstTrailingBit(vec2<i32>(func_1().c.x >> (max(u_input.b, max(global3[_wgslsmith_index_u32(8594u, 12u)], 0u)) % 32u), var_0.a.c.x));
    let var_2 = firstTrailingBit(-var_0.d);
    return ~(-(_wgslsmith_sub_vec4_i32(var_0.a.c, var_0.a.c) & abs(vec4<i32>(arg_0.d.x, -2147483647i, 0i, -22455i))) | var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(u_input.a.zx, 1600f, func_5(Struct_2(Struct_1(u_input.a.xy, -1498f, vec4<i32>(-23394i, u_input.a.x, u_input.d.x, -1i), vec4<bool>(false, true, true, false)), func_1(), func_4(Struct_1(u_input.a.zy, -1470f, vec4<i32>(-2147483647i, -10872i, 1i, 1i), vec4<bool>(false, true, false, true)), u_input.a.x).d.wzy, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 4401i, 1i, u_input.d.x), vec4<i32>(u_input.a.x, -46411i, u_input.a.x, 0i)))), vec4<bool>(any(vec3<bool>(true, true, true)), !(4294967295u >= global3[_wgslsmith_index_u32(1u, 12u)]), func_4(func_1(), i32(-1i) * -19423i).d.x, true)), global2[_wgslsmith_index_u32(93171u, 17u)], !(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), true)), _wgslsmith_f_op_f32(-745f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 7u)] - global1[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(ceil(-157f))))) < func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.b, -2170f, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 7u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 7u)])))))));
}

