struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: array<i32, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<f32>) -> i32 {
    var var_0 = ~u_input.a;
    let var_1 = u_input.a.x;
    var_0 = u_input.a;
    var_0 = vec4<i32>(i32(-1i) * -43799i, arg_1.b, _wgslsmith_mod_i32(firstLeadingBit(~31032i) | max(var_0.x >> (4294967295u % 32u), var_1), ~_wgslsmith_add_i32(i32(-1i) * -3370i, firstLeadingBit(1i))), ~(i32(-1i) * -49343i));
    let var_2 = vec3<i32>(abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(33328i, 2147483647i), _wgslsmith_add_i32(-1i, global1[_wgslsmith_index_u32(1u, 9u)]))) | var_0.x, var_0.x, select(u_input.a.x & _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x, global1[_wgslsmith_index_u32(21570u, 9u)], 34003i), select(u_input.a.xwz, u_input.a.zyx, false)), min(_wgslsmith_add_i32(~1i, max(global1[_wgslsmith_index_u32(arg_1.a, 9u)], 51617i)), global1[_wgslsmith_index_u32(abs(min(90610u, arg_1.a)), 9u)]), select(!any(vec3<bool>(false, false, false)), true, 791f >= _wgslsmith_f_op_f32(floor(arg_2.x)))));
    return max(-14666i, max(~var_0.x, max(_wgslsmith_clamp_i32(u_input.a.x, var_1, -1i), -15308i))) >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, u_input.c.x, arg_1.a), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.a, u_input.c.x, u_input.c.x), vec3<u32>(1u, 25014u, 12634u))))) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = arg_0;
    let var_1 = var_0;
    var var_2 = func_3(1818f, Struct_1(max(4294967295u, 0u), abs(abs(arg_0.b << (arg_0.a % 32u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-974f, 483f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(518f))))), 1372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-356f, 540f), _wgslsmith_div_f32(-325f, -1593f))))));
    global0 = array<vec2<i32>, 9>();
    var_2 = global1[_wgslsmith_index_u32(~(~4294967295u), 9u)] ^ -2147483647i;
    return arg_0.b;
}

fn func_1() -> Struct_1 {
    let var_0 = -472f;
    let var_1 = vec3<bool>(true, true, true);
    var var_2 = Struct_1(1u, _wgslsmith_add_i32(2147483647i, countOneBits(func_2(Struct_1(0u, global1[_wgslsmith_index_u32(30887u, 9u)]), u_input.c.x)) | -firstLeadingBit(11224i)));
    let var_3 = Struct_1(var_2.a, -var_2.b);
    global1 = array<i32, 9>();
    return Struct_1(countOneBits(u_input.c.x << (~_wgslsmith_clamp_u32(u_input.c.x, 1u, 0u) % 32u)), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 9>();
    let var_0 = -4818i;
    var var_1 = func_1();
    let var_2 = !vec3<bool>(false, any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true)), (reverseBits(u_input.a.x) >= 0i) == false);
    let var_3 = !(!vec3<bool>((true && var_2.x) || select(var_2.x, var_2.x, var_2.x), var_2.x, select(all(var_2.yx), true, any(vec2<bool>(var_2.x, var_2.x)))));
    var var_4 = -firstTrailingBit(max(-(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -54911i) | u_input.a), countOneBits(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, var_4.x);
}

