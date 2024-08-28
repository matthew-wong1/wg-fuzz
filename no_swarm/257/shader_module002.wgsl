struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_5, 16>;

var<private> global2: Struct_5;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = Struct_4(global2.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-457f + global2.a) + _wgslsmith_f_op_f32(trunc(-104f))), select(!global2.e, !global2.d.b.a, true), global2.c);
    var var_1 = Struct_1(vec4<bool>(any(vec3<bool>(select(global2.b.x, arg_0.c.a.x, true), !global2.b.x, 79266u < global2.c)), arg_0.c.a.x, false, var_0.c.x));
    var var_2 = reverseBits(~(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 32593u, u_input.e.x, 1u), vec4<u32>(global2.c, global2.c, global2.c, 47966u)) << (abs(vec4<u32>(var_0.d, var_0.d, 0u, 130070u) | vec4<u32>(4405u, global2.c, var_0.d, u_input.e.x)) % vec4<u32>(32u))));
    global2 = global1[_wgslsmith_index_u32(1u, 16u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.a, 2343f), vec2<f32>(var_0.b, 183f)))))));
    return vec3<u32>(~1u, u_input.e.x, 30408u);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec3_i32(min(u_input.c.wwy, u_input.c.zyz), _wgslsmith_clamp_vec3_i32(~_wgslsmith_mod_vec3_i32(u_input.d.xzz, u_input.c.zyy) << (func_3(Struct_2(-22603i, global2.d.b, global2.d.b)) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(-18077i, firstLeadingBit(54032i), -32993i), arg_1, u_input.b), min(vec3<i32>(9802i, _wgslsmith_dot_vec2_i32(u_input.c.wy, vec2<i32>(2147483647i, 9662i)), -2147483647i), vec3<i32>(-2147483647i, arg_1, global2.d.a) & vec3<i32>(u_input.d.x, arg_1, arg_1))));
    var var_1 = Struct_3((select(u_input.d | vec4<i32>(2147483647i, -1i, 20417i, var_0.x), _wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(global2.d.a, u_input.b, var_0.x, 50892i)), !global2.e) >> (max(~vec4<u32>(4294967295u, 73300u, 47654u, 38536u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 64280u, 84978u, 17736u), vec4<u32>(global2.c, u_input.a, arg_0, arg_0))) % vec4<u32>(32u))) | select(vec4<i32>(var_0.x, countOneBits(u_input.d.x), ~u_input.c.x, abs(38997i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, 18086i), vec3<i32>(1i, -17062i, 0i)), -1i, ~u_input.d.x, _wgslsmith_add_i32(-5348i, arg_1)), vec4<bool>(true, global2.d.a > 1i, global2.b.x, global2.e.x)));
    var var_2 = Struct_2((i32(-1i) * -u_input.b) | u_input.b, Struct_1(vec4<bool>(_wgslsmith_div_f32(global2.a, -1630f) != _wgslsmith_f_op_f32(336f * -663f), !(global2.e.x | global2.d.b.a.x), true, global2.d.b.a.x)), global2.d.b);
    let var_3 = firstLeadingBit(~_wgslsmith_add_u32(global2.c, ~_wgslsmith_add_u32(arg_0, 108335u)));
    var var_4 = all(select(global2.e.zyx, arg_2.yyy, true & (~4294967295u >= u_input.e.x)));
    return Struct_2(((i32(-1i) * -2147483647i) << (_wgslsmith_sub_u32(u_input.a & var_3, _wgslsmith_add_u32(u_input.e.x, global2.c)) % 32u)) | ~var_2.a, var_2.b, var_2.b);
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 122f, -532f, -971f))))));
    return func_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_1, 17831u), 38667u & u_input.e.x), 2147483647i, select(select(vec4<bool>(0u < arg_1, true == global2.d.b.a.x, true, any(vec2<bool>(false, false))), vec4<bool>(any(vec4<bool>(false, global2.e.x, false, false)), true, !global2.b.x, any(vec2<bool>(global2.b.x, false))), min(-1i, u_input.d.x) >= global2.d.a), !global2.d.c.a, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var_0 = vec4<i32>(_wgslsmith_mod_i32(var_0.x, global2.d.a) & -u_input.d.x, ~(-2147483647i), u_input.d.x, u_input.b);
    global1 = array<Struct_5, 16>();
    var var_1 = (2147483647i | select(-var_0.x, abs(0i) | _wgslsmith_dot_vec4_i32(u_input.c, u_input.c), global2.e.x)) ^ ~_wgslsmith_sub_i32(u_input.b, 1i);
    var var_2 = func_1(-17001i, ~u_input.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(585f);
}

