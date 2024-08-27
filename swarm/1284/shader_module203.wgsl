struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32) -> f32 {
    var var_0 = vec3<i32>(~(-414i), u_input.a, 3471i);
    let var_1 = Struct_1(arg_0, vec2<i32>(1i, 1i));
    global0 = ~vec4<u32>(_wgslsmith_clamp_u32(1u, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, global0.x, u_input.b, 102386u), vec4<u32>(global0.x, arg_2, global0.x, u_input.c.x))), u_input.b), ~arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(11058u, u_input.c.x, reverseBits(global0.x), 67834u), ~vec4<u32>(0u, 4294967295u, 22767u, 24007u)), arg_2);
    var var_2 = var_1;
    var_2 = Struct_1(var_1.a, var_1.b);
    return var_2.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-arg_3.a), ~2147483647i, ~0u)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a))) + -733f) * _wgslsmith_f_op_f32(arg_3.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a - arg_3.a)))));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(arg_3.a, arg_1.x, 62507u)))))), select(_wgslsmith_add_vec2_i32(arg_1.zz, firstLeadingBit(vec2<i32>(arg_1.x, arg_3.b.x))), vec2<i32>(-1i) * -(~vec2<i32>(u_input.a, 0i)), all(vec3<bool>(true, true, true))));
    var_2 = arg_3;
    global1 = array<Struct_1, 2>();
    return arg_3;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1689f, arg_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -315f)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 736f) * vec2<f32>(-115f, -873f)), vec2<f32>(-804f, -409f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a, 1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, arg_1.a)))))));
    let var_1 = select(!vec3<bool>(!(!arg_0), all(vec3<bool>(true, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, any(select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0))), all(!vec3<bool>(true, arg_0, true))), vec3<bool>(arg_0, arg_0, all(vec4<bool>(arg_0, true, true, true)))), false);
    var var_2 = func_1(u_input.c, -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.x << (u_input.c.x % 32u), u_input.a, _wgslsmith_mult_i32(u_input.a, arg_1.b.x)), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_1.b.x, arg_1.b.x), vec3<i32>(arg_1.b.x, 1i, 1i))), ~(~u_input.b), func_1(~vec2<u32>(2166u, global0.x >> (u_input.c.x % 32u)), ~vec3<i32>(-1i, -25792i, 18973i) ^ vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-45148i, u_input.a, 2147483647i, 62993i), vec4<i32>(arg_1.b.x, u_input.a, arg_1.b.x, u_input.a)), firstTrailingBit(12826i), -u_input.a), global0.x, global1[_wgslsmith_index_u32(global0.x, 2u)]));
    global1 = array<Struct_1, 2>();
    return 1041f;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_1(countOneBits(~global0.xx), -vec3<i32>(u_input.a, -1i, -47816i) & vec3<i32>(-17985i, ~abs(3539i), 2147483647i), _wgslsmith_add_u32(_wgslsmith_mod_u32(~0u, abs(min(global0.x, 0u))), ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(17849u, 1u), global0.xz))), Struct_1(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -742f))), -(arg_2.b & -vec2<i32>(-48170i, arg_2.b.x))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.a);
    global0 = vec4<u32>(global0.x, 55663u, _wgslsmith_sub_u32(~u_input.c.x, u_input.c.x), u_input.c.x);
    var var_2 = func_1(countOneBits((vec2<u32>(4294967295u, 88512u) | global0.xy) << (_wgslsmith_mult_vec2_u32(u_input.c, global0.xw) % vec2<u32>(32u))) | u_input.c, _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-abs(vec3<i32>(u_input.a, var_0.b.x, u_input.a)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(0i, 0i, arg_2.b.x)), -vec3<i32>(-1i, var_0.b.x, u_input.a))), vec3<i32>(-_wgslsmith_mod_i32(-31020i, arg_2.b.x), ~arg_2.b.x, -1i)), u_input.c.x, func_1(u_input.c, vec3<i32>(_wgslsmith_mult_i32(arg_2.b.x, var_0.b.x), min(i32(-1i) * -29224i, 1i), countOneBits(u_input.a) & arg_3.b.x), 1u | ~u_input.c.x, arg_2));
    var var_3 = _wgslsmith_f_op_f32(-1076f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(110f * arg_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + 1609f))))));
    return Struct_1(var_0.a, abs(min(vec2<i32>(1i, firstLeadingBit(var_0.b.x)), min(var_0.b & var_0.b, select(arg_3.b, var_2.b, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 382i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 25819i), vec3<i32>(0i, u_input.a, u_input.a))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), min(vec2<i32>(32932i, 7738i), vec2<i32>(27218i, u_input.a))) ^ _wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, 2147483647i), max(vec2<i32>(1i, 6254i), vec2<i32>(-12516i, u_input.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-516f * 1297f), _wgslsmith_f_op_f32(f32(-1f) * -417f)), _wgslsmith_f_op_f32(1940f + -1115f)) + 861f), _wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(var_0, u_input.a)), _wgslsmith_sub_vec2_i32(-vec2<i32>(var_0, var_0), min(vec2<i32>(u_input.a, var_0), vec2<i32>(u_input.a, var_0)))) >> (global0.wy % vec2<u32>(32u)));
    var_1 = func_4(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1041f * -109f)), -1222f, _wgslsmith_f_op_f32(-1420f - _wgslsmith_f_op_f32(func_3(false, func_1(global0.xx, vec3<i32>(u_input.a, var_1.b.x, var_1.b.x), global0.x, Struct_1(343f, vec2<i32>(-41488i, 1i))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -1000f, var_1.a, var_1.a)))))), func_1(u_input.c, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(u_input.a, var_1.b.x), -39462i), -vec3<i32>(1i, -46846i, 44096i)), ~1u, func_1(u_input.c, -(~vec3<i32>(1i, var_0, -3583i)), min(1u, select(71853u, 4294967295u, true)), global1[_wgslsmith_index_u32(~abs(4294967295u), 2u)])), global1[_wgslsmith_index_u32(55570u, 2u)]);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_clamp_u32(1u, ~1u, _wgslsmith_mult_u32(u_input.b, global0.x))), ~u_input.c.x), 2u)];
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 2u)];
    var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(min(_wgslsmith_clamp_vec2_u32(global0.zx, ~global0.ww, vec2<u32>(global0.x, 36580u)), _wgslsmith_div_vec2_u32(select(u_input.c, vec2<u32>(global0.x, 1u), true), vec2<u32>(0u, 82703u))), vec2<u32>(31506u, abs(~global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_3.a, 1449f, false)), _wgslsmith_f_op_f32(func_3(false, Struct_1(var_3.a, vec2<i32>(var_1.b.x, var_3.b.x)))))) <= var_3.a), ~max(vec2<u32>(global0.x, 71994u) ^ ~u_input.c, max(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(22715u, u_input.c.x)), vec2<u32>(15875u, global0.x)))), 2u)];
    var var_4 = func_4(vec4<f32>(255f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1013f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), -329f)), _wgslsmith_f_op_f32(func_3(true, func_4(vec4<f32>(var_2.a, var_2.a, -3106f, 658f), vec4<f32>(-728f, -2594f, var_1.a, -685f), Struct_1(var_1.a, vec2<i32>(var_1.b.x, var_3.b.x)), func_1(vec2<u32>(1u, global0.x), vec3<i32>(var_3.b.x, 5071i, 32474i), global0.x, global1[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global0.x), 2u)])))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-611f, var_3.a, 858f, var_2.a) * vec4<f32>(var_2.a, 381f, var_1.a, var_1.a))))), vec4<f32>(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), -1092f, var_3.a), !((u_input.c.x >> (u_input.c.x % 32u)) >= _wgslsmith_mod_u32(47076u, 7130u)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-961f, 453f)))), -(-vec2<i32>(u_input.a, var_0) >> (global0.yy % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1011f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1326f)))), vec2<i32>(28935i, -(var_1.b.x >> (1200u % 32u)))));
    var var_5 = ~firstLeadingBit(vec4<u32>(33458u, 22490u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, 25687u), 36495u), ~global0.x << (select(62025u, global0.x, false) % 32u)));
    var var_6 = select(vec2<bool>(true, (min(global0.x, 86812u) < ~var_5.x) || all(vec4<bool>(false, true, true, false))), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), any(vec2<bool>(false, false))), vec2<bool>(true, false), vec2<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, false)))), !select(true, !all(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, 641f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a)))))), 1i, vec4<i32>(abs(1i) << (global0.x % 32u), -2147483647i, ~_wgslsmith_mult_i32(0i, 78710i), (i32(-1i) * -2147483647i) | var_0) >> (countOneBits(countOneBits(vec4<u32>(u_input.b, 0u, 21726u, global0.x))) % vec4<u32>(32u)));
}

