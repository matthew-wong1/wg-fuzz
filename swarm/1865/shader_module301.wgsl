struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<i32>(59653i, 29679i), vec2<u32>(0u, 43250u)), true, vec2<bool>(true, false), vec3<f32>(-1847f, 1000f, 397f), vec3<f32>(1000f, 203f, -1000f));

var<private> global2: array<vec3<u32>, 14>;

var<private> global3: vec2<i32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_2(arg_0, any(select(select(vec2<bool>(false, true), vec2<bool>(global1.c.x, global1.b), global1.c), !global1.c, false)) & select(!all(vec4<bool>(true, false, global1.b, false)), true, all(vec2<bool>(false, true))), vec2<bool>(global1.c.x, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e - vec3<f32>(893f, 150f, global1.d.x)) * vec3<f32>(global1.d.x, global1.d.x, global1.d.x))), global1.e), global1.e);
    global0 = array<i32, 17>();
    var var_1 = var_0.a;
    return ~(_wgslsmith_add_u32(~arg_0.b.x, ~u_input.c) << (arg_0.b.x % 32u));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_3(arg_0, arg_0, -69181i, true);
    let var_1 = global1.c.x;
    global3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_0.b.a.a.x, -14697i, -13526i)), vec3<i32>(-8067i, global1.a.a.x, 0i)), ~arg_2), -vec2<i32>(arg_0.a.a.x, -37776i), -vec2<i32>(~28519i, 55331i | global1.a.a.x)) & abs(abs(abs(arg_0.a.a & global1.a.a)));
    let var_2 = var_0.a.a;
    var_0 = Struct_3(arg_0, Struct_2(arg_0.a, any(!(!vec4<bool>(global1.b, arg_0.c.x, false, arg_0.c.x))), vec2<bool>(true, -179f > _wgslsmith_div_f32(var_0.a.e.x, 2006f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(trunc(arg_0.d.x)), _wgslsmith_f_op_f32(floor(arg_0.e.x))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(718f, -1055f, global1.e.x))) * vec3<f32>(var_0.a.d.x, -1810f, arg_0.e.x))))), _wgslsmith_add_i32(0i, 45074i), false);
    return -1i ^ arg_1.x;
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = vec2<bool>(arg_0, arg_0 & (global1.a.a.x == (func_3(Struct_2(Struct_1(global1.a.a, global1.a.b), false, vec2<bool>(arg_0, false), global1.e, vec3<f32>(-609f, 1000f, -673f)), vec4<i32>(global1.a.a.x, 1815i, global1.a.a.x, global0[_wgslsmith_index_u32(4294967295u, 17u)]), -2147483647i, vec3<u32>(9983u, 1595u, 47033u)) ^ 4066i)));
    global3 = _wgslsmith_add_vec2_i32(vec2<i32>(global1.a.a.x, abs(global3.x)) ^ vec2<i32>(global1.a.a.x >> (61135u % 32u), _wgslsmith_mult_i32(u_input.a, 1i)), global1.a.a ^ min(-vec2<i32>(18967i, 1i), global1.a.a)) & firstTrailingBit(global1.a.a);
    let var_1 = Struct_1(~(-_wgslsmith_mod_vec2_i32(countOneBits(global1.a.a), min(vec2<i32>(-2147483647i, global1.a.a.x), global1.a.a))), vec2<u32>(~33130u, ~u_input.c) << (vec2<u32>(_wgslsmith_mult_u32(1u, u_input.b), 0u) % vec2<u32>(32u)));
    var var_2 = u_input.b;
    let var_3 = Struct_2(Struct_1(-vec2<i32>(min(var_1.a.x, 2147483647i), 2147483647i), ~vec2<u32>(16739u, u_input.c) << ((global1.a.b << (global1.a.b % vec2<u32>(32u))) % vec2<u32>(32u))), select(arg_0 & !arg_0, arg_0, var_0.x), select(!(!global1.c), !select(!global1.c, !global1.c, select(vec2<bool>(global1.b, var_0.x), vec2<bool>(arg_0, true), var_0.x)), vec2<bool>(global1.c.x, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.d, global1.d) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1566f + -470f), global1.d.x, -953f)))), _wgslsmith_f_op_vec3_f32(global1.e * global1.d));
    return !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(-462f + global1.d.x)) < global1.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.a.a;
    global0 = array<i32, 17>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(50199u, _wgslsmith_dot_vec2_u32(global1.a.b, global1.a.b), 49707u) | _wgslsmith_div_u32(~u_input.b, global1.a.b.x), global1.a.b.x), func_1(global1.a), _wgslsmith_sub_u32(u_input.b << (_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(47093u, u_input.c), 14u)], global2[_wgslsmith_index_u32(select(18728u, 6697u, global1.c.x), 14u)]) % 32u), u_input.c));
    let var_1 = true;
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-9002i, ~global1.a.a.x), ~(-global1.a.a & vec2<i32>(5117i, -15906i))), -global1.a.a.x);
    var var_3 = select(!select(any(vec2<bool>(false, global1.c.x)), false, var_1), select(global3.x >= (i32(-1i) * -2498i), any(!vec3<bool>(global1.b, global1.c.x, true)), !(!var_1)) && var_1, false);
    global3 = _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.a, _wgslsmith_sub_i32(global1.a.a.x, global1.a.a.x)), firstLeadingBit(_wgslsmith_mult_vec2_i32(global1.a.a, ~global1.a.a)));
    let var_4 = select(select(select(select(vec3<bool>(true, false, var_1), vec3<bool>(true, true, true), var_1), !vec3<bool>(true, var_1, true), all(vec2<bool>(false, var_1))), !vec3<bool>(true, func_2(var_1), all(vec4<bool>(global1.c.x, false, global1.b, true))), true), select(select(select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(false, false, global1.c.x), vec3<bool>(global1.b, true, false)), select(vec3<bool>(global1.b, false, var_1), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, false, true))), select(!vec3<bool>(global1.b, false, var_1), select(vec3<bool>(global1.c.x, true, global1.b), vec3<bool>(var_1, global1.b, global1.c.x), true), select(false, false, var_1)), select(vec3<bool>(global1.b, true, var_1), !vec3<bool>(var_1, global1.b, false), true)), select(!vec3<bool>(global1.c.x, var_1, true), !(!vec3<bool>(global1.b, true, var_1)), select(vec3<bool>(global1.b, global1.b, true), !vec3<bool>(global1.b, global1.c.x, global1.b), select(vec3<bool>(false, global1.b, true), vec3<bool>(global1.c.x, false, true), global1.b))), select(true, var_1, true)), select(vec3<bool>(global1.c.x, ~(-2147483647i) <= firstTrailingBit(var_2), true), vec3<bool>(true, (global1.d.x < 457f) | (global1.b | false), all(vec3<bool>(true, var_1, false))), any(vec4<bool>(false, true, false, !var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, global1.a.b.x, 9634u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(117791u, 37642u, var_0.x, 0u), vec4<u32>(u_input.c, 59471u, 0u, 45064u))), ~(~1u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.x, 3912u, 27995u) << (vec3<u32>(u_input.b, global1.a.b.x, 20213u) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(~33154u, 14u)]), ~abs(_wgslsmith_add_u32(50556u, 28155u))), firstLeadingBit(global1.a.a), 17872u);
}

