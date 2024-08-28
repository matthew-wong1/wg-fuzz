struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 19>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> vec2<bool> {
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_div_i32(u_input.b, u_input.b);
    let var_1 = ~(~1u);
    var var_2 = Struct_1(select(!arg_0.a, select(vec3<bool>(arg_0.d, !arg_0.d, false), arg_0.a, arg_0.b.x), false), arg_0.b, select(vec2<bool>(false, true), !vec2<bool>(arg_0.b.x, true), arg_0.c), arg_0.d);
    var var_3 = arg_2.ywz;
    return !vec2<bool>(true, all(!var_2.a.xx));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> u32 {
    var var_0 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(~(-1i), _wgslsmith_div_i32(2147483647i, -9602i << (u_input.a.x % 32u)), firstTrailingBit(arg_1.x) & 0i), vec3<i32>(1i, ~2147483647i, ~(-28849i)) << (u_input.a.wyw % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, _wgslsmith_mod_i32(1i, 15120i), i32(-1i) * -7877i), abs(-vec3<i32>(35438i, 0i, -19911i))), vec3<i32>(countOneBits(arg_1.x), ~_wgslsmith_sub_i32(arg_1.x, -1i), 2147483647i)), !(firstTrailingBit(-44012i) > -1i));
    let var_1 = Struct_1(!select(!select(vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0), arg_0), select(!vec3<bool>(true, true, arg_0), select(vec3<bool>(true, true, true), vec3<bool>(true, false, arg_0), arg_0), vec3<bool>(arg_0, arg_0, false)), true), !vec4<bool>(arg_0, false, all(vec2<bool>(true, false)), false), !(!vec2<bool>(!arg_0, all(vec3<bool>(true, true, arg_0)))), arg_0);
    let var_2 = func_3(var_1, 1i, vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.x))))), global0.x));
    var var_3 = Struct_1(var_1.a, vec4<bool>(true, any(select(var_1.b, var_1.b, select(var_1.b, var_1.b, var_2.x))), func_3(Struct_1(!vec3<bool>(arg_0, false, true), var_1.b, var_2, true & var_1.d), -u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, -590f, global0.x, global0.x))))).x, true), var_1.b.xx, false);
    let var_4 = var_1;
    return u_input.a.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    var var_0 = !vec4<bool>(arg_1.x, true, true, 86115u == (22892u << (func_2(arg_1.x, vec2<i32>(1i, u_input.d)) % 32u)));
    let var_1 = arg_2;
    let var_2 = var_0.x && var_0.x;
    global1 = array<Struct_1, 19>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2, ~4294967295u), 19u)];
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x) & func_1(vec2<i32>(-14155i, 2147483647i), vec3<bool>(true, true, true), u_input.a.x), ~u_input.c.x >> (countOneBits(4294967295u) % 32u)), u_input.c.yz), 49248u), 19u)];
    var var_1 = (-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.d, u_input.b, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(8494i, u_input.b, 23841i, -2147483647i), vec4<i32>(1i, -2147483647i, u_input.b, u_input.b))) | -2147483647i) <= select(2147483647i, -(_wgslsmith_mod_i32(43679i, u_input.b) | u_input.d), select(!(!var_0.c.x), var_0.a.x || true, all(var_0.b.yxw)));
    var var_2 = -983f;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(global0.x - -239f)))) + global0.yz);
    var_0 = global1[_wgslsmith_index_u32(0u, 19u)];
    global1 = array<Struct_1, 19>();
    var_0 = global1[_wgslsmith_index_u32(~(u_input.a.x & _wgslsmith_sub_u32(countOneBits(u_input.c.x) ^ (u_input.c.x << (59122u % 32u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, u_input.e.x), ~317u))), 19u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -1099f), vec2<f32>(global0.x, -1093f))) + global0.yy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))))), min(u_input.c << (~min(u_input.c, u_input.c) % vec4<u32>(32u)), u_input.c), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 1i, -2147483647i), vec3<i32>(i32(-1i) * -8670i, 1i, 0i)));
}

