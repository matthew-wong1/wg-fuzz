struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -753f;

var<private> global1: array<vec4<u32>, 3>;

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_5, 28>;

var<private> global4: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<u32>) -> bool {
    let var_0 = Struct_2(vec4<i32>(u_input.a, reverseBits(reverseBits(u_input.a)) << (~(1u | arg_2.x) % 32u), -u_input.a, _wgslsmith_sub_i32(~firstTrailingBit(u_input.a), 2147483647i)), Struct_1(_wgslsmith_add_u32((28649u << (arg_1 % 32u)) ^ _wgslsmith_sub_u32(u_input.b.x, 1u), ~_wgslsmith_sub_u32(41704u, arg_2.x)), all(vec3<bool>(global2.x, true, global2.x)) && !all(vec3<bool>(global2.x, global2.x, false))), Struct_1(arg_2.x, true), vec2<bool>(global2.x, global2.x));
    var var_1 = vec4<bool>(false, global2.x, false, false);
    var var_2 = select(vec3<u32>(40970u, ~_wgslsmith_div_u32(1u ^ arg_1, 4294967295u), _wgslsmith_add_u32(var_0.b.a ^ ~arg_2.x, firstLeadingBit(~arg_2.x))), max(~arg_2.zwy, ~(~select(vec3<u32>(arg_1, 22982u, 49297u), vec3<u32>(arg_1, arg_2.x, 3485u), true))), vec3<bool>(var_1.x, !(_wgslsmith_f_op_f32(ceil(961f)) > _wgslsmith_f_op_f32(f32(-1f) * -316f)), any(vec2<bool>(true, true))));
    var var_3 = ~var_2.x;
    let var_4 = false;
    return u_input.a > u_input.a;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> i32 {
    let var_0 = global2.x;
    let var_1 = Struct_1(18712u, true & ((global2.x | (global2.x | global2.x)) || !func_3(vec3<f32>(433f, -290f, -1836f), 11308u, vec4<u32>(arg_1.x, 14564u, 1u, arg_2.x))));
    let var_2 = Struct_4(!global2.yx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-788f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1396f))), 1f) - vec3<f32>(1f, 1f, 1f)), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, 0u, var_1.a) >> (firstLeadingBit(arg_1) % vec4<u32>(32u)), arg_1)), all(vec4<bool>(true, true, !var_1.b, true)));
    global2 = !(!vec3<bool>(true, global2.x & true, 44397u <= (var_2.c.x << (60085u % 32u))));
    let var_3 = -2147483647i;
    return 74858i;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(675f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1453f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(1903f * -265f), true)))))));
    return Struct_1(u_input.b.x, ((max(u_input.a, u_input.a) << (u_input.c % 32u)) >> (u_input.c % 32u)) >= func_2(~_wgslsmith_clamp_i32(-1i, 1318i, u_input.a), ~firstLeadingBit(vec4<u32>(u_input.b.x, u_input.c, 4294967295u, 4294967295u)), ~(~vec3<u32>(u_input.b.x, u_input.c, 1u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(-908f));
    let var_1 = select(select(arg_0, arg_0, true), arg_0, all(vec4<bool>(global2.x, arg_1.c.b, arg_0.x, any(arg_0))));
    global1 = array<vec4<u32>, 3>();
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.c.a, arg_1.b.a, arg_2.x) & vec3<u32>(61094u, 1u, u_input.c), u_input.b)), arg_2.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx << (vec2<u32>(0u, arg_1.c.a) % vec2<u32>(32u))) | _wgslsmith_div_u32(arg_2.x, _wgslsmith_sub_u32(u_input.c, arg_1.c.a)), ~5228u)), 28u)];
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - 546f) * -742f), -1696f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(abs(-1000f))), var_2.a))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    global4 = ~u_input.b.x;
    var_0 = ~_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.yz) | abs(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b)), 38241u);
    let var_1 = func_4(!select(!(!vec3<bool>(false, global2.x, false)), vec3<bool>(true, global2.x, global2.x), vec3<bool>(u_input.a > 10308i, true, global2.x)), Struct_2(max(abs(select(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, global2.x, true))), -(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (global1[_wgslsmith_index_u32(1u, 3u)] % vec4<u32>(32u)))), func_1(), func_1(), !select(vec2<bool>(false, global2.x), global2.xz, true)), vec3<u32>(_wgslsmith_add_u32(103195u, ~_wgslsmith_mult_u32(48360u, u_input.c)), ~min(_wgslsmith_mult_u32(5859u, u_input.c), u_input.c), 0u));
    let var_2 = -vec2<i32>(~(-4363i), abs(0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-297f, 228f, var_1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, 2267f, 1000f) - vec3<f32>(1200f, -1185f, 2380f))))), 1936f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(882f, -212f, -1121f), vec3<f32>(1107f, -433f, 105f))))));
}

