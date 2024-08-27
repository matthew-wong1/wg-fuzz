struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> bool {
    global0 = select(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(_wgslsmith_add_vec2_i32(arg_0.d.zz, arg_0.b)), -arg_0.b), arg_0.b), arg_0.c.x);
    global0 = -1i;
    global0 = 2147483647i;
    return arg_0.c.x;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    let var_0 = Struct_1(select(vec2<bool>(arg_2.x | true, arg_0.c.x), select(select(!arg_2.yy, !vec2<bool>(false, arg_0.c.x), !vec2<bool>(arg_0.c.x, arg_0.c.x)), arg_0.c.zy, _wgslsmith_f_op_f32(sign(-108f)) <= 1000f), select(!select(arg_0.c.yy, vec2<bool>(true, arg_0.c.x), arg_2.x), select(arg_2.zz, arg_2.zz, false), any(vec2<bool>(false, true)) & !arg_2.x)), arg_0.b.x);
    let var_1 = _wgslsmith_f_op_f32(select(-1000f, 1096f, true));
    var var_2 = true;
    return arg_0.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> vec2<f32> {
    let var_0 = !select(arg_0.ww, !(!vec2<bool>(false, arg_0.x)), arg_0.x);
    global0 = 0i;
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, func_4(Struct_4(abs(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 1u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, 0i)), vec3<bool>(true, arg_0.x, var_0.x), vec4<i32>(u_input.c, u_input.c, -7664i, u_input.c), -2147483647i), _wgslsmith_add_i32(u_input.c, _wgslsmith_sub_i32(-44297i, 40114i)), vec4<bool>(!arg_0.x, any(arg_0), func_3(Struct_4(vec4<u32>(4294967295u, 4294967295u, 24035u, 10912u), vec2<i32>(-2147483647i, 0i), vec3<bool>(var_0.x, arg_0.x, arg_0.x), vec4<i32>(-1i, u_input.c, u_input.c, 26027i), u_input.c)), any(vec3<bool>(var_0.x, var_0.x, var_0.x))))), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(16778u, u_input.a, 122865u), vec3<u32>(4294967295u, u_input.a, 289u), arg_0.zxz), vec3<u32>(~u_input.b.x, 1u, ~4294967295u)), vec3<u32>(u_input.b.x, min(u_input.b.x, u_input.a), min(1u, u_input.b.x)) ^ _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.a, 80340u, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 0u, 26095u), vec3<u32>(u_input.a, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, 26033u, u_input.a)))));
    var var_2 = Struct_1(select(vec2<bool>(var_0.x, true), !select(var_0, select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, var_0.x)), false), u_input.c);
    var var_3 = 949f;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, -1536f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)), -1136f)));
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> i32 {
    global0 = u_input.c;
    global0 = arg_0.x;
    var var_0 = Struct_4(~(~vec4<u32>(~4294967295u, ~48019u, ~u_input.a, 4294967295u ^ u_input.b.x)), arg_0 ^ firstTrailingBit(select(vec2<i32>(-6711i, arg_1) & vec2<i32>(2147483647i, arg_1), countOneBits(arg_0), true)), select(!vec3<bool>(select(true, false, true), func_3(Struct_4(vec4<u32>(4294967295u, u_input.b.x, u_input.a, u_input.b.x), arg_0, vec3<bool>(true, true, false), vec4<i32>(0i, -31274i, u_input.c, u_input.c), 75733i)), true), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), false), firstTrailingBit(min(vec4<i32>(-2147483647i, 2147483647i, arg_0.x, 34260i), -vec4<i32>(arg_0.x, arg_1, u_input.c, u_input.c)) | (min(vec4<i32>(arg_0.x, -1i, arg_0.x, 1i), vec4<i32>(-1i, 13606i, arg_0.x, u_input.c)) & select(vec4<i32>(u_input.c, u_input.c, arg_0.x, -600i), vec4<i32>(u_input.c, u_input.c, u_input.c, 2147483647i), false))), -select(abs(47100i) << (u_input.a % 32u), -8004i & _wgslsmith_mod_i32(-1i, u_input.c), 1i > firstTrailingBit(u_input.c)));
    var var_1 = vec3<bool>(true, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x))), _wgslsmith_f_op_f32(round(-758f)), any(vec2<bool>(var_0.c.x, true)) | true)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, arg_2.x)))));
    let var_2 = true;
    return countOneBits(var_0.d.x ^ (arg_0.x << (reverseBits(var_0.a.x) % 32u))) ^ 2147483647i;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> i32 {
    let var_0 = vec2<i32>(func_5(max(arg_2.d.ww, (vec2<i32>(u_input.c, u_input.c) & vec2<i32>(2147483647i, -1i)) >> (~arg_2.a.yw % vec2<u32>(32u))), u_input.c, _wgslsmith_f_op_vec2_f32(func_2(!vec4<bool>(false, arg_1, arg_1, false), _wgslsmith_f_op_f32(round(-3472f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-990f, 421f, -393f, 1746f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1591f, 179f, -1839f, -590f) + vec4<f32>(-439f, 1000f, -1443f, 559f)) + vec4<f32>(-1000f, -258f, 646f, 1109f)), !arg_1))), -(abs(1i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 6335u, 41719u), ~vec3<u32>(1u, 0u, arg_0)) % 32u)));
    global0 = ~countOneBits(var_0.x ^ ~(var_0.x & -1881i));
    global0 = abs(-1i);
    global0 = arg_2.e;
    global0 = var_0.x;
    return abs(u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, func_1(45285u, false, Struct_4(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 56350u), vec2<i32>(2147483647i, -2147483647i), vec3<bool>(false, true, true), vec4<i32>(0i, u_input.c, 2147483647i, u_input.c), 2147483647i))), select(-(vec2<i32>(u_input.c, 1i) >> (u_input.b % vec2<u32>(32u))), min(abs(vec2<i32>(-1i, u_input.c)), vec2<i32>(u_input.c, -10946i)), func_3(Struct_4(vec4<u32>(u_input.b.x, 4294967295u, u_input.a, 1u), vec2<i32>(u_input.c, 1i), vec3<bool>(false, true, false), vec4<i32>(0i, -2147483647i, u_input.c, u_input.c), -4038i)))), 0i, ~(-2147483647i));
    let var_1 = firstTrailingBit(vec4<i32>(-1i & _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c, -32953i, u_input.c), select(vec3<i32>(-10824i, -5932i, 2147483647i), vec3<i32>(0i, var_0.x, var_0.x), false)), ~0i, var_0.x, u_input.c));
    var var_2 = Struct_1(vec2<bool>(!(any(vec2<bool>(true, true)) || true), true), -1898i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.x, _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(var_0.xy, vec2<i32>(var_1.x, -1i))), -26610i) ^ vec3<i32>(_wgslsmith_div_i32(1i, var_1.x), -1i, 86585i));
}

