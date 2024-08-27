struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: f32;

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: bool) -> u32 {
    global1 = -672f;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1257f)))));
    let var_1 = _wgslsmith_f_op_f32(-397f - 235f);
    let var_2 = !(!(!vec3<bool>(arg_0, !arg_0, arg_0)));
    let var_3 = -451f;
    return ~firstLeadingBit(~(~(~u_input.d.x)));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = select(1u, ~67277u, !select(true, true, select(any(vec2<bool>(true, true)), any(vec2<bool>(false, true)), 2147483647i > u_input.e)));
    global0 = func_2(true);
    let var_1 = Struct_1(!(((var_0 & u_input.a) > 0u) || all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, -832f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(768f, -1731f)))), select(countOneBits(~(-u_input.c.yxz)), vec3<i32>(5965i, reverseBits(u_input.e & 46159i), u_input.e), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), arg_0 == arg_0)), 447f, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zx, vec2<u32>(32941u, 0u)), u_input.b.yy), 4294967295u));
    var var_2 = var_1.a;
    var var_3 = var_1.c.x;
    return -15027i;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.x)), arg_0.d));
    let var_0 = 0u;
    let var_1 = _wgslsmith_mult_vec2_i32(~(-vec2<i32>(-1i, arg_0.c.x)), vec2<i32>(-_wgslsmith_mult_i32(arg_2.c.x, arg_2.c.x) ^ -(i32(-1i) * -18855i), _wgslsmith_mod_i32(~_wgslsmith_div_i32(arg_0.c.x, 27645i), -52373i)));
    global0 = _wgslsmith_div_u32(~(~1u), select(_wgslsmith_div_u32(~(~0u), max(arg_2.e.x, reverseBits(4294967295u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(45540u, 18910u, var_0, 4294967295u), u_input.b), true));
    let var_2 = arg_2;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1606f + 455f)), -1663f))))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-507f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1069f, -257f)))))), -145f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1151f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))) - var_0.x));
    var var_2 = !vec2<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, 24453u <= u_input.d.x, true)));
    let var_3 = Struct_1(true, var_0, vec3<i32>(2147483647i, _wgslsmith_clamp_i32(min(i32(-1i) * -2147483647i, 1i << (u_input.a % 32u)), reverseBits(func_1(775f, u_input.d.x)), _wgslsmith_add_i32(~(-24062i), abs(0i))), -2147483647i), 558f, vec2<u32>(71631u, u_input.a));
    let var_4 = var_3;
    global2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(48879u, u_input.b.x, var_4.e.x), u_input.b.yyx), vec3<u32>(var_4.e.x & var_3.e.x, u_input.b.x, func_3(Struct_1(var_3.a, vec2<f32>(1281f, 1000f), var_4.c, var_3.d, var_3.e), vec3<f32>(var_0.x, 752f, var_0.x), Struct_1(var_2.x, var_0, vec3<i32>(1i, 0i, 2999i), var_3.d, vec2<u32>(var_3.e.x, var_4.e.x))))), 1000f, var_0.x);
}

