struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-292f, -689f, -921f, -562f);

var<private> global1: u32;

var<private> global2: Struct_4;

var<private> global3: array<bool, 9>;

var<private> global4: array<vec3<u32>, 14>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    global1 = 4294967295u;
    global1 = global2.a.x;
    var var_0 = ~firstTrailingBit(reverseBits(select(vec3<u32>(arg_2.x, 34930u, u_input.a), ~global4[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, global2.a.x), arg_2), 9u)])));
    return arg_2.x;
}

fn func_2() -> Struct_2 {
    let var_0 = min(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_div_i32(2147483647i, -1i), i32(-1i) * -17052i, 1i, firstTrailingBit(0i))) ^ ~(-2147483647i), _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 22843i, -1i), vec3<i32>(25309i, 11027i, -2147483647i)), vec3<i32>(2147483647i, 0i, -54085i)) << (func_3(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-505f * global0.x), global2.a | vec3<u32>(global2.a.x, u_input.b, 0u)) % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(34273i, 2147483647i, -2147483647i, 29709i), vec4<i32>(-32872i, -1i, 8691i, 0i), -vec4<i32>(-91719i, 82641i, 11042i, 39543i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 2147483647i, 2147483647i, -14474i), _wgslsmith_add_vec4_i32(vec4<i32>(-22646i, 6493i, -12768i, -2147483647i), vec4<i32>(-3i, 36715i, 1i, 50204i)), min(vec4<i32>(1i, -40574i, 2147483647i, -1i), vec4<i32>(-8250i, -1i, -1i, 1i))))));
    global2 = Struct_4(firstTrailingBit(vec3<u32>(global2.a.x, ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.a, global2.a.x, 0u), vec4<u32>(129442u, u_input.b, global2.a.x, u_input.a)))));
    let var_1 = Struct_4(vec3<u32>(global2.a.x, u_input.a >> (_wgslsmith_sub_u32(4294967295u | u_input.b, 20454u) % 32u), global2.a.x << (u_input.b % 32u)));
    let var_2 = vec2<i32>(countOneBits(~(-var_0 | firstLeadingBit(var_0))), -var_0);
    let var_3 = -vec4<i32>(~firstTrailingBit(var_2.x), var_0, reverseBits(2147483647i), -var_2.x) & _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, var_0, -33958i, 26996i), vec4<i32>(-2147483647i, 7781i, var_2.x, 42523i)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -42377i, var_2.x, 0i), vec4<i32>(2147483647i, var_0, var_0, -46666i)), countOneBits(vec4<i32>(23440i, -1i, 0i, -1i)))), ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0, -42025i, 0i, -38780i), vec4<i32>(var_0, var_0, 17490i, var_2.x)), vec4<i32>(var_0, var_0, var_2.x, 546i)));
    return Struct_2(firstLeadingBit(-(2147483647i >> (u_input.a % 32u))), vec4<u32>(global2.a.x, firstTrailingBit(4294967295u), ~(~u_input.a), 1u), _wgslsmith_sub_u32(max(var_1.a.x, u_input.b), ~(firstTrailingBit(global2.a.x) >> (abs(u_input.b) % 32u))), _wgslsmith_mod_vec2_u32(var_1.a.yy, var_1.a.yx ^ ~_wgslsmith_add_vec2_u32(global2.a.xy, global2.a.zz)));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: f32) -> f32 {
    let var_0 = func_2();
    let var_1 = global3[_wgslsmith_index_u32(18462u, 9u)] | global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~(~0u)), arg_0.a.x), 9u)];
    global1 = u_input.b;
    let var_2 = arg_0;
    let var_3 = ~(~vec2<u32>(77331u, ~u_input.a));
    return _wgslsmith_f_op_f32(-arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(global2.a), vec4<bool>(false, false, global3[_wgslsmith_index_u32(global2.a.x, 9u)], false), global0.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(trunc(1121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f + _wgslsmith_f_op_f32(abs(global0.x))))));
    let var_0 = Struct_1(select(vec4<i32>(1i, 1i, 1i, 1i), abs(firstTrailingBit(select(vec4<i32>(13890i, 1i, -9753i, -1i), vec4<i32>(-29143i, 55361i, 76500i, -2147483647i), vec4<bool>(global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(global2.a.x, 9u)], false, global3[_wgslsmith_index_u32(9599u, 9u)])))), select(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(global2.a.x, 9u)], false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(28995u, 9u)], global3[_wgslsmith_index_u32(global2.a.x, 9u)]), global3[_wgslsmith_index_u32(global2.a.x, 9u)] || global3[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(false, any(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 9u)])), global2.a.x >= 1u, true), select(!vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 9u)], true, global3[_wgslsmith_index_u32(u_input.b, 9u)]), !vec4<bool>(global3[_wgslsmith_index_u32(75241u, 9u)], global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(0u, 9u)], true), false))), vec2<i32>(1i, 1i) >> ((func_2().d | reverseBits(vec2<u32>(global2.a.x, global2.a.x))) % vec2<u32>(32u)), select(vec3<bool>(all(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 9u)], global3[_wgslsmith_index_u32(176u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)])), global3[_wgslsmith_index_u32(func_2().b.x, 9u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(33545u, global2.a.x), 9u)] || (true && global3[_wgslsmith_index_u32(global2.a.x, 9u)])), !select(select(vec3<bool>(global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(u_input.b, 9u)], true), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 9u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 9u)], global3[_wgslsmith_index_u32(global2.a.x, 9u)])), select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(50127u, 9u)], true), true), vec3<bool>(global3[_wgslsmith_index_u32(27771u, 9u)], false, false)), select(!select(vec3<bool>(global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 9u)], false, global3[_wgslsmith_index_u32(global2.a.x, 9u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2.a.x, 9u)], global3[_wgslsmith_index_u32(u_input.a, 9u)], true)), select(vec3<bool>(true, false, false), !vec3<bool>(global3[_wgslsmith_index_u32(63406u, 9u)], true, true), any(vec3<bool>(true, global3[_wgslsmith_index_u32(3324u, 9u)], global3[_wgslsmith_index_u32(global2.a.x, 9u)]))), vec3<bool>(global3[_wgslsmith_index_u32(select(u_input.a, 50032u, true), 9u)], any(vec2<bool>(false, global3[_wgslsmith_index_u32(2279u, 9u)])), global3[_wgslsmith_index_u32(1u, 9u)]))), min(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, 1i, -30672i, 0i), max(vec4<i32>(1i, 0i, 10634i, 2147483647i), vec4<i32>(2147483647i, 1i, 0i, 2147483647i))), abs(i32(-1i) * -17904i), 1i, _wgslsmith_clamp_i32(-1i, ~(-26396i), ~1i)), vec4<i32>(2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-63006i, -22521i, 8421i), vec3<i32>(2132i, -7462i, 0i)), 11830i), ~reverseBits(0i), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -47540i, 1i, -1i), vec4<i32>(1962i, -30355i, 49276i, -29469i)))));
    var var_1 = ~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(global4[_wgslsmith_index_u32(u_input.a, 14u)], vec3<u32>(u_input.b, u_input.a, global2.a.x)) ^ vec3<u32>(global2.a.x, global2.a.x, 0u)), firstTrailingBit(~vec3<u32>(u_input.b, 4294967295u, u_input.b)));
    let var_2 = false;
    let var_3 = Struct_2(var_0.b.x, ~(~(~reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))), ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, global2.a.x), select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(7059u, u_input.b, global2.a.x)), 1u, var_0.c.x)), vec2<u32>(_wgslsmith_mod_u32(17338u, global2.a.x), u_input.b));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-958f, 786f, global0.x, global0.x) - vec4<f32>(228f, -858f, -2673f, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -2289f, -480f) * vec4<f32>(-608f, global0.x, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, global0.x, 1245f, 941f) + vec4<f32>(550f, global0.x, 366f, global0.x))), !vec4<bool>(true, var_2, false, global3[_wgslsmith_index_u32(65878u, 9u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -157f)), 1036f, _wgslsmith_f_op_f32(min(-172f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1448f, 1000f, -1296f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global0.x, 1955f, 1000f) * vec4<f32>(global0.x, 858f, 1212f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -1011f, -757f))))))), _wgslsmith_f_op_f32(step(-1316f, 993f)), firstLeadingBit(u_input.b) & _wgslsmith_mod_u32(~20532u, 4294967295u), ~_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(var_3.b.xy ^ vec2<u32>(1u, u_input.b), _wgslsmith_mult_vec2_u32(var_3.d, global2.a.xx))));
}

