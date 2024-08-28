struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: Struct_1 = Struct_1(-588f, vec3<bool>(false, false, false), vec2<f32>(1048f, -719f), 534f, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, -41818i));

var<private> global2: array<bool, 14> = array<bool, 14>(false, false, false, false, false, true, false, true, true, true, true, false, true, true);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(global1.e.x, 5542i, -1i), vec3<i32>(1076i, arg_1.b, global1.e.x), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, global1.e.x, arg_1.b), vec3<i32>(global1.e.x, -44683i, 1i), global1.e.wxy) | firstTrailingBit(vec3<i32>(-2147483647i, 39634i, 0i))), -global1.e.x);
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.a, arg_1.a, 24592u, arg_1.a) | ~vec4<u32>(4294967295u, u_input.a, 31529u, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_mult_u32(23177u, arg_1.a), ~arg_1.a, ~arg_1.a), vec4<u32>(max(arg_1.a, 14274u), _wgslsmith_dot_vec4_u32(vec4<u32>(23073u, arg_1.a, 667u, 4294967295u), vec4<u32>(arg_1.a, u_input.a, arg_1.a, 54148u)), u_input.a, u_input.a))), select(_wgslsmith_div_vec4_u32(abs(reverseBits(vec4<u32>(80454u, arg_1.a, 1u, arg_1.a))), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a, u_input.a, 4294967295u, u_input.a), ~vec4<u32>(4294967295u, arg_1.a, arg_1.a, u_input.a))), ~(~select(vec4<u32>(22372u, 0u, u_input.a, 1u), vec4<u32>(arg_1.a, arg_1.a, u_input.a, u_input.a), false)), !(!(!vec4<bool>(true, false, global1.b.x, global2[_wgslsmith_index_u32(48845u, 14u)])))));
    var var_2 = _wgslsmith_add_i32(var_0, -1i);
    let var_3 = !global2[_wgslsmith_index_u32(~(~(~33972u)), 14u)];
    let var_4 = global1.e.zw;
    return global1.d;
}

fn func_2(arg_0: f32) -> f32 {
    global2 = array<bool, 14>();
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.a, Struct_3(u_input.a << (6671u % 32u), global1.e.x), arg_0 == _wgslsmith_f_op_f32(f32(-1f) * -794f))) * _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.x) - _wgslsmith_f_op_f32(-arg_0)))), global1.b, vec2<f32>(global1.d, _wgslsmith_f_op_f32(sign(global1.c.x))), _wgslsmith_div_f32(-520f, arg_0), vec4<i32>(17228i, global1.e.x, firstTrailingBit(abs(0i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, 1i, global1.e.x, global1.e.x), -global1.e)));
    var var_0 = global1.c;
    var var_1 = Struct_3(1u, -global1.e.x);
    var var_2 = global1.a;
    return var_0.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> vec2<i32> {
    var var_0 = ~39440u;
    let var_1 = global1.e.x;
    var var_2 = select(vec2<bool>(!any(vec4<bool>(false, false, false, true)), true), select(!vec2<bool>(true, global1.b.x & arg_1.b.b.x), vec2<bool>(_wgslsmith_f_op_f32(trunc(216f)) == arg_2, any(global1.b)), false), !arg_1.b.b.yy);
    global0 = array<vec4<i32>, 13>();
    var var_3 = _wgslsmith_mod_i32(arg_1.b.e.x, 5367i);
    return global1.e.yx;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    let var_0 = func_4(_wgslsmith_sub_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_3.a.a, arg_2.a), vec3<u32>(9545u, arg_3.b.x, 1028u)) << (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(~vec3<u32>(59404u, 4294967295u, arg_0), vec3<u32>(arg_3.b.x, 9330u, u_input.a) | vec3<u32>(arg_2.a, arg_0, arg_3.a.a)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), ~vec3<u32>(4294967295u, 62663u, 1u), ~vec3<u32>(arg_3.b.x, 6292u, arg_2.a)), vec3<u32>(~1u, 728u, _wgslsmith_mod_u32(0u, arg_3.b.x)))), Struct_2(Struct_1(917f, vec3<bool>(all(global1.b.yz), true, global1.b.x), vec2<f32>(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(f32(-1f) * -440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1000f))), global1.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x))), !vec3<bool>(true, global2[_wgslsmith_index_u32(arg_2.a, 14u)], global2[_wgslsmith_index_u32(arg_3.b.x, 14u)]), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, global1.d), vec2<f32>(958f, -953f))))), global1.a, vec4<i32>(18831i, arg_1 << (arg_2.a % 32u), 1i >> (u_input.a % 32u), i32(-1i) * -2147483647i))), _wgslsmith_f_op_f32(func_3(-508f, arg_2, !any(vec4<bool>(global1.b.x, global2[_wgslsmith_index_u32(u_input.a, 14u)], false, false)) & all(select(vec2<bool>(global1.b.x, false), global1.b.zx, global1.b.xy)))), select(max(1268u, abs(_wgslsmith_mult_u32(arg_0, arg_3.a.a))), 4294967295u, ((global1.b.x != global2[_wgslsmith_index_u32(arg_0, 14u)]) && true) | global2[_wgslsmith_index_u32(0u, 14u)]));
    var var_1 = -select(vec2<i32>(~arg_3.a.b, global1.e.x), vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(global0[_wgslsmith_index_u32(49592u, 13u)]), global1.e), ~(-40285i)), vec2<bool>(false, all(vec4<bool>(global1.b.x, global2[_wgslsmith_index_u32(1u, 14u)], global1.b.x, true)) || true));
    var var_2 = _wgslsmith_mult_i32(-41373i | max(var_0.x, 48500i), min(4047i, firstLeadingBit(-11922i)));
    let var_3 = arg_3.a;
    var var_4 = var_3;
    return abs(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<u32>(u_input.a, max(func_1(1u, 3584i, Struct_3(20213u, global1.e.x), Struct_4(Struct_3(u_input.a, -72222i), vec2<u32>(0u, u_input.a))) << (~1u % 32u), _wgslsmith_mod_u32(~u_input.a, 29644u))), ~(select(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(33086u, 0u) % vec2<u32>(32u)), vec2<u32>(4294967295u, u_input.a), all(vec2<bool>(false, global1.b.x))) & vec2<u32>(u_input.a, _wgslsmith_add_u32(4294967295u, u_input.a))), false);
    var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(~1u, 98576u), ~_wgslsmith_mult_vec2_u32(reverseBits(abs(vec2<u32>(1u, 7641u))), vec2<u32>(var_0.x, select(84219u, u_input.a, true))));
    global0 = array<vec4<i32>, 13>();
    let var_1 = reverseBits(-global1.e.xwy);
    let var_2 = vec2<f32>(644f, _wgslsmith_f_op_f32(-1525f * 1543f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-569f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(func_3(global1.a, Struct_3(_wgslsmith_mult_u32(10150u, 24811u), _wgslsmith_mult_i32(global1.e.x, var_1.x)), countOneBits(u_input.a) > (var_0.x | 68625u))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), global1.c.x)))), ~func_4(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, var_0.x), vec3<u32>(u_input.a, 5763u, 1u)) | ~vec3<u32>(1u, u_input.a, 38403u), Struct_2(Struct_1(global1.c.x, global1.b, vec2<f32>(381f, 1000f), 971f, vec4<i32>(-1i, var_1.x, -1i, var_1.x)), Struct_1(var_2.x, vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 14u)], global1.b.x, true), vec2<f32>(var_2.x, -1020f), var_2.x, global0[_wgslsmith_index_u32(var_0.x, 13u)])), -232f, countOneBits(u_input.a)).x, _wgslsmith_div_vec4_i32(~(~vec4<i32>(-8110i, global1.e.x, 1i, var_1.x) << ((vec4<u32>(71442u, var_0.x, u_input.a, u_input.a) >> (vec4<u32>(var_0.x, 79032u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~global1.e), 1u, vec4<u32>(_wgslsmith_sub_u32(u_input.a, firstTrailingBit(31160u)), reverseBits(34218u) ^ (4294967295u | var_0.x), reverseBits(var_0.x), u_input.a) & vec4<u32>(var_0.x, (4294967295u ^ var_0.x) | max(0u, 4294967295u), ~(~4294967295u), firstTrailingBit(0u) | ~20040u));
}

