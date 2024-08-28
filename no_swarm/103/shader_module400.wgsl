struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(16320u, 1u);

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(false, 0u), vec3<u32>(0u, 11677u, 1u), Struct_1(true, 0u), Struct_1(true, 4294967295u), Struct_1(true, 23576u)), Struct_2(Struct_1(true, 1u), vec3<u32>(0u, 3703u, 2975u), Struct_1(true, 4294967295u), Struct_1(false, 29511u), Struct_1(true, 49209u)), Struct_2(Struct_1(true, 60091u), vec3<u32>(41723u, 40227u, 1u), Struct_1(false, 79041u), Struct_1(true, 1u), Struct_1(false, 13044u)), Struct_2(Struct_1(true, 0u), vec3<u32>(0u, 17905u, 0u), Struct_1(true, 1u), Struct_1(true, 1u), Struct_1(true, 4294967295u)), Struct_2(Struct_1(true, 0u), vec3<u32>(58210u, 4294967295u, 45116u), Struct_1(true, 32888u), Struct_1(true, 12070u), Struct_1(true, 0u)), Struct_2(Struct_1(true, 4294967295u), vec3<u32>(0u, 0u, 94562u), Struct_1(true, 8029u), Struct_1(false, 30078u), Struct_1(true, 11202u)), Struct_2(Struct_1(true, 4294967295u), vec3<u32>(0u, 33857u, 1u), Struct_1(false, 0u), Struct_1(false, 30387u), Struct_1(true, 0u)), Struct_2(Struct_1(true, 4294967295u), vec3<u32>(10415u, 12526u, 10363u), Struct_1(true, 1u), Struct_1(true, 1u), Struct_1(true, 0u)), Struct_2(Struct_1(true, 28496u), vec3<u32>(99377u, 42714u, 0u), Struct_1(true, 72606u), Struct_1(true, 4294967295u), Struct_1(false, 4294967295u)), Struct_2(Struct_1(false, 45374u), vec3<u32>(0u, 10753u, 43238u), Struct_1(true, 83004u), Struct_1(false, 40267u), Struct_1(true, 1u)), Struct_2(Struct_1(true, 70686u), vec3<u32>(1u, 1u, 39906u), Struct_1(true, 0u), Struct_1(false, 1u), Struct_1(false, 4294967295u)), Struct_2(Struct_1(false, 158338u), vec3<u32>(1u, 1u, 2451u), Struct_1(true, 31246u), Struct_1(true, 55248u), Struct_1(false, 4294967295u)), Struct_2(Struct_1(false, 4294967295u), vec3<u32>(4294967295u, 21427u, 1u), Struct_1(true, 0u), Struct_1(true, 4294967295u), Struct_1(false, 80812u)), Struct_2(Struct_1(true, 64725u), vec3<u32>(1u, 104557u, 4294967295u), Struct_1(false, 78281u), Struct_1(false, 58957u), Struct_1(false, 12110u)), Struct_2(Struct_1(false, 20542u), vec3<u32>(37027u, 126322u, 20305u), Struct_1(true, 9059u), Struct_1(true, 12267u), Struct_1(true, 42509u)), Struct_2(Struct_1(false, 28468u), vec3<u32>(28654u, 1u, 1u), Struct_1(true, 17207u), Struct_1(false, 10913u), Struct_1(true, 8884u)), Struct_2(Struct_1(false, 0u), vec3<u32>(4294967295u, 4294967295u, 45736u), Struct_1(false, 50822u), Struct_1(false, 0u), Struct_1(true, 4294967295u)), Struct_2(Struct_1(true, 20108u), vec3<u32>(0u, 0u, 90117u), Struct_1(false, 10101u), Struct_1(true, 31398u), Struct_1(true, 43582u)), Struct_2(Struct_1(false, 129081u), vec3<u32>(1u, 10887u, 17839u), Struct_1(false, 1u), Struct_1(true, 13651u), Struct_1(false, 0u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(true, 124913u);
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 19u)];
    global1 = array<Struct_2, 19>();
    var var_2 = arg_2.x;
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(0u, var_1.d.b | ~0u), 1u, var_0.b), 19u)]);
    return var_3.a.c;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec4<bool> {
    var var_0 = !vec3<bool>(all(!vec3<bool>(false, arg_0, arg_0)) | func_2(1i, !vec3<bool>(arg_0, false, arg_0), reverseBits(vec4<i32>(2147483647i, 28880i, 0i, -22637i))).a, !any(select(vec2<bool>(false, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, false))), arg_0);
    let var_1 = vec3<i32>(1i, -13824i, 1i);
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(1u, 19u)]);
    var var_3 = _wgslsmith_clamp_u32(firstLeadingBit(arg_1.b), ~10664u, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(57074u, 65916u, 53666u), ~var_2.a.b)));
    return select(!select(select(!vec4<bool>(var_0.x, false, var_2.a.d.a, true), vec4<bool>(false, var_2.a.d.a, true, var_0.x), !var_0.x), vec4<bool>(arg_0 || var_2.a.a.a, var_1.x > var_1.x, true, select(var_2.a.c.a, var_0.x, var_2.a.a.a)), vec4<bool>(all(var_0.yz), -763f <= arg_1.a, !arg_0, !arg_0)), !(!(!(!vec4<bool>(var_2.a.d.a, true, var_0.x, arg_0)))), select(select(select(vec4<bool>(arg_0, false, arg_0, arg_0), !vec4<bool>(var_0.x, var_2.a.d.a, arg_0, var_0.x), vec4<bool>(arg_0, arg_0, false, false)), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, arg_0), vec4<bool>(false, var_0.x, true, true)), !vec4<bool>(true, true, true, arg_0), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_0.x, arg_0, true, true), vec4<bool>(var_0.x, false, false, arg_0), !var_0.x)), select(vec4<bool>(arg_0, true, var_0.x & false, !arg_0), select(select(vec4<bool>(true, false, var_2.a.c.a, var_0.x), vec4<bool>(false, arg_0, var_0.x, arg_0), vec4<bool>(true, var_2.a.c.a, var_0.x, false)), vec4<bool>(false, true, var_2.a.e.a, false), !vec4<bool>(var_2.a.a.a, var_2.a.d.a, var_2.a.d.a, false)), !vec4<bool>(var_0.x, arg_0, true, true)), select(select(vec4<bool>(false, false, arg_0, false), select(vec4<bool>(var_2.a.e.a, var_2.a.e.a, true, true), vec4<bool>(var_0.x, var_0.x, true, arg_0), vec4<bool>(arg_0, var_0.x, true, arg_0)), true), select(vec4<bool>(arg_0, arg_0, false, arg_0), select(vec4<bool>(arg_0, false, var_2.a.d.a, var_2.a.d.a), vec4<bool>(var_0.x, true, false, true), vec4<bool>(true, arg_0, arg_0, var_0.x)), !vec4<bool>(false, true, true, var_0.x)), vec4<bool>(arg_1.a <= arg_1.a, true, false, false))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    var var_0 = u_input.a.yyz;
    var var_1 = arg_2.b;
    let var_2 = Struct_1(arg_2.a, global0.x);
    var var_3 = Struct_4(-180f, countOneBits(var_0.x));
    var_0 = ~select((~u_input.a.xzy >> (min(u_input.a.yxz, vec3<u32>(var_2.b, 0u, var_2.b)) % vec3<u32>(32u))) & _wgslsmith_clamp_vec3_u32(~u_input.a.xxx, max(u_input.a.xwy, vec3<u32>(var_3.b, var_3.b, 34473u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b, var_3.b, 4294967295u), vec3<u32>(4294967295u, arg_2.b, 60302u))), ~firstLeadingBit(~u_input.a.zyy), vec3<bool>(true, var_2.a, true));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a, var_3.a))) + var_3.a) + _wgslsmith_f_op_f32(var_3.a + -2638f)) < 1f;
}

fn func_1() -> vec2<u32> {
    global1 = array<Struct_2, 19>();
    var var_0 = any(vec4<bool>(true, func_4(vec3<i32>(-9818i, -7949i, -1i) >> (vec3<u32>(u_input.a.x, 0u, 62588u) % vec3<u32>(32u)), vec4<bool>(true, false, true, true), func_2(47155i, vec3<bool>(false, false, true), vec4<i32>(-24229i, 1i, -28348i, -8114i)), func_3(true, Struct_4(-168f, 1u))), 7033u != _wgslsmith_mod_u32(u_input.a.x, 1u), false)) | true;
    global0 = u_input.a.yz;
    var var_1 = !(!vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    global0 = _wgslsmith_mult_vec2_u32(u_input.a.xy & u_input.a.ww, ~(~(~(~u_input.a.yx))));
    return ~(u_input.a.ww ^ ((vec2<u32>(global0.x, 1u) & countOneBits(vec2<u32>(61028u, global0.x))) | select(u_input.a.zz, select(vec2<u32>(global0.x, u_input.a.x), vec2<u32>(global0.x, 39132u), false), all(vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(_wgslsmith_div_vec2_u32(~(~vec2<u32>(u_input.a.x, u_input.a.x) ^ func_1()), u_input.a.xz), u_input.a.zz);
    global0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), u_input.a), ~1u), u_input.a.x), 4294967295u);
    global1 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1790f, -2044f, -222f, -622f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(312f, 793f, -297f, -1415f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(370f, 1000f, 881f, -1783f) + vec4<f32>(-1456f, 210f, 731f, 365f)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true))))))));
    let var_1 = -((-1i << (_wgslsmith_dot_vec4_u32(~vec4<u32>(3103u, global0.x, 39257u, u_input.a.x), ~u_input.a) % 32u)) ^ reverseBits(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -1i, -47730i), vec3<i32>(-21808i, 0i, -1i)), ~6697i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_f32(abs(-1657f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(var_1, var_1, 13773i, var_1)), select(reverseBits(vec4<i32>(-1i, 0i, 25197i, -22789i)), ~vec4<i32>(7261i, -10449i, var_1, var_1), false)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -19987i, 20577i, -34009i), vec4<i32>(0i, -1i, 2147483647i, var_1)) | -1i, ~1i)), _wgslsmith_sub_i32(var_1, ~min(-var_1, _wgslsmith_mult_i32(var_1, -2147483647i))));
}

