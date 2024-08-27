struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(17767u, i32(-2147483648), vec4<i32>(i32(-2147483648), -31918i, -48352i, 1i), true), Struct_1(40990u, 2147483647i, vec4<i32>(85101i, 4001i, 25726i, 37371i), false), Struct_1(4294967295u, -12474i, vec4<i32>(0i, 8633i, 0i, 2147483647i), false), Struct_1(32767u, i32(-2147483648), vec4<i32>(-21565i, 2147483647i, -53824i, 763i), false), Struct_1(81152u, 0i, vec4<i32>(-1i, -642i, i32(-2147483648), i32(-2147483648)), false), Struct_1(4294967295u, 0i, vec4<i32>(-61489i, 1i, i32(-2147483648), 1i), false), Struct_1(69645u, 2147483647i, vec4<i32>(25858i, 75102i, 72182i, -21320i), true), Struct_1(4294967295u, 1i, vec4<i32>(-23364i, 13188i, -40796i, 1i), false), Struct_1(1u, -1i, vec4<i32>(31118i, -18261i, 1i, i32(-2147483648)), false), Struct_1(4294967295u, 0i, vec4<i32>(47530i, 32564i, 2147483647i, 0i), true), Struct_1(1u, 0i, vec4<i32>(0i, -54214i, -28992i, 0i), false), Struct_1(0u, 926i, vec4<i32>(4054i, 13288i, -24799i, i32(-2147483648)), true), Struct_1(53777u, 0i, vec4<i32>(2147483647i, -1i, -1i, 1i), false), Struct_1(4294967295u, 1i, vec4<i32>(2147483647i, 7332i, -46962i, -792i), false), Struct_1(0u, 2147483647i, vec4<i32>(45498i, 1i, -1i, -2796i), true), Struct_1(1u, -38036i, vec4<i32>(i32(-2147483648), 1i, -10373i, 11689i), true), Struct_1(1u, 2147483647i, vec4<i32>(84218i, i32(-2147483648), 58327i, 2147483647i), false), Struct_1(4294967295u, 1i, vec4<i32>(2499i, -1i, 17423i, 2147483647i), false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1878f, 214f, -571f, -1000f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-702f, 480f, -1000f, 866f), vec4<f32>(-889f, -1120f, 772f, 1000f), false))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -111f, -142f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(925f, _wgslsmith_f_op_f32(f32(-1f) * -893f), _wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_div_f32(361f, -2958f)))));
    var var_1 = !(!select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, arg_0), all(vec4<bool>(true, false, false, false))), !select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(arg_0, arg_0)));
    let var_2 = arg_0;
    let var_3 = ~((select(-vec4<i32>(u_input.a, -2147483647i, 1i, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), !vec4<bool>(false, var_1.x, var_1.x, false)) | _wgslsmith_mod_vec4_i32(max(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -vec4<i32>(u_input.a, 0i, 11625i, 1i))) >> (vec4<u32>(u_input.b.x, firstTrailingBit(1u), ~42163u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 294u, 0u, 1u), vec4<u32>(u_input.d, 7845u, 1u, 28846u))) % vec4<u32>(32u)));
    var_1 = vec2<bool>(false, !any(vec2<bool>(var_2, false)));
    return (i32(-1i) * -32157i) == (_wgslsmith_div_i32(0i, var_3.x) << ((1u << (~_wgslsmith_div_u32(u_input.b.x, u_input.d) % 32u)) % 32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec4<i32> {
    let var_0 = any(!select(!vec4<bool>(true, true, arg_1, arg_0.x), select(!vec4<bool>(false, arg_1, false, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_1), func_3(true)), !any(vec3<bool>(arg_1, arg_1, false))));
    global1 = array<Struct_1, 18>();
    var var_1 = 172f;
    global1 = array<Struct_1, 18>();
    let var_2 = u_input.b.zx;
    return select(_wgslsmith_add_vec4_i32(vec4<i32>(10222i, -1i << (u_input.c % 32u), _wgslsmith_mult_i32(u_input.a, -44807i), _wgslsmith_mult_i32(~u_input.a, ~1i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(26959i, u_input.a, 1866i, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)) & -countOneBits(vec4<i32>(u_input.a, u_input.a, -86693i, -24948i))), vec4<i32>(-100120i, -6333i, -2147483647i, i32(-1i) * -2147483647i), select(select(select(vec4<bool>(true, true, var_0, arg_1), vec4<bool>(var_0, true, arg_0.x, true), !arg_0.x), vec4<bool>(4294967295u > u_input.d, arg_0.x, arg_1, true), select(!vec4<bool>(false, var_0, var_0, true), vec4<bool>(arg_0.x, var_0, var_0, false), vec4<bool>(true, arg_0.x, arg_1, false))), !(!select(vec4<bool>(var_0, true, false, arg_0.x), vec4<bool>(arg_0.x, true, false, arg_1), true)), !select(select(vec4<bool>(var_0, arg_1, arg_0.x, arg_1), vec4<bool>(false, false, false, true), false), vec4<bool>(false, arg_0.x, var_0, arg_1), arg_0.x == arg_0.x)));
}

fn func_1(arg_0: vec3<u32>) -> vec4<i32> {
    global1 = array<Struct_1, 18>();
    var var_0 = arg_0.x;
    let var_1 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1484f, -1018f)) < _wgslsmith_f_op_f32(step(282f, _wgslsmith_f_op_f32(floor(301f)))), all(vec3<bool>(true, true, true)), all(vec2<bool>(all(vec2<bool>(false, false)), true))), !(!vec3<bool>(all(vec3<bool>(false, false, false)), false, true)), vec3<bool>(true, true, true));
    let var_2 = vec2<i32>(-24602i, u_input.a);
    global0 = false;
    return func_2(!vec3<bool>(var_1.x, u_input.c != u_input.b.x, false), !var_1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>) -> bool {
    let var_0 = firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_1.x, u_input.b.x, arg_1.x, 5234u), max(_wgslsmith_mult_vec4_u32(vec4<u32>(28667u, arg_1.x, arg_1.x, arg_1.x), arg_1), arg_1 & vec4<u32>(6093u, u_input.c, 4294967295u, arg_1.x))), ~vec4<u32>(u_input.c, u_input.c >> (16197u % 32u), _wgslsmith_add_u32(0u, arg_1.x), _wgslsmith_dot_vec3_u32(arg_1.yzw, vec3<u32>(52419u, 11437u, u_input.d)))));
    let var_1 = global1[_wgslsmith_index_u32(0u & _wgslsmith_add_u32(27396u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.x, 0u) << (var_0.zz % vec2<u32>(32u)), vec2<u32>(~u_input.b.x, u_input.b.x | 1u))), 18u)];
    var var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(arg_1.x, 18u)];
    let var_4 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(~arg_1.x, abs(_wgslsmith_mod_u32(var_1.a, 54311u))), arg_1.x), (func_2(vec3<bool>(true, true, true), true).x << (firstLeadingBit(var_0.x) % 32u)) >> (_wgslsmith_sub_u32(var_1.a, 51056u) % 32u), arg_0 >> (vec4<u32>(_wgslsmith_clamp_u32(10586u, _wgslsmith_dot_vec2_u32(u_input.b.xz, arg_1.wx), var_3.a), ~(37815u >> (arg_1.x % 32u)), 0u, 1316u) % vec4<u32>(32u)), true);
    return all(vec2<bool>(all(!(!vec3<bool>(var_4.d, true, var_1.d))), select(true, func_3(!var_3.d), max(5540u, var_1.a) < 54009u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.c, 18u)];
    var var_1 = vec4<bool>(func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(func_1(u_input.b), -vec4<i32>(0i, var_0.c.x, -1719i, 1i)), _wgslsmith_mod_vec4_i32(var_0.c, -var_0.c)), min(~vec4<u32>(19822u, 619u, 44438u, var_0.a) ^ ~vec4<u32>(var_0.a, 55049u, 56318u, u_input.c), min(vec4<u32>(50266u, 22784u, 1u, 11691u) | vec4<u32>(4294967295u, 45299u, var_0.a, 59332u), abs(vec4<u32>(u_input.d, var_0.a, var_0.a, 49866u))))), var_0.d, func_3(var_0.d), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.yxz, vec4<i32>(max(~firstLeadingBit(u_input.a), ~(~u_input.a)), u_input.a, -2147483647i, func_2(var_1.yyz, var_0.d).x), var_0.c.wz);
}

