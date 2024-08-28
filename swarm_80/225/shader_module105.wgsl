struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(343f, vec4<u32>(0u, 41170u, 9294u, 11912u), vec2<u32>(34672u, 0u));

var<private> global1: array<bool, 18> = array<bool, 18>(true, false, true, true, false, false, false, false, false, true, false, false, false, true, true, true, false, true);

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = Struct_1(global0.a, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(u_input.a), vec4<u32>(u_input.a.x, 15841u, 0u, 1u) | (vec4<u32>(u_input.a.x, 27558u, 1223u, 1u) >> (global0.b % vec4<u32>(32u)))), firstTrailingBit(~(vec4<u32>(global0.c.x, global0.b.x, 21572u, u_input.a.x) >> (vec4<u32>(14524u, global0.b.x, 70162u, 0u) % vec4<u32>(32u))))), ~(~_wgslsmith_div_vec2_u32(max(u_input.a.wy, vec2<u32>(54581u, u_input.a.x)), ~u_input.a.xw)));
    let var_0 = select(-vec4<i32>(-5816i, 3796i, ~abs(-1i), 2147483647i), _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, -181i, u_input.c), vec4<i32>(9734i, u_input.c, 10644i, -18028i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 2147483647i), vec4<i32>(u_input.b.x, -1i, 2147483647i, u_input.c)))), vec4<i32>(~(~u_input.c), 1i, 23334i, u_input.c)), select(select(vec4<bool>(!global1[_wgslsmith_index_u32(global0.b.x, 18u)], true, true, true), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(global0.c.x, 18u)], true)), _wgslsmith_f_op_f32(global0.a + global0.a) != global0.a), !(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(3026u, 18u)], global1[_wgslsmith_index_u32(global0.c.x, 18u)], true))), global1[_wgslsmith_index_u32(4294967295u, 18u)]));
    global1 = array<bool, 18>();
    var var_1 = Struct_1(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a - -1045f))) * global0.a)), vec4<u32>(4294967295u, ~_wgslsmith_div_u32(select(35591u, 4294967295u, true), max(7628u, 78224u)), u_input.a.x, 0u), ~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(min(u_input.a.zw, u_input.a.wx), vec2<u32>(global0.c.x, global0.c.x)), u_input.a.yx));
    var var_2 = u_input.a.zz;
    return -1444i;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(~(~(_wgslsmith_div_u32(0u, 28364u) ^ u_input.a.x)), 18u)], (~func_3() > u_input.c) != all(select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 18u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(41963u, 18u)], global1[_wgslsmith_index_u32(33070u, 18u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 18u)], true), vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], false)), vec2<bool>(global1[_wgslsmith_index_u32(29490u, 18u)], global1[_wgslsmith_index_u32(global0.c.x, 18u)]))), all(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 18u)])), true)), any(vec4<bool>(!global1[_wgslsmith_index_u32(countOneBits(4294967295u), 18u)], global1[_wgslsmith_index_u32(~global0.b.x, 18u)], !global1[_wgslsmith_index_u32(u_input.a.x, 18u)] || !global1[_wgslsmith_index_u32(global0.b.x, 18u)], (u_input.c ^ -2147483647i) != -u_input.c)));
    global0 = Struct_1(global0.a, vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(~(~global0.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(48593u, global0.b.x, u_input.a.x), ~vec3<u32>(global0.c.x, u_input.a.x, 31616u)), ~global0.c.x), u_input.a.x), ~global0.c << (_wgslsmith_mult_vec2_u32(global0.b.xw, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyw, vec3<u32>(global0.c.x, global0.c.x, global0.b.x)), 56153u)) % vec2<u32>(32u)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1605f + global0.a))) - -1414f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a + -1122f))), global0.a, global0.a);
    global1 = array<bool, 18>();
    var var_2 = global0.b.wwz;
    return u_input.a;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global1 = array<bool, 18>();
    global1 = array<bool, 18>();
    var var_0 = _wgslsmith_mult_i32(min(9907i, -1i), min(-37962i, ~0i));
    let var_1 = Struct_1(global0.a, func_2(), global0.b.yw);
    let var_2 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, global0.a, global0.a, global0.a) + vec4<f32>(global0.a, global0.a, -1006f, global0.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -1121f, 256f))))));
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(-542f + global0.a), global0.a, global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global0.a, 1284f, -1182f), vec4<f32>(288f, global0.a, -971f, -102f))))))));
    let var_1 = select(select(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 18u)], global1[_wgslsmith_index_u32(4294967295u, 18u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), global1[_wgslsmith_index_u32(var_0.c.x, 18u)]), vec2<bool>(true, true), vec2<bool>(true, true)), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 18u)])), true), !select(!vec2<bool>(global1[_wgslsmith_index_u32(global0.b.x, 18u)], true), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], global1[_wgslsmith_index_u32(var_0.b.x, 18u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]), global1[_wgslsmith_index_u32(global0.b.x, 18u)]), all(vec2<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 18u)], false))), false), select(vec2<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], false, global1[_wgslsmith_index_u32(65514u, 18u)])), global1[_wgslsmith_index_u32(global0.b.x, 18u)]), select(!select(vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(80403u, 18u)], false), false), select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(38746u, 18u)]), vec2<bool>(true, true)), _wgslsmith_clamp_u32(global0.b.x, global0.b.x, var_0.b.x) <= global0.c.x), !global1[_wgslsmith_index_u32(~0u, 18u)]), _wgslsmith_f_op_f32(456f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, var_0.a)))) != _wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(1293f, _wgslsmith_f_op_f32(var_0.a + global0.a))));
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a + var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -596f))), var_0.a)));
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a, 1000f, 1991f, 1056f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -438f), _wgslsmith_f_op_f32(select(global0.a, 1900f, global1[_wgslsmith_index_u32(4294967295u, 18u)])), global0.a)) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, 1798f, var_2.a) + vec4<f32>(269f, var_2.a, var_2.a, 146f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, 1291f, var_3.a, var_0.a))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -1000f, var_0.a, -234f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a, var_2.a, 266f, -390f), vec4<f32>(-1005f, -1509f, global0.a, 812f), vec4<bool>(true, var_1.x, true, global1[_wgslsmith_index_u32(65009u, 18u)])))), vec4<f32>(_wgslsmith_f_op_f32(global0.a - global0.a), var_3.a, _wgslsmith_f_op_f32(350f - var_0.a), _wgslsmith_f_op_f32(-var_0.a))))), firstTrailingBit(u_input.b.zz), vec4<i32>(-1i, ~4613i, abs(u_input.c) ^ -(u_input.b.x >> (global0.b.x % 32u)), -u_input.c), _wgslsmith_f_op_f32(-var_3.a), u_input.c);
}

