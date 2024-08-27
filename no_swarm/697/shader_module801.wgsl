struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: array<vec2<bool>, 30>;

var<private> global2: i32;

var<private> global3: i32 = -1i;

var<private> global4: u32 = 49989u;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<bool> {
    global3 = u_input.b.x;
    global0 = array<f32, 6>();
    global3 = 0i;
    var var_0 = arg_2;
    return select(vec4<bool>(arg_2.b, true, var_0.b, select(false, true, false)), select(!(!select(vec4<bool>(var_0.b, arg_2.b, false, var_0.b), vec4<bool>(false, var_0.b, false, true), vec4<bool>(true, false, var_0.b, arg_1))), vec4<bool>(false & arg_1, _wgslsmith_f_op_f32(335f * arg_0) != _wgslsmith_f_op_f32(arg_0 * global0[_wgslsmith_index_u32(4294967295u, 6u)]), !(!arg_2.b), all(select(vec3<bool>(false, true, var_0.b), vec3<bool>(true, false, false), false))), !vec4<bool>(!var_0.b, true, true, false)), !select(!select(vec4<bool>(false, var_0.b, true, arg_2.b), vec4<bool>(arg_1, arg_1, true, false), true), vec4<bool>(all(vec4<bool>(true, arg_1, arg_1, true)), any(vec3<bool>(false, false, var_0.b)), all(vec2<bool>(false, arg_1)), any(vec2<bool>(var_0.b, var_0.b))), false));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_0, ((arg_1 != ~22011i) != true) || all(select(vec4<bool>(true, true, true, true), func_3(global0[_wgslsmith_index_u32(1u, 6u)], true, Struct_1(vec4<i32>(19180i, -15095i, arg_2, 1i), false, vec3<u32>(u_input.d.x, 42755u, u_input.d.x))), true)), firstLeadingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 43284u) & vec3<u32>(11733u, u_input.d.x, 22173u), firstLeadingBit(vec3<u32>(u_input.d.x, u_input.d.x, 0u))), vec3<u32>(u_input.d.x | 90u, 18522u, u_input.d.x), _wgslsmith_div_i32(arg_1, u_input.a.x) <= _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, 17429i, -2147483647i), vec3<i32>(arg_2, u_input.a.x, arg_2)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-122f, global0[_wgslsmith_index_u32(var_0.c.x, 6u)], -735f, 849f))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(20527u, 6u)]), _wgslsmith_f_op_f32(f32(-1f) * -852f), global0[_wgslsmith_index_u32(u_input.d.x, 6u)], -322f), false)))), all(vec4<bool>(true, var_0.b, all(!vec4<bool>(var_0.b, true, false, false)), any(select(vec4<bool>(true, var_0.b, false, false), vec4<bool>(var_0.b, var_0.b, false, var_0.b), var_0.b)))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -8438i, arg_2), -_wgslsmith_clamp_vec3_i32(u_input.b.yxx, vec3<i32>(u_input.c, arg_2, 20748i), u_input.b.yyx)), vec3<i32>(-arg_1, ~u_input.a.x, -857i) ^ (vec3<i32>(-1i) * -vec3<i32>(arg_2, arg_0.x, arg_1))));
    var var_2 = _wgslsmith_sub_u32(18956u, _wgslsmith_div_u32(~1u, 1u) | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, u_input.d.x, 29566u, var_0.c.x) ^ abs(vec4<u32>(u_input.d.x, u_input.d.x, var_0.c.x, 4294967295u)), ~(~vec4<u32>(6324u, 0u, var_0.c.x, 1u))));
    let var_3 = u_input.d.x;
    let var_4 = !all(!(!select(vec3<bool>(true, true, var_0.b), vec3<bool>(false, var_1.b, false), var_1.b)));
    return var_0;
}

fn func_1() -> u32 {
    let var_0 = func_2(u_input.b, abs(u_input.c), ~2147483647i);
    let var_1 = vec3<u32>(~(var_0.c.x << (4294967295u % 32u)), abs(73213u), u_input.d.x);
    let var_2 = all(vec3<bool>(func_2(var_0.a, var_0.a.x, u_input.b.x).b, var_0.b, global0[_wgslsmith_index_u32(var_0.c.x >> (var_1.x % 32u), 6u)] > global0[_wgslsmith_index_u32(var_0.c.x, 6u)]));
    global2 = 261i;
    var var_3 = global0[_wgslsmith_index_u32(var_1.x, 6u)];
    return _wgslsmith_mod_u32(var_1.x, abs(var_0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(_wgslsmith_sub_u32(abs(u_input.d.x), u_input.d.x));
    var var_1 = ~(~vec4<u32>(19593u, func_1(), 0u, ~select(u_input.d.x, 47632u, false)));
    let var_2 = Struct_1(vec4<i32>(2147483647i, abs(-(i32(-1i) * -39960i)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-11002i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.c, 6780i, -2147483647i), u_input.b), -2147483647i, ~(-2147483647i)), ~u_input.b), -2147483647i), false, ~max(vec3<u32>(u_input.d.x, firstTrailingBit(var_1.x), func_1()), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 32612u, 22738u), var_1.zzy))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_clamp_u32(1u, 0u, u_input.d.x & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), var_2.c))), vec4<f32>(-1460f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-342f, _wgslsmith_div_f32(987f, 1000f))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(33871u, 6u)], _wgslsmith_f_op_f32(f32(-1f) * -1230f)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, 30545u), 6u)]), ~(-(vec2<i32>(var_2.a.x, 62165i) ^ vec2<i32>(var_2.a.x, u_input.b.x))), 781f, var_2.a);
}

