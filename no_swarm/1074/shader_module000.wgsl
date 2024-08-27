struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19>;

var<private> global1: array<f32, 4>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4) -> Struct_5 {
    global0 = array<Struct_5, 19>();
    var var_0 = u_input.a;
    var_0 = -arg_2.c.b.x;
    var_0 = countOneBits(arg_2.c.a.x);
    var var_1 = arg_2.c.a.yz;
    return Struct_5(arg_2.e, arg_2.c.b);
}

fn func_3() -> f32 {
    global1 = array<f32, 4>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], -445f), vec3<f32>(392f, -256f, global1[_wgslsmith_index_u32(1u, 4u)]), false)) + vec3<f32>(1136f, -602f, 1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]) - vec3<f32>(-248f, -727f, -593f)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(33352u, 4u)]))))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-603f + 574f))))), Struct_1(152f), vec2<bool>(true && ((global1[_wgslsmith_index_u32(u_input.b.x, 4u)] != global1[_wgslsmith_index_u32(u_input.b.x, 4u)]) | false), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-311f)) * _wgslsmith_div_f32(var_0.x, global1[_wgslsmith_index_u32(4294967295u, 4u)])))));
    let var_2 = -vec3<i32>(min(_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.d, 1i), _wgslsmith_mult_i32(15060i, -45221i)), ~u_input.a | u_input.a), -1i, -2147483647i);
    var_1 = Struct_2(1f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f))), vec2<bool>(((u_input.d | var_2.x) == u_input.a) != true, true), var_1.b);
    return 1000f;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a - func_1(Struct_1(arg_2.a.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -787f)), Struct_4(arg_1.x, Struct_1(global1[_wgslsmith_index_u32(arg_0, 4u)]), Struct_3(vec4<i32>(0i, arg_2.b.x, arg_2.b.x, -45773i), arg_2.b, -1346f), Struct_2(arg_3, Struct_1(699f), arg_1.xx, Struct_1(arg_2.a.x)), _wgslsmith_f_op_vec3_f32(round(arg_2.a)))).a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_1(Struct_1(842f), Struct_1(1308f), Struct_4(arg_1.x, Struct_1(arg_2.a.x), Struct_3(vec4<i32>(u_input.d, arg_2.b.x, u_input.d, 3586i), arg_2.b, 912f), Struct_2(arg_3, Struct_1(-892f), arg_1.yx, Struct_1(global1[_wgslsmith_index_u32(6687u, 4u)])), arg_2.a)).a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * arg_2.a.x), arg_2.a.x, func_1(Struct_1(arg_2.a.x), Struct_1(-607f), Struct_4(true, Struct_1(global1[_wgslsmith_index_u32(arg_0, 4u)]), Struct_3(vec4<i32>(arg_2.b.x, 1i, 2147483647i, u_input.d), vec2<i32>(9259i, arg_2.b.x), 1249f), Struct_2(global1[_wgslsmith_index_u32(0u, 4u)], Struct_1(arg_3), vec2<bool>(arg_1.x, true), Struct_1(arg_3)), vec3<f32>(-720f, arg_3, arg_3))).a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1161f, 550f, arg_2.a.x), vec3<f32>(316f, arg_3, -118f))))));
    global0 = array<Struct_5, 19>();
    global0 = array<Struct_5, 19>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-648f, -1185f) * _wgslsmith_f_op_f32(-arg_3)) >= _wgslsmith_f_op_f32(-arg_2.a.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), Struct_3(_wgslsmith_sub_vec4_i32(~(-vec4<i32>(u_input.d, 1i, -2147483647i, -1i)), vec4<i32>(14166i >> (1u % 32u), i32(-1i) * -27260i, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, 52977i, arg_2.b.x), vec4<i32>(2147483647i, arg_2.b.x, 1i, u_input.a)))), min(_wgslsmith_sub_vec2_i32(arg_2.b, vec2<i32>(u_input.a, arg_2.b.x)), vec2<i32>(-1i, arg_2.b.x)) >> (_wgslsmith_add_vec2_u32(u_input.c, select(vec2<u32>(u_input.c.x, u_input.b.x), vec2<u32>(u_input.b.x, 0u), false)) % vec2<u32>(32u)), var_0.x), Struct_2(global1[_wgslsmith_index_u32(~u_input.c.x, 4u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-594f - var_0.x) + _wgslsmith_f_op_f32(min(626f, global1[_wgslsmith_index_u32(arg_0, 4u)])))), vec2<bool>(true, arg_1.x), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(57162u, 23619u, u_input.c.x, 79972u), vec4<u32>(15291u, 12760u, u_input.c.x, u_input.b.x))), 4u)])), _wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1200f, _wgslsmith_f_op_f32(-346f * arg_2.a.x), _wgslsmith_f_op_f32(962f - -1330f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(125f, global1[_wgslsmith_index_u32(1u, 4u)], arg_2.a.x)))));
    var_1 = Struct_4(!(!(!any(arg_1))), Struct_1(1037f), Struct_3(var_1.c.a | var_1.c.a, -arg_2.b, 1241f), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1531f, 851f)))))), Struct_1(1415f), vec2<bool>(any(!arg_1), (arg_3 >= -973f) && all(vec3<bool>(var_1.a, false, arg_1.x))), var_1.d.d), _wgslsmith_f_op_vec3_f32(max(var_0, vec3<f32>(-2210f, _wgslsmith_f_op_f32(arg_2.a.x + 1f), -774f))));
    return 0i & var_1.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 19>();
    let var_0 = Struct_3(vec4<i32>(-u_input.d, u_input.d & ~2147483647i, -2147483647i, func_2(~106637u, vec3<bool>(true, true, true), func_1(Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), Struct_1(global1[_wgslsmith_index_u32(50279u, 4u)]), Struct_4(false, Struct_1(global1[_wgslsmith_index_u32(0u, 4u)]), Struct_3(vec4<i32>(-1i, -2147483647i, u_input.a, u_input.d), vec2<i32>(u_input.a, u_input.d), 611f), Struct_2(-654f, Struct_1(328f), vec2<bool>(true, true), Struct_1(global1[_wgslsmith_index_u32(0u, 4u)])), vec3<f32>(global1[_wgslsmith_index_u32(9008u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)]))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u), vec4<u32>(u_input.c.x, 45391u, u_input.c.x, 1u)), 4u)]) & u_input.d), vec2<i32>(-(u_input.d ^ u_input.d), -921i), 702f);
    var var_1 = var_0.a.x;
    global1 = array<f32, 4>();
    var var_2 = select(vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(true, false, true)), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), true), u_input.d < -15078i);
    var_2 = select(vec3<bool>(true, true, var_2.x), select(vec3<bool>(!var_2.x, false, any(!vec3<bool>(var_2.x, true, true))), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, u_input.d != -u_input.a), false | var_2.x), select(!select(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x)), select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), vec3<bool>(var_2.x, var_2.x, false)), select(vec3<bool>(true, false, false), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, var_2.x, false))), select(select(!vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(false, true, false), true | var_2.x), select(vec3<bool>(var_2.x, false, true), vec3<bool>(var_2.x, var_2.x, var_2.x), var_2.x), var_2.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 0u, 53295u, u_input.c.x)), firstTrailingBit(vec4<u32>(0u, 1u, 7434u, u_input.b.x)) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 46557u, 1u, 0u), vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, u_input.c.x))), u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(44673u, u_input.c.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.b.x, 4408u))), countOneBits(_wgslsmith_mod_u32(u_input.b.x, u_input.c.x) << (u_input.c.x % 32u))), ~u_input.b.x);
}

