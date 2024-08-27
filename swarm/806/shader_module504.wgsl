struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(426f);

var<private> global1: array<bool, 12> = array<bool, 12>(true, true, true, false, true, true, true, false, true, true, false, false);

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 19>;

var<private> global4: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    let var_0 = Struct_1(!(!global1[_wgslsmith_index_u32(~13699u, 12u)]));
    return select(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(28469u, abs(28664u)), 12u)], any(select(vec4<bool>(global1[_wgslsmith_index_u32(130269u, 12u)], global1[_wgslsmith_index_u32(86562u, 12u)], any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true)), all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], false, true, false))), !select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], false, false, false), var_0.a), global2.a < _wgslsmith_f_op_f32(step(global2.a, 445f)))), !(!var_0.a));
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    global4 = u_input.c.x;
    global1 = array<bool, 12>();
    var var_0 = select(select(select(vec3<bool>(select(false, true, true), false, arg_1.x > -1i), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 12u)], true), vec3<bool>(true, select(global1[_wgslsmith_index_u32(14003u, 12u)], true, global1[_wgslsmith_index_u32(0u, 12u)]), global1[_wgslsmith_index_u32(firstLeadingBit(arg_0), 12u)])), !(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(9894u, 12u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 12u)], global1[_wgslsmith_index_u32(23234u, 12u)]), false)), true), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(14391u, 12u)], global1[_wgslsmith_index_u32(arg_0, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(25728u, 12u)], global1[_wgslsmith_index_u32(66188u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec3<bool>(false, true, true)), !global1[_wgslsmith_index_u32(arg_0, 12u)]), !vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0, 12u)], true), func_3()), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 12u)], false, global1[_wgslsmith_index_u32(37783u, 12u)]), select(vec3<bool>(true, true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(65883u, 12u)], false), vec3<bool>(global1[_wgslsmith_index_u32(26764u, 12u)], true, global1[_wgslsmith_index_u32(arg_0, 12u)])), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(55884u, 12u)])), true), all(vec2<bool>(!global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)]))), !global1[_wgslsmith_index_u32(arg_0, 12u)]);
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(arg_0, 12u)]);
    var var_2 = -(~_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 0i, arg_1.x), arg_1 ^ vec3<i32>(35184i, 1i, -34329i)), vec3<i32>(_wgslsmith_add_i32(1i, u_input.d.x), ~23934i, u_input.a.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1022f)))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(f32(-1f) * -724f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(59149u, vec3<i32>(-14573i, u_input.b.x, 18986i)))))));
    let var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 19873u), vec3<u32>(u_input.c.x, arg_0, 3633u)), ~0u), u_input.c));
    let var_2 = -_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(~7020i, _wgslsmith_div_i32(u_input.d.x, -u_input.b.x)));
    var var_3 = u_input.a.x;
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.c, abs(vec2<u32>(arg_0, _wgslsmith_clamp_u32(~0u, ~arg_0, 1u))));
    return ~_wgslsmith_div_i32(~_wgslsmith_div_i32(30193i, var_2), _wgslsmith_sub_i32(_wgslsmith_mod_i32(14796i, 1i), ~(-var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_1(~_wgslsmith_mult_u32(u_input.c.x, ~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)), !select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 12u)], true), global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(31624u, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(1u, 12u)], true), global1[_wgslsmith_index_u32(1u, 12u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(12211u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 12u)], true, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]))), true), _wgslsmith_clamp_i32(abs(u_input.a.x), min(51392i, ~u_input.b.x), ~firstLeadingBit(u_input.a.x)) ^ _wgslsmith_mult_i32(-1i, 1i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, global0.a, global1[_wgslsmith_index_u32(59366u, 12u)]))) * global0.a) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -534f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.a)) - _wgslsmith_f_op_f32(global0.a - 1174f)))));
    global2 = Struct_2(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(~u_input.b >> (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 11152u), ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, 0i, u_input.a.x), vec3<i32>(2147483647i, var_0, u_input.b.x)))), vec2<i32>(-(i32(-1i) * -2099i), reverseBits(-2147483647i)), ~reverseBits(0u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1404f, var_1, global2.a, 661f) - vec4<f32>(var_1, 634f, var_1, global2.a)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a, var_1, -1553f, global0.a)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1321f, -2055f, _wgslsmith_f_op_f32(min(global2.a, -551f)), _wgslsmith_f_op_f32(global0.a - -882f)))), 46967i);
}

