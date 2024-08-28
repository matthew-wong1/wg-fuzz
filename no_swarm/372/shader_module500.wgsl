struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<i32>(-12489i, 1i, 0i, 0i), vec3<u32>(4294967295u, 9363u, 42053u), true, 1u), Struct_1(vec4<i32>(2147483647i, -65414i, -13865i, 32695i), vec3<u32>(1u, 0u, 4294967295u), true, 4294967295u), Struct_1(vec4<i32>(-9434i, 2147483647i, 25613i, 2147483647i), vec3<u32>(74672u, 0u, 9181u), true, 1u), Struct_1(vec4<i32>(42083i, -1i, -24340i, 8700i), vec3<u32>(0u, 3376u, 56625u), true, 4294967295u), Struct_1(vec4<i32>(79778i, i32(-2147483648), 7545i, -7436i), vec3<u32>(50719u, 12664u, 20834u), false, 1u), Struct_1(vec4<i32>(11752i, i32(-2147483648), -699i, 25726i), vec3<u32>(2918u, 0u, 0u), false, 4112u), Struct_1(vec4<i32>(2296i, 1i, 56657i, -1i), vec3<u32>(39647u, 25614u, 1u), false, 0u), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 52943i, 0i), vec3<u32>(6876u, 0u, 0u), false, 25100u), Struct_1(vec4<i32>(22173i, -1i, 1i, 2147483647i), vec3<u32>(1u, 17704u, 0u), true, 365u), Struct_1(vec4<i32>(1i, 1i, -4659i, 0i), vec3<u32>(14037u, 9828u, 0u), true, 4294967295u), Struct_1(vec4<i32>(2147483647i, 42353i, -30156i, 15501i), vec3<u32>(24829u, 0u, 1u), true, 75120u), Struct_1(vec4<i32>(15126i, 2147483647i, -8404i, 0i), vec3<u32>(20040u, 1u, 73935u), false, 1u), Struct_1(vec4<i32>(1i, -1i, 34386i, 15257i), vec3<u32>(672u, 35384u, 4294967295u), false, 81689u), Struct_1(vec4<i32>(17990i, 48702i, 0i, i32(-2147483648)), vec3<u32>(0u, 4294967295u, 1u), true, 1u), Struct_1(vec4<i32>(0i, 2147483647i, i32(-2147483648), -27476i), vec3<u32>(0u, 54964u, 62465u), true, 4294967295u), Struct_1(vec4<i32>(4981i, 15039i, i32(-2147483648), 0i), vec3<u32>(4294967295u, 0u, 111902u), false, 1u), Struct_1(vec4<i32>(38406i, -20973i, i32(-2147483648), 26480i), vec3<u32>(1u, 86156u, 1u), true, 13782u), Struct_1(vec4<i32>(-1i, -27346i, 1i, 0i), vec3<u32>(0u, 30037u, 2098u), true, 24819u), Struct_1(vec4<i32>(i32(-2147483648), 0i, -8074i, 0i), vec3<u32>(0u, 4294967295u, 0u), true, 32693u));

var<private> global1: array<vec3<u32>, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec2<u32> {
    global1 = array<vec3<u32>, 4>();
    var var_0 = u_input.b;
    return vec2<u32>(_wgslsmith_dot_vec3_u32(max(global1[_wgslsmith_index_u32(abs(53805u), 4u)] << (~global1[_wgslsmith_index_u32(u_input.b, 4u)] % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.b), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b, 4u)]), ~vec3<u32>(1u, u_input.b, 77374u))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(max(u_input.b, 1u), u_input.b), vec2<u32>(u_input.b, 23438u) ^ abs(vec2<u32>(u_input.b, 60490u))), 4u)]), 33339u);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> Struct_2 {
    global1 = array<vec3<u32>, 4>();
    global1 = array<vec3<u32>, 4>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.x)))))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-779f)), _wgslsmith_div_f32(-140f, arg_3))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))));
    global0 = array<Struct_1, 19>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(72037u, arg_1), abs(countOneBits(~func_3(vec2<bool>(true, false), false)))), 19u)];
    return Struct_2(arg_0.xx, var_1.b.xy);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    let var_0 = ~u_input.a.x;
    let var_1 = 58925i;
    let var_2 = select(2147483647i, u_input.a.x, true);
    global1 = array<vec3<u32>, 4>();
    return Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 1i, var_0 >> (~45957u % 32u)) | -reverseBits(vec4<i32>(-2147483647i, -41105i, 39002i, var_0)), vec3<u32>(49804u, u_input.b, _wgslsmith_div_u32(~u_input.b, arg_1.x)), true, 0u);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    let var_0 = ~(~((~vec4<u32>(u_input.b, arg_0.b.x, 21086u, u_input.b) >> (~vec4<u32>(u_input.b, 0u, 4294967295u, arg_0.d) % vec4<u32>(32u))) & _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 48604u)), vec4<u32>(4294967295u, u_input.b, 62207u, u_input.b))));
    let var_1 = arg_0;
    global0 = array<Struct_1, 19>();
    let var_2 = ~_wgslsmith_dot_vec3_i32(u_input.c.www, reverseBits((var_1.a.wwy << (vec3<u32>(38848u, var_1.b.x, arg_0.d) % vec3<u32>(32u))) >> (abs(var_1.b) % vec3<u32>(32u))));
    global1 = array<vec3<u32>, 4>();
    return Struct_4(!(!select(vec2<bool>(var_1.c, false), select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.c, true), vec2<bool>(var_1.c, var_1.c)), !vec2<bool>(arg_0.c, var_1.c))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = func_5(func_4(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, -2575f, -451f, -688f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 668f, 1325f, -752f), vec4<f32>(930f, 1267f, 1297f, 823f), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true))), vec4<bool>(false, true, true, false))), 0u, firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, -2147483647i, arg_1.x), vec3<i32>(1i, u_input.c.x, -21757i))), 1f), arg_0.b, Struct_4(vec2<bool>(arg_0.c, any(vec3<bool>(true, false, arg_0.c))))), _wgslsmith_f_op_f32(f32(-1f) * -926f));
    var var_1 = Struct_3(select(_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_0.a.x, 25618i), _wgslsmith_mult_vec2_i32(arg_0.a.xx, vec2<i32>(-1i, arg_1.x))) | select(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_0.a.x), vec2<i32>(-1i, -4529i), arg_0.a.ww), vec2<i32>(-1i, arg_0.a.x), true), ~_wgslsmith_add_vec2_i32(countOneBits(arg_1.yw), vec2<i32>(arg_0.a.x, arg_1.x) >> (vec2<u32>(32652u, u_input.b) % vec2<u32>(32u))), all(!var_0.a)));
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_0.b.yx, arg_0.b.zy), _wgslsmith_sub_vec2_u32(max(vec2<u32>(_wgslsmith_clamp_u32(43702u, u_input.b, 5221u), 97692u & arg_0.d), arg_0.b.zz), arg_0.b.xy));
    let var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, u_input.b, var_2.x, 4294967295u), vec4<u32>(u_input.b, var_2.x, 1u, u_input.b)), vec4<u32>(countOneBits(arg_0.d), arg_0.d, _wgslsmith_div_u32(1u, arg_0.d), var_2.x)), ~abs(~vec4<u32>(0u, arg_0.b.x, 42624u, 84701u))), vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(select(firstLeadingBit(arg_0.b.yx), abs(vec2<u32>(var_2.x, u_input.b)), func_5(global0[_wgslsmith_index_u32(11077u, 19u)], -717f).a), ~vec2<u32>(var_2.x, 0u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(5599u, 15770u), vec2<u32>(21883u, 2824u), vec2<u32>(36875u, arg_0.b.x))), ~((u_input.b << (40395u % 32u)) ^ 19798u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(var_2.x, 1u, 4294967295u), _wgslsmith_div_u32(43441u, u_input.b), firstLeadingBit(0u), ~u_input.b), _wgslsmith_sub_vec4_u32(~vec4<u32>(24811u, 13150u, var_2.x, arg_0.d), countOneBits(vec4<u32>(var_2.x, 9792u, 28202u, var_2.x))))));
    var var_4 = (vec2<i32>(-1i) * -(~max(var_1.a, arg_1.wx))) | -(~vec2<i32>(17063i, 35894i) << ((vec2<u32>(11842u, arg_0.b.x) << ((vec2<u32>(37790u, 70284u) | var_3.yy) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return Struct_3(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, u_input.b), 19u)], vec4<i32>(u_input.c.x, u_input.c.x, u_input.a.x, reverseBits(max(u_input.c.x, 1i))) ^ vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x));
    let var_1 = ~abs(firstLeadingBit(abs(vec4<u32>(u_input.b, 23138u, 20952u, 8874u))));
    global1 = array<vec3<u32>, 4>();
    var var_2 = _wgslsmith_mod_u32(2918u, _wgslsmith_sub_u32(u_input.b, select(func_3(vec2<bool>(true, true), func_4(Struct_2(vec2<f32>(-339f, 2621f), vec2<u32>(u_input.b, var_1.x)), vec3<u32>(u_input.b, 0u, 1u), Struct_4(vec2<bool>(true, true))).c).x, u_input.b, select(true, false, u_input.b < 1u))));
    let var_3 = ~var_1.xxy;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-748f - _wgslsmith_div_f32(333f, -469f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(~4294967295u, 69614u) & (var_1.xx | ~var_1.zz)));
}

