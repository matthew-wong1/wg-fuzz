struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(4294967295u, 4294967295u, 7321u, 0u);

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> f32 {
    global0 = array<u32, 4>();
    var var_0 = select(!(!vec4<bool>(true, true && global1.x, any(vec4<bool>(true, global1.x, global1.x, true)), true)), !(!select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, true, true), select(vec4<bool>(global1.x, true, true, true), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x))), global1.x);
    global1 = !var_0.wxw;
    let var_1 = arg_0.a;
    global1 = var_0.wzz;
    return var_1.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(-395f, abs(vec4<i32>(u_input.b, 1i, u_input.b, -2147483647i)), Struct_2(Struct_1(2147483647i, u_input.b, 14704u)))))), abs(-vec4<i32>(max(u_input.b, 68001i), -1i ^ u_input.b, -28015i, 11977i)), Struct_2(Struct_1(50186i, -2147483647i, u_input.a)));
    let var_1 = arg_0.x;
    var var_2 = ~firstLeadingBit(min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 75618u, global0[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], 4294967295u, 53487u), vec3<u32>(var_0.c.a.c, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)]), vec3<u32>(80256u, 1u, u_input.a)), ~vec3<u32>(1u, 11247u, 4294967295u)), vec3<u32>(4294967295u, abs(4294967295u), ~var_0.c.a.c)));
    global0 = array<u32, 4>();
    var var_3 = max(-2147483647i, var_0.c.a.a);
    return Struct_2(Struct_1(0i, -var_0.b.x | 1i, var_2.x));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(63956u), 1u), _wgslsmith_mult_u32(abs(firstTrailingBit(abs(0u))), _wgslsmith_mult_u32(~7384u, u_input.a)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-arg_2.a.a), vec4<i32>(30578i, 11047i, -9284i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_2.a.b, arg_2.a.b), ~vec4<i32>(arg_1.a.a, arg_2.a.c.a.a, arg_3, 2147483647i)), -6773i)), Struct_2(arg_2.a.c.a));
    var var_2 = arg_1.a;
    var var_3 = Struct_3(arg_2.a.a, select(countOneBits(-(~arg_2.a.b)), _wgslsmith_sub_vec4_i32(~countOneBits(vec4<i32>(-5629i, u_input.b, -15159i, -29387i)), arg_2.a.b), vec4<bool>(global1.x, true, any(select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, global1.x, false, true), global1.x)), min(global0[_wgslsmith_index_u32(30596u, 4u)], 0u) < ~50289u)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-353f, var_1.a, 1107f)))))));
    var_1 = arg_2.a;
    return _wgslsmith_mod_u32(var_2.c, firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.a), _wgslsmith_add_vec2_u32(~vec2<u32>(0u, 15613u), ~vec2<u32>(var_1.c.a.c, 26022u)))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> Struct_3 {
    var var_0 = ~vec4<u32>(func_4(19886u, func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1343f, 844f, 179f))), Struct_4(Struct_3(1458f, vec4<i32>(arg_0.a.b, arg_1, -2147483647i, arg_1), Struct_2(Struct_1(arg_0.a.a, 31214i, u_input.a)))), select(countOneBits(1i), u_input.b, true)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1779u, 1u, u_input.a, global0[_wgslsmith_index_u32(35253u, 4u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(3388u, 4u)], u_input.a, global0[_wgslsmith_index_u32(5690u, 4u)]), vec4<u32>(u_input.a, arg_0.a.c, u_input.a, 55349u)), firstLeadingBit(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(31137u, 4u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 4u)]))), select(~(global0[_wgslsmith_index_u32(31726u, 4u)] ^ global0[_wgslsmith_index_u32(u_input.a, 4u)]), global0[_wgslsmith_index_u32(~(4294967295u << (global0[_wgslsmith_index_u32(4294967295u, 4u)] % 32u)), 4u)], true), u_input.a >> (u_input.a % 32u));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1104f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)))), reverseBits(~(vec4<i32>(5592i, arg_1, arg_1, u_input.b) ^ vec4<i32>(arg_0.a.a, arg_0.a.a, 0i, arg_0.a.b)) & max(select(vec4<i32>(0i, -6707i, arg_1, 22682i), vec4<i32>(arg_1, 1i, -25689i, arg_0.a.b), vec4<bool>(true, global1.x, false, global1.x)), vec4<i32>(arg_1, 56762i, -2147483647i, u_input.b))), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, -854f, -365f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(703f, -141f, -1029f))))));
    global0 = array<u32, 4>();
    var_0 = ~max(select(vec4<u32>(global0[_wgslsmith_index_u32(var_1.c.a.c, 4u)], ~var_1.c.a.c, ~0u, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(18452u, 4u)], 1u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_0.a.c, 16313u, 31684u, global0[_wgslsmith_index_u32(51027u, 4u)]), vec4<u32>(var_0.x, var_0.x, 70387u, arg_0.a.c), false), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(18553u, 1u, 30730u, 39127u), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a))), _wgslsmith_f_op_f32(810f - var_1.a) >= _wgslsmith_f_op_f32(var_1.a - 1000f)), (countOneBits(vec4<u32>(u_input.a, 0u, arg_0.a.c, 28371u)) << (~vec4<u32>(var_0.x, arg_0.a.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]) % vec4<u32>(32u))) | ~(vec4<u32>(var_0.x, u_input.a, var_0.x, 0u) << (vec4<u32>(global0[_wgslsmith_index_u32(arg_0.a.c, 4u)], 30565u, 4294967295u, 0u) % vec4<u32>(32u))));
    global0 = array<u32, 4>();
    return Struct_3(587f, _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(20124i, arg_1), var_1.c.a.b, 41278i, func_2(vec3<f32>(var_1.a, -2100f, 206f)).a.b), var_1.b), Struct_2(Struct_1(var_1.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(33232i, arg_0.a.a, arg_0.a.a, arg_1), var_1.b ^ vec4<i32>(0i, arg_1, arg_1, arg_0.a.b)), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.x, 4294967295u, var_0.x), ~vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(10723u, 4u)], var_1.c.a.c, 125u)))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec4<bool>(true, all(select(global1.zz, vec2<bool>(global1.x && global1.x, true || global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)))), true, !any(vec3<bool>(false, false, all(vec2<bool>(global1.x, true)))));
    global1 = vec3<bool>(true, global1.x, true);
    var var_1 = ~(~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, arg_0.c.a.c), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 4u)]), vec2<u32>(1u, 3287u)), vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 0u))));
    global1 = var_0.zzx;
    global1 = select(var_0.wwy, vec3<bool>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1111f) <= _wgslsmith_f_op_f32(-769f - arg_0.a), true), var_0.zyx);
    return arg_0.c;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1550f);
    let var_1 = Struct_5(firstLeadingBit(_wgslsmith_mod_vec4_i32(-(vec4<i32>(1i, 32022i, -1i, arg_2.a.b) | vec4<i32>(arg_2.a.b, -15241i, 1i, 1i)), vec4<i32>(2147483647i, _wgslsmith_mult_i32(28373i, u_input.b), countOneBits(u_input.b), func_5(Struct_3(337f, vec4<i32>(53771i, 2147483647i, arg_2.a.a, 1i), Struct_2(Struct_1(-1i, arg_2.a.b, arg_1.x)))).a.b))), _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_0.a, arg_0.a, 61902i)), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.a.a, 3140i, arg_0.a), vec3<i32>(1i, -1i, -25055i))))), global1.x, ~vec3<i32>(u_input.b, u_input.b, 4617i));
    global1 = vec3<bool>(false, ~(~arg_0.c) < ~41521u, any(select(!select(vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(true, true, var_1.c), vec3<bool>(true, true, global1.x)), select(vec3<bool>(global1.x, global1.x, var_1.c), vec3<bool>(var_1.c, false, true), true), select(vec3<bool>(true, true, var_1.c), !vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, false, global1.x)))));
    let var_2 = Struct_2(arg_2.a);
    return ~(~(~u_input.a));
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.a - _wgslsmith_div_f32(-573f, 1000f)), _wgslsmith_div_f32(arg_2.a, 182f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + -877f) * _wgslsmith_f_op_f32(-410f + arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -472f))))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, arg_2.b.x, -1i, arg_2.b.x), vec4<i32>(arg_1.b, arg_1.a, 1i, -13617i), arg_2.b), firstTrailingBit(arg_2.b)) | (vec4<i32>(-1i) * -arg_2.b), arg_2.b), arg_1.b);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var_0 = vec4<f32>(1394f, arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.a * 676f), _wgslsmith_f_op_f32(trunc(arg_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-418f, -137f)) * 302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1231f, -498f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.xw)));
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(31073u, 4u)], _wgslsmith_sub_u32(_wgslsmith_add_u32(7066u, firstTrailingBit(78390u)), 0u)), ~_wgslsmith_mult_u32((u_input.a << (1u % 32u)) | u_input.a, max(~42533u, 21895u)), ~1u);
    let var_1 = func_7(_wgslsmith_sub_u32(33046u, var_0.x), Struct_1(803i, 50102i, func_6(Struct_1(u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b), 1u), vec2<u32>(global0[_wgslsmith_index_u32(~4294967295u, 4u)], global0[_wgslsmith_index_u32(27928u, 4u)]), func_5(func_1(Struct_2(Struct_1(-1065i, u_input.b, 1u)), u_input.b)))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(657f * 560f) * _wgslsmith_div_f32(1000f, -346f))), ~_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, u_input.b, 1i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), false), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.b, 277i, u_input.b), vec4<i32>(u_input.b, 45547i, -1i, 2147483647i))), Struct_2(func_1(Struct_2(Struct_1(2147483647i, u_input.b, 4294967295u)), -2147483647i).c.a)));
    global0 = array<u32, 4>();
    var var_2 = Struct_4(func_1(Struct_2(Struct_1(-2147483647i, 69624i, ~global0[_wgslsmith_index_u32(var_0.x, 4u)])), var_1.a.b));
    global0 = array<u32, 4>();
    global1 = vec3<bool>(true, global1.x, all(select(!vec4<bool>(false, global1.x, true, false), !vec4<bool>(true, true, global1.x, global1.x), true)) | true);
    var var_3 = _wgslsmith_sub_vec3_u32(select(var_0, firstTrailingBit(_wgslsmith_div_vec3_u32(~var_0, var_0)), !(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, true, false), vec3<bool>(true, global1.x, global1.x)))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, 233f, var_2.a.a, var_2.a.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.a, var_2.a.a, var_2.a.a, 2007f) + vec4<f32>(-2183f, var_2.a.a, -1778f, var_2.a.a))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(107f, var_2.a.a, var_2.a.a, 2028f))))), !(!vec4<bool>(false, global1.x, global1.x, false)))) + vec4<f32>(var_2.a.a, 1777f, var_2.a.a, var_2.a.a)), var_2.a.a, var_2.a.c.a.a);
}

