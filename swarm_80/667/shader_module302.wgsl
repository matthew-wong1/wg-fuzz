struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_2 = Struct_2(vec2<u32>(109035u, 44880u), Struct_1(-778f, vec4<i32>(-1i, 1i, 15703i, 4152i), vec2<u32>(4294967295u, 0u), -227f), Struct_1(193f, vec4<i32>(602i, 4800i, i32(-2147483648), 0i), vec2<u32>(18758u, 17490u), -1000f), -35361i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = 17120u == abs(_wgslsmith_mod_u32(u_input.c, 10603u) ^ arg_0);
    let var_1 = arg_3;
    var var_2 = arg_2.b;
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(min(arg_1.c.x, arg_0), countOneBits(4294967295u), 1u), ~(vec3<u32>(arg_2.c.x, 49463u, 4294967295u) & vec3<u32>(4294967295u, global1.b.c.x, arg_1.c.x))), global1.b.c.x), ~(u_input.c << (u_input.c % 32u)));
    var var_4 = vec3<bool>(true, false, any(!select(!vec4<bool>(var_1, true, arg_3, var_1), vec4<bool>(var_1, false, false, false), any(vec4<bool>(true, var_1, var_1, arg_3)))));
    return false;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = ~global1.a.x;
    let var_1 = _wgslsmith_f_op_f32(trunc(1601f));
    global1 = Struct_2(u_input.a, global1.c, global1.b, abs(i32(-1i) * -firstLeadingBit(global1.c.b.x)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, var_1)) * 679f);
    var_2 = arg_1.x;
    return select(true, false, func_3(arg_0 | _wgslsmith_clamp_u32(var_0, global1.b.c.x, arg_0), Struct_1(2202f, global1.b.b, vec2<u32>(u_input.a.x, 0u) ^ global1.a, global0.x), global1.b, true) || (arg_1.x < -425f));
}

fn func_1() -> vec3<bool> {
    let var_0 = global1.c.d;
    var var_1 = select(vec4<u32>(max(max(global1.c.c.x, u_input.c), ~u_input.c), firstLeadingBit(u_input.a.x ^ 1u), _wgslsmith_add_u32(1u, 1u), global1.c.c.x) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global1.b.c.x, global1.c.c.x, u_input.c, 47946u), vec4<u32>(global1.c.c.x, u_input.a.x, 1u, global1.c.c.x), vec4<bool>(false, false, true, true)), ~vec4<u32>(u_input.a.x, 1u, 43909u, u_input.c)), firstTrailingBit(45595u) | u_input.c, ~(~9036u), global1.b.c.x) % vec4<u32>(32u)), abs(select(vec4<u32>(73408u, ~1u, 1u, ~global1.b.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.c.x, 14196u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, 1u, 4294967295u, 13413u) | vec4<u32>(15460u, 72666u, global1.c.c.x, 1u)), !select(true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, func_2(27792u, vec3<f32>(global1.c.a, global0.x, global0.x), global1.c.b.zyy, -2147483647i), true, all(vec4<bool>(true, true, false, false))), vec4<bool>(true, true, true, true), true != (1504u > global1.a.x)), true));
    var_1 = firstLeadingBit(~(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(1981u, var_1.x, global1.a.x, u_input.c), vec4<u32>(var_1.x, 4294967295u, var_1.x, global1.b.c.x)), vec4<u32>(1u, var_1.x, 0u, var_1.x))));
    var var_2 = u_input.d;
    global1 = Struct_2(_wgslsmith_clamp_vec2_u32((~u_input.a & var_1.wx) ^ var_1.wx, ~(~(~vec2<u32>(u_input.c, 1u))), ~_wgslsmith_mod_vec2_u32(abs(var_1.yy), firstTrailingBit(global1.b.c))), global1.b, global1.b, _wgslsmith_add_i32(-1i | _wgslsmith_dot_vec4_i32(global1.c.b, _wgslsmith_add_vec4_i32(global1.b.b, vec4<i32>(-1i, u_input.b, var_2.x, -1i))), u_input.d.x));
    return vec3<bool>(!(true | (-19056i >= -var_2.x)), false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global1.b.c.x;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1324f, -1166f, global1.b.d) - _wgslsmith_div_vec3_f32(vec3<f32>(540f, global0.x, global1.b.a), vec3<f32>(global1.b.d, global1.b.d, -2145f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a, global0.x, global1.b.d) + vec3<f32>(global1.c.d, -2933f, global1.b.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2962f, -442f, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.a, global1.b.d, global1.c.a) * vec3<f32>(763f, -1206f, 1434f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.b.d, global1.c.d)))));
    var var_2 = func_1();
    var_2 = !(!(!select(!vec3<bool>(var_2.x, var_2.x, var_2.x), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, true, true), vec3<bool>(false, false, false)), !var_2.x)));
    var var_3 = global1.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.b.yyw, ~abs(_wgslsmith_add_vec4_u32(abs(vec4<u32>(var_3.x, u_input.c, 20058u, global1.c.c.x)), vec4<u32>(0u, u_input.c, 21115u, var_3.x))), 5733i, var_3.x, vec2<f32>(698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1293f))));
}

