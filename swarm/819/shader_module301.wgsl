struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<Struct_2, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    var var_0 = Struct_3(Struct_1(abs(_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_3.x, 15338u), vec2<u32>(29444u, 77898u), vec2<bool>(false, true)), arg_1.d.yz)), -1i, -29121i, arg_1.d));
    var var_1 = Struct_1(1u, ~1i, -9186i, ~max(arg_1.d, ~vec4<u32>(11150u, arg_3.x, var_0.a.d.x, u_input.a)));
    global0 = array<f32, 23>();
    global1 = array<Struct_2, 28>();
    var var_2 = arg_3.x;
    return -2147483647i;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = abs(u_input.b.zxz >> (vec3<u32>(abs(~u_input.a), ~_wgslsmith_mod_u32(u_input.a, arg_3), arg_3) % vec3<u32>(32u)));
    global1 = array<Struct_2, 28>();
    var var_1 = Struct_1(4294967295u, -23430i, _wgslsmith_mult_i32(~min(0i, u_input.b.x), -9715i), countOneBits(_wgslsmith_mult_vec4_u32(arg_0.a.d << (arg_0.a.d % vec4<u32>(32u)), vec4<u32>(1u, 28924u, arg_0.a.d.x, arg_0.a.a))) & vec4<u32>(120267u, ~38446u, reverseBits(_wgslsmith_mod_u32(arg_0.a.a, 113113u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), u_input.e)));
    var var_2 = arg_0.a;
    let var_3 = _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(~firstTrailingBit(-14555i), _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(var_0.xx, var_0.yy)))), abs(max(u_input.b.wz, vec2<i32>(~var_2.c, u_input.b.x))));
    return ~(~var_2.a) | 1u;
}

fn func_1() -> bool {
    global1 = array<Struct_2, 28>();
    var var_0 = true;
    global1 = array<Struct_2, 28>();
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-func_2(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), Struct_1(38170u, u_input.c, u_input.c, vec4<u32>(u_input.d, 7163u, 0u, 4294967295u)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(45510u, 23u)] * global0[_wgslsmith_index_u32(u_input.d, 23u)]), reverseBits(vec3<u32>(4294967295u, 10772u, u_input.a))), u_input.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(u_input.c, -u_input.b.x)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(max(u_input.b.xz, u_input.b.zy), u_input.b.zx), u_input.b.wz)));
    var_1 = u_input.c << (_wgslsmith_mult_u32(~(~39246u), _wgslsmith_clamp_u32(~func_3(Struct_3(Struct_1(80989u, u_input.b.x, u_input.c, vec4<u32>(u_input.d, u_input.e.x, 4294967295u, 19669u))), -1i, global0[_wgslsmith_index_u32(1u, 23u)], 73805u), 24103u, 33300u)) % 32u);
    return all(select(vec4<bool>(u_input.c < 1i, select(true, true, false), any(vec3<bool>(false, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), all(vec4<bool>(true, false, true, true))), true)) || true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 23>();
    global1 = array<Struct_2, 28>();
    let var_0 = Struct_2(Struct_1(u_input.a, i32(-1i) * -1i, abs(~u_input.b.x), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(u_input.a, u_input.a, 0u, 0u)), abs(vec4<u32>(u_input.a, u_input.a, u_input.e.x, 55349u)) ^ min(vec4<u32>(u_input.d, 1u, 89122u, 0u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.d)))), vec2<bool>(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true)), func_1() == true), Struct_1(1u, u_input.c, -(_wgslsmith_dot_vec3_i32(u_input.b.yyy, vec3<i32>(u_input.c, u_input.c, 1i)) >> (_wgslsmith_clamp_u32(12166u, 1u, u_input.a) % 32u)), ~vec4<u32>(_wgslsmith_div_u32(1u, u_input.d), _wgslsmith_add_u32(1u, u_input.d), 1u, func_3(Struct_3(Struct_1(u_input.a, u_input.b.x, u_input.c, vec4<u32>(u_input.d, u_input.a, u_input.a, 4294967295u))), -2147483647i, 1911f, 8512u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1357f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13497u, 23u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4589u, 23u)])))), _wgslsmith_f_op_f32(1860f + _wgslsmith_f_op_f32(sign(543f))))), u_input.b.x);
    global0 = array<f32, 23>();
    let var_1 = u_input.c;
    let var_2 = Struct_3(Struct_1(var_0.c.d.x, _wgslsmith_mod_i32(~24153i, -28009i), var_1 << (27489u % 32u), ~var_0.c.d));
    let var_3 = Struct_2(var_0.c, select(!(!vec2<bool>(var_0.b.x, false)), !var_0.b, var_0.b), var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1903f, 645f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.d + var_0.d)))), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(select(_wgslsmith_clamp_vec4_u32(max(var_0.c.d, vec4<u32>(0u, u_input.d, var_3.a.d.x, var_3.c.a)), vec4<u32>(var_0.a.a, u_input.a, var_0.c.a, var_3.c.d.x), vec4<u32>(24351u, 88374u, var_0.a.a, u_input.e.x) >> (var_2.a.d % vec4<u32>(32u))), var_3.a.d, var_0.b.x), var_0.a.d, vec4<u32>(u_input.a, var_0.c.d.x, select(reverseBits(u_input.e.x), 1u, true), _wgslsmith_mult_u32(71205u, max(14140u, var_2.a.a)))), ~22913i);
}

