struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, true, true, true, true, false, true, true, true, true, true, false, true, false);

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, true, false, true, false, true, false, true, false, true, true, true, true, true, false, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32) -> i32 {
    global0 = array<bool, 15>();
    let var_0 = Struct_3(Struct_2(-6015i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(ceil(160f)), _wgslsmith_f_op_f32(select(arg_0, -827f, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))))) + vec2<f32>(_wgslsmith_f_op_f32(sign(-277f)), _wgslsmith_f_op_f32(-arg_0))), !all(vec3<bool>(all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), false, true)));
    var var_1 = vec4<i32>(1i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i & u_input.c, 1i, u_input.c, 43993i), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.a, -1i, -43943i, var_0.a.a), vec4<i32>(-1i, -1i, u_input.c, -1i)))), 0i) ^ select(countOneBits(vec4<i32>(31099i, u_input.c, -45599i, abs(var_0.a.a))), ~vec4<i32>(min(-2147483647i, u_input.c), -22887i, abs(u_input.c), 1i), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(0u, 19u)], true, true), select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, false), vec4<bool>(var_0.c, global0[_wgslsmith_index_u32(43346u, 15u)], var_0.c, false), vec4<bool>(var_0.c, false, var_0.c, var_0.c)), vec4<bool>(true, true, true, true)));
    var var_2 = Struct_5(Struct_2(u_input.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(224f, 508f, 1014f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, -427f, arg_0, var_0.b.x) - vec4<f32>(-183f, 247f, var_0.b.x, -831f)))))), select(!select(select(vec2<bool>(global0[_wgslsmith_index_u32(55099u, 15u)], true), vec2<bool>(var_0.c, false), vec2<bool>(true, false)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(39001u, 15u)]), !vec2<bool>(true, var_0.c)), !select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(63975u, 19u)]), !vec2<bool>(var_0.c, global1[_wgslsmith_index_u32(17669u, 19u)]), false), !vec2<bool>(select(global0[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(63733u, 19u)], true), var_0.a.a >= 2147483647i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b.ww));
    return max(_wgslsmith_dot_vec4_i32(max(~(-vec4<i32>(-16209i, -1973i, u_input.c, var_2.a.a)), select(vec4<i32>(0i, 3889i, 2147483647i, -42180i), firstLeadingBit(vec4<i32>(-30949i, var_1.x, -2147483647i, var_0.a.a)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, var_0.c, false), vec4<bool>(global1[_wgslsmith_index_u32(6041u, 19u)], true, true, var_0.c)))), vec4<i32>(var_1.x, reverseBits(min(1990i, var_0.a.a)), -_wgslsmith_div_i32(u_input.c, var_1.x), -1i)), i32(-1i) * -u_input.c);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_mult_vec3_i32(~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(u_input.c, -14464i, 2147483647i)) << (u_input.b % vec3<u32>(32u))), vec3<i32>(-41887i, _wgslsmith_sub_i32(func_3(arg_3.x), u_input.c), u_input.c)) | ~vec3<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-18527i, u_input.c), vec2<i32>(-2331i, u_input.c)), max(vec2<i32>(u_input.c, 1i), vec2<i32>(-2147483647i, 1004i))), reverseBits(1i), -26415i);
    var var_1 = abs(vec3<i32>(2147483647i, ~_wgslsmith_div_i32(2147483647i, ~var_0.x), u_input.c));
    var_1 = -vec3<i32>(var_1.x, -(-u_input.c & (var_1.x ^ var_0.x)), countOneBits(~u_input.c));
    var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, func_3(_wgslsmith_f_op_f32(f32(-1f) * -575f)), firstLeadingBit(var_0.x)), _wgslsmith_add_vec3_i32(countOneBits(-vec3<i32>(2147483647i, u_input.c, u_input.c) | ~vec3<i32>(14157i, -2420i, var_0.x)), _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0.x, var_0.x, var_0.x), -min(vec3<i32>(2147483647i, -50141i, var_0.x), vec3<i32>(var_0.x, 19623i, -19876i)))));
    var_1 = -_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(54904i, 2147483647i, var_0.x), -vec3<i32>(u_input.c, 0i, -37786i)), -(vec3<i32>(-2147483647i, -2147483647i, 15376i) ^ vec3<i32>(var_0.x, u_input.c, -36809i))), vec3<i32>(abs(countOneBits(var_1.x)), select(_wgslsmith_div_i32(-2147483647i, u_input.c), 0i, u_input.b.x < 44066u), -countOneBits(-30472i)));
    return var_1.x;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_4(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(9919i, 2147483647i) | vec2<i32>(u_input.c, u_input.c), vec2<i32>(1i, u_input.c)), func_2(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, arg_0.x, -984f))) >> (_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(u_input.a.x, u_input.b.x, 1u)) % 32u), u_input.c));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0.x)))), -204f)), arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -757f) * _wgslsmith_f_op_f32(ceil(192f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(889f, arg_0.x, global1[_wgslsmith_index_u32(32907u, 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.x)))) * -875f))), arg_0.x);
    var var_2 = Struct_3(Struct_2(-1i), var_1.yz, true);
    global1 = array<bool, 19>();
    let var_3 = select(!select(vec4<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), var_2.c, false, u_input.c <= var_0.a.x), !vec4<bool>(false, true, var_2.c, false), global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), !vec4<bool>(!(true && global0[_wgslsmith_index_u32(0u, 15u)]), true, all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), 4294967295u != u_input.a.x), select(select(vec4<bool>(false, true, false | global0[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 19u)]), vec4<bool>(false || var_2.c, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), true, true), !(4294967295u != u_input.b.x)), select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(28953u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], true, var_2.c, false), false), select(vec4<bool>(false, global1[_wgslsmith_index_u32(47377u, 19u)], global1[_wgslsmith_index_u32(52571u, 19u)], false), select(vec4<bool>(true, true, true, false), vec4<bool>(var_2.c, false, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], true), global1[_wgslsmith_index_u32(92411u, 19u)]), select(vec4<bool>(false, var_2.c, true, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<bool>(var_2.c, global1[_wgslsmith_index_u32(u_input.b.x, 19u)], false, false), false)), !select(global0[_wgslsmith_index_u32(26680u, 15u)], true, true)), true));
    return -53709i;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_4) -> i32 {
    global0 = array<bool, 15>();
    let var_0 = firstTrailingBit(39793i);
    let var_1 = ~_wgslsmith_dot_vec3_i32(~select(vec3<i32>(u_input.c, -8288i, var_0), arg_2.a, vec3<bool>(arg_1.c, false, global0[_wgslsmith_index_u32(95583u, 15u)])) & ~(vec3<i32>(arg_1.a.a, -1i, 1i) >> (arg_0 % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.a, arg_2.a.x, arg_2.a.x), arg_2.a), -vec3<i32>(var_0, -4347i, var_0), vec3<i32>(var_0, arg_2.a.x, 1i)) << (max(vec3<u32>(arg_0.x, 63490u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(arg_0.x, 83947u, arg_0.x))) % vec3<u32>(32u)));
    var var_2 = Struct_5(Struct_2(var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.b.x, arg_1.b.x, 277f, arg_1.b.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.b.x, 666f, -1178f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(462f, -294f, -682f, 1172f))) - _wgslsmith_div_vec4_f32(vec4<f32>(814f, -253f, arg_1.b.x, arg_1.b.x), vec4<f32>(1946f, arg_1.b.x, -329f, -283f))))), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(~26667u, 15u)]), global1[_wgslsmith_index_u32(firstTrailingBit(arg_0.x), 19u)]));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-501f + var_2.b.x) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-579f, 826f)), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)))))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(44318u, 4294967295u, 4294967295u), ~vec3<u32>(5340u, u_input.b.x, u_input.a.x)), _wgslsmith_div_vec3_u32(u_input.b, firstTrailingBit(vec3<u32>(99949u, u_input.b.x, 63016u)))), Struct_3(Struct_2(func_1(vec3<f32>(-158f, 1000f, 505f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, 1506f))), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, u_input.b.x), 15u)]), Struct_4(~(vec3<i32>(u_input.c, u_input.c, u_input.c) | vec3<i32>(-7423i, u_input.c, -2147483647i)))));
    global0 = array<bool, 15>();
    global1 = array<bool, 19>();
    var var_1 = -1166f;
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(-(i32(-1i) * -217i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.c, min(-2147483647i, u_input.c), firstLeadingBit(-2147483647i)), i32(-1i) * -var_0.a)), 1f, _wgslsmith_sub_vec3_i32(~vec3<i32>(-var_0.a, -2147483647i, _wgslsmith_sub_i32(u_input.c, u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_0.a, -1i), _wgslsmith_div_i32(u_input.c, -26529i), -2147483647i | var_0.a), vec3<i32>(~(-8765i), 0i, countOneBits(40602i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(215f, -1862f, -783f), vec3<f32>(573f, 355f, -1185f), global1[_wgslsmith_index_u32(4294967295u, 19u)]))))) + vec3<f32>(_wgslsmith_f_op_f32(min(-1549f, -1240f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(676f - 602f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(985f))))));
}

