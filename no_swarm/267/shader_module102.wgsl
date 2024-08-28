struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 16>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_3, 6>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, global1.x, 13932u), vec4<u32>(~(firstLeadingBit(global1.x) << (~global1.x % 32u)), 581u, global1.x, 27243u));
    var var_1 = Struct_5(Struct_4(1315i, arg_0, select(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.a, u_input.a.x), 1471i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a, -1i), u_input.a.wz), true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(var_0.xyx ^ var_0.yxz), select(vec3<u32>(var_0.x, 30686u, var_0.x), ~vec3<u32>(0u, global1.x, 10445u), !vec3<bool>(true, arg_0, true))) << (global1.x % 32u), 16u)], _wgslsmith_f_op_f32(-363f * 1129f));
    return all(!(!vec3<bool>(var_1.a.b, global2.b, !global2.b)));
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = global0[_wgslsmith_index_u32(~global1.x, 16u)];
    let var_1 = select(vec3<bool>(!func_3(var_0.b), false, true), !vec3<bool>(all(vec4<bool>(var_0.b, false, global2.b, false)), var_0.b, select(global1.x > 1u, var_0.b, var_0.b)), !vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global2.b, var_0.b))), false & var_0.b, false));
    global1 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(16977u, 34588u, global1.x, global1.x), min(vec4<u32>(52270u, 42115u, global1.x, 34341u), vec4<u32>(43775u, global1.x, global1.x, global1.x))) & ((vec4<u32>(21510u, global1.x, 1u, 4294967295u) << (vec4<u32>(global1.x, global1.x, 1u, global1.x) % vec4<u32>(32u))) << ((vec4<u32>(global1.x, 25471u, 1u, global1.x) << (vec4<u32>(global1.x, global1.x, 24386u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(min(global1.x, global1.x), _wgslsmith_dot_vec2_u32(global1.yy, global1.zw), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, global1.x), vec4<u32>(50664u, global1.x, global1.x, global1.x)), global1.x) << ((vec4<u32>(global1.x, 1u, 66847u, 0u) >> (vec4<u32>(48444u, 40592u, 10362u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = global1.x | 139032u;
    var_2 = reverseBits(~max(global1.x, _wgslsmith_div_u32(max(global1.x, global1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, global1.x), vec4<u32>(6028u, 7880u, global1.x, 0u)))));
    return firstTrailingBit(-u_input.a);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = abs(_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(946u, _wgslsmith_sub_u32(~arg_2, ~4294967295u))));
    global0 = array<Struct_4, 16>();
    var var_1 = _wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(select(u_input.a, vec4<i32>(global2.a, 0i, arg_0, -1i), !vec4<bool>(true, false, arg_3.a.x, arg_3.a.x)), vec4<i32>(u_input.a.x, global2.c, u_input.a.x, 4451i) ^ vec4<i32>(u_input.a.x, global2.a, u_input.a.x, global2.c)), _wgslsmith_mult_vec4_i32(func_2(abs(u_input.a)), select(~u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, 1i, arg_0), true)) & abs(firstLeadingBit(abs(vec4<i32>(1i, arg_0, arg_0, global2.a)))));
    var var_2 = true;
    var var_3 = (~_wgslsmith_dot_vec3_u32(~global1.zxx, global1.wwx) << (97792u % 32u)) & 0u;
    return global1.wy;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 6>();
    let var_0 = vec3<u32>(~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(18943u, 29512u), vec2<u32>(1336u, global1.x)), func_1(u_input.a.x, vec3<f32>(-1000f, -2199f, 820f), 33757u, Struct_2(vec3<bool>(false, true, true)))) | 1u), global1.x, abs(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(global1.yww, global1.xyx), 23846u)));
    global2 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(min(0i, -1i)), firstLeadingBit(-2147483647i), -select(6820i, 0i, global2.b), ~reverseBits(u_input.a.x)), u_input.a), global2.b, reverseBits(-2147483647i | max(u_input.a.x, func_2(u_input.a).x)));
    global1 = _wgslsmith_div_vec4_u32(vec4<u32>(~38892u, ~(~(1u >> (global1.x % 32u))), _wgslsmith_mult_u32(~4294967295u, max(16327u, ~var_0.x)), _wgslsmith_add_u32(~0u, firstTrailingBit(0u) ^ select(var_0.x, var_0.x, false))), countOneBits(vec4<u32>(_wgslsmith_mod_u32(26495u, func_1(u_input.a.x, vec3<f32>(-1000f, -1216f, -671f), var_0.x, Struct_2(vec3<bool>(true, global2.b, global2.b))).x), ~var_0.x, 878u, min(var_0.x, 1u))));
    global3 = array<Struct_3, 6>();
    global0 = array<Struct_4, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-1i), 1i, u_input.a.x), vec3<i32>(global2.a, 8150i, i32(-1i) * -45966i)) >> (firstLeadingBit(~abs(vec3<u32>(var_0.x, var_0.x, var_0.x))) % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(-311f, _wgslsmith_f_op_f32(round(272f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1229f, -591f) - vec2<f32>(-1191f, -1794f))), !select(false, global2.b, false)))));
}

