struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(203f, 793f, vec2<bool>(true, false), -215f), Struct_1(-1349f, -1741f, vec2<bool>(true, true), -1909f), Struct_1(152f, 540f, vec2<bool>(true, false), -1176f), Struct_1(1644f, -993f, vec2<bool>(true, true), -953f), Struct_1(232f, -354f, vec2<bool>(true, true), -1954f), Struct_1(1218f, 890f, vec2<bool>(true, false), 1058f), Struct_1(-1000f, 545f, vec2<bool>(true, false), -292f), Struct_1(-425f, 189f, vec2<bool>(false, false), -1000f), Struct_1(715f, 473f, vec2<bool>(false, false), -997f), Struct_1(681f, 1700f, vec2<bool>(true, false), 1365f), Struct_1(-252f, -748f, vec2<bool>(false, false), 538f), Struct_1(-1115f, -801f, vec2<bool>(true, false), 1000f), Struct_1(650f, -475f, vec2<bool>(true, true), 1091f), Struct_1(-618f, -196f, vec2<bool>(true, true), 297f), Struct_1(1000f, 1789f, vec2<bool>(false, false), 170f), Struct_1(526f, -360f, vec2<bool>(true, false), -985f), Struct_1(-1000f, -685f, vec2<bool>(true, false), 397f), Struct_1(385f, -293f, vec2<bool>(false, true), 2704f), Struct_1(1395f, -455f, vec2<bool>(false, true), -908f), Struct_1(-133f, -248f, vec2<bool>(false, false), -652f), Struct_1(969f, 214f, vec2<bool>(true, false), -135f), Struct_1(-452f, -121f, vec2<bool>(true, true), -1909f), Struct_1(1000f, -1719f, vec2<bool>(false, true), 1630f), Struct_1(295f, 1721f, vec2<bool>(false, true), 758f), Struct_1(-842f, 878f, vec2<bool>(false, false), -1226f), Struct_1(-660f, -168f, vec2<bool>(false, true), -1666f));

var<private> global1: f32;

var<private> global2: array<u32, 29> = array<u32, 29>(42083u, 0u, 36648u, 13958u, 4294967295u, 0u, 1u, 56645u, 1u, 1u, 2950u, 0u, 0u, 8251u, 15913u, 60801u, 1u, 0u, 49374u, 18226u, 62917u, 17743u, 11485u, 1u, 10421u, 0u, 4294967295u, 43747u, 4294967295u);

var<private> global3: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_1(431f, 358f, vec2<bool>(true, true), -1676f), 572f, 2202f, -1i, vec4<i32>(-1i, i32(-2147483648), 22666i, -45707i)), Struct_3(Struct_1(-794f, -280f, vec2<bool>(false, true), -516f), -469f, 1304f, 0i, vec4<i32>(25445i, -34766i, 60446i, 0i)), Struct_3(Struct_1(655f, 1383f, vec2<bool>(false, true), 383f), -2073f, 855f, 10222i, vec4<i32>(-18866i, 1i, 2147483647i, 20350i)), Struct_3(Struct_1(-192f, 742f, vec2<bool>(true, false), 1000f), 106f, -235f, 2147483647i, vec4<i32>(i32(-2147483648), -1i, -11166i, -93459i)), Struct_3(Struct_1(378f, -453f, vec2<bool>(false, false), -228f), -688f, 534f, -39653i, vec4<i32>(2147483647i, -22882i, 19072i, 0i)), Struct_3(Struct_1(-178f, 170f, vec2<bool>(true, true), 270f), -390f, -268f, -25523i, vec4<i32>(-3044i, 0i, 0i, i32(-2147483648))), Struct_3(Struct_1(1635f, 318f, vec2<bool>(true, true), 431f), -348f, -1885f, -71613i, vec4<i32>(1i, 45231i, 23891i, 0i)), Struct_3(Struct_1(455f, 910f, vec2<bool>(true, true), -1093f), 1422f, -726f, -11096i, vec4<i32>(0i, -4798i, 4012i, -2562i)), Struct_3(Struct_1(-1373f, 505f, vec2<bool>(false, false), 198f), 767f, 1008f, -31434i, vec4<i32>(65717i, i32(-2147483648), 4257i, -37227i)));

var<private> global4: Struct_3 = Struct_3(Struct_1(381f, -357f, vec2<bool>(true, false), -1531f), 312f, 125f, i32(-2147483648), vec4<i32>(-1i, 41717i, 0i, 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    global2 = array<u32, 29>();
    var var_0 = Struct_2(vec4<i32>(1i, reverseBits(_wgslsmith_dot_vec2_i32(global4.e.zz, u_input.d.zz)) ^ global4.d, -global4.d, u_input.b), arg_2.c.x);
    let var_1 = global4.a;
    let var_2 = _wgslsmith_mod_vec2_i32(var_0.a.yz, ~reverseBits(vec2<i32>(0i, countOneBits(u_input.b))));
    global0 = array<Struct_1, 26>();
    return var_2.x << (4294967295u % 32u);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1) -> i32 {
    global4 = arg_1;
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_clamp_i32(arg_1.d, _wgslsmith_mod_i32(0i, -7301i), reverseBits(_wgslsmith_div_i32(-2147483647i, 44720i))) << (~4294967295u % 32u);
    global1 = _wgslsmith_f_op_f32(round(global4.c));
    let var_2 = Struct_1(617f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_1.a.b, _wgslsmith_f_op_f32(global4.a.d + 1719f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global4.b))))))), !vec2<bool>(!var_0.c.x, true), 1778f);
    return -arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<i32>(-_wgslsmith_div_i32(u_input.b, 0i), 2147483647i, ~_wgslsmith_div_i32(max(u_input.b, -1i), _wgslsmith_mult_i32(11551i, 0i)), 0i), all(vec2<bool>(true, false)));
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(func_2(vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec3<bool>(true, true, false), global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 26u)]), -9168i), vec2<i32>(u_input.b, 62607i))), ~var_0.a.x, u_input.d.x);
    let var_2 = _wgslsmith_clamp_i32(var_0.a.x, -29927i, -_wgslsmith_div_i32(~_wgslsmith_mult_i32(u_input.d.x, 48695i), _wgslsmith_sub_i32(func_3(-22593i, global3[_wgslsmith_index_u32(1u, 9u)], Struct_1(global4.c, 175f, global4.a.c, global4.a.b)), 5808i)));
    let var_3 = global4.a;
    global4 = global3[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_sub_u32(~arg_0.x, arg_0.x >> (1u % 32u))), 9u)];
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    global4 = Struct_3(func_1(~(~vec2<u32>(7030u, global2[_wgslsmith_index_u32(10744u, 29u)])), u_input.e.zx), _wgslsmith_f_op_f32(min(global4.b, -415f)), global4.c, ~(-28335i), vec4<i32>(_wgslsmith_mult_i32(-abs(u_input.b), _wgslsmith_div_i32(u_input.d.x, global4.d)), 1i, ~(-54698i), abs(6301i)));
    let var_0 = _wgslsmith_f_op_f32(-168f - global4.b);
    global3 = array<Struct_3, 9>();
    let var_1 = global4.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e.xzz, ~(~vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(1u, 29u)], 4294967295u))), 29u)], max(1u, min(~global2[_wgslsmith_index_u32(100944u, 29u)], ~global2[_wgslsmith_index_u32(1u, 29u)])), ~(~(~26153u)), ~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(352u, 29u)], 29u)] ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 29u)])), var_0, min(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(33574u, global2[_wgslsmith_index_u32(u_input.e.x, 29u)], 81482u, 73653u), ~u_input.e)), abs(~_wgslsmith_add_vec4_u32(u_input.c, u_input.e))));
}

