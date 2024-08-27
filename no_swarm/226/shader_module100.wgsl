struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(9790i, 2147483647i, i32(-2147483648), 1i), 0i, vec2<bool>(true, false)));

var<private> global2: array<i32, 12> = array<i32, 12>(70808i, 2147483647i, 9140i, 2147483647i, -48779i, -13026i, 0i, 1i, i32(-2147483648), 2147483647i, -1i, 2147483647i);

var<private> global3: vec4<i32>;

var<private> global4: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> vec2<bool> {
    let var_0 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(global3.x), i32(-1i) * -1i), global3.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, reverseBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c.x, 65653u, 4294967295u, 26733u)), u_input.b ^ u_input.b))), 1u)], select(arg_0.b.c.x, all(select(select(vec2<bool>(arg_0.b.c.x, true), vec2<bool>(arg_0.b.c.x, arg_0.b.c.x), vec2<bool>(arg_0.b.c.x, arg_0.b.c.x)), vec2<bool>(false, arg_0.b.c.x), true)), all(select(vec4<bool>(true, arg_0.b.c.x, true, arg_0.b.c.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.b.c.x, arg_0.b.c.x, true)))), any(select(!vec4<bool>(arg_0.b.c.x, true, false, arg_0.b.c.x), select(vec4<bool>(arg_0.b.c.x, false, arg_0.b.c.x, false), !vec4<bool>(arg_0.b.c.x, arg_0.b.c.x, true, arg_0.b.c.x), select(vec4<bool>(arg_0.b.c.x, true, true, arg_0.b.c.x), vec4<bool>(true, arg_0.b.c.x, arg_0.b.c.x, true), vec4<bool>(false, false, arg_0.b.c.x, arg_0.b.c.x))), arg_0.b.c.x)), ~countOneBits(u_input.b));
    var var_1 = var_0;
    var var_2 = Struct_2(reverseBits(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(15929i >> (var_0.e.x % 32u), global3.x ^ global2[_wgslsmith_index_u32(var_0.e.x, 12u)], ~(-16315i)), -70092i)), Struct_1(countOneBits(-(vec4<i32>(global3.x, -2147483647i, arg_0.a.x, global2[_wgslsmith_index_u32(59299u, 12u)]) | var_0.b.a)), global3.x & 0i, vec2<bool>(~8008u == (var_1.e.x ^ var_1.e.x), var_0.d == true)), all(!vec4<bool>(true, true, true, var_1.d)), var_1.d, select(~abs(vec4<u32>(var_0.e.x, 1u, 1u, var_0.e.x)), ~abs(var_0.e), !select(vec4<bool>(var_1.d, false, var_0.c, var_0.c), select(vec4<bool>(false, var_1.d, var_1.c, false), vec4<bool>(var_0.c, false, var_0.c, arg_0.b.c.x), arg_0.b.c.x), vec4<bool>(arg_0.b.c.x, true, true, true))));
    var var_3 = ~(~var_2.e);
    let var_4 = -countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.e.x, u_input.c.x) & 4294967295u, 12u)] << (~111838u % 32u));
    return vec2<bool>(all(vec4<bool>(true, var_0.b.c.x, all(select(vec4<bool>(var_2.d, var_2.d, var_2.b.c.x, true), vec4<bool>(arg_0.b.c.x, var_1.b.c.x, true, var_2.d), var_0.c)), true)), (~countOneBits(1u) >= _wgslsmith_dot_vec2_u32(vec2<u32>(29180u, u_input.b.x), firstLeadingBit(vec2<u32>(var_3.x, var_2.e.x)))) & false);
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(trunc(arg_0))));
    let var_1 = Struct_1((~vec4<i32>(-1i, 1i, u_input.a.x, 25655i) >> (u_input.b % vec4<u32>(32u))) ^ vec4<i32>(select(~global2[_wgslsmith_index_u32(4294967295u, 12u)], global3.x, false), 13287i, -24144i, -abs(1i)), max(1i, _wgslsmith_add_i32(~(~(-2147483647i)), firstLeadingBit(global2[_wgslsmith_index_u32(10065u, 12u)]))), select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)), func_3(Struct_3(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], -2147483647i, global3.x, global3.x), Struct_1(vec4<i32>(global3.x, -18707i, 0i, 32530i), -43241i, vec2<bool>(false, true)), global3.zy, -23062i)), true), vec2<bool>(true, true)), vec2<bool>(true, true), !(all(vec4<bool>(false, true, false, false)) || true)));
    global2 = array<i32, 12>();
    let var_2 = var_1;
    let var_3 = vec2<i32>(_wgslsmith_mod_i32(var_1.b << (u_input.b.x % 32u), firstLeadingBit(2147483647i)), max(var_2.a.x, var_2.b));
    return select(select(select(!var_1.c, var_2.c, false), select(var_1.c, vec2<bool>(true, var_2.c.x), func_3(Struct_3(var_2.a, var_1, vec2<i32>(-1i, u_input.a.x), var_3.x))), func_3(Struct_3(select(vec4<i32>(-1i, -8683i, global2[_wgslsmith_index_u32(33128u, 12u)], u_input.a.x), var_2.a, false), Struct_1(vec4<i32>(var_1.a.x, -2147483647i, -455i, -49755i), -24341i, var_2.c), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.a.x, 0i), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, 52802i, var_3.x), global3.yyz)))), var_1.c, func_3(Struct_3(vec4<i32>(reverseBits(var_3.x), -23058i, 0i, -56189i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, _wgslsmith_mult_u32(u_input.d, 4294967295u)), 1u)], reverseBits(select(vec2<i32>(global2[_wgslsmith_index_u32(u_input.d, 12u)], 2147483647i), vec2<i32>(2147483647i, 50489i), true)), -2147483647i)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>) -> bool {
    global4 = ~(~reverseBits(_wgslsmith_div_u32(arg_1.x, 4294967295u))) == firstLeadingBit(~21057u);
    var var_0 = Struct_1(firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(u_input.a.x, global3.x, 10733i, global3.x), arg_0.b.a), vec4<i32>(23107i, global2[_wgslsmith_index_u32(0u, 12u)], 33575i, 20321i), _wgslsmith_add_vec4_i32(arg_0.b.a, arg_0.a)))), global2[_wgslsmith_index_u32(1u, 12u)], func_2(703f));
    global2 = array<i32, 12>();
    global3 = max(vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, 1i, -3266i), -var_0.a.xzw, select(false, false, true)), vec3<i32>(_wgslsmith_clamp_i32(global3.x, arg_0.d, 24654i), firstLeadingBit(7173i), u_input.a.x)), 2147483647i, firstLeadingBit(_wgslsmith_add_i32(reverseBits(u_input.a.x), -arg_0.a.x)), _wgslsmith_div_i32(arg_0.d, _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-41825i, u_input.a.x)), vec2<i32>(u_input.a.x, -2147483647i)))), vec4<i32>(u_input.a.x << (arg_1.x % 32u), 34015i, ~(~global2[_wgslsmith_index_u32(4294967295u, 12u)]), -2147483647i));
    global1 = array<Struct_1, 1>();
    return !arg_0.b.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(abs(_wgslsmith_add_vec4_i32(~vec4<i32>(-6167i, 0i, 49882i, global2[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global3.x, global3.x, 31520i), vec4<i32>(global3.x, u_input.a.x, -2147483647i, u_input.a.x)) & vec4<i32>(global3.x, u_input.a.x, 0i, u_input.a.x))), u_input.a.x >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 1u), u_input.c.x) % 32u), vec2<bool>(!any(vec2<bool>(true, false)), func_1(Struct_3(vec4<i32>(u_input.a.x, global3.x, 1i, -2147483647i), global1[_wgslsmith_index_u32(~97801u, 1u)], vec2<i32>(u_input.a.x, global3.x), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), global0[_wgslsmith_index_u32(u_input.d, 6u)])));
    global3 = var_1.a;
    global1 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -max(var_1.a, vec4<i32>(global3.x, -1i, global3.x, 36867i) >> (u_input.b % vec4<u32>(32u))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 1i, -u_input.a.x), max(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, -23i, 14481i), ~(var_1.a.wxx >> (vec3<u32>(u_input.b.x, 29557u, u_input.c.x) % vec3<u32>(32u))))), var_1.b, 0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, -709f, 696f, -1235f) * vec4<f32>(1200f, 102f, 1010f, 589f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -647f, -403f, -285f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, -437f, -870f, 242f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, -114f, -174f, 1484f) * vec4<f32>(-1685f, -952f, 319f, -235f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-235f, 1755f, 137f, -173f)))))));
}

