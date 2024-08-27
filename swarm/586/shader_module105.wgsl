struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = ~0i;
    var_0 = select(min(_wgslsmith_div_i32(2147483647i, countOneBits(u_input.b.x)), 2147483647i), u_input.b.x, any(!vec4<bool>(select(false, true, arg_0), true, any(vec2<bool>(true, false)), arg_0)));
    let var_1 = 19548u;
    var_0 = abs(-u_input.b.x);
    var_0 = min(_wgslsmith_add_i32(1373i, -u_input.b.x), u_input.b.x);
    return Struct_2(vec3<bool>(arg_0, true, arg_0));
}

fn func_3(arg_0: u32, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 597f) * _wgslsmith_f_op_f32(ceil(-324f))), arg_1))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1454f))), !func_1(false).a.x)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(209f)), arg_1);
    var var_1 = Struct_4(Struct_2(vec3<bool>(true, true && any(vec2<bool>(false, true)), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-787f, arg_1) * vec2<f32>(292f, arg_1))))), false);
    return var_1.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4) -> bool {
    return all(vec3<bool>(any(vec4<bool>(true, false, true, true)), all(arg_1.a.a.zx), u_input.d == 1u));
}

fn func_2(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = func_1(!any(!func_1(true).a));
    var_0 = Struct_2(var_0.a);
    let var_1 = false || (!(true | (var_0.a.x && false)) || (true | var_0.a.x));
    let var_2 = vec2<u32>(~(~min(~31440u, u_input.c)), reverseBits(max(_wgslsmith_mod_u32(u_input.d, max(u_input.d, u_input.a.x)), ~(u_input.d ^ 21568u))));
    return Struct_3(Struct_1(func_4(vec3<u32>(4294967295u, 21355u, 4294967295u), Struct_4(func_3(4294967295u, -2300f), _wgslsmith_f_op_vec2_f32(vec2<f32>(861f, 573f) * vec2<f32>(arg_0.x, 334f)), var_0.a.x)), 0i));
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: vec4<f32>) -> i32 {
    var var_0 = select(4756u, arg_0, !(~u_input.a.x >= abs(arg_0)));
    let var_1 = Struct_4(func_3(_wgslsmith_sub_u32(firstLeadingBit(u_input.c), u_input.d), _wgslsmith_f_op_f32(f32(-1f) * -317f)), arg_3.yw, !(!(true && func_1(arg_1.x).a.x)));
    var var_2 = !vec3<bool>(4294967295u >= select(1u, 7829u, true), true, arg_2.a.a != all(vec3<bool>(true, arg_2.a.a, false)));
    var_2 = var_1.a.a;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1277f, -1306f)))))));
    var var_1 = func_1(false != (abs(u_input.d ^ u_input.a.x) == (~u_input.a.x | 5296u)));
    var var_2 = min(u_input.b.x, ~(func_5(12933u, vec2<bool>(false, false), func_2(vec2<f32>(-116f, -852f)), vec4<f32>(-246f, -971f, -150f, -1161f)) >> (u_input.c % 32u)));
    var_1 = func_3(12154u, _wgslsmith_f_op_f32(sign(-456f)));
    var var_3 = vec2<bool>(var_1.a.x, true);
    var_2 = u_input.b.x;
    var_1 = func_1(var_3.x);
    var_2 = u_input.b.x;
    let var_4 = (countOneBits(~vec3<u32>(8615u, 36558u, 22819u)) >> ((vec3<u32>(u_input.d, _wgslsmith_div_u32(u_input.c, 23061u), 9804u) & abs(vec3<u32>(32664u, 81553u, 0u))) % vec3<u32>(32u))) & vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d, 1u), u_input.a.x) >> (~22476u % 32u), 0u, u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1146f - 1f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1440f)) - _wgslsmith_f_op_f32(f32(-1f) * -1109f))), countOneBits(vec3<u32>(131528u, _wgslsmith_add_u32(var_4.x, 22488u), _wgslsmith_dot_vec4_u32(vec4<u32>(40291u, var_4.x, var_4.x, var_4.x), vec4<u32>(var_4.x, 50985u, u_input.a.x, 4294967295u)))) | max(firstTrailingBit(abs(vec3<u32>(4294967295u, var_4.x, 4294967295u))), firstLeadingBit(var_4)), select(u_input.d, _wgslsmith_dot_vec3_u32(min(var_4, vec3<u32>(u_input.c, var_4.x, u_input.d)) & _wgslsmith_mod_vec3_u32(var_4, var_4), vec3<u32>(1u, 4294967295u, u_input.a.x) & vec3<u32>(u_input.d, 36325u, var_4.x)), true), -_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b.x, u_input.b.x, u_input.b.x & u_input.b.x, 0i >> (var_4.x % 32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i), vec4<i32>(-57698i, -10818i, -2147483647i, -20377i)), 2147483647i, 47865i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -1222i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 1i, -1i))), (vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, 4276i) | vec4<i32>(u_input.b.x, -21366i, u_input.b.x, 0i)) | ~vec4<i32>(1i, u_input.b.x, u_input.b.x, 1567i)), countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) ^ vec4<i32>(firstLeadingBit(-15078i), _wgslsmith_div_i32(0i >> (u_input.c % 32u), 44707i), -u_input.b.x ^ ~u_input.b.x, ~(-u_input.b.x)));
}

