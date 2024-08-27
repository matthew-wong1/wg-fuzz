struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
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

var<private> global0: f32;

var<private> global1: vec3<i32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = 2460f;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0, _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0))), abs(arg_0) > 89363u))));
    var var_2 = u_input.c.x;
    let var_3 = Struct_1(all(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    var var_4 = Struct_1(var_3.a);
    return all(select(vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(var_3.a && true, 0i != _wgslsmith_clamp_i32(global1.x, u_input.b, u_input.a.x), !select(false, true, true)), var_4.a));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> bool {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-182f - -931f)) * _wgslsmith_f_op_f32(abs(-607f)));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-393f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), any(vec3<bool>(false, false, false)))))));
    global1 = abs(min(vec3<i32>(_wgslsmith_clamp_i32(29627i, _wgslsmith_sub_i32(-39815i, 76379i), _wgslsmith_mult_i32(global1.x, u_input.a.x)), ~(-1i), 8065i), vec3<i32>(u_input.b, -reverseBits(u_input.b), u_input.b)));
    global1 = select(_wgslsmith_sub_vec3_i32((_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, 20154i), vec3<i32>(1i, u_input.a.x, -2147483647i)) >> (vec3<u32>(arg_2.x, 12836u, 20434u) % vec3<u32>(32u))) ^ -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 8724i), vec3<i32>(15563i, -8669i, 1i)), select(vec3<i32>(2147i << (arg_1.x % 32u), -6174i, -1i), ~(-vec3<i32>(-16113i, u_input.a.x, global1.x)), select(true, func_3(arg_0), false))), -_wgslsmith_clamp_vec3_i32(select(~vec3<i32>(global1.x, u_input.b, 1i), max(vec3<i32>(global1.x, u_input.b, -2147483647i), vec3<i32>(global1.x, -1i, 1i)), vec3<bool>(false, true, false)), -min(vec3<i32>(global1.x, 1944i, global1.x), vec3<i32>(global1.x, u_input.b, u_input.b)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(global1.x, 41260i, u_input.b), vec3<i32>(global1.x, 0i, u_input.b)))), !vec3<bool>(any(vec3<bool>(true, true, true)), all(vec4<bool>(false, true, true, true)), (i32(-1i) * -9795i) >= ~u_input.b));
    var var_0 = Struct_1(true);
    return 754f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))));
}

fn func_1() -> Struct_1 {
    let var_0 = !any(!vec3<bool>(func_2(u_input.d, vec2<u32>(u_input.d, u_input.d), u_input.c), true, select(true, true, false)));
    return Struct_1(any(!(!select(vec2<bool>(false, false), vec2<bool>(var_0, var_0), vec2<bool>(true, false)))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = vec3<i32>(global1.x, min(~_wgslsmith_dot_vec3_i32(vec3<i32>(22443i, -13316i, -22543i), vec3<i32>(2147483647i, 2452i, -2147483647i)), -1i) & (u_input.a.x | firstTrailingBit(55350i)), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, -21952i), ~(vec2<i32>(global1.x, u_input.a.x) >> (vec2<u32>(18024u, 37302u) % vec2<u32>(32u)))) >> (0u % 32u));
    var_0 = -vec3<i32>(-1i, min(-30205i << (abs(arg_0) % 32u), max(u_input.b & 22277i, -42238i)), _wgslsmith_dot_vec3_i32((vec3<i32>(global1.x, -38557i, u_input.a.x) & vec3<i32>(1i, global1.x, var_0.x)) << (~vec3<u32>(arg_2.x, 4294967295u, arg_2.x) % vec3<u32>(32u)), ~vec3<i32>(-7457i, 0i, u_input.b)));
    let var_1 = Struct_1(true);
    let var_2 = func_1();
    var var_3 = !(-1045f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_div_vec2_i32(firstLeadingBit(abs(_wgslsmith_clamp_vec2_i32(~var_0.yy, ~u_input.a, vec2<i32>(u_input.b, global1.x)))), global1.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!vec2<bool>(true, abs(u_input.b) <= 0i));
    global1 = vec3<i32>(abs(u_input.b), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(func_4(6650u >> (u_input.d % 32u), u_input.c.x >= 4294967295u, select(vec3<u32>(0u, 4294967295u, u_input.c.x), vec3<u32>(49524u, 0u, u_input.d), vec3<bool>(false, true, true)), func_1()), -global1.yx), global1.zx), 1i);
    let var_1 = ~(min(abs(vec4<u32>(30280u, u_input.d, 0u, 22995u) >> (vec4<u32>(18901u, u_input.c.x, 0u, u_input.d) % vec4<u32>(32u))), abs(~vec4<u32>(u_input.c.x, 37081u, 4294967295u, u_input.c.x))) << (~(~vec4<u32>(u_input.c.x, u_input.d, 35891u, u_input.c.x)) % vec4<u32>(32u)));
    let var_2 = ~var_1.x;
    var var_3 = vec2<u32>(var_2, (~_wgslsmith_clamp_u32(7740u, 1u, 0u) & 1u) << (23689u % 32u));
    let var_4 = Struct_1(select(true, !(false && any(vec3<bool>(false, false, false))), true));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

