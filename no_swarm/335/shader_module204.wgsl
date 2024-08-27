struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(1i, i32(-2147483648), -45840i, -45316i), vec4<i32>(0i, i32(-2147483648), -62966i, 1i), vec4<i32>(15359i, -10482i, 0i, -2793i), vec4<i32>(8899i, 4915i, -1i, 1i), vec4<i32>(i32(-2147483648), -5194i, 0i, -1i), vec4<i32>(-27776i, 1i, i32(-2147483648), 0i), vec4<i32>(-1i, -22886i, -1i, 53596i), vec4<i32>(24157i, -1i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, -41469i, -1i), vec4<i32>(-1i, -68934i, i32(-2147483648), 1i), vec4<i32>(49896i, 1i, 1i, -1i), vec4<i32>(i32(-2147483648), 21063i, 75901i, -67748i), vec4<i32>(1i, 20248i, 0i, 12397i), vec4<i32>(-51901i, 0i, 0i, 62162i), vec4<i32>(2147483647i, i32(-2147483648), 0i, 18160i), vec4<i32>(-21073i, 7230i, -1i, 5334i), vec4<i32>(0i, 52861i, i32(-2147483648), 1i), vec4<i32>(2147483647i, -1i, 32568i, 39183i), vec4<i32>(1i, -32664i, -34754i, 1i), vec4<i32>(i32(-2147483648), -6452i, 32834i, i32(-2147483648)));

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(71892u);

var<private> global3: array<i32, 4>;

var<private> global4: i32 = -68318i;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = !vec2<bool>(true, true || any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))));
    global2 = Struct_3(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 95703u), ~vec2<u32>(1u, global2.a))), _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.d, firstTrailingBit(u_input.d)), ~(~vec2<u32>(71611u, 20207u)))));
    global2 = Struct_3(_wgslsmith_mod_u32(u_input.d, abs(u_input.d)));
    global0 = array<vec4<i32>, 20>();
    let var_1 = Struct_2(Struct_1(select(vec4<u32>(u_input.d, global2.a >> (4294967295u % 32u), 80191u, global2.a << (global2.a % 32u)), (vec4<u32>(31846u, u_input.d, 61164u, 0u) & vec4<u32>(global2.a, global2.a, u_input.d, 46995u)) ^ select(vec4<u32>(global2.a, 4294967295u, 4294967295u, 0u), vec4<u32>(global2.a, 67022u, 27986u, global2.a), false), select(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(140f, 905f)), -581f, _wgslsmith_f_op_f32(abs(-689f)), _wgslsmith_f_op_f32(-1401f - 523f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-697f, 749f, -129f, 127f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(671f, -1000f, -280f, 1548f) + vec4<f32>(-830f, -213f, -311f, -868f))))), ~vec3<u32>(~(4294967295u | global2.a), u_input.d, ~(~u_input.d)), vec4<bool>(var_0.x && (false || any(vec3<bool>(var_0.x, true, false))), true, all(vec4<bool>(true, true, var_0.x, all(vec4<bool>(true, var_0.x, false, true)))), any(!(!vec4<bool>(var_0.x, false, false, var_0.x)))), var_0.x);
    return global2.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    let var_0 = Struct_2(arg_0.a, ~(~arg_0.b), vec4<bool>(arg_1.c.x, true, true, all(!vec4<bool>(true, arg_0.c.x, false, true))), any(arg_1.c.zw));
    let var_1 = Struct_1(var_0.a.a, arg_1.a.b);
    var var_2 = Struct_1(vec4<u32>(~1u, 8129u, ~min(_wgslsmith_div_u32(var_1.a.x, 1u), func_3()), _wgslsmith_div_u32(func_3() & firstTrailingBit(global2.a), arg_1.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_1.b))) * vec4<f32>(-1510f, _wgslsmith_f_op_f32(f32(-1f) * -1172f), arg_1.a.b.x, _wgslsmith_f_op_f32(arg_0.a.b.x - -504f)))));
    global0 = array<vec4<i32>, 20>();
    global2 = Struct_3(var_0.a.a.x);
    return ~var_2.a.x;
}

fn func_1() -> vec2<i32> {
    var var_0 = 0u;
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(global2.a, _wgslsmith_add_u32(u_input.d, func_2(Struct_2(Struct_1(vec4<u32>(3440u, u_input.d, 0u, 36061u), vec4<f32>(-1090f, -159f, -1633f, 1000f)), vec3<u32>(global2.a, global2.a, 17900u), vec4<bool>(false, true, false, true), false), Struct_2(Struct_1(vec4<u32>(54423u, 78347u, 44772u, global2.a), vec4<f32>(631f, 1003f, -283f, -620f)), vec3<u32>(13573u, 4895u, 10841u), vec4<bool>(false, false, false, false), false))))), _wgslsmith_sub_vec2_u32(vec2<u32>(~76472u, firstTrailingBit(global2.a)), ~(~(~vec2<u32>(global2.a, 0u)))));
    let var_2 = Struct_2(Struct_1(reverseBits(~select(vec4<u32>(u_input.d, 22786u, global2.a, 21471u), vec4<u32>(u_input.d, 9935u, global2.a, 0u), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, 2307f, -451f, -1093f)) + vec4<f32>(-309f, 250f, -130f, 1000f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1633f, -111f, 1060f, -203f))))))), min(~vec3<u32>(func_2(Struct_2(Struct_1(vec4<u32>(u_input.d, 26834u, global2.a, u_input.d), vec4<f32>(-1000f, -270f, -112f, 352f)), vec3<u32>(global2.a, global2.a, 24674u), vec4<bool>(false, false, false, true), true), Struct_2(Struct_1(vec4<u32>(u_input.d, 1u, u_input.d, 1u), vec4<f32>(-1000f, 1348f, 1022f, -1355f)), vec3<u32>(u_input.d, 0u, global2.a), vec4<bool>(true, false, false, true), false)), global2.a, u_input.d), abs(~vec3<u32>(global2.a, u_input.d, 31648u) ^ ~vec3<u32>(1u, u_input.d, 82391u))), select(!select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))), true | any(vec2<bool>(true, true))), -215f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1284f))));
    var var_3 = _wgslsmith_add_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a, 21334u), vec2<u32>(global2.a, var_2.b.x) | var_2.a.a.xw)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, 39320u), ~(~0u), global2.a), var_2.a.a));
    let var_4 = _wgslsmith_mult_u32(var_2.b.x, max(~(~_wgslsmith_div_u32(global2.a, 44907u)), firstTrailingBit(select(~global2.a, select(var_2.b.x, u_input.d, false), var_2.c.x & false))));
    return reverseBits(max(~(vec2<i32>(-25489i, u_input.c.x) & -vec2<i32>(global3[_wgslsmith_index_u32(var_2.b.x, 4u)], u_input.b)), _wgslsmith_clamp_vec2_i32(-u_input.c.xy & u_input.c.yx, _wgslsmith_mult_vec2_i32(~vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(11168u, 4u)]), vec2<i32>(global3[_wgslsmith_index_u32(39367u, 4u)], 1i)), u_input.a.yy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zx;
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, 28860i), var_0.x), func_1());
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-328f, -1357f, 817f))))));
    global1 = global2.a;
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(-1i, 0i), var_0.x, firstLeadingBit(func_1().x), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d, global2.a), 4u)]);
    var var_3 = 143f;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1935f, _wgslsmith_f_op_f32(-var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(15592u, select(select(_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, global2.a, 0u, global2.a)), ~vec4<u32>(u_input.d, u_input.d, u_input.d, 98482u)), vec4<u32>(10767u, ~u_input.d, ~36341u, 38921u), !all(vec2<bool>(true, true))), vec4<u32>(global2.a, 16975u, 4294967295u, _wgslsmith_div_u32(u_input.d, global2.a) << (~0u % 32u)), any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), any(vec4<bool>(false, false, true, false))))), ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 70944u), countOneBits(vec3<u32>(60701u, 0u, u_input.d))) & vec3<u32>(0u, u_input.d, _wgslsmith_add_u32(15981u, ~global2.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(var_1.zy))))))));
}

