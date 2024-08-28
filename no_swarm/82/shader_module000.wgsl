struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 23> = array<i32, 23>(-4797i, 0i, 2147483647i, -26037i, -20657i, 14105i, 4516i, -42882i, -1i, 1i, i32(-2147483648), -2617i, i32(-2147483648), 1i, 33768i, 1i, -1i, 1i, -23286i, -37221i, -10069i, -33032i, 0i);

var<private> global2: i32 = -30720i;

var<private> global3: array<bool, 11> = array<bool, 11>(true, false, true, false, true, true, false, true, false, false, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(global0.x, global0.x ^ (global0.x ^ global0.x)), global0.x), reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0.x, u_input.b, -39933i) & vec4<i32>(-22192i, -44364i, global1[_wgslsmith_index_u32(6311u, 23u)], u_input.c), _wgslsmith_add_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global0.x, 23u)], 1i, arg_0.x, 28310i), vec4<i32>(-12392i, 52049i, -2147483647i, 1i)))));
    var var_1 = Struct_1(1u, var_0.b);
    global0 = vec3<u32>(_wgslsmith_mod_u32(min(0u, abs(_wgslsmith_clamp_u32(global0.x, 56451u, global0.x))), ~3005u), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(5404u, var_0.a) >> (global0.x % 32u), global0.x), select(firstLeadingBit(~127246u), _wgslsmith_div_u32(var_1.a, global0.x) >> (~global0.x % 32u), false)), var_0.a);
    var var_2 = max(~48479u >> (select(~1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(9632u, 0u, global0.x), vec3<u32>(79886u, 29651u, 24456u))), ~4294967295u > var_0.a) % 32u), min(global0.x, var_1.a));
    global2 = -_wgslsmith_dot_vec3_i32(var_1.b.ywz, var_0.b.xyz) | abs(0i);
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_1(~_wgslsmith_sub_u32(reverseBits(~23389u), ~_wgslsmith_clamp_u32(1u, global0.x, 15906u)), vec4<i32>(-1i, 32620i, countOneBits(firstTrailingBit(_wgslsmith_add_i32(4554i, 22144i))), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(33617u, 23u)], 1i, u_input.c), ~(~vec4<i32>(-27714i, global1[_wgslsmith_index_u32(global0.x, 23u)], 19778i, -1i)))));
    global1 = array<i32, 23>();
    var var_1 = Struct_1(~max(~1u, ~4294967295u) & ~var_0.a, vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_0.b.x, var_0.b.x), -3541i) << (~(82747u ^ global0.x) % 32u), u_input.b, firstLeadingBit(_wgslsmith_div_i32(func_3(var_0.b.wyy), -u_input.c)), ~abs(_wgslsmith_div_i32(1i, 47749i))));
    global2 = select((~var_0.b.x << (firstTrailingBit(4294967295u >> (global0.x % 32u)) % 32u)) & _wgslsmith_mod_i32(-(var_1.b.x | 2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.x, var_1.a, 40866u), 23u)]), 1i, arg_0);
    global1 = array<i32, 23>();
    return reverseBits(vec3<i32>(select(var_1.b.x, ~(-2147483647i), true), ~global1[_wgslsmith_index_u32(global0.x >> (~36710u % 32u), 23u)], func_3(min(var_1.b.wwz, _wgslsmith_clamp_vec3_i32(var_1.b.wyz, vec3<i32>(1i, 2147483647i, -1i), var_0.b.zxz)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    global1 = array<i32, 23>();
    global0 = vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global0.x, 55069u), vec4<u32>(global0.x, 4294967295u, 4294967295u, 1u)), global0.x), global0.zz)), 4294967295u >> ((0u >> (global0.x % 32u)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global0.x, 22327u), abs(1u), 1u << (0u % 32u), 44096u), firstTrailingBit(~vec4<u32>(global0.x, global0.x, global0.x, 0u))));
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(max(~global0.zy, ~vec2<u32>(global0.x, global0.x)), global0.xz, countOneBits(global0.zz)), _wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(19058u, global0.x))), ~global0.xx)), firstTrailingBit(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(arg_1.x, 0i, arg_1.x, 10903i))));
    global3 = array<bool, 11>();
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(max(var_0.b, var_0.b), ~vec4<i32>(0i, -1i, firstTrailingBit(-2147483647i), firstLeadingBit(-9995i))), _wgslsmith_mult_i32(~(-4989i << (_wgslsmith_dot_vec2_u32(vec2<u32>(44493u, var_0.a), vec2<u32>(1u, global0.x)) % 32u)), u_input.b | arg_1.x));
    return Struct_1(~35361u, vec4<i32>(countOneBits(abs(-33011i)), _wgslsmith_add_i32(u_input.a, 0i), ~(-76132i), func_3(var_0.b.yxw)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<f32> {
    let var_0 = Struct_1(~(~(~global0.x)), arg_0.b);
    var var_1 = func_4(arg_1, reverseBits(vec3<i32>(1i, -(~arg_0.b.x), -55727i)), arg_1, arg_0.b.x != arg_0.b.x);
    global2 = 24880i;
    var var_2 = func_4(arg_1, _wgslsmith_mod_vec3_i32(var_0.b.yzy, vec3<i32>(~(~arg_0.b.x), ~_wgslsmith_mod_i32(var_1.b.x, -27327i), -2147483647i)), !select(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(var_0.a, 11u)], true, true), vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.a, 11u)], false, true), false), select(vec4<bool>(arg_1.x, global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(1u, 11u)], arg_1.x), vec4<bool>(arg_1.x, true, global3[_wgslsmith_index_u32(53584u, 11u)], true), vec4<bool>(true, false, false, true)), all(vec4<bool>(arg_1.x, false, arg_1.x, true))), arg_1, select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 11u)], arg_1.x, false, false), !arg_1, false)), select(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-726f, -866f))) != _wgslsmith_div_f32(-929f, _wgslsmith_f_op_f32(1058f - -858f)), all(!(!vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(global0.x, 11u)])))));
    var_2 = func_4(select(select(!arg_1, arg_1, false), select(!select(vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(global3[_wgslsmith_index_u32(11028u, 11u)], global3[_wgslsmith_index_u32(arg_0.a, 11u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(var_1.a, 11u)], true, global3[_wgslsmith_index_u32(var_0.a, 11u)], global3[_wgslsmith_index_u32(var_0.a, 11u)])), select(!arg_1, !vec4<bool>(global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(16146u, 11u)], global3[_wgslsmith_index_u32(34027u, 11u)], global3[_wgslsmith_index_u32(var_0.a, 11u)]), arg_1), select(all(arg_1.ywy), false, arg_1.x && arg_1.x)), arg_1), -(vec3<i32>(0i, ~1i, ~u_input.a) << ((vec3<u32>(global0.x, global0.x, 28371u) & countOneBits(vec3<u32>(var_0.a, var_0.a, var_0.a))) % vec3<u32>(32u))), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1160f)))))) <= -1000f);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1433f, _wgslsmith_f_op_f32(f32(-1f) * -965f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1763f)) + _wgslsmith_f_op_f32(-840f + -1116f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-2129f)))), all(select(arg_1.yy, vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 11u)], true), global3[_wgslsmith_index_u32(14395u, 11u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-836f, -228f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-992f - 725f)))));
}

fn func_1(arg_0: vec3<i32>) -> u32 {
    var var_0 = -360f;
    var var_1 = Struct_1(global0.x, ~min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 18647i, -26992i, -2147483647i), vec4<i32>(-2147483647i, -2147483647i, u_input.c, 0i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 23u)], -2147483647i, -1i, u_input.b)) << ((vec4<u32>(14814u, 4294967295u, global0.x, 60549u) | vec4<u32>(global0.x, 103873u, 6195u, 0u)) % vec4<u32>(32u)), ~(-vec4<i32>(-25391i, u_input.a, u_input.b, 55814i))));
    global3 = array<bool, 11>();
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(func_4(vec4<bool>(any(vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 11u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.a) >> (vec2<u32>(0u, var_1.a) % vec2<u32>(32u)), global0.xz), 11u)], !all(vec3<bool>(global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(var_1.a, 11u)], true)), true), func_2(false, ~(~vec3<u32>(var_1.a, var_1.a, 25909u))), select(select(!vec4<bool>(global3[_wgslsmith_index_u32(1278u, 11u)], global3[_wgslsmith_index_u32(48952u, 11u)], false, global3[_wgslsmith_index_u32(global0.x, 11u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(24564u, 11u)], global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(var_1.a, 11u)], global3[_wgslsmith_index_u32(var_1.a, 11u)]), vec4<bool>(false, false, false, true), vec4<bool>(global3[_wgslsmith_index_u32(var_1.a, 11u)], true, false, false)), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 11u)], true, true, false)), vec4<bool>(global3[_wgslsmith_index_u32(reverseBits(var_1.a), 11u)], true, true, any(vec2<bool>(false, true))), true), false), !(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(global0.x, 11u)], false, true))))));
    let var_3 = max(_wgslsmith_mod_u32(0u, global0.x), min(var_1.a, 1u & firstTrailingBit(var_1.a)) << (abs(1u) % 32u));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(35136u, var_1.a, _wgslsmith_mult_u32(global0.x, global0.x)), var_1.a, abs(var_3), var_3) | firstTrailingBit(vec4<u32>(~0u, reverseBits(var_3), 1u, _wgslsmith_add_u32(58839u, global0.x))), _wgslsmith_clamp_vec4_u32(min(~(~vec4<u32>(var_3, var_3, 28043u, var_3)), select(abs(vec4<u32>(56978u, 54202u, var_3, var_3)), vec4<u32>(global0.x, var_3, 4294967295u, 33603u) ^ vec4<u32>(var_3, 4294967295u, 0u, var_3), global3[_wgslsmith_index_u32(func_4(vec4<bool>(true, global3[_wgslsmith_index_u32(7020u, 11u)], false, false), arg_0, vec4<bool>(global3[_wgslsmith_index_u32(var_3, 11u)], global3[_wgslsmith_index_u32(16660u, 11u)], global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(global0.x, 11u)]), global3[_wgslsmith_index_u32(0u, 11u)]).a, 11u)])), ~(~(~vec4<u32>(var_3, 37797u, var_3, global0.x))), ~(~(~vec4<u32>(0u, 23268u, var_3, 27883u)))));
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> StorageBuffer {
    global0 = ~firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(arg_2.a, arg_1), global0.x, 4294967295u) << ((reverseBits(vec3<u32>(4294967295u, 32649u, 0u)) ^ vec3<u32>(0u, arg_1, arg_1)) % vec3<u32>(32u)));
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec3_f32(func_5(func_4(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(1u, 11u)]), -arg_2.b.xwz, vec4<bool>(true, true, true, true), true), select(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(82206u, 11u)], true, global3[_wgslsmith_index_u32(0u, 11u)]), vec4<bool>(true, false, global3[_wgslsmith_index_u32(6975u, 11u)], global3[_wgslsmith_index_u32(arg_2.a, 11u)]), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_2.a, 11u)], global3[_wgslsmith_index_u32(arg_2.a, 11u)]), vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(22004u, 11u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(62887u, 11u)], true, true))))).x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_1(global0.x, vec4<i32>(-1i, global1[_wgslsmith_index_u32(90914u, 23u)], 1i, u_input.a)), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_1, 11u)], false, false))).x))), 372f, _wgslsmith_f_op_vec3_f32(func_5(Struct_1(arg_1 << (0u % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 26554i, -1i, global1[_wgslsmith_index_u32(0u, 23u)]), vec4<i32>(arg_0, global1[_wgslsmith_index_u32(20003u, 23u)], arg_3, arg_3))), vec4<bool>(true, true, true, true))).x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -637f))) + var_0.x) * var_0.x);
    let var_2 = func_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, global0.x, arg_1, 0u), vec4<u32>(4294967295u, arg_1, global0.x, global0.x))), arg_2.a) ^ ~arg_1, 11u)], ~(~vec3<u32>(~19549u, arg_1, ~global0.x))).xy;
    global3 = array<bool, 11>();
    return StorageBuffer(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_mult_i32(-(~global1[_wgslsmith_index_u32(~global0.x, 23u)]), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -26146i, 2147483647i), vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.x, 23u)], global1[_wgslsmith_index_u32(global0.x, 23u)])))), _wgslsmith_div_u32(global0.x, ~func_1(select(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global0.x, 23u)], -19007i), vec3<i32>(u_input.c, 2147483647i, global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(global3[_wgslsmith_index_u32(45928u, 11u)], true, false)))), Struct_1(global0.x, vec4<i32>(firstLeadingBit(u_input.a) ^ ~global1[_wgslsmith_index_u32(37235u, 23u)], ~(-1i) ^ firstLeadingBit(u_input.c), reverseBits(~global1[_wgslsmith_index_u32(1u, 23u)]), i32(-1i) * -global1[_wgslsmith_index_u32(1u, 23u)])), (i32(-1i) * -_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(global0.x, 23u)])) ^ global1[_wgslsmith_index_u32(abs(10852u), 23u)]);
}

