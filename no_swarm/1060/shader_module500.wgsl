struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<vec3<u32>, 19>;

var<private> global2: array<i32, 17> = array<i32, 17>(i32(-2147483648), 0i, 6246i, -13324i, 2147483647i, -1i, 0i, -1i, -1i, -298i, 14284i, 2147483647i, 2147483647i, 27438i, 0i, i32(-2147483648), 579i);

var<private> global3: array<bool, 27> = array<bool, 27>(false, true, false, true, true, true, true, false, false, true, false, false, false, true, true, false, false, true, true, false, false, false, true, true, false, true, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_clamp_u32(u_input.a, max(2232u, ~43166u), ~u_input.b);
    let var_1 = Struct_3(vec4<u32>(~(var_0 | 0u), u_input.b, var_0, min(firstTrailingBit(786u), ~11712u)) >> (vec4<u32>(19636u, _wgslsmith_add_u32(46999u, 93292u), ~7282u, ~var_0 ^ 1u) % vec4<u32>(32u)), vec3<bool>(any(vec2<bool>(true, true)), false, false), Struct_2(_wgslsmith_mult_u32(1u, firstTrailingBit(u_input.b))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_0, 1u), _wgslsmith_div_u32(var_0, 34202u)), firstLeadingBit(~vec2<u32>(u_input.b, 4294967295u))), 17u)] < _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~firstLeadingBit(var_0), 17u)], _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(var_0, 17u)], ~8259i)));
    global1 = array<vec3<u32>, 19>();
    global0 = Struct_1(false);
    global3 = array<bool, 27>();
    return var_1;
}

fn func_3(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1518f + _wgslsmith_f_op_f32(-1374f * -287f))), _wgslsmith_f_op_f32(814f * -588f)));
    global2 = array<i32, 17>();
    let var_1 = vec2<bool>(true, true);
    let var_2 = -(~vec4<i32>(abs(-77048i), reverseBits(global2[_wgslsmith_index_u32(19535u, 17u)]), 17351i, global2[_wgslsmith_index_u32(~70168u, 17u)]) << (firstLeadingBit(arg_0.a) % vec4<u32>(32u)));
    let var_3 = abs(_wgslsmith_div_i32(-20010i, ~(-_wgslsmith_sub_i32(-52692i, 0i))));
    return arg_0.c;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = abs(max(_wgslsmith_sub_vec4_i32(~max(vec4<i32>(2784i, -2147483647i, -12401i, global2[_wgslsmith_index_u32(6451u, 17u)]), vec4<i32>(-657i, global2[_wgslsmith_index_u32(82091u, 17u)], global2[_wgslsmith_index_u32(1u, 17u)], -2147483647i)), _wgslsmith_div_vec4_i32(max(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 17u)], -17816i, -1i, 8163i), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(14977u, 17u)], global2[_wgslsmith_index_u32(arg_1.a, 17u)], global2[_wgslsmith_index_u32(16470u, 17u)])), vec4<i32>(-53155i, global2[_wgslsmith_index_u32(105585u, 17u)], -12066i, global2[_wgslsmith_index_u32(4294967295u, 17u)]) ^ vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], 2147483647i, -52989i, global2[_wgslsmith_index_u32(4294967295u, 17u)]))), ~reverseBits(~vec4<i32>(global2[_wgslsmith_index_u32(19247u, 17u)], global2[_wgslsmith_index_u32(arg_1.a, 17u)], global2[_wgslsmith_index_u32(u_input.b, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)]))));
    global3 = array<bool, 27>();
    var var_1 = !arg_3.b;
    global2 = array<i32, 17>();
    let var_2 = ~select(_wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(42008u), u_input.b, ~u_input.a), vec3<u32>(arg_1.a, arg_3.a.x, reverseBits(0u))), _wgslsmith_mod_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(1u, 19u)]), arg_3.a.ywx), any(!vec3<bool>(true, var_1.x, arg_3.d)));
    return Struct_1(global0.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = 0i;
    let var_1 = func_3(func_2());
    let var_2 = 8698u;
    var var_3 = Struct_2(min(_wgslsmith_sub_u32(var_1.a, 1u), 1u) ^ func_2().a.x);
    var_0 = ~(-57661i);
    return Struct_3(_wgslsmith_sub_vec4_u32(select(countOneBits(countOneBits(vec4<u32>(var_2, u_input.a, var_2, 0u))), vec4<u32>(38935u, ~8536u, _wgslsmith_mod_u32(15372u, var_3.a), firstLeadingBit(34520u)), select(select(vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), vec4<bool>(global0.a, false, true, false), vec4<bool>(false, global0.a, arg_0.a, true)), select(vec4<bool>(true, global3[_wgslsmith_index_u32(7542u, 27u)], global3[_wgslsmith_index_u32(0u, 27u)], true), vec4<bool>(false, global3[_wgslsmith_index_u32(var_3.a, 27u)], global3[_wgslsmith_index_u32(var_3.a, 27u)], global0.a), vec4<bool>(false, global0.a, arg_0.a, global0.a)), select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 27u)], global0.a, arg_0.a, false), vec4<bool>(arg_0.a, false, true, arg_0.a), global3[_wgslsmith_index_u32(4294967295u, 27u)]))), ~vec4<u32>(~var_1.a, ~var_1.a, min(var_1.a, var_2), 35879u)), !vec3<bool>(any(vec4<bool>(false, arg_0.a, false, true)), all(vec3<bool>(false, global0.a, false)), true), var_1, arg_0.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, ~min(arg_0, min(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x), vec4<u32>(u_input.b, arg_0.x, u_input.a, u_input.a)))), vec4<u32>(~0u, _wgslsmith_mult_u32(~(~u_input.b), u_input.b), u_input.b << (~_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u), 22607u));
    var var_1 = func_5(func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-568f, -358f, 582f, 1129f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-325f, -905f, 398f, 692f), vec4<f32>(501f, 1658f, -1000f, -504f), vec4<bool>(global3[_wgslsmith_index_u32(0u, 27u)], true, false, false))))))), func_3(func_2()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1265f + 1780f), 214f))), func_2()), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, countOneBits(global2[_wgslsmith_index_u32(45720u, 17u)]) & _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(arg_0.x, 17u)], -70927i, global2[_wgslsmith_index_u32(40899u, 17u)])), vec2<i32>(abs(global2[_wgslsmith_index_u32(133035u, 17u)]), -1i) & _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 17u)], 2147483647i), vec2<i32>(2147483647i, -1i)), vec2<i32>(-19469i, global2[_wgslsmith_index_u32(u_input.a, 17u)]) ^ vec2<i32>(1i, global2[_wgslsmith_index_u32(u_input.a, 17u)]))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1376f, 684f), vec2<f32>(853f, 1682f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1414f), -499f))));
    var_0 = ~abs(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(1u, 15049u, arg_0.x, 17888u)), ~vec4<u32>(arg_0.x, 93351u, 1u, var_1.a.x)));
    var var_3 = func_2().c;
    return var_1.c;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    global1 = array<vec3<u32>, 19>();
    var var_0 = ~(~func_2().a.xw << (func_5(Struct_1(true), _wgslsmith_clamp_vec2_i32(arg_2.yx | arg_2.yz, -vec2<i32>(9176i, arg_1.x), vec2<i32>(-2147483647i, -23267i))).a.xz % vec2<u32>(32u)));
    var var_1 = Struct_1(!(!all(!vec3<bool>(false, global3[_wgslsmith_index_u32(arg_3, 27u)], false))));
    global3 = array<bool, 27>();
    global2 = array<i32, 17>();
    return Struct_2(36393u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 17>();
    let var_0 = func_6(func_1(vec4<u32>(min(1u, u_input.a), 23252u, abs(0u), ~0u) & (_wgslsmith_div_vec4_u32(vec4<u32>(56684u, 0u, 0u, u_input.b), vec4<u32>(12909u, 114232u, u_input.b, u_input.b)) & (vec4<u32>(u_input.b, 1u, 605u, u_input.a) | vec4<u32>(20787u, u_input.b, u_input.b, 1u)))), vec4<i32>(0i, 1i, -2147483647i >> (~u_input.a % 32u), -2147483647i), -(vec3<i32>(1i, 1i, 1i) << (abs(~global1[_wgslsmith_index_u32(u_input.b, 19u)]) % vec3<u32>(32u))), func_3(Struct_3(vec4<u32>(u_input.a, 0u, u_input.b, u_input.b), vec3<bool>(true, true, true), func_2().c, !global3[_wgslsmith_index_u32(u_input.a, 27u)])).a & _wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(~(~70503u), 19u)], global1[_wgslsmith_index_u32(~111333u, 19u)]));
    let var_1 = func_5(Struct_1(global0.a), _wgslsmith_mult_vec2_i32(vec2<i32>(~9231i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(u_input.a, 49772u)), 17u)]), firstLeadingBit(vec2<i32>(-1i, 25553i) & min(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(47391u, 17u)]), vec2<i32>(-35968i, 1i)))));
    global2 = array<i32, 17>();
    let var_2 = global3[_wgslsmith_index_u32(u_input.a, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(4294967295u, 17u)]);
}

