struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: array<i32, 9>;

var<private> global2: array<f32, 27>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec3<f32> {
    var var_0 = ~(~vec2<u32>(firstLeadingBit(u_input.b), arg_0) << (_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, arg_0)) << (vec2<u32>(0u, arg_0) % vec2<u32>(32u)), ~(vec2<u32>(u_input.b, arg_0) ^ vec2<u32>(u_input.c, u_input.b))) % vec2<u32>(32u)));
    let var_1 = -(~countOneBits(vec3<i32>(-44799i, global1[_wgslsmith_index_u32(arg_0, 9u)], global1[_wgslsmith_index_u32(22481u, 9u)])) & _wgslsmith_add_vec3_i32(abs(firstTrailingBit(vec3<i32>(global1[_wgslsmith_index_u32(75407u, 9u)], global1[_wgslsmith_index_u32(arg_0, 9u)], 2147483647i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-2046i, global1[_wgslsmith_index_u32(9044u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), _wgslsmith_div_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(3270u, 9u)], 43300i, global1[_wgslsmith_index_u32(49942u, 9u)]), vec3<i32>(1i, -2147483647i, 0i)))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, _wgslsmith_add_i32(1i, global1[_wgslsmith_index_u32(var_0.x, 9u)]), -var_1.x) << (((vec3<u32>(arg_0, var_0.x, u_input.b) & _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, arg_0, var_0.x), vec3<u32>(79591u, 1u, var_0.x))) ^ ~vec3<u32>(4294967295u, u_input.b, var_0.x)) % vec3<u32>(32u)), select(var_1, abs(vec3<i32>(~global1[_wgslsmith_index_u32(u_input.b, 9u)], var_1.x << (arg_0 % 32u), ~0i)), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], false, global0[_wgslsmith_index_u32(100575u, 3u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(5214u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]), vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 3u)], true, global0[_wgslsmith_index_u32(29574u, 3u)]), false), true), vec3<bool>(!global0[_wgslsmith_index_u32(arg_0, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 40728u), 3u)], global0[_wgslsmith_index_u32(1u, 3u)] && global0[_wgslsmith_index_u32(var_0.x, 3u)]), !select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0, 3u)], false), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), global0[_wgslsmith_index_u32(28743u, 3u)]))));
    global0 = array<bool, 3>();
    let var_3 = var_1.x;
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f + _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 27u)], global2[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(0u, 3u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global2[_wgslsmith_index_u32(abs(4294967295u), 27u)])) * _wgslsmith_f_op_f32(346f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 27u)] * 394f))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(ceil(1550f)))))));
}

fn func_4(arg_0: u32, arg_1: vec3<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_div_u32(firstLeadingBit(0u), 4294967295u);
    global1 = array<i32, 9>();
    var var_1 = ~arg_0;
    global0 = array<bool, 3>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 3u)];
    return max(vec4<i32>(17814i, global1[_wgslsmith_index_u32(1u, 9u)], min(global1[_wgslsmith_index_u32(arg_0, 9u)] | -global1[_wgslsmith_index_u32(arg_0, 9u)], -(global1[_wgslsmith_index_u32(0u, 9u)] ^ global1[_wgslsmith_index_u32(28617u, 9u)])), -global1[_wgslsmith_index_u32(~u_input.b, 9u)]), ~vec4<i32>(-16136i, (global1[_wgslsmith_index_u32(arg_0, 9u)] & -753i) >> (max(u_input.c, arg_0) % 32u), -18165i, -countOneBits(8157i)));
}

fn func_2() -> f32 {
    global0 = array<bool, 3>();
    var var_0 = Struct_3(Struct_1(~(~firstLeadingBit(vec3<u32>(59159u, 0u, 1u))), u_input.a, 887f, func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), vec3<u32>(1u, u_input.b, u_input.b) ^ vec3<u32>(19081u, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 27u)], -525f, 353f) - _wgslsmith_f_op_vec3_f32(func_3(6675u)))), vec4<bool>(select(-1691f == global2[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(1u, 3u)], false), true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4794u, 16527u), 3u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a ^ 0u), 3u)])));
    var var_1 = Struct_1(~((var_0.a.a << (vec3<u32>(u_input.b, u_input.c, u_input.b) % vec3<u32>(32u))) << (vec3<u32>(var_0.a.b, ~0u, u_input.a & 1u) % vec3<u32>(32u))), 2157u, _wgslsmith_f_op_f32(var_0.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 27u)])) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(83249u, 27u)] - 938f)))), var_0.a.d, var_0.a.e);
    var var_2 = Struct_2(var_0.a, 1u, var_0.a, var_0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.a.c + var_0.a.c), _wgslsmith_f_op_f32(var_2.a.c + 1000f), _wgslsmith_f_op_f32(ceil(var_2.a.c)), -493f)), vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3(u_input.a)).x, 807f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.c, global2[_wgslsmith_index_u32(1u, 27u)]), 1000f)), var_1.e.x)));
    return global2[_wgslsmith_index_u32(4294967295u, 27u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) <= -235f), abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(arg_1.x, arg_1.x))) <= (32582u | arg_0.x), false);
    let var_1 = vec2<bool>(any(vec4<bool>(var_0.x, true, all(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 3u)], var_0.x, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 3u)], true, true), global0[_wgslsmith_index_u32(1u, 3u)])), all(!vec4<bool>(false, global0[_wgslsmith_index_u32(61048u, 3u)], false, var_0.x)))), !(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1238f, global2[_wgslsmith_index_u32(arg_0.x, 27u)]))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 27u)])))));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-162f, global2[_wgslsmith_index_u32(u_input.c, 27u)]))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1420f, global2[_wgslsmith_index_u32(arg_0.x, 27u)]))))), vec2<f32>(_wgslsmith_f_op_f32(func_2()), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_0.x, 25204u, arg_1.x), 27u)]))), vec2<f32>(-896f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(0u)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(arg_1.x, 27u)], global2[_wgslsmith_index_u32(u_input.b, 27u)])) + _wgslsmith_f_op_f32(round(-1861f))))));
    let var_3 = vec2<u32>(u_input.a, ~arg_0.x);
    global1 = array<i32, 9>();
    return firstTrailingBit(arg_0.x);
}

fn func_5(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4) -> StorageBuffer {
    global1 = array<i32, 9>();
    let var_0 = !(!(false && arg_2.c.c.e.x));
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.c))))))), firstTrailingBit(arg_2.c.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 27>();
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    global1 = array<i32, 9>();
    var var_0 = ~vec2<u32>(62514u, ~(u_input.c << (1u % 32u)));
    var_0 = ~((~abs(vec2<u32>(1u, 18196u)) ^ ~vec2<u32>(u_input.a, 21025u)) ^ _wgslsmith_sub_vec2_u32(select(abs(vec2<u32>(9543u, var_0.x)), ~vec2<u32>(u_input.b, 0u), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(false, false), false)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, 25347u) >> (vec2<u32>(163877u, 4294967295u) % vec2<u32>(32u)), select(vec2<u32>(13185u, 0u), vec2<u32>(0u, u_input.b), vec2<bool>(false, global0[_wgslsmith_index_u32(15618u, 3u)])))));
    global2 = array<f32, 27>();
    let x = u_input.a;
    s_output = func_5(!(!(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], true)))), all(vec4<bool>(43657u <= func_1(vec3<u32>(5027u, 1u, var_0.x), vec4<u32>(1u, 3798u, 1471u, var_0.x)), all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(0u, 3u)])), global0[_wgslsmith_index_u32(u_input.c, 3u)], false)), Struct_4(!(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a, u_input.c, var_0.x), vec4<u32>(var_0.x, var_0.x, 100211u, var_0.x)), 27u)] == global2[_wgslsmith_index_u32(u_input.b, 27u)]), Struct_1(vec3<u32>(~var_0.x, select(1u, 46922u, global0[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_div_u32(u_input.b, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a, var_0.x), u_input.a >> (var_0.x % 32u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c, 27u)] + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.x, 27u)])), abs(-vec4<i32>(2147483647i, -2147483647i, -1i, 2147483647i)), vec4<bool>(false, true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 3u)], false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.a, u_input.b), vec3<u32>(1u, var_0.x, u_input.c)), 3u)])), Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 31535u, var_0.x), vec3<u32>(0u, var_0.x, 62590u), vec3<u32>(var_0.x, 0u, 0u)), 0u, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.a, 27u)])), ~vec4<i32>(global1[_wgslsmith_index_u32(u_input.a, 9u)], -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 9u)], 9143i), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 3u)], false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(37488u, 3u)]), global0[_wgslsmith_index_u32(132745u, 3u)])), _wgslsmith_mult_u32(u_input.a, 89736u), Struct_1(vec3<u32>(var_0.x, u_input.b, var_0.x), var_0.x | 4294967295u, -1426f, _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], -1i, global1[_wgslsmith_index_u32(var_0.x, 9u)]), vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 9u)], -1228i, 1i, global1[_wgslsmith_index_u32(0u, 9u)])), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 3u)], true), vec4<bool>(true, false, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)], false))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(18189u, u_input.b, u_input.a), vec3<u32>(u_input.a, u_input.a, 52151u)), var_0.x, _wgslsmith_f_op_f32(func_2()), vec4<i32>(global1[_wgslsmith_index_u32(18714u, 9u)], 84249i, -1i, global1[_wgslsmith_index_u32(var_0.x, 9u)]), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(43193u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(11601u, 3u)], true, global0[_wgslsmith_index_u32(68161u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), false)))));
}

