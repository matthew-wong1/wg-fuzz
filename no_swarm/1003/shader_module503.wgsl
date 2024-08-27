struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: Struct_5;

var<private> global3: array<i32, 14> = array<i32, 14>(-1i, 36702i, 0i, -4172i, -42492i, 1009i, i32(-2147483648), -45391i, 2147483647i, -35048i, -1i, -55639i, 2147483647i, -17301i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    let var_0 = firstTrailingBit(countOneBits(1u ^ u_input.c));
    global1 = select(all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true))), abs(firstLeadingBit(_wgslsmith_mult_i32(-16255i, u_input.b))) <= _wgslsmith_add_i32(abs(~u_input.a), 23464i), all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)) && any(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false))));
    var var_1 = select(vec2<bool>(true, true), !(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), any(vec4<bool>(false, true, true, false))), false));
    var var_2 = true;
    let var_3 = Struct_1(select(!vec4<bool>(any(vec2<bool>(false, false)), false, false, !var_1.x), !select(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(true, true, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x)), !vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), select(select(!vec4<bool>(true, false, true, var_1.x), !vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, true, var_1.x, var_1.x)), vec4<bool>(true, var_1.x, true, var_1.x), true)), _wgslsmith_sub_vec2_i32(~vec2<i32>(global3[_wgslsmith_index_u32(arg_0, 14u)], global3[_wgslsmith_index_u32(64963u, 14u)]) ^ max(abs(vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(arg_0, 14u)])), ~vec2<i32>(global3[_wgslsmith_index_u32(u_input.c, 14u)], u_input.b)), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, global3[_wgslsmith_index_u32(79197u, 14u)]), firstTrailingBit(vec2<i32>(-41517i, u_input.a))) | firstTrailingBit(vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(-100102i, u_input.a))), vec2<i32>(countOneBits(u_input.b), -global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_0), vec2<u32>(29329u, var_0)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, arg_0), vec3<u32>(arg_0, arg_0, 7054u))), 14u)]), 1f);
    return vec4<bool>(!(237f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.d)), global2.a)), true, var_1.x, !any(var_3.a.xw));
}

fn func_2() -> Struct_5 {
    global3 = array<i32, 14>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(627f, 1046f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1819f, global2.a) - vec2<f32>(-1563f, -1295f))))));
    let var_1 = Struct_4(vec3<i32>(1i, 1i, -reverseBits(-7906i)), abs(u_input.c), Struct_3(Struct_1(func_3(72921u), -reverseBits(vec2<i32>(global3[_wgslsmith_index_u32(33053u, 14u)], global3[_wgslsmith_index_u32(u_input.c, 14u)])), vec2<i32>(-24055i, i32(-1i) * -75389i), _wgslsmith_f_op_f32(-var_0.x)), true, !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false))), 43233u);
    let var_2 = var_1.a;
    let var_3 = firstTrailingBit(~(~(vec2<u32>(var_1.d, var_1.b) & vec2<u32>(u_input.c, 0u)) >> (~vec2<u32>(var_1.b, u_input.c) % vec2<u32>(32u))));
    return Struct_5(298f);
}

fn func_1(arg_0: i32, arg_1: u32) -> bool {
    global2 = func_2();
    global3 = array<i32, 14>();
    let var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, false)) | true, !(!any(vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true)));
    var var_1 = select(firstTrailingBit(reverseBits(-vec2<i32>(arg_0, -11926i))), ~vec2<i32>(_wgslsmith_mult_i32(reverseBits(43895i), arg_0), u_input.b ^ -2147483647i), var_0.zy);
    let var_2 = Struct_2(vec2<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(~_wgslsmith_add_u32(0u, arg_1), (u_input.c & u_input.c) & _wgslsmith_sub_u32(u_input.c, u_input.c))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(-vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(-2530i, -1i), global3[_wgslsmith_index_u32(1u, 14u)]), countOneBits(_wgslsmith_mod_i32(u_input.a, 5688i))));
    global1 = any(!vec4<bool>(524f < global2.a, all(vec4<bool>(false, true, true, true)), true, var_0.x > 23662i)) | (true || any(select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false))));
    let var_1 = ~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(32624u, 14u)], var_0.x);
    global1 = all(select(vec3<bool>(true, any(vec4<bool>(true, false, false, true)), true), vec3<bool>(true, true, true), false)) || true;
    var var_2 = Struct_3(Struct_1(select(vec4<bool>(true, true, all(vec4<bool>(true, false, false, true)), u_input.c <= 1u), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false))), -vec2<i32>(-var_1, -4752i), select(-abs(var_0), var_0, vec2<bool>(-14948i == global3[_wgslsmith_index_u32(1u, 14u)], any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(step(global2.a, _wgslsmith_f_op_f32(-global2.a))))), func_1(2147483647i, ~(1u >> (firstTrailingBit(u_input.c) % 32u))), !func_3(~11525u).zy);
    global1 = !any(!(!(!vec2<bool>(var_2.b, var_2.b))));
    var var_3 = true;
    var var_4 = vec2<i32>(var_0.x | firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-33711i, 0i, 1i, -18948i), _wgslsmith_sub_vec4_i32(vec4<i32>(37992i, global3[_wgslsmith_index_u32(63583u, 14u)], -1i, 2147483647i), vec4<i32>(var_1, global3[_wgslsmith_index_u32(18588u, 14u)], global3[_wgslsmith_index_u32(u_input.c, 14u)], -9776i)))), 1i);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_mod_vec4_i32(vec4<i32>(34738i, var_4.x, -12733i, 9847i), vec4<i32>(-1i, -2147483647i, u_input.b, 0i)), firstTrailingBit(select(vec4<i32>(var_1, -1i, u_input.b, -18303i), vec4<i32>(var_1, var_2.a.c.x, 37297i, 1i), vec4<bool>(true, var_2.b, false, true)))));
}

