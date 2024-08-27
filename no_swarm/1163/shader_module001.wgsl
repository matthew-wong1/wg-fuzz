struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1> = array<i32, 1>(-1i);

var<private> global1: array<Struct_5, 27>;

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(i32(-2147483648), 11222i, 2147483647i, 2147483647i), vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 30689i), vec4<i32>(i32(-2147483648), 6637i, 1i, 1i), vec4<i32>(24312i, -8835i, 4881i, 21983i), vec4<i32>(2147483647i, 1i, -1i, 22611i), vec4<i32>(0i, -22545i, 2147483647i, 1i), vec4<i32>(0i, 0i, 1i, 42290i), vec4<i32>(0i, -1i, -22087i, -44774i), vec4<i32>(0i, 71958i, -39466i, 32577i), vec4<i32>(i32(-2147483648), i32(-2147483648), 22044i, 0i), vec4<i32>(0i, -58551i, 29509i, -11477i), vec4<i32>(1i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(-10026i, 2147483647i, 1i, -12115i), vec4<i32>(1i, 1i, -1i, 38336i), vec4<i32>(4041i, 36541i, 57315i, -55135i), vec4<i32>(-1i, -10760i, -30435i, 2147483647i), vec4<i32>(41126i, 11800i, i32(-2147483648), -8628i));

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: Struct_5) -> f32 {
    let var_0 = arg_1;
    global3 = array<vec4<i32>, 17>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.x, arg_2.d.a, var_0.b.x), vec3<u32>(57637u, u_input.e.x, arg_1.d))), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(u_input.c, u_input.e.x, 2205u), vec3<u32>(arg_1.d, 38008u, 4294967295u)), firstTrailingBit(vec3<u32>(28085u, 47876u, arg_1.b.x))) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(arg_2.d.c.x, 0u, arg_2.d.a), ~arg_1.b.ywz), ~(vec3<u32>(arg_1.d, arg_1.b.x, 14984u) & vec3<u32>(arg_2.d.a, var_0.d, arg_1.b.x)), countOneBits(select(vec3<u32>(10229u, var_0.b.x, arg_1.b.x), vec3<u32>(var_0.d, 1u, arg_2.d.a), arg_2.c))) % vec3<u32>(32u))), 27u)];
    let var_2 = select(min(min(vec3<i32>(u_input.a.x ^ 2147483647i, ~arg_0.x, arg_0.x), ~(vec3<i32>(-1i, 14055i, 0i) ^ var_1.a.b.xwx)), max(_wgslsmith_div_vec3_i32(~arg_2.a.b.wzw, _wgslsmith_sub_vec3_i32(var_1.a.b.yzz, arg_2.a.b.xyw)), arg_2.a.b.wxw)), -firstTrailingBit(vec3<i32>(firstLeadingBit(0i), _wgslsmith_add_i32(-45533i, -17868i), countOneBits(-40822i))), select(any(vec3<bool>(all(vec2<bool>(true, true)), arg_2.e, false)), true, true));
    var var_3 = 51105u;
    return _wgslsmith_f_op_f32(sign(arg_2.a.a.x));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_mult_u32(83319u, u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1212f, -1588f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.a, Struct_4(vec4<f32>(2202f, 269f, -112f, 824f), vec4<u32>(4294967295u, 39775u, u_input.d, u_input.d), vec4<bool>(false, true, true, false), u_input.c), global1[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_f32(f32(-1f) * -327f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(309f, 930f)))))), u_input.e.yz);
    global3 = array<vec4<i32>, 17>();
    var var_1 = vec3<bool>(false, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !any(vec2<bool>(false, false)))));
    var_1 = !vec3<bool>(var_1.x, true, false);
    let var_2 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(2349f - 840f), _wgslsmith_f_op_f32(-492f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b.x)))), var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1065f)), ~(~select(vec4<u32>(4294967295u, u_input.c, var_0.a, 1u), vec4<u32>(var_0.c.x, 4294967295u, 1u, u_input.d), false) << (~vec4<u32>(var_0.c.x, var_0.a, 4294967295u, 79703u) % vec4<u32>(32u))), vec4<bool>(all(select(!vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, var_1.x), var_1.yy, true), true)), !(!all(vec3<bool>(var_1.x, var_1.x, var_1.x))), !var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1328f) > var_0.b.x), _wgslsmith_sub_u32(reverseBits(1u), ~u_input.d) << (abs(u_input.e.x) % 32u));
    return Struct_2(-5862i < _wgslsmith_mod_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_2.b.x, 1u)], u_input.a.x), ~(~109415i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))) - _wgslsmith_f_op_vec3_f32(min(var_2.a.xzz, _wgslsmith_f_op_vec3_f32(-var_2.a.yzw)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-757f)), var_2.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1275f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = _wgslsmith_mult_u32(u_input.e.x, ~(u_input.d | u_input.d));
    let var_2 = arg_2;
    global3 = array<vec4<i32>, 17>();
    var_1 = countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.b, 0u, u_input.d)), ~(vec4<u32>(4294967295u, u_input.e.x, 0u, u_input.d) | vec4<u32>(u_input.c, 75973u, arg_2, 4294967295u))), _wgslsmith_div_u32(30096u, _wgslsmith_mod_u32(u_input.b, var_2))));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> vec3<i32> {
    var var_0 = !(!(!(!vec4<bool>(arg_0.a, arg_0.a, false, true))));
    let var_1 = vec2<bool>(_wgslsmith_dot_vec4_i32(max(arg_1.b, arg_1.b), abs(_wgslsmith_add_vec4_i32(vec4<i32>(arg_3, 0i, 76653i, global0[_wgslsmith_index_u32(23284u, 1u)]), global3[_wgslsmith_index_u32(u_input.c, 17u)]))) != ~firstTrailingBit(2147483647i), var_0.x);
    let var_2 = u_input.e.x;
    var var_3 = arg_0;
    var var_4 = arg_0.a | !(!var_0.x);
    return firstLeadingBit(vec3<i32>(arg_2.x, _wgslsmith_add_i32(arg_3, abs(2147483647i)), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(firstLeadingBit(max(0u, 0u)) ^ u_input.e.x));
    var var_1 = _wgslsmith_sub_vec3_i32(max(select(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -2147483647i, -1i) >> (u_input.e % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 1u)], u_input.a.x, -2147483647i)), ~abs(vec3<i32>(u_input.a.x, u_input.a.x, -20907i)), vec3<bool>(false, u_input.a.x <= u_input.a.x, any(vec4<bool>(true, false, true, false)))), vec3<i32>(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(0u, 1u)], 26171i), ~(-20829i) ^ (0i << (u_input.d % 32u)), u_input.a.x)), -func_4(func_1(global4[_wgslsmith_index_u32(u_input.d, 18u)], min(u_input.a.x, -37372i), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(0u, u_input.d))), Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(375f, -297f, 402f, -784f), vec4<f32>(-1000f, -470f, 1016f, 1395f))), ~global3[_wgslsmith_index_u32(45800u, 17u)]), vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 1u)]), u_input.a.x, 1i), _wgslsmith_div_i32(max(u_input.a.x, 2147483647i), -19545i)));
    var_0 = ~u_input.c;
    let var_2 = u_input.e;
    var_1 = vec3<i32>(u_input.a.x, u_input.a.x, -global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 0u, 91554u, 32095u), vec4<u32>(var_2.x, u_input.e.x, 4294967295u, var_2.x)) ^ 4294967295u), 1u)]);
    var var_3 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(229f, -1621f, 617f, -657f) + vec4<f32>(1085f, 1984f, -946f, 1305f)))), -select(~global3[_wgslsmith_index_u32(var_2.x, 17u)], abs(global3[_wgslsmith_index_u32(31554u, 17u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false))), 19444i, _wgslsmith_mod_u32(u_input.d, u_input.e.x)).a;
    var var_4 = func_2();
    var_4 = Struct_2(any(!select(vec4<bool>(true, false, var_4.a, var_4.a), !vec4<bool>(true, false, var_4.a, var_4.a), -521f > var_4.b.x)), _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.d, 12u)]), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_4.b.x, -189f), _wgslsmith_f_op_f32(var_4.b.x + var_4.c.x), _wgslsmith_f_op_f32(round(var_4.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b.x, var_4.c.x, var_4.c.x) + var_4.b) + vec3<f32>(var_4.c.x, var_4.c.x, var_4.b.x))), var_4.c)));
    global1 = array<Struct_5, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(0u, u_input.e.x)));
}

