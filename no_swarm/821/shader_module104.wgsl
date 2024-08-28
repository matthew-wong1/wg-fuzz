struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
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

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, false, false));

var<private> global1: Struct_2 = Struct_2(293f, vec4<u32>(42018u, 31024u, 0u, 26895u), vec3<u32>(0u, 0u, 0u), true);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(428f - -1003f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - global1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(485f, global1.a), _wgslsmith_div_f32(global1.a, global1.a)))))));
    let var_1 = select(!(!arg_0.a.zx), select(!select(arg_0.a.zz, select(vec2<bool>(true, true), global0.a.xx, vec2<bool>(false, true)), !vec2<bool>(false, global0.a.x)), !(!select(arg_0.a.zx, vec2<bool>(false, false), false)), !arg_0.a.zx), select(vec2<bool>(false, global1.d), select(!vec2<bool>(false, global0.a.x), arg_0.a.xy, global0.a.x), !all(!vec4<bool>(arg_0.a.x, global0.a.x, global1.d, false))));
    global0 = Struct_3(select(vec3<bool>(4294967295u != ~u_input.a.x, global1.d, 5872u == u_input.a.x), !(!(!global0.a)), !all(select(vec4<bool>(false, global1.d, true, false), vec4<bool>(global1.d, global0.a.x, true, var_1.x), vec4<bool>(global1.d, global1.d, global1.d, false)))));
    let var_2 = arg_0;
    let var_3 = global1.b.wxw;
    return vec4<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), i32(-1i) * -18522i, 0i, i32(-1i) * -1i)), vec4<i32>(-u_input.b.x, abs(u_input.b.x), countOneBits(u_input.b.x), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(1i, u_input.b.x, 2147483647i))))), reverseBits(~(~2147483647i)), -2147483647i, -2147483647i);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(max(func_3(Struct_3(global0.a)), vec4<i32>(-arg_1.b, abs(-2147483647i), _wgslsmith_sub_i32(arg_1.b, arg_1.b), arg_1.b)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(-2147483647i, u_input.b.x, arg_1.b, arg_1.b)), vec4<i32>(~arg_1.b, min(-3510i, u_input.b.x), select(u_input.b.x, 790i, global1.d), u_input.b.x & 0i))), vec4<i32>(arg_1.b, _wgslsmith_mod_i32(i32(-1i) * -1i, func_3(Struct_3(vec3<bool>(global0.a.x, global1.d, global1.d))).x) & (firstTrailingBit(-42443i) & -arg_1.b), ~(reverseBits(arg_1.b) ^ -arg_1.b), ~(-2147483647i)));
    global1 = Struct_2(arg_1.a.x, vec4<u32>(max(~(~u_input.a.x), 12259u), global1.b.x, global1.b.x, _wgslsmith_mod_u32(~_wgslsmith_mult_u32(20453u, 0u), global1.b.x)), countOneBits(global1.b.yxy), global0.a.x);
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1593f))) * _wgslsmith_f_op_f32(step(-435f, 239f))), -531f), global1.b, global1.b.zyy, 384f == arg_1.a.x);
    let var_1 = Struct_4(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a), global1.a), vec4<u32>(~(~u_input.a.x), u_input.a.x, 1u, _wgslsmith_clamp_u32(30884u, 1u, _wgslsmith_add_u32(18146u, u_input.a.x))), global1.c, global0.a.x & any(select(global0.a.zy, global0.a.zy, global0.a.yy))), _wgslsmith_f_op_vec3_f32(-arg_1.a.yxz), Struct_2(-235f, global1.b, global1.b.xyx, !global0.a.x), _wgslsmith_clamp_u32(~28268u, 0u, 1u), Struct_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -313f)), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(18910u, u_input.a.x, global1.b.x, global1.c.x)), vec4<u32>(4294967295u, global1.b.x, 22923u, global1.c.x) | vec4<u32>(u_input.a.x, 31145u, 52946u, 0u)), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(1u, global1.c.x)), ~(~global1.c.x), u_input.a.x >> (4294967295u % 32u)), !any(select(vec4<bool>(false, false, global1.d, global1.d), vec4<bool>(false, global1.d, global0.a.x, global1.d), global1.d))));
    var var_2 = !global0.a.xx;
    return global1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_3) -> Struct_5 {
    let var_0 = 4294967295u;
    global0 = Struct_3(vec3<bool>(global0.a.x || !global0.a.x, true, -57109i < u_input.b.x));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1427f))), abs(global1.b), ~vec3<u32>(~countOneBits(0u), var_0, global1.c.x), any(select(!select(vec4<bool>(arg_1.a.x, true, global1.d, true), vec4<bool>(false, global1.d, true, true), global0.a.x), !(!vec4<bool>(global1.d, arg_1.a.x, global1.d, true)), select(select(vec4<bool>(global1.d, true, arg_1.a.x, global0.a.x), vec4<bool>(arg_1.a.x, global1.d, global0.a.x, true), false), !vec4<bool>(true, true, global0.a.x, true), !vec4<bool>(true, arg_1.a.x, global0.a.x, global1.d)))));
    var var_1 = vec4<bool>(arg_1.a.x, !arg_1.a.x, !any(global0.a), true);
    global1 = Struct_2(_wgslsmith_f_op_f32(step(global1.a, 1132f)), global1.b, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a.x, reverseBits(select(var_0, 1u, false))), min(global1.c, vec3<u32>(firstTrailingBit(global1.c.x), var_0 | 0u, abs(8521u)))), global1.d);
    return Struct_5(global1.b, 34102u);
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> Struct_3 {
    let var_0 = u_input.a.x;
    global0 = Struct_3(global0.a);
    global0 = Struct_3(!select(vec3<bool>(u_input.a.x < arg_1.b, u_input.b.x >= 12072i, true), !global0.a, !select(vec3<bool>(false, arg_0, true), global0.a, vec3<bool>(global0.a.x, global1.d, true))));
    global1 = Struct_2(global1.a, vec4<u32>(4294967295u, 18320u, 86090u, var_0), _wgslsmith_add_vec3_u32(vec3<u32>(~(~global1.c.x), var_0, ~(~global1.c.x)), ~_wgslsmith_div_vec3_u32(~global1.b.zxy, func_4(-1644f, Struct_3(global0.a)).a.wzz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -230f)))) > _wgslsmith_f_op_f32(-global1.a));
    var var_1 = vec3<i32>(-10353i, u_input.b.x, u_input.b.x);
    return Struct_3(vec3<bool>(true, arg_0, all(global0.a.zy)));
}

fn func_1(arg_0: Struct_5, arg_1: bool) -> vec3<f32> {
    let var_0 = !select(vec2<bool>(global1.d & all(vec4<bool>(global0.a.x, true, false, true)), true), !select(select(vec2<bool>(true, false), global0.a.xy, vec2<bool>(true, false)), vec2<bool>(false, arg_1), false), vec2<bool>(!(global0.a.x && true), false));
    var var_1 = -abs(-26747i);
    global0 = func_5(false, func_4(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(exp2(global1.a)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -316f, 681f, global1.a)), u_input.b.x))), Struct_3(!(!global0.a))));
    let var_2 = func_5(var_0.x, Struct_5(firstLeadingBit(arg_0.a), 34813u));
    let var_3 = _wgslsmith_dot_vec4_i32(~(~((vec4<i32>(u_input.b.x, -29831i, -7431i, u_input.b.x) << (vec4<u32>(4294967295u, u_input.a.x, global1.c.x, 98482u) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, arg_0.b, u_input.a.x, 3153u), global1.b, global1.b) % vec4<u32>(32u)))), -((_wgslsmith_mult_vec4_i32(vec4<i32>(2567i, -1i, 1i, u_input.b.x), vec4<i32>(0i, -2147483647i, -1554i, u_input.b.x)) | -vec4<i32>(u_input.b.x, -1i, u_input.b.x, u_input.b.x)) | -countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1431f, -670f, 684f) - vec3<f32>(-854f, global1.a, -657f)))))) + vec3<f32>(_wgslsmith_f_op_f32(592f + 269f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f - global1.a))), 226f));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = vec3<u32>(countOneBits(u_input.a.x), ~min(4294967295u, abs(global1.b.x)), u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 7812u, 4294967295u, 30435u), abs(vec4<u32>(u_input.a.x, 11091u, u_input.a.x, global1.c.x))) % 32u)) ^ ~vec3<u32>(global1.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(23773u, u_input.a.x, global1.c.x, global1.b.x) >> (vec4<u32>(27505u, 4294967295u, u_input.a.x, global1.b.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.x, 4294967295u, 1u, 29375u), global1.b)), ~(global1.b.x ^ global1.b.x));
    global0 = Struct_3(func_5(false, func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_2)), func_5(true, Struct_5(vec4<u32>(global1.c.x, u_input.a.x, var_0.x, global1.c.x), global1.b.x)))).a);
    let var_1 = Struct_3(vec3<bool>(global1.d, u_input.a.x > _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(35125u, u_input.a.x)), any(global0.a)));
    var_0 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(global1.c, vec3<u32>(63968u, select(1u, var_0.x, true), _wgslsmith_mult_u32(var_0.x, 34981u))), vec3<u32>(~global1.c.x, ~5436u, 1u));
    global0 = var_1;
    return Struct_3(select(arg_0.a, !func_5(global0.a.x, func_4(1023f, arg_0)).a, !arg_0.a));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = select(~(~_wgslsmith_add_vec2_u32(u_input.a, arg_1.e.c.xx)) << (select(arg_1.c.c.yy, vec2<u32>(1u, ~arg_1.c.c.x), arg_1.c.a != _wgslsmith_f_op_f32(f32(-1f) * -410f)) % vec2<u32>(32u)), countOneBits(vec2<u32>(1u, 1u << (firstLeadingBit(52373u) % 32u))), arg_0.a.zz);
    let var_1 = -_wgslsmith_add_vec4_i32(vec4<i32>(-(-3791i ^ u_input.b.x), u_input.b.x >> (_wgslsmith_add_u32(u_input.a.x, global1.b.x) % 32u), -func_3(Struct_3(arg_0.a)).x, -_wgslsmith_clamp_i32(u_input.b.x, 2147483647i, u_input.b.x)), firstTrailingBit(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 2147483647i, 261i, -2147483647i), vec4<i32>(0i, 2147483647i, u_input.b.x, u_input.b.x)))));
    global0 = Struct_3(!arg_0.a);
    global0 = arg_0;
    let var_2 = arg_1.b.yz;
    return _wgslsmith_div_vec3_u32(arg_1.e.c, ~(~(select(vec3<u32>(1u, u_input.a.x, 32835u), global1.c, arg_0.a) ^ arg_1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(global1.b | ~global1.b, vec4<u32>(19360u, min(u_input.a.x, global1.b.x), ~global1.b.x, global1.c.x | 33587u)));
    global1 = Struct_2(-437f, _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(u_input.a.x, 25771u, var_0, u_input.a.x)) ^ ~global1.b), global1.b, ~(~_wgslsmith_clamp_vec4_u32(global1.b, global1.b, vec4<u32>(global1.c.x, var_0, var_0, u_input.a.x)))), abs(func_7(func_6(Struct_3(global0.a), _wgslsmith_f_op_vec3_f32(func_1(Struct_5(global1.b, 59676u), global1.d)), _wgslsmith_f_op_f32(ceil(-1000f)), vec3<i32>(-31250i, 9667i, u_input.b.x)), Struct_4(Struct_2(global1.a, global1.b, vec3<u32>(32459u, 1u, 0u), global0.a.x), vec3<f32>(-752f, -1740f, 1864f), Struct_2(639f, vec4<u32>(44551u, global1.b.x, var_0, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), global0.a.x), 21463u, Struct_2(3172f, vec4<u32>(4294967295u, 0u, 95286u, 22710u), global1.c, false)))), false);
    let var_1 = func_6(func_5(any(vec4<bool>(any(vec4<bool>(global0.a.x, false, global0.a.x, global1.d)), global1.a > global1.a, true, global0.a.x)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), func_6(func_6(Struct_3(global0.a), vec3<f32>(global1.a, global1.a, 1000f), 1264f, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, -398f) - vec3<f32>(global1.a, -667f, global1.a)), _wgslsmith_f_op_f32(-global1.a), vec3<i32>(-2147483647i, 0i, -47632i) ^ u_input.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, global1.a, global1.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, global1.a))))), global1.a, _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.b.x, -1i, u_input.b.x) & func_3(func_6(Struct_3(vec3<bool>(global0.a.x, global1.d, global1.d)), vec3<f32>(global1.a, global1.a, -1211f), 1639f, u_input.b)).wzw, u_input.b, countOneBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), u_input.b))));
    var var_2 = select(!select(vec4<bool>(true, var_1.a.x != var_1.a.x, !global0.a.x, all(vec3<bool>(true, true, global0.a.x))), vec4<bool>(true, true, true & var_1.a.x, global1.d), any(vec3<bool>(global0.a.x, global0.a.x, var_1.a.x))), select(!vec4<bool>(any(vec3<bool>(var_1.a.x, false, global1.d)), true, !global1.d, true), !vec4<bool>(var_1.a.x, any(global0.a.xz), u_input.b.x >= u_input.b.x, !var_1.a.x), var_1.a.x), global0.a.x);
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f)), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a.x, var_0, var_0) ^ vec3<u32>(var_0, 25556u, u_input.a.x)), ~global1.c), reverseBits(_wgslsmith_dot_vec2_u32(global1.c.zy, global1.c.zy)), global1.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x), 49371u | countOneBits(var_0), func_4(_wgslsmith_f_op_f32(-global1.a), var_1).a.x), _wgslsmith_div_vec3_u32(global1.c, ~global1.b.zwx) & vec3<u32>(9284u & var_0, var_0 << (4294967295u % 32u), 1u)), var_2.x);
    let var_3 = !select(select(!select(vec4<bool>(global1.d, true, var_2.x, true), vec4<bool>(true, var_2.x, true, var_1.a.x), false), vec4<bool>(false, global0.a.x, all(vec2<bool>(global0.a.x, true)), u_input.b.x >= u_input.b.x), !select(vec4<bool>(global1.d, global1.d, global1.d, true), vec4<bool>(true, true, global0.a.x, global0.a.x), true)), vec4<bool>(!(true && global0.a.x), all(var_1.a), !(u_input.b.x > u_input.b.x), true), var_2.x);
    var var_4 = func_4(_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(-global1.a))), Struct_3(!vec3<bool>(false, global1.a >= global1.a, select(var_2.x, var_2.x, true))));
    var var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2563f + 179f), 1892f, _wgslsmith_f_op_f32(f32(-1f) * -259f), -1872f))), select(_wgslsmith_mod_i32(u_input.b.x, 1i), ~firstTrailingBit(1i) ^ -1i, func_5(false, Struct_5(~var_4.a, var_0)).a.x));
    global1 = Struct_2(_wgslsmith_f_op_f32(-global1.a), ~(~(~vec4<u32>(u_input.a.x, var_4.a.x, 0u, global1.c.x) >> (_wgslsmith_clamp_vec4_u32(global1.b, vec4<u32>(37845u, var_4.a.x, 4294967295u, u_input.a.x), global1.b) % vec4<u32>(32u)))), max(~firstLeadingBit(abs(vec3<u32>(global1.b.x, var_0, 9850u))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(47988u, 0u), var_4.a.ww), _wgslsmith_clamp_u32(var_4.a.x, u_input.a.x, global1.b.x), _wgslsmith_mod_u32(var_4.a.x, 114023u)), global1.b.yxx)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_5.a)));
}

