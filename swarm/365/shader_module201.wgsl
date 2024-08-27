struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: vec3<u32>) -> bool {
    let var_0 = vec3<bool>(arg_0.a > _wgslsmith_f_op_f32(trunc(-1511f)), !(!(arg_0.a < _wgslsmith_f_op_f32(599f * arg_0.a))), any(vec4<bool>(all(vec4<bool>(false, true, false, true)), true, true, !(u_input.b.x > arg_2.x))));
    var var_1 = Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -470f), 793f, arg_0.a, _wgslsmith_f_op_f32(abs(arg_0.a)))))), select(vec3<bool>(!(!var_0.x), false, any(vec4<bool>(true, var_0.x, false, var_0.x))), select(var_0, vec3<bool>(!var_0.x, any(vec2<bool>(true, var_0.x)), var_0.x || true), var_0.x | true), !(!var_0)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), var_1.a, -1054f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(1151f, 1681f), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -371f) + 1021f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), -692f))))));
    var var_3 = Struct_3(var_0.x);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_1.b.wzw)));
    return any(vec3<bool>((true | var_0.x) & !(var_3.a || false), true, !select(1027f != var_1.a, all(var_0), all(vec2<bool>(var_1.c.x, var_0.x)))));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, min(4294967295u, ~4294967295u), _wgslsmith_div_u32(u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, u_input.b.x))), countOneBits(vec4<u32>(u_input.b.x, 1u, _wgslsmith_clamp_u32(66403u, ~4294967295u, ~0u), ~u_input.b.x)));
    var var_1 = true;
    let var_2 = Struct_5(_wgslsmith_div_f32(-918f, -358f));
    var_1 = false;
    let var_3 = func_3(var_2, 4294967295u, var_0.wwx);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -2119f, var_2.a)) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, var_2.a))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, -900f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(677f, -1622f, var_2.a), vec3<f32>(var_2.a, var_2.a, var_2.a))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(max(954f, _wgslsmith_f_op_f32(var_2.a * 1040f))), _wgslsmith_f_op_f32(var_2.a + var_2.a))));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_3(true);
    var var_1 = _wgslsmith_clamp_u32(24527u, 31073u, select(abs(1u) << (arg_1 % 32u), _wgslsmith_add_u32(firstLeadingBit(~4294967295u), 48502u ^ _wgslsmith_add_u32(35454u, arg_1)), false));
    let var_2 = true;
    var var_3 = arg_0.a;
    var_1 = _wgslsmith_clamp_u32(firstTrailingBit(select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 57132u, 0u, 1u), vec4<u32>(arg_1, 65266u, 2585u, arg_1)), 35271u, !var_0.a) >> (9411u % 32u)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(select(4294967295u, 1u, var_2), u_input.b.x), u_input.b.x), 100812u);
    return Struct_2(Struct_1(arg_2.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(350f, 161f, arg_2.x, arg_2.x) * vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -569f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1071f, -313f, 1317f, arg_2.x)))), vec4<bool>(true, true, all(vec2<bool>(true, false)), true))), !(!(!vec3<bool>(false, var_2, true)))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32, arg_3: i32) -> vec2<i32> {
    var var_0 = ~(i32(-1i) * -1287i);
    let var_1 = func_4(Struct_4(arg_3), u_input.b.x, _wgslsmith_f_op_vec3_f32(func_2()));
    let var_2 = select(!vec4<bool>(all(var_1.a.c.yx), select(func_4(Struct_4(u_input.c.x), 69428u, var_1.a.b.zwx).a.c.x, var_1.a.c.x, true), var_1.a.c.x, var_1.a.c.x), select(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, var_1.a.c.x, var_1.a.c.x, false))), vec4<bool>(all(select(var_1.a.c.zy, var_1.a.c.xy, vec2<bool>(false, false))), _wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(32047u, arg_1, 16977u)) < 0u, !var_1.a.c.x, _wgslsmith_f_op_f32(arg_2 - var_1.a.a) < -167f), !select(!vec4<bool>(false, true, var_1.a.c.x, false), select(vec4<bool>(false, true, false, var_1.a.c.x), vec4<bool>(var_1.a.c.x, var_1.a.c.x, true, var_1.a.c.x), vec4<bool>(var_1.a.c.x, var_1.a.c.x, false, var_1.a.c.x)), select(vec4<bool>(var_1.a.c.x, var_1.a.c.x, true, true), vec4<bool>(var_1.a.c.x, true, var_1.a.c.x, true), var_1.a.c.x))), vec4<bool>(true, !var_1.a.c.x, var_1.a.c.x, false));
    let var_3 = var_1.a.c.x;
    let var_4 = vec4<bool>(var_2.x, true, false, var_3);
    return _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, arg_3), u_input.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(255f)));
    var var_1 = ~abs(-func_1(~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), firstTrailingBit(u_input.b.x), 1f, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c.x, 0i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.c.x, 0i))));
    var var_2 = 1u;
    var_1 = countOneBits(abs(~_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.zy, vec2<i32>(var_1.x, u_input.a)), vec2<i32>(u_input.a, 22211i))));
    var var_3 = !func_4(Struct_4(-16002i), u_input.b.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 + 443f), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(-var_0)) * vec3<f32>(909f, -535f, var_0))).a.c.xx;
    var_2 = ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, u_input.b.x & u_input.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 69160u, u_input.b.x), vec3<u32>(0u, u_input.b.x, 1u))) << (~firstLeadingBit(~(~1u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1967f))))), _wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c)) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(23104u, 33791u, u_input.b.x) & (vec3<u32>(u_input.b.x, 5540u, 78429u) | vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), vec3<u32>(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_add_u32(u_input.b.x, 13045u), ~u_input.b.x)) % 32u));
}

