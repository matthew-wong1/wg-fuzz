struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = -208f;

var<private> global2: Struct_5 = Struct_5(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, false, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    var var_0 = firstLeadingBit(u_input.a);
    var var_1 = arg_0;
    global1 = _wgslsmith_f_op_f32(-1328f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.c.x), 376f) * _wgslsmith_f_op_f32(1000f - var_1.a.c.x))));
    global2 = Struct_5(global2.b, global2.b);
    let var_2 = any(!arg_1.a.xy);
    return Struct_1(select(arg_1.a, var_1.b, var_2));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    global0 = vec2<bool>(arg_2.a.x, !select(true, global0.x, any(vec4<bool>(arg_2.a.x, global0.x, arg_1.b.x, true))));
    global1 = _wgslsmith_f_op_f32(-arg_1.c.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-840f))), _wgslsmith_f_op_f32(arg_1.c.x * 536f), global2.b.a.x))));
    global2 = Struct_5(func_2(Struct_4(arg_1, !select(global2.a.a, arg_2.a, vec4<bool>(global2.b.a.x, true, global2.b.a.x, true))), Struct_1(!global2.b.a), u_input.d), Struct_1(vec4<bool>(true, all(arg_1.b.zy), 1i <= _wgslsmith_div_i32(2147483647i, arg_0.x), true)));
    var var_1 = Struct_2(~(~min(firstTrailingBit(arg_1.a.wxz), u_input.a.xxx)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, arg_1.a.x) ^ abs(vec2<u32>(u_input.c, 3181u)), ~arg_1.a.xw), _wgslsmith_sub_vec2_u32(arg_1.a.yw, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b), arg_1.a.wy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), -975f, _wgslsmith_f_op_f32(-var_0)))));
    return abs(~u_input.e);
}

fn func_4(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(~vec4<u32>(0u, 4294967295u, arg_0, u_input.b.x), vec4<u32>(67311u, 4294967295u, 4294967295u, arg_0))), func_2(Struct_4(Struct_3(vec4<u32>(4294967295u, u_input.b.x, 35301u, 1u), global2.b.a.wxy, vec4<f32>(1206f, -267f, 349f, -726f)), select(global2.b.a, vec4<bool>(false, global2.b.a.x, global2.a.a.x, true), global2.b.a.x)), Struct_1(!global2.a.a), ~58059u).a.xyy, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, 1243f, -1147f, -1758f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(322f, -355f, 889f, -170f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-118f, 559f, 345f, -2627f) - vec4<f32>(-653f, -926f, 441f, 1249f)))))), global2.b.a);
    var_0 = Struct_4(Struct_3(u_input.a, select(vec3<bool>(true, all(vec2<bool>(var_0.b.x, false)), all(vec2<bool>(true, global0.x))), select(func_2(Struct_4(var_0.a, global2.b.a), Struct_1(vec4<bool>(global2.b.a.x, true, var_0.a.b.x, true)), 50837u).a.zxy, vec3<bool>(global0.x, false, global0.x), any(var_0.b)), vec3<bool>(true, select(global2.a.a.x, var_0.a.b.x, false), u_input.e.x < arg_0)), var_0.a.c), func_2(Struct_4(Struct_3(select(var_0.a.a, u_input.a, global0.x), var_0.a.b, vec4<f32>(var_0.a.c.x, 322f, -320f, 809f)), var_0.b), Struct_1(var_0.b), func_3(vec4<i32>(-1i) * -vec4<i32>(0i, 35565i, 2147483647i, 2147483647i), Struct_3(countOneBits(vec4<u32>(8539u, u_input.b.x, arg_0, var_0.a.a.x)), select(var_0.b.zxy, vec3<bool>(global0.x, global2.a.a.x, global2.b.a.x), false), _wgslsmith_f_op_vec4_f32(floor(var_0.a.c))), func_2(Struct_4(Struct_3(var_0.a.a, vec3<bool>(true, global2.a.a.x, global0.x), var_0.a.c), vec4<bool>(global0.x, global2.b.a.x, true, global2.a.a.x)), func_2(Struct_4(var_0.a, var_0.b), global2.b, 39381u), ~0u), 23055u).x).a);
    var var_1 = func_2(Struct_4(var_0.a, select(select(vec4<bool>(true, true, true, true), func_2(Struct_4(var_0.a, var_0.b), global2.a, 50581u).a, var_0.a.b.x), global2.b.a, !any(var_0.a.b))), func_2(Struct_4(var_0.a, !select(vec4<bool>(var_0.a.b.x, true, var_0.b.x, var_0.a.b.x), var_0.b, global2.a.a)), Struct_1(select(!vec4<bool>(var_0.a.b.x, true, global2.a.a.x, var_0.a.b.x), select(vec4<bool>(true, false, var_0.a.b.x, global2.b.a.x), vec4<bool>(global0.x, false, true, global0.x), true), select(global2.b.a, vec4<bool>(true, global0.x, var_0.b.x, global2.b.a.x), true))), 0u), reverseBits(_wgslsmith_clamp_u32(~arg_0, 24927u, ~abs(arg_0))));
    var var_2 = ~u_input.e >> (_wgslsmith_mod_vec3_u32(~(~u_input.e) & ~(~u_input.e), vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(87409u, 21386u, 29978u, 18709u)), u_input.a), var_0.a.a.x >> (arg_0 % 32u), _wgslsmith_add_u32(max(var_0.a.a.x, var_0.a.a.x), _wgslsmith_div_u32(1u, u_input.c)))) % vec3<u32>(32u));
    let var_3 = var_0.a.c.x;
    return Struct_4(Struct_3(vec4<u32>(~0u, 95811u, reverseBits(var_2.x), firstLeadingBit(~var_0.a.a.x)), !select(select(vec3<bool>(global0.x, false, var_1.a.x), var_1.a.zxw, vec3<bool>(true, true, false)), select(vec3<bool>(var_0.a.b.x, false, true), vec3<bool>(var_1.a.x, global2.b.a.x, true), true), var_1.a.zzz), _wgslsmith_f_op_vec4_f32(vec4<f32>(939f, _wgslsmith_div_f32(var_0.a.c.x, 1226f), var_0.a.c.x, _wgslsmith_div_f32(var_0.a.c.x, -889f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-694f, var_0.a.c.x, -353f, var_0.a.c.x)))))), vec4<bool>(select(global2.b.a.x, any(global2.a.a.yzx), false), global2.b.a.x, global2.a.a.x, any(var_0.a.b)));
}

fn func_1() -> vec4<bool> {
    global0 = !(!global2.b.a.yz);
    var var_0 = func_4(_wgslsmith_dot_vec3_u32(func_3(~vec4<i32>(-25311i, -32834i, -35983i, 1i), Struct_3(vec4<u32>(1u, u_input.b.x, u_input.e.x, 706u), vec3<bool>(false, true, global0.x), vec4<f32>(-2692f, -849f, -1257f, 132f)), func_2(Struct_4(Struct_3(u_input.a, vec3<bool>(true, global0.x, global0.x), vec4<f32>(887f, -1979f, 1695f, 1455f)), vec4<bool>(true, global2.b.a.x, global0.x, false)), global2.a, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.e, u_input.a.xzy)) | vec3<u32>(u_input.b.x, ~11902u, ~1014u), _wgslsmith_mult_vec3_u32(u_input.a.wxz, select(vec3<u32>(45889u, u_input.c, 0u), _wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(u_input.b.x, 4294967295u, 75325u)), select(vec3<bool>(global2.b.a.x, global2.b.a.x, global2.b.a.x), vec3<bool>(global0.x, global2.a.a.x, global2.a.a.x), global2.a.a.wzw)))));
    var var_1 = global2.a.a;
    let var_2 = Struct_5(global2.a, func_2(func_4(countOneBits(u_input.d)), func_2(func_4(~81075u), func_2(func_4(4294967295u), Struct_1(var_0.b), 71707u), reverseBits(u_input.d) >> (~4294967295u % 32u)), u_input.c));
    let var_3 = max(0i, -14685i);
    return func_2(Struct_4(Struct_3(~vec4<u32>(var_0.a.a.x, u_input.e.x, u_input.d, u_input.c) << (countOneBits(vec4<u32>(50851u, u_input.b.x, u_input.d, u_input.d)) % vec4<u32>(32u)), vec3<bool>(true, global0.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 427f, var_0.a.c.x, var_0.a.c.x)))), vec4<bool>(!(!var_1.x), false, false || !global2.a.a.x, false)), func_2(func_4(u_input.a.x), Struct_1(vec4<bool>(false, false, true, false)), _wgslsmith_dot_vec4_u32(~(~var_0.a.a), min(firstLeadingBit(vec4<u32>(var_0.a.a.x, 1u, u_input.e.x, var_0.a.a.x)), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(0u, 4294967295u, var_0.a.a.x, 0u))))), var_0.a.a.x).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.x && global0.x;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(992f, -1345f))))));
    var var_1 = select(func_1(), !global2.b.a, global2.b.a);
    let var_2 = -1000f;
    let var_3 = func_4(u_input.b.x).a.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(1i), 1i & select(-2147483647i, firstLeadingBit(1i), !(var_2 <= var_2)), vec3<i32>(reverseBits(~4556i), abs(firstTrailingBit(15664i)), _wgslsmith_div_i32(abs(-6929i), abs(-6728i))) << (func_4((u_input.a.x >> (48682u % 32u)) & 4294967295u).a.a.zxy % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 6249i, -2147483647i) >> (reverseBits(u_input.e) % vec3<u32>(32u)), ~abs(vec3<i32>(-16452i, 1i, -1i))));
}

