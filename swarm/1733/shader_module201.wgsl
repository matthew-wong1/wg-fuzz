struct Struct_1 {
    a: f32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 20>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec2<bool>, 10>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = vec2<bool>(true, true);
    global0 = array<vec3<f32>, 20>();
    global0 = array<vec3<f32>, 20>();
    global1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(-arg_0.xw, _wgslsmith_sub_vec2_i32(u_input.a.xy, u_input.a.yz), global2[_wgslsmith_index_u32(u_input.e, 10u)]) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-22463i, 28588i), _wgslsmith_add_vec2_i32(vec2<i32>(42188i, arg_0.x), arg_0.wy)), countOneBits(abs(firstLeadingBit(vec2<i32>(arg_0.x, 2147483647i))))), arg_0.xw);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1054f, 1535f))))), _wgslsmith_f_op_f32(abs(-1095f))));
    return 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> vec2<i32> {
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(27707u, ~1u, ~func_3(vec4<i32>(-2147483647i, arg_2, u_input.a.x, u_input.a.x)), ~5174u), vec4<u32>(arg_0.b, arg_0.b, ~(~1u), ~(~30901u)));
    global1 = min(~select(vec2<i32>(arg_2, u_input.d), vec2<i32>(-2147483647i, -50528i), false) << (~var_0.yx % vec2<u32>(32u)), vec2<i32>(~(global1.x >> (4294967295u % 32u)), -45832i)) & vec2<i32>(2147483647i, 0i);
    let var_1 = -33223i;
    global0 = array<vec3<f32>, 20>();
    var var_2 = false;
    return ~u_input.a.xx;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: bool) -> vec3<f32> {
    let var_0 = countOneBits(abs(select(0i, -countOneBits(19765i), arg_1 | !arg_1)));
    global1 = vec2<i32>(~arg_0, 36651i) ^ -func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -703f), func_3(vec4<i32>(u_input.d, 0i, -43769i, -1i)), vec3<u32>(u_input.c, 53482u, u_input.c)), 7344i, max(_wgslsmith_div_i32(-62521i, global1.x), u_input.b));
    let var_1 = Struct_1(610f, u_input.c, reverseBits(vec3<u32>(u_input.c, ~(~u_input.e), _wgslsmith_div_u32(u_input.e << (92085u % 32u), 1u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(floor(var_1.a)), ~(~31527u), vec3<u32>(var_1.b, 16315u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, abs(u_input.c)), var_1.c.zz)));
    return global0[_wgslsmith_index_u32(var_1.c.x, 20u)];
}

fn func_1() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -104f) + _wgslsmith_div_f32(623f, 207f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + 307f))), 273f) + _wgslsmith_f_op_vec3_f32(func_2(u_input.d, true, !select(any(vec4<bool>(true, true, false, false)), true, true))));
    global0 = array<vec3<f32>, 20>();
    global2 = array<vec2<bool>, 10>();
    var var_1 = Struct_1(var_0.x, u_input.c, abs(vec3<u32>(u_input.c, _wgslsmith_sub_u32(u_input.e, ~u_input.c), u_input.c)));
    global1 = u_input.a.zy;
    return vec4<i32>(min(_wgslsmith_mod_i32(u_input.a.x, abs(u_input.b >> (4294967295u % 32u))), ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, 16687i, 24267i)), max(vec3<i32>(global1.x, 17396i, u_input.d), vec3<i32>(1i, -58739i, 1i)))), 0i, -19305i, ~(~51488i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 10>();
    let var_0 = -func_1();
    global2 = array<vec2<bool>, 10>();
    global0 = array<vec3<f32>, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(983f, -580f)), u_input.c, _wgslsmith_div_vec3_u32(~vec3<u32>(countOneBits(u_input.e), ~u_input.e, ~21193u), countOneBits(vec3<u32>(~u_input.c, ~10567u, _wgslsmith_mod_u32(u_input.e, u_input.e)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(select(63847u, ~var_1.c.x & ~16384u, select(any(vec3<bool>(true, false, false)), false, true)), 4294967295u), var_1.a, ~(i32(-1i) * -1i), ~(~vec4<u32>(1u >> (var_1.b % 32u), firstTrailingBit(u_input.c), max(53292u, 1u), abs(var_1.b))), vec3<i32>(firstLeadingBit(-_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.d, global1.x, global1.x))), _wgslsmith_mod_i32(-2147483647i, ~var_0.x), global1.x));
}

