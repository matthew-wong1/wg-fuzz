struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = arg_1.c.c;
    let var_1 = ~u_input.e;
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(var_0));
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(var_0));
    var var_3 = 1u;
    return 0u;
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(1210f, arg_0);
    let var_1 = ~(~(~(~u_input.a.xxw)));
    var var_2 = vec3<bool>(!(false != (true || any(vec3<bool>(true, false, true)))), false, true);
    var_2 = select(!select(!(!vec3<bool>(var_2.x, true, true)), select(vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(false, false, var_2.x), select(vec3<bool>(false, var_2.x, false), vec3<bool>(false, false, var_2.x), var_2.x)), var_2.x), select(vec3<bool>(!all(vec3<bool>(true, var_2.x, var_2.x)), var_2.x, false), vec3<bool>(true, var_2.x, var_2.x), all(vec3<bool>(!var_2.x, var_2.x | var_2.x, !var_2.x))), vec3<bool>(all(vec3<bool>(false, var_2.x, var_2.x && true)), var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(313f)), _wgslsmith_f_op_f32(select(1000f, 1000f, false)))) != -1685f));
    var_2 = select(vec3<bool>(false, true, arg_0 == arg_0), !(!(!vec3<bool>(false, true, var_2.x))), vec3<bool>(any(!vec4<bool>(var_2.x, true, var_2.x, true)), false, any(!vec3<bool>(var_2.x, false, var_2.x))));
    return _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_0, -698f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-165f, var_0, 2066f), vec3<f32>(arg_0, -938f, arg_0), vec3<bool>(var_2.x, false, var_2.x))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 624f, arg_0))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1508f), _wgslsmith_f_op_f32(-arg_0), var_0) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -1093f, arg_0)))))))));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec4<f32> {
    var var_0 = u_input.e;
    var_0 = select(u_input.e, u_input.d.x, !(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(0i, u_input.d.x, u_input.d.x)), u_input.d.x) != (i32(-1i) * -10285i)));
    var var_1 = Struct_3(Struct_1(1000f, 0u, vec4<f32>(1f, 1f, 1f, 1f), vec4<u32>(~(~2914u), func_1(_wgslsmith_f_op_vec3_f32(func_3(476f, vec2<i32>(-17334i, 2147483647i))), Struct_2(false, 1u, Struct_1(-412f, arg_0, vec4<f32>(1679f, 315f, 318f, -789f), u_input.a, u_input.a.zw)), u_input.a.yzw), ~u_input.a.x, u_input.a.x), ~vec2<u32>(arg_0, arg_1)), vec2<bool>(any(vec2<bool>(any(vec3<bool>(true, true, false)), true)), true), -25441i, Struct_2(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)))), 4294967295u, Struct_1(-198f, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(396f, 867f, -352f, -1769f) * vec4<f32>(-355f, 1311f, -2020f, -1000f))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1893u, arg_0, 11407u, 6349u)), vec4<u32>(arg_1, arg_0, u_input.a.x, arg_0), _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), ~u_input.a.zx)), Struct_2(any(select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)), 33576u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(124f)) - _wgslsmith_f_op_f32(select(1348f, 629f, true))), _wgslsmith_clamp_u32(arg_0, arg_1, arg_1) >> (countOneBits(1u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(865f, -539f, 884f, -243f) + vec4<f32>(-1075f, -172f, 2501f, 1000f))), u_input.a, _wgslsmith_add_vec2_u32(u_input.a.wz, u_input.a.xz))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.a.c.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(select(1536f, _wgslsmith_f_op_f32(var_2 * -534f), var_1.d.a)), any(!var_1.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a)))), u_input.c, var_1.a.c, _wgslsmith_mod_vec4_u32(select(vec4<u32>(abs(62009u), firstLeadingBit(u_input.b), ~var_1.a.b, _wgslsmith_div_u32(var_1.a.b, arg_1)), vec4<u32>(arg_0, _wgslsmith_mod_u32(u_input.b, arg_1), _wgslsmith_dot_vec4_u32(var_1.e.c.d, vec4<u32>(12694u, arg_1, 51289u, 1u)), ~0u), select(select(vec4<bool>(true, var_1.e.a, true, var_1.e.a), vec4<bool>(var_1.b.x, false, false, true), var_1.d.a), select(vec4<bool>(true, var_1.b.x, false, true), vec4<bool>(var_1.d.a, false, var_1.b.x, true), vec4<bool>(var_1.b.x, false, false, var_1.d.a)), !vec4<bool>(true, var_1.d.a, false, var_1.d.a))), select(var_1.d.c.d, ~var_1.a.d, var_1.b.x)), u_input.a.yx);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-var_1.d.c.a), -vec2<i32>(u_input.d.x, 1i))).x), 475f, var_2, var_1.e.c.a) - _wgslsmith_f_op_vec4_f32(-var_1.e.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a.yyx, vec3<u32>(50560u, ~(~u_input.c), 88771u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_2(1u, func_1(vec3<f32>(363f, -1000f, -1539f), Struct_2(false, u_input.a.x, Struct_1(384f, 1u, vec4<f32>(-417f, -289f, 129f, 1269f), u_input.a, vec2<u32>(var_1.x, u_input.a.x))), vec3<u32>(u_input.b, 1u, u_input.b))))))));
    var var_3 = Struct_2(!(((var_0 >> (var_1.x % 32u)) <= -var_0) & true), _wgslsmith_div_u32(21091u, _wgslsmith_clamp_u32(0u, var_1.x, countOneBits(~4294967295u))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-290f, var_2.x)))), ~(~55511u), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, -1000f, var_2.x, var_2.x))))))), ~(~u_input.a), ~(~(~u_input.a.xy))));
    var var_4 = _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0, var_0), -20745i), firstLeadingBit(abs(vec2<i32>(var_0, u_input.d.x)))), -vec2<i32>(var_0, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, 6595i, -42114i, u_input.d.x), vec4<i32>(u_input.e, 2147483647i, u_input.e, -39052i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 12720i)), vec4<i32>(var_0, 1i, 16932i, u_input.e))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~var_1.x), 0u, !var_3.a), var_3.c.a, ~vec3<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, var_0), abs(var_0)), -1i));
}

