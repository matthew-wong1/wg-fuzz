struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<i32, 29>;

var<private> global2: array<vec3<u32>, 2>;

var<private> global3: vec2<f32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    var var_0 = min(_wgslsmith_clamp_u32(arg_0.c.x, 14677u | _wgslsmith_add_u32(abs(35751u), u_input.c), ~(~arg_0.c.x)), arg_0.c.x);
    let var_1 = vec2<bool>(arg_0.b, !arg_0.b);
    global2 = array<vec3<u32>, 2>();
    global0 = array<Struct_3, 7>();
    var var_2 = arg_0.a.xy;
    return true;
}

fn func_2() -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 32991u), 29u)];
    let var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_3(Struct_1(vec3<i32>(-7653i, u_input.e, u_input.d), false, vec2<u32>(4294967295u, u_input.a)), vec2<i32>(14304i, 0i)), all(vec3<bool>(true, true, false)), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), !any(vec4<bool>(true, true, false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), false));
    global1 = array<i32, 29>();
    global2 = array<vec3<u32>, 2>();
    var var_2 = global3.x;
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a >> ((~u_input.c >> (firstLeadingBit(8042u) % 32u)) % 32u), countOneBits(abs(~u_input.a)), firstTrailingBit(max(u_input.c, 0u)) | u_input.a), ~(~global2[_wgslsmith_index_u32(19909u, 2u)])), 7u)];
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global0 = array<Struct_3, 7>();
    let var_0 = !vec3<bool>(true, arg_0.b.b, all(vec4<bool>(arg_0.b.b, false, arg_0.b.b, arg_0.b.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(arg_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, arg_0.a.x, global3.x, -3350f) * _wgslsmith_f_op_vec4_f32(-arg_0.a)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.c.a.x, arg_0.c.a.x, -501f), vec4<f32>(661f, arg_0.c.a.x, global3.x, arg_0.c.a.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.x, 1267f, global3.x, global3.x))), global3.x > 791f)))))));
    let var_2 = vec4<f32>(-440f, global3.x, func_2().a.x, _wgslsmith_f_op_f32(-arg_0.c.a.x));
    global2 = array<vec3<u32>, 2>();
    return func_2();
}

fn func_1(arg_0: i32) -> vec3<f32> {
    let var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 29u)] != -29220i, all(vec2<bool>(false, false)), false, select(false, false, true)), true));
    var var_1 = vec3<bool>(false, true, !var_0.x);
    var var_2 = func_4(func_2());
    global0 = array<Struct_3, 7>();
    var_1 = var_0.xyy;
    return var_2.a.xzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), -1438f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(global1[_wgslsmith_index_u32(u_input.a, 29u)])))))));
    var var_1 = ~u_input.a > ~_wgslsmith_dot_vec3_u32(~global2[_wgslsmith_index_u32(select(0u, u_input.c, true), 2u)], _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), global2[_wgslsmith_index_u32(u_input.a, 2u)]) >> (reverseBits(vec3<u32>(u_input.a, 4294967295u, u_input.c)) % vec3<u32>(32u)));
    global2 = array<vec3<u32>, 2>();
    let var_2 = global1[_wgslsmith_index_u32(1u, 29u)] & 18630i;
    global1 = array<i32, 29>();
    let var_3 = -1669f;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 + var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -810f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(333f * -469f), func_4(global0[_wgslsmith_index_u32(u_input.a, 7u)]).c.a.x), -1840f)), Struct_1(vec3<i32>(2147483647i, abs(var_2), -2147483647i), any(vec2<bool>(true, true)), ~abs(countOneBits(vec2<u32>(u_input.c, u_input.c)))), func_4(func_4(func_4(func_2()))).c);
    let var_5 = _wgslsmith_mod_vec3_i32(var_4.b.a, reverseBits(select(~(var_4.b.a | vec3<i32>(-2147483647i, -35937i, global1[_wgslsmith_index_u32(var_4.b.c.x, 29u)])), min(_wgslsmith_add_vec3_i32(var_4.b.a, var_4.b.a), -var_4.b.a), var_4.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(15363i);
}

