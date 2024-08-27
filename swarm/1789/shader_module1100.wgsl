struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool = false;

var<private> global2: array<bool, 1> = array<bool, 1>(true);

var<private> global3: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> u32 {
    var var_0 = _wgslsmith_mult_u32(~(~95658u), u_input.b);
    var var_1 = arg_1.b.wxy;
    var var_2 = -1000f;
    var var_3 = ~arg_1.a.c.xwx;
    var_0 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(select(4294967295u, 48213u, global2[_wgslsmith_index_u32(8710u, 1u)]) ^ ~var_3.x, countOneBits(abs(16052u)), ~(arg_0.b & 30068u)), vec3<u32>(_wgslsmith_clamp_u32(~arg_0.c.x, arg_0.c.x | 39491u, ~u_input.a.x), 22604u, _wgslsmith_add_u32(1u, abs(1u))));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_add_i32(2147483647i, u_input.c.x | -arg_2));
    let var_1 = vec3<i32>(-40629i, _wgslsmith_div_i32(-_wgslsmith_sub_i32(-51213i, -1i), _wgslsmith_mult_i32(-1i, -51766i)), 0i);
    global2 = array<bool, 1>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(420f, -291f) * 1486f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1917f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(843f)))), _wgslsmith_mod_u32(func_3(Struct_1(1261f, global0.x ^ global0.x, vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 72296u)), Struct_2(Struct_1(-652f, 14146u, vec4<u32>(u_input.a.x, 14169u, 1u, 28657u)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, var_0.a, var_1.x, arg_1.a), vec4<i32>(103262i, 957i, arg_1.a, -1i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(832f, 432f)), u_input.c.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, u_input.a.x | global0.x), 1u)], arg_1.a), global0.x), min(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 87586u, 6842u, 1u), vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)) | _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, 14803u, 15991u), vec4<u32>(global0.x, global0.x, u_input.a.x, global0.x)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)), vec4<u32>(global0.x, u_input.a.x, u_input.b, u_input.b))) ^ ~vec4<u32>(u_input.b, 11023u << (u_input.a.x % 32u), ~4294967295u, ~u_input.b));
    return !select(!(!vec2<bool>(global2[_wgslsmith_index_u32(27139u, 1u)], false)), !(!select(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(6764u, 1u)], true), vec2<bool>(true, true))), !global2[_wgslsmith_index_u32(4294967295u, 1u)]);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>) -> vec2<u32> {
    let var_0 = select(global0.x, global0.x, !(firstLeadingBit(_wgslsmith_add_u32(1u, global0.x)) != countOneBits(1u)));
    let var_1 = ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(80339u, var_0, reverseBits(u_input.b)), vec3<u32>(49316u, global0.x, u_input.b)));
    global2 = array<bool, 1>();
    global1 = true;
    var var_2 = Struct_3(-1i);
    return ~u_input.a | ~u_input.a;
}

fn func_1() -> f32 {
    global0 = (func_4(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 1u)], global2[_wgslsmith_index_u32(global0.x, 1u)], false), vec3<bool>(false, false, global2[_wgslsmith_index_u32(global0.x, 1u)])), select(func_2(u_input.c.x, Struct_4(u_input.c.x), u_input.c.x), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(50855u, 1u)]), any(vec4<bool>(true, global2[_wgslsmith_index_u32(7745u, 1u)], global2[_wgslsmith_index_u32(4250u, 1u)], global2[_wgslsmith_index_u32(11086u, 1u)])))) & u_input.a) ^ ~vec2<u32>(u_input.a.x, ~global0.x ^ 1u);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-164f, -1200f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-994f))));
    var var_0 = !(!select(select(vec2<bool>(true, true), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(27329u, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(48991u, 1u)])), !(!vec2<bool>(true, global2[_wgslsmith_index_u32(15682u, 1u)])), !(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)]))));
    let var_1 = Struct_4(-1i);
    let var_2 = Struct_1(-632f, max(global0.x, _wgslsmith_add_u32(global0.x, _wgslsmith_sub_u32(4294967295u, 4294967295u))), vec4<u32>(global0.x, 0u, countOneBits(~(~0u)), 4294967295u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: f32) -> StorageBuffer {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-325f - -307f), -796f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * 2160f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))))), -1335f);
    var var_1 = 841f;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1343f, _wgslsmith_f_op_f32(select(arg_2, var_0.x, func_2(_wgslsmith_add_i32(u_input.c.x, -2147483647i), Struct_4(u_input.c.x), select(u_input.c.x, 1i, true)).x)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3, arg_2), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(1f - -1000f)));
    var_1 = 1543f;
    var var_2 = Struct_4(-5144i);
    return StorageBuffer(vec4<i32>(30298i | firstLeadingBit(var_2.a), abs(_wgslsmith_add_i32(-1i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.c.x, 2147483647i), i32(-1i) * -45025i, var_2.a | -43598i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.a, u_input.c.x, -2147483647i) >> (vec3<u32>(8767u, u_input.a.x, arg_1) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, var_2.a, 1i) >> (vec3<u32>(22405u, 0u, 0u) % vec3<u32>(32u)))), -14277i), arg_0, select(~vec3<i32>(2147483647i, -1i, 55213i) >> (vec3<u32>(arg_1 & 73790u, 4294967295u, arg_1) % vec3<u32>(32u)), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(-42079i, 8139i, u_input.c.x), vec3<i32>(1i, -6238i, u_input.c.x))), vec3<bool>(true, any(!vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 1u)], global2[_wgslsmith_index_u32(1u, 1u)])), func_2(min(var_2.a, 0i), Struct_4(u_input.c.x), -u_input.c.x).x)), var_0.yxx, firstLeadingBit(_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, arg_0, 47149u, 4294967295u) ^ vec4<u32>(20464u, global0.x, 1u, arg_1)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_1, 6346u, 1u, 0u), vec4<u32>(18636u, 75009u, 22979u, 852u), true), ~vec4<u32>(arg_1, arg_1, 1u, arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(reverseBits(countOneBits(26289u)), ~u_input.a.x & 61613u, global0.x, _wgslsmith_mult_u32(select(firstLeadingBit(79402u), global0.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, ~u_input.b), 1u)]), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, global0.x), 1213u)));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_clamp_u32(0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(44878u, u_input.a.x), u_input.a & var_0.xw) % 32u), 38791u, 0u), u_input.b, 387f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1187f, -1092f)) - _wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(2251f)), _wgslsmith_f_op_f32(abs(-856f)))))));
}

