struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(13140u, 4294967295u, 34571u, 37806u), vec4<u32>(14088u, 0u, 14560u, 61483u), vec4<u32>(4294967295u, 4294967295u, 0u, 12110u), vec4<u32>(37128u, 2116u, 55954u, 51860u), vec4<u32>(11033u, 67985u, 1u, 81162u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 0u, 119486u), vec4<u32>(1u, 49708u, 4294967295u, 19285u), vec4<u32>(37157u, 51848u, 107730u, 1u), vec4<u32>(15777u, 1431u, 0u, 25804u), vec4<u32>(32996u, 61494u, 27552u, 0u), vec4<u32>(0u, 4294967295u, 1u, 41748u), vec4<u32>(4294967295u, 0u, 96930u, 4028u), vec4<u32>(4294967295u, 0u, 4294967295u, 46631u), vec4<u32>(4294967295u, 77091u, 0u, 4294967295u), vec4<u32>(41309u, 4294967295u, 62086u, 4294967295u), vec4<u32>(89239u, 13532u, 54001u, 68432u), vec4<u32>(4294967295u, 1u, 93917u, 1u), vec4<u32>(11180u, 20529u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 1u, 33328u, 4294967295u), vec4<u32>(90241u, 4294967295u, 4294967295u, 1u), vec4<u32>(64447u, 0u, 19067u, 4294967295u), vec4<u32>(4294967295u, 57857u, 1u, 4294967295u));

var<private> global1: array<f32, 12>;

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(88968u, 1u, 0u, 39920u), vec4<u32>(76823u, 91512u, 14252u, 41750u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(0u, 1u, 1u, 86649u), vec4<u32>(46674u, 26064u, 4294967295u, 4294967295u), vec4<u32>(2253u, 0u, 1u, 40608u), vec4<u32>(4294967295u, 79587u, 4086u, 5711u), vec4<u32>(5502u, 1u, 40615u, 4294967295u), vec4<u32>(1u, 61006u, 1u, 0u), vec4<u32>(1u, 15440u, 1u, 0u), vec4<u32>(54548u, 14448u, 4294967295u, 1u), vec4<u32>(24119u, 4294967295u, 17498u, 41104u), vec4<u32>(84801u, 38825u, 0u, 1u), vec4<u32>(1u, 1u, 1757u, 0u), vec4<u32>(26679u, 1u, 21329u, 34754u), vec4<u32>(62606u, 0u, 30763u, 0u), vec4<u32>(610u, 1u, 0u, 0u), vec4<u32>(4581u, 4294967295u, 1u, 1u), vec4<u32>(14066u, 2703u, 1u, 27484u), vec4<u32>(76178u, 4294967295u, 0u, 20219u), vec4<u32>(1u, 4294967295u, 61989u, 54834u), vec4<u32>(46929u, 1u, 1u, 38241u), vec4<u32>(0u, 3532u, 4294967295u, 21146u), vec4<u32>(4294967295u, 44902u, 32407u, 0u), vec4<u32>(16970u, 1u, 4294967295u, 0u), vec4<u32>(0u, 0u, 4294967295u, 2420u), vec4<u32>(38991u, 29577u, 1u, 10985u), vec4<u32>(2517u, 74688u, 729u, 13343u));

var<private> global3: array<bool, 5>;

var<private> global4: array<Struct_2, 4>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(u_input.d, 4u)];
    global1 = array<f32, 12>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_0.d.a, var_0.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b * 1448f)), !select(select(!vec4<bool>(global3[_wgslsmith_index_u32(3567u, 5u)], global3[_wgslsmith_index_u32(100500u, 5u)], false, false), var_0.d.c, !vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.d, 5u)])), var_0.d.c, vec4<bool>(global3[_wgslsmith_index_u32(~var_0.d.d.x, 5u)], any(vec4<bool>(global3[_wgslsmith_index_u32(var_0.a.d.x, 5u)], var_0.a.c.x, false, var_0.a.c.x)), false, all(vec3<bool>(false, true, true)))), ~vec4<u32>(_wgslsmith_div_u32(var_0.a.d.x, 37693u & u_input.d), abs(~11045u), ~86694u, ~abs(u_input.d)));
    global1 = array<f32, 12>();
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1303f, -774f)) - _wgslsmith_div_f32(1333f, -1000f)), 982f) * var_1.a.xx);
    return ~var_1.d.x;
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.a.x;
    global2 = array<vec4<u32>, 28>();
    let var_1 = Struct_3(select(vec2<bool>(any(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(u_input.d, 5u)], false)), global3[_wgslsmith_index_u32(func_3(), 5u)]), !(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], true)), !(!vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 5u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1352f, 1000f, global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(u_input.d, 12u)]) - vec4<f32>(193f, 673f, 859f, global1[_wgslsmith_index_u32(42198u, 12u)])))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(32942u, 12u)], 1396f, global1[_wgslsmith_index_u32(u_input.d, 12u)]))))), -465f, !vec4<bool>(all(vec3<bool>(false, global3[_wgslsmith_index_u32(59660u, 5u)], true)), global3[_wgslsmith_index_u32(select(u_input.d, u_input.d, global3[_wgslsmith_index_u32(u_input.d, 5u)]), 5u)], any(vec2<bool>(global3[_wgslsmith_index_u32(49900u, 5u)], false)), true), ~_wgslsmith_add_vec4_u32(~vec4<u32>(49640u, u_input.d, u_input.d, u_input.d), abs(vec4<u32>(1u, 761u, u_input.d, u_input.d)))), ~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(0u, u_input.d)), vec2<u32>(4294967295u, 4294967295u) | vec2<u32>(27933u, u_input.d), vec2<u32>(17412u, 65218u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.b.a.wy, var_1.b.a.xz));
    let var_3 = !var_1.a.x;
    return Struct_4(abs(u_input.b.x));
}

fn func_1() -> Struct_4 {
    let var_0 = ~(~u_input.d);
    var var_1 = func_2();
    var var_2 = 2147483647i;
    var var_3 = ~(-((-8629i & _wgslsmith_div_i32(u_input.b.x, var_1.a)) ^ _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, var_1.a, u_input.b.x), vec3<i32>(-29843i, -26060i, u_input.c), vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.d, 5u)])), u_input.a.www)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, 465f, global1[_wgslsmith_index_u32(var_0, 12u)], global1[_wgslsmith_index_u32(1u, 12u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(56649u, 12u)], global1[_wgslsmith_index_u32(u_input.d, 12u)], global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(u_input.d, 12u)]))))))), 548f, select(select(!select(vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(u_input.d, 5u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 5u)], true), vec4<bool>(global3[_wgslsmith_index_u32(6050u, 5u)], false, global3[_wgslsmith_index_u32(u_input.d, 5u)], false)), select(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(6635u, 5u)]), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(4294967295u, 5u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(44096u, 5u)], true, false)), true), select(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(var_0, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.d, 5u)], false, true), vec4<bool>(true, global3[_wgslsmith_index_u32(2202u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], false)), vec4<bool>(!global3[_wgslsmith_index_u32(var_0, 5u)], any(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(u_input.d, 5u)], global3[_wgslsmith_index_u32(u_input.d, 5u)])), global3[_wgslsmith_index_u32(4294967295u, 5u)], false), global3[_wgslsmith_index_u32(var_0, 5u)]), true), global0[_wgslsmith_index_u32(~u_input.d, 25u)] >> (vec4<u32>(~(~1860u), ~(~4294967295u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0, u_input.d), vec2<u32>(53488u, u_input.d), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 5u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.d), vec2<u32>(8748u, u_input.d))), u_input.d) % vec4<u32>(32u)));
    return func_2();
}

fn func_4(arg_0: Struct_4, arg_1: i32) -> bool {
    let var_0 = func_1();
    global1 = array<f32, 12>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(179f)) * _wgslsmith_f_op_f32(f32(-1f) * -406f)), -988f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 12u)] - global1[_wgslsmith_index_u32(~u_input.d, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4458u, 12u)])))))), 180f, !(!(!select(vec4<bool>(true, global3[_wgslsmith_index_u32(6517u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], true), vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 5u)], false), global3[_wgslsmith_index_u32(u_input.d, 5u)]))), vec4<u32>(abs(abs(0u)), reverseBits(0u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(4294967295u, u_input.d, u_input.d)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(0u, 22329u, u_input.d), vec3<u32>(38201u, 76977u, 7951u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.d, 1u), vec3<u32>(u_input.d, 0u, u_input.d))), ~(u_input.d << (_wgslsmith_clamp_u32(u_input.d, u_input.d, 4294967295u) % 32u))));
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(var_1.a.yw));
    return global3[_wgslsmith_index_u32(countOneBits(64240u), 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 5>();
    global0 = array<vec4<u32>, 25>();
    let var_0 = ~(-(_wgslsmith_mult_i32(u_input.c, 1i) | -1i));
    global1 = array<f32, 12>();
    let var_1 = !vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 5u)], true, !global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.d, _wgslsmith_add_u32(u_input.d, u_input.d)), 5u)]);
    var var_2 = Struct_3(select(var_1.zx, !vec2<bool>(var_1.x, global1[_wgslsmith_index_u32(24922u, 12u)] >= -1000f), vec2<bool>(!all(var_1.xy), select(u_input.d < 9823u, true, all(var_1)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1753f, global1[_wgslsmith_index_u32(48153u, 12u)]) * _wgslsmith_f_op_f32(1331f - -319f)), global1[_wgslsmith_index_u32(~u_input.d, 12u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.d, 12u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 12u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-456f + global1[_wgslsmith_index_u32(0u, 12u)]))), vec4<bool>(func_4(func_1(), ~(-2147483647i)), all(var_1.zz), var_1.x, !global3[_wgslsmith_index_u32(0u, 5u)] && (30079i == u_input.b.x)), ~vec4<u32>(firstTrailingBit(0u), u_input.d, 1u, 4294967295u)), vec2<u32>(_wgslsmith_clamp_u32(70726u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.d, u_input.d), vec2<bool>(global3[_wgslsmith_index_u32(0u, 5u)], false)), ~vec2<u32>(23105u, 1u)), u_input.d), ~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_0));
}

