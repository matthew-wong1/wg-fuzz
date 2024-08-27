struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3) -> bool {
    return arg_0.x;
}

fn func_3(arg_0: vec3<u32>) -> vec4<bool> {
    let var_0 = vec3<u32>(arg_0.x, _wgslsmith_add_u32(4294967295u >> ((~global1.a.a.x | ~arg_0.x) % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(~arg_0.x, _wgslsmith_mod_u32(arg_0.x, global1.b), ~54027u), vec3<u32>(arg_0.x, _wgslsmith_mod_u32(arg_0.x, 35502u), firstLeadingBit(global1.a.a.x)))), ~78155u);
    var var_1 = Struct_2(Struct_1(vec2<u32>(arg_0.x, min(~8075u, 21447u >> (0u % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.b.x, -700f), global1.a.b)))));
    var var_2 = -(~reverseBits(-vec2<i32>(-1i, -2147483647i) | -vec2<i32>(u_input.c.x, 4167i)));
    return !(!(!select(!vec4<bool>(true, false, global0.x, true), select(vec4<bool>(false, false, false, global0.x), vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(true, false, true, global0.x)), vec4<bool>(global0.x, false, true, global0.x))));
}

fn func_2() -> vec2<bool> {
    global0 = !select(!(!func_3(vec3<u32>(u_input.a.x, u_input.a.x, global1.b))), !vec4<bool>(global0.x, true, global0.x, global0.x), !global0.x);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1555f);
    let var_1 = -(firstLeadingBit(-vec3<i32>(-24084i, u_input.b, u_input.b)) << ((firstLeadingBit(vec3<u32>(1u, global1.b, global1.a.a.x)) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(41938u, 1u, 32811u), vec3<u32>(15850u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 36197u)), min(vec3<u32>(u_input.a.x, 13828u, 8497u), vec3<u32>(1u, global1.a.a.x, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    global1 = Struct_4(Struct_1(vec2<u32>(_wgslsmith_sub_u32(global1.a.a.x, 4294967295u), 22210u) >> (~global1.a.a % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0, 311f), _wgslsmith_f_op_vec2_f32(-global1.a.b))))), ~1u);
    global0 = !(!(!vec4<bool>(func_3(vec3<u32>(4294967295u, global1.b, 0u)).x, select(global0.x, false, false), var_0 >= global1.a.b.x, true)));
    return vec2<bool>(!any(!vec3<bool>(global0.x, false, true)), (~u_input.a.x != ~_wgslsmith_add_u32(46295u, 1u)) & global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(true, !func_1(!select(global0.yyx, global0.wyx, global0.x), Struct_3(u_input.c.yz, Struct_1(vec2<u32>(35104u, global1.b), vec2<f32>(1000f, -514f)))), global0.x, u_input.c.x != ~_wgslsmith_div_i32(-7915i, u_input.c.x));
    var var_0 = -select(-4790i, u_input.c.x, global0.x);
    var_0 = u_input.c.x;
    let var_1 = !(!func_2());
    var var_2 = vec4<i32>(u_input.c.x, abs(19149i), select(abs(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.b) & ~1i), -_wgslsmith_add_i32(u_input.c.x, firstLeadingBit(u_input.c.x)), !global0.x), ~(-u_input.c.x));
    var_0 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.b.x, global1.a.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-141f, -881f, global1.a.b.x, global1.a.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.b.x, 904f, -129f, 344f) - vec4<f32>(1362f, global1.a.b.x, global1.a.b.x, -608f)), false))) * vec4<f32>(-331f, _wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(ceil(global1.a.b.x))), 895f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b.x)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-50818i, u_input.b, u_input.c.x, u_input.b), vec4<i32>(var_2.x, var_2.x, 2147483647i, u_input.c.x)), abs(var_2.x)), var_2.x), countOneBits(-_wgslsmith_sub_i32(var_2.x, -2147483647i)), _wgslsmith_add_i32(var_2.x, var_2.x), 1i));
}

