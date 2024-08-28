struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(406f), Struct_2(-1011f), Struct_2(-418f), Struct_2(545f), Struct_2(-172f), Struct_2(2010f), Struct_2(-205f), Struct_2(-1049f));

var<private> global1: bool = false;

var<private> global2: array<vec3<f32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_3) -> vec3<bool> {
    return arg_3.e;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    global0 = array<Struct_2, 8>();
    global2 = array<vec3<f32>, 19>();
    global1 = true;
    var var_0 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(_wgslsmith_sub_i32(10024i, -47049i), ~(-2147483647i), ~(-1i), abs(-2739i))), ~(-countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, 67915i, 93011i), vec4<i32>(-33692i, 1i, -1i, 1i)))));
    var var_1 = Struct_1(arg_3.a);
    return abs(~_wgslsmith_div_vec2_u32(u_input.b.xx, firstLeadingBit(vec2<u32>(u_input.c, arg_2))));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    global2 = array<vec3<f32>, 19>();
    var var_0 = ~(~vec4<u32>(u_input.b.x | 4294967295u, min(43221u, 471u), 4294967295u, 24974u)) >> (~(~vec4<u32>(u_input.a, max(u_input.b.x, 4294967295u), ~u_input.a, ~4294967295u)) % vec4<u32>(32u));
    let var_1 = func_4(vec4<bool>(true, arg_0.x, all(func_3(Struct_2(442f), vec2<i32>(-23456i, 0i), true, Struct_3(Struct_2(161f), Struct_2(-965f), vec2<u32>(1u, 4294967295u), 0i, vec3<bool>(arg_0.x, false, true)))) && arg_0.x, (arg_0.x && arg_0.x) && select(false, !arg_0.x, all(vec3<bool>(arg_0.x, false, true)))), !(!vec3<bool>(true, all(vec2<bool>(true, arg_0.x)), true)), 0u, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 297f, 756f, 1471f) + vec4<f32>(-1059f, 437f, -622f, 833f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1123f, -527f, -1000f, -560f), vec4<f32>(-341f, -957f, 661f, -367f))))));
    let var_2 = ~(u_input.c ^ min(select(4294967295u, u_input.a, false) << (reverseBits(28778u) % 32u), 4294967295u));
    let var_3 = var_0.x;
    return !arg_0.x;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_2 {
    global1 = func_2(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))));
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(244f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(4294967295u, 0i), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1323f)))))), ~(~(vec2<u32>(12299u, u_input.c) & vec2<u32>(6905u, u_input.c)) >> (vec2<u32>(6521u, 45703u << (u_input.c % 32u)) % vec2<u32>(32u))), max(-(i32(-1i) * -1201i), 1i), vec3<bool>(func_3(func_1(1u, i32(-1i) * -438i), vec2<i32>(1i, i32(-1i) * -4776i), func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_3(Struct_2(1335f), func_1(45749u, -27556i), ~vec2<u32>(4294967295u, 7532u), 1i, vec3<bool>(true, false, false))).x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, 14804i, 40752i, 0i)), -vec4<i32>(67645i, 55766i, 1i, -39106i)) != ~(~(-61458i)), true & func_3(func_1(11070u, 0i), vec2<i32>(1i, 1i), true, Struct_3(global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.zz, 1i, vec3<bool>(true, false, true))).x));
    let var_1 = !all(var_0.e);
    var var_2 = var_0.e.x;
    let var_3 = ~(var_0.c | u_input.b.xy);
    var var_4 = -1579f;
    var var_5 = abs(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.a, 0u, 4294967295u, 0u))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c.x, u_input.b.x, 0u, var_0.c.x), vec4<u32>(u_input.c, 1u, 35888u, 50681u), vec4<u32>(4294967295u, var_0.c.x, var_3.x, var_0.c.x)), firstTrailingBit(vec4<u32>(43041u, var_0.c.x, 1u, 11362u))))));
    var_2 = true;
    let var_6 = !(!select(!select(vec4<bool>(var_1, false, false, var_0.e.x), vec4<bool>(false, var_0.e.x, true, false), vec4<bool>(true, true, false, false)), select(!vec4<bool>(var_0.e.x, var_0.e.x, true, var_1), vec4<bool>(true, true, true, var_0.e.x), var_1), !vec4<bool>(var_0.e.x, false, var_1, true)));
    let var_7 = select(vec4<bool>(var_1, false, var_1, true), var_6, any(vec4<bool>(func_2(var_0.e.xy), var_1 || true, all(var_6), abs(var_0.d) > (var_0.d & var_0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(~(-(~var_0.d)), ~(i32(-1i) * -var_0.d)), ~86940u, ~select(-(vec4<i32>(0i, 1070i, var_0.d, var_0.d) ^ vec4<i32>(-12534i, 2147483647i, var_0.d, 93414i)), max(countOneBits(vec4<i32>(var_0.d, 0i, var_0.d, var_0.d)), vec4<i32>(0i, var_0.d, -34938i, var_0.d)), var_1));
}

