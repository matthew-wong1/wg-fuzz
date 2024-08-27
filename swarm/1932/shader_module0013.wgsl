struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(i32(-2147483648), 3753i), vec2<i32>(-26611i, 11579i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(55931i, -26488i), vec2<i32>(-1i, 33203i), vec2<i32>(2147483647i, 1i), vec2<i32>(0i, 1i), vec2<i32>(-44390i, i32(-2147483648)), vec2<i32>(-18481i, 25559i), vec2<i32>(2147483647i, 20590i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(2147483647i, 1i), vec2<i32>(48926i, 22955i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(3934i, -1086i), vec2<i32>(2147483647i, -52633i), vec2<i32>(1i, 0i), vec2<i32>(0i, 17377i), vec2<i32>(45807i, 22056i), vec2<i32>(2147483647i, 33936i), vec2<i32>(-42921i, -17342i));

var<private> global1: u32 = 3644u;

var<private> global2: Struct_5;

var<private> global3: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(18455u, 55663u, 58364u), vec3<u32>(48696u, 4294967295u, 16725u), vec3<u32>(8103u, 7917u, 0u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 4294967295u, 1726u), vec3<u32>(1u, 46679u, 22693u), vec3<u32>(41391u, 1u, 61279u), vec3<u32>(6465u, 37567u, 32875u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: vec2<u32>) -> vec3<i32> {
    var var_0 = arg_2.b.a.x;
    let var_1 = max(-_wgslsmith_div_i32(arg_2.a.x, global2.b.a.x), select(global2.b.a.x, _wgslsmith_mult_i32(1i, 2147483647i), any(vec3<bool>(true, any(vec4<bool>(global2.c.x, true, true, global2.b.b.x)), true))));
    let var_2 = ~(~48097u);
    let var_3 = Struct_2(global2.b.a.yzw, ~(~(vec3<u32>(22115u, 1u, u_input.a.x) | u_input.e) >> (~vec3<u32>(9163u, 1u, 1u) % vec3<u32>(32u))), _wgslsmith_mult_u32(u_input.e.x, 1u));
    let var_4 = Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(global0[_wgslsmith_index_u32(var_3.c, 24u)]), global2.b.a.xy) | ~var_3.a.x, ~global2.b.a.x, global2.b.c, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, 2272i, var_1, global2.b.c), arg_2.a)), select(vec3<bool>(!any(global2.c), false, global2.b.b.x & true), !global2.c.www, select(global2.b.b, vec3<bool>(true, all(vec2<bool>(global2.b.b.x, false)), true), true)), ~countOneBits(var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(700f, -2119f)) + _wgslsmith_f_op_f32(f32(-1f) * -280f)), arg_0.x)));
    return ~arg_2.b.a << (~arg_2.b.b % vec3<u32>(32u));
}

fn func_2() -> i32 {
    var var_0 = global2.e.x;
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-881f, _wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(global2.a.x - 382f), Struct_3(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -10616i, u_input.d, global2.b.c) | vec4<i32>(31235i, 20140i, global2.b.a.x, 0i), ~vec4<i32>(18490i, u_input.d, -12501i, -59067i)), Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(-34760i, global2.b.a.x, -15145i), global2.b.a.zzz), vec3<u32>(global2.e.x, 77510u, 1u), 0u | u_input.e.x)), u_input.b.zw) ^ vec3<i32>(7333i >> (select(~21938u, ~global2.e.x, true != global2.b.b.x) % 32u), global2.b.a.x, u_input.c.x);
    var var_2 = select(global2.c, global2.c, true);
    global2 = Struct_5(global2.a, Struct_1(vec4<i32>(var_1.x, u_input.d, -16866i, _wgslsmith_sub_i32(-22869i, 26305i)) ^ vec4<i32>(var_1.x, select(1i, global2.b.a.x, true), _wgslsmith_dot_vec4_i32(global2.b.a, global2.b.a), -global2.b.c), var_2.zxw, -max(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, global2.b.c, 42967i, u_input.c.x), vec4<i32>(u_input.c.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.yy, vec2<f32>(671f, global2.d)))), !vec4<bool>(true && !var_2.x, global2.b.b.x, global2.b.b.x, min(global2.e.x, u_input.a.x) <= ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a.x, global2.b.d.x, var_2.x)))) + 1093f), ~vec2<u32>(_wgslsmith_mod_u32(abs(u_input.e.x), global2.e.x), ~global2.e.x));
    global3 = array<vec3<u32>, 8>();
    return var_1.x;
}

fn func_1(arg_0: f32) -> vec3<i32> {
    global3 = array<vec3<u32>, 8>();
    global3 = array<vec3<u32>, 8>();
    global3 = array<vec3<u32>, 8>();
    global0 = array<vec2<i32>, 24>();
    var var_0 = global2.e.x;
    return vec3<i32>(u_input.c.x, reverseBits(func_2()) << (_wgslsmith_div_u32(53033u, _wgslsmith_clamp_u32(global2.e.x, global2.e.x, global2.e.x) << (_wgslsmith_mod_u32(1u, global2.e.x) % 32u)) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.b.c, u_input.c.x, -7586i, -1i), vec4<i32>(-2147483647i, -53416i, 1i, 14881i))), firstTrailingBit(_wgslsmith_div_vec4_i32(global2.b.a, global2.b.a))), ~abs(func_3(global2.a, global2.a.x, Struct_3(vec4<i32>(global2.b.a.x, -14040i, 9165i, 1i), Struct_2(vec3<i32>(-2147483647i, u_input.d, 13783i), vec3<u32>(global2.e.x, u_input.b.x, 37335u), u_input.a.x)), global2.e).x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(func_1(_wgslsmith_f_op_f32(-1188f - 1314f)), global2.b.a.wzx), -vec3<i32>(u_input.d, -77820i, _wgslsmith_mod_i32(80170i, -2147483647i))), min(reverseBits(0u), _wgslsmith_div_u32(~abs(u_input.a.x), ~abs(global2.e.x))));
}

