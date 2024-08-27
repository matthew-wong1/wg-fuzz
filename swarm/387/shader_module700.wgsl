struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 10105u, 25897u);

var<private> global1: array<vec4<f32>, 9>;

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), 42879i, -19880i, 62775i);

var<private> global3: vec4<u32> = vec4<u32>(1u, 1u, 26008u, 102876u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = !any(!select(select(vec2<bool>(arg_0.a, false), vec2<bool>(arg_0.a, arg_0.a), arg_0.a), !vec2<bool>(arg_0.a, false), all(vec2<bool>(true, true))));
    global3 = _wgslsmith_mult_vec4_u32(abs(min(arg_2, ~arg_2)), _wgslsmith_sub_vec4_u32(arg_2, ~vec4<u32>(global0.x, 1u, _wgslsmith_clamp_u32(0u, global0.x, 1u), 0u)));
    var var_1 = Struct_1(false, -1i);
    global3 = ~abs(abs(select(max(arg_2, arg_2), countOneBits(arg_2), !vec4<bool>(arg_0.a, true, false, true))));
    global3 = _wgslsmith_div_vec4_u32(min(vec4<u32>(~global3.x, ~19167u, 1u, 4294967295u), vec4<u32>(global0.x, global3.x, arg_2.x, ~arg_2.x)), ~abs(_wgslsmith_sub_vec4_u32(arg_2, vec4<u32>(u_input.b.x, global0.x, 36753u, 1u)))) << (vec4<u32>(_wgslsmith_div_u32(global3.x, abs(max(global0.x, global3.x))), 11920u, reverseBits(36045u) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(23576u, 4294967295u), vec2<u32>(u_input.b.x, global0.x)) % 32u), arg_2.x) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(-161f + 1754f)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> vec3<i32> {
    global3 = abs(~(~select(firstTrailingBit(vec4<u32>(global0.x, u_input.b.x, 5934u, global0.x)), vec4<u32>(u_input.b.x, u_input.b.x, 1u, global3.x) << (vec4<u32>(4294967295u, 18863u, 1953u, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(arg_1.a.a, false, false, true))));
    var var_0 = Struct_1(all(arg_0.c.wz), ~(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(2147483647i, 2147483647i, arg_1.b.x), global2.x)));
    let var_1 = select(select(vec4<bool>(!(1i >= u_input.c), !(arg_0.c.x & false), true, true), arg_1.c, select(arg_0.c, arg_1.c, arg_1.a.a)), arg_1.c, min(-(~arg_0.b.x), -var_0.b) <= -2147483647i);
    return ~firstLeadingBit(_wgslsmith_sub_vec3_i32(~(arg_1.b ^ arg_1.b), reverseBits(arg_1.b | arg_1.b)));
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(~global0.x, 9u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.x, u_input.b.x), 9u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(206f, 1669f, -429f, 343f) * vec4<f32>(-994f, -696f, -1000f, -1073f)) * _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global3.x, 9u)]))), false))));
    let var_1 = Struct_2(Struct_1(true, global2.x), min(func_4(Struct_2(Struct_1(false, u_input.c), vec3<i32>(-1i, global2.x, u_input.a.x), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(true, 1i), u_input.a.zyw, vec4<bool>(false, true, false, false)), reverseBits(u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(true, global2.x), vec3<f32>(var_0.x, 318f, 311f), vec4<u32>(97346u, 2615u, 1u, 4294967295u))))), max(~vec3<i32>(-2147483647i, global2.x, 1i), vec3<i32>(_wgslsmith_sub_i32(1i, 0i), firstLeadingBit(global2.x), u_input.d.x | global2.x))), vec4<bool>(any(vec3<bool>(true, true, true)), ~global3.x != 0u, all(vec3<bool>(true, true, true)), false));
    global3 = ~(~vec4<u32>(firstTrailingBit(u_input.b.x), 0u, 6936u, reverseBits(global0.x))) >> (~_wgslsmith_mult_vec4_u32(min(~vec4<u32>(global3.x, 9677u, 62040u, 74086u), ~vec4<u32>(global0.x, global3.x, u_input.b.x, global3.x)), ~(~vec4<u32>(global0.x, 46648u, 62425u, 17920u))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-170f - 1f);
    global2 = reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, u_input.a.x, var_1.b.x, u_input.d.x)) & min(vec4<i32>(u_input.c, u_input.d.x, -4470i, var_1.b.x), vec4<i32>(var_1.a.b, 43681i, u_input.a.x, global2.x)), abs(vec4<i32>(53652i, -1i, 13773i, -1i))), 2147483647i, -52947i, _wgslsmith_dot_vec3_i32(vec3<i32>(min(-2147483647i, 1i), reverseBits(global2.x), 1i), vec3<i32>(u_input.a.x, func_4(Struct_2(var_1.a, var_1.b, vec4<bool>(var_1.c.x, false, var_1.a.a, var_1.c.x)), var_1, global2.x, 942f).x, ~0i))));
    return vec2<bool>(!(_wgslsmith_div_f32(-1639f, _wgslsmith_f_op_f32(-422f - var_0.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-949f)))), !var_1.c.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = select(arg_2, select(vec2<bool>(656f <= _wgslsmith_f_op_f32(min(arg_1, arg_1)), any(!arg_0.wzy)), arg_0.zy, vec2<bool>(true, true)), select(arg_0.xx, !select(func_2(), vec2<bool>(true, false), vec2<bool>(false, false)), arg_0.x));
    var var_1 = ~vec2<u32>(u_input.b.x ^ firstTrailingBit(19322u), global0.x);
    return Struct_2(Struct_1(select(any(arg_0.yzy), var_0.x, select(u_input.c > global2.x, select(false, arg_2.x, arg_0.x), arg_0.x)), 1i), ~vec3<i32>(i32(-1i) * -1i, -1193i, global2.x >> (var_1.x % 32u)) >> (abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(5466u, var_1.x, 2054u), global3.xwx)) % vec3<u32>(32u)), vec4<bool>(true, ((6404u | global0.x) | global0.x) > max(4294967295u, _wgslsmith_div_u32(global0.x, 49428u)), all(!select(vec2<bool>(var_0.x, false), arg_0.xw, vec2<bool>(false, arg_0.x))), arg_0.x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    global1 = array<vec4<f32>, 9>();
    var var_0 = 2147483647i;
    return arg_1;
}

fn func_7(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global3 = _wgslsmith_sub_vec4_u32(~((~vec4<u32>(u_input.b.x, global3.x, 2864u, 31028u) >> (~vec4<u32>(17293u, 43849u, u_input.b.x, 1u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 0u, 4294967295u, global0.x), ~vec4<u32>(1u, global3.x, global3.x, 8541u), vec4<u32>(4294967295u, 4294967295u, 14491u, global3.x) ^ vec4<u32>(u_input.b.x, global3.x, 21459u, global3.x))), ~max(select(vec4<u32>(global3.x, u_input.b.x, global0.x, global0.x) << (vec4<u32>(global0.x, global0.x, 24437u, 1u) % vec4<u32>(32u)), ~vec4<u32>(52172u, global3.x, global0.x, u_input.b.x), func_5(arg_0.c, -1131f, arg_0.c.wx).c), vec4<u32>(u_input.b.x, u_input.b.x, 43950u, global3.x)));
    var var_0 = 725f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1681f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-819f * -1073f), _wgslsmith_f_op_f32(ceil(-1607f))))))) - -1984f);
    let var_1 = global3.x;
    let var_2 = u_input.a.x & (i32(-1i) * -firstLeadingBit(~arg_0.a.b));
    return arg_0.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(true, arg_2.b.x);
    var var_1 = func_7(func_6(arg_2.a, func_5(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x)), !func_2()), Struct_1(any(select(arg_2.c, vec4<bool>(true, false, false, arg_1.x), arg_2.c)), (global2.x ^ arg_2.a.b) | 27611i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1722f, arg_0.x)) + 389f))), func_4(arg_2, func_5(!arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), !arg_1), -(~(1i << (global0.x % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-457f, _wgslsmith_div_f32(arg_0.x, arg_0.x))))).x);
    let var_2 = arg_2.a;
    var var_3 = var_2;
    let var_4 = arg_2.a;
    return !arg_2.c.yzw;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    global1 = array<vec4<f32>, 9>();
    var var_0 = 1u;
    var var_1 = Struct_2(func_6(arg_0, Struct_2(func_6(Struct_1(false, -5724i), Struct_2(arg_1, vec3<i32>(2147483647i, -1i, -83830i), vec4<bool>(true, arg_1.a, arg_1.a, true)), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1723f)).a, -u_input.a.xyy, !select(vec4<bool>(arg_1.a, false, true, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_1.a, arg_1.a, true))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -137f) - _wgslsmith_f_op_f32(ceil(-589f))))).a, u_input.a.yxw, !(!vec4<bool>(arg_0.a, true, false, all(vec4<bool>(true, arg_0.a, false, arg_0.a)))));
    global1 = array<vec4<f32>, 9>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -793f);
    return Struct_2(var_1.a, ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-33780i, -22334i, arg_0.b), global2.wyy) << ((vec3<u32>(1u, global0.x, 1u) << (vec3<u32>(global0.x, 24387u, global0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a.xyy), !func_6(Struct_1(all(vec4<bool>(true, var_1.a.a, false, false)), -15668i), func_6(Struct_1(false, arg_1.b), func_6(Struct_1(false, var_1.a.b), Struct_2(Struct_1(true, 56799i), var_1.b, var_1.c), var_1.a, 310f), func_5(var_1.c, 535f, var_1.c.zw).a, _wgslsmith_f_op_f32(f32(-1f) * -1535f)), Struct_1(any(vec3<bool>(arg_0.a, arg_1.a, false)), -36510i << (global0.x % 32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-524f))))).c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3.wzx;
    global2 = -u_input.a;
    let var_0 = func_8(Struct_1(any(select(vec3<bool>(false, true, false), func_1(vec4<f32>(-1003f, 730f, -251f, -437f), vec2<bool>(false, true), Struct_2(Struct_1(true, global2.x), u_input.a.yyw, vec4<bool>(true, true, false, true))), true)), global2.x), func_6(Struct_1(select(global0.x < 43211u, true, func_1(vec4<f32>(563f, -855f, 1477f, 123f), vec2<bool>(false, true), Struct_2(Struct_1(true, global2.x), u_input.a.xzy, vec4<bool>(true, true, true, true))).x), ~(-u_input.a.x)), Struct_2(Struct_1(any(vec4<bool>(false, true, false, true)), 0i), u_input.a.wwx, vec4<bool>(true, all(vec4<bool>(true, true, true, false)), func_5(vec4<bool>(true, true, false, false), -330f, vec2<bool>(true, true)).a.a, true)), Struct_1(func_6(Struct_1(false, -51572i), Struct_2(Struct_1(true, u_input.a.x), vec3<i32>(u_input.c, -10766i, u_input.a.x), vec4<bool>(false, true, true, true)), Struct_1(false, global2.x), -2438f).a.a, -1i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -170f) - _wgslsmith_f_op_f32(min(-1522f, -948f)))))).a);
    var var_1 = vec3<i32>(-1i) * -var_0.b;
    let var_2 = func_8(func_8(Struct_1((var_0.b.x & 0i) <= (var_1.x & var_1.x), func_4(func_8(Struct_1(var_0.a.a, u_input.a.x), Struct_1(var_0.c.x, u_input.c)), var_0, ~global2.x, -1573f).x), func_7(Struct_2(func_8(var_0.a, Struct_1(false, 1i)).a, vec3<i32>(var_1.x, var_0.b.x, -4125i) ^ vec3<i32>(global2.x, -20463i, -1i), func_8(var_0.a, Struct_1(var_0.c.x, var_1.x)).c), var_0.a.b)).a, Struct_1(!func_1(vec4<f32>(-572f, 1758f, -383f, -1317f), var_0.c.yz, var_0).x & var_0.a.a, global2.x)).a;
    let var_3 = u_input.c;
    global2 = u_input.a;
    let var_4 = select(var_2.a | var_0.a.a, all(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(5790u, 9u)], global1[_wgslsmith_index_u32(18014u, 9u)], vec4<bool>(false, var_2.a, true, var_2.a))) - _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(global3.x, 9u)])), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(236f, -639f, -1141f, -1368f) * global1[_wgslsmith_index_u32(global3.x, 9u)]), vec2<bool>(false, var_0.c.x), Struct_2(Struct_1(true, 22891i), vec3<i32>(var_0.a.b, var_1.x, u_input.a.x), vec4<bool>(var_2.a, var_2.a, var_0.c.x, false))).zx, var_0).zy), var_0.c.x);
    let var_5 = func_4(Struct_2(var_2, vec3<i32>(_wgslsmith_mult_i32(0i, -8025i), _wgslsmith_sub_i32(func_4(Struct_2(Struct_1(var_4, var_1.x), vec3<i32>(-24179i, var_1.x, 2147483647i), vec4<bool>(var_4, true, true, true)), var_0, global2.x, 1567f).x, 1i), func_4(var_0, var_0, -17104i, 728f).x << (_wgslsmith_dot_vec3_u32(global3.wyz, vec3<u32>(1u, 1u, u_input.b.x)) % 32u)), func_6(var_2, var_0, var_0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(366f, -1507f)))).c), var_0, -(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), countOneBits(vec2<i32>(var_3, -1i))) ^ _wgslsmith_div_i32(-8697i, func_8(var_2, Struct_1(var_2.a, 1i)).a.b)), 1000f).x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(_wgslsmith_clamp_i32(var_2.b, -20205i, -31826i), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.c, var_5, 37909i, u_input.d.x)), 1i >> (u_input.b.x % 32u), ~global2.x)) & ~_wgslsmith_mod_vec4_i32(u_input.a, u_input.a << (vec4<u32>(global3.x, global0.x, global3.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1244f, 479f, -1711f) - vec3<f32>(232f, 375f, 2885f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, -795f, 414f))))))), 0i);
}

