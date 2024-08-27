struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 0u);

var<private> global2: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    global1 = _wgslsmith_add_vec2_u32(vec2<u32>(~26514u >> (global1.x % 32u), ~global1.x), reverseBits(reverseBits(u_input.c)) << ((u_input.c ^ _wgslsmith_mult_vec2_u32(u_input.c, u_input.c)) % vec2<u32>(32u)));
    var var_0 = !(!(!(!arg_3))) && arg_1.c.x;
    global2 = array<vec4<bool>, 2>();
    let var_1 = ~vec4<u32>(~(~62623u & u_input.a), firstLeadingBit(u_input.c.x), ~global1.x, 5035u);
    var var_2 = Struct_1(vec2<i32>(27389i, _wgslsmith_mult_i32(u_input.b.x, (arg_1.a.x & u_input.b.x) | _wgslsmith_div_i32(2147483647i, u_input.b.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.b, arg_1.b, !arg_2)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_1.b)), arg_1.b)), arg_1.b)), vec4<bool>(true, 472f < _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) - 358f), true, arg_3));
    return ~4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> vec2<i32> {
    let var_0 = any(global2[_wgslsmith_index_u32(1u, 2u)]);
    return -u_input.b.yx;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = 0i;
    let var_2 = !select(!var_0.c, vec4<bool>(any(vec4<bool>(var_0.c.x, arg_1.c.x, arg_0.x, true)) || var_0.c.x, false & arg_0.x, arg_0.x, arg_0.x), arg_1.c.x);
    var var_3 = Struct_1(~func_3(arg_1, vec2<i32>(_wgslsmith_mult_i32(1i, -2147483647i), ~u_input.b.x), func_2(arg_1.b.x, arg_1, vec3<bool>(var_2.x, true, false), false) >> (u_input.a % 32u)), arg_1.b, vec4<bool>(~15453i < -arg_2, any(!(!vec2<bool>(true, arg_1.c.x))), !(arg_1.a.x != -1i), abs(-1i) != _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2, -1i, -24473i), u_input.b))));
    let var_4 = var_0.b.x;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global2 = array<vec4<bool>, 2>();
    var var_0 = !arg_0.c.zyw;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-184f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(104f, arg_0.b.x), _wgslsmith_f_op_f32(step(arg_0.b.x, 1994f))))))) - _wgslsmith_f_op_f32(trunc(arg_1.x)));
    var var_2 = select(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.x, u_input.c.x), abs(11071u)), _wgslsmith_div_u32(75603u, _wgslsmith_mod_u32(9641u, u_input.a)), (61133u ^ u_input.c.x) >> (~global1.x % 32u), 9812u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(global1.x, 0u), firstLeadingBit(global1.x)), countOneBits(~0u), global1.x, 4294967295u), var_0.x) >> ((select(vec4<u32>(1u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 62346u, global1.x), vec3<u32>(global1.x, u_input.c.x, u_input.a)), ~global1.x), vec4<u32>(1u, 3099u, min(u_input.a, global1.x), ~u_input.a), !func_1(var_0.yz, arg_0, -8038i).c) & ~(~abs(vec4<u32>(u_input.a, u_input.c.x, global1.x, 0u)))) % vec4<u32>(32u));
    let var_3 = func_1(vec2<bool>(!(arg_0.c.x & any(arg_0.c)), arg_0.c.x), Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(-1i, u_input.b.x), arg_0.a), _wgslsmith_f_op_vec3_f32(-arg_0.b), vec4<bool>(func_1(!vec2<bool>(var_0.x, true), func_1(vec2<bool>(var_0.x, var_0.x), arg_0, 1318i), u_input.b.x).c.x, any(arg_0.c), !var_0.x, arg_0.c.x)), _wgslsmith_clamp_i32(u_input.b.x ^ u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-22056i, _wgslsmith_div_i32(-38978i, 41760i), 2147483647i, 1i), vec4<i32>(reverseBits(u_input.b.x), 1i, countOneBits(14366i), i32(-1i) * -17229i)), min(-1i, abs(abs(-1i))))).c.x;
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> StorageBuffer {
    global1 = ~(select(~(~vec2<u32>(13888u, global1.x)), vec2<u32>(1678u, u_input.a), arg_0.c.zx) | vec2<u32>(global1.x, 1u));
    global2 = array<vec4<bool>, 2>();
    var var_0 = -1417i;
    global2 = array<vec4<bool>, 2>();
    global1 = u_input.c;
    return StorageBuffer(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 8603u, 2968u), vec3<u32>(u_input.c.x, 11611u, global1.x))) << ((vec3<u32>(global1.x, ~global1.x, 487u) & _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 4294967295u, 39987u), abs(vec3<u32>(4294967295u, 16805u, u_input.a)))) % vec3<u32>(32u)), reverseBits(vec2<u32>(u_input.c.x, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 2>();
    var var_0 = -1341f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-144f + -656f) * _wgslsmith_f_op_f32(ceil(593f))))));
    global0 = array<vec4<bool>, 32>();
    let var_1 = Struct_1(firstTrailingBit(u_input.b.zx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(992f, -141f, -1121f), vec3<f32>(-1291f, -342f, -962f), vec3<bool>(true, true, false))), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-423f, 1337f, -1366f)))))), vec4<bool>(all(vec2<bool>(true, true)), select(37170i >> (global1.x % 32u), u_input.b.x, true) >= ((-18339i << (u_input.a % 32u)) << (abs(u_input.a) % 32u)), false, true));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(411f))) - _wgslsmith_f_op_f32(-var_1.b.x));
    let x = u_input.a;
    s_output = func_5(func_4(func_1(var_1.c.xx, var_1, _wgslsmith_div_i32(34371i | u_input.b.x, 18634i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x - -670f), _wgslsmith_div_f32(var_2, 807f)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-278f)), -766f))), Struct_1(_wgslsmith_sub_vec2_i32(-(u_input.b.zy ^ vec2<i32>(0i, 1i)), ~var_1.a), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, 734f), _wgslsmith_f_op_f32(-var_1.b.x))), var_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.x - -1419f)))), global0[_wgslsmith_index_u32(global1.x, 32u)]));
}

