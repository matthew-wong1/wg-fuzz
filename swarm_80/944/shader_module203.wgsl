struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: array<bool, 30>;

var<private> global2: u32 = 24328u;

var<private> global3: array<bool, 17> = array<bool, 17>(false, true, false, false, false, true, false, true, false, false, true, false, true, false, false, false, true);

var<private> global4: array<Struct_1, 19>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(~u_input.a, 24u)], min(_wgslsmith_clamp_i32(33205i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.c, -1017i) & vec4<i32>(-47903i, global0[_wgslsmith_index_u32(u_input.a, 24u)], -2330i, -1i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 24u)], u_input.c, -41669i, 0i)), -19048i), u_input.c));
    global3 = array<bool, 17>();
    let var_1 = !(global3[_wgslsmith_index_u32(u_input.a, 17u)] | true);
    let var_2 = vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, ~u_input.a), _wgslsmith_dot_vec4_u32(u_input.b, select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), u_input.b, vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)], true, global3[_wgslsmith_index_u32(27524u, 17u)]))), _wgslsmith_add_u32(u_input.a, u_input.a)) ^ (~3721u & select(reverseBits(1u), _wgslsmith_mod_u32(25879u, u_input.a), false)), 17u)], !var_1);
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<i32> {
    global4 = array<Struct_1, 19>();
    var var_0 = !select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.b.d.x, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)]), !select(!vec2<bool>(global1[_wgslsmith_index_u32(arg_0.d.x, 30u)], global3[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(arg_0.a.a, true), vec2<bool>(global1[_wgslsmith_index_u32(17578u, 30u)], arg_0.b.a)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(arg_0.b.b.x, u_input.b.x)), firstTrailingBit(u_input.b.xz)), 17u)]);
    global0 = array<i32, 24>();
    let var_1 = arg_0.b.d.yzz ^ vec3<u32>(~reverseBits(52767u & arg_0.d.x), 10651u, u_input.b.x);
    let var_2 = select(vec2<u32>(4294967295u, 15526u), arg_0.d << (firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(77392u, arg_0.d.x), u_input.b.wx))) % vec2<u32>(32u)), vec2<bool>(select(var_0.x, select(var_0.x, global3[_wgslsmith_index_u32(47602u, 17u)], false) == (arg_0.a.d.x < arg_0.a.d.x), true), true));
    return _wgslsmith_clamp_vec2_i32(~vec2<i32>(11599i, arg_0.b.c << (_wgslsmith_sub_u32(9484u, var_1.x) % 32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-24236i, -2147483647i), max(vec2<i32>(-35155i, arg_0.b.c), arg_0.c & arg_0.c) & (arg_0.c | min(vec2<i32>(-2147483647i, -1i), arg_0.c)), arg_0.c), -max(select(arg_0.c, ~vec2<i32>(-1i, u_input.c), func_3(arg_1.yx)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, -32507i), 2147483647i | arg_0.c.x)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    global3 = array<bool, 17>();
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(u_input.a, 19u)], global4[_wgslsmith_index_u32(63931u, 19u)], func_4(Struct_2(Struct_1(func_3(vec2<f32>(-1441f, 1251f)), vec3<u32>(u_input.a, 43933u, 4294967295u) >> (vec3<u32>(4294967295u, 0u, u_input.a) % vec3<u32>(32u)), -1i, firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, u_input.a, 621u)), global1[_wgslsmith_index_u32(abs(0u), 30u)]), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(42030u, 0u) & u_input.b.x, 19u)], -(vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)]) ^ vec2<i32>(-22244i, u_input.c)), ~u_input.b.yw >> (select(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, 48279u), global1[_wgslsmith_index_u32(u_input.b.x, 30u)]) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -428f), -393f, _wgslsmith_div_f32(-186f, _wgslsmith_f_op_f32(-2010f - -197f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1519f)))), _wgslsmith_add_vec2_u32(u_input.b.xx, ~vec2<u32>(u_input.b.x, u_input.b.x)));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec3<u32> {
    global4 = array<Struct_1, 19>();
    var var_0 = select(!select(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(53423u, 17u)], arg_0.a.e), select(vec4<bool>(arg_0.b.a, global3[_wgslsmith_index_u32(arg_0.a.d.x, 17u)], false, arg_2.b.e), select(vec4<bool>(arg_2.b.a, false, true, true), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.b.d.x, 17u)], true, true, global3[_wgslsmith_index_u32(arg_2.d.x, 17u)]), false), false), arg_2.b.e), vec4<bool>(false, true, global3[_wgslsmith_index_u32((_wgslsmith_mod_u32(17861u, u_input.a) & 1u) ^ ~_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(43061u, u_input.b.x)), 17u)], true), arg_2.b.e);
    let var_1 = select(!select(vec4<bool>(!global3[_wgslsmith_index_u32(u_input.a, 17u)], true, 1u > arg_0.d.x, false), !(!vec4<bool>(false, arg_0.a.e, false, var_0.x)), arg_0.b.a & (arg_2.b.b.x < u_input.a)), !vec4<bool>(true, 2147483647i <= u_input.c, all(!vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(32515u, 30u)], arg_2.b.a, var_0.x)), true), any(vec2<bool>(true, true)));
    global4 = array<Struct_1, 19>();
    let var_2 = _wgslsmith_f_op_f32(floor(-489f));
    return _wgslsmith_sub_vec3_u32(~(~((arg_0.a.d.zxz ^ vec3<u32>(6990u, arg_2.d.x, u_input.a)) ^ vec3<u32>(arg_0.b.d.x, arg_2.b.b.x, 4294967295u))), vec3<u32>(arg_0.b.b.x, ~_wgslsmith_add_u32(0u, arg_0.d.x), ~(~4294967295u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec3<u32> {
    let var_0 = true;
    global1 = array<bool, 30>();
    var var_1 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(func_5(Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 17u)], vec3<u32>(u_input.a, u_input.a, 62087u), -34794i, vec4<u32>(0u, 4294967295u, 4294967295u, 18485u), var_0), global4[_wgslsmith_index_u32(u_input.b.x, 19u)], arg_1.xx, u_input.b.zz), reverseBits(2147483647i), func_2(global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), vec3<u32>(firstLeadingBit(4294967295u), firstLeadingBit(u_input.a), firstTrailingBit(2763u)))), _wgslsmith_div_u32(u_input.a, max(_wgslsmith_div_u32(firstLeadingBit(10748u), 57847u), max(1u, firstLeadingBit(95914u)))));
    global3 = array<bool, 17>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1221f))), -171f, _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1166f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -666f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1282f - 1000f))), _wgslsmith_f_op_f32(228f + _wgslsmith_f_op_f32(f32(-1f) * -718f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f)))));
    return _wgslsmith_clamp_vec3_u32(abs(~u_input.b.yzz), select((_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), u_input.b.wyw, u_input.b.wxx) << (~vec3<u32>(4294967295u, 4294967295u, 52749u) % vec3<u32>(32u))) >> (vec3<u32>(var_1.x | 73631u, ~0u, reverseBits(1u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36692u, 1u, 0u), vec3<u32>(u_input.a, u_input.a, var_1.x)), var_1.x), ~abs(var_1.x), var_1.x), select(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], false), select(vec3<bool>(var_0, global1[_wgslsmith_index_u32(var_1.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), select(vec3<bool>(var_0, true, false), vec3<bool>(true, global3[_wgslsmith_index_u32(var_1.x, 17u)], global3[_wgslsmith_index_u32(var_1.x, 17u)]), vec3<bool>(false, var_0, false)), vec3<bool>(global1[_wgslsmith_index_u32(0u, 30u)], var_0, false)), select(!vec3<bool>(true, var_0, true), select(vec3<bool>(false, true, false), vec3<bool>(false, var_0, true), global3[_wgslsmith_index_u32(4294967295u, 17u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 17u)], false, false), vec3<bool>(false, false, var_0), vec3<bool>(global3[_wgslsmith_index_u32(0u, 17u)], var_0, global3[_wgslsmith_index_u32(var_1.x, 17u)]))))), vec3<u32>(_wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(u_input.a, u_input.b.x))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 0u), ~u_input.b.x), ~var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true | !global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 17u)], _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(35051u, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(func_1(vec3<i32>(u_input.c, 1i, u_input.c), vec4<i32>(2147483647i, -12638i, -2147483647i, u_input.c)), vec3<u32>(32356u, 8481u, 0u))), ((u_input.b.xzx >> (u_input.b.zxw % vec3<u32>(32u))) ^ u_input.b.xwx) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(91315u, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, 26146u))) % vec3<u32>(32u))), -10660i, ~vec4<u32>(~(~4294967295u), _wgslsmith_div_u32(4294967295u, 30883u), ~(~0u), reverseBits(~4294967295u)), false);
    let var_1 = Struct_1(select(true, true, any(select(!vec3<bool>(global3[_wgslsmith_index_u32(var_0.b.x, 17u)], global3[_wgslsmith_index_u32(4294967295u, 17u)], false), select(vec3<bool>(true, true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)], global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), global3[_wgslsmith_index_u32(var_0.b.x, 17u)]), !vec3<bool>(global3[_wgslsmith_index_u32(var_0.d.x, 17u)], true, var_0.e)))), vec3<u32>(firstLeadingBit(abs(~var_0.b.x)), 20335u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.b.x, u_input.a, u_input.a) >> (u_input.b % vec4<u32>(32u)), abs(var_0.d)), min(~min(47022u, 9264u), _wgslsmith_dot_vec2_u32(u_input.b.xw, var_0.d.xz))), 1i, ~countOneBits(abs(vec4<u32>(var_0.d.x, 13318u, var_0.d.x, 8534u) & vec4<u32>(47345u, 1u, 1u, u_input.b.x))), !all(!(!vec2<bool>(false, var_0.a))));
    global3 = array<bool, 17>();
    global1 = array<bool, 30>();
    global4 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(278f)), _wgslsmith_f_op_f32(select(196f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1033f, 105f))), global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.a, var_1.b.x), vec4<u32>(1u, u_input.b.x, u_input.b.x, 0u)), reverseBits(22405u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, var_0.b.x), 30u)]), 30u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -455f) * _wgslsmith_div_f32(-853f, -501f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1250f, 694f, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(231f, -772f, -551f))))));
}

