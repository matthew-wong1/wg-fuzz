struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

var<private> global2: array<u32, 24>;

var<private> global3: array<u32, 28>;

var<private> global4: Struct_1 = Struct_1(false, 22937i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = arg_1.c;
    let var_1 = Struct_3(u_input.d, global1.xx);
    let var_2 = (max(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, arg_1.c.b, -1i), vec4<i32>(-1i, 0i, 2147483647i, 20889i)), abs(arg_3.b)), vec2<i32>(-1i, ~u_input.c)) << ((firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.b.x, 74718u), var_1.a.yy)) >> (~vec2<u32>(1u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_1.b.x, 28u)], 24u)]) % vec2<u32>(32u))) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), ~(-vec2<i32>(var_0.b, u_input.a) << (firstTrailingBit(vec2<u32>(1u, global2[_wgslsmith_index_u32(33177u, 24u)])) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_3.b, abs(_wgslsmith_sub_i32(min(-2147483647i, -18843i), _wgslsmith_dot_vec3_i32(vec3<i32>(5523i, -2147483647i, -2147483647i), vec3<i32>(2147483647i, var_2.x, arg_1.c.b))))), reverseBits(~(_wgslsmith_mult_vec2_i32(vec2<i32>(53592i, -16937i), vec2<i32>(-13594i, u_input.e)) | ~var_2)));
    global4 = Struct_1(true, _wgslsmith_add_i32(var_2.x, firstLeadingBit(arg_1.c.b & 0i)) << (_wgslsmith_div_u32(51333u, 12636u) % 32u));
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_u32(arg_3.a.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(~1u, countOneBits(41089u), global2[_wgslsmith_index_u32(u_input.d.x, 24u)])) & 1u, 28u)]);
    let var_1 = !(!select(vec3<bool>(global1.x, false, !global1.x), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, arg_3.b.x), vec3<bool>(global1.x, true, global4.a)), vec3<bool>(true, global1.x, -77660i < u_input.c)));
    let var_2 = vec4<u32>(arg_0.x, arg_3.a.x, global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u | ~_wgslsmith_div_u32(arg_0.x, 35543u)), 28u)], ~global3[_wgslsmith_index_u32(u_input.b.x, 28u)]);
    var var_3 = _wgslsmith_mult_vec3_u32(countOneBits(min(var_2.zyy, _wgslsmith_clamp_vec3_u32(arg_0, vec3<u32>(23666u, 0u, var_2.x), arg_3.a))), _wgslsmith_mod_vec3_u32(~u_input.b, var_2.wwx)) | arg_0;
    var_3 = arg_3.a;
    return var_1;
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.d;
    global1 = func_4(vec3<u32>(~reverseBits(0u), func_3(vec4<f32>(684f, -1000f, -437f, -212f), Struct_2(-1726f, vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 24u)], 35613u, 71805u), Struct_1(false, -10692i), -1590f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, 210f, -1097f) + vec3<f32>(-968f, 1366f, -293f)), Struct_1(false, u_input.a)), reverseBits(firstLeadingBit(u_input.b.x))) & vec3<u32>(u_input.b.x, ~var_0.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_clamp_u32(1u, 0u, global2[_wgslsmith_index_u32(534u, 24u)])), 24u)]), -31944i, -194f, Struct_3(select(_wgslsmith_mult_vec3_u32(~var_0, firstTrailingBit(vec3<u32>(global2[_wgslsmith_index_u32(var_0.x, 24u)], 4535u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19160u, 28u)], 24u)]))), ~(~var_0), false), vec2<bool>(true, true)));
    var var_1 = vec4<i32>(-_wgslsmith_mod_i32(global4.b, 0i), max(-2147483647i, ~u_input.a >> (1u % 32u)), -8871i, -1i);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1113f, -524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -177f)), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(abs(-1488f)))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))));
    let var_3 = Struct_3(var_0 | ~vec3<u32>(~global2[_wgslsmith_index_u32(var_0.x, 24u)], firstTrailingBit(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18817u, 24u)], 28u)]), global3[_wgslsmith_index_u32(~var_0.x, 28u)]), global1.yx);
    return Struct_2(var_2.x, min(~_wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_3.a.x, 24u)], var_3.a.x, 0u, 4294967295u) | vec4<u32>(var_0.x, 21389u, 4294967295u, 75109u), min(vec4<u32>(var_3.a.x, var_3.a.x, global3[_wgslsmith_index_u32(86498u, 28u)], 0u), vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], u_input.b.x, 4294967295u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.a.x, 24u)], 28u)]), vec4<u32>(62609u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 24u)], 24u)], global2[_wgslsmith_index_u32(48243u, 24u)], 0u)) | vec4<u32>(1396u << (global3[_wgslsmith_index_u32(u_input.d.x, 28u)] % 32u), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d.x, 28u)], 28u)] & 1u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1299u, 24u)], global3[_wgslsmith_index_u32(0u, 28u)], u_input.b.x), _wgslsmith_mult_u32(var_0.x, 1u))), Struct_1(false || all(select(vec3<bool>(global1.x, true, global4.a), vec3<bool>(false, true, false), vec3<bool>(true, global4.a, false))), abs(-12667i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(202f, var_2.x), _wgslsmith_f_op_f32(round(1f)), global4.a)) + -613f));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = vec2<f32>(1050f, _wgslsmith_f_op_f32(-arg_2.d));
    global0 = arg_2.c.a;
    let var_1 = u_input.b.x;
    let var_2 = firstTrailingBit(~(~u_input.b.x));
    let var_3 = Struct_1(!(!(!(!arg_2.c.a))), -2147483647i);
    return Struct_3(~firstLeadingBit(vec3<u32>(~78999u, _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.d.x, 28u)], global2[_wgslsmith_index_u32(0u, 24u)]), 1u)), !select(vec2<bool>(true, true), vec2<bool>(false, false), false));
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec4<i32> {
    return -_wgslsmith_clamp_vec4_i32(abs(-vec4<i32>(6364i, 1i, -9012i, 1i)), -vec4<i32>(global4.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global4.b, -2147483647i, global4.b, 0i), vec4<i32>(2147483647i, u_input.c, global4.b, global4.b)), 1i, 1i), max(vec4<i32>(1i, u_input.a, 3506i, u_input.e), vec4<i32>(-1i, -33406i, -1i, 48724i) & vec4<i32>(-1i, global4.b, u_input.a, -2147483647i)) | vec4<i32>(u_input.a >> (0u % 32u), 0i, abs(global4.b), 12696i));
}

fn func_1() -> f32 {
    let var_0 = func_6(global2[_wgslsmith_index_u32(~min(u_input.d.x, _wgslsmith_sub_u32(0u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 28u)], 24u)], 24u)])), 24u)], func_5(~(~u_input.c), all(!select(vec3<bool>(false, false, global4.a), vec3<bool>(false, global4.a, false), vec3<bool>(false, true, global4.a))), func_2(), select(vec4<bool>(true, all(vec4<bool>(global4.a, global1.x, true, false)), global4.a, true), select(!vec4<bool>(true, global1.x, global4.a, true), !vec4<bool>(global4.a, false, global1.x, false), !vec4<bool>(global4.a, global1.x, false, true)), !select(vec4<bool>(global4.a, global1.x, true, true), vec4<bool>(global4.a, global1.x, global4.a, global1.x), vec4<bool>(false, false, global1.x, global1.x)))), func_5(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(0i, 2147483647i, -23265i), vec3<i32>(global4.b, u_input.a, 1i)), vec3<i32>(global4.b | 1i, ~u_input.e, global4.b)), global4.a, func_2(), !select(select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, global1.x, false, global4.a), true), !vec4<bool>(true, global4.a, global4.a, true), vec4<bool>(false, false, false, global4.a))), global1.x);
    global1 = func_4(vec3<u32>(abs(~(global3[_wgslsmith_index_u32(15938u, 28u)] & u_input.b.x)), 8099u, ~0u), 7897i, _wgslsmith_f_op_f32(550f - -2286f), func_5(1i, !func_2().c.a, func_2(), !vec4<bool>(all(vec3<bool>(global1.x, false, false)), !global4.a, global1.x, true)));
    let var_1 = !global1.x;
    global0 = false;
    let var_2 = var_0.xw;
    return _wgslsmith_f_op_f32(ceil(-978f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(min(-1532i, -2147483647i & select(-1i, 0i, true)) << (1u % 32u));
    var var_1 = _wgslsmith_f_op_f32(func_1());
    var var_2 = func_5(_wgslsmith_mult_i32((_wgslsmith_mult_i32(0i, u_input.e) >> (~0u % 32u)) >> ((u_input.d.x << (global3[_wgslsmith_index_u32(1u, 28u)] % 32u)) % 32u), global4.b), false, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(select(-594f, 1771f, global1.x))) + 1144f), vec4<u32>(func_3(vec4<f32>(1203f, -1693f, 2026f, -387f), Struct_2(-436f, vec4<u32>(29227u, global3[_wgslsmith_index_u32(0u, 28u)], 29932u, global3[_wgslsmith_index_u32(49962u, 28u)]), Struct_1(global1.x, global4.b), 607f), vec3<f32>(-289f, 1900f, -1240f), Struct_1(global1.x, global4.b)), global3[_wgslsmith_index_u32(u_input.d.x, 28u)], _wgslsmith_div_u32(4294967295u, 16762u), func_2().b.x) | abs(vec4<u32>(global3[_wgslsmith_index_u32(0u, 28u)], 1u, 4830u, 0u)), Struct_1(any(!vec4<bool>(false, global4.a, true, true)), func_2().c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(610f, _wgslsmith_f_op_f32(abs(207f)))))), !(!select(vec4<bool>(false, global1.x, global4.a, true), !vec4<bool>(global4.a, global4.a, global4.a, false), !vec4<bool>(global1.x, global4.a, global4.a, global4.a))));
    let var_3 = Struct_3(var_2.a, select(!(!var_2.b), var_2.b, func_4(var_2.a, func_2().c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f - -967f)), Struct_3(firstLeadingBit(vec3<u32>(var_2.a.x, 4294967295u, global3[_wgslsmith_index_u32(1u, 28u)])), global1.yz)).xz));
    var var_4 = func_2().c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-848f, 1090f, -748f, 685f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(377f, 261f, 321f, -876f) * vec4<f32>(167f, -706f, 483f, -2138f))))), var_4.b, ~var_2.a, -1087f);
}

