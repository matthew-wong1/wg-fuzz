struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2036f;

var<private> global1: array<vec3<u32>, 21>;

var<private> global2: vec2<bool>;

var<private> global3: i32 = 1i;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = ~min(~global4.c, min(~arg_3.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.c, arg_3.c), vec2<u32>(arg_3.c, 7527u))));
    let var_2 = arg_3;
    let var_3 = Struct_1(!select(!(!vec3<bool>(global2.x, global4.a.x, false)), !vec3<bool>(arg_1, arg_3.a.x, arg_3.a.x), vec3<bool>(all(arg_3.a), true, all(vec4<bool>(true, false, arg_1, global2.x)))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global4.b.x, -2147483647i), ~global4.b.x), -26128i, -2147483647i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2208i, 2147483647i), -var_2.b.yx), _wgslsmith_dot_vec2_i32(global4.b.xx, arg_3.b.xy) & ~u_input.b), var_2.b.x), 1u);
    global0 = var_0.a;
    return -_wgslsmith_clamp_i32(-min(30206i, 1i), reverseBits(_wgslsmith_mod_i32(u_input.b, -arg_3.b.x)), ~(~var_3.b.x) >> (select(u_input.a.x, 23111u ^ var_2.c, any(vec2<bool>(arg_1, arg_3.a.x))) % 32u));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = 0u;
    global3 = 0i;
    global4 = Struct_1(!select(vec3<bool>(global4.b.x >= global4.b.x, !global2.x, global4.a.x), select(vec3<bool>(global4.a.x, false, global2.x), global4.a, vec3<bool>(false, true, true)), global4.a), vec3<i32>(2147483647i, 0i >> ((global4.c | (6018u >> (global4.c % 32u))) % 32u), ~global4.b.x), (_wgslsmith_dot_vec4_u32(vec4<u32>(global4.c, var_0, global4.c, var_0), ~vec4<u32>(global4.c, global4.c, global4.c, var_0)) << (_wgslsmith_add_u32(u_input.a.x ^ 0u, ~u_input.a.x) % 32u)) | ((var_0 | 4294967295u) & (firstLeadingBit(1u) & global4.c)));
    global0 = arg_0;
    global3 = _wgslsmith_add_i32(~(~func_3(Struct_2(-139f), !global2.x, _wgslsmith_f_op_f32(arg_0 - arg_0), Struct_1(vec3<bool>(false, false, false), global4.b, u_input.a.x))), 30576i);
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<i32> {
    global2 = vec2<bool>(global2.x, func_2(1969f));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1297f, _wgslsmith_div_f32(-774f, -458f), -623f, _wgslsmith_f_op_f32(step(-1816f, _wgslsmith_f_op_f32(384f + 408f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, -196f, 253f, 1613f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-338f, -1625f, 1829f, -582f)))), !vec4<bool>(arg_1.a.x, global2.x, global4.a.x, arg_0.a.x)))));
    global4 = Struct_1(!select(arg_1.a, global4.a, select(arg_1.a, !arg_1.a, !global4.a.x)), min(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global4.b.x, u_input.b, u_input.b), vec3<i32>(u_input.b, arg_1.b.x, arg_1.b.x))), global4.b) ^ arg_0.b, 64054u);
    global1 = array<vec3<u32>, 21>();
    var var_1 = arg_0.a;
    return vec4<i32>(firstLeadingBit(-2147483647i) & (-_wgslsmith_dot_vec2_i32(vec2<i32>(22856i, arg_0.b.x), global4.b.zy) | 1i), ~_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.b.x, 13010i), global4.b.yy | vec2<i32>(arg_1.b.x, 12290i), !global4.a.yy), reverseBits(global4.b.yx)), select(u_input.b, u_input.b, true), ~(~30479i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec4_i32(-min(vec4<i32>(u_input.b, -15798i, u_input.b, 2147483647i), func_1(Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, 6678i, u_input.b), u_input.a.x), Struct_1(vec3<bool>(global2.x, true, false), vec3<i32>(u_input.b, u_input.b, 0i), 0u))), (vec4<i32>(u_input.b, global4.b.x, -1i, u_input.b) | _wgslsmith_mult_vec4_i32(vec4<i32>(11414i, u_input.b, global4.b.x, global4.b.x), vec4<i32>(global4.b.x, u_input.b, 0i, 5448i))) << (vec4<u32>(_wgslsmith_div_u32(40231u, 4294967295u), global4.c << (4294967295u % 32u), ~1u, max(u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(~(-2147483647i), -2147483647i, -39164i, firstLeadingBit(-u_input.b))) ^ _wgslsmith_mult_vec4_i32(select(vec4<i32>(-25788i, u_input.b, -1i, u_input.b) << (vec4<u32>(1u, 0u, global4.c, 11482u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(-7402i, u_input.b), -u_input.b, 1i, global4.b.x << (u_input.a.x % 32u)), !vec4<bool>(global2.x, false, global4.a.x, false)), firstTrailingBit(~vec4<i32>(global4.b.x, global4.b.x, u_input.b, 36226i)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 268f)), 856f)) + _wgslsmith_f_op_f32(round(290f)));
    global1 = array<vec3<u32>, 21>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(1f)));
    let var_2 = u_input.a.xz >> (abs(vec2<u32>(global4.c, 4294967295u)) % vec2<u32>(32u));
    global1 = array<vec3<u32>, 21>();
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_1.a) * _wgslsmith_f_op_f32(-var_1.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-599f, var_1.a) + vec2<f32>(-1035f, var_1.a)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), 608f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, 472f))))), 4294967295u, vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)), ~_wgslsmith_add_u32(0u, var_2.x), ~4294967295u, 1u), var_2.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, -338f, var_1.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1140f, var_1.a, -1000f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 321f) + vec3<f32>(406f, 1326f, var_1.a))))), vec3<bool>(all(!vec4<bool>(global2.x, global4.a.x, global4.a.x, false)), var_0.x != firstLeadingBit(global4.b.x), false))));
}

