struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(7574u, 13772u, 4294967295u, 4294967295u, 4294967295u, 1u, 16568u, 4672u, 30160u, 110109u, 1u, 1u, 17888u, 0u, 35767u, 34908u, 1u, 4294967295u, 17971u, 4294967295u, 4294967295u, 0u, 1u, 5898u, 91791u, 28430u, 12487u, 9266u, 4294967295u, 1u, 4294967295u, 4294967295u);

var<private> global1: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_i32(firstLeadingBit(firstLeadingBit(~(global1.b | 5097i))), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b, 1i, global1.b), u_input.a.wxw)) >> (~(vec3<u32>(u_input.c.x, u_input.b.x, 4294967295u) >> (u_input.c.yww % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(u_input.a.www, _wgslsmith_mod_vec3_i32(vec3<i32>(28329i, 2147483647i, global1.b), -vec3<i32>(global1.b, -12483i, global1.b)), ~u_input.a.wwx)));
    global0 = array<u32, 32>();
    let var_1 = ~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, u_input.b.x));
    var var_2 = Struct_1(global1.d.a);
    var var_3 = 620f;
    return -10835i;
}

fn func_2() -> vec3<f32> {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    var var_0 = (i32(-1i) * -1i) >> (1u % 32u);
    global1 = Struct_2(Struct_1(global1.a.a), min(func_3(), max(_wgslsmith_dot_vec3_i32(~u_input.a.yzy, abs(u_input.a.xyy)), _wgslsmith_mod_i32(2147483647i, ~1i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1399f), -1215f, _wgslsmith_f_op_f32(sign(449f))) - global1.c))), global1.a);
    global0 = array<u32, 32>();
    return vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-257f - global1.c.x) - global1.c.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.c.x))))), _wgslsmith_f_op_f32(round(630f)))), global1.c.x, global1.c.x);
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = Struct_3(vec2<i32>(-1i) * -(reverseBits(vec2<i32>(global1.b, arg_0.b)) ^ u_input.a.xx), arg_0, arg_0, Struct_1(select(vec3<bool>(global1.d.a.x && false, true, false & global1.d.a.x), vec3<bool>(false, arg_0.b <= arg_0.b, global1.a.a.x), false)), u_input.c.x);
    var var_1 = Struct_3(abs(~(~min(u_input.a.wx, vec2<i32>(var_0.c.b, -715i)))), Struct_2(Struct_1(!vec3<bool>(arg_0.a.a.x, global1.d.a.x, var_0.d.a.x)), 0i, arg_0.c, Struct_1(vec3<bool>(var_0.e < global0[_wgslsmith_index_u32(var_0.e, 32u)], true, true))), Struct_2(Struct_1(global1.d.a), -1i | min(func_3(), 26084i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.c.x)), var_0.c.c.x, global1.c.x), arg_0.c), Struct_1(vec3<bool>(!arg_0.d.a.x, all(vec2<bool>(global1.a.a.x, true)), true))), global1.d, 22321u);
    var var_2 = _wgslsmith_mod_vec4_u32(~(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_1.e, u_input.c.x, 68158u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], var_0.e, u_input.c.x, var_0.e), vec4<u32>(var_1.e, 4294967295u, var_0.e, 1u)), vec4<u32>(7741u, 44659u, 1u, 2601u))), u_input.c);
    let var_3 = 1i;
    let var_4 = 669f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2566f + 742f))));
    return vec3<bool>(false, any(select(vec4<bool>(var_4, var_4, !global1.a.a.x, !var_4), !vec4<bool>(true, true, var_4, var_4), all(vec3<bool>(false, var_4, true)))), var_0.b.d.a.x);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 32>();
    global1 = Struct_2(Struct_1(arg_3.yzx), _wgslsmith_dot_vec3_i32(vec3<i32>(select(global1.b, -2147483647i, arg_2.x), u_input.a.x, u_input.a.x) >> (u_input.c.yxz % vec3<u32>(32u)), min(-vec3<i32>(-2147483647i, 0i, -2147483647i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(1994u, 2802u, 42135u), vec3<u32>(832u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11485u, 32u)], 32u)], 11456u)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_div_i32(1i, u_input.a.x), 2147483647i, -1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c)), Struct_1(arg_3.zyz));
    let var_0 = _wgslsmith_sub_i32(46345i, u_input.a.x ^ 0i);
    let var_1 = Struct_1(func_4(Struct_2(global1.a, u_input.a.x, _wgslsmith_f_op_vec3_f32(func_2()), global1.a)));
    global0 = array<u32, 32>();
    return var_1;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_4 {
    global0 = array<u32, 32>();
    var var_0 = vec3<f32>(903f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.c.x)))) + _wgslsmith_div_f32(global1.c.x, global1.c.x))), global1.c.x);
    var var_1 = firstTrailingBit(-min(-(u_input.a.yy | vec2<i32>(-1i, global1.b)), vec2<i32>(u_input.a.x, -26385i)));
    global0 = array<u32, 32>();
    var var_2 = !vec2<bool>(!global1.d.a.x, _wgslsmith_f_op_f32(-global1.c.x) >= _wgslsmith_f_op_f32(var_0.x - -201f));
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1675f, 850f, global1.d.a.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1040f))))), i32(-1i) * -firstLeadingBit(~20305i), _wgslsmith_mod_vec3_u32(min(vec3<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 32u)], 4294967295u), u_input.c.zwz) | countOneBits(u_input.c.xyw), _wgslsmith_mod_vec3_u32(u_input.c.xyy, u_input.c.yyy) ^ ~vec3<u32>(73955u, u_input.b.x, u_input.b.x)) & reverseBits(vec3<u32>(_wgslsmith_add_u32(9389u, 58242u), ~u_input.b.x, _wgslsmith_div_u32(33763u, global0[_wgslsmith_index_u32(4294967295u, 32u)]))), Struct_2(func_1(~u_input.c.x, 17058u, func_4(arg_0), !vec4<bool>(global1.d.a.x, true, global1.a.a.x, global1.a.a.x)), _wgslsmith_mod_i32(~firstTrailingBit(var_1.x), -max(0i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 225f, 425f))), func_1(global0[_wgslsmith_index_u32(~u_input.b.x, 32u)], global0[_wgslsmith_index_u32(~(1u | u_input.b.x), 32u)], vec3<bool>(any(arg_0.a.a.xz), true, var_2.x), vec4<bool>(arg_1.x < global1.c.x, var_2.x, !arg_0.a.a.x, false))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.c.x, -1875f, _wgslsmith_f_op_f32(trunc(global1.c.x)), 1346f)))));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.yy))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(169f, 1000f)))), global1.b, max(vec3<u32>(~_wgslsmith_sub_u32(4294967295u, 45530u), 4294967295u, min(0u, ~arg_1.e)), ~_wgslsmith_div_vec3_u32(arg_0.c, arg_0.c) & (u_input.c.ywx & (u_input.c.xxz | u_input.c.xwy))), arg_1.b);
    global0 = array<u32, 32>();
    var var_2 = u_input.b;
    var var_3 = !func_1(firstLeadingBit(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c)), ~1u, !select(select(vec3<bool>(false, false, false), arg_0.d.a.a, vec3<bool>(true, var_1.d.a.a.x, var_1.d.d.a.x)), !arg_1.b.d.a, arg_1.d.a.x), select(vec4<bool>(false, func_4(Struct_2(arg_1.b.a, 1i, arg_0.d.c, var_1.d.d)).x, global1.a.a.x, any(vec4<bool>(true, true, arg_3, false))), select(select(vec4<bool>(false, arg_0.d.d.a.x, var_1.d.a.a.x, false), vec4<bool>(arg_0.d.a.a.x, arg_3, arg_1.c.d.a.x, var_1.d.a.a.x), global1.d.a.x), !vec4<bool>(arg_3, arg_0.d.a.a.x, true, true), arg_2 != var_1.c.x), !(!vec4<bool>(arg_1.d.a.x, true, arg_1.d.a.x, false)))).a.zx;
    return Struct_1(vec3<bool>(!any(var_1.d.d.a), (var_1.d.d.a.x && true) & true, arg_3));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 32>();
    let var_0 = ~max(~(-2147483647i), 7805i);
    let var_1 = global1.d;
    let var_2 = _wgslsmith_mod_u32(max(countOneBits(u_input.b.x << (global0[_wgslsmith_index_u32(35591u, 32u)] % 32u)) ^ 0u, (global0[_wgslsmith_index_u32(4294967295u, 32u)] << (~global0[_wgslsmith_index_u32(23967u, 32u)] % 32u)) & ~_wgslsmith_add_u32(u_input.b.x, 41682u)), ~(~min(48414u ^ global0[_wgslsmith_index_u32(28748u, 32u)], ~u_input.b.x)));
    var var_3 = Struct_1(!vec3<bool>(true, true, !any(global1.a.a.yx)));
    global1 = Struct_2(func_6(func_5(Struct_2(func_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], 32u)], 0u, vec3<bool>(true, var_1.a.x, var_1.a.x), vec4<bool>(global1.a.a.x, global1.d.a.x, true, global1.a.a.x)), 1i, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, global1.c.x, global1.c.x), global1.c)), Struct_1(vec3<bool>(false, true, false))), global1.c.zx), Struct_3(vec2<i32>(3461i, 13108i) | vec2<i32>(-2147483647i, var_0), func_5(func_5(Struct_2(Struct_1(var_3.a), global1.b, global1.c, Struct_1(vec3<bool>(true, false, true))), global1.c.zx).d, vec2<f32>(global1.c.x, -439f)).d, Struct_2(func_1(41171u, u_input.b.x, var_1.a, vec4<bool>(true, true, true, var_1.a.x)), 1i, _wgslsmith_f_op_vec3_f32(floor(global1.c)), Struct_1(vec3<bool>(true, var_3.a.x, true))), global1.d, _wgslsmith_add_u32(reverseBits(93090u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], 32u)])), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67990u, 32u)], 32u)], var_2, var_2), countOneBits(1u)), u_input.b.x, abs(abs(4294967295u))), var_3.a.x | var_3.a.x), ~func_5(func_5(Struct_2(global1.d, 2147483647i, vec3<f32>(global1.c.x, -1061f, 975f), Struct_1(global1.d.a)), _wgslsmith_f_op_vec2_f32(-global1.c.zz)).d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.c.yy))).d.b, _wgslsmith_f_op_vec3_f32(global1.c * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.c * global1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.c.x, global1.c.x)), vec3<bool>(var_1.a.x, var_1.a.x, global1.a.a.x))))), Struct_1(!global1.d.a));
    var var_4 = func_5(Struct_2(global1.a, 1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.c)))), func_5(func_5(func_5(Struct_2(Struct_1(vec3<bool>(global1.a.a.x, var_3.a.x, global1.d.a.x)), 0i, vec3<f32>(global1.c.x, -344f, global1.c.x), Struct_1(vec3<bool>(false, false, var_3.a.x))), vec2<f32>(205f, 609f)).d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1036f, -1384f))).d, global1.c.xz).d.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-157f, -1000f) * global1.c.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.x, global1.c.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global1.c.xz))))))).d;
    let var_5 = ~firstTrailingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-246f)))), ~select(_wgslsmith_add_i32(var_4.b, -23909i), (i32(-1i) * -2147483647i) ^ firstTrailingBit(57142i), global1.d.a.x), ~(~0u));
}

