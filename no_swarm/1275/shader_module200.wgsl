struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 28>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(19145i, -11465i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    return Struct_3(Struct_1(u_input.b.yz));
}

fn func_3(arg_0: bool) -> vec3<f32> {
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(~47408u, min((global0.x ^ global0.x) >> (global0.x % 32u), 20067u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(12774u, global0.x, 10207u, 35884u), _wgslsmith_sub_vec4_u32(vec4<u32>(104091u, 4294967295u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 14862u, global0.x)))), ~vec3<u32>(51380u, 73785u, ~(~0u)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 28u)] + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 28u)] - global1[_wgslsmith_index_u32(72321u, 28u)])) * -2010f))));
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0.x, 28u)], global1[_wgslsmith_index_u32(global0.x, 28u)]), 873f, _wgslsmith_f_op_f32(f32(-1f) * -2012f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(906f)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_0.x, 28u)], -614f)), _wgslsmith_f_op_f32(f32(-1f) * -1387f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, 1920f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_0.x, 28u)])))), select(arg_0, all(vec4<bool>(arg_0, false, false, arg_0)), false))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_4 {
    global2 = Struct_1(max(-_wgslsmith_add_vec2_i32(global2.a, global2.a) << (_wgslsmith_mult_vec2_u32(vec2<u32>(10026u, global0.x), vec2<u32>(4294967295u, 4294967295u) ^ vec2<u32>(arg_3.a, arg_3.a)) % vec2<u32>(32u)), reverseBits(vec2<i32>(-2147483647i ^ u_input.c.x, -44228i))));
    global1 = array<f32, 28>();
    global0 = firstLeadingBit(((vec3<u32>(41225u, arg_3.a, 47716u) << (reverseBits(vec3<u32>(global0.x, 5850u, arg_3.a)) % vec3<u32>(32u))) << ((_wgslsmith_mult_vec3_u32(vec3<u32>(arg_3.a, arg_3.a, global0.x), vec3<u32>(0u, 1u, global0.x)) & vec3<u32>(arg_3.a, 78912u, global0.x)) % vec3<u32>(32u))) | vec3<u32>(~(~global0.x), ~1u, 0u));
    global0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(global0.x, global0.x), ~12849u), ~0u, reverseBits(_wgslsmith_add_u32(0u, global0.x))), select(vec3<u32>(select(1u, 0u, false), global0.x, ~4294967295u), vec3<u32>(1u, _wgslsmith_mult_u32(0u, 4294967295u), global0.x), arg_2)), abs(_wgslsmith_add_vec3_u32(~(~vec3<u32>(22004u, 42891u, 62678u)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global0.x, global0.x, arg_3.a), vec3<u32>(4294967295u, 4294967295u, 30230u))))));
    let var_0 = !select(arg_2.yz, vec2<bool>(_wgslsmith_sub_i32(arg_0.a.a.x, 0i) == -6661i, arg_2.x), arg_2.zx);
    return Struct_4(_wgslsmith_f_op_vec3_f32(arg_3.c - vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0.x, 28u)], global1[_wgslsmith_index_u32(arg_3.a, 28u)])))), 140f, arg_1.x)));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec2<u32>) -> Struct_3 {
    global1 = array<f32, 28>();
    let var_0 = _wgslsmith_mult_u32(~(~min(arg_2.x, arg_1) ^ global0.x), 0u);
    global2 = func_2(Struct_2(arg_2.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-13923i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.b.x, 0i, 1i, -20973i) | vec4<i32>(global2.a.x, -1i, global2.a.x, 2147483647i)), u_input.a), arg_0.a)).a;
    let var_1 = arg_0.a;
    global2 = func_2(Struct_2(max(~32377u, var_0), global2.a.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a)))))).a;
    return func_2(Struct_2(_wgslsmith_sub_u32(4294967295u, arg_2.x), 2147483647i << (var_0 % 32u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(var_0, 28u)], var_1.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(2001f, -1000f, var_1.x) - arg_0.a)))))));
}

fn func_1(arg_0: Struct_2) -> Struct_3 {
    global2 = Struct_1(~(~select(vec2<i32>(arg_0.b, arg_0.b), -u_input.c.xx, vec2<bool>(true, true))));
    let var_0 = vec4<i32>(~max(abs(~46905i), 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-30883i, i32(-1i) * -5725i, abs(1i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 42294i, 44611i) << (vec3<u32>(arg_0.a, 8704u, 56483u) % vec3<u32>(32u)), ~u_input.c)), 28351i, _wgslsmith_add_i32(arg_0.b, ~(select(arg_0.b, 36990i, true) >> (global0.x % 32u))));
    return func_5(func_4(func_2(Struct_2(1u, ~arg_0.b, vec3<f32>(global1[_wgslsmith_index_u32(arg_0.a, 28u)], global1[_wgslsmith_index_u32(12874u, 28u)], arg_0.c.x))), _wgslsmith_f_op_vec3_f32(func_3(true)), vec3<bool>(true, true, 0u >= _wgslsmith_mod_u32(1u, arg_0.a)), arg_0), firstLeadingBit(_wgslsmith_div_u32(select(0u, abs(global0.x), true), ~global0.x)), _wgslsmith_add_vec2_u32(~global0.yz, ~global0.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_2(_wgslsmith_clamp_u32(45338u, _wgslsmith_sub_u32(0u, global0.x) | abs(0u), global0.x), 0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(13331u, 28u)], global1[_wgslsmith_index_u32(global0.x, 28u)], global1[_wgslsmith_index_u32(28771u, 28u)])))));
    var var_1 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(4294967295u, global0.x))), ~(~global0.x)) << (4294967295u % 32u), -1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), vec3<f32>(-911f, _wgslsmith_f_op_f32(min(1039f, global1[_wgslsmith_index_u32(16621u, 28u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 28u)])))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, -149f, global1[_wgslsmith_index_u32(1u, 28u)]) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 28u)], -1184f, global1[_wgslsmith_index_u32(global0.x, 28u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(175f, -575f, global1[_wgslsmith_index_u32(global0.x, 28u)]), vec3<f32>(246f, 636f, 300f), vec3<bool>(true, true, false)))))));
    global0 = ~vec3<u32>(0u, 1u, var_1.a);
    let var_2 = _wgslsmith_f_op_f32(sign(-879f));
    global2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(59524u, global0.x), 28u)], _wgslsmith_f_op_f32(select(var_2, global1[_wgslsmith_index_u32(1u, 28u)], true)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_1.a, 28u)])), _wgslsmith_f_op_f32(abs(var_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -1660f, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(global0.x, 28u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, global1[_wgslsmith_index_u32(var_1.a, 28u)], 110f, var_1.c.x) + vec4<f32>(-629f, var_1.c.x, var_1.c.x, -874f))), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, false))) - vec4<f32>(715f, var_2, var_2, _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(abs(var_1.c.x))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * var_2)), global1[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, -1066f, var_1.c.x, global1[_wgslsmith_index_u32(1u, 28u)]), vec4<f32>(-427f, -1000f, -322f, -1822f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.c.x, global1[_wgslsmith_index_u32(4294967295u, 28u)], var_2, var_1.c.x), vec4<f32>(745f, var_1.c.x, var_2, var_2))))), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(-1i, var_1.b, 51556i), u_input.c));
}

