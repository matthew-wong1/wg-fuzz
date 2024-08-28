struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_5, 13>;

var<private> global2: array<vec2<u32>, 31>;

var<private> global3: f32;

var<private> global4: array<bool, 19> = array<bool, 19>(true, true, false, false, false, true, true, true, false, false, true, false, true, true, false, false, false, false, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_3(Struct_1(countOneBits(abs(vec3<i32>(u_input.a, -37512i, u_input.a) << (vec3<u32>(32085u, 46408u, 84222u) % vec3<u32>(32u)))), vec2<bool>(true, global4[_wgslsmith_index_u32(1u, 19u)])));
    let var_1 = !select(select(!vec3<bool>(var_0.a.b.x, false, false), vec3<bool>(-53967i < u_input.a, true, false), select(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 19u)], true, global4[_wgslsmith_index_u32(57596u, 19u)]), select(vec3<bool>(var_0.a.b.x, false, false), vec3<bool>(var_0.a.b.x, false, var_0.a.b.x), vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 19u)], var_0.a.b.x, global4[_wgslsmith_index_u32(70787u, 19u)])), vec3<bool>(global4[_wgslsmith_index_u32(arg_0.x, 19u)], var_0.a.b.x, global4[_wgslsmith_index_u32(arg_0.x, 19u)]))), vec3<bool>(true, !var_0.a.b.x, false), false);
    global0 = var_1.x;
    let var_2 = Struct_4(!select(select(!vec4<bool>(var_0.a.b.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(false, var_1.x, false, global4[_wgslsmith_index_u32(0u, 19u)]), true), !select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(40811u, 19u)], var_0.a.b.x, true), vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, var_1.x), vec4<bool>(true, true, true, var_0.a.b.x)), !vec4<bool>(var_1.x, true, true, true)), var_0);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1069f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(672f)) + _wgslsmith_f_op_f32(-715f - 1611f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - 125f)))), -183f, 2751f);
    return -1360f;
}

fn func_2() -> vec4<u32> {
    var var_0 = ~(-select(vec4<i32>(17653i, u_input.a, u_input.a, 323i) ^ -vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i), vec4<i32>(-2147483647i, 6329i, 58015i, 1i)), !(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 19u)], global4[_wgslsmith_index_u32(29893u, 19u)], global4[_wgslsmith_index_u32(24810u, 19u)], global4[_wgslsmith_index_u32(0u, 19u)]))));
    let var_1 = u_input.a << (12835u % 32u);
    var var_2 = i32(-1i) * -24574i;
    var var_3 = 1648f;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-763f, -1306f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(~(~vec4<u32>(0u, 1u, 4294967295u, 1u)))))));
    return ~abs(vec4<u32>(1u, 1u, 1u, 1u));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_5) -> vec2<u32> {
    var var_0 = (-(~vec4<i32>(10773i, u_input.a, 1i, arg_2.a)) >> ((func_2() ^ ~arg_2.b) % vec4<u32>(32u))) ^ (_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -2147483647i, arg_2.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), _wgslsmith_add_i32(arg_2.a, 8496i), 34948i), max(vec4<i32>(u_input.a, u_input.a, arg_2.a, -2147483647i), vec4<i32>(u_input.a, 29775i, arg_2.a, 32534i)), -min(vec4<i32>(-40303i, -1i, u_input.a, -20982i), vec4<i32>(1i, -2147483647i, arg_2.a, u_input.a))) ^ abs(vec4<i32>(-44080i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.a, u_input.a, u_input.a), vec4<i32>(-1i, 35661i, u_input.a, 12605i)), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, arg_2.a), vec2<i32>(u_input.a, u_input.a)))));
    let var_1 = Struct_2(arg_0.x, Struct_1(vec3<i32>(-2147483647i << (arg_2.b.x % 32u), ~u_input.a, 2147483647i), vec2<bool>(arg_1.x, false)), firstTrailingBit(_wgslsmith_mult_i32(~min(arg_2.a, arg_2.a), 2147483647i)), arg_1.x);
    let var_2 = var_1.b.a;
    var var_3 = ~arg_2.c.x;
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(-33343i, _wgslsmith_div_i32(1i, ~var_0.x), arg_2.a, u_input.a), firstLeadingBit(-vec4<i32>(14239i, var_0.x, 0i, var_1.b.a.x) << (~arg_2.b % vec4<u32>(32u))) ^ select(abs(vec4<i32>(-18306i, var_2.x, var_0.x, arg_2.a)), (vec4<i32>(u_input.a, 22479i, 88558i, u_input.a) | vec4<i32>(0i, var_0.x, 1i, 0i)) >> (min(arg_2.b, arg_2.b) % vec4<u32>(32u)), arg_1));
    return vec2<u32>(~(((4294967295u | arg_2.b.x) >> (arg_2.c.x % 32u)) | 1u), firstLeadingBit(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(~(-u_input.a), reverseBits(~(~vec4<u32>(1u, 0u, 1u, 0u))), func_1(vec3<bool>(global4[_wgslsmith_index_u32(69425u, 19u)], global4[_wgslsmith_index_u32(reverseBits(32870u) << (min(63167u, 0u) % 32u), 19u)], select(global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)], global4[_wgslsmith_index_u32(1u, 19u)]) & select(false, false, false)), vec4<bool>(!select(global4[_wgslsmith_index_u32(0u, 19u)], global4[_wgslsmith_index_u32(16368u, 19u)], false), false, false, !global4[_wgslsmith_index_u32(max(0u, 23355u), 19u)]), Struct_5(1i, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(21355u, 82066u), ~vec2<u32>(360u, 1u)))));
    let var_1 = !(!all(vec2<bool>(true, false))) | any(vec3<bool>(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 10009u, 4294967295u, 0u), var_0.b), 19u)], all(select(vec2<bool>(global4[_wgslsmith_index_u32(var_0.c.x, 19u)], true), vec2<bool>(true, global4[_wgslsmith_index_u32(16163u, 19u)]), false)), global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c.x, 36544u & var_0.c.x), 19u)]));
    global1 = array<Struct_5, 13>();
    let var_2 = abs(countOneBits(~vec4<u32>(71197u, _wgslsmith_dot_vec2_u32(var_0.b.yx, vec2<u32>(10470u, var_0.b.x)), 1u ^ var_0.c.x, _wgslsmith_mult_u32(1u, 0u))));
    var var_3 = !select(vec2<bool>(var_2.x > ~var_0.c.x, global4[_wgslsmith_index_u32(var_0.b.x, 19u)]), select(select(vec2<bool>(var_1, global4[_wgslsmith_index_u32(4294967295u, 19u)]), select(vec2<bool>(false, global4[_wgslsmith_index_u32(var_2.x, 19u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 19u)]), vec2<bool>(false, true)), select(vec2<bool>(global4[_wgslsmith_index_u32(var_0.c.x, 19u)], var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, false))), !(!vec2<bool>(global4[_wgslsmith_index_u32(var_2.x, 19u)], var_1)), select(select(vec2<bool>(true, global4[_wgslsmith_index_u32(125350u, 19u)]), vec2<bool>(var_1, global4[_wgslsmith_index_u32(0u, 19u)]), global4[_wgslsmith_index_u32(var_0.c.x, 19u)]), !vec2<bool>(var_1, var_1), true)), !(!select(vec2<bool>(global4[_wgslsmith_index_u32(var_0.b.x, 19u)], true), vec2<bool>(true, true), global4[_wgslsmith_index_u32(6707u, 19u)])));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u, global2[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-569f, -282f, 638f, -776f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1862f, -1787f, 435f, -825f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1179f, _wgslsmith_f_op_f32(round(1938f)))))));
}

