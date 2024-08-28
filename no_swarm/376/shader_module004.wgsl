struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_3) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(946f));
    return -96i;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec4<u32> {
    global0 = array<u32, 18>();
    var var_0 = ~(~firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.b.x), u_input.e)));
    var var_1 = Struct_3(15477u, Struct_1(-11277i, vec2<i32>(func_3(max(u_input.d, 40484u), arg_0, vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), Struct_3(arg_0.b.x, Struct_1(arg_1.d, arg_1.b, arg_1.c, 2084i, arg_1.c.x))), select(_wgslsmith_mult_i32(u_input.a, 13145i), 1i, true)), vec2<bool>(!arg_3, arg_2.x > _wgslsmith_f_op_f32(arg_2.x * arg_2.x)), firstTrailingBit(abs(-2147483647i)), true));
    var_0 = ~8213u;
    var_1 = Struct_3(_wgslsmith_mult_u32(arg_0.b.x << (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), arg_0.b.x), Struct_1(1i, vec2<i32>(var_1.b.a, countOneBits(26223i)), var_1.b.c, -9040i, arg_1.e));
    return firstLeadingBit(~(~abs(firstLeadingBit(vec4<u32>(u_input.b.x, u_input.b.x, 26178u, var_1.a)))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<i32>) -> bool {
    var var_0 = countOneBits(u_input.e);
    var_0 = 4294967295u >> (_wgslsmith_mod_u32(99318u, global0[_wgslsmith_index_u32(1u, 18u)]) % 32u);
    var var_1 = Struct_2(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1, arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 546f) * vec2<f32>(-986f, arg_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, arg_1))))), -vec3<i32>(48689i, 19574i, arg_0), vec3<bool>(true, true, true));
    global0 = array<u32, 18>();
    let var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.e, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.d), 18u)], 18u)], reverseBits(_wgslsmith_sub_u32(u_input.b.x, 17014u)), 4294967295u, u_input.e | 1u), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(0u, 18u)], u_input.d) << (vec4<u32>(13774u, 0u, 73383u, 1u) % vec4<u32>(32u))), ~max(~vec4<u32>(0u, u_input.d, 30375u, 4294967295u), func_2(Struct_5(vec4<bool>(var_1.a, var_1.d.x, true, var_1.a), vec2<u32>(u_input.e, 54433u)), Struct_1(2147483647i, u_input.c.yx, vec2<bool>(false, var_1.a), var_1.c.x, var_1.a), vec2<f32>(-862f, arg_1), true)), ~vec4<u32>(1u, u_input.d, u_input.b.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e, 18u)], 18u)], u_input.d))));
    return select(true, false & any(var_1.d), true);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_5, arg_2: Struct_5) -> Struct_2 {
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    var var_0 = Struct_1(-51965i >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(36261u, 1u, 34345u, global0[_wgslsmith_index_u32(1318u, 18u)]), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b.x, global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)]), vec4<u32>(17792u, 1u, arg_2.b.x, 4294967295u), vec4<u32>(1u, arg_1.b.x, arg_2.b.x, arg_2.b.x)))) % 32u), _wgslsmith_div_vec2_i32(u_input.c.xy, max(u_input.c.yz, vec2<i32>(-22281i, u_input.c.x))) >> (vec2<u32>(_wgslsmith_sub_u32(arg_2.b.x, 0u), global0[_wgslsmith_index_u32(0u, 18u)]) % vec2<u32>(32u)), vec2<bool>(all(arg_0.yy), arg_0.x | all(!vec4<bool>(arg_2.a.x, true, false, false))), ~1i, arg_2.a.x);
    var_0 = Struct_1(i32(-1i) * -9655i, max(reverseBits(u_input.c.xy), u_input.c.zy), select(vec2<bool>(true, !arg_2.a.x), arg_2.a.zz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-745f + 408f))) >= 970f), countOneBits(select(u_input.a, i32(-1i) * -46582i, var_0.b.x == u_input.c.x)) | (var_0.b.x >> (arg_2.b.x % 32u)), firstTrailingBit(~(~var_0.b.x)) > 26842i);
    var var_1 = vec3<i32>(-1i, min(1i << (~_wgslsmith_clamp_u32(arg_1.b.x, global0[_wgslsmith_index_u32(u_input.d, 18u)], arg_1.b.x) % 32u), abs(34311i)), 2147483647i);
    return Struct_2(all(arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-121f, -1230f))))), select((vec3<i32>(-2147483647i, u_input.c.x, var_1.x) >> (vec3<u32>(u_input.e, 0u, arg_2.b.x) % vec3<u32>(32u))) | u_input.c, u_input.c, !any(!arg_2.a)), vec3<bool>(var_0.c.x, false, arg_1.a.x));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_2) + -1142f));
    var var_1 = arg_0;
    var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, 283f))));
    var var_2 = Struct_5(vec4<bool>(true, ~1u < ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_1, 18u)], global0[_wgslsmith_index_u32(u_input.d, 18u)], 8108u, 4294967295u), vec4<u32>(72594u, global0[_wgslsmith_index_u32(1u, 18u)], arg_1, 1u)), all(select(vec4<bool>(arg_3.d.x, true, arg_0, arg_0), vec4<bool>(arg_3.d.x, false, true, false), true)) && !arg_3.a, true), vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], func_2(Struct_5(vec4<bool>(arg_3.d.x, true, false, arg_0), vec2<u32>(104623u, global0[_wgslsmith_index_u32(9995u, 18u)])), Struct_1(-65215i, vec2<i32>(arg_3.c.x, -2147483647i), arg_3.d.xz, -28708i, arg_3.a), vec2<f32>(arg_3.b.x, arg_3.b.x), arg_3.a).x & 4294967295u));
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(-704f, 455f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -771f) * _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 + arg_3.b.x), _wgslsmith_f_op_f32(exp2(arg_2)))))));
    return Struct_4(1u, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(true, all(vec4<bool>(false, false, true, true)), true), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)), func_4(vec3<bool>(true, !func_1(u_input.c.x, -674f, vec4<i32>(u_input.c.x, 44330i, 1i, 0i)), func_1(-u_input.c.x, _wgslsmith_f_op_f32(f32(-1f) * -471f), _wgslsmith_clamp_vec4_i32(vec4<i32>(-32941i, 0i, 36907i, 21604i), vec4<i32>(-1i, 57496i, 12932i, 2147483647i), vec4<i32>(29274i, u_input.c.x, 0i, u_input.a)))), Struct_5(vec4<bool>(true, true, true, true), u_input.b.yx | u_input.b.xz), Struct_5(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), firstTrailingBit(u_input.b.xy))));
    var var_1 = abs(countOneBits(_wgslsmith_mult_i32(38086i, abs(-1i) << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)] >> (0u % 32u)) % 32u))));
    global0 = array<u32, 18>();
    var var_2 = firstLeadingBit(~_wgslsmith_mod_vec3_i32(~u_input.c, u_input.c << ((u_input.b | u_input.b) % vec3<u32>(32u))));
    var var_3 = abs(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -1413f))), -13014i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-u_input.c << (~vec3<u32>(var_0.a, global0[_wgslsmith_index_u32(59011u, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)]) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(-55611i, u_input.c.x, -2147483647i)), -u_input.c)), vec3<i32>(var_2.x, ~u_input.c.x, -1i)), abs(vec2<u32>(select(global0[_wgslsmith_index_u32(var_0.a, 18u)], var_0.a, true), var_0.a ^ u_input.d) << (~u_input.b.zx % vec2<u32>(32u))));
}

