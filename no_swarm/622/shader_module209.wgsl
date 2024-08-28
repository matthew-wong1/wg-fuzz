struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec3<bool>, 26>;

var<private> global2: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> i32 {
    var var_0 = abs(15236u);
    let var_1 = Struct_4(select(arg_1.yx, vec2<bool>(any(!arg_2), _wgslsmith_div_i32(u_input.d, arg_0.x) < firstLeadingBit(48316i)), arg_1.zy), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-907f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1465f + -1148f)))), vec3<bool>(true, arg_1.x, !(firstTrailingBit(-1i) <= (u_input.d | arg_0.x))));
    global1 = array<vec3<bool>, 26>();
    let var_2 = Struct_1(_wgslsmith_add_u32(1u, 1u << (firstLeadingBit(_wgslsmith_mult_u32(u_input.e, 60308u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(-1540f * _wgslsmith_f_op_f32(step(var_1.b, var_1.b))))) + -708f));
    let var_3 = vec2<i32>(arg_0.x, _wgslsmith_div_i32(-2147483647i, _wgslsmith_mult_i32(2147483647i, u_input.c.x)));
    return 2147483647i | ~_wgslsmith_add_i32(18649i, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_3.x, u_input.a.x), max(vec2<i32>(u_input.a.x, 5609i), vec2<i32>(4044i, 1i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    global0 = arg_1.x;
    let var_0 = arg_0;
    var var_1 = _wgslsmith_add_i32(firstLeadingBit(select(1i, func_3(arg_1, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, true, false)), all(global1[_wgslsmith_index_u32(var_0.a, 26u)]))), -2147483647i);
    let var_2 = arg_0;
    let var_3 = vec2<i32>(select(-_wgslsmith_sub_i32(-arg_1.x, max(1i, u_input.d)), 2147483647i, true), 27986i);
    return -7894i | firstLeadingBit(u_input.b.x >> (u_input.e % 32u));
}

fn func_1() -> bool {
    global2 = _wgslsmith_mod_i32(-31837i, u_input.b.x);
    var var_0 = vec4<bool>(true, (~func_2(Struct_1(4294967295u, -1388f), vec4<i32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.b.x)) << (0u % 32u)) <= (0i | _wgslsmith_add_i32(i32(-1i) * -2147483647i, firstTrailingBit(u_input.b.x))), all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), true))), !any(global1[_wgslsmith_index_u32(4294967295u, 26u)]));
    let var_1 = Struct_2(u_input.a, -firstTrailingBit(10748i));
    global2 = -(0i ^ ~u_input.d);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, !func_1(), true, all(vec3<bool>(1u == u_input.e, true, true && select(false, false, false))));
    global2 = u_input.a.x;
    let var_1 = Struct_1(29996u, _wgslsmith_f_op_f32(-662f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(422f - 1f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(315f, 1038f), _wgslsmith_f_op_f32(floor(-388f)))))));
    let var_2 = Struct_1(countOneBits(1u | ((var_1.a >> (var_1.a % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e, var_1.a, var_1.a), vec4<u32>(var_1.a, 33653u, u_input.e, var_1.a)))), _wgslsmith_f_op_f32(-var_1.b));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.b)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -942f), -444f, all(var_0.xx))), _wgslsmith_f_op_f32(abs(var_2.b)))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -91479i, u_input.c.x, u_input.a.x), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.b.x, 6816i, u_input.b.x)));
    var var_4 = Struct_4(!vec2<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)) || !var_0.x, true), _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))), var_0.zww);
    global1 = array<vec3<bool>, 26>();
    global2 = 4607i;
    global0 = -_wgslsmith_add_i32(max(var_3.b.x, _wgslsmith_add_i32(u_input.c.x, 52755i) << (var_2.a % 32u)), ~var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-u_input.d, _wgslsmith_div_i32(-60701i, var_3.b.x)), max(vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 62018u), _wgslsmith_mod_u32(_wgslsmith_add_u32(61200u, u_input.e), var_1.a), ~(u_input.e & 14460u), 0u), vec4<u32>(u_input.e & reverseBits(43178u), 1u & _wgslsmith_dot_vec2_u32(vec2<u32>(65591u, u_input.e), vec2<u32>(30367u, 0u)), 31310u, var_1.a << (var_1.a % 32u))), _wgslsmith_f_op_f32(var_4.b + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-981f)))))), _wgslsmith_f_op_vec4_f32(abs(var_3.a)), _wgslsmith_mult_vec4_i32(-_wgslsmith_mod_vec4_i32(var_3.b, var_3.b), _wgslsmith_mult_vec4_i32(var_3.b, var_3.b) & (vec4<i32>(-2147483647i, 76989i, u_input.c.x, -40729i) | var_3.b)));
}

