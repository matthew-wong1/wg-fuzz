struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 13> = array<f32, 13>(-366f, -523f, 1158f, -780f, -1907f, -1087f, 621f, -1738f, 184f, -1000f, -963f, -1256f, -1057f);

var<private> global2: bool = true;

var<private> global3: Struct_1 = Struct_1(4294967295u, vec2<u32>(1u, 48599u), 56994u, 1u, 38389u);

var<private> global4: f32 = 1098f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global1 = array<f32, 13>();
    let var_0 = global0.a >> ((min(global0.a, ~global0.a) & countOneBits(vec4<u32>(abs(9359u), global0.a.x, ~global3.e, 4294967295u))) % vec4<u32>(32u));
    global1 = array<f32, 13>();
    let var_1 = global0.b;
    var var_2 = Struct_1(_wgslsmith_mod_u32(4294967295u, var_0.x), ~global0.a.zy, var_0.x, 38525u, global3.d);
    return 7721i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> f32 {
    global2 = any(vec3<bool>(!(!(58676u < global3.d)), ~u_input.a.x > ~(2147483647i & u_input.a.x), !arg_0.x));
    let var_0 = arg_3;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(global0.a.yw, firstLeadingBit(vec2<u32>(global0.a.x, 64812u)), select(vec2<u32>(0u, arg_2.a.x), arg_2.a.yw, vec2<bool>(true, true))), vec2<u32>(1558u, global0.a.x)), vec2<u32>(_wgslsmith_sub_u32(37791u, abs(global3.b.x) | (arg_2.a.x | arg_2.a.x)), global3.c), 43208u, 26579u, global3.d & arg_2.a.x);
    global4 = global1[_wgslsmith_index_u32(global3.b.x, 13u)];
    let var_2 = Struct_1(global3.d, global0.a.yy, ~_wgslsmith_add_u32(abs(~24129u), global3.d), 1u, firstLeadingBit(0u << (arg_2.a.x % 32u)));
    return _wgslsmith_f_op_f32(ceil(-1433f));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global3 = Struct_1(~_wgslsmith_mod_u32(global3.b.x, _wgslsmith_div_u32(~0u, _wgslsmith_add_u32(global0.a.x, global0.a.x))), ~vec2<u32>(4294967295u, global0.a.x), 23396u, global3.c, _wgslsmith_mod_u32(global3.a, 31991u));
    global4 = _wgslsmith_f_op_f32(func_4(vec3<bool>(-reverseBits(u_input.a.x) >= -func_3(), global0.b, true), !select(!(!vec2<bool>(true, global0.b)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global0.b, global0.b)), vec2<bool>(!global0.b, all(vec4<bool>(global0.b, global0.b, global0.b, global0.b)))), Struct_2(~(global0.a << (reverseBits(global0.a) % vec4<u32>(32u))), global0.b), global1[_wgslsmith_index_u32(~global0.a.x, 13u)]));
    global2 = false;
    var var_0 = Struct_1(reverseBits(reverseBits(abs(1u))), global0.a.wx, global3.b.x, 0u, 0u);
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(540f))) - _wgslsmith_f_op_f32(func_4(vec3<bool>(global0.b, global0.b, true), vec2<bool>(global0.b, false), Struct_2(vec4<u32>(92256u, global0.a.x, 37087u, global3.a), false), global1[_wgslsmith_index_u32(~0u, 13u)]))) == 649f);
    return Struct_2(vec4<u32>(~global0.a.x, var_0.d, 1u, ~abs(var_0.e)), !global0.b);
}

fn func_1() -> vec2<i32> {
    let var_0 = (max(-u_input.a.x, u_input.a.x) & -u_input.a.x) | -(~(u_input.a.x ^ -1i));
    let var_1 = Struct_2(vec4<u32>(~(~firstLeadingBit(1u)), max(~91014u, global0.a.x | 88561u) >> ((_wgslsmith_add_u32(55791u, 0u) >> (_wgslsmith_mult_u32(global3.d, global0.a.x) % 32u)) % 32u), global3.a, ~(~18065u | _wgslsmith_sub_u32(global0.a.x, 93292u))), var_0 < var_0);
    global1 = array<f32, 13>();
    var var_2 = func_2(~(i32(-1i) * -_wgslsmith_add_i32(10137i, -1i)));
    global2 = var_2.a.x != (_wgslsmith_dot_vec2_u32(vec2<u32>(~global3.c, _wgslsmith_mod_u32(var_1.a.x, 53718u)), ~(~var_1.a.xz)) ^ ~32259u);
    return min(reverseBits(min(u_input.a.zz, -(~u_input.a.wy))), vec2<i32>(2147483647i, select(48983i, u_input.a.x, false) >> (46101u % 32u)) >> ((vec2<u32>(27609u, ~var_1.a.x) >> (~select(var_2.a.xx, vec2<u32>(38061u, 23888u), global0.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_1(arg_1.x, _wgslsmith_mod_vec2_u32(arg_1.zz, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, arg_1.x), ~global3.b), (vec2<u32>(arg_0.x, 30956u) | global0.a.yz) ^ global0.a.zw)), 4294967295u, ~min(~_wgslsmith_clamp_u32(global0.a.x, global0.a.x, 4294967295u), arg_0.x), ~(1u >> (((1u & arg_0.x) << (_wgslsmith_dot_vec4_u32(global0.a, global0.a) % 32u)) % 32u)));
    let var_1 = -_wgslsmith_dot_vec3_i32(reverseBits(u_input.a.ywx), min(abs(u_input.a.wyy), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, arg_3.x), u_input.a.zyy))) | 1i;
    let var_2 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~(~global0.a), ~(~global0.a)), ~vec4<u32>(global0.a.x, _wgslsmith_dot_vec4_u32(global0.a, global0.a), global0.a.x, ~arg_1.x)), global0.b);
    let var_3 = func_2(arg_2.x);
    let var_4 = Struct_1(21320u, abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(46273u, 0u)), arg_1.xx), ~(~global0.a.zw))), 18361u ^ ~(~min(var_0.a, 20571u)), ~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(var_0.b.x, 1u)), ~(~global0.a.x));
    return func_2(arg_3.x);
}

fn func_6(arg_0: Struct_2) -> f32 {
    global1 = array<f32, 13>();
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_1(func_2(-(~1i)).a.x, ~abs(~vec2<u32>(4294967295u, 4294967295u)) | vec2<u32>(10787u, ~(arg_0.a.x >> (global0.a.x % 32u))), firstTrailingBit(global0.a.x), select(~4294967295u, ~(~15090u), true), abs(4294967295u));
    global4 = global1[_wgslsmith_index_u32(select(min(_wgslsmith_mod_u32(max(var_1.c, _wgslsmith_mult_u32(global0.a.x, 78596u)), arg_0.a.x), _wgslsmith_dot_vec3_u32(firstLeadingBit(~vec3<u32>(25056u, 4294967295u, global3.b.x)), _wgslsmith_mult_vec3_u32(~arg_0.a.wzz, arg_0.a.zwx))), ~(arg_0.a.x & 65841u), arg_0.b), 13u)];
    var var_2 = !(6085i < reverseBits(var_0));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!vec3<bool>(any(vec2<bool>(false, true)), !global0.b, all(vec2<bool>(global0.b, true))), !(!select(vec2<bool>(global0.b, true), vec2<bool>(false, false), global0.b)), arg_0, -1235f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2466f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(18658u, 13u)] - global1[_wgslsmith_index_u32(global3.a, 13u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.b.x, 13u)] * global1[_wgslsmith_index_u32(329u, 13u)]))))), select(true, !(!arg_0.b), !(!global0.b)))));
}

fn func_7(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(arg_1, arg_1)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global3.b), 13u)]));
    var var_2 = global0.a.xxx;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.b, global3.b >> (vec2<u32>(global0.a.x, var_2.x) % vec2<u32>(32u))) | ~(~14781u), 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~4294967295u, 13u)] - _wgslsmith_f_op_f32(f32(-1f) * -237f)) - _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(arg_1 - arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(-1214f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1785f, var_1.x) * _wgslsmith_f_op_f32(floor(-1337f)))), -701f));
    global0 = Struct_2(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, ~1u, 0u | global0.a.x, ~26095u), countOneBits(global0.a) << (~global0.a % vec4<u32>(32u))), true);
    return Struct_1(_wgslsmith_mod_u32(~(~4294967295u), var_2.x), var_2.zx, countOneBits(_wgslsmith_dot_vec4_u32((vec4<u32>(global3.a, 4294967295u, global3.d, var_2.x) | vec4<u32>(94320u, global0.a.x, var_2.x, 4294967295u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(58320u, global3.a, global0.a.x, global3.c), global0.a) % vec4<u32>(32u)), ~vec4<u32>(global3.b.x, var_2.x, 18857u, var_2.x))), ~_wgslsmith_div_u32(var_2.x, abs(select(global3.a, global3.a, false))), _wgslsmith_dot_vec2_u32(var_2.xz, vec2<u32>(0u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_7(u_input.a.x, _wgslsmith_f_op_f32(func_6(func_5(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, 1u), vec2<u32>(53730u, global3.b.x))), vec3<u32>(1u, ~global0.a.x, _wgslsmith_mod_u32(1u, 40720u)), func_1(), -(~vec2<i32>(u_input.a.x, 2147483647i))))));
    var var_0 = func_7(_wgslsmith_dot_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(-1i, -42325i, u_input.a.x)), ~_wgslsmith_mult_vec3_i32(-u_input.a.yzw, u_input.a.zwy)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.x, 13u)]))));
    var var_1 = Struct_2(vec4<u32>(func_5(var_0.b, global0.a.xzx, u_input.a.yw, u_input.a.ww).a.x ^ 60288u, ~19562u, global3.e << (~53037u % 32u), 61587u) & global0.a, _wgslsmith_f_op_f32(f32(-1f) * -592f) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(26350u, 13u)]));
    var_0 = func_7(~u_input.a.x, -457f);
    var var_2 = func_5(func_5(max(~var_0.b, _wgslsmith_sub_vec2_u32(max(vec2<u32>(global0.a.x, 19908u), vec2<u32>(var_1.a.x, global3.a)), ~vec2<u32>(var_1.a.x, var_1.a.x))), firstTrailingBit(_wgslsmith_mult_vec3_u32(global0.a.yzw, _wgslsmith_sub_vec3_u32(var_1.a.zww, vec3<u32>(global0.a.x, var_0.c, global0.a.x)))), abs(select(u_input.a.ww, u_input.a.xx, vec2<bool>(var_1.b, false)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(var_0.e, 4294967295u), var_0.b) % vec2<u32>(32u))), ~countOneBits(vec2<i32>(u_input.a.x, u_input.a.x) | vec2<i32>(u_input.a.x, u_input.a.x))).a.xz, vec3<u32>(var_1.a.x, max(firstTrailingBit(min(global0.a.x, 4532u)), var_0.a), firstLeadingBit(select(firstLeadingBit(global3.c), _wgslsmith_dot_vec2_u32(var_0.b, var_1.a.yx), false))), abs(vec2<i32>(u_input.a.x, ~(-u_input.a.x))), _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a.x, 49124i)), abs(vec2<i32>(_wgslsmith_add_i32(20496i, 32536i), _wgslsmith_add_i32(u_input.a.x, 1i))))).a.x;
    let var_3 = func_5(~vec2<u32>(17451u, 32535u), ~vec3<u32>(4294967295u, reverseBits(var_1.a.x), global0.a.x), -vec2<i32>(1i, -1i), select(-vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), 36924i), vec2<i32>(u_input.a.x, 18764i), vec2<bool>(!all(vec3<bool>(var_1.b, global0.b, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(30568i), -2125f, _wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, firstTrailingBit(u_input.a.x)), u_input.a.wz, vec2<i32>(11372i << (_wgslsmith_mod_u32(var_0.c, global0.a.x) % 32u), 1i)), 0i);
}

