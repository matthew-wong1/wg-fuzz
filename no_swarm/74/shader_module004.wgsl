struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: array<f32, 5>;

var<private> global2: array<Struct_2, 25>;

var<private> global3: i32;

var<private> global4: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<u32>(42808u, 2914u, 48834u, 52733u)), Struct_2(vec4<u32>(26050u, 29192u, 53045u, 1u)), Struct_2(vec4<u32>(45887u, 6871u, 10003u, 1u)), Struct_2(vec4<u32>(25626u, 0u, 0u, 1u)), Struct_2(vec4<u32>(0u, 0u, 40761u, 1u)), Struct_2(vec4<u32>(4294967295u, 0u, 18786u, 141004u)), Struct_2(vec4<u32>(1u, 0u, 4294967295u, 1u)), Struct_2(vec4<u32>(4294967295u, 60500u, 9636u, 4294967295u)), Struct_2(vec4<u32>(16126u, 2599u, 1u, 101450u)), Struct_2(vec4<u32>(6814u, 0u, 0u, 40865u)), Struct_2(vec4<u32>(57412u, 4294967295u, 1u, 1u)), Struct_2(vec4<u32>(0u, 1u, 37178u, 28112u)), Struct_2(vec4<u32>(41633u, 20296u, 22273u, 1u)), Struct_2(vec4<u32>(44252u, 1u, 85849u, 1u)), Struct_2(vec4<u32>(68784u, 4294967295u, 95408u, 4294967295u)), Struct_2(vec4<u32>(33870u, 0u, 4294967295u, 1u)), Struct_2(vec4<u32>(1u, 1u, 1u, 0u)), Struct_2(vec4<u32>(4294967295u, 86985u, 0u, 14736u)), Struct_2(vec4<u32>(0u, 4294967295u, 3140u, 12739u)), Struct_2(vec4<u32>(4294967295u, 59422u, 4294967295u, 4294967295u)), Struct_2(vec4<u32>(1u, 4294967295u, 1u, 0u)), Struct_2(vec4<u32>(4294967295u, 26284u, 103570u, 82003u)), Struct_2(vec4<u32>(0u, 4294967295u, 72245u, 8041u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = -188f;
    let var_1 = Struct_1(1u, _wgslsmith_sub_vec2_i32(-(~vec2<i32>(6701i, u_input.c.x)) << (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.b.x), u_input.b.x)), !(!select(global0[_wgslsmith_index_u32(countOneBits(1u), 25u)], select(global0[_wgslsmith_index_u32(77824u, 25u)], vec2<bool>(false, true), false), vec2<bool>(false, true))), min(u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u))), vec2<u32>(u_input.a, u_input.a) & _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(0u, 539u)))));
    return !select(!(!vec3<bool>(false, var_1.c.x, var_1.c.x)), select(vec3<bool>(var_1.c.x && false, var_1.c.x, 10533i == var_1.b.x), select(!vec3<bool>(false, var_1.c.x, true), vec3<bool>(false, false, var_1.c.x), all(var_1.c)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, var_1.c.x, true), var_1.c.x), vec3<bool>(false, true, var_1.c.x), vec3<bool>(var_1.c.x, false, var_1.c.x))), vec3<bool>(var_1.c.x, var_1.c.x, false));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_1(~_wgslsmith_div_u32(reverseBits(4294967295u), abs(u_input.a)), vec2<i32>(arg_2, 42059i), vec2<bool>(all(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -411f), global1[_wgslsmith_index_u32(arg_1.x, 5u)]) <= global1[_wgslsmith_index_u32(reverseBits(arg_0 << (arg_1.x % 32u)), 5u)]), _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(arg_0, reverseBits(arg_0)), arg_0, _wgslsmith_mult_u32(u_input.a, countOneBits(_wgslsmith_mod_u32(arg_0, arg_1.x)))));
    global3 = ~_wgslsmith_add_i32(_wgslsmith_add_i32(-12165i, 1i) & select(~var_0.b.x, -48807i, var_0.c.x), -2147483647i);
    var var_1 = ~11959u;
    let var_2 = Struct_1(_wgslsmith_sub_u32(0u, 0u), vec2<i32>(1i | _wgslsmith_dot_vec2_i32(var_0.b ^ vec2<i32>(arg_2, u_input.c.x), max(var_0.b, vec2<i32>(2147483647i, u_input.c.x))), abs(arg_2)), vec2<bool>(true, any(select(!vec3<bool>(false, var_0.c.x, false), vec3<bool>(true, true, true), any(global0[_wgslsmith_index_u32(arg_0, 25u)])))), select(_wgslsmith_dot_vec3_u32(reverseBits(arg_1.yzz), vec3<u32>(u_input.a, var_0.a, 51775u)), 1u, var_0.c.x) | countOneBits(6452u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1049f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 5u)]))), -160f)) + 1357f);
    return Struct_1(24556u, -(~(var_0.b | vec2<i32>(-2962i, -2147483647i))), func_3().yz, _wgslsmith_mult_u32(arg_1.x, ~arg_0));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<vec2<bool>, 25>();
    var var_1 = global4[_wgslsmith_index_u32(u_input.a, 23u)];
    var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(arg_0.a.x), 25u)];
    return func_2(~4294967295u, ~vec4<u32>(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(43481u, 0u), var_0.a.zy)), 1u, 0u, 12487u), _wgslsmith_div_i32(-2147483647i, ~(-_wgslsmith_sub_i32(-2147483647i, -52988i))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<f32> {
    let var_0 = Struct_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 1u, 60841u) ^ vec4<u32>(0u, 37300u, 61738u, 7011u), countOneBits(vec4<u32>(u_input.a, 41724u, u_input.a, 0u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 42477u, u_input.a, arg_0.a), vec4<u32>(u_input.a, u_input.a, arg_0.d, arg_0.a)), ~max(vec4<u32>(arg_0.d, arg_0.a, u_input.a, u_input.a), vec4<u32>(u_input.a, arg_0.d, 36875u, 4294967295u))) | min(~_wgslsmith_mod_vec4_u32(vec4<u32>(19198u, 4294967295u, arg_0.a, 4294967295u), vec4<u32>(29319u, u_input.a, 1u, arg_0.a)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, arg_0.d, 4294967295u, u_input.a), vec4<u32>(1u, arg_0.d, 4294967295u, 1u), vec4<u32>(arg_0.a, 33555u, u_input.a, 1u)), ~vec4<u32>(51661u, arg_0.d, 18623u, 26558u))));
    let var_1 = global2[_wgslsmith_index_u32(62445u, 25u)];
    global4 = array<Struct_2, 23>();
    var var_2 = Struct_1(1574u, func_1(global4[_wgslsmith_index_u32(var_1.a.x, 23u)]).b, vec2<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(arg_0.c.x, false, true), true), select(vec3<bool>(arg_0.c.x, true, true), vec3<bool>(true, true, false), vec3<bool>(false, arg_0.c.x, false)), select(vec3<bool>(true, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), true))), !any(!vec3<bool>(arg_0.c.x, false, true))), 1u);
    let var_3 = global2[_wgslsmith_index_u32(~firstLeadingBit(var_1.a.x), 25u)];
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global1[_wgslsmith_index_u32(49345u, 5u)]) + vec2<f32>(global1[_wgslsmith_index_u32(var_3.a.x, 5u)], 761f))))) + vec2<f32>(-125f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 5u)] + 1000f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(8595u, 5u)]), vec2<f32>(arg_1, arg_2)) - vec2<f32>(arg_1, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(18721u), 1u), 5u)])), -1254f);
    global1 = array<f32, 5>();
    var var_1 = vec2<f32>(var_0.x, 316f);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-685f, -814f), _wgslsmith_f_op_vec2_f32(func_4(func_1(Struct_2(~vec4<u32>(42682u, 48085u, u_input.a, 1u))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(923f - 553f))))));
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.a), 23u)];
    let var_4 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c, firstTrailingBit(u_input.c)), reverseBits(_wgslsmith_div_vec3_i32(u_input.c, u_input.c))), -_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.c.x, -2147483647i, _wgslsmith_div_i32(1i, u_input.c.x), _wgslsmith_clamp_i32(u_input.c.x, 2147483647i, u_input.c.x)), vec4<i32>(0i, 0i, -u_input.b.x, 33833i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(1766f))), 731f, -_wgslsmith_dot_vec2_i32(select(u_input.c.xx, select(u_input.c.yy, u_input.b, false), global0[_wgslsmith_index_u32(u_input.a, 25u)]), ~func_2(4294967295u, var_3.a, var_4).b));
}

