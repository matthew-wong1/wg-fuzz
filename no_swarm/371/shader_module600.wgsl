struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(false, -48430i, vec2<i32>(-1i, 24826i), true, false));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> bool {
    var var_0 = Struct_1(!(!select(true, all(vec4<bool>(true, global2.x, global2.x, global2.x)), arg_0 < arg_0)), ~(-2147483647i), vec2<i32>(u_input.b, -_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 23054i), vec2<i32>(2147483647i, u_input.b))), !global2.x && (global2.x & any(select(vec3<bool>(false, global2.x, false), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, false)))), !(((u_input.b <= u_input.b) == (1u >= u_input.a)) & global2.x));
    let var_1 = true;
    global0 = array<vec4<u32>, 3>();
    var var_2 = Struct_1(false, -2147483647i, vec2<i32>(var_0.b, -abs(u_input.b) << (firstLeadingBit(u_input.a << (4294967295u % 32u)) % 32u)), all(select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, global2.x, var_1), true), !vec3<bool>(global2.x, true, var_1), !vec3<bool>(var_1, global2.x, global2.x)), vec3<bool>(global2.x, all(vec3<bool>(true, false, var_1)), false != var_1), u_input.a < u_input.a)), var_0.d);
    var var_3 = ~(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(_wgslsmith_sub_u32(u_input.a, u_input.a)), 15980u, ~u_input.a), 3u)]);
    return var_1;
}

fn func_2() -> i32 {
    var var_0 = !select(vec4<bool>(all(select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, global2.x, global2.x))), (u_input.a ^ u_input.a) >= u_input.a, select(func_3(238f), global2.x, true), true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, global2.x, global2.x), global2.x), select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, true), false), select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, false, global2.x, global2.x), true)), select(select(select(vec4<bool>(false, global2.x, true, true), vec4<bool>(false, false, global2.x, false), false), select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(true, global2.x, true, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x)), u_input.a != 1u), vec4<bool>(false, true, all(vec3<bool>(global2.x, global2.x, false)), !global2.x), true));
    global1 = array<Struct_1, 1>();
    var var_1 = abs(vec4<i32>(_wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(32260i, u_input.b), vec2<i32>(u_input.b, 77998i)), firstTrailingBit(vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, firstLeadingBit(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(-1i, u_input.b, -21398i, -44800i)), ~(-2147483647i)), select(vec4<i32>(-1i, u_input.b, u_input.b, 2147483647i), vec4<i32>(1656i, 2147483647i, 1i, 0i), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(global2.x, false, true, true), vec4<bool>(true, var_0.x, global2.x, var_0.x)))), 43944i, u_input.b));
    var var_2 = _wgslsmith_mod_u32((((4294967295u << (u_input.a % 32u)) & (0u >> (0u % 32u))) << (62747u % 32u)) | abs(2982u | ~u_input.a), 40347u);
    var var_3 = vec3<bool>(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(676f - -1319f), 1f))) || (var_1.x < _wgslsmith_mult_i32(max(u_input.b, u_input.b), reverseBits(var_1.x))), true, global2.x);
    return var_1.x;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(all(!vec3<bool>(global2.x == false, true, true)), u_input.b, max(vec2<i32>(countOneBits(-6445i), select(68230i, 0i, true)) & select(select(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(u_input.b, u_input.b), vec2<bool>(false, global2.x)), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-2147483647i, u_input.b)), select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, true), vec2<bool>(global2.x, true))), vec2<i32>(13276i, select(0i, u_input.b, global2.x) >> (0u % 32u))), true, (firstLeadingBit(u_input.b) & max(1i, func_2())) >= ~(~(-u_input.b)));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-34151i), _wgslsmith_sub_i32(2147483647i, var_0.b)), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(u_input.b, u_input.b)), u_input.b | _wgslsmith_mod_i32(-14920i, 57988i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(var_0.b, u_input.b, -9587i, -31714i), vec4<i32>(var_0.c.x, 0i, -2147483647i, u_input.b), var_0.e) & -vec4<i32>(-1i, u_input.b, 1i, var_0.b), ~vec4<i32>(u_input.b, -2147483647i, 1i, u_input.b) & _wgslsmith_sub_vec4_i32(vec4<i32>(-59068i, 2147483647i, u_input.b, 76877i), vec4<i32>(var_0.b, 29587i, var_0.c.x, 0i)))) | firstTrailingBit(min(firstLeadingBit(_wgslsmith_mod_vec2_i32(var_0.c, var_0.c)), ~var_0.c));
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 1u)];
    global1 = array<Struct_1, 1>();
    var var_3 = select(select(select(vec3<bool>(true, false, any(vec3<bool>(var_0.a, var_2.e, true))), select(!vec3<bool>(var_2.e, true, true), !vec3<bool>(var_0.a, false, true), any(vec4<bool>(global2.x, true, var_0.d, true))), !(!vec3<bool>(true, true, var_0.d))), select(vec3<bool>(func_3(-252f), var_2.d && false, global2.x), !select(vec3<bool>(false, false, global2.x), vec3<bool>(false, false, false), vec3<bool>(var_2.d, var_0.d, var_2.e)), var_0.e), all(vec3<bool>(global2.x, !global2.x, select(var_2.d, var_2.a, global2.x)))), vec3<bool>(~(u_input.a | 44992u) == ~u_input.a, !((1u ^ u_input.a) < ~u_input.a), true), vec3<bool>(global2.x, var_2.e, !var_2.e));
    return -659f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 29401u > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.a, u_input.a, 8463u)) | ~vec4<u32>(u_input.a, 4294967295u, 51086u, u_input.a), (global0[_wgslsmith_index_u32(4294967295u, 3u)] << (vec4<u32>(32358u, 1u, 0u, u_input.a) % vec4<u32>(32u))) << (firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 3u)]) % vec4<u32>(32u))));
    var var_1 = global2.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), 398f);
    global0 = array<vec4<u32>, 3>();
    let var_3 = vec2<u32>(reverseBits(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~47531u, u_input.a), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(32289u, 21255u, 12403u), ~vec3<u32>(4294967295u, u_input.a, 0u)), ~vec3<u32>(19073u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, 0u, 26755u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(42759u, 15237u, u_input.a)) ^ vec3<u32>(u_input.a, u_input.a, u_input.a))));
    var_0 = func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(var_2.x * var_2.x)))))));
    global1 = array<Struct_1, 1>();
    let var_4 = 44855u;
    let var_5 = vec4<i32>(2147483647i, _wgslsmith_add_i32(~(_wgslsmith_sub_i32(u_input.b, 0i) << (~var_4 % 32u)), ~u_input.b), -u_input.b, -20724i);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.zz & vec2<i32>(u_input.b, -2147483647i), var_2.x, firstLeadingBit(2147483647i), vec3<u32>(20758u, ~50283u, abs(reverseBits(abs(var_4)))), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x, countOneBits(_wgslsmith_mult_u32(0u, 55103u))), 3u)]);
}

