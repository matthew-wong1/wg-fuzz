struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(1148f, 193f, 676f), vec3<f32>(1000f, 1481f, -1155f), vec3<f32>(-443f, 1051f, -2177f), vec3<f32>(-1476f, 2291f, 215f), vec3<f32>(163f, -435f, -472f), vec3<f32>(541f, -203f, 1428f), vec3<f32>(1108f, -130f, -575f), vec3<f32>(-1084f, -956f, -1006f), vec3<f32>(-1000f, 284f, 1472f), vec3<f32>(334f, -856f, -1000f), vec3<f32>(-515f, -816f, -1000f), vec3<f32>(-1563f, 1849f, 865f), vec3<f32>(367f, -643f, -1978f), vec3<f32>(455f, -158f, -963f), vec3<f32>(-1000f, -163f, 1514f), vec3<f32>(-1110f, -2303f, -1087f), vec3<f32>(-195f, -118f, 1660f), vec3<f32>(127f, -118f, 1000f), vec3<f32>(521f, 131f, -1000f), vec3<f32>(372f, 1000f, 710f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> i32 {
    global0 = array<bool, 27>();
    let var_0 = ~vec4<i32>(max(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(-19980i, -15646i)), _wgslsmith_dot_vec4_i32(-reverseBits(vec4<i32>(1i, 0i, -11953i, u_input.a.x)), abs(vec4<i32>(u_input.d.x, 22005i, u_input.d.x, u_input.d.x))), u_input.d.x, u_input.a.x);
    var var_1 = select(!select(select(vec3<bool>(true, false, false), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], false, false), true), vec3<bool>(global0[_wgslsmith_index_u32(1u >> (1u % 32u), 27u)], !global0[_wgslsmith_index_u32(0u, 27u)], true), -1024f != _wgslsmith_f_op_f32(step(-1131f, -587f))), !vec3<bool>(!global0[_wgslsmith_index_u32(1521u, 27u)] | global0[_wgslsmith_index_u32(max(0u, u_input.c), 27u)], true, false), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, u_input.b), 37526u, u_input.c & 40141u), 15274u), ~((u_input.c ^ 0u) | 20455u)), 27u)]);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(308f, _wgslsmith_f_op_f32(f32(-1f) * -928f), (0u >= ~u_input.b) & false)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-766f)) - _wgslsmith_f_op_f32(min(246f, 1000f))) - _wgslsmith_f_op_f32(f32(-1f) * -353f)))));
    var var_3 = vec2<bool>(!global0[_wgslsmith_index_u32(31945u >> (abs(3224u << (u_input.b % 32u)) % 32u), 27u)], true);
    return -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, 1i, select(u_input.d.x, -1i, global0[_wgslsmith_index_u32(39842u, 27u)])), var_0), (~1i & u_input.d.x) >> (1u % 32u));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    var var_0 = reverseBits(abs(min(u_input.a.xy, u_input.d.xz)));
    var_0 = _wgslsmith_mod_vec2_i32(u_input.d.xz, _wgslsmith_mult_vec2_i32(vec2<i32>(~abs(2147483647i), -func_3()), u_input.a.xy));
    global0 = array<bool, 27>();
    var var_1 = Struct_1(-_wgslsmith_mod_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(2147483647i, var_0.x, u_input.a.x, var_0.x))), vec4<i32>(1i, -20229i, var_0.x & 1i, ~1i)), !(!vec2<bool>(false, all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(58695u, 27u)], true)))), ~(~vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(7205i, u_input.a.x), -9182i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))));
    var var_2 = Struct_1(vec4<i32>(_wgslsmith_div_i32(-2147483647i, -16520i), i32(-1i) * -2147483647i, ~_wgslsmith_dot_vec3_i32(abs(var_1.c), vec3<i32>(-1i, u_input.d.x, -47452i) & vec3<i32>(1i, 3195i, u_input.a.x)), _wgslsmith_dot_vec4_i32(var_1.a, countOneBits(vec4<i32>(0i, var_0.x, -44787i, 1i) ^ vec4<i32>(-8090i, -19981i, var_0.x, var_1.c.x)))), vec2<bool>(all(var_1.b), !(!global0[_wgslsmith_index_u32(abs(9291u), 27u)])), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2641f)), var_1.d))));
    return select(!vec2<bool>(var_1.b.x, select(!var_2.b.x, var_1.b.x, select(false, var_2.b.x, true))), !var_1.b, select(select(var_2.b, select(!vec2<bool>(var_2.b.x, false), var_1.b, select(var_1.b, vec2<bool>(true, true), vec2<bool>(true, false))), true), var_1.b, !var_1.b));
}

fn func_1() -> StorageBuffer {
    let var_0 = firstLeadingBit(reverseBits(9046i));
    let var_1 = 881f;
    var var_2 = -(i32(-1i) * -u_input.a.x);
    var var_3 = vec4<i32>(_wgslsmith_clamp_i32(~2126i, i32(-1i) * -2355i, ~u_input.a.x), -2147483647i, 1i, ~u_input.a.x);
    let var_4 = select(select(select(vec2<bool>(true, true || global0[_wgslsmith_index_u32(u_input.c, 27u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 27u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(11617u, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(76390u, 27u)]), false), vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 27u)])), global0[_wgslsmith_index_u32(30960u, 27u)]), func_2(-1000f), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f + var_1) + 1011f)).x), vec2<bool>(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * -582f)).x, global0[_wgslsmith_index_u32(38655u, 27u)] & !(true && global0[_wgslsmith_index_u32(1u, 27u)])), any(select(select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(31119u, 27u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(15811u, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)]), false), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)], true, global0[_wgslsmith_index_u32(1u, 27u)]), !vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(u_input.c, 27u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 27u)], false, global0[_wgslsmith_index_u32(u_input.c, 27u)], true)), vec4<bool>(true, global0[_wgslsmith_index_u32(11533u, 27u)], any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.c, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)], true)), global0[_wgslsmith_index_u32(~u_input.c, 27u)]))));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1)), _wgslsmith_f_op_f32(ceil(var_1)), _wgslsmith_div_f32(var_1, var_1), _wgslsmith_f_op_f32(exp2(var_1)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(205f * 1000f) + _wgslsmith_f_op_f32(abs(-260f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))) + var_1), firstTrailingBit((-9067i ^ min(25459i, var_3.x)) & 0i), countOneBits(19779i), _wgslsmith_sub_u32(abs(_wgslsmith_add_u32(34172u, 1u)), u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 20>();
    global0 = array<bool, 27>();
    let var_0 = countOneBits(vec4<u32>(min(98770u, ~u_input.c) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(116243u, 4294967295u, 1u), vec3<u32>(10015u, 0u, 4294967295u)), 478u), u_input.b, 1u, 83282u));
    var var_1 = 1i;
    global1 = array<vec3<f32>, 20>();
    let var_2 = firstTrailingBit(-2147483647i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1752f, -550f)))))))));
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = func_1();
}

