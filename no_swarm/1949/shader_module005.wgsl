struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-686f, 208f, 2088f);

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    var var_0 = min(vec4<u32>(max(54552u, arg_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~global1.b.c, 4294967295u, 4294967295u), _wgslsmith_mod_vec3_u32(max(global1.e, vec3<u32>(arg_3.x, 4294967295u, 4294967295u)), firstLeadingBit(arg_3.xyy))), firstTrailingBit(u_input.a), min(_wgslsmith_sub_u32(firstLeadingBit(global1.b.c), u_input.a), 84722u)), ~arg_3);
    var var_1 = ~reverseBits(~firstLeadingBit(vec4<u32>(global1.d.c, global1.b.c, global1.b.c, 4294967295u)));
    var var_2 = Struct_3(vec2<bool>(true, true), Struct_1(false, global1.b.b, 1u), -1000f, global1.b, var_1.xzy & var_1.wzy);
    var_1 = _wgslsmith_clamp_vec4_u32(arg_3, arg_3, arg_3);
    var var_3 = 179f;
    return global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(var_0.x, arg_3.x)), 3u)];
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_2(!any(select(vec2<bool>(true, true), select(global1.a, vec2<bool>(global1.b.a, global1.a.x), false), arg_0.b.x)), select(vec3<bool>(false, true, ~global1.b.c <= 1u), vec3<bool>(global1.b.a, any(global1.a), !global1.a.x), true || (2147483647i == firstTrailingBit(-44470i))), global1.d.b.x, 11600i);
    var var_1 = Struct_1(arg_0.b.x, global1.d.b, 67281u);
    var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(571f + var_0.c)), arg_0.c, _wgslsmith_f_op_f32(func_3(select(arg_0.d, arg_0.d, false), var_0.d, Struct_2(true, var_0.b, -164f, arg_0.d), vec4<u32>(0u, 58592u, var_1.c, 39052u) | vec4<u32>(39201u, 57401u, global1.d.c, var_1.c))))), reverseBits(22731u));
    return 1u;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), 41775u, 1u & ~func_2(Struct_2(global1.b.a, vec3<bool>(false, global1.b.a, global1.b.a), -1422f, -1i)), ~21934u), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(74358u, 62622u, 1u, u_input.a), countOneBits(vec4<u32>(12325u, 4294967295u, global1.e.x, 17286u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global1.d.b.www);
    var var_2 = Struct_3(global1.a, global1.b, _wgslsmith_f_op_f32(-var_1.x), Struct_1(global1.b.a, global1.b.b, _wgslsmith_sub_u32(abs(1u), u_input.a)), ~min((vec3<u32>(1u, 4294967295u, var_0.x) << (vec3<u32>(global1.e.x, 1u, var_0.x) % vec3<u32>(32u))) & (vec3<u32>(0u, var_0.x, var_0.x) ^ vec3<u32>(1u, global1.b.c, global1.b.c)), ~abs(vec3<u32>(var_0.x, u_input.a, 39039u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.b.x) + 1354f);
    let var_4 = vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(-29474i, u_input.b.x))), u_input.b.x);
    return ~1u;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(reverseBits(func_2(Struct_2(global1.a.x, vec3<bool>(global1.d.a, global1.d.a, true), 281f, u_input.b.x))), arg_2.x) & 1u;
    global1 = Struct_3(vec2<bool>(!(any(global1.a) && (1u <= arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.b.x)) > _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-291f - 277f))), global1.d, global1.d.b.x, global1.d, ~(global1.e >> (select(global1.e, global1.e, select(vec3<bool>(false, true, false), vec3<bool>(global1.d.a, global1.a.x, global1.b.a), global1.a.x)) % vec3<u32>(32u))));
    var var_1 = select(firstLeadingBit(vec2<i32>(-(~43108i), i32(-1i) * -u_input.b.x)), ~u_input.b.yx, vec2<bool>(false, all(!global1.a)));
    global0 = array<f32, 3>();
    var var_2 = _wgslsmith_mult_vec3_u32(~firstTrailingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0, 29924u, var_0), vec3<u32>(28745u, 0u, 46575u))), global1.e);
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = u_input.b.zx;
    var var_2 = func_4(663f, global0[_wgslsmith_index_u32(~func_1(), 3u)], vec2<u32>(~1070u, _wgslsmith_mod_u32(13792u, ~1771u)));
    let var_3 = var_2.a;
    let var_4 = func_4(-180f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1000f)), var_2.b.x)))), ~select(_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 4294967295u), ~global1.e.zx), global1.e.xz, true));
    var_2 = global1.d;
    let var_5 = reverseBits(var_4.c);
    var_2 = Struct_1(global1.a.x, var_4.b, countOneBits(firstTrailingBit(u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(countOneBits(0u), reverseBits(firstLeadingBit(~var_4.c))), min(_wgslsmith_div_vec2_i32(~u_input.b.xx, var_1), var_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.x, _wgslsmith_div_f32(138f, var_4.b.x)) * global1.c));
}

