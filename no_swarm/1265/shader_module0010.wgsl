struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: Struct_3 = Struct_3(vec2<i32>(i32(-2147483648), 31374i), 0u, vec4<i32>(-1i, 2147483647i, i32(-2147483648), 40837i), Struct_2(Struct_1(vec3<i32>(5559i, 0i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(53159i, -1i, 0i), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(-6316i, -32025i, 1739i), vec4<bool>(true, true, true, false)), vec2<i32>(1646i, -1i), 1000f));

var<private> global2: u32 = 83906u;

var<private> global3: array<u32, 1>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global1 = Struct_3(global1.d.a.a.zy, ~min(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b, 1u)], 1u)], 1u)], 1u)], _wgslsmith_mod_u32(global1.b, 4294967295u)), _wgslsmith_div_u32(max(366u, 0u), ~global3[_wgslsmith_index_u32(61449u, 1u)])), vec4<i32>(firstLeadingBit(~1i), ~global1.d.a.a.x, 15146i, 1i ^ global1.a.x), Struct_2(global1.d.b, global1.d.a, Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(global1.d.c.a, global1.c.wwz), select(u_input.a, u_input.a, false), ~14595i), global1.d.a.b), vec2<i32>(u_input.a, 2147483647i), _wgslsmith_f_op_f32(exp2(global1.d.e))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.d.e + -313f), _wgslsmith_f_op_f32(select(-1000f, global1.d.e, true)))))));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(step(global1.d.e, _wgslsmith_f_op_f32(select(-1029f, global1.d.e, any(select(vec3<bool>(global1.d.c.b.x, true, false), global1.d.b.b.xyz, vec3<bool>(true, global1.d.a.b.x, false))))))), global1.d.d.x, _wgslsmith_f_op_vec3_f32(ceil(global0[_wgslsmith_index_u32(~(~4294967295u >> (global1.b % 32u)), 5u)])));
    var var_2 = global1.d.c;
    var_0 = _wgslsmith_div_f32(global1.d.e, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * var_1.a))), -796f, !global1.d.b.b.x)));
    return _wgslsmith_mod_u32(1u, abs(~global3[_wgslsmith_index_u32(4294967295u, 1u)]));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(255f + 824f);
    global3 = array<u32, 1>();
    global1 = Struct_3(vec2<i32>(2147483647i, arg_3.b), ~28171u, -select(global1.c, global1.c, true), global1.d);
    let var_1 = select(vec2<u32>(~(~0u), func_3()), _wgslsmith_mod_vec2_u32(vec2<u32>(~21896u, arg_2) ^ _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1.b, 4294967295u), vec2<u32>(24327u, 12877u)), vec2<u32>(4294967295u, 1u) & vec2<u32>(global3[_wgslsmith_index_u32(0u, 1u)], 794u)), firstTrailingBit(vec2<u32>(4294967295u, ~global3[_wgslsmith_index_u32(1u, 1u)]))), !select(select(vec2<bool>(true, global1.d.b.b.x), vec2<bool>(false, true), vec2<bool>(global1.d.c.b.x, true)), vec2<bool>(true, true), select(global1.d.a.b.zy, vec2<bool>(global1.d.c.b.x, global1.d.c.b.x), select(global1.d.c.b.xy, global1.d.b.b.wy, global1.d.c.b.x))));
    global3 = array<u32, 1>();
    return Struct_4(-1483f, reverseBits(_wgslsmith_add_i32(arg_1.x, arg_1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(arg_3.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(arg_2, 5u)])))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>) -> i32 {
    let var_0 = global1.d.e;
    let var_1 = global1.d;
    let var_2 = firstLeadingBit(global1.c);
    global3 = array<u32, 1>();
    global3 = array<u32, 1>();
    return -33562i;
}

fn func_1() -> i32 {
    global1 = Struct_3(global1.d.d, 3725u, vec4<i32>(func_4(func_2(global1.d.e, global1.c | global1.c, u_input.b | u_input.b, Struct_4(696f, -2147483647i, vec3<f32>(1153f, 1577f, global1.d.e))), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(global1.b, 39003u, 16824u)), vec3<u32>(5757u, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)]) & vec3<u32>(global1.b, 4294967295u, global1.b), vec3<u32>(global3[_wgslsmith_index_u32(global1.b, 1u)], global1.b, global1.b) >> (vec3<u32>(u_input.b, 4294967295u, u_input.b) % vec3<u32>(32u)))), min(1i, _wgslsmith_sub_i32(0i << (global1.b % 32u), func_4(Struct_4(-1649f, 1i, global0[_wgslsmith_index_u32(106343u, 5u)]), vec3<u32>(44182u, global3[_wgslsmith_index_u32(0u, 1u)], 97478u)))), u_input.c, -1i), global1.d);
    global2 = global1.b;
    let var_0 = ~(~(~abs(vec3<u32>(4294967295u, 46689u, u_input.b))));
    global0 = array<vec3<f32>, 5>();
    let var_1 = global1.d.b;
    return min(firstLeadingBit(u_input.c), _wgslsmith_mod_i32(select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(65913i, u_input.a), vec2<i32>(-1i, var_1.a.x)), firstLeadingBit(-22327i)), 14542i, var_1.b.x), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 33617u;
    global0 = array<vec3<f32>, 5>();
    var var_0 = global1.d;
    let var_1 = 39054i;
    let var_2 = vec4<i32>(~(-41442i), ~func_1(), 0i, ~(~(-var_1)));
    global2 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

