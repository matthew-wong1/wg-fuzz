struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 29>;

var<private> global1: array<i32, 14>;

var<private> global2: array<f32, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = 0i;
    var var_1 = _wgslsmith_f_op_f32(-752f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 6u)])))));
    global0 = array<vec4<f32>, 29>();
    let var_2 = !arg_0;
    global1 = array<i32, 14>();
    return -_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_mult_i32(-2147483647i, abs(u_input.a)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(-u_input.d, vec2<i32>(_wgslsmith_mod_i32(arg_1, _wgslsmith_sub_i32(arg_1, 32888i)), func_3(!vec3<bool>(true, arg_2.x, false), Struct_1(true)) & firstLeadingBit(0i)));
    let var_1 = countOneBits(arg_0);
    let var_2 = 22202u;
    global0 = array<vec4<f32>, 29>();
    let var_3 = !(!arg_2.x);
    return vec3<bool>(arg_2.x, all(!select(vec3<bool>(var_3, false, var_3), vec3<bool>(var_3, false, arg_2.x), all(arg_2))), 38646i == _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, var_1), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], 2147483647i)), 19266i));
}

fn func_1() -> i32 {
    let var_0 = true;
    global1 = array<i32, 14>();
    var var_1 = Struct_1(var_0);
    let var_2 = select(select(!vec3<bool>(var_0 | true, false, var_0), vec3<bool>(false, all(select(vec3<bool>(false, false, false), vec3<bool>(false, var_1.a, var_0), vec3<bool>(false, var_1.a, true))), false), true), select(select(select(select(vec3<bool>(var_1.a, var_0, var_0), vec3<bool>(var_1.a, var_1.a, var_0), false), !vec3<bool>(var_1.a, false, true), select(vec3<bool>(var_1.a, var_0, var_0), vec3<bool>(true, var_0, false), var_1.a)), select(func_2(u_input.d.x, u_input.a, vec2<bool>(var_1.a, false)), !vec3<bool>(var_1.a, var_0, true), false), all(!vec3<bool>(var_1.a, var_0, var_0))), vec3<bool>(!(var_1.a || false), var_0, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 14u)] != u_input.a), !(_wgslsmith_clamp_i32(u_input.d.x, global1[_wgslsmith_index_u32(u_input.c, 14u)], u_input.a) > _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 14u)], -52770i))), var_1.a);
    global0 = array<vec4<f32>, 29>();
    return -5270i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (~73955u ^ _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(30977u, 80881u, u_input.c) | vec3<u32>(45528u, u_input.c, 36153u), vec3<u32>(1u, 0u, 42079u)), 133097u)) >> (921u % 32u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(555f + -323f)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~u_input.c, 6u)])))));
    global1 = array<i32, 14>();
    let var_2 = _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(max(u_input.c, ~select(~34728u, ~u_input.c, true)), 6u)]));
    let var_3 = u_input.c > 39055u;
    var var_4 = _wgslsmith_clamp_vec4_i32(~_wgslsmith_clamp_vec4_i32(firstLeadingBit(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 14u)], -2147483647i, -16149i, 15772i)), -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, 24127i, 2473i, 1i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(58748u, 14u)], 2147483647i)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.d.x, 1i, global1[_wgslsmith_index_u32(22776u, 14u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 14u)], -1i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 14u)]), vec4<i32>(6803i, -1i, -2147483647i, 14763i))), _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-19747i, 37814i, 0i, global1[_wgslsmith_index_u32(14387u, 14u)]) ^ vec4<i32>(-10929i, u_input.b, 31880i, 1i), vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.c, 14u)], 2147483647i, u_input.a)), vec4<i32>(~countOneBits(u_input.d.x), u_input.a, global1[_wgslsmith_index_u32(min(reverseBits(u_input.c), countOneBits(0u)), 14u)], _wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, -45408i), u_input.b))), -vec4<i32>((-13196i ^ global1[_wgslsmith_index_u32(u_input.c, 14u)]) | global1[_wgslsmith_index_u32(~33490u, 14u)], -global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 14u)], u_input.b << (u_input.c % 32u), func_1()));
    var var_5 = !select(vec3<bool>(!var_3, var_3, var_3), !select(!vec3<bool>(true, var_3, true), !vec3<bool>(true, true, var_3), func_2(var_4.x, -2147483647i, vec2<bool>(true, false))), vec3<bool>(true, var_3 || var_3, true));
    let var_6 = Struct_1(select(false, all(select(vec3<bool>(var_3, true, var_5.x), vec3<bool>(var_3, var_5.x, true), true)) & true, any(select(!vec4<bool>(var_5.x, var_5.x, var_3, var_5.x), vec4<bool>(var_3, var_5.x, var_3, true), !vec4<bool>(true, false, var_3, false)))));
    var_4 = firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 2147483647i, u_input.a, var_4.x), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a, 2147483647i, global1[_wgslsmith_index_u32(41001u, 14u)], var_4.x), vec4<i32>(global1[_wgslsmith_index_u32(23573u, 14u)], -1i, 37647i, var_4.x)), -vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(17809u, 14u)], -35727i, -43958i)))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_i32(-global1[_wgslsmith_index_u32(u_input.c, 14u)], u_input.b | 1i) & ~var_4.x) >> (~_wgslsmith_mult_u32(~u_input.c, u_input.c) % 32u), abs(6826u));
}

