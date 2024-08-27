struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(0u, 0u, 4294967295u, 28862u, 4294967295u, 3919u, 12588u, 4294967295u, 8712u, 20096u, 1095u, 0u, 817u, 1u, 1u, 13629u, 13525u, 52239u, 1u, 86850u, 1u, 1u, 4294967295u, 4294967295u, 33734u, 45416u, 56184u, 0u, 1u);

var<private> global1: array<f32, 1> = array<f32, 1>(996f);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = reverseBits(vec3<u32>(22945u, countOneBits(arg_0.a.c.b.d), 1u ^ global0[_wgslsmith_index_u32(arg_0.a.c.b.d, 29u)]));
    let var_1 = Struct_1(select(!select(vec2<bool>(true, true), arg_0.a.c.b.a, false), !(!(!vec2<bool>(arg_0.a.c.a.a.x, arg_0.a.c.b.a.x))), select(arg_0.a.b.b.b.xx, select(arg_0.a.c.a.a, !vec2<bool>(arg_1, arg_1), select(arg_0.a.b.a.b.zz, vec2<bool>(arg_1, arg_1), arg_0.a.b.a.b.x)), !arg_0.a.b.a.a)), !select(!(!vec3<bool>(arg_1, true, arg_1)), !arg_0.a.b.a.b, true), arg_0.a.c.a.c, ~_wgslsmith_add_u32(~(var_0.x << (u_input.a.x % 32u)), var_0.x));
    let var_2 = arg_0.a.b.b.b;
    global1 = array<f32, 1>();
    let var_3 = Struct_4(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.c))) * arg_0.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1073f - 338f)))));
    return vec3<bool>(all(vec2<bool>(select(var_3.a.c.a.a.x, arg_0.a.c.b.b.x, true) && (-2147483647i < var_3.a.a.x), var_1.a.x)), !any(!select(vec2<bool>(false, false), var_3.a.c.a.a, vec2<bool>(var_3.a.b.a.a.x, true))), false);
}

fn func_2(arg_0: u32) -> bool {
    global0 = array<u32, 29>();
    var var_0 = Struct_2(Struct_1(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true), !vec3<bool>(true, u_input.a.x != global0[_wgslsmith_index_u32(0u, 29u)], false), -1623f, 4294967295u), Struct_1(vec2<bool>(select(false, true, false) || true, false), select(vec3<bool>(true, true, false), func_3(Struct_4(Struct_3(u_input.c.yy, Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(true, true, false), 179f, arg_0), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(179997u, 29u)], 1u)], arg_0), vec2<f32>(1855f, global1[_wgslsmith_index_u32(u_input.b, 1u)])), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(true, true, true), 2565f, 12431u), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), -638f, 19781u), vec2<f32>(100f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7713u, 29u)], 1u)]))), -106f), true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 1u)], global1[_wgslsmith_index_u32(84069u, 1u)], -1443f, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], global1[_wgslsmith_index_u32(u_input.b, 1u)], global1[_wgslsmith_index_u32(7669u, 1u)], global1[_wgslsmith_index_u32(arg_0, 1u)]), vec4<bool>(false, false, true, true)))), func_3(Struct_4(Struct_3(u_input.c.zx, Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(43140u, 1u)], global0[_wgslsmith_index_u32(502u, 29u)]), Struct_1(vec2<bool>(true, true), vec3<bool>(true, false, false), global1[_wgslsmith_index_u32(arg_0, 1u)], global0[_wgslsmith_index_u32(1u, 29u)]), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 1u)], global1[_wgslsmith_index_u32(18645u, 1u)])), Struct_2(Struct_1(vec2<bool>(false, false), vec3<bool>(false, true, false), 217f, global0[_wgslsmith_index_u32(arg_0, 29u)]), Struct_1(vec2<bool>(true, false), vec3<bool>(false, false, false), 814f, u_input.b), vec2<f32>(-701f, -1653f))), global1[_wgslsmith_index_u32(u_input.b, 1u)]), true, vec4<f32>(global1[_wgslsmith_index_u32(4961u, 1u)], global1[_wgslsmith_index_u32(0u, 1u)], -1029f, global1[_wgslsmith_index_u32(arg_0, 1u)])).x), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 1u)])), 12915u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 1u)], 175f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1489f, -530f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1002f) - vec2<f32>(global1[_wgslsmith_index_u32(28733u, 1u)], 1000f)))) * vec2<f32>(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_0, 1u)], global1[_wgslsmith_index_u32(128266u, 1u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11557u, 1u)])))));
    return any(select(func_3(Struct_4(Struct_3(u_input.c.zz, Struct_2(var_0.b, var_0.b, vec2<f32>(-955f, global1[_wgslsmith_index_u32(34943u, 1u)])), Struct_2(var_0.a, var_0.b, vec2<f32>(1429f, 251f))), 217f), all(!vec4<bool>(var_0.a.b.x, false, var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_0.a.d, 1u)], var_0.a.c, 253f, global1[_wgslsmith_index_u32(arg_0, 1u)]) * vec4<f32>(420f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 1u)], global1[_wgslsmith_index_u32(u_input.a.x, 1u)], var_0.a.c)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1[_wgslsmith_index_u32(34865u, 1u)], var_0.c.x, 836f, -166f))), true))).zy, var_0.b.a, true));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = ~vec4<i32>(-63996i, u_input.c.x, _wgslsmith_sub_i32(53i >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_3.d, 29u)], 50088u) % 32u), -u_input.c.x << (35345u % 32u)), u_input.c.x);
    var var_1 = vec3<u32>(_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(arg_2.x >> (42126u % 32u), ~global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), arg_2.x), _wgslsmith_div_u32(1u, ~u_input.a.x << (41359u % 32u))), 10690u, 1570u);
    let var_2 = !select(vec4<bool>((arg_2.x ^ var_1.x) == ~0u, false, !(arg_1.x && true), arg_1.x), vec4<bool>(!(-35759i != var_0.x), true, all(vec4<bool>(arg_3.b.x, true, arg_3.b.x, arg_3.a.x)), func_2(_wgslsmith_mod_u32(4294967295u, 1u))), all(vec2<bool>(any(arg_3.b), !arg_3.a.x)));
    var_0 = -vec4<i32>(i32(-1i) * -1i, abs(1i), u_input.c.x, max(_wgslsmith_mult_i32(-31131i, var_0.x), _wgslsmith_div_i32(16775i, _wgslsmith_sub_i32(var_0.x, 1932i))));
    let var_3 = (u_input.c.x <= u_input.c.x) || !select(any(vec2<bool>(true, true)), all(select(var_2, var_2, vec4<bool>(var_2.x, false, true, false))), all(!vec3<bool>(arg_1.x, false, arg_3.a.x)));
    return Struct_2(Struct_1(var_2.xx, !var_2.yxy, -1648f, ~_wgslsmith_dot_vec2_u32(vec2<u32>(20352u, global0[_wgslsmith_index_u32(var_1.x, 29u)]), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(0u, 29u)]), arg_2.yx))), arg_3, vec2<f32>(_wgslsmith_f_op_f32(691f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 1u)])), _wgslsmith_f_op_f32(-735f - _wgslsmith_f_op_f32(f32(-1f) * -994f))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    var var_0 = Struct_4(Struct_3(vec2<i32>(1i, -34836i), func_1(164f, !select(vec3<bool>(false, arg_0.a.b.x, arg_1), arg_0.a.b, vec3<bool>(false, arg_0.b.a.x, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1794u, 127053u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(arg_0.b.d, 29u)], 1u, 266u), vec3<u32>(arg_0.a.d, 80319u, arg_0.a.d)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 26022u), vec3<u32>(17193u, u_input.b, 35298u)), Struct_1(select(arg_0.b.b.zz, arg_0.b.a, arg_0.a.b.x), select(arg_0.b.b, arg_0.a.b, arg_0.a.b), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(arg_0.a.d, 1u)])), ~global0[_wgslsmith_index_u32(4294967295u, 29u)])), Struct_2(arg_0.b, func_1(arg_0.c.x, !arg_0.b.b, ~vec3<u32>(33731u, u_input.b, arg_0.a.d), arg_0.a).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.x, -606f), arg_0.c) + _wgslsmith_f_op_vec2_f32(-arg_0.c)))), -1000f);
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b.c))), var_0.a.c.a.b, ~vec3<u32>(global0[_wgslsmith_index_u32(82146u, 29u)], 4294967295u, abs(global0[_wgslsmith_index_u32(1u, 29u)])), arg_0.a).a;
    var_0 = Struct_4(Struct_3(var_0.a.a, var_0.a.c, Struct_2(var_0.a.b.a, Struct_1(func_1(global1[_wgslsmith_index_u32(6695u, 1u)], var_0.a.c.a.b, vec3<u32>(var_1.d, global0[_wgslsmith_index_u32(1u, 29u)], 22409u), var_1).a.b.zy, select(vec3<bool>(arg_1, false, arg_1), var_0.a.b.a.b, vec3<bool>(arg_1, true, true)), _wgslsmith_f_op_f32(round(553f)), firstLeadingBit(46301u)), arg_0.c)), 300f);
    return arg_0.b.c;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> StorageBuffer {
    var var_0 = (arg_1.d ^ 1u) ^ max(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 29u)], abs(global0[_wgslsmith_index_u32(41891u, 29u)])), 4294967295u);
    var_0 = u_input.a.x;
    global0 = array<u32, 29>();
    let var_1 = false;
    var var_2 = ~min(vec4<i32>(u_input.c.x, arg_2, min(_wgslsmith_mult_i32(arg_2, 77994i), _wgslsmith_clamp_i32(0i, u_input.c.x, arg_2)), -(i32(-1i) * -65100i)), min(~(vec4<i32>(u_input.c.x, -2147483647i, arg_2, arg_2) & vec4<i32>(u_input.c.x, -23209i, arg_2, u_input.c.x)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-13149i, u_input.c.x, arg_2, arg_2), vec4<i32>(92579i, u_input.c.x, u_input.c.x, arg_2), vec4<bool>(var_1, arg_1.a.x, false, var_1)), ~vec4<i32>(0i, u_input.c.x, arg_2, arg_2))));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-355f * 420f), -1000f, arg_1.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(1u, 1u)], -311f, arg_1.c)))))), vec3<f32>(_wgslsmith_div_f32(530f, -1501f), arg_1.c, 1739f), select(_wgslsmith_div_u32(firstTrailingBit(u_input.a.x), ~(1u | u_input.b)), ~func_1(_wgslsmith_f_op_f32(min(-1003f, -1829f)), !arg_1.b, vec3<u32>(62792u, 0u, u_input.b), arg_1).b.d, !var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1841f, -546f), _wgslsmith_div_vec2_f32(vec2<f32>(-188f, global1[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<f32>(arg_0, 317f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 1>();
    let var_0 = ~u_input.b;
    global1 = array<f32, 1>();
    let x = u_input.a;
    s_output = func_5(502f, Struct_1(!vec2<bool>(all(vec2<bool>(true, true)), true), vec3<bool>(true, (var_0 >= 4294967295u) & true, true), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(29740u, 15544u), 4294967295u, global0[_wgslsmith_index_u32(~97235u, 29u)]), 1u)] - _wgslsmith_f_op_f32(func_4(func_1(global1[_wgslsmith_index_u32(1u, 1u)], vec3<bool>(true, false, false), vec3<u32>(var_0, 1u, 0u), Struct_1(vec2<bool>(true, false), vec3<bool>(true, false, true), -684f, var_0)), any(vec2<bool>(true, true)), -u_input.c.x))), min(~abs(var_0), global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), min(firstLeadingBit(reverseBits(~2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.c.x, u_input.c.x, 32880i, 0i), vec4<i32>(14227i, u_input.c.x, -2147483647i, 2147483647i)), vec4<i32>(u_input.c.x, -50435i, u_input.c.x, 0i)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 20659i, u_input.c.x, -87605i), vec4<i32>(10042i, 12588i, u_input.c.x, u_input.c.x))))));
}

