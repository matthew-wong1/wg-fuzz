struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: i32) -> f32 {
    return -559f;
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(select(arg_0.b.wz, arg_0.b.yz, all(select(vec2<bool>(arg_0.b.x, false), vec2<bool>(arg_0.b.x, arg_0.b.x), arg_0.b.yy))), vec2<u32>(_wgslsmith_mult_u32(~10083u, 0u), 3713u), global0.x))));
    global0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.b, u_input.c), ~(~abs(-29471i))), global0.x);
    global0 = -(u_input.a | _wgslsmith_add_vec2_i32(u_input.a ^ _wgslsmith_add_vec2_i32(u_input.d.xx, vec2<i32>(-2147483647i, -2147483647i)), vec2<i32>(-2147483647i, ~(-11623i))));
    global0 = vec2<i32>(firstTrailingBit(-2147483647i), _wgslsmith_mod_i32(u_input.d.x, 1i));
    global0 = _wgslsmith_add_vec2_i32(u_input.a, u_input.a);
    return select(min(u_input.d.xx, _wgslsmith_clamp_vec2_i32(u_input.a, -vec2<i32>(u_input.a.x, -56064i) ^ u_input.d.xy, vec2<i32>(~global0.x, -u_input.d.x))), u_input.d.yz, true || !arg_0.b.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    global0 = -func_3(arg_0.a);
    global0 = max(max(~(vec2<i32>(-2147483647i, global0.x) & u_input.a), _wgslsmith_sub_vec2_i32(arg_1.ww, countOneBits(u_input.d.yz))), vec2<i32>(-_wgslsmith_div_i32(global0.x, arg_1.x), u_input.c)) & (_wgslsmith_clamp_vec2_i32(arg_1.yx, countOneBits(u_input.d.zy) << (reverseBits(vec2<u32>(2582u, 1u)) % vec2<u32>(32u)), u_input.a) ^ arg_1.xy);
    var var_0 = !select(true, false, arg_0.a.b.x);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(sign(-1325f)), _wgslsmith_f_op_f32(floor(arg_0.d.x)));
    var var_2 = arg_0.c.b;
    return 995f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(-1i) * -u_input.d.yx;
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), vec2<u32>(49594u, 0u), global0.x)) + _wgslsmith_f_op_f32(round(-1370f))))), _wgslsmith_f_op_f32(-1849f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-661f - -892f), -986f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(708f, -1643f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f), _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(-448f, vec4<bool>(false, false, true, false)), Struct_1(649f, vec4<bool>(true, false, true, false)), Struct_1(166f, vec4<bool>(true, true, false, true)), vec2<f32>(1000f, -114f)), vec4<i32>(global0.x, global0.x, global0.x, u_input.c)))))))));
    var var_1 = Struct_1(var_0.x, vec4<bool>(true, true, true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), true))));
    var var_2 = Struct_3(var_0, true, var_1.b.x);
    global0 = u_input.a;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(1385f, -1623f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2049f) + -243f), -287f), var_2.c)), !select(select(var_2.c, true, !var_2.c), false, true), false);
    let var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(940f * var_3.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -585f), var_3.a.x), -1i, ~_wgslsmith_dot_vec3_i32((u_input.d | vec3<i32>(u_input.d.x, global0.x, 1i)) & -vec3<i32>(-1i, 8074i, -1i), vec3<i32>(~3439i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_4), vec2<i32>(4571i, u_input.a.x)), -var_4)));
}

