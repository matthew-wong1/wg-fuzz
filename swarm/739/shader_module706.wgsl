struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, true), false);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    var var_0 = -arg_0;
    var var_1 = Struct_1(!vec4<bool>(true, any(global1.a.yy), any(arg_1.a.yww), !arg_1.a.x), !global0.a.x);
    global1 = arg_2;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1135f, _wgslsmith_div_f32(-1039f, -1186f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-175f * 654f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1491f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1050f))))));
    let var_3 = -vec4<i32>(arg_3.x, ~(-1i), _wgslsmith_dot_vec4_i32(firstLeadingBit(arg_3) & (vec4<i32>(u_input.c.x, 0i, -35531i, -10396i) << (vec4<u32>(0u, 33875u, 1u, u_input.a) % vec4<u32>(32u))), ~vec4<i32>(-6983i, 0i, -7531i, arg_3.x) ^ select(arg_3, vec4<i32>(38476i, -1i, arg_3.x, arg_0), vec4<bool>(global0.b, true, false, true))), abs(_wgslsmith_dot_vec3_i32(u_input.c.wzx, arg_3.ywx)) | u_input.b.x);
    return false;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(global1.a, func_3(abs(abs(u_input.b.x)), Struct_1(!(!global0.a), u_input.d != max(u_input.a, u_input.d)), Struct_1(global0.a, true), ~max(u_input.c, vec4<i32>(1i, u_input.c.x, u_input.b.x, 1i)) & countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(20789i, 0i, 17803i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -18996i, u_input.c.x)))));
    let var_0 = Struct_1(global1.a, true);
    let var_1 = min(u_input.c, _wgslsmith_div_vec4_i32(~vec4<i32>(-39852i, u_input.c.x, u_input.c.x, -9025i), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, -7243i, u_input.c.x, 1i)), vec4<i32>(-23059i << (u_input.d % 32u), _wgslsmith_clamp_i32(u_input.c.x, 1i, 1i), select(u_input.b.x, u_input.c.x, false), ~2147483647i))));
    return var_0;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    global0 = Struct_1(global1.a, false);
    global1 = arg_0;
    global1 = func_2();
    global1 = Struct_1(!global0.a, !global0.b);
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = func_2();
    var var_0 = vec4<u32>(arg_3, firstTrailingBit(arg_3), reverseBits(4294967295u), 71369u);
    global1 = func_2();
    global1 = func_2();
    global0 = Struct_1(!(!vec4<bool>(arg_1, true, true, false)), !arg_2.b);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> vec2<bool> {
    var var_0 = func_5(Struct_1(!vec4<bool>(true, all(vec4<bool>(false, true, false, arg_1.x)), !global1.b, u_input.d < u_input.a), false), firstLeadingBit(u_input.b.x) >= _wgslsmith_div_i32(2147483647i, firstTrailingBit(_wgslsmith_add_i32(u_input.c.x, u_input.b.x))), func_4(func_2()), _wgslsmith_mod_u32(firstLeadingBit(~4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 12233u, u_input.a, u_input.d), vec4<u32>(78752u, 45152u, 4294967295u, 41693u), global0.b), vec4<u32>(min(65459u, 4294967295u), select(u_input.d, u_input.d, arg_1.x), u_input.d, ~3948u))));
    global0 = Struct_1(func_5(func_2(), true, Struct_1(global0.a, any(vec2<bool>(false, arg_1.x))), 1u).a, func_2().a.x);
    var var_1 = func_4(func_5(Struct_1(vec4<bool>(all(global0.a), arg_1.x, u_input.a >= u_input.d, true), arg_0), false, Struct_1(vec4<bool>(global0.b | global0.a.x, true & global1.a.x, false, true), func_4(Struct_1(global0.a, false)).a.x), (u_input.d ^ u_input.a) >> (u_input.a % 32u)));
    global0 = func_4(func_4(Struct_1(func_2().a, _wgslsmith_f_op_f32(ceil(-1271f)) <= -1116f)));
    var var_2 = i32(-1i) * -_wgslsmith_add_i32(1i, -2147483647i);
    return func_5(func_4(func_5(func_5(func_5(Struct_1(vec4<bool>(true, var_0.a.x, true, true), var_1.a.x), arg_0, Struct_1(var_0.a, false), 4294967295u), global0.b != global1.a.x, func_2(), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(46267u, 6349u, 0u, 21708u))), global1.b, Struct_1(vec4<bool>(var_1.b, true, arg_1.x, var_0.a.x), var_0.a.x), u_input.a)), global0.b, Struct_1(!select(vec4<bool>(var_0.a.x, arg_1.x, true, global0.a.x), func_4(Struct_1(global0.a, false)).a, false), all(func_5(Struct_1(vec4<bool>(global0.b, false, true, arg_1.x), global0.b), true, Struct_1(vec4<bool>(false, arg_1.x, var_0.a.x, true), var_0.b), 1u).a.ww)), u_input.d).a.zz;
}

fn func_6(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_4(Struct_1(!vec4<bool>(arg_2.a.x, global1.a.x, false & global1.a.x, true), all(global0.a.ywy)));
    var var_1 = Struct_1(!vec4<bool>(false, firstTrailingBit(66928u) <= ~4294967295u, arg_1, all(var_0.a)), true && !(!func_5(Struct_1(vec4<bool>(arg_0.x, false, false, global1.a.x), arg_1), arg_0.x, arg_3, u_input.d).a.x));
    let var_2 = _wgslsmith_sub_i32(min(~(~u_input.c.x) | ~_wgslsmith_sub_i32(u_input.c.x, u_input.b.x), _wgslsmith_div_i32(u_input.b.x, i32(-1i) * -2147483647i)), -2147483647i);
    var var_3 = countOneBits(~vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a), firstLeadingBit(vec2<u32>(7547u, 0u))), 18458u));
    var var_4 = Struct_1(var_0.a, true || arg_2.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(true, select(select(global0.a.wxz, vec3<bool>(global1.b, true, global0.b), select(vec3<bool>(true, false, global1.a.x), global1.a.zzz, true)), vec3<bool>(global0.b, true, global0.a.x), 1u >= u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_div_f32(-538f, _wgslsmith_f_op_f32(trunc(-477f))))), false, Struct_1(global1.a, any(global0.a.yxw)), Struct_1(func_4(Struct_1(func_4(Struct_1(vec4<bool>(false, global0.b, global0.b, true), global1.b)).a, global1.b)).a, !func_5(func_2(), func_2().a.x, Struct_1(global1.a, true), 1u).a.x));
    let var_1 = func_6(vec2<bool>(func_4(var_0).a.x, false), select(true, func_1(global0.b, select(!vec3<bool>(true, var_0.b, false), select(global1.a.zxx, global1.a.yzw, vec3<bool>(var_0.b, true, false)), !global0.b), -1644f).x, true), var_0, Struct_1(vec4<bool>(all(global0.a.xxz), false, all(global0.a.yy), func_2().a.x || (var_0.a.x != global0.a.x)), true));
    let var_2 = u_input.d;
    var var_3 = ~(vec2<u32>(66031u, u_input.d) | (~max(vec2<u32>(23331u, u_input.a), vec2<u32>(0u, 0u)) >> (select(abs(vec2<u32>(4294967295u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_2), vec2<u32>(u_input.d, u_input.a), vec2<u32>(var_2, u_input.a)), var_1.b && global0.b) % vec2<u32>(32u))));
    var var_4 = func_5(var_0, true, Struct_1(global1.a, var_1.b), _wgslsmith_dot_vec3_u32(firstLeadingBit(~(vec3<u32>(var_2, 0u, 1u) & vec3<u32>(var_2, 0u, var_2))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, 1u, 1u), ~firstLeadingBit(vec3<u32>(1u, u_input.d, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 431f)), vec2<i32>(_wgslsmith_mod_i32(1i, ~(1i << (u_input.a % 32u))), 0i), select(~(~u_input.c << (vec4<u32>(1u, 25100u, 1u, 0u) % vec4<u32>(32u))), -vec4<i32>(firstLeadingBit(0i), _wgslsmith_mod_i32(u_input.b.x, 3124i), u_input.b.x, ~u_input.b.x), vec4<bool>(var_1.b, !global1.b, true, true)), ~(-u_input.b.x));
}

