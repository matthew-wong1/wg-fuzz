struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var var_0 = select(vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false)), false, true, true), vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true, true, true | any(vec3<bool>(true, true, true))), !all(vec3<bool>(true, true, true)));
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1864f);
    return (-var_1 & ~_wgslsmith_clamp_i32(-60428i, _wgslsmith_mod_i32(var_1, var_1), 2147483647i)) ^ (i32(-1i) * -39i);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(-(-1i >> (1u % 32u)), arg_1, ~(16744u >> (_wgslsmith_div_u32(u_input.b, 0u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1279f - -1431f) * arg_1.x)), Struct_1(func_3(), arg_1, u_input.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) * -268f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x))))))), u_input.a.x, _wgslsmith_f_op_f32(min(-410f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-874f, 1000f)))))), !vec3<bool>(true, select(false, true, true), true));
    var var_1 = u_input.a.yx;
    var var_2 = 1u;
    var var_3 = !(!(all(var_0.e.xy) | any(select(vec3<bool>(false, var_0.e.x, false), var_0.e, false))));
    var var_4 = !(!select(!vec2<bool>(var_0.e.x, false), vec2<bool>(!var_0.e.x, !var_0.e.x), false));
    return global0[_wgslsmith_index_u32(~(~max(~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x ^ max(0u, 0u))), 29u)];
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    let var_0 = ~(vec4<i32>(-1i) * -(-vec4<i32>(arg_1.c.a, 0i, arg_1.c.a, 0i) >> (vec4<u32>(39466u, arg_2.x, arg_2.x, arg_1.a) % vec4<u32>(32u))));
    global0 = array<Struct_3, 29>();
    global0 = array<Struct_3, 29>();
    var var_1 = arg_1.c;
    global0 = array<Struct_3, 29>();
    return false;
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = !vec2<bool>(!func_4(-279f, func_2(vec4<i32>(-12213i, 0i, -1i, -49029i), vec3<f32>(-809f, 845f, -1000f)), max(vec3<u32>(0u, arg_0, 4294967295u), u_input.a.ywz)), any(vec3<bool>(true, true, true)));
    let var_1 = var_0.x;
    return ~(~(~(~func_2(vec4<i32>(-1454i, -58292i, 5193i, 10219i), vec3<f32>(-666f, -418f, -136f)).a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1432f;
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(~(~2923u), 4294967295u, func_1(_wgslsmith_sub_u32(u_input.b, 1u))), select(countOneBits(~u_input.a.wyx), max(vec3<u32>(u_input.a.x, 64071u, u_input.a.x), vec3<u32>(u_input.b, u_input.b, 0u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))), vec4<u32>(~max(u_input.a.x, ~29115u), ~(~u_input.a.x), 1u, 4294967295u), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-69183i, 1i), 1i, countOneBits(48670i), i32(-1i) * -2147483647i), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(707i, 0i), vec2<i32>(32219i, 2147483647i)), countOneBits(1i), _wgslsmith_add_i32(0i, 1i), 39479i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, _wgslsmith_f_op_f32(var_0 + -305f), var_0))).c);
    var var_2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(vec4<i32>(-61860i, i32(-1i) * -53227i, var_1.c.a, -1i)), 45984u);
}

