struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22>;

var<private> global1: array<i32, 5>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(33055u, 4294967295u, 46443u, 43379u), vec2<i32>(-1i, 0i), -1205f, vec2<f32>(-1000f, 234f), vec2<u32>(30991u, 51792u)), Struct_1(vec4<u32>(7043u, 35931u, 4294967295u, 64960u), vec2<i32>(-23329i, i32(-2147483648)), -1099f, vec2<f32>(231f, 1161f), vec2<u32>(24212u, 81665u)), Struct_1(vec4<u32>(19644u, 41279u, 33482u, 37222u), vec2<i32>(-1i, 5367i), 573f, vec2<f32>(1000f, 300f), vec2<u32>(0u, 14191u)), Struct_1(vec4<u32>(10709u, 1u, 0u, 0u), vec2<i32>(48763i, -25120i), 912f, vec2<f32>(642f, -1717f), vec2<u32>(4294967295u, 72130u)), Struct_1(vec4<u32>(1u, 1u, 2002u, 1u), vec2<i32>(0i, 6823i), 199f, vec2<f32>(1244f, 523f), vec2<u32>(1u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u), vec2<i32>(-36901i, -80837i), 754f, vec2<f32>(-669f, 169f), vec2<u32>(1u, 102159u)), Struct_1(vec4<u32>(39752u, 1u, 0u, 14181u), vec2<i32>(2147483647i, -30998i), -593f, vec2<f32>(-600f, -2415f), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<u32>(13325u, 0u, 4294967295u, 4294967295u), vec2<i32>(31872i, -51063i), 2090f, vec2<f32>(754f, 337f), vec2<u32>(0u, 1u)), Struct_1(vec4<u32>(68484u, 2093u, 4294967295u, 33117u), vec2<i32>(10308i, 2147483647i), 164f, vec2<f32>(-153f, 1000f), vec2<u32>(4294967295u, 64029u)), Struct_1(vec4<u32>(1u, 31871u, 45350u, 62342u), vec2<i32>(40884i, 0i), -324f, vec2<f32>(-2716f, -751f), vec2<u32>(4294967295u, 56623u)), Struct_1(vec4<u32>(4294967295u, 21963u, 19308u, 4294967295u), vec2<i32>(19509i, 89561i), 871f, vec2<f32>(385f, -813f), vec2<u32>(67540u, 4294967295u)), Struct_1(vec4<u32>(1u, 19711u, 92301u, 31262u), vec2<i32>(-7346i, 32693i), 538f, vec2<f32>(-1098f, -1694f), vec2<u32>(41144u, 14581u)), Struct_1(vec4<u32>(19688u, 4294967295u, 21311u, 15351u), vec2<i32>(49684i, 2147483647i), 1853f, vec2<f32>(-794f, 548f), vec2<u32>(12744u, 36144u)), Struct_1(vec4<u32>(69623u, 1u, 21072u, 1u), vec2<i32>(-2147i, 0i), 407f, vec2<f32>(-454f, 743f), vec2<u32>(1u, 13617u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec2<i32>(1i, 0i), -935f, vec2<f32>(-1815f, -363f), vec2<u32>(8335u, 1u)), Struct_1(vec4<u32>(0u, 84842u, 1u, 29928u), vec2<i32>(i32(-2147483648), -6327i), 1000f, vec2<f32>(1000f, 514f), vec2<u32>(16906u, 0u)), Struct_1(vec4<u32>(40533u, 29810u, 4294967295u, 4294967295u), vec2<i32>(11849i, i32(-2147483648)), 327f, vec2<f32>(-550f, 1289f), vec2<u32>(20139u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 62403u, 1u), vec2<i32>(0i, 58111i), -166f, vec2<f32>(-1537f, -743f), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<u32>(45299u, 14892u, 1u, 1914u), vec2<i32>(0i, 37085i), -716f, vec2<f32>(-165f, 705f), vec2<u32>(65842u, 37773u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 16836u), vec2<i32>(-39963i, 180i), -287f, vec2<f32>(936f, -166f), vec2<u32>(13050u, 14826u)), Struct_1(vec4<u32>(28038u, 4294967295u, 30524u, 46597u), vec2<i32>(2147483647i, -1i), 380f, vec2<f32>(1867f, 336f), vec2<u32>(48787u, 86343u)), Struct_1(vec4<u32>(0u, 40073u, 4294967295u, 112193u), vec2<i32>(i32(-2147483648), i32(-2147483648)), -1161f, vec2<f32>(1168f, 213f), vec2<u32>(51174u, 4294967295u)), Struct_1(vec4<u32>(25309u, 69014u, 72290u, 1u), vec2<i32>(57i, -8218i), 104f, vec2<f32>(687f, -314f), vec2<u32>(1u, 56363u)), Struct_1(vec4<u32>(1u, 1u, 1u, 17180u), vec2<i32>(2147483647i, 1i), 204f, vec2<f32>(-220f, -1284f), vec2<u32>(3985u, 1u)), Struct_1(vec4<u32>(2915u, 1u, 98948u, 0u), vec2<i32>(45223i, -25093i), -1046f, vec2<f32>(-577f, -991f), vec2<u32>(31530u, 1u)), Struct_1(vec4<u32>(0u, 31510u, 1u, 37455u), vec2<i32>(2147483647i, -56240i), -563f, vec2<f32>(705f, -214f), vec2<u32>(247u, 4294967295u)), Struct_1(vec4<u32>(49u, 1u, 0u, 4294967295u), vec2<i32>(i32(-2147483648), -11921i), -170f, vec2<f32>(1892f, 504f), vec2<u32>(18411u, 1u)), Struct_1(vec4<u32>(20326u, 0u, 0u, 13010u), vec2<i32>(0i, -8266i), 501f, vec2<f32>(-327f, 732f), vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 2344u), vec2<i32>(0i, 1i), 369f, vec2<f32>(1011f, -803f), vec2<u32>(42907u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 36549u), vec2<i32>(2147483647i, -8919i), -405f, vec2<f32>(1343f, 333f), vec2<u32>(21389u, 0u)));

var<private> global3: array<u32, 12> = array<u32, 12>(49342u, 0u, 0u, 1u, 4294967295u, 0u, 24808u, 4294967295u, 14812u, 62575u, 11079u, 19668u);

var<private> global4: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    global1 = array<i32, 5>();
    let var_0 = Struct_4(arg_0.a.e.x);
    let var_1 = ~_wgslsmith_add_vec4_i32(vec4<i32>(select(-75677i, 7870i, true), _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(-18191i, -42879i)), 2147483647i, ~_wgslsmith_clamp_i32(u_input.d, global1[_wgslsmith_index_u32(4294967295u, 5u)], arg_0.a.b.x)), select((vec4<i32>(-12471i, 0i, 6603i, 69964i) ^ vec4<i32>(u_input.d, 23147i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(40764u, 12u)], 5u)], arg_0.a.b.x)) | _wgslsmith_sub_vec4_i32(vec4<i32>(-25074i, global1[_wgslsmith_index_u32(56352u, 5u)], arg_0.a.b.x, -42635i), vec4<i32>(u_input.d, u_input.a.x, global1[_wgslsmith_index_u32(arg_0.a.a.x, 5u)], -55463i)), ~vec4<i32>(0i, -2147483647i, -2147483647i, 10539i) << (vec4<u32>(u_input.b, 7353u, var_0.a, var_0.a) % vec4<u32>(32u)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(83136u, 22u)], global0[_wgslsmith_index_u32(4888u, 22u)], global0[_wgslsmith_index_u32(31376u, 22u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a, 22u)], false, false), all(vec3<bool>(global0[_wgslsmith_index_u32(34192u, 22u)], global0[_wgslsmith_index_u32(var_0.a, 22u)], false)))));
    global4 = ~8711u;
    let var_2 = var_0.a;
    return vec3<bool>(all(vec2<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(14276u, 22u)], global0[_wgslsmith_index_u32(25928u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(var_2, 22u)]))), max(1i, -1i) != var_1.x)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(3881u, u_input.c.x), 22u)], all(vec3<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(101791u, 22u)], false, global0[_wgslsmith_index_u32(u_input.c.x, 22u)])), global0[_wgslsmith_index_u32(1u, 22u)], !any(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(var_2, 22u)], global0[_wgslsmith_index_u32(u_input.c.x, 22u)], global0[_wgslsmith_index_u32(28088u, 22u)])))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global4 = 3689u;
    var var_0 = vec3<bool>(any(func_3(Struct_5(Struct_1(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 12u)], u_input.c.x, u_input.b), vec2<i32>(1i, u_input.d), -1273f, vec2<f32>(-1485f, -2154f), u_input.c), Struct_4(0u), u_input.c.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-861f, 379f, 1014f) + vec3<f32>(-1296f, 1028f, -1144f)), ~vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], global3[_wgslsmith_index_u32(u_input.b, 12u)], 1u)))), !global0[_wgslsmith_index_u32(1u ^ u_input.c.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(140f - _wgslsmith_f_op_f32(f32(-1f) * -218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(988f)) - _wgslsmith_f_op_f32(f32(-1f) * -634f))), _wgslsmith_f_op_f32(379f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -802f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(547f, 1364f, -305f, 1267f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(392f, 960f, 770f, -758f) - vec4<f32>(1000f, -1506f, 888f, 443f)))))));
    let var_2 = !(any(vec4<bool>(40220i != u_input.d, true, !var_0.x, false)) & (any(var_0.xx) != true));
    global0 = array<bool, 22>();
    return global2[_wgslsmith_index_u32(select(reverseBits(0u), global3[_wgslsmith_index_u32(~firstTrailingBit(~u_input.c.x), 12u)], any(vec2<bool>(var_2, true))), 30u)];
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    var var_0 = Struct_4(_wgslsmith_div_u32(51650u, select(firstTrailingBit(firstLeadingBit(1u)), _wgslsmith_mult_u32(arg_0.e.x, ~0u), global0[_wgslsmith_index_u32(~4294967295u, 22u)])));
    let var_1 = func_2(firstLeadingBit(vec3<i32>(-u_input.a.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.a, 5u)], -11255i, -54080i), vec3<i32>(-34003i, global1[_wgslsmith_index_u32(0u, 5u)], 1i))), reverseBits(~(-1i)))));
    var var_2 = Struct_5(Struct_1(abs(vec4<u32>(_wgslsmith_sub_u32(890u, arg_0.e.x), 1u, firstLeadingBit(1u), _wgslsmith_mult_u32(u_input.c.x, 4294967295u))), var_1.b, arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(417f, -1000f), arg_0.d)))), vec2<u32>(1u, ~arg_0.a.x)), Struct_4(global3[_wgslsmith_index_u32(~select(4294967295u & arg_0.a.x, 5911u, global0[_wgslsmith_index_u32(arg_0.e.x, 22u)]), 12u)]), select(36864u, _wgslsmith_dot_vec3_u32(~arg_0.a.wwy >> (max(vec3<u32>(arg_0.a.x, 49743u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)]), arg_0.a.yzz) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(var_1.a.wzz, arg_0.a.wzw, var_1.a.xwz))), true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(983f, -2399f, -1085f))), ~vec4<u32>(max(u_input.c.x ^ 17764u, reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(10978u, 12u)], 12u)])), 94030u, _wgslsmith_mod_u32(var_1.a.x, abs(4294967295u)), func_2(vec3<i32>(-96636i, u_input.d, u_input.d)).a.x >> (~var_0.a % 32u)));
    global1 = array<i32, 5>();
    var var_3 = ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_2.a.b.x, _wgslsmith_mult_i32(2147483647i, global1[_wgslsmith_index_u32(var_2.c, 5u)])), _wgslsmith_dot_vec4_i32(~vec4<i32>(-845i, 2147483647i, 2147483647i, -1i), firstTrailingBit(vec4<i32>(86878i, arg_0.b.x, 0i, var_2.a.b.x))), ~var_1.b.x, var_1.b.x), vec4<i32>(-var_2.a.b.x, -32457i, 30055i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(1u, 4294967295u), global3[_wgslsmith_index_u32(~10102u, 12u)]), 5u)]));
    return countOneBits(var_2.a.a.xzz);
}

fn func_1() -> vec3<u32> {
    var var_0 = ~func_4(func_2(vec3<i32>(u_input.a.x & global1[_wgslsmith_index_u32(u_input.b, 5u)], global1[_wgslsmith_index_u32(~37245u, 5u)], abs(-2191i))));
    var var_1 = vec3<u32>(countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 61317u), vec3<u32>(4294967295u, u_input.c.x, global3[_wgslsmith_index_u32(var_0.x, 12u)])))) ^ var_0.x, 82009u, ~55345u);
    var_0 = ~abs(select(select(abs(vec3<u32>(0u, var_1.x, var_1.x)), select(vec3<u32>(0u, 68685u, 1u), vec3<u32>(37174u, u_input.b, global3[_wgslsmith_index_u32(1u, 12u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 22u)], global0[_wgslsmith_index_u32(56707u, 22u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.x, 22u)], global0[_wgslsmith_index_u32(u_input.b, 22u)]), global0[_wgslsmith_index_u32(u_input.b, 22u)])), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 60417u, 4294967295u), ~vec3<u32>(51501u, 4294967295u, var_0.x)), !vec3<bool>(true, true, global0[_wgslsmith_index_u32(0u, 22u)])));
    global1 = array<i32, 5>();
    let var_2 = Struct_4(1u);
    return abs(~(~vec3<u32>(u_input.c.x, u_input.b, _wgslsmith_sub_u32(var_1.x, 40759u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (global0[_wgslsmith_index_u32(~1u, 22u)] || global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)] & u_input.c.x, 12u)], u_input.b), ~u_input.c), 12u)], 22u)]) == !(!(global0[_wgslsmith_index_u32(10045u, 22u)] | any(vec2<bool>(true, true))));
    global1 = array<i32, 5>();
    var var_1 = _wgslsmith_mod_vec3_u32(func_1(), vec3<u32>(1u, func_1().x, 33810u));
    let var_2 = vec3<u32>(58966u, u_input.c.x, 4294967295u);
    var var_3 = 0u;
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(847f, -1000f, 781f, -1211f)))))));
    global3 = array<u32, 12>();
    var var_5 = var_4.a.x;
    global1 = array<i32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(-950f, func_2(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, -48211i, 2147483647i) << (var_2 % vec3<u32>(32u))), select(vec3<i32>(-32516i, -1i, -2147483647i) ^ vec3<i32>(0i, 2147483647i, u_input.d), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(23653u, 5u)], 15934i) ^ vec3<i32>(global1[_wgslsmith_index_u32(0u, 5u)], u_input.d, 19580i), !vec3<bool>(var_0, true, true)))).d);
}

