struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32 = -302f;

var<private> global2: array<bool, 31> = array<bool, 31>(true, false, true, true, false, true, true, false, false, false, false, true, true, false, true, true, true, false, false, false, true, false, true, true, true, false, true, false, true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    global0 = 4294967295u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(107f)))), _wgslsmith_f_op_f32(round(2156f)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = 725f;
    var var_1 = ~14065u;
    var var_2 = -2147483647i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2028f, arg_1, arg_1, _wgslsmith_f_op_f32(func_3(arg_2.x, vec3<bool>(arg_0.d.x, false, arg_0.d.x)))))));
    let var_4 = vec3<u32>(~4401u, firstLeadingBit(31635u), _wgslsmith_clamp_u32(41244u, 0u, ~_wgslsmith_sub_u32(~u_input.a, _wgslsmith_div_u32(56011u, arg_0.c.a))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -383f, var_0, 455f) + var_3.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = -1i;
    var var_1 = _wgslsmith_mult_i32(-var_0, -(var_0 >> (min(abs(u_input.a), 1u) % 32u)));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~(~u_input.a), _wgslsmith_div_u32(1u << (u_input.a % 32u), ~(u_input.a | u_input.a)), ~4294967295u), vec4<u32>(51435u, u_input.a, u_input.a, 12184u), select(max(~abs(vec4<u32>(1u, 42516u, u_input.a, u_input.a)), vec4<u32>(27108u, u_input.a, 4294967295u, abs(128214u))), vec4<u32>(u_input.a, (87589u >> (u_input.a % 32u)) ^ 4294967295u, ~max(u_input.a, u_input.a), 1u), var_0 == 12237i));
    let var_3 = Struct_3(var_0, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_sub_i32(var_0, var_0), 1i), -vec3<i32>(-1i, 1i, 1886i) << (var_2.xzz % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_add_i32(var_0, -var_0)), -_wgslsmith_sub_i32(var_0, 2147483647i) >> (22292u % 32u), select(var_0, max(48590i, _wgslsmith_mod_i32(-15289i, var_0)), true)), Struct_2(~abs(0u)), arg_1.yzx, var_0);
    let var_4 = _wgslsmith_f_op_vec4_f32(-arg_0.a);
    return var_3.c;
}

fn func_1() -> i32 {
    let var_0 = func_4(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1041f, -192f, 691f, 1000f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(0i, vec4<i32>(2147483647i, -2147483647i, -2147483647i, 46123i), Struct_2(35264u), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)]), -1i), -603f, vec2<i32>(1i, 10976i))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 437f, -518f, -1123f))))))), !(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(4275u, 31u)], false, global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(3671u, 31u)])))));
    var var_1 = -26948i;
    var var_2 = Struct_2(4294967295u);
    let var_3 = Struct_3(-42037i, abs(abs(vec4<i32>(1i, _wgslsmith_div_i32(-2147483647i, -15389i), -30979i >> (var_2.a % 32u), ~2225i))), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1482f, 1175f, -614f, -579f))) - vec4<f32>(-609f, 714f, -155f, -563f))), vec4<bool>(true, !global2[_wgslsmith_index_u32(var_2.a, 31u)], true, true)), !select(!vec3<bool>(false, global2[_wgslsmith_index_u32(9242u, 31u)], global2[_wgslsmith_index_u32(var_2.a, 31u)]), select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 31u)], false, true), !vec3<bool>(global2[_wgslsmith_index_u32(var_0.a, 31u)], true, global2[_wgslsmith_index_u32(var_2.a, 31u)]), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 31u)], true, global2[_wgslsmith_index_u32(53086u, 31u)], false))), vec3<bool>(true, true, true)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 19514i, 19857i, 1i), abs(vec4<i32>(-2163i, 1802i, -68264i, 2147483647i))) | _wgslsmith_dot_vec4_i32(vec4<i32>(abs(1i), i32(-1i) * -22002i, -38779i, 49516i << (1u % 32u)), reverseBits(vec4<i32>(-13165i, -48942i, -34887i, 26818i))));
    var var_4 = vec3<i32>(var_3.e, 57154i, var_3.a);
    return 5143i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(max(-select(vec2<i32>(0i, 76777i), vec2<i32>(2147483647i, 33764i), true), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 11146i), vec2<i32>(0i, -18993i)) << ((vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, 0u)) % vec2<u32>(32u))) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(49779u, u_input.a), ~vec2<u32>(6496u, 36907u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(711f, -1553f))) * 1f) + -1170f), func_1());
}

