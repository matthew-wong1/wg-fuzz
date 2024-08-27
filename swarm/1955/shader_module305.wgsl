struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 7> = array<bool, 7>(false, false, false, false, false, true, false);

var<private> global2: array<u32, 32>;

var<private> global3: vec3<u32> = vec3<u32>(71922u, 0u, 1u);

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = false;
    global1 = array<bool, 7>();
    var var_1 = 630f;
    return false;
}

fn func_3() -> vec4<i32> {
    global1 = array<bool, 7>();
    let var_0 = -(1i << (_wgslsmith_div_u32(1u, 37164u) % 32u));
    var var_1 = _wgslsmith_div_f32(-121f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, global0.x)) * _wgslsmith_f_op_f32(sign(global0.x)))))));
    var var_2 = Struct_1(~_wgslsmith_mod_vec3_i32(firstTrailingBit(~vec3<i32>(29484i, 1i, var_0)), -select(vec3<i32>(2147483647i, 2147483647i, -2215i), vec3<i32>(0i, 18015i, var_0), global1[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(u_input.a, global2[_wgslsmith_index_u32(31200u, 32u)], global3.x)) << (~vec3<u32>(u_input.a, 94995u, 24254u) % vec3<u32>(32u))), firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(18140u, u_input.a, global2[_wgslsmith_index_u32(59010u, 32u)]), vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.a, 32u)], global2[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 32u)], 1u, global2[_wgslsmith_index_u32(29102u, 32u)])))), global1[_wgslsmith_index_u32(23100u, 7u)]);
    global4 = firstLeadingBit(min(_wgslsmith_mod_i32(-(~var_0), var_0), 49185i));
    return vec4<i32>(-(_wgslsmith_mod_i32(var_2.a.x, _wgslsmith_div_i32(1i, var_2.a.x)) << (var_2.b % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~var_2.a, _wgslsmith_div_vec3_i32(var_2.a, _wgslsmith_mod_vec3_i32(var_2.a, var_2.a))), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, 4554i, var_0) >> (vec3<u32>(1u, 4294967295u, 7243u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(var_2.a, var_2.a))), -1i, ~_wgslsmith_add_i32(firstTrailingBit(-4331i), max(-28277i ^ var_2.a.x, _wgslsmith_div_i32(0i, -26165i))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_2(vec3<u32>(4165u, 0u, global3.x), !vec3<bool>(!(false != arg_1.b.x), true, select(func_2(vec3<i32>(arg_1.c.x, arg_1.c.x, arg_1.c.x), arg_1.c.x, true), global1[_wgslsmith_index_u32(0u, 7u)], true)), arg_1.c);
    var var_1 = Struct_1(vec3<i32>(var_0.c.x, _wgslsmith_add_i32(arg_1.c.x, var_0.c.x) & arg_1.c.x, -52134i), 16464u, func_2(countOneBits(firstTrailingBit(firstLeadingBit(var_0.c.xzx))), _wgslsmith_mult_i32(0i, arg_1.c.x), false));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(sign(-1000f));
    let var_4 = Struct_2(_wgslsmith_div_vec3_u32(abs(min(var_0.a, vec3<u32>(1632u, 0u, 64853u))), ~(~vec3<u32>(var_1.b, u_input.a, global2[_wgslsmith_index_u32(var_2.a.x, 32u)]))), select(arg_1.b, arg_1.b, select(!select(var_0.b, var_2.b, true), select(select(var_2.b, vec3<bool>(arg_1.b.x, var_0.b.x, arg_1.b.x), false), vec3<bool>(true, false, var_0.b.x), !var_2.b), false)), _wgslsmith_add_vec4_i32(~firstLeadingBit(var_0.c | arg_1.c), var_0.c & _wgslsmith_sub_vec4_i32(var_2.c, func_3())));
    return max(_wgslsmith_dot_vec3_i32(vec3<i32>(func_3().x, _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_1.c.x, arg_1.c.x), -20237i), ~(-2147483647i)), vec3<i32>(1i, firstTrailingBit(1i), abs(_wgslsmith_div_i32(10254i, arg_1.c.x)))), var_4.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~vec3<u32>(global2[_wgslsmith_index_u32(7767u, 32u)], ~_wgslsmith_mod_u32(0u, u_input.a), _wgslsmith_sub_u32(global3.x, 29971u) << (~17651u % 32u)) & vec3<u32>(4294967295u, u_input.a, global2[_wgslsmith_index_u32(select(u_input.a, ~(~4294967295u), global1[_wgslsmith_index_u32(global3.x, 7u)]), 32u)]);
    var var_0 = Struct_1(vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(6433i, 38251i), min(1i, 1i)), -1i, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(113f, global0.x, -1314f)), Struct_2(vec3<u32>(4024u, u_input.a, 34489u), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 7u)], true), vec4<i32>(6081i, -7529i, 1i, -46481i)))), _wgslsmith_mult_i32(~30625i, 1i)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(15119u, _wgslsmith_mod_u32(u_input.a, global2[_wgslsmith_index_u32(1u, 32u)]), max(0u, global3.x), u_input.a), vec4<u32>(countOneBits(83155u), 59951u, ~0u, ~global3.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(110203u, global3.x, global3.x, global2[_wgslsmith_index_u32(u_input.a, 32u)]), vec4<u32>(0u, global2[_wgslsmith_index_u32(36417u, 32u)], global2[_wgslsmith_index_u32(69996u, 32u)], u_input.a)), ~vec4<u32>(u_input.a, 0u, global2[_wgslsmith_index_u32(4294967295u, 32u)], global3.x)), min(abs(vec4<u32>(4294967295u, 4294967295u, 0u, global3.x)), vec4<u32>(1u, 71006u, global3.x, global3.x) >> (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50042u, 32u)], 32u)], u_input.a, global2[_wgslsmith_index_u32(88003u, 32u)], global3.x) % vec4<u32>(32u))))), !any(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(18437u, 7u)], false), vec3<bool>(false, false, global1[_wgslsmith_index_u32(global3.x, 7u)]), vec3<bool>(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], true))));
    global1 = array<bool, 7>();
    global2 = array<u32, 32>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, global0.x)));
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(var_0.a, select(vec3<i32>(var_0.a.x, var_0.a.x, 2147483647i), vec3<i32>(-1i, _wgslsmith_div_i32(var_0.a.x, 0i), reverseBits(var_0.a.x)), vec3<bool>(false, var_0.a.x <= var_0.a.x, any(vec2<bool>(var_0.c, var_0.c))))), global2[_wgslsmith_index_u32(6228u, 32u)], any(vec2<bool>(true, true)));
    global2 = array<u32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.yx)))), global0.yy, _wgslsmith_clamp_i32(var_0.a.x, firstLeadingBit(var_2.a.x << (63689u % 32u)), _wgslsmith_mod_i32(var_2.a.x, var_2.a.x) | _wgslsmith_clamp_i32(var_2.a.x, var_0.a.x, var_2.a.x)) | 23550i, _wgslsmith_sub_i32(func_3().x >> (var_2.b % 32u), 0i));
}

