struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-20909i, -1i, -16075i, 0i);

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 3>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global2 = array<vec3<u32>, 3>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1088f, 695f, global3.x, global3.x) + vec4<f32>(-628f, global3.x, -1229f, -1028f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1290f, global3.x, 747f, 1418f) - vec4<f32>(-1000f, global3.x, global3.x, 416f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -447f, -342f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, global3.x, global3.x, global3.x) - vec4<f32>(global3.x, -679f, global3.x, -765f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-986f, -391f, global3.x, global3.x), vec4<f32>(1489f, global3.x, global3.x, 283f), arg_1.b.x)), vec4<f32>(global3.x, 2682f, global3.x, global3.x), arg_1.b.x)))));
    var var_0 = arg_1.b;
    global1 = 16513i;
    var var_1 = ~countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, arg_0.x), vec3<u32>(u_input.b, u_input.c, arg_0.x)), _wgslsmith_div_u32(arg_0.x, 0u) ^ (u_input.b | arg_0.x)));
    return Struct_1(vec4<i32>(60194i, ~2147483647i, ~reverseBits(-2147483647i), u_input.d.x), !select(arg_1.d.xx, select(arg_1.d.yy, !arg_1.b, u_input.b != 34848u), vec2<bool>(any(arg_1.d), !arg_2)), global0.x >> (4294967295u % 32u), vec4<bool>(true, arg_1.d.x, arg_2, arg_2), arg_2);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(409f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global3.x) * global3.x))), -283f, -817f);
    let var_1 = func_2(~vec4<u32>(1u, arg_0, _wgslsmith_sub_u32(firstTrailingBit(u_input.c), select(39003u, arg_0, true)), ~arg_0), Struct_1(select(vec4<i32>(i32(-1i) * -2147483647i, func_2(vec4<u32>(arg_0, 4294967295u, 1u, arg_0), Struct_1(vec4<i32>(global0.x, 5621i, u_input.d.x, 1i), vec2<bool>(true, true), 15986i, vec4<bool>(true, false, false, true), false), true).c, reverseBits(-1i), u_input.d.x & -7316i), (vec4<i32>(u_input.d.x, -11371i, 2147483647i, -15467i) << (vec4<u32>(1u, u_input.a, 1u, arg_0) % vec4<u32>(32u))) ^ abs(vec4<i32>(13564i, 2147483647i, 26677i, u_input.d.x)), select(select(true, false, false), all(vec2<bool>(true, false)), func_2(vec4<u32>(97049u, arg_0, 4294967295u, 39979u), Struct_1(vec4<i32>(-179i, -28988i, -2147483647i, -55645i), vec2<bool>(true, true), 39892i, vec4<bool>(true, false, true, true), true), false).b.x)), func_2(~select(vec4<u32>(u_input.c, 25502u, arg_0, u_input.c), vec4<u32>(1u, 82579u, u_input.a, 1u), vec4<bool>(true, true, true, true)), func_2(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 62287u, 1u, arg_0), vec4<u32>(u_input.a, arg_0, 4294967295u, u_input.b)), func_2(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), Struct_1(vec4<i32>(global0.x, -3965i, -490i, u_input.d.x), vec2<bool>(true, false), global0.x, vec4<bool>(false, false, false, false), false), true), true), !any(vec2<bool>(true, true))).d.zw, _wgslsmith_mod_i32(~_wgslsmith_mult_i32(-2147483647i, 0i), firstLeadingBit(abs(29231i))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), false), !(!(1u == _wgslsmith_mult_u32(u_input.b, 1560u))));
    global0 = max(vec4<i32>(global0.x | var_1.a.x, ~(-_wgslsmith_clamp_i32(u_input.d.x, 1i, u_input.d.x)), 1i, -1i), -(select(var_1.a, -var_1.a, func_2(vec4<u32>(4294967295u, 4294967295u, 49449u, arg_0), var_1, true).d.x) ^ vec4<i32>(global0.x, -28277i, u_input.d.x, -2147483647i)));
    global2 = array<vec3<u32>, 3>();
    let var_2 = var_1.e;
    return all(func_2(~vec4<u32>(u_input.b, arg_0 & arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(2340u, 736u, arg_0, 4294967295u), vec4<u32>(1u, u_input.a, arg_0, 76450u)), _wgslsmith_mod_u32(u_input.a, 65954u)), var_1, var_2).d.xxx);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = func_2(~select(~firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 6468u, u_input.b)), vec4<u32>(0u, firstTrailingBit(u_input.c), ~1u, ~u_input.c), any(!vec2<bool>(arg_1, true))), Struct_1(reverseBits(arg_0.a), func_2(~vec4<u32>(1u, 70611u, u_input.c, 72187u), Struct_1(arg_0.a, func_2(vec4<u32>(u_input.c, 1u, 1u, 16348u), arg_0, true).d.wx, _wgslsmith_div_i32(u_input.d.x, 48367i), !arg_0.d, any(arg_0.d.xxy)), arg_1).b, global0.x, arg_0.d, func_2(vec4<u32>(~4294967295u, 1u, firstTrailingBit(7235u), 8703u), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, u_input.d.x, u_input.d.x, global0.x), vec4<i32>(u_input.d.x, arg_0.c, 1i, -50092i)), arg_0.d.zz, ~u_input.d.x, select(arg_0.d, arg_0.d, false), all(vec3<bool>(arg_0.d.x, true, arg_1))), true).e), !(!((1580f != global3.x) || any(vec2<bool>(true, false)))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1518f * _wgslsmith_div_f32(-1143f, global3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(473f * global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_div_f32(global3.x, global3.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) - vec4<f32>(128f, global3.x, global3.x, -1041f))))))));
    var var_1 = 369f;
    let var_2 = func_2(reverseBits(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 1u, 85747u, u_input.a), vec4<u32>(3352u, 4294967295u, u_input.c, 1u))), func_2(~countOneBits(min(vec4<u32>(u_input.c, u_input.b, u_input.a, u_input.a), vec4<u32>(u_input.c, u_input.b, u_input.c, u_input.b))), func_2(~abs(vec4<u32>(u_input.c, 20355u, 4294967295u, 3809u)), Struct_1(-arg_0.a, select(vec2<bool>(arg_0.e, var_0.b.x), vec2<bool>(var_0.e, false), vec2<bool>(arg_1, true)), _wgslsmith_add_i32(global0.x, var_0.a.x), vec4<bool>(var_0.b.x, true, true, arg_0.e), all(vec2<bool>(false, arg_1))), arg_0.e), var_0.c >= ~_wgslsmith_dot_vec3_i32(vec3<i32>(-3889i, u_input.d.x, var_0.c), var_0.a.yyz)), !all(select(func_2(vec4<u32>(100149u, u_input.b, u_input.b, 52431u), arg_0, true).d.zzy, vec3<bool>(arg_0.d.x, arg_1, arg_1), func_2(vec4<u32>(16706u, 43388u, u_input.a, u_input.c), var_0, arg_0.d.x).d.yxy)));
    var_1 = 669f;
    return Struct_1(vec4<i32>(0i, 1i << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b, u_input.c), vec4<u32>(u_input.c, 1u, u_input.b, 4294967295u)) % 32u), _wgslsmith_dot_vec2_i32(max(vec2<i32>(2147483647i, var_2.c), vec2<i32>(arg_0.c, 43188i)) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(84134u, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), ~(~vec2<i32>(var_2.c, global0.x))), 1i), vec2<bool>(var_2.d.x == any(var_0.d), var_0.d.x), (_wgslsmith_sub_i32(7556i, 1i) ^ (2147483647i & ~var_2.a.x)) | var_0.c, !(!(!vec4<bool>(var_0.d.x, arg_1, false, false))), _wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(128f, global3.x, arg_0.b.x)))) != _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x * -610f), _wgslsmith_f_op_f32(-global3.x)))));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = countOneBits(vec4<i32>(reverseBits(-(~(-9542i))), -19993i, 2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.xwy >> (vec3<u32>(u_input.b, 50547u, u_input.c) % vec3<u32>(32u)), global0.ywy, ~global0.wzz), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0.x, -49192i), vec3<i32>(0i, -1i, global0.x)), _wgslsmith_mult_vec3_i32(global0.xzw, vec3<i32>(5044i, arg_0.x, arg_0.x))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(global3.wxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.yyz + vec3<f32>(-493f, global3.x, -259f))), vec3<f32>(_wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(min(573f, 261f)), -594f)))));
    var var_1 = func_2(~(_wgslsmith_add_vec4_u32(~vec4<u32>(50059u, u_input.a, 4294967295u, 4294967295u), ~vec4<u32>(4294967295u, 1u, 30433u, 28103u)) & vec4<u32>(u_input.a, 4294967295u, _wgslsmith_sub_u32(u_input.a, u_input.a), ~4294967295u)), Struct_1(~(-vec4<i32>(global0.x, 1i, arg_0.x, -2147483647i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec2<bool>(true, true))), arg_0.x, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), true), 302f != _wgslsmith_f_op_f32(-var_0.x));
    var var_2 = var_1.a;
    global0 = vec4<i32>(u_input.d.x, u_input.d.x, -arg_0.x, -51067i);
    return func_2(vec4<u32>(~(~31678u), min(u_input.b, u_input.b), 1u | (~0u ^ u_input.b), u_input.b), func_4(Struct_1(vec4<i32>(2147483647i, 2147483647i, ~global0.x, -u_input.d.x), vec2<bool>(true, true), func_2(vec4<u32>(91636u, 20673u, u_input.c, u_input.a), func_2(vec4<u32>(104305u, u_input.c, u_input.c, 4294967295u), Struct_1(var_1.a, var_1.b, -37394i, vec4<bool>(var_1.d.x, var_1.b.x, false, var_1.d.x), false), var_1.b.x), select(var_1.d.x, var_1.d.x, false)).c, var_1.d, _wgslsmith_add_i32(-34648i, arg_0.x) <= -global0.x), !func_3(u_input.b) || (any(var_1.d.yxw) & any(var_1.d.zxw))), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 3>();
    var var_0 = func_1(vec2<i32>(u_input.d.x, global0.x));
    global2 = array<vec3<u32>, 3>();
    let var_1 = u_input.c;
    var var_2 = Struct_1(var_0.a, var_0.b, 1i, var_0.d, var_0.d.x);
    global0 = -var_2.a;
    var var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, i32(-1i) * -4788i, 1i, max(u_input.d.x, 1360i)) & (vec4<i32>(u_input.d.x, var_0.c, -24896i, 0i) << (vec4<u32>(var_1, var_1, u_input.b, 32309u) % vec4<u32>(32u))), (vec4<i32>(-1i) * -vec4<i32>(-1i, -21810i, global0.x, -33851i)) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, var_1, 0u), vec4<u32>(var_1, u_input.b, 1u, u_input.a)) << (min(vec4<u32>(u_input.a, 9362u, 4294967295u, 0u), vec4<u32>(0u, u_input.a, 1u, 1u)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.a), func_2(~(~(vec4<u32>(var_1, u_input.b, u_input.a, var_1) >> (vec4<u32>(84445u, var_1, u_input.c, var_1) % vec4<u32>(32u)))), func_1(func_1(u_input.d).a.yw >> (vec2<u32>(u_input.c, var_1) % vec2<u32>(32u))), true | (_wgslsmith_f_op_f32(select(global3.x, global3.x, true)) >= -2317f)).b, _wgslsmith_add_i32(_wgslsmith_mod_i32(23442i, var_2.a.x) | u_input.d.x, _wgslsmith_add_i32(4238i, u_input.d.x)), vec4<bool>(false, 33074i > func_1(vec2<i32>(18155i, u_input.d.x)).a.x, true, var_0.e), var_0.e != true);
    var_0 = Struct_1(~_wgslsmith_mod_vec4_i32(~var_2.a, var_0.a), vec2<bool>(true, true), ~56760i, !select(func_2(~vec4<u32>(1u, 2448u, u_input.b, 1u), Struct_1(vec4<i32>(var_0.a.x, -1i, var_0.c, -2346i), vec2<bool>(false, var_2.e), 1i, vec4<bool>(false, true, true, true), var_3.d.x), any(var_3.b)).d, vec4<bool>(var_2.d.x & true, true, func_1(u_input.d).b.x, var_2.d.x), func_1(vec2<i32>(global0.x, global0.x)).d), any(func_1(var_3.a.xx).b));
    var var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-global3.wxw), ~u_input.d.x, u_input.d.x);
}

