struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(33468i, false, -40568i), Struct_1(19156i, true, 19283i), Struct_1(0i, true, 820i), Struct_1(2147483647i, true, 11961i), Struct_1(-18998i, false, 1814i), Struct_1(-20838i, false, 17156i), Struct_1(45382i, false, -7455i), Struct_1(-58845i, false, i32(-2147483648)), Struct_1(35308i, true, -1i), Struct_1(0i, true, -15590i), Struct_1(6685i, false, 14397i), Struct_1(4118i, false, 10374i), Struct_1(0i, false, -23147i), Struct_1(i32(-2147483648), true, i32(-2147483648)), Struct_1(1i, true, -32675i), Struct_1(17099i, true, 0i), Struct_1(47840i, false, 0i), Struct_1(1i, true, -34523i), Struct_1(-49447i, true, 0i), Struct_1(1i, false, i32(-2147483648)), Struct_1(-1i, false, 2147483647i), Struct_1(2147483647i, true, 12076i), Struct_1(-1i, false, -1i), Struct_1(2147483647i, true, 23399i), Struct_1(-3318i, true, 36351i), Struct_1(-4950i, true, i32(-2147483648)), Struct_1(-44145i, false, 0i), Struct_1(54931i, false, -21845i));

var<private> global1: array<vec3<f32>, 1>;

var<private> global2: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(2147483647i, i32(-2147483648), 1i), vec3<i32>(23380i, 1052i, 17223i), vec3<i32>(0i, 23202i, 0i), vec3<i32>(5022i, 5911i, -53875i), vec3<i32>(i32(-2147483648), 21219i, -1i), vec3<i32>(-38830i, 2492i, 0i), vec3<i32>(i32(-2147483648), 1i, -17205i), vec3<i32>(26184i, -33449i, -11069i), vec3<i32>(23451i, 30658i, 1i), vec3<i32>(-1i, 2147483647i, 26139i), vec3<i32>(2147483647i, 1631i, 24737i), vec3<i32>(-1i, -32519i, -1i), vec3<i32>(1i, -25694i, -11938i), vec3<i32>(i32(-2147483648), i32(-2147483648), 74952i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(-1i, -27955i, 28764i), vec3<i32>(-15937i, 2147483647i, 8435i), vec3<i32>(-21055i, i32(-2147483648), 1i), vec3<i32>(-31720i, -16237i, 1i), vec3<i32>(-1i, 2147483647i, -35587i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    global2 = array<vec3<i32>, 20>();
    global2 = array<vec3<i32>, 20>();
    global2 = array<vec3<i32>, 20>();
    global0 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, -(~(-2147483647i))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(81303u, u_input.d)), 20u)] | vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.e.yx, u_input.e.xz), abs(-1i)), ~(~(-20500i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 0i, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, 53040i))), global2[_wgslsmith_index_u32(max(select(firstTrailingBit(0u), firstLeadingBit(~u_input.d), true), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.b, u_input.d, 1u) << (vec3<u32>(u_input.d, u_input.d, 4294967295u) % vec3<u32>(32u))), abs(vec3<u32>(u_input.b, 15975u, u_input.d)))), 20u)]);
    return var_0.x;
}

fn func_2() -> i32 {
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(-35224i & abs(u_input.e.x), 26638i, abs(_wgslsmith_mod_i32(-2147483647i, u_input.a.x)), ~(-2147483647i)), vec4<i32>(u_input.a.x & func_3(), _wgslsmith_mult_i32(max(u_input.a.x, i32(-1i) * -39971i), 2147483647i), 7690i, u_input.c.x));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    var var_0 = Struct_1(-_wgslsmith_sub_i32(func_2(), -2147483647i), select(any(!vec3<bool>(arg_3.x, true, arg_3.x)), arg_3.x, all(!vec2<bool>(false, arg_3.x))), _wgslsmith_dot_vec2_i32(abs(min(vec2<i32>(arg_1.x, 36582i), u_input.e.xx)), vec2<i32>(i32(-1i) * -2147483647i, arg_1.x)) >> (u_input.b % 32u));
    let var_1 = ~u_input.b;
    let var_2 = 0i;
    global1 = array<vec3<f32>, 1>();
    var var_3 = u_input.b;
    return 115f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 20>();
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 28u)];
    var var_1 = var_0.b;
    var_0 = Struct_1(firstTrailingBit(var_0.c), false, -12886i);
    global2 = array<vec3<i32>, 20>();
    var_1 = (_wgslsmith_f_op_f32(func_1((u_input.e ^ u_input.a) ^ -vec3<i32>(var_0.a, var_0.a, var_0.c), vec2<i32>(-var_0.c, ~var_0.c), var_0.c, !select(vec4<bool>(true, false, var_0.b, var_0.b), vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, true, var_0.b)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1466f), _wgslsmith_f_op_f32(round(-884f)))))) | !(!((var_0.c >> (0u % 32u)) < select(var_0.a, u_input.e.x, false)));
    var var_2 = vec2<bool>(var_0.c >= abs(_wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(var_0.a, -51990i)) ^ _wgslsmith_div_i32(2147483647i, 2147483647i)), any(select(!vec3<bool>(var_0.b, var_0.b, true), select(vec3<bool>(false, true, true), vec3<bool>(var_0.b, false, false), !var_0.b), !(!vec3<bool>(var_0.b, false, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(20526i ^ _wgslsmith_sub_i32(-func_2(), _wgslsmith_mult_i32(-1i >> (u_input.d % 32u), ~5862i)), vec4<u32>(u_input.b, u_input.b, ~(~u_input.d), 0u));
}

