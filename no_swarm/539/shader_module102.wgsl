struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    global0 = array<i32, 26>();
    var var_0 = max(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], 22470i, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -33620i), vec4<i32>(global0[_wgslsmith_index_u32(2000u, 26u)], global0[_wgslsmith_index_u32(15582u, 26u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 26u)])), -112i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(93103u, 26u)])) >> (reverseBits(firstTrailingBit(vec3<u32>(arg_0, 31043u, arg_0))) % vec3<u32>(32u)), vec3<i32>(0i, -global0[_wgslsmith_index_u32(u_input.b.x, 26u)] ^ global0[_wgslsmith_index_u32(u_input.b.x >> (u_input.a % 32u), 26u)], 2147483647i)) << (u_input.b.wzy % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-987f)), _wgslsmith_f_op_f32(-936f * 153f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-851f - 961f) * 1015f), _wgslsmith_div_f32(-1000f, -1063f), -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1198f, 1135f, _wgslsmith_f_op_f32(f32(-1f) * -400f), -687f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(968f, 400f, -145f, 774f)) + vec4<f32>(607f, 585f, -172f, 1867f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-148f, 1418f, -775f, 1259f))))));
    var var_2 = Struct_1(_wgslsmith_add_vec3_i32(-countOneBits(reverseBits(vec3<i32>(-31548i, 20709i, 1i))), (vec3<i32>(-1i) * -vec3<i32>(0i, var_0.x, -2147483647i)) & ((vec3<i32>(21057i, -33473i, var_0.x) | vec3<i32>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], var_0.x)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -1225i, -21779i), vec3<i32>(var_0.x, 2147483647i, 19471i)))), _wgslsmith_f_op_f32(-1f));
    var_2 = Struct_1(var_2.a, var_2.b);
    return arg_1.b;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: bool, arg_3: u32) -> vec2<u32> {
    global0 = array<i32, 26>();
    let var_0 = -1650f;
    let var_1 = -20917i;
    global0 = array<i32, 26>();
    let var_2 = Struct_5(~arg_0.b.wxy, arg_0.a, 1504f, Struct_2(true, vec3<bool>(arg_0.a.c, select(false, false, arg_0.a.c) | (arg_0.a.c & true), false), arg_2));
    return u_input.b.xw;
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<i32, 26>();
    var var_0 = false && (arg_0 >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(804f + arg_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))));
    let var_1 = _wgslsmith_div_u32(17676u, u_input.b.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), 1188f, _wgslsmith_div_f32(-1434f, arg_0))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-686f, arg_0, arg_0) - vec3<f32>(arg_0, arg_0, 198f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0) * vec3<f32>(arg_0, arg_0, -133f))))))));
    let var_3 = func_4(Struct_4(Struct_2(true, func_3(132930u, Struct_2(true, vec3<bool>(true, false, false), false)), select(all(vec2<bool>(false, true)), false, false)), _wgslsmith_div_vec4_u32(~(u_input.b << (u_input.b % vec4<u32>(32u))), (u_input.b | vec4<u32>(var_1, 0u, 0u, 23973u)) & u_input.b)), all(func_3(reverseBits(1u), Struct_2(true, vec3<bool>(false, true, false), false)).xy), !(!all(vec3<bool>(false, false, false)) && all(vec3<bool>(true, true, true))), ~(~var_1));
    return _wgslsmith_dot_vec2_i32(~vec2<i32>(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.x, 4294967295u), 26u)], 1i), vec2<i32>(abs(~global0[_wgslsmith_index_u32(~var_3.x, 26u)]), min(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global0[_wgslsmith_index_u32(11012u, 26u)], 0i), vec3<i32>(24256i, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -2147483647i))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(55228u, 26u)], -22188i, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), vec4<i32>(1i, -1i, global0[_wgslsmith_index_u32(14760u, 26u)], -43957i))))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(abs(u_input.a), 26u)], 5247i) ^ ~((i32(-1i) * -1i) ^ (i32(-1i) * -global0[_wgslsmith_index_u32(u_input.a, 26u)]));
    var var_1 = ~0u;
    global0 = array<i32, 26>();
    var_0 = func_2(_wgslsmith_f_op_f32(min(951f, -818f))) ^ -2147483647i;
    var_0 = firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(countOneBits(~vec3<i32>(global0[_wgslsmith_index_u32(6771u, 26u)], -34784i, global0[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_add_vec3_i32(~vec3<i32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -17151i), vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)]))), -_wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(43865u, 26u)], -global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(39349u, 26u)])));
    return Struct_1(max(vec3<i32>(-37377i, countOneBits(~0i), -_wgslsmith_dot_vec2_i32(vec2<i32>(19012i, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec2<i32>(8706i, -11331i))), -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(26880u, 26u)], 0i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 26u)], 1i, global0[_wgslsmith_index_u32(u_input.b.x, 26u)])), vec3<i32>(-32557i, -43217i, global0[_wgslsmith_index_u32(u_input.a, 26u)]))), -426f);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, -943f, false))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-755f - arg_1.b)))));
    let var_1 = _wgslsmith_div_vec4_u32(~(vec4<u32>(20092u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), u_input.b.ywx), 3093u, min(u_input.a, u_input.a)) | select(~u_input.b, countOneBits(vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u)), select(vec4<bool>(false, false, true, true), vec4<bool>(arg_3.x, arg_0.x, false, arg_0.x), vec4<bool>(false, true, arg_0.x, true)))), u_input.b);
    let var_2 = abs(abs(~_wgslsmith_dot_vec2_i32(~arg_1.a.xy, arg_1.a.xx | vec2<i32>(-18385i, arg_1.a.x))));
    var var_3 = vec3<f32>(-1483f, arg_1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1.b)))));
    global0 = array<i32, 26>();
    return Struct_1(vec3<i32>(-13683i, 5558i, 16488i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, arg_1.b, arg_0.x))))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> Struct_5 {
    let var_0 = arg_2;
    return Struct_5(vec3<u32>(min(var_0.a.x, ~firstTrailingBit(4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.a.wzz, vec3<u32>(arg_3.b.x, arg_2.a.x, 61412u)), arg_2.a.x, arg_3.b.x), _wgslsmith_clamp_vec3_u32(~vec3<u32>(45387u, 91687u, 11822u), min(var_0.a.zww, arg_3.b.yzz), vec3<u32>(38734u, arg_3.b.x, 21154u))), firstTrailingBit(countOneBits(32316u))), arg_1, -458f, Struct_2(arg_1.b.x, arg_3.a.b, !(arg_1.a & true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(true, true, true)), func_1(), ~_wgslsmith_mult_u32(u_input.a & u_input.a, ~u_input.a), vec2<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)))), Struct_2(true, func_3(u_input.a, Struct_2(true, select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), false)), !all(vec3<bool>(true, true, true))), Struct_3(abs(u_input.b)), Struct_4(Struct_2(global0[_wgslsmith_index_u32(1u, 26u)] <= -1i, vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), max(vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, 8170u), 54497u, 1u, _wgslsmith_mod_u32(45363u, 114367u)), vec4<u32>(u_input.a ^ u_input.a, 73303u, ~u_input.b.x, 0u))));
    global0 = array<i32, 26>();
    var var_1 = !var_0.d.b.x;
    var var_2 = true;
    var_2 = any(vec3<bool>(true, any(var_0.b.b), var_0.d.a));
    var_1 = true && !var_0.b.a;
    var var_3 = ~firstTrailingBit(~55830i ^ global0[_wgslsmith_index_u32(~64577u, 26u)]) != global0[_wgslsmith_index_u32(1u, 26u)];
    var_3 = true;
    var_2 = !any(vec3<bool>(select(var_0.b.c, !var_0.b.c, all(vec3<bool>(var_0.b.c, true, var_0.b.b.x))), true, (var_0.d.c & false) != !var_0.d.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b.wxz, vec3<u32>(1u, _wgslsmith_div_u32(~var_0.a.x, _wgslsmith_mod_u32(1u, 1u)), firstTrailingBit(firstLeadingBit(13651u)))), -2147483647i);
}

