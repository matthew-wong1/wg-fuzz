struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 31>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(countOneBits(11478i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -670i, u_input.b), vec3<i32>(16736i, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(arg_3.x, 31u)])), global1[_wgslsmith_index_u32(~global0.b.x, 31u)], _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(0u, 31u)], -11992i))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(-361i, u_input.b, u_input.b, global1[_wgslsmith_index_u32(25740u, 31u)])), abs(vec4<i32>(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-25812i, u_input.b), vec2<i32>(global1[_wgslsmith_index_u32(5602u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), ~global1[_wgslsmith_index_u32(arg_2.b.x, 31u)], ~(-13623i)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(-249f)), -930f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.x, global0.c.x))))))), vec3<u32>(~arg_2.b.x, arg_2.b.x & _wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_add_u32(~global0.b.x, ~_wgslsmith_clamp_u32(1u, arg_2.b.x, 4294967295u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x - 534f)), _wgslsmith_f_op_f32(805f * _wgslsmith_div_f32(-1432f, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c.x, -1313f)) - _wgslsmith_div_f32(-522f, arg_0.x))) * global0.c));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(-var_1.a.x);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1609f) - -2304f), arg_0.x, arg_0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_1.a, vec3<f32>(arg_0.x, 1114f, global0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, -933f, arg_2.a.x) - vec3<f32>(-1230f, arg_2.c.x, 1432f)))) + _wgslsmith_f_op_vec3_f32(abs(global0.a)))), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.b.yx, vec2<u32>(global0.b.x, 44993u)), _wgslsmith_mod_u32(arg_2.b.x, var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4925u, 1u, 37520u), u_input.c.yyy)), abs(firstLeadingBit(vec3<u32>(global0.b.x, 51263u, global0.b.x))))), var_1.c);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3171f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - var_1.a.x)), 1259f))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1502f + arg_2.a.x), 202f)), _wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(var_3 + var_1.a.x)), var_2.x)), global0.c.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -626f)))), vec4<bool>(var_2.x, var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1370f - -231f))) == _wgslsmith_f_op_f32(-arg_2.a.x), false)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(arg_0.x, -196f), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false)), arg_1, u_input.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)));
    var_0 = arg_0;
    var var_1 = vec4<u32>(4294967295u, 4294967295u, ~arg_1.b.x, u_input.c.x);
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.x))), arg_1.c.x), 729f, _wgslsmith_f_op_f32(-653f * -101f))));
    var var_2 = reverseBits(-1i) << (abs(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(65451u, 30465u, var_1.x)), countOneBits(vec3<u32>(var_1.x, 4294967295u, var_1.x)))) % 32u);
    return _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(~reverseBits(~var_1.x), arg_1.b.x | 1u, ~(~(~1u)), 98664u));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, ~firstLeadingBit(firstTrailingBit(48471u)), 4294967295u, 25022u | reverseBits(u_input.a)), func_2(global0.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global0.c.x + 878f), global0.c.x, _wgslsmith_f_op_f32(627f * global0.c.x)), ~countOneBits(global0.b), vec4<f32>(1f, _wgslsmith_f_op_f32(-global0.c.x), -1972f, -420f))));
    global0 = Struct_1(global0.c.wxy, ~max(vec3<u32>(func_2(vec4<f32>(global0.c.x, global0.c.x, 904f, global0.a.x), Struct_1(global0.a, vec3<u32>(0u, var_0.x, 12385u), vec4<f32>(-142f, 1121f, 645f, 394f))).x, _wgslsmith_add_u32(4294967295u, u_input.c.x), u_input.a), countOneBits(func_2(vec4<f32>(-1560f, 252f, 1832f, global0.a.x), Struct_1(global0.c.yyx, u_input.c.wwz, global0.c)).wyx)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -967f, global0.a.x, global0.c.x) + global0.c))), vec4<f32>(-252f, 1000f, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), _wgslsmith_f_op_f32(global0.c.x + global0.a.x))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(ceil(global0.a)));
    var var_2 = ~global0.b.x;
    let var_3 = vec3<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1288f)), 886f, _wgslsmith_f_op_f32(global0.c.x - global0.c.x));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 31>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -1402f)));
    var var_1 = abs(1u);
    let var_2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(u_input.b, -2492i)), max(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c.x, 31u)], global1[_wgslsmith_index_u32(global0.b.x, 31u)]), -22229i), abs(global1[_wgslsmith_index_u32(func_2(vec4<f32>(-1100f, global0.a.x, global0.a.x, 107f), Struct_1(global0.c.zwy, u_input.c.xyw, global0.c)).x, 31u)]))), vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(~(~(18268u & global0.b.x)), 31u)], u_input.b, -2147483647i));
    let var_3 = Struct_1(global0.c.wyz, vec3<u32>(select(4294967295u, ~(~4294967295u), true), u_input.c.x, ~43273u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(460f, var_0))), _wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(global0.c.zy, vec3<bool>(false, true, true), Struct_1(vec3<f32>(global0.c.x, global0.c.x, global0.a.x), vec3<u32>(1u, 46014u, 0u), global0.c), u_input.c)).x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)), var_0))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, global0.b.x ^ global0.b.x), global0.b.x, var_3.b.x), 31u)], abs(1i ^ -global1[_wgslsmith_index_u32(u_input.c.x, 31u)])), var_3.c);
}

