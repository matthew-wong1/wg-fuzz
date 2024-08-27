struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 4294967295u, 8169u, 4294967295u);

var<private> global1: Struct_3 = Struct_3(1141f, vec3<f32>(410f, 2495f, 538f));

var<private> global2: array<i32, 13> = array<i32, 13>(4164i, 2147483647i, 28442i, 2147483647i, 55937i, i32(-2147483648), 11725i, i32(-2147483648), -1i, 1i, -32157i, -1i, 15440i);

var<private> global3: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: vec2<u32>) -> u32 {
    global3 = arg_1.c;
    var var_0 = arg_1.b;
    global3 = arg_1.c;
    var var_1 = vec2<bool>(arg_1.a, arg_1.b.b.x);
    var var_2 = Struct_4(!(((arg_1.a | true) || any(vec3<bool>(false, var_0.b.x, true))) || arg_1.b.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(arg_1.b.a)))), select(!(!var_0.b), vec4<bool>(true, !var_0.b.x, arg_1.b.b.x || true, var_1.x), !vec4<bool>(var_0.b.x, false, var_1.x, false))), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-789f - -242f), _wgslsmith_f_op_f32(437f + -898f), _wgslsmith_f_op_f32(var_0.a.x - 1004f)))), _wgslsmith_dot_vec2_u32(arg_2, ~(vec2<u32>(38202u, arg_1.d) << (_wgslsmith_clamp_vec2_u32(global0.yx, vec2<u32>(0u, 13562u), global0.yz) % vec2<u32>(32u)))));
    return select(1u, abs(~1u) << (~arg_1.d % 32u), var_0.b.x);
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, global0.x, 4294967295u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(11424u, global0.x, global0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global0.x, 0u), min(vec3<u32>(1u, global0.x, 23084u), vec3<u32>(global0.x, 4294967295u, global0.x))))), vec4<u32>(~(~global0.x | abs(global0.x)), _wgslsmith_mult_u32(min(0u, global0.x & 5634u), _wgslsmith_div_u32(32688u, global0.x)), countOneBits(func_3(abs(4294967295u), Struct_4(true, Struct_1(vec4<f32>(627f, global1.b.x, global1.b.x, 1992f), vec4<bool>(true, true, true, true)), Struct_3(607f, vec3<f32>(global3.b.x, -621f, global1.b.x)), global0.x), ~vec2<u32>(36278u, 1u))), firstTrailingBit(firstLeadingBit(~global0.x))));
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x >> (global0.x % 32u), ~(~global0.x), global0.x, global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(max(4294967295u, 28533u), ~44240u, 16297u, ~global0.x), abs(~vec4<u32>(0u, global0.x, global0.x, global0.x)))), vec4<u32>(max(~(~67477u), 1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 325u), vec3<u32>(global0.x, 50197u, global0.x)), global0.x ^ 4294967295u), ~(~4294967295u), ~1u));
    var var_0 = -385f;
    global0 = countOneBits(reverseBits(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 904u, 16026u, 6130u) & vec4<u32>(global0.x, global0.x, 1u, global0.x), vec4<u32>(global0.x, 0u, 1u, 1u)))));
    var var_1 = Struct_4(true, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1505f)), -458f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a), -442f), _wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(-global1.a)), global3.b.x), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), true)), Struct_3(_wgslsmith_div_f32(-1863f, 513f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global3.b.x + -1612f), _wgslsmith_f_op_f32(f32(-1f) * -264f), _wgslsmith_f_op_f32(global3.a * global3.b.x)) - global1.b)), 41542u);
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-999f, 358f, 1536f, -133f))), vec4<bool>(false || var_1.a, var_1.a, var_1.b.b.x, !(!any(vec3<bool>(var_1.b.b.x, var_1.a, false)))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = u_input.a;
    var var_2 = func_2().b.xww;
    var var_3 = firstLeadingBit(arg_0.d);
    var var_4 = firstTrailingBit(1u);
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(arg_0.b.a)) + arg_0.b.a) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global3.a, global1.a, 1089f, -1469f), arg_0.b.a), arg_0.b.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-695f, global3.b.x, -1549f, 151f))), arg_0.b.b.x)), vec4<bool>(all(vec4<bool>(true, false | arg_0.a, var_2.x, func_2().b.x)), true, true, var_2.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_4(true, arg_1, Struct_3(arg_1.a.x, arg_0), ~global0.x);
    global1 = var_0.c;
    global1 = var_0.c;
    var var_1 = Struct_4(true, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), arg_1.b), var_0.c, 1u);
    return true;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: i32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_vec3_f32(arg_2.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1001f, arg_0.x, arg_2.a)), _wgslsmith_div_vec3_f32(vec3<f32>(-1170f, global1.b.x, arg_0.x), arg_2.b), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)))))));
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-976f, global3.b.x, global3.b.x) - vec3<f32>(global1.a, var_0.b.x, arg_2.b.x))))))), func_4(Struct_4((1u & global0.x) > ~global0.x, func_2(), arg_2, _wgslsmith_add_u32(arg_1.x, _wgslsmith_mod_u32(0u, 17958u)))));
    return ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(global0.yzw, global0.xxz), vec3<u32>(1u, _wgslsmith_sub_u32(global0.x, 0u), 61995u)), global0.xzz), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 13>();
    var var_0 = global0.zz;
    var var_1 = min(-vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -25936i, 47508i), reverseBits(func_1(vec2<f32>(global3.a, 901f), global0.zx, Struct_3(1000f, vec3<f32>(global3.b.x, global3.a, global3.b.x)), u_input.a.x)), reverseBits(i32(-1i) * -89865i), _wgslsmith_div_i32(-2147483647i, -2147483647i)), select(vec4<i32>(-15775i, i32(-1i) * -global2[_wgslsmith_index_u32(var_0.x, 13u)], global2[_wgslsmith_index_u32(reverseBits(global0.x), 13u)], 1i), select(vec4<i32>(u_input.a.x, -2147483647i, 43946i, -1i), u_input.a, true), func_4(Struct_4(true, Struct_1(vec4<f32>(-1315f, global1.b.x, global1.a, global3.b.x), vec4<bool>(false, true, true, false)), Struct_3(global3.b.x, vec3<f32>(593f, global1.a, 1336f)), _wgslsmith_mult_u32(4294967295u, 1u))).b));
    let var_2 = -1000f;
    let var_3 = global3.b.x;
    global0 = vec4<u32>(4294967295u, 38144u, min(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.x, 3278u, 43979u), global0.yxy) << (0u % 32u), _wgslsmith_dot_vec4_u32(max(firstLeadingBit(vec4<u32>(var_0.x, 418u, var_0.x, 1u)), vec4<u32>(0u, 1u, 15428u, var_0.x)), abs(select(vec4<u32>(4294967295u, global0.x, var_0.x, 4294967295u), vec4<u32>(0u, global0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, true))))), 8185u);
    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(~0u) ^ min(1u, var_0.x), ~min(var_0.x << (27416u % 32u), ~var_0.x), global0.x, 1u), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(global0.x, global0.x, var_0.x, 15346u)), vec4<u32>(59447u, 1u, var_0.x, global0.x) ^ vec4<u32>(94292u, 1u, 28240u, global0.x)), select(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, 0u, 1u, var_0.x), vec4<u32>(var_0.x, 74130u, 9424u, global0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 4294967295u), vec4<u32>(76623u, global0.x, global0.x, 38835u)) >> ((vec4<u32>(36187u, 64838u, global0.x, global0.x) & vec4<u32>(global0.x, 1u, global0.x, 4294967295u)) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(~global0.x, 13u)] > -1i)), vec4<u32>(global0.x, 24130u, _wgslsmith_div_u32(firstLeadingBit(var_0.x), 13183u), ~1u));
    let var_5 = -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 20551i), vec2<i32>(-2147483647i, var_1.x)), u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_i32(var_1.zz, var_1.zy));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~min(2147483647i, ~func_1(vec2<f32>(483f, global1.b.x), vec2<u32>(global0.x, var_0.x), Struct_3(global3.b.x, vec3<f32>(2248f, 119f, 1423f)), global2[_wgslsmith_index_u32(global0.x, 13u)])), vec3<i32>(-1i) * -select(vec3<i32>(u_input.a.x, var_1.x, global2[_wgslsmith_index_u32(120364u, 13u)]), u_input.a.zxz, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), var_0.x, firstTrailingBit(global0.xw));
}

