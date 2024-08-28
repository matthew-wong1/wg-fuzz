struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(5987u), Struct_2(24606u), Struct_2(1u), Struct_2(4294967295u), Struct_2(1u), Struct_2(46400u), Struct_2(0u), Struct_2(50613u), Struct_2(0u), Struct_2(4294967295u), Struct_2(49993u), Struct_2(15452u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(0u), Struct_2(13568u), Struct_2(25730u), Struct_2(94996u), Struct_2(1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = ~(~countOneBits(abs(vec2<i32>(13436i, arg_0.e)))) & select(select(vec2<i32>(arg_2, arg_1.e & arg_0.e), ~(vec2<i32>(arg_1.e, arg_1.e) ^ vec2<i32>(arg_1.e, arg_0.e)), true), _wgslsmith_div_vec2_i32(max(firstTrailingBit(vec2<i32>(arg_0.e, arg_2)), -vec2<i32>(arg_0.e, -39682i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_2, 77890i), vec2<i32>(arg_1.e, arg_0.e) << (arg_0.d.yx % vec2<u32>(32u)))), !(!vec2<bool>(true, global1.a)));
    global0 = array<Struct_1, 28>();
    let var_1 = arg_1.a;
    var var_2 = max(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(arg_1.d.x, arg_0.d.x, arg_0.d.x)), vec3<u32>(36436u, arg_1.d.x, u_input.a.x) >> (reverseBits(arg_1.d) % vec3<u32>(32u))), abs(~arg_1.d), u_input.a.xyw), vec3<u32>(_wgslsmith_div_u32(40150u, u_input.a.x), u_input.a.x, 21586u));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1276f - _wgslsmith_f_op_f32(floor(1200f))), 1150f), 1f, !any(select(vec3<bool>(true, global1.a, true), vec3<bool>(global1.a, global1.a, global1.a), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - 1099f))));
    return !(!(4294967295u <= ~arg_1.d.x));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec3<f32>(242f, 1133f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-831f, _wgslsmith_f_op_f32(exp2(arg_0)), !(!global1.a))) * -262f));
    var var_1 = true;
    var_1 = true;
    var_1 = func_3(global0[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 28u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 28u)], firstTrailingBit(21897i) | _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, ~(-326i)), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 4172i, 1002i), ~vec3<i32>(1i, 3646i, -29914i))));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, arg_0, var_0.x))))))));
    return Struct_3(u_input.a.x == (_wgslsmith_div_u32(u_input.a.x, countOneBits(u_input.a.x)) & u_input.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec4<bool>(all(!select(!vec3<bool>(arg_1.a, global1.a, false), vec3<bool>(true, true, true), arg_1.a)), arg_3.e <= reverseBits(arg_3.e & arg_0.a.e), !(!(arg_1.a | all(vec4<bool>(global1.a, true, true, true)))), global1.a);
    let var_1 = arg_0.a.a.zy;
    var var_2 = true;
    let var_3 = -164f;
    var_0 = vec4<bool>(global1.a, true, any(select(select(select(vec4<bool>(false, var_0.x, var_0.x, arg_1.a), vec4<bool>(true, global1.a, arg_1.a, arg_1.a), vec4<bool>(false, true, false, true)), !vec4<bool>(true, global1.a, true, false), global1.a), !vec4<bool>(var_0.x, false, false, true), vec4<bool>(any(var_0.zw), global1.a || arg_1.a, true, false))), !var_0.x);
    return arg_1;
}

fn func_1() -> vec4<i32> {
    global1 = func_4(Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-817f, 1000f, 1366f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-197f, -122f, 717f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f - 753f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1375f)), _wgslsmith_f_op_f32(260f - 196f), -129f), firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.a.x, 1356u, 4108u))), 0i), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -649f) - _wgslsmith_f_op_f32(step(331f, -923f))), 1f, 523f)), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-273f))))))), _wgslsmith_f_op_f32(-829f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -266f) - -791f) - 448f)), global0[_wgslsmith_index_u32(4294967295u, 28u)]);
    global1 = func_2(1092f);
    global2 = array<Struct_2, 4>();
    global1 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(755f, -628f))))));
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, (max(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yy) | u_input.a.zw) | _wgslsmith_add_vec2_u32(u_input.a.zx & u_input.a.xy, vec2<u32>(0u, 1u))), 28u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-354f, _wgslsmith_f_op_f32(max(999f, 1000f))))), 347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(566f - -465f) - _wgslsmith_f_op_f32(f32(-1f) * -452f)))));
    return _wgslsmith_clamp_vec4_i32(abs(~(vec4<i32>(var_0.a.e, var_0.a.e, -97158i, var_0.a.e) & (vec4<i32>(var_0.a.e, 15337i, -2147483647i, var_0.a.e) << (u_input.a % vec4<u32>(32u))))), vec4<i32>(~(-2147483647i), ~var_0.a.e, var_0.a.e, ~(-var_0.a.e)) >> (u_input.a % vec4<u32>(32u)), ~(~abs(vec4<i32>(-1i, -33692i, 1i, var_0.a.e)) & countOneBits(vec4<i32>(var_0.a.e, -43629i, var_0.a.e, var_0.a.e) | vec4<i32>(2147483647i, 1i, var_0.a.e, 28454i))));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<i32>) -> bool {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(~u_input.a.x, 28u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-377f, -646f, -635f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-309f + -1313f), _wgslsmith_f_op_f32(sign(-1111f)), -748f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1085f, 1000f, -616f), vec3<f32>(1000f, 1923f, 375f))), select(arg_2, arg_2, true)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1022f, var_0.a.b) * _wgslsmith_f_op_f32(sign(-956f))) * 1f), -1241f, 1620f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-251f, -1503f))))));
    global2 = array<Struct_2, 4>();
    var_0 = Struct_4(Struct_1(var_0.a.a, _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - 372f))), ~vec3<u32>(select(var_0.a.d.x, 0u, false), var_0.a.d.x, 21389u), -arg_1), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, var_0.b.x, -206f)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1063f, -801f, var_0.b.x), vec3<f32>(var_1.x, -323f, -284f)), var_1.yxy), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -42360i, -36223i), arg_3.wxw) != ~(-36898i))))));
    let var_2 = global1.a;
    return !(!(!arg_2.x));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1514f, 458f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1779f * 590f)))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(202f, 560f, -788f)))))));
    global3 = array<Struct_2, 20>();
    var var_1 = arg_1;
    global3 = array<Struct_2, 20>();
    let var_2 = (u_input.a.xzw | ~firstTrailingBit(u_input.a.zwz)) >> (vec3<u32>(arg_1.a, ~(~_wgslsmith_div_u32(var_1.a, 74895u)), arg_1.a) % vec3<u32>(32u));
    return Struct_3(!func_4(Struct_4(Struct_1(var_0, var_0.x, var_0, var_2, 1i), var_0), func_4(Struct_4(Struct_1(var_0, 632f, var_0, vec3<u32>(32877u, 0u, 0u), 10327i), vec3<f32>(507f, var_0.x, -1320f)), Struct_3(false), var_0.x, Struct_1(var_0, var_0.x, vec3<f32>(var_0.x, var_0.x, -380f), u_input.a.zww, -10670i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + var_0.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 0u, var_2.x, 1u), vec4<u32>(var_2.x, var_1.a, var_2.x, 3934u)) << (u_input.a.x % 32u), 28u)]).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 567f;
    global3 = array<Struct_2, 20>();
    global1 = func_6(vec3<bool>(select(true, func_5(i32(-1i) * -2147483647i, -48444i, !vec3<bool>(global1.a, false, global1.a), func_1()), !(false | global1.a)), u_input.a.x >= _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 27003u, 4294967295u, u_input.a.x)), false), Struct_2(1724u), vec3<bool>(true, global1.a, _wgslsmith_mult_u32(21672u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)) < 5724u));
    var var_1 = u_input.a.yz;
    var var_2 = vec2<bool>(true, true);
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2396f, var_0, var_0)))), -1322f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, -439f) - vec3<f32>(var_0, -1200f, 571f)) + vec3<f32>(var_0, var_0, -879f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 641f, 520f))), ~(vec3<u32>(19241u, u_input.a.x, 0u) << (~u_input.a.zzx % vec3<u32>(32u))), ~(-2106i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, -502f))), vec3<f32>(-2071f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(f32(-1f) * -139f))))));
    var var_4 = true;
    let var_5 = Struct_2(45780u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.b.x), var_3.b.x)), _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c.x) - _wgslsmith_f_op_f32(var_3.b.x * var_3.a.c.x)))), var_0, -179f), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, ~countOneBits(u_input.a.x), var_1.x), ~firstTrailingBit(~vec3<u32>(0u, var_5.a, u_input.a.x))), reverseBits(reverseBits(select(firstTrailingBit(0u), var_3.a.d.x << (var_1.x % 32u), any(vec4<bool>(global1.a, var_2.x, global1.a, true))))), firstTrailingBit((firstLeadingBit(vec2<i32>(var_3.a.e, var_3.a.e)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_5.a, 1u), vec2<u32>(21166u, u_input.a.x), vec2<u32>(var_1.x, 72065u)) % vec2<u32>(32u))) & vec2<i32>(-43830i, -44907i)), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, 0i), var_3.a.e & -var_3.a.e, var_3.a.e));
}

