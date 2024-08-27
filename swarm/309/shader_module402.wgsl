struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, true, false, false, true, true, false, false, false, true, false, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: u32) -> vec2<bool> {
    let var_0 = vec3<bool>(!any(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 13u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(78760u, 13u)]))), -170f == arg_1, false);
    var var_1 = 4294967295u;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)), ~u_input.c.xwy) >> (73988u % 32u), u_input.c.x, u_input.c.x);
    var_2 = ~u_input.c.xyx;
    var_2 = select(min(max(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, 2147483647i, var_2.x)), u_input.c.xxx ^ u_input.c.xzx, vec3<i32>(2147483647i, var_2.x, 41241i) & u_input.c.wzx), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c.x, 17399i, u_input.c.x), vec3<i32>(u_input.c.x, 46695i, -50962i))), u_input.c.wyz), ~(-u_input.c.wyw), global0[_wgslsmith_index_u32(u_input.d ^ 89154u, 13u)]);
    return select(var_0.zz, select(!var_0.xz, !var_0.zz, var_0.x), !select(var_0.yy, !vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0, 13u)]), !(!vec2<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 13u)]))));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(_wgslsmith_add_vec2_i32(u_input.c.xw, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), max(-34958i, 2147483647i)), ~_wgslsmith_div_i32(u_input.c.x, u_input.c.x))), u_input.c.yxy, select(func_3(~u_input.b, -1000f, 16267u), vec2<bool>(false, func_3(19707u, 697f, 20898u).x && (true | global0[_wgslsmith_index_u32(4294967295u, 13u)])), true), 0i);
    let var_1 = 0i;
    var var_2 = Struct_1(-1082f, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(-1067f)), 1950f))), vec3<f32>(_wgslsmith_f_op_f32(527f * _wgslsmith_f_op_f32(f32(-1f) * -891f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(224f - 1071f), 2282f)) * -1612f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-272f * -179f))), u_input.c.x & var_1);
    let var_3 = Struct_2(u_input.c.xx, vec3<i32>(var_2.d, -26329i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i ^ var_1, _wgslsmith_sub_i32(var_2.d, var_0.b.x), -6104i, _wgslsmith_div_i32(-33560i, u_input.c.x)), max(u_input.c, ~u_input.c))), vec2<bool>(false, true), 6815i);
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b.x, -1000f, -679f, var_2.c.x), vec4<f32>(var_2.c.x, var_2.b.x, var_2.a, var_2.c.x), vec4<bool>(false, var_3.c.x, false, global0[_wgslsmith_index_u32(1u, 13u)]))), vec4<f32>(-1024f, -245f, var_2.a, var_2.b.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.a, var_2.a, var_2.c.x, var_2.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(1003f, var_2.b.x, 206f, -364f), vec4<f32>(var_2.a, var_2.c.x, var_2.c.x, 267f)), vec4<bool>(var_0.c.x, global0[_wgslsmith_index_u32(u_input.b, 13u)], true, true))))));
    return firstLeadingBit(firstTrailingBit(~(var_1 | 1i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.b, arg_1.c, arg_1.d);
    let var_1 = func_2();
    let var_2 = Struct_2(-vec2<i32>(_wgslsmith_sub_i32(1i, ~u_input.c.x), arg_1.d), vec3<i32>(~(~var_1 | ~var_0.d), ~((var_0.d ^ var_1) ^ arg_1.d), _wgslsmith_mult_i32(-_wgslsmith_add_i32(843i, -2147483647i), 0i)), select(vec2<bool>((i32(-1i) * -21210i) > u_input.c.x, true), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)]), vec2<bool>(true, true), true), !vec2<bool>(global0[_wgslsmith_index_u32(14731u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)])), !select(all(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], true, false, false)), !global0[_wgslsmith_index_u32(39698u, 13u)], arg_1.b.x >= 1559f)), ~(50209i << (~(~u_input.b) % 32u)));
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    return global0[_wgslsmith_index_u32(~1u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 13>();
    let var_0 = select(!select(vec4<bool>(func_1(-1493f, Struct_1(-832f, vec2<f32>(633f, 265f), vec3<f32>(-528f, 916f, 136f), u_input.c.x)), true, !global0[_wgslsmith_index_u32(1u, 13u)], true), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.e, 13u)]), vec4<bool>(false, all(vec2<bool>(global0[_wgslsmith_index_u32(50603u, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)])), 0u != u_input.e, false)), !select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)] && true, false, true), select(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.d, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], true), vec4<bool>(global0[_wgslsmith_index_u32(25141u, 13u)], global0[_wgslsmith_index_u32(u_input.a.x, 13u)], true, global0[_wgslsmith_index_u32(u_input.d, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false, global0[_wgslsmith_index_u32(u_input.d, 13u)])), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, false, true)), -u_input.c.x != -13645i), !(!vec4<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(0u, 13u)], false, global0[_wgslsmith_index_u32(0u, 13u)])), global0[_wgslsmith_index_u32(47996u, 13u)] || true, false, !global0[_wgslsmith_index_u32(4294967295u, 13u)])));
    let var_1 = Struct_2(vec2<i32>(u_input.c.x, max(u_input.c.x, u_input.c.x)), vec3<i32>(_wgslsmith_clamp_i32(u_input.c.x, -u_input.c.x, u_input.c.x & u_input.c.x), max(-1i, 1i << ((103549u ^ u_input.e) % 32u)), _wgslsmith_mod_i32(21202i, 2147483647i)), select(func_3(~u_input.b << (select(18626u, 4294967295u, false) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -240f), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(20297u, 0u, 19288u), vec3<u32>(11510u, 4294967295u, 27391u)))), vec2<bool>(true, !(var_0.x != global0[_wgslsmith_index_u32(4294967295u, 13u)])), !(!select(global0[_wgslsmith_index_u32(u_input.d, 13u)], var_0.x, false))), 28770i);
    global0 = array<bool, 13>();
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -227f)), 1f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f), _wgslsmith_f_op_f32(max(-1119f, -1278f)))))));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.c.x, u_input.c.x >> (u_input.a.x % 32u)), var_1.a.x, ~abs(u_input.c.x)), u_input.c.x));
}

