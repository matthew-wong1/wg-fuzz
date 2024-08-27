struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 24016u, 19120u), 0i, vec4<i32>(-7648i, 1i, -1i, 10889i), vec3<u32>(27479u, 5984u, 15796u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec3<u32> {
    let var_0 = all(!vec3<bool>(arg_0, !select(true, arg_0, false), all(!vec4<bool>(false, arg_0, false, arg_0))));
    let var_1 = _wgslsmith_f_op_f32(select(1101f, 1938f, true));
    var var_2 = u_input.b & -1i;
    var var_3 = arg_1.x;
    var var_4 = global1.a.x;
    return firstLeadingBit(~vec3<u32>(abs(max(u_input.a, u_input.c.x)), countOneBits(~4294967295u), 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    global0 = array<vec4<i32>, 18>();
    var var_0 = select(false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_0.c)) - _wgslsmith_f_op_f32(min(-374f, 1549f))), arg_0.b.x);
    let var_1 = arg_0;
    let var_2 = ~vec4<u32>(_wgslsmith_sub_u32(~30527u, firstLeadingBit(var_1.d.e.x)), global1.a.x, _wgslsmith_add_u32(~arg_0.d.a.x, ~u_input.c.x), 59313u);
    let var_3 = arg_1.x;
    return u_input.c.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_1.c - _wgslsmith_f_op_f32(step(arg_1.c, arg_1.c)))))));
    var var_1 = 1000f;
    global0 = array<vec4<i32>, 18>();
    let var_2 = ~func_3(Struct_2(arg_1.b, select(arg_1.b, arg_1.a, vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x)), _wgslsmith_f_op_f32(-1577f - arg_1.c), Struct_1(vec3<u32>(0u, 1u, 0u), vec4<u32>(56727u, 11036u, 0u, 4294967295u), u_input.b, vec4<i32>(u_input.b, global1.d.x, global1.d.x, global1.c), vec3<u32>(global1.a.x, u_input.a, 25740u))), vec2<f32>(_wgslsmith_f_op_f32(var_0.x + arg_1.c), 592f)) ^ ~global1.a.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-432f * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1390f)) * _wgslsmith_f_op_f32(f32(-1f) * -2219f))));
    return true;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.e.x;
    var var_1 = vec3<bool>(true, false, any(vec4<bool>(any(vec3<bool>(false, false, true)), any(vec2<bool>(false, false)), true, func_2(4294967295u, Struct_2(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), 379f, arg_1)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1011f, 193f, -241f))) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))))));
    let var_3 = -global1.c | 0i;
    var var_4 = arg_1.d;
    return 919f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    global0 = array<vec4<i32>, 18>();
    let var_0 = Struct_2(!select(vec4<bool>(false, any(vec2<bool>(false, true)), true, true), vec4<bool>(true, true, true, true), select(true, false, false) && false), vec4<bool>(global1.c > _wgslsmith_dot_vec3_i32(global1.d.yzx, global1.d.xwz << (global1.e % vec3<u32>(32u))), true, false, any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(func_4(func_1(!select(false, true, true), vec3<i32>(u_input.b, _wgslsmith_mult_i32(global1.c, 2147483647i), -31958i), vec3<u32>(u_input.a, min(u_input.a, 0u), abs(u_input.a))), Struct_1(~vec3<u32>(u_input.c.x, 50397u, u_input.a) << (~global1.b.wwy % vec3<u32>(32u)), ~(~vec4<u32>(98056u, 52825u, 32069u, 4294967295u)), select(-23734i, _wgslsmith_mod_i32(0i, 1i), func_2(u_input.c.x, Struct_2(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), 752f, Struct_1(vec3<u32>(8422u, global1.b.x, 1u), global1.b, u_input.b, global1.d, vec3<u32>(1u, global1.b.x, 4294967295u))))), -(~global1.d), select(global1.a, global1.e, true)))), Struct_1(global1.e & ~global1.e, _wgslsmith_mult_vec4_u32(firstTrailingBit(global1.b), _wgslsmith_mod_vec4_u32(global1.b, vec4<u32>(u_input.c.x, global1.b.x, 4294967295u, 4294967295u)) | _wgslsmith_clamp_vec4_u32(global1.b, global1.b, vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.c.x))), _wgslsmith_mod_i32(-28511i, ~_wgslsmith_add_i32(u_input.b, -19092i)), global0[_wgslsmith_index_u32(1u, 18u)], func_1(all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), select(vec3<i32>(u_input.b, 2147483647i, global1.c), vec3<i32>(-46573i, u_input.b, global1.d.x), true), firstLeadingBit(global1.b.yxz))));
    global1 = var_0.d;
    let var_1 = ~vec4<u32>(global1.a.x, ~var_0.d.e.x, 0u, _wgslsmith_dot_vec3_u32(~abs(global1.b.wxz), ~global1.b.xyx));
    var var_2 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(var_0.c + 353f), _wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -396f))))), vec2<u32>(1u, min(~(~global1.b.x), ~global1.e.x)));
}

