struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(1u, 1u, 52708u, 17148u, 4294967295u, 45509u, 0u, 83246u, 0u, 4294967295u, 1u, 54148u, 23380u, 53065u, 4294967295u, 36038u, 19256u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = true;
    var var_2 = false;
    var var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(19651u, _wgslsmith_add_u32(arg_1.x, 21419u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1, vec3<u32>(arg_2, 41429u, arg_1.x)), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 17u)], 1u, 87427u)), _wgslsmith_mod_u32(64411u, _wgslsmith_dot_vec4_u32(vec4<u32>(53534u, 38220u, 12692u, u_input.b), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 22280u, 1u, arg_2)))), ~select(~(vec4<u32>(arg_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 1u, 18182u) & vec4<u32>(global0[_wgslsmith_index_u32(1u, 17u)], arg_1.x, 60208u, 40160u)), vec4<u32>(reverseBits(40845u), arg_1.x >> (25164u % 32u), select(72784u, 1u, var_1), 48295u), vec4<bool>(any(vec3<bool>(true, var_1, false)), any(vec2<bool>(true, false)), select(false, var_1, false), any(vec2<bool>(var_1, var_1)))));
    var_3 = vec4<u32>(_wgslsmith_add_u32((_wgslsmith_clamp_u32(0u, var_3.x, 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, global0[_wgslsmith_index_u32(1u, 17u)]), vec4<u32>(1u, 8538u, arg_1.x, arg_1.x)) % 32u)) & _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, u_input.a.x), vec4<u32>(87536u, global0[_wgslsmith_index_u32(arg_1.x, 17u)], arg_1.x, var_3.x)), select(4294967295u, 95828u, var_1)), _wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(24352u, 17u)]), ~firstLeadingBit(global0[_wgslsmith_index_u32(0u, 17u)]))), ~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_3.x, 0u), min(4294967295u, 45451u)), ~var_3.x);
    return _wgslsmith_add_vec2_i32(-firstLeadingBit(vec2<i32>(0i, select(8625i, arg_0.b, false))), max(-(vec2<i32>(arg_0.b, u_input.c) >> (vec2<u32>(26270u, 135213u) % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_div_i32(1i, i32(-1i) * -1i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<i32>) -> i32 {
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(select(any(vec3<bool>(true, true, false)), false, all(vec3<bool>(true, true, true))), !all(vec2<bool>(false, false))), vec2<bool>(true, true));
    var var_1 = global0[_wgslsmith_index_u32(65191u, 17u)];
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1788f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.a, -1000f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(arg_0.a - -1274f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1926f)) + _wgslsmith_f_op_f32(1426f * arg_0.a)))), arg_1.x & 5845i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a))), _wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(-arg_0.a), 1246f);
    global0 = array<u32, 17>();
    return 35627i << (~max(u_input.a.x, _wgslsmith_div_u32(~1u, global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(arg_2, 17u)], 17555u), 17u)])) % 32u);
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<u32, 17>();
    let var_0 = arg_2;
    let var_1 = Struct_1(var_0.a, firstLeadingBit(-var_0.b));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 0u), 17u)];
    let var_3 = _wgslsmith_div_vec4_u32(~(select(~vec4<u32>(global0[_wgslsmith_index_u32(1u, 17u)], 1u, 4294967295u, 1u), abs(vec4<u32>(u_input.b, 136284u, 4294967295u, 42679u)), vec4<bool>(false, arg_1.x, arg_1.x, false)) >> (~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 29038u, global0[_wgslsmith_index_u32(1u, 17u)], 0u)) % vec4<u32>(32u))), ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(39936u, u_input.a.x, global0[_wgslsmith_index_u32(18278u, 17u)], 3013u), ~vec4<u32>(0u, 32993u, global0[_wgslsmith_index_u32(0u, 17u)], 0u))));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0)) * _wgslsmith_f_op_f32(978f + var_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - -1292f))))));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(-275f, vec4<bool>(true, true, true, true), Struct_1(-160f, func_4(Struct_1(_wgslsmith_f_op_f32(step(1000f, -139f)), -4141i), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.c, u_input.c, u_input.c), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(0i, u_input.c, -6873i))), 20110u, func_3(Struct_1(1652f, u_input.c), abs(vec3<u32>(u_input.b, 1729u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76462u, 17u)], 17u)])), _wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(39829u, 17u)]))))));
    var var_1 = any(vec4<bool>(!select(true, false, u_input.c <= 0i), true, all(vec2<bool>(true, true)), true));
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    let var_2 = min(~_wgslsmith_mod_u32(countOneBits(_wgslsmith_mult_u32(15594u, global0[_wgslsmith_index_u32(0u, 17u)])), 0u), 0u);
    return all(select(select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, false), true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(false, false, true, false))));
}

fn func_1() -> vec4<bool> {
    global0 = array<u32, 17>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-346f))))), max(-(i32(-1i) * -1i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 18403i, u_input.c, -1i) << (vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.b) % vec4<u32>(32u)), vec4<i32>(2974i, -38364i, -12981i, u_input.c)), i32(-1i) * -u_input.c)));
    var var_1 = Struct_1(-696f, i32(-1i) * -(i32(-1i) * -1i));
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.a - -632f))), ~1i);
    let var_2 = var_0;
    return select(vec4<bool>(false, true, ~(~u_input.b) != u_input.a.x, func_2()), vec4<bool>(!(!(var_1.a >= var_2.a)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, select(false, false, false) | any(vec2<bool>(false, false)), true, true), vec4<bool>(false, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c << (~38485u % 32u), select(select(u_input.c, u_input.c, var_0.x), u_input.c, false)), vec2<i32>(~(u_input.c >> (0u % 32u)), ~u_input.c)), 60480u, -vec2<i32>(2147483647i, _wgslsmith_mult_i32(~28401i, max(u_input.c, u_input.c))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1229f, -1000f)))))));
}

