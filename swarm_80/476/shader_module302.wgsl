struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_2, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = all(select(select(vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, true))), vec4<bool>(any(vec3<bool>(true, true, false)), true, all(vec3<bool>(true, false, true)), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)))), !vec4<bool>(true, select(false, true, false), false, true), !any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true))));
    global0 = true;
    let var_1 = -795f;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-573f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -794f), -296f)))));
    global0 = var_0;
    return -301f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: vec2<f32>) -> i32 {
    let var_0 = Struct_2(all(!vec4<bool>(all(vec2<bool>(arg_0.a, arg_0.d)), any(vec2<bool>(true, arg_0.a)), select(arg_0.a, arg_0.d, arg_0.d), any(vec3<bool>(arg_0.a, arg_0.d, false)))), global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(~50755u, 15u)], true);
    global2 = array<Struct_2, 10>();
    let var_1 = Struct_1(~vec2<u32>(arg_0.b.b.x, arg_1.a.x), firstTrailingBit(~u_input.c.zx >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), var_0.c.b) % vec2<u32>(32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.c))), 394f), abs(arg_1.d));
    var var_2 = Struct_2(177i >= _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.e, -2147483647i, 13626i), firstLeadingBit(vec4<i32>(-50675i, 5060i, 1i, u_input.e))), -vec4<i32>(-2147483647i, -6i, u_input.e, 1i) | max(vec4<i32>(2147483647i, u_input.a, -43545i, u_input.e), vec4<i32>(-2147483647i, -8048i, u_input.a, 8917i))), Struct_1(~u_input.c.yy, max(var_0.c.b, u_input.c.xy), arg_3.x, ~(~var_0.b.b.x) ^ _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.c.b.x, var_0.b.d, u_input.b.x, var_0.b.a.x), vec4<u32>(0u, 1u, 5483u, 4294967295u), vec4<bool>(var_0.d, arg_0.d, arg_0.a, false)), vec4<u32>(var_0.c.a.x, arg_0.c.b.x, 306u, 4294967295u) ^ vec4<u32>(23701u, 1u, 1u, var_1.a.x))), Struct_1(~vec2<u32>(~arg_0.b.a.x, 26551u), var_0.c.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(-arg_1.c))), 1482f), 0u), true);
    var_2 = Struct_2(any(select(select(!vec3<bool>(var_2.d, true, true), vec3<bool>(var_0.d, false, true), vec3<bool>(var_0.d, false, false)), select(!vec3<bool>(true, var_0.a, true), vec3<bool>(var_2.a, var_0.a, true), all(vec2<bool>(arg_0.d, true))), !var_0.d)), var_2.b, Struct_1(arg_1.b, reverseBits(_wgslsmith_add_vec2_u32(arg_0.b.a, var_0.c.a) | arg_1.a), -891f, u_input.c.x), abs(reverseBits(_wgslsmith_mult_i32(u_input.e, u_input.a))) >= ~(-20892i));
    return u_input.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(~2437u, _wgslsmith_div_u32(arg_2.d, 1u));
    let var_1 = vec3<i32>(func_4(arg_1, arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1345f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.c, arg_3), vec2<f32>(arg_1.b.c, 561f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(322f, arg_3))), vec2<bool>(true, true))) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_3, arg_1.b.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, arg_3) * vec2<f32>(741f, -1252f))))), 46089i, ~u_input.a);
    var var_2 = firstTrailingBit(vec2<i32>(var_1.x, _wgslsmith_mult_i32(arg_0.x, u_input.a))) & (var_1.zx << (arg_1.c.a % vec2<u32>(32u)));
    let var_3 = Struct_1(_wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(arg_2.b, ~vec2<u32>(1u, arg_1.b.a.x), u_input.c.yy ^ arg_2.a), abs(u_input.c.zz)), ~(min(arg_1.b.a, min(vec2<u32>(var_0, var_0), u_input.b)) & vec2<u32>(1u, arg_2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-457f * arg_1.b.c))) * 635f)), arg_2.a.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(420f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.c * arg_1.c.c) - _wgslsmith_f_op_f32(round(arg_3))) + 619f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.c))), 233f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))));
    return Struct_1(vec2<u32>(~countOneBits(71442u), arg_1.c.a.x), ~arg_1.b.a & vec2<u32>(~u_input.b.x | firstLeadingBit(var_3.b.x), select(_wgslsmith_sub_u32(arg_1.b.a.x, 44594u), arg_1.b.b.x, arg_2.d > var_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-949f, var_3.c, arg_1.d)), _wgslsmith_f_op_f32(var_3.c - -1000f))), 1004f)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a.x, arg_1.c.a.x, arg_1.b.a.x) >> (~u_input.c % vec3<u32>(32u)), vec3<u32>(1u, u_input.d, arg_1.c.a.x)), select(vec3<u32>(0u, 95902u, 1u), ~countOneBits(u_input.c), vec3<bool>(all(vec3<bool>(true, true, false)), 300f >= arg_2.c, false))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> bool {
    var var_0 = Struct_2(all(select(vec4<bool>(false, arg_2.d, arg_2.a, arg_2.d), select(vec4<bool>(arg_2.d, arg_2.a, arg_2.a, arg_2.a), vec4<bool>(true, false, true, arg_2.d), arg_2.a), arg_2.a)) == true, Struct_1(vec2<u32>(~(1u << (0u % 32u)), u_input.d), arg_2.b.b, arg_2.b.c, 7194u), arg_2.b, !any(!select(vec2<bool>(arg_2.a, true), vec2<bool>(arg_2.d, arg_2.a), true)));
    global0 = true;
    var var_1 = !(!arg_2.a);
    var var_2 = ~(4294967295u | _wgslsmith_mod_u32(arg_3, abs(23946u)));
    var var_3 = ~_wgslsmith_sub_u32(27574u, 1u);
    return _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_2.b.d, _wgslsmith_mult_u32(4294967295u, arg_3))), max(~vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(55055u, 39777u), vec2<u32>(52695u, 0u), var_0.b.b) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.d, 4294967295u), u_input.c.yx) % vec2<u32>(32u)))) > _wgslsmith_mod_u32(u_input.c.x, 55007u >> (arg_1.d % 32u));
}

fn func_6(arg_0: bool) -> f32 {
    global2 = array<Struct_2, 10>();
    global1 = array<Struct_1, 15>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-274f, _wgslsmith_f_op_f32(min(-772f, 717f)), _wgslsmith_div_f32(-874f, -648f), -1000f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1271f, -635f, -970f, -759f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-303f, -717f, 104f, -579f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1179f, -1217f, 1607f, -430f) + vec4<f32>(-874f, -754f, -1430f, -1000f)) * vec4<f32>(1215f, -509f, -861f, -1258f))))));
    global0 = false;
    var var_1 = Struct_2(u_input.e != 32886i, func_2(vec4<i32>(u_input.a, abs(0i), u_input.e, ~2147483647i) >> (firstLeadingBit(abs(vec4<u32>(u_input.d, u_input.d, u_input.c.x, 4294967295u))) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(20838u, 0u)), u_input.b), max(firstLeadingBit(u_input.c.zx), vec2<u32>(u_input.c.x, 4294967295u))), 10u)], Struct_1(~select(vec2<u32>(35384u, u_input.b.x), u_input.b, vec2<bool>(arg_0, false)), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1449f), u_input.b.x), -981f), Struct_1(vec2<u32>(_wgslsmith_add_u32(66427u, 1u) | func_2(vec4<i32>(u_input.a, u_input.e, u_input.a, u_input.e), Struct_2(true, Struct_1(vec2<u32>(10758u, 4294967295u), vec2<u32>(u_input.d, 0u), 532f, 0u), global1[_wgslsmith_index_u32(u_input.c.x, 15u)], false), Struct_1(vec2<u32>(u_input.c.x, u_input.b.x), u_input.c.zz, var_0.x, 1u), -782f).d, ~_wgslsmith_add_u32(u_input.d, u_input.c.x)), u_input.b, 156f, ~6968u), !(1609f == _wgslsmith_div_f32(var_0.x, var_0.x)) || false);
    return var_0.x;
}

fn func_1() -> vec3<i32> {
    let var_0 = Struct_2(true, Struct_1(_wgslsmith_add_vec2_u32((vec2<u32>(u_input.b.x, u_input.b.x) & vec2<u32>(u_input.d, u_input.d)) | select(u_input.c.yx, vec2<u32>(38778u, u_input.c.x), vec2<bool>(false, false)), _wgslsmith_clamp_vec2_u32(u_input.b | u_input.c.zy, _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(1u, 20629u)), vec2<u32>(u_input.d, u_input.d))), vec2<u32>(~1u, max(0u, ~u_input.c.x)), _wgslsmith_f_op_f32(func_6(func_5(min(vec3<i32>(-28391i, -15730i, -27534i), vec3<i32>(u_input.e, u_input.a, -1i)), func_2(vec4<i32>(31630i, -1i, 46772i, -1i), global2[_wgslsmith_index_u32(u_input.b.x, 10u)], Struct_1(u_input.b, vec2<u32>(0u, 4294967295u), -335f, u_input.d), -561f), global2[_wgslsmith_index_u32(~473u, 10u)], 4294967295u))), u_input.c.x), func_2(reverseBits(~vec4<i32>(-2147483647i, 2147483647i, -14179i, u_input.a) << (vec4<u32>(4294967295u, u_input.d, 18974u, u_input.d) % vec4<u32>(32u))), Struct_2(all(vec2<bool>(true, false)), Struct_1(vec2<u32>(1u, 1u), func_2(vec4<i32>(u_input.e, 0i, -1i, u_input.a), Struct_2(true, Struct_1(u_input.c.zx, u_input.b, 1289f, 4294967295u), Struct_1(u_input.c.yy, vec2<u32>(80816u, 4294967295u), -159f, u_input.c.x), false), global1[_wgslsmith_index_u32(9151u, 15u)], 182f).b, -508f, ~u_input.b.x), Struct_1(vec2<u32>(u_input.d, u_input.b.x), vec2<u32>(u_input.d, u_input.b.x), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_u32(u_input.b.x, 0u)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false))), Struct_1(u_input.c.yx, ~u_input.c.zy, -1165f, 0u), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(653f, _wgslsmith_f_op_f32(select(303f, -329f, true)))))), true);
    global1 = array<Struct_1, 15>();
    var var_1 = 26283u;
    global0 = all(select(!select(select(vec3<bool>(var_0.a, var_0.d, var_0.d), vec3<bool>(true, var_0.d, true), false), !vec3<bool>(false, false, var_0.d), vec3<bool>(var_0.d, true, true)), !select(select(vec3<bool>(false, false, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a), vec3<bool>(false, false, true), all(vec2<bool>(var_0.d, true))), !(!vec3<bool>(true, false, var_0.a))));
    let var_2 = ~u_input.a;
    return ~abs(min(min(vec3<i32>(var_2, -1i, 37967i), -vec3<i32>(2147483647i, var_2, var_2)), vec3<i32>(-2147483647i, firstLeadingBit(22740i), -32406i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, true));
    global2 = array<Struct_2, 10>();
    var var_1 = 4912u;
    let var_2 = _wgslsmith_div_vec3_i32(countOneBits(func_1()), countOneBits(reverseBits(select(vec3<i32>(u_input.e, -1i, -36410i), ~vec3<i32>(0i, u_input.a, 1i), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))));
    var var_3 = Struct_1(select(abs(~u_input.b), ~u_input.b >> (min(vec2<u32>(u_input.c.x, u_input.b.x), vec2<u32>(u_input.c.x, 4294967295u)) % vec2<u32>(32u)), true), ~vec2<u32>(firstTrailingBit(u_input.b.x) | 1u, u_input.d & firstTrailingBit(14413u)), _wgslsmith_f_op_f32(1113f + _wgslsmith_f_op_f32(sign(-1360f))), ~_wgslsmith_sub_u32(min(reverseBits(u_input.c.x), ~u_input.c.x), ~(~47050u)));
    var_0 = true;
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(select(0u, var_4, true), max(49808u, var_3.a.x)), -func_1().x ^ 0i, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_4, 8584u), vec2<u32>(1u, var_3.d) >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(firstTrailingBit(var_3.b), ~var_3.a)) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.d), func_2(vec4<i32>(u_input.a, -34510i, 100293i, -34424i), Struct_2(true, Struct_1(u_input.c.zx, vec2<u32>(var_4, u_input.d), -1705f, u_input.c.x), global1[_wgslsmith_index_u32(1u, 15u)], false), func_2(vec4<i32>(2147483647i, 5997i, u_input.e, u_input.a), Struct_2(false, global1[_wgslsmith_index_u32(var_3.d, 15u)], global1[_wgslsmith_index_u32(65664u, 15u)], true), global1[_wgslsmith_index_u32(var_4, 15u)], 1000f), var_3.c).b.x) % 32u), 0i);
}

