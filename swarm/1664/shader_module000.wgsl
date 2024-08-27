struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: Struct_2 = Struct_2(-1400f, 1509f, vec2<i32>(-1i, 29228i));

var<private> global2: u32 = 48899u;

var<private> global3: array<Struct_3, 14>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(22439i, i32(-1i) * -1495i), firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, global1.c.x, -58720i), vec3<i32>(global1.c.x, 32075i, global1.c.x)))), _wgslsmith_mult_i32(1i, -firstLeadingBit(global1.c.x)), 23080i);
    let var_1 = -vec4<i32>(-2147483647i, global1.c.x, ~_wgslsmith_mult_i32(-1i >> (1u % 32u), max(u_input.c.x, 1i)), -16576i);
    let var_2 = Struct_1(reverseBits(_wgslsmith_add_u32(reverseBits(max(u_input.a, 4294967295u)), u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-301f * _wgslsmith_f_op_f32(global1.b + global1.a))))));
    global2 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(23719u, u_input.a, 0u), vec3<u32>(var_2.a, 1u, u_input.a)), reverseBits(1u), true), _wgslsmith_sub_u32(~1u, ~var_2.a)), abs(var_2.a) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(8208u, 63294u), var_2.a));
    let var_3 = !(!vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false)))));
    return firstLeadingBit(~vec3<u32>(_wgslsmith_clamp_u32(~u_input.a, ~u_input.a, ~1u), ~0u, 26983u));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> vec4<bool> {
    global1 = Struct_2(global1.b, _wgslsmith_f_op_f32(abs(-1481f)), -vec2<i32>(1i, global1.c.x ^ arg_3.x));
    var var_0 = _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 10682u) >> (vec3<u32>(17099u, 11158u, u_input.a) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(0u, u_input.a, 15780u)))) << (vec3<u32>(73856u, abs(max(arg_2, 4294967295u)), ~(~u_input.a)) % vec3<u32>(32u)), ~func_3());
    let var_1 = _wgslsmith_mult_vec2_i32(max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, u_input.b, u_input.b), 0i >> (0u % 32u)), _wgslsmith_div_vec2_i32(-arg_3.zy, vec2<i32>(u_input.c.x, 11942i))), countOneBits(_wgslsmith_add_vec2_i32(u_input.c.yz, arg_3.yy)) | firstTrailingBit(u_input.c.zy)), vec2<i32>(-2147483647i, -arg_3.x));
    return select(!select(vec4<bool>(any(vec4<bool>(true, false, arg_1, arg_1)), false, !arg_1, !arg_1), vec4<bool>(true, any(vec4<bool>(arg_1, arg_1, arg_1, arg_1)), any(vec2<bool>(true, false)), true), select(arg_1, true, true)), select(select(!(!vec4<bool>(false, arg_1, false, arg_1)), vec4<bool>(true, all(vec4<bool>(true, arg_1, arg_1, false)), any(vec2<bool>(arg_1, false)), select(arg_1, arg_1, true)), !select(vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(false, true, true, arg_1), false)), vec4<bool>(arg_1, !arg_1, all(select(vec4<bool>(arg_1, true, false, true), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, true, true))), false), select(vec4<bool>(true, !arg_1, !arg_1, arg_1 || true), !vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(true, false, true, -1075f != global1.a))), true);
}

fn func_1() -> StorageBuffer {
    var var_0 = select(!vec4<bool>(false, false, global1.c.x > ~global1.c.x, false), vec4<bool>(true, !select(true, true, true) || false, all(vec3<bool>(true, true, true)), !select(true, true, all(vec2<bool>(true, false)))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.a, global1.b))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global1.b)), _wgslsmith_f_op_f32(global1.a * global1.a)))), true, abs(firstTrailingBit(~5606u)), vec3<i32>(~(-9323i), u_input.c.x, ~reverseBits(global1.c.x))));
    var var_1 = Struct_2(global1.b, 1083f, global1.c);
    var var_2 = u_input.c << (~vec3<u32>(66869u, 0u, u_input.a) % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a + _wgslsmith_div_f32(-1000f, var_1.b)), _wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(ceil(global1.a))))));
    let var_4 = any(var_0.xy);
    return StorageBuffer(~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) | vec3<u32>(u_input.a, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(37142u, u_input.a, u_input.a, 14758u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 14>();
    let x = u_input.a;
    s_output = func_1();
}

