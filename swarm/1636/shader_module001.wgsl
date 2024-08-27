struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.b)))))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), 819f), vec2<i32>(_wgslsmith_mult_i32(arg_0.c, 30573i >> (arg_0.d % 32u)) | u_input.c.x, u_input.b | (min(arg_0.c, 1i) >> (64219u % 32u))));
    var var_2 = arg_0.a;
    let var_3 = firstLeadingBit(vec3<u32>(66412u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.a, arg_0.a, arg_0.d), vec4<u32>(arg_0.a, 73063u, 0u, arg_0.a)) & ~43130u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, arg_0.d, 49189u), vec3<u32>(16939u, 1u, _wgslsmith_div_u32(0u, arg_0.a)))));
    let var_4 = Struct_1(arg_0.b, _wgslsmith_mod_vec2_i32(u_input.c.wx, var_1.b) >> (var_3.zy % vec2<u32>(32u)));
    return _wgslsmith_sub_u32(102744u, ~arg_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_add_i32(arg_1.b.x, arg_1.b.x);
    var var_1 = _wgslsmith_clamp_u32(40693u >> (arg_0.a % 32u), 1u | firstLeadingBit(_wgslsmith_sub_u32(min(arg_0.d, arg_0.a), 1646u)), arg_0.d);
    let var_2 = reverseBits(~countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(30205u, 1u), vec2<u32>(41094u, arg_0.a))));
    let var_3 = abs(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(var_2.x, 15836u, var_2.x)), firstLeadingBit(reverseBits(vec3<u32>(6397u, arg_0.d, 4294967295u)))), vec3<u32>(reverseBits(_wgslsmith_sub_u32(arg_0.a, 4294967295u)), arg_0.d, arg_0.d)));
    var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_add_i32(33059i, _wgslsmith_mult_i32(arg_1.b.x, -38307i))), firstLeadingBit(firstLeadingBit(abs(firstTrailingBit(u_input.a)))));
    return vec4<i32>(u_input.c.x | -1i, _wgslsmith_mod_i32(min(_wgslsmith_mult_i32(_wgslsmith_div_i32(6326i, 1i), firstLeadingBit(-7057i)), _wgslsmith_div_i32(1i << (0u % 32u), min(2147483647i, u_input.b))), 27191i), arg_2.x, -1i);
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    var var_0 = func_4(Struct_2(abs(_wgslsmith_add_u32(68383u, func_3(Struct_2(0u, -1000f, u_input.b, 7137u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_div_f32(arg_0, -700f))), i32(-1i) * -1i, 89880u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(291f, -2240f))) * 1000f), arg_1.zx), (_wgslsmith_mod_vec2_i32(arg_1.zz ^ arg_1.yx, reverseBits(vec2<i32>(arg_1.x, 3463i))) << (~vec2<u32>(49943u, 43516u) % vec2<u32>(32u))) >> (max(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), abs(vec2<u32>(30875u, 22734u)), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(9466u, 6922u)), vec2<u32>(1u, 48141u))) % vec2<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1648f, _wgslsmith_f_op_f32(floor(-263f)))), _wgslsmith_div_vec2_i32(select(arg_1.zy, vec2<i32>(~arg_1.x, reverseBits(arg_1.x)), vec2<bool>(true, any(vec4<bool>(arg_2, arg_2, arg_2, true)))), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.c), u_input.c ^ u_input.c), _wgslsmith_div_i32(1i, -u_input.c.x))));
    let var_2 = vec2<u32>(1u, 1u);
    let var_3 = Struct_2(~(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0, var_1.a)))))), -20297i, _wgslsmith_mod_u32(~(~var_2.x), _wgslsmith_add_u32(max(var_2.x ^ 5596u, var_2.x), abs(abs(1u)))));
    var var_4 = firstTrailingBit(-(select(_wgslsmith_dot_vec3_i32(arg_1, u_input.c.xwz), 2147483647i, !arg_2) ^ -1i));
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, var_3.a), ~(~(~4294967295u)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<f32>(-1478f, _wgslsmith_f_op_f32(-1000f + 2349f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1735f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-190f + 453f), -627f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-391f, -273f))), _wgslsmith_div_f32(1831f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1187f)))));
    var var_1 = u_input.b;
    return Struct_2(select(func_2(var_0.x, vec3<i32>(-2147483647i, 45736i, u_input.c.x), true), 0u, true & select(false, false, true)) >> (0u % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -143f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(-var_0.x))))), u_input.a, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(670f, _wgslsmith_f_op_f32(-115f + -784f), any(vec3<bool>(false, false, false))))), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -31717i, u_input.c.x), select(vec3<i32>(u_input.a, u_input.c.x, 0i), vec3<i32>(u_input.c.x, -27852i, 2147483647i), vec3<bool>(false, false, true))), true & any(vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -408f)))));
    let var_1 = func_1();
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-850f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -525f) - _wgslsmith_f_op_f32(-var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(25950u, _wgslsmith_mod_vec2_i32(u_input.c.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 25985i), u_input.c.wy)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(966f, -1030f, -1023f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-496f, 452f, var_1.b))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1592f, var_1.b, var_1.b)))))))));
}

