struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<u32>) -> bool {
    global0 = Struct_3(all(select(select(vec3<bool>(false, false, global0.a), !vec3<bool>(false, false, global0.a), select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, false, false))), vec3<bool>(arg_0 < -192f, global0.a, false), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), global0.a))));
    var var_0 = arg_1.x;
    let var_1 = ~_wgslsmith_div_i32(select(~39323i, ~(~25444i), true), 1i);
    var_0 = 18889u;
    let var_2 = i32(-1i) * -(var_1 << (u_input.a.x % 32u));
    return global0.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> f32 {
    let var_0 = true;
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-669f)), _wgslsmith_f_op_f32(-522f * arg_0.e), !arg_1.a)))), abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, arg_3.d.b.x, u_input.b, arg_3.d.b.x) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, arg_3.a.b.x, u_input.b), vec4<u32>(1u, arg_0.b.b.x, 4294967295u, 31246u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, 22168u, arg_3.b.b.x), vec4<u32>(72u, 40479u, 4294967295u, 0u)))), _wgslsmith_div_vec3_u32(arg_0.b.b, vec3<u32>(arg_3.a.b.x, arg_0.d.b.x, 21432u)));
    global0 = arg_1;
    let var_2 = arg_3;
    let var_3 = arg_0.c;
    return -419f;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    return Struct_2(Struct_1(-abs(vec3<i32>(62966i, arg_1, 57852i)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.a.x, 4294967295u)), reverseBits(46759u), 111317u)), Struct_1(vec3<i32>(2479i, _wgslsmith_div_i32(arg_0, arg_0), max(-1i, arg_1)) | firstTrailingBit(vec3<i32>(-6668i, arg_0, arg_1)), vec3<u32>(u_input.c.x, ~(~33492u), 4294967295u)), _wgslsmith_div_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, arg_0), _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(arg_1, arg_0))), vec2<i32>(-1i) * -(~vec2<i32>(arg_0, arg_1))), Struct_1(reverseBits(vec3<i32>(-2147483647i, 0i, -21511i << (0u % 32u))), _wgslsmith_add_vec3_u32(max(vec3<u32>(0u, 4294967295u, 29200u), vec3<u32>(u_input.c.x, 87198u, 1u)) | vec3<u32>(u_input.a.x, u_input.c.x, 1u), firstLeadingBit(vec3<u32>(u_input.c.x, u_input.a.x, u_input.d)))), _wgslsmith_f_op_f32(-arg_2.x));
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32, arg_3: i32) -> vec2<bool> {
    global0 = Struct_3(true);
    var var_0 = func_4(~(~38986i), -arg_3, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1306f + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)] * global1[_wgslsmith_index_u32(u_input.d, 15u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec3<i32>(arg_1, arg_3, 60942i), vec3<u32>(u_input.c.x, arg_2, u_input.a.x)), Struct_1(vec3<i32>(-87286i, 17189i, arg_1), vec3<u32>(u_input.c.x, 99362u, u_input.b)), vec2<i32>(arg_3, arg_1), Struct_1(vec3<i32>(arg_3, arg_3, 52278i), vec3<u32>(4294967295u, 46865u, u_input.d)), 908f), Struct_3(arg_0.x), -613f, Struct_2(Struct_1(vec3<i32>(0i, 0i, 1i), vec3<u32>(u_input.a.x, 18387u, u_input.c.x)), Struct_1(vec3<i32>(arg_3, 57556i, -1i), vec3<u32>(u_input.a.x, u_input.d, u_input.b)), vec2<i32>(arg_1, arg_3), Struct_1(vec3<i32>(arg_3, arg_1, 16520i), vec3<u32>(u_input.d, u_input.c.x, 4294967295u)), -1603f)))))), global1[_wgslsmith_index_u32(firstLeadingBit(15111u), 15u)], global1[_wgslsmith_index_u32(~7064u, 15u)]));
    var var_1 = Struct_1(firstTrailingBit(firstTrailingBit(abs(vec3<i32>(arg_1, var_0.b.a.x, arg_1)))) << (vec3<u32>(_wgslsmith_clamp_u32(abs(94364u), ~var_0.d.b.x, 40384u), _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0.b.b.x, 4294967295u), ~31614u), ~4294967295u) % vec3<u32>(32u)), min(vec3<u32>(~(~var_0.a.b.x), arg_2, 1u), var_0.b.b));
    var_1 = func_4(min(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.b.a.x, -65731i >> (0u % 32u)), _wgslsmith_add_i32(-var_1.a.x, func_4(arg_3, arg_1, vec4<f32>(global1[_wgslsmith_index_u32(var_1.b.x, 15u)], -396f, var_0.e, -1000f)).c.x)), -1786i), -arg_1 ^ (_wgslsmith_add_i32(reverseBits(arg_1), 0i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(19458u, 1u, var_1.b.x, 4476u), abs(vec4<u32>(0u, 7198u, u_input.b, u_input.a.x))) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 15u)], -1754f, -719f, global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<f32>(global1[_wgslsmith_index_u32(0u, 15u)], -331f, -202f, 374f))), vec4<f32>(var_0.e, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b.x, 0u), 15u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_2, 15u)] + var_0.e), _wgslsmith_f_op_f32(-752f + global1[_wgslsmith_index_u32(u_input.c.x, 15u)])))))).b;
    var var_2 = abs(var_1.a.yy) << (reverseBits(vec2<u32>(21066u, 1u)) % vec2<u32>(32u));
    return arg_0;
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    global0 = Struct_3((arg_1 >> ((~17920u << (~u_input.a.x % 32u)) % 32u)) > min(7951i, select(i32(-1i) * -1i, -arg_0.x, false)));
    global1 = array<f32, 15>();
    let var_0 = Struct_2(func_4(_wgslsmith_dot_vec3_i32(arg_0, -vec3<i32>(-21539i, arg_0.x, arg_0.x)), -8426i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(956f, -1000f, global1[_wgslsmith_index_u32(112839u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec4<f32>(global1[_wgslsmith_index_u32(80189u, 15u)], global1[_wgslsmith_index_u32(27359u, 15u)], -422f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(184f, -888f, 1000f, global1[_wgslsmith_index_u32(u_input.d, 15u)]) * vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))))).d, func_4(-(~arg_1 ^ ~(-16036i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, arg_0.x), ~vec4<i32>(-21691i, arg_1, arg_0.x, 1i), vec4<i32>(-9341i, 0i, arg_0.x, -2752i)), ~countOneBits(vec4<i32>(-50305i, arg_0.x, arg_0.x, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(471f, 236f, -1444f, 431f) - vec4<f32>(global1[_wgslsmith_index_u32(101653u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], 1392f))))).b, _wgslsmith_add_vec2_i32(arg_0.yz, arg_0.yx), Struct_1(~arg_0, ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(807u, 60134u, u_input.d), vec3<u32>(32212u, 77776u, 0u)), ~vec3<u32>(u_input.a.x, 1u, 1326u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 40201u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, u_input.c.x, 83718u), vec3<u32>(17971u, u_input.b, u_input.c.x))), 15u)])), global1[_wgslsmith_index_u32(abs(~12624u), 15u)])));
    let var_1 = Struct_3(func_3(_wgslsmith_f_op_f32(max(-436f, var_0.e)), vec4<u32>((0u << (var_0.a.b.x % 32u)) & u_input.a.x, ~13678u, var_0.b.b.x, 4294967295u), max(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, var_0.b.b.x, var_0.d.b.x), vec3<u32>(u_input.b, u_input.d, var_0.d.b.x)), var_0.d.b)));
    let var_2 = var_0;
    return Struct_3(!global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_clamp_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(-32533i, -1i, -25734i), vec3<i32>(-43996i, 27764i, 1i)), vec3<i32>(1i, -2147483647i, -27882i)), abs(firstTrailingBit(vec3<i32>(-2147483647i, 2147483647i, 36147i))), ~(vec3<i32>(-13127i, -977i, 0i) >> (vec3<u32>(0u, 178u, u_input.c.x) % vec3<u32>(32u)))) << (~(select(vec3<u32>(0u, u_input.c.x, u_input.a.x), vec3<u32>(u_input.c.x, u_input.a.x, 4294967295u), true) ^ vec3<u32>(12155u, u_input.b, 60648u)) % vec3<u32>(32u)), ~_wgslsmith_mod_i32(i32(-1i) * -19841i, _wgslsmith_dot_vec2_i32(vec2<i32>(82478i, -37445i), vec2<i32>(-1i, 30182i))) ^ min(-_wgslsmith_sub_i32(20876i, -9631i), max(-1i, -34354i)), select(func_1(!(!vec2<bool>(global0.a, global0.a)), _wgslsmith_mod_i32(~4283i, 1i), ~u_input.a.x, 0i), select(vec2<bool>(true, all(vec4<bool>(global0.a, false, global0.a, global0.a))), vec2<bool>(func_1(vec2<bool>(global0.a, false), 0i, 0u, 1i).x, global0.a), !(!vec2<bool>(true, global0.a))), select(vec2<bool>(global0.a, global0.a), select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true), true), vec2<bool>(true, all(vec3<bool>(global0.a, false, true))))), global0.a);
    var var_0 = 1278f;
    let var_1 = false;
    let var_2 = abs(u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(-11129i, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, u_input.d) ^ (u_input.c >> (vec2<u32>(46369u, 4294967295u) % vec2<u32>(32u))), vec2<u32>(min(var_2, 1u), select(var_2, var_2, var_1))), ~max(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 34009u), vec2<u32>(22766u, u_input.d))), (vec3<u32>(4294967295u, 44042u, u_input.a.x) << (vec3<u32>(1036u, 4294967295u, 1u) % vec3<u32>(32u))) & firstTrailingBit(vec3<u32>(u_input.c.x, u_input.b, 4294967295u))), _wgslsmith_mult_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(abs(u_input.a << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), func_4(1i, -1i, vec4<f32>(-1362f, global1[_wgslsmith_index_u32(68136u, 15u)], -659f, 785f)).d.b.xy)));
}

