struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 28>;

var<private> global3: array<u32, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<bool>(true, true, true)), 19644u);
    var var_1 = global2[_wgslsmith_index_u32(61444u, 28u)] & true;
    let var_2 = vec4<bool>(var_0.a.b.x, var_0.a.b.x, false, !((select(35066i, global1.x, var_0.a.b.x) >> (global3[_wgslsmith_index_u32(var_0.b, 12u)] % 32u)) > -(u_input.b >> (35120u % 32u))));
    let var_3 = _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, ~4294967295u, 0u, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.d, u_input.e.x), vec4<u32>(u_input.d, u_input.d, global3[_wgslsmith_index_u32(0u, 12u)], u_input.d) >> (vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(51565u, 12u)], 0u, u_input.d) % vec4<u32>(32u)))), ~min(~_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(55775u, 12u)], 23482u, 20018u, 49791u), vec4<u32>(var_0.b, 1832u, u_input.d, 4294967295u)), firstTrailingBit(~vec4<u32>(global3[_wgslsmith_index_u32(u_input.d, 12u)], var_0.b, 0u, 7880u))));
    var var_4 = reverseBits(~firstLeadingBit(vec2<u32>(~global3[_wgslsmith_index_u32(var_3.x, 12u)], 1u)));
    return select(var_2, select(!vec4<bool>(var_0.a.a == var_0.a.a, false, !var_2.x, global2[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec4<bool>(!global2[_wgslsmith_index_u32(4294967295u, 28u)], any(var_0.a.b), true, !global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64645u, 12u)], 28u)]), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.d, 28u)], !global2[_wgslsmith_index_u32(var_4.x, 28u)], var_2.x, true), global2[_wgslsmith_index_u32(1u, 28u)] | (2147483647i >= u_input.a)), select(select(select(vec4<bool>(true, var_0.a.b.x, var_2.x, global2[_wgslsmith_index_u32(38755u, 28u)]), vec4<bool>(var_0.a.b.x, true, true, var_0.a.b.x), var_2), vec4<bool>(var_2.x, true, true, false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(21475u, 28u)], true)), var_2, vec4<bool>(!var_2.x, true, var_0.a.b.x, true))), false);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.d, 4294967295u), ~u_input.d), u_input.e) < ~u_input.d) && any(select(arg_0, arg_0, !global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(54398u, 12u)], 0u), 28u)]));
    var var_1 = abs(u_input.e.x);
    var var_2 = arg_1;
    global2 = array<bool, 28>();
    var var_3 = Struct_1(-803f, !vec3<bool>(true || select(var_2.b.x, arg_0.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 28u)]), true, var_0));
    return max(global0[_wgslsmith_index_u32(4534u, 8u)], vec3<i32>(abs(firstTrailingBit(_wgslsmith_mod_i32(2147483647i, global1.x))), global1.x, abs(u_input.b)));
}

fn func_2() -> Struct_1 {
    global1 = func_4(!(!func_3()), Struct_1(-497f, vec3<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 28u)], select(false, false, false), all(vec3<bool>(global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(1u, 28u)], true))))) ^ vec3<i32>(~(-2147483647i), max(-19605i, _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.d, 12u)], 12u)], 12u)], 12u)], 8u)] >> (vec3<u32>(0u, global3[_wgslsmith_index_u32(u_input.d, 12u)], u_input.e.x) % vec3<u32>(32u)), vec3<i32>(-1i, 27544i, u_input.a))), u_input.a << (u_input.e.x % 32u));
    global2 = array<bool, 28>();
    var var_0 = u_input.e.x;
    global1 = vec3<i32>(i32(-1i) * -_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.d, 8u)], global0[_wgslsmith_index_u32(2005u, 8u)]), func_4(vec4<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 28u)], false, true)), false, global2[_wgslsmith_index_u32(firstLeadingBit(7192u), 28u)], true), Struct_1(985f, vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 28u)], true))).x, 2147483647i) ^ vec3<i32>(u_input.a, -2147483647i << (countOneBits(~u_input.d) % 32u), global1.x);
    var var_1 = true;
    return Struct_1(-422f, vec3<bool>(global2[_wgslsmith_index_u32(abs(1u), 28u)], !global2[_wgslsmith_index_u32(4294967295u, 28u)], false));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> u32 {
    let var_0 = 20625i;
    let var_1 = arg_0;
    global3 = array<u32, 12>();
    global0 = array<vec3<i32>, 8>();
    global3 = array<u32, 12>();
    return ~1u;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(arg_0.a - 1f), vec3<bool>(!global2[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(46280u, 12u)] & 71326u), 28u)], func_5(func_2(), _wgslsmith_f_op_vec2_f32(vec2<f32>(1300f, 1540f) + vec2<f32>(arg_0.a, arg_0.a)), func_2()) != 0u, all(arg_0.b.xy)));
    let var_1 = arg_2;
    global0 = array<vec3<i32>, 8>();
    let var_2 = 1u;
    var var_3 = select(~firstTrailingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(33260u, arg_1, var_1.b, 17840u), vec4<u32>(8243u, arg_2.b, 1u, 88839u)), vec4<u32>(5615u, 31616u, 4294967295u, var_2) ^ vec4<u32>(arg_2.b, 27597u, 16703u, 52754u), !var_0.b.x)), vec4<u32>(max(abs(var_2), ~4294967295u << (~arg_1 % 32u)), _wgslsmith_mod_u32(~(~var_1.b), select(~1u, ~22234u, true)), 64071u, abs(firstLeadingBit(~17808u))), vec4<bool>(true | func_2().b.x, (all(var_0.b) & (arg_2.a.a != 1481f)) | all(arg_2.a.b.zy), var_1.a.b.x, var_1.a.b.x));
    return StorageBuffer(_wgslsmith_f_op_f32(exp2(arg_0.a)), ~_wgslsmith_div_vec4_u32(min(firstLeadingBit(vec4<u32>(arg_2.b, 1959u, var_2, 4294967295u)), vec4<u32>(41358u, 1u, var_1.b, var_1.b)), vec4<u32>(_wgslsmith_sub_u32(4294967295u, u_input.d), ~1u, 1685u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_1(-1606f, !select(!vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 28u)], true), !vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 28u)], global2[_wgslsmith_index_u32(27316u, 28u)]), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(99321u, 28u)], false))), ~_wgslsmith_mod_u32(min(37238u, u_input.d) & 48185u, ~(~u_input.e.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1416f)) - _wgslsmith_f_op_f32(max(-582f, -1801f))), vec3<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(global2[_wgslsmith_index_u32(2016u, 28u)], false, true)), false)), u_input.d));
}

