struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<Struct_5, 12>;

var<private> global2: array<bool, 21> = array<bool, 21>(true, false, false, true, false, true, true, true, false, true, true, false, true, false, false, true, true, false, false, true, true);

var<private> global3: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(u_input.a);
    let var_1 = ~_wgslsmith_mult_vec2_i32(u_input.c.ww << (firstLeadingBit(reverseBits(vec2<u32>(var_0.a, var_0.a))) % vec2<u32>(32u)), select(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(var_0.a, 32u)]), u_input.c.zz)), -vec2<i32>(u_input.c.x, -1i), global3.x));
    var var_2 = Struct_1(vec3<i32>(2147483647i, reverseBits(1i), ~firstLeadingBit(abs(var_1.x))), _wgslsmith_div_f32(-609f, -203f));
    let var_3 = 1107f;
    var var_4 = Struct_3(20833u);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_2.b, var_2.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f + var_3) * _wgslsmith_f_op_f32(min(var_2.b, 429f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_3)))) + var_2.b)));
}

fn func_2(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(func_3()), arg_0.b, Struct_1(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(max(u_input.c, vec4<i32>(1i, u_input.c.x, -1i, 0i)), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x)), min(1060i, ~global0[_wgslsmith_index_u32(67805u, 32u)])), -628f), 64271u, u_input.a);
    var var_1 = 67247u;
    let var_2 = max(u_input.c, min(-(~u_input.c), vec4<i32>(1i, u_input.c.x & 2147483647i, u_input.c.x, u_input.c.x & 71350i)) | abs(countOneBits(vec4<i32>(0i, 0i, global0[_wgslsmith_index_u32(arg_0.b.a, 32u)], 2147483647i) | u_input.c)));
    let var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(490f * 1000f), -248f), var_0.a.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.yx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 150f)))), 4294967295u <= _wgslsmith_dot_vec3_u32(abs(u_input.b) >> (countOneBits(vec3<u32>(arg_0.c.x, 4294967295u, var_0.d)) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, 50063u, ~arg_0.c.x))));
    var var_4 = u_input.c.x | global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c.x, _wgslsmith_sub_u32(arg_0.c.x, 1u)), 32u)];
    return arg_0.d.wyy;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> u32 {
    global3 = select(select(!select(func_2(global1[_wgslsmith_index_u32(arg_0.d, 12u)]), select(vec3<bool>(true, false, false), vec3<bool>(global3.x, global3.x, false), global3.x), global3.x), select(vec3<bool>(false, false, true), vec3<bool>(true, global3.x, false), global3.x), vec3<bool>(true, global3.x, func_2(Struct_5(true, arg_0.b, u_input.b.yx, vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b.a, 21u)], true, true, true))).x)), vec3<bool>(_wgslsmith_f_op_f32(trunc(-1061f)) <= 1152f, !(arg_0.c.b < _wgslsmith_f_op_f32(step(arg_1.b, arg_1.b))), global2[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(arg_0.b.a, 44735u)), 21u)]), !select(vec3<bool>(true, true, global3.x), vec3<bool>(false, any(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.b.a, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(86785u, 21u)])), global2[_wgslsmith_index_u32(~u_input.a, 21u)]), global3.x));
    var var_0 = Struct_1(~(~max(_wgslsmith_add_vec3_i32(arg_0.c.a, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], -1i, 1i)), vec3<i32>(1i, -39008i, -32627i))), arg_1.b);
    let var_1 = u_input.b.x;
    var var_2 = arg_0.d;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.a)) + arg_0.a);
    return _wgslsmith_div_u32(1u, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.x || (true == global2[_wgslsmith_index_u32(func_1(Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, -217f, 1496f)), Struct_3(u_input.a), Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], u_input.c.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), 918f), ~4294967295u, 1u), Struct_1(vec3<i32>(-11001i, u_input.c.x, 64576i), 701f), -55334i >> (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u)), 21u)]);
    var var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(11772i << (u_input.b.x % 32u), 1i), u_input.c.x, reverseBits(48481i)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 32u)], global0[_wgslsmith_index_u32(73828u, 32u)], -1i, global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), ~vec4<i32>(u_input.c.x, u_input.c.x, 0i, global0[_wgslsmith_index_u32(43358u, 32u)]))));
    var var_2 = Struct_3(max(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a, u_input.b.x ^ u_input.b.x)), ~(~0u)));
    var var_3 = ~u_input.b.x > firstTrailingBit(firstTrailingBit(select(13355u, 4294967295u, global2[_wgslsmith_index_u32(u_input.a, 21u)]) | (u_input.a << (40445u % 32u))));
    var var_4 = Struct_3(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(643f, 872f, 1020f) * vec3<f32>(-860f, -2224f, -1886f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1516f, -515f, 315f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1037f, -1636f, 1490f), vec3<f32>(-179f, 252f, 1736f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -508f, 175f)))))));
}

