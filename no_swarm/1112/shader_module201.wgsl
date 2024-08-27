struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-17737i, -10688i), vec2<i32>(-1i, 51720i), vec2<i32>(35973i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, -30034i), vec2<i32>(0i, 18719i), vec2<i32>(-1811i, -16085i), vec2<i32>(-19248i, 0i), vec2<i32>(-26570i, -48913i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, -1i), vec2<i32>(-62638i, 2147483647i), vec2<i32>(20255i, 1i), vec2<i32>(-31292i, -36425i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(33283i, 1i), vec2<i32>(1i, -2822i), vec2<i32>(1i, 35237i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(35627i, 5353i), vec2<i32>(37597i, 20267i), vec2<i32>(16814i, 36367i), vec2<i32>(i32(-2147483648), -21967i), vec2<i32>(1i, 17145i), vec2<i32>(21056i, 6349i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: i32) -> f32 {
    var var_0 = arg_1.d;
    let var_1 = all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true))));
    let var_2 = !(_wgslsmith_f_op_f32(floor(-484f)) <= -1397f);
    var var_3 = Struct_4(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, max(-33722i, u_input.c)) ^ 2147483647i, ~_wgslsmith_add_i32(i32(-1i) * -37911i, i32(-1i) * -8728i)));
    var_3 = Struct_4(var_0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.c, arg_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x * -1149f), -377f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c, -1400f))))) + 322f);
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_2(~(_wgslsmith_mod_i32(0i, global0.x & -50594i) ^ (_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(6277u, 25u)], vec2<i32>(25887i, global0.x)) ^ _wgslsmith_dot_vec3_i32(global0.xzx, global0.xwy))));
    let var_1 = true;
    global1 = array<vec2<i32>, 25>();
    global1 = array<vec2<i32>, 25>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1269f + _wgslsmith_f_op_f32(-508f * _wgslsmith_f_op_f32(func_3(Struct_2(global0.x), Struct_3(var_0, 72724u, -411f, Struct_2(-44650i)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-993f, -2501f, 306f))), -2147483647i >> (u_input.a.x % 32u))))));
    return vec2<bool>(any(!select(select(vec2<bool>(var_1, var_1), vec2<bool>(true, var_1), var_1), vec2<bool>(false, false), all(vec3<bool>(true, var_1, false)))), !(true && select(all(vec3<bool>(var_1, true, var_1)), true, false)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = vec4<i32>(_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(reverseBits(global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-35489i, -24179i), global1[_wgslsmith_index_u32(53609u, 25u)]) << (reverseBits(4294967295u) % 32u))), ~firstLeadingBit(_wgslsmith_clamp_i32(global0.x, ~global0.x, ~(-19931i))), u_input.c, 46932i);
    var var_0 = !select(vec2<bool>(true, true), func_2(), vec2<bool>(true, true));
    let var_1 = firstTrailingBit(select(~vec4<i32>(1i, u_input.c, global0.x, -1i), ~vec4<i32>(global0.x, 0i, global0.x, -52951i) | (vec4<i32>(-38923i, -39572i, -2147483647i, global0.x) << (vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u))), var_0.x) & vec4<i32>(abs(_wgslsmith_clamp_i32(17348i, -2147483647i, u_input.c)), ~(0i << (u_input.a.x % 32u)), -855i, -1i));
    var_0 = arg_0.ww;
    let var_2 = Struct_1(countOneBits(u_input.b.zz >> (abs(_wgslsmith_mod_vec2_u32(u_input.a.wx, u_input.a.zy)) % vec2<u32>(32u))), ~abs(-abs(global0.x)), !all(vec4<bool>(true, true, true, arg_0.x | true)));
    return var_2;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    var var_0 = select(false, all(!select(!vec4<bool>(false, true, arg_2.c, arg_2.c), select(vec4<bool>(arg_2.c, false, arg_2.c, false), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, arg_2.c), vec4<bool>(arg_2.c, arg_2.c, arg_2.c, true)), vec4<bool>(true, false, false, true))), arg_2.c);
    let var_1 = Struct_3(arg_3.a, ~arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-arg_1))))), Struct_2(u_input.c));
    var_0 = _wgslsmith_f_op_f32(floor(1327f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.c, _wgslsmith_f_op_f32(min(1632f, -734f))), var_1.c)) - var_1.c);
    let var_2 = arg_3.a;
    var_0 = arg_2.c;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = ~78454u << ((50459u & func_4(~(~vec4<u32>(var_0, 35186u, var_0, 1u)), 346f, func_1(vec4<bool>(true, false, false, false)), Struct_3(Struct_2(-29769i), min(63768u, u_input.b.x), _wgslsmith_f_op_f32(428f + -188f), Struct_2(global0.x)))) % 32u);
    global1 = array<vec2<i32>, 25>();
    global1 = array<vec2<i32>, 25>();
    let var_2 = true && func_2().x;
    let var_3 = 836f;
    var var_4 = global0.x;
    let var_5 = vec3<i32>(u_input.c, 24162i, (u_input.c << (max(u_input.b.x, firstTrailingBit(var_1)) % 32u)) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(913f)), -908f)))));
}

