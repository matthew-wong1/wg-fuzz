struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: bool,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, true);

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> vec2<u32> {
    let var_0 = ~select(-vec4<i32>(u_input.a.x, u_input.a.x, -28136i, u_input.a.x), vec4<i32>(abs(arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1, u_input.a.x, arg_1), vec4<i32>(arg_1, u_input.a.x, 2147483647i, arg_1)), -u_input.a.x, firstTrailingBit(-1i)), select(arg_0, arg_0, !vec4<bool>(arg_0.x, true, false, true))) ^ vec4<i32>(-(i32(-1i) * -16466i), arg_1, -(133092i | _wgslsmith_add_i32(arg_1, -37294i)), -2984i);
    let var_1 = countOneBits(vec2<u32>(global3.x >> (~abs(41077u) % 32u), global3.x));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-arg_2.x), Struct_1(~max(arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1, 37519i), vec3<i32>(u_input.a.x, -35681i, arg_1))), var_0.xx, ~(~abs(vec3<u32>(global3.x, global3.x, 14195u))), -(i32(-1i) * -2147483647i) >> (~(0u >> (var_1.x % 32u)) % 32u)), ~vec4<u32>(21075u, ~18979u, abs(abs(4294967295u)), 1u), !arg_0, firstLeadingBit(select(abs(vec4<u32>(global3.x, 0u, global3.x, var_1.x)), countOneBits(vec4<u32>(var_1.x, 4294967295u, 0u, var_1.x)), arg_0.x)));
    global1 = array<Struct_1, 24>();
    var var_3 = arg_2;
    return select(reverseBits(var_2.b.c.xx), _wgslsmith_div_vec2_u32(var_2.b.c.xy, var_1), true);
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = 677f;
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global3.x << (18902u % 32u), global3.x), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global3.x, 4294967295u), abs(vec2<u32>(global3.x, 1u)), vec2<u32>(0u, global3.x) | vec2<u32>(global3.x, 1u))), vec2<u32>(~(4294967295u << (global3.x % 32u)), 1u)), ~abs(~vec2<u32>(61627u, global3.x)) << ((~func_3(vec4<bool>(global0[_wgslsmith_index_u32(61380u, 2u)], arg_0, true, false), u_input.a.x, vec4<f32>(493f, -801f, 1000f, 590f), global0[_wgslsmith_index_u32(35136u, 2u)]) >> (~(vec2<u32>(4294967295u, 28638u) >> (vec2<u32>(global3.x, global3.x) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = Struct_3(true | any(select(select(vec2<bool>(true, arg_0), vec2<bool>(false, arg_1), false), vec2<bool>(false, global0[_wgslsmith_index_u32(global3.x, 2u)]), select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, false), true))), ~(firstLeadingBit(1u >> (global3.x % 32u)) >> (var_1.x % 32u)), var_1.x, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(var_1, vec2<u32>(1u, 56148u)), 1u >> (1u % 32u)), abs(vec2<u32>(var_1.x, global3.x) | var_1)), var_1, abs(min(vec2<u32>(19901u, global3.x), var_1 << (vec2<u32>(var_1.x, 1u) % vec2<u32>(32u))))), !select(vec3<bool>(global0[_wgslsmith_index_u32(44091u, 2u)] && true, true, false), vec3<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.x, 2u)])), true, arg_0 || arg_0), false));
    return firstTrailingBit(var_1.x);
}

fn func_1(arg_0: vec4<u32>) -> bool {
    return select(false, true, reverseBits(func_2(global0[_wgslsmith_index_u32(4041u, 2u)], true) >> (arg_0.x % 32u)) <= 0u);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> vec2<bool> {
    var var_0 = arg_3.x;
    var var_1 = select(select(vec3<bool>(global0[_wgslsmith_index_u32(global3.x >> (func_3(vec4<bool>(arg_3.x, false, true, arg_0), -17552i, vec4<f32>(arg_2.x, -719f, arg_2.x, 2403f), true).x % 32u), 2u)], global0[_wgslsmith_index_u32(max(abs(0u), 0u), 2u)], arg_0), select(arg_3, select(vec3<bool>(true, arg_3.x, arg_0), vec3<bool>(global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(54221u, 2u)], false), !arg_3), select(select(arg_3, arg_3, arg_0), !vec3<bool>(arg_3.x, false, global0[_wgslsmith_index_u32(80563u, 2u)]), vec3<bool>(false, arg_0, true))), vec3<bool>(select(global3.x >= 9652u, global0[_wgslsmith_index_u32(global3.x, 2u)], any(arg_3.yy)), true, arg_3.x)), arg_3, select(arg_3, !vec3<bool>(global0[_wgslsmith_index_u32(global3.x, 2u)], true, func_1(vec4<u32>(1u, 0u, 38688u, global3.x))), ~(~global3.x) <= select(firstTrailingBit(global3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 0u, 28848u), vec3<u32>(global3.x, 1189u, 54444u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.x, 4294967295u), 2u)])));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(1327f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) + _wgslsmith_f_op_f32(sign(arg_2.x)))), Struct_1(_wgslsmith_sub_i32(-2147483647i ^ arg_1, -1i) ^ select(-arg_1, -2147483647i, var_1.x && true), u_input.a.xz, _wgslsmith_mult_vec3_u32(vec3<u32>(7346u, _wgslsmith_mult_u32(1u, 4294967295u), select(global3.x, 4294967295u, arg_0)), vec3<u32>(~global3.x, ~61092u, 1u)), u_input.a.x), ~vec4<u32>(global3.x, _wgslsmith_add_u32(64805u, global3.x), _wgslsmith_sub_u32(39176u, 3349u), firstTrailingBit(50432u)) ^ select(select(reverseBits(vec4<u32>(global3.x, global3.x, global3.x, 8897u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.x, 1u, global3.x, 51239u), vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(global3.x, global3.x, 1u, 1u)), vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 2u)], false, global0[_wgslsmith_index_u32(46504u, 2u)], true)), vec4<u32>(global3.x, 1u, 4294967295u, 68505u) | (vec4<u32>(75644u, 1u, 38010u, 1u) << (vec4<u32>(0u, global3.x, 47806u, global3.x) % vec4<u32>(32u))), !select(vec4<bool>(arg_3.x, arg_0, global0[_wgslsmith_index_u32(18975u, 2u)], false), vec4<bool>(false, true, false, true), var_1.x)), vec4<bool>(true, !arg_0, !global0[_wgslsmith_index_u32(global3.x, 2u)], select(func_1(vec4<u32>(global3.x, 23673u, global3.x, global3.x) | vec4<u32>(global3.x, global3.x, 44476u, global3.x)), global0[_wgslsmith_index_u32(abs(1u), 2u)], false)), _wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, global3.x, 14492u), vec4<u32>(1u, global3.x, global3.x, global3.x)), min(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec4<u32>(global3.x, 32873u, global3.x, 19433u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(global3.x, global3.x, 66468u))), _wgslsmith_clamp_u32(1u, global3.x, 1u), countOneBits(global3.x)), vec4<u32>(~(global3.x & global3.x), _wgslsmith_clamp_u32(min(1u, global3.x), 4294967295u, 3000u << (global3.x % 32u)), firstLeadingBit(global3.x), _wgslsmith_mod_u32(~global3.x, ~global3.x))));
    let var_3 = 32204u;
    var var_4 = select(var_2.d.www, !select(!arg_3, var_2.d.wxw, select(vec3<bool>(var_2.d.x, arg_0, arg_3.x), arg_3, select(arg_3, var_2.d.zzz, vec3<bool>(true, true, var_1.x)))), !select(vec3<bool>(arg_3.x, var_1.x, true), select(arg_3, var_2.d.wxy, !arg_3), true));
    return var_2.d.yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    var var_1 = countOneBits(firstLeadingBit(~(~vec4<u32>(global3.x, 12543u, global3.x, global3.x))));
    global3 = var_1.xw;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_f32(min(-115f, var_0))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)) * _wgslsmith_f_op_f32(f32(-1f) * -1332f)))));
    let var_3 = select(!func_4(func_1(~vec4<u32>(37761u, 0u, global3.x, global3.x)), u_input.a.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1189f, 562f, var_0), vec3<f32>(var_0, -332f, 1891f), var_0 <= var_0)), !(!vec3<bool>(false, global0[_wgslsmith_index_u32(global3.x, 2u)], false))), func_4(global0[_wgslsmith_index_u32(~abs(global3.x) << (~62132u % 32u), 2u)], u_input.a.x, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, 2027f))))), !vec3<bool>(0u < var_1.x, func_1(vec4<u32>(var_1.x, var_1.x, 41009u, 117207u)), global0[_wgslsmith_index_u32(func_2(false, false), 2u)])), !global0[_wgslsmith_index_u32(countOneBits(countOneBits(global3.x)) & global3.x, 2u)]);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2706f), _wgslsmith_f_op_f32(max(411f, 1825f))))))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.x, 38970u), 1u)], ~(~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, var_1.x, var_1.x, global3.x), vec4<u32>(var_1.x, 4294967295u, 16162u, 1u))), vec4<bool>(true, false, true, false), vec4<u32>(global3.x, _wgslsmith_add_u32(global3.x, func_3(!vec4<bool>(var_3.x, false, false, true), firstTrailingBit(-16416i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, -343f, var_0, -1042f), vec4<f32>(-937f, var_0, -732f, var_0))), true).x), 31661u, ~global3.x));
    let var_5 = ~var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(-30074i >> (var_1.x % 32u), vec2<u32>(_wgslsmith_div_u32(func_3(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 2u)], global0[_wgslsmith_index_u32(var_1.x, 2u)], var_4.d.x, global0[_wgslsmith_index_u32(50135u, 2u)]), 2147483647i, vec4<f32>(108f, -683f, 1037f, -663f), true).x, _wgslsmith_sub_u32(61089u, ~var_4.e.x)), 1u), _wgslsmith_mult_u32(var_1.x, var_4.c.x), _wgslsmith_sub_vec4_u32(~firstTrailingBit(var_4.c), vec4<u32>(19428u, abs(~1u), ~103224u, 18640u)));
}

