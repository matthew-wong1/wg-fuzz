struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -37472i;

var<private> global1: array<vec4<u32>, 11>;

var<private> global2: array<vec2<i32>, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    var var_0 = true;
    var var_1 = Struct_1(any(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), 1584f, vec2<bool>(any(vec4<bool>(true, true, true, u_input.b <= u_input.a)), any(vec3<bool>(0u <= u_input.a, u_input.b < 18517u, true))));
    var var_2 = u_input.c;
    var var_3 = var_1.a;
    global1 = array<vec4<u32>, 11>();
    return 177f;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(!(!(!(!vec3<bool>(true, arg_2.c.x, arg_2.c.x)))), select(!(!select(vec3<bool>(arg_2.c.x, arg_2.a, false), vec3<bool>(true, arg_2.c.x, arg_2.a), arg_2.a)), select(select(select(vec3<bool>(arg_2.a, false, true), vec3<bool>(arg_2.a, arg_2.c.x, false), vec3<bool>(false, true, arg_2.a)), !vec3<bool>(false, false, arg_2.c.x), vec3<bool>(false, arg_2.c.x, arg_2.a)), select(!vec3<bool>(true, arg_2.a, arg_2.c.x), vec3<bool>(false, true, arg_2.c.x), select(vec3<bool>(arg_2.a, arg_2.a, false), vec3<bool>(arg_2.c.x, true, arg_2.a), true)), true == arg_2.c.x), any(vec3<bool>(arg_2.c.x, arg_2.a, all(vec4<bool>(arg_2.c.x, true, false, arg_2.a))))), vec3<bool>(arg_2.a, arg_2.c.x, arg_2.a));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b - var_1.b), _wgslsmith_f_op_f32(arg_2.b + arg_1), -1256f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, var_1.b, arg_1))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-598f * arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(ceil(var_1.b))))));
    global2 = array<vec2<i32>, 28>();
    let var_3 = ~(~global1[_wgslsmith_index_u32(u_input.b, 11u)]);
    return Struct_1(true, 155f, select(vec2<bool>(-u_input.c == -1i, var_0.x), select(!(!vec2<bool>(arg_2.a, true)), select(!var_1.c, var_1.c, select(arg_2.c, vec2<bool>(true, arg_2.c.x), arg_2.c)), (var_1.c.x && var_0.x) & true), all(!(!vec4<bool>(false, var_1.a, arg_2.c.x, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = ~(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.a), ~vec2<u32>(0u, u_input.a))) << (24228u % 32u));
    var var_1 = vec3<u32>(countOneBits(~(~_wgslsmith_mod_u32(1u, 4294967295u))), 4294967295u, _wgslsmith_add_u32(~countOneBits(~u_input.a), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0, 27343u)), select(vec2<u32>(44792u, 25684u) | vec2<u32>(21888u, var_0), vec2<u32>(u_input.b, 0u) ^ vec2<u32>(38155u, 14721u), arg_0.c))));
    var var_2 = Struct_1(1i >= abs(~(~u_input.c)), _wgslsmith_f_op_f32(floor(624f)), arg_0.c);
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    return func_3(~(~(~var_1.xy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -635f)), vec2<bool>(select(arg_1.x >= arg_0.b, !var_2.c.x, var_2.c.x), false & arg_0.a)));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = false;
    return u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(floor(1449f)), true, Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-180f, -981f)) - 1274f)), vec2<bool>(true, true)), func_4(func_3(vec2<u32>(17245u, u_input.a) & (vec2<u32>(1u, u_input.a) >> (vec2<u32>(35909u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), Struct_1(false, -1000f, vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(331f, 445f, -615f, 319f), vec4<f32>(-891f, 589f, 682f, 825f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1007f, 1683f, -319f, 297f) - vec4<f32>(246f, 1182f, -785f, -409f)), true))), -36432i));
    global0 = reverseBits(~(-34644i)) >> ((0u | (~u_input.b ^ u_input.a)) % 32u);
    let var_1 = !any(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, false, false))));
    let var_2 = vec3<u32>(0u, ~u_input.b, _wgslsmith_mod_u32(~24740u, func_5(_wgslsmith_f_op_f32(trunc(488f)), false, func_3(max(vec2<u32>(u_input.b, 14550u), vec2<u32>(u_input.a, u_input.b)), -880f, func_4(Struct_1(var_1, 359f, vec2<bool>(var_1, var_1)), vec4<f32>(-669f, 1702f, -1000f, -301f), 1i)), func_4(Struct_1(var_1, -338f, vec2<bool>(var_1, false)), vec4<f32>(-361f, -1382f, 131f, 407f), firstTrailingBit(59615i)))));
    var var_3 = Struct_1(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1829f * -1032f), _wgslsmith_f_op_f32(f32(-1f) * -294f), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-158f + -1981f) + _wgslsmith_f_op_f32(f32(-1f) * -1335f))))), func_4(Struct_1(true, -433f, select(select(vec2<bool>(var_1, false), vec2<bool>(true, true), var_1), vec2<bool>(var_1, false), vec2<bool>(var_1, var_1))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1777f)), _wgslsmith_f_op_f32(func_4(Struct_1(var_1, 1672f, vec2<bool>(true, false)), vec4<f32>(-923f, 1105f, 642f, -994f), u_input.c).b * func_4(Struct_1(true, 127f, vec2<bool>(false, var_1)), vec4<f32>(-1121f, -698f, -1915f, 1000f), 2147483647i).b), _wgslsmith_f_op_f32(-1094f - func_3(var_2.xz, -495f, Struct_1(true, 204f, vec2<bool>(true, false))).b), -1134f), -reverseBits(2147483647i)).c);
    return func_4(func_3(min(reverseBits(max(var_2.zz, var_2.yx)), max(_wgslsmith_sub_vec2_u32(var_2.zz, var_2.yx), vec2<u32>(var_2.x, 6165u))), var_3.b, func_4(func_4(Struct_1(var_1, 1057f, vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1256f, var_3.b, 113f, var_3.b) - vec4<f32>(var_3.b, var_3.b, var_3.b, -868f)), abs(-2147483647i)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, var_3.b, var_3.b, -147f) + vec4<f32>(1000f, var_3.b, var_3.b, var_3.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b, 908f, 507f, -1260f))))), _wgslsmith_div_i32(-5036i, _wgslsmith_mult_i32(u_input.c, u_input.c)))), vec4<f32>(-1315f, 201f, var_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f + var_3.b)))), 53710i);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    global0 = max(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.c, max(u_input.c, u_input.c)), u_input.c), _wgslsmith_add_i32(1i, ~(~(-1i)))) >> (_wgslsmith_mod_u32(10221u, ~arg_0.x) % 32u);
    global2 = array<vec2<i32>, 28>();
    let var_0 = 0i;
    var var_1 = func_1();
    var var_2 = arg_0.xy;
    return -9682i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-219f)), _wgslsmith_f_op_f32(abs(1338f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2065f - 990f) * _wgslsmith_f_op_f32(round(476f)))) * -960f), !(!vec2<bool>(1u == u_input.a, true)));
    let var_1 = 0u;
    global1 = array<vec4<u32>, 11>();
    let var_2 = vec3<i32>(u_input.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-31613i, func_6(~global1[_wgslsmith_index_u32(var_1, 11u)], func_1(), 4294967295u, Struct_1(true, var_0.b, var_0.c))), _wgslsmith_mult_i32(-u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -49281i), firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i))))), u_input.c);
    let var_3 = ~select(firstLeadingBit(abs(global2[_wgslsmith_index_u32(var_1, 28u)]) << (firstLeadingBit(vec2<u32>(0u, 30384u)) % vec2<u32>(32u))), global2[_wgslsmith_index_u32(~(~7858u), 28u)], var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(48489u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(var_1, 11u)], global1[_wgslsmith_index_u32(var_1, 11u)], vec4<u32>(4294967295u, var_1, 7849u, var_1)), ~vec4<u32>(u_input.b, 4294967295u, var_1, 34457u)), 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1659f, 324f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, 416f), vec2<f32>(-168f, var_0.b), false)))))), ~select(var_1, u_input.b, (var_1 < 1753u) || (var_0.b < -1447f)));
}

