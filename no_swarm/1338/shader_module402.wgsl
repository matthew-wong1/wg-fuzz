struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -12616i;

var<private> global1: array<u32, 24>;

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<i32, 25>;

var<private> global4: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global1 = array<u32, 24>();
    return 5658i;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = select(select(vec2<bool>(any(arg_0.a.d.a.zz) & !arg_0.a.d.a.x, !(arg_0.a.a != 974f)), select(!arg_2, arg_2, all(vec3<bool>(true, arg_0.a.c.x, false))), true), !arg_2, select(select(!(!arg_0.a.c), select(!arg_0.a.d.c.yy, arg_2, any(vec4<bool>(arg_0.a.c.x, arg_2.x, arg_0.a.c.x, false))), !(!arg_0.a.d.c.zz)), select(select(!vec2<bool>(arg_2.x, true), arg_0.a.c, vec2<bool>(arg_0.a.d.a.x, arg_2.x)), !(!arg_2), !select(vec2<bool>(true, false), arg_0.a.c, vec2<bool>(true, true))), arg_2.x));
    var var_1 = arg_0.a.d.a.yw;
    var var_2 = arg_0.a.d;
    var_1 = vec2<bool>(var_1.x, select(arg_2.x, -485f <= _wgslsmith_f_op_f32(arg_0.b.x - arg_0.a.a), true && all(select(vec4<bool>(true, var_1.x, var_0.x, false), vec4<bool>(arg_0.a.c.x, arg_0.a.d.c.x, arg_2.x, var_0.x), arg_2.x))));
    var var_3 = ~4294967295u;
    return vec4<i32>(global3[_wgslsmith_index_u32(var_2.b, 25u)], ~(global3[_wgslsmith_index_u32(var_2.b, 25u)] << (0u % 32u)), _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -u_input.c.x, i32(-1i) * -46523i), vec3<i32>(2147483647i, ~min(u_input.c.x, 2147483647i), _wgslsmith_div_i32(max(-37906i, arg_1), 1i))), -global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b.x, var_2.d.x, global1[_wgslsmith_index_u32(43676u, 24u)]) << (u_input.b % vec3<u32>(32u)), ~vec3<u32>(45891u, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 0u)), 25u)] << (_wgslsmith_dot_vec2_u32(~arg_0.a.d.d, var_2.d) % 32u));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<u32> {
    let var_0 = u_input.c.xy;
    let var_1 = func_4(Struct_3(Struct_2(-532f, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(15410u, u_input.b.x), u_input.b.yx, vec2<u32>(25781u, 49107u)), vec2<bool>(true, true), Struct_1(vec4<bool>(true, true, true, false), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 24u)] >> (20376u % 32u), vec3<bool>(true, true, true), vec2<u32>(u_input.b.x, 75089u), true)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, 1325f)), vec2<f32>(-1439f, 3402f))))), 1i, vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), func_3() >= ((-44430i & var_0.x) | (i32(-1i) * -33858i))));
    global0 = -(~select(_wgslsmith_clamp_i32(-36884i, -1829i, arg_0), _wgslsmith_dot_vec4_i32(var_1, var_1 << (vec4<u32>(1u, 1u, u_input.b.x, 0u) % vec4<u32>(32u))), !(u_input.c.x < 37947i)));
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1281f))), _wgslsmith_div_f32(-926f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1829f, 371f)), -724f, true)))), select(u_input.b.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(38678u, 24u)]) >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)), u_input.b.yy ^ u_input.b.zz, abs(u_input.b.zy)), true), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_1(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true)), false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), true), min(0u, select(u_input.b.x | global1[_wgslsmith_index_u32(14609u, 24u)], global1[_wgslsmith_index_u32(~u_input.b.x, 24u)], false)), select(!global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 24u)], 22u)], select(vec3<bool>(false, true, true), !global4[_wgslsmith_index_u32(21772u, 22u)], vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, true)), 32258u != global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28336u, 24u)], 24u)], true)), abs(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), firstTrailingBit(38003u))), all(global4[_wgslsmith_index_u32(59207u, 22u)])));
    global0 = var_0.x;
    return firstTrailingBit(_wgslsmith_mult_vec4_u32(countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9967u, 24u)], 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x, 7171u), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 66119u))), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_2.d.d.x, global1[_wgslsmith_index_u32(32362u, 24u)], global1[_wgslsmith_index_u32(34566u, 24u)]), ~vec4<u32>(var_2.d.d.x, 17432u, 1u, var_2.d.b)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> StorageBuffer {
    let var_0 = ~_wgslsmith_dot_vec4_u32(func_2(i32(-1i) * -38542i, ~(-global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 24u)], 25u)])), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(30474u, 13181u, 4294967295u, 39868u), vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1, 24u)], 24u)], 4294967295u, 91667u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)], 69620u, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(arg_1, 24u)]), vec4<u32>(arg_1, u_input.b.x, global1[_wgslsmith_index_u32(0u, 24u)], 1u))), vec4<u32>(firstLeadingBit(68033u), global1[_wgslsmith_index_u32(61868u, 24u)], u_input.b.x, ~u_input.b.x)));
    global1 = array<u32, 24>();
    var var_1 = abs(firstLeadingBit(abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_1, 87984u), _wgslsmith_mult_u32(35568u, global1[_wgslsmith_index_u32(62129u, 24u)])))));
    global2 = array<Struct_2, 14>();
    let var_2 = Struct_4(~vec4<u32>(~_wgslsmith_mult_u32(u_input.b.x, arg_1), var_0, 0u, 20413u), Struct_1(!vec4<bool>(any(vec2<bool>(false, false)), false, true, true), 4294967295u, global4[_wgslsmith_index_u32(55304u, 22u)], abs(reverseBits(~vec2<u32>(16910u, 1u))), false), arg_0.yw, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1179f * arg_0.x))), u_input.b.yz, vec2<bool>(true, true), Struct_1(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, false, true, true), true), arg_1, global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(0u, 0u, false), _wgslsmith_add_u32(arg_1, arg_1)), 22u)], reverseBits(min(u_input.b.xx, vec2<u32>(449u, arg_1))), all(vec4<bool>(false, true, false, false)))), firstTrailingBit(vec4<i32>(~1i, 1i, global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(22720u, global1[_wgslsmith_index_u32(16546u, 24u)], 0u, global1[_wgslsmith_index_u32(var_0, 24u)]), vec4<u32>(arg_1, arg_1, 9703u, var_0))), 25u)], func_3())));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.d.a)))), -354f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 14>();
    global4 = array<vec3<bool>, 22>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-746f, -443f, 342f, -908f), vec4<f32>(-753f, 502f, 1277f, -351f), false)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(847f, -107f, 1000f, 824f)))))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(10843u, 0u, u_input.b.x, 0u), vec4<u32>(7367u, u_input.b.x, 1u, 33476u)), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x), 4843u), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 0u, 0u), vec3<u32>(1u, 49042u, u_input.b.x))), ~(~global1[_wgslsmith_index_u32(19808u, 24u)])));
}

