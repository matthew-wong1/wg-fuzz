struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_1 = Struct_1(1186f);

var<private> global2: Struct_5;

var<private> global3: array<i32, 18> = array<i32, 18>(18244i, i32(-2147483648), i32(-2147483648), -7162i, 2147483647i, 1i, 14358i, 0i, 2147483647i, i32(-2147483648), -17851i, 80608i, -12198i, 28036i, 0i, 2147483647i, 2147483647i, -1i);

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 24893u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<u32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(trunc(global1.a)));
    let var_0 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_2, arg_2), 18u)], ~global3[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_mult_i32(abs(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, global2.d), 18u)]), _wgslsmith_mod_i32(arg_1, i32(-1i) * -35746i)), arg_1), global3[_wgslsmith_index_u32(global4.x, 18u)] | ~_wgslsmith_div_i32(u_input.a, ~arg_3.a.e.x), min(_wgslsmith_mult_i32(arg_3.a.e.x, ~arg_1), (_wgslsmith_mod_i32(13065i, 9137i) & _wgslsmith_mod_i32(arg_1, -1i)) >> (select(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global4.x, global0.d, global4.x), vec4<u32>(0u, global0.d, global2.a.x, 4294967295u)), global2.d, any(vec2<bool>(true, arg_3.a.c))) % 32u)), u_input.a);
    global1 = global2.e;
    global0 = Struct_5(global0.a, global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(483f, _wgslsmith_f_op_f32(min(1357f, -299f)), false)), global1.a, arg_3.a.b.a)), 31279u, Struct_1(-1627f));
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.c);
    return global0.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(60912i, 0i), countOneBits(~select(vec2<i32>(-59526i, 2147483647i), vec2<i32>(-3865i, -2147483647i), vec2<bool>(false, true)))), vec2<i32>(1i, max(u_input.a, _wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(-1i, 37641i)))));
    var var_1 = true;
    var var_2 = -19763i;
    let var_3 = select(!vec4<bool>(true, true, !select(false, false, true), !any(vec2<bool>(true, true))), vec4<bool>(!(!(global1.a >= arg_1.x)), true, any(vec4<bool>(true, true, true, all(vec2<bool>(true, false)))), (true == (global0.a.x >= 0u)) && all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true))), vec4<bool>(true || ((global0.d == global4.x) || true), all(vec3<bool>(true, true, true)), !(!all(vec2<bool>(false, false))), !(-1i <= max(-29890i, var_0.x))));
    var_0 = vec2<i32>(-2147483647i, -1i);
    return var_3.x;
}

fn func_2(arg_0: Struct_4) -> Struct_5 {
    let var_0 = Struct_3(Struct_2(func_4(func_3(_wgslsmith_f_op_f32(trunc(global0.b)), -u_input.a, ~vec3<u32>(1u, 39432u, 0u), Struct_3(Struct_2(false, Struct_1(1567f), true, global2.e, vec4<i32>(-2147483647i, u_input.a, -31063i, global3[_wgslsmith_index_u32(global0.d, 18u)])))), vec2<f32>(_wgslsmith_f_op_f32(sign(global0.b)), global0.c.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(908f, global2.c.x))))), global2.c.xx), Struct_1(484f), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))), Struct_1(-1088f), abs(vec4<i32>(~(-2147483647i), -14068i, i32(-1i) * -1i, global3[_wgslsmith_index_u32(global4.x, 18u)]))));
    let var_1 = min(45090i, global3[_wgslsmith_index_u32(countOneBits(global2.d), 18u)]);
    let var_2 = 1614f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f * 1000f));
    let var_4 = Struct_5(vec3<u32>(func_3(208f, var_1, global0.a, Struct_3(Struct_2(true, Struct_1(1811f), false, var_0.a.d, vec4<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(63853u, 18u)], global3[_wgslsmith_index_u32(1u, 18u)])))).x, global4.x, global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, 1959f, arg_0.a.a) + global2.c)))) - vec3<f32>(_wgslsmith_f_op_f32(min(global0.b, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - -769f) + var_0.a.b.a), global0.b)), _wgslsmith_clamp_u32(func_3(313f, 56278i, global0.a, Struct_3(var_0.a)).x, global0.d | 1u, ~firstLeadingBit(global0.a.x)), Struct_1(global1.a));
    return var_4;
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec3<bool>) -> Struct_3 {
    global0 = Struct_5(_wgslsmith_mult_vec3_u32(arg_2.a, vec3<u32>(func_2(Struct_4(Struct_1(-179f))).d, _wgslsmith_div_u32(func_2(Struct_4(arg_1.a.d)).a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 19360u, global4.x), vec4<u32>(global0.d, 4294967295u, 30779u, 4294967295u))), max(~43877u, global2.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1340f - 739f), -1194f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1754f + -889f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -301f, global0.e.a))))))), arg_2.d, Struct_1(1189f));
    var var_0 = -10806i << (global4.x % 32u);
    let var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(~abs(0u), _wgslsmith_dot_vec3_u32(global2.a >> (vec3<u32>(4294967295u, 12192u, 10311u) % vec3<u32>(32u)), vec3<u32>(global4.x, arg_2.d, arg_2.d)), _wgslsmith_sub_u32(arg_2.d, ~arg_2.a.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.a.x, 27749u), global2.a.zy & arg_2.a.xy)), _wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 4294967295u, 8590u, arg_2.d)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9213u, 4294967295u, global0.d), vec4<u32>(31389u, global0.a.x, 3557u, 69245u)), firstLeadingBit(vec4<u32>(global2.a.x, 1u, 0u, global0.d)), true)));
    global1 = Struct_1(_wgslsmith_f_op_f32(1541f * _wgslsmith_f_op_f32(sign(arg_2.c.x))));
    let var_2 = arg_1.a.b;
    return Struct_3(Struct_2(!arg_1.a.a | !(global2.b >= global2.e.a), global2.e, arg_3.x, func_2(Struct_4(Struct_1(-2504f))).e, ~_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(arg_1.a.e, vec4<i32>(17209i, -22806i, arg_1.a.e.x, global3[_wgslsmith_index_u32(14974u, 18u)])), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 18u)], 21104i, 1i), vec4<i32>(2147483647i, 3026i, 14628i, u_input.a)))));
}

fn func_6(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = min(-global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, 0u), 18u)], reverseBits(1i));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.b.a, 1098f, -767f, 749f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(601f, global2.e.a, 1000f, 352f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(797f, -678f, 307f, 394f), vec4<f32>(global0.b, 965f, -606f, global1.a)) - vec4<f32>(-1844f, arg_1.a.b.a, global2.e.a, 229f))))) + vec4<f32>(_wgslsmith_f_op_f32(select(global1.a, 249f, select(true, !arg_1.a.a, true))), 323f, arg_2.b.a, 464f));
    var var_2 = Struct_4(arg_2.b);
    global3 = array<i32, 18>();
    var var_3 = max(vec2<u32>(_wgslsmith_mult_u32(arg_3 ^ 0u, global2.d), 0u) ^ global0.a.zx, reverseBits(global0.a.xz));
    return arg_2;
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_3(func_6(true, func_5(_wgslsmith_f_op_f32(max(-1490f, _wgslsmith_f_op_f32(max(521f, global2.b)))), Struct_3(Struct_2(false, global2.e, false, global0.e, vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(57566u, 18u)], -1i, u_input.a))), func_2(Struct_4(Struct_1(global0.b))), vec3<bool>(true, global0.e.a >= -1305f, all(vec2<bool>(true, true)))), Struct_2(true, Struct_1(687f), !any(vec3<bool>(true, true, false)), global2.e, _wgslsmith_mod_vec4_i32(-vec4<i32>(2108i, u_input.a, u_input.a, 7926i), vec4<i32>(global3[_wgslsmith_index_u32(global0.a.x, 18u)], -2290i, 0i, 1i))), min(reverseBits(global2.d), 54358u)));
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.e.a))), _wgslsmith_f_op_vec3_f32(-global0.c), 8545u, global2.e);
    var var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, global1.a, -1622f, 993f) - vec4<f32>(global2.c.x, var_0.a.d.a, var_0.a.b.a, -1341f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.a, 431f, -162f, global2.b) + vec4<f32>(var_0.a.b.a, 335f, global2.b, -1351f)))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(790f, _wgslsmith_f_op_f32(-global2.e.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1025f, var_0.a.b.a)))), 656f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.e.a, global2.b, var_0.a.d.a, global1.a))), vec4<f32>(var_0.a.d.a, global1.a, 1000f, var_0.a.b.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, global0.e.a, -690f, -385f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, -559f, -499f, 1000f))), true)))));
    global2 = Struct_5(global2.a, 235f, global2.c, 1u, func_2(Struct_4(Struct_1(490f))).e);
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_5(~min(_wgslsmith_clamp_vec3_u32(global2.a, global2.a, global2.a), vec3<u32>(22799u & global0.a.x, _wgslsmith_add_u32(global0.a.x, global4.x), ~65783u)), -228f, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a, global0.b, global0.c.x), vec3<f32>(931f, 525f, 876f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_vec3_f32(func_1()))), true)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(global4.x, ~global4.x, 16802u), 45145u), global0.e);
    let var_0 = _wgslsmith_f_op_f32(854f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x) + func_2(Struct_4(Struct_1(-311f))).e.a));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(Struct_4(global2.e)).c.xz * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 2305f) + vec2<f32>(1245f, 1133f)))));
    global1 = global2.e;
    global3 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(func_6(any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), func_5(_wgslsmith_f_op_f32(-var_0), Struct_3(Struct_2(true, Struct_1(457f), true, global0.e, vec4<i32>(global3[_wgslsmith_index_u32(global4.x, 18u)], 2147483647i, 9597i, 0i))), func_2(Struct_4(Struct_1(global1.a))), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)), func_6(true, func_5(global2.b, Struct_3(Struct_2(true, global0.e, true, Struct_1(var_1.x), vec4<i32>(-1i, -27230i, 2147483647i, global3[_wgslsmith_index_u32(global4.x, 18u)]))), Struct_5(global2.a, var_0, vec3<f32>(1407f, 298f, global0.c.x), global2.a.x, global0.e), vec3<bool>(false, true, true)), Struct_2(false, global0.e, true, Struct_1(global2.e.a), vec4<i32>(0i, u_input.a, global3[_wgslsmith_index_u32(69922u, 18u)], global3[_wgslsmith_index_u32(global4.x, 18u)])), global4.x << (global4.x % 32u)), abs(~29215u)).e.xyw >> (min(global2.a, vec3<u32>(global0.d, firstLeadingBit(21873u), abs(4294967295u))) % vec3<u32>(32u)), var_0);
}

