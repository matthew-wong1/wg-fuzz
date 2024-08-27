struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 19>;

var<private> global1: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(321f, -278f), vec2<f32>(706f, 1928f), vec2<f32>(-778f, -1000f), vec2<f32>(505f, 875f), vec2<f32>(-150f, -1045f), vec2<f32>(-354f, 958f));

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 5> = array<vec3<bool>, 5>(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_1 {
    global1 = array<vec2<f32>, 6>();
    global1 = array<vec2<f32>, 6>();
    global2 = false;
    global1 = array<vec2<f32>, 6>();
    var var_0 = Struct_1(!vec4<bool>(false, !arg_1, abs(u_input.a.x) <= u_input.b.x, any(!vec4<bool>(false, arg_1, arg_0, arg_0))), all(vec2<bool>(all(global3[_wgslsmith_index_u32(~4294967295u, 5u)]), true)), true);
    return Struct_1(var_0.a, true, true);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: f32) -> i32 {
    var var_0 = u_input.a.x;
    let var_1 = Struct_3(vec4<i32>(arg_1, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 19712i, arg_1), vec3<i32>(-34856i, 36419i, 2147483647i))), arg_1, max(arg_1, arg_1)), Struct_1(!(!select(vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(true, arg_0, arg_0, true), true)), true, arg_0), reverseBits(vec3<i32>(min(arg_1, -2147483647i) << (_wgslsmith_div_u32(u_input.b.x, 4705u) % 32u), -15196i, arg_1)), func_2(!arg_0, false));
    let var_2 = Struct_2(func_2(func_2(false, arg_1 == (arg_1 & var_1.a.x)).a.x, !((arg_0 | arg_0) && true)), true & any(!var_1.d.a), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-544f, arg_2, 1365f, arg_2), vec4<f32>(arg_2, 598f, arg_2, 186f))) * vec4<f32>(arg_2, 1818f, 230f, arg_2)))))));
    var var_3 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.b.x), reverseBits(u_input.a)), countOneBits(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x)) ^ (global0[_wgslsmith_index_u32(4294967295u, 19u)] << (u_input.a % vec3<u32>(32u)))));
    let var_4 = true;
    return firstLeadingBit(-(i32(-1i) * -1i) | arg_1);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> bool {
    var var_0 = func_2(false, arg_0);
    global3 = array<vec3<bool>, 5>();
    global0 = array<vec3<u32>, 19>();
    global2 = var_0.b;
    let var_1 = Struct_3(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(arg_2.x, arg_2.x, -17009i, -74043i)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.x, abs(arg_2.x), func_3(true, -1i, 188f), 18202i), ~(~vec4<i32>(arg_2.x, arg_2.x, -2147483647i, arg_2.x)))), Struct_1(func_2(true, true).a, true, true), firstLeadingBit(vec3<i32>(-1i) * -arg_2) >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_3 & 4294967295u, _wgslsmith_div_u32(20812u, arg_1), ~arg_3), ~global0[_wgslsmith_index_u32(0u, 19u)] >> (u_input.b.wwz % vec3<u32>(32u))) % vec3<u32>(32u)), Struct_1(var_0.a, var_0.c, var_0.b));
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true & all(!global3[_wgslsmith_index_u32(1u, 5u)]);
    var var_0 = vec2<bool>(true, all(vec4<bool>(func_1(false, u_input.b.x, vec3<i32>(46035i, -2147483647i, -1i), 4294967295u) | true, true, !func_1(false, u_input.b.x, vec3<i32>(13460i, 1i, 4765i), u_input.a.x), true)));
    var var_1 = Struct_3(~vec4<i32>(1i, 1i, 1i, 1i), func_2(true, true), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -5267i, -4617i), ~vec3<i32>(-111835i, -2147483647i, -1i)), Struct_1(vec4<bool>(true, var_0.x, u_input.b.x > u_input.b.x, true), true, true));
    let var_2 = Struct_2(Struct_1(vec4<bool>(var_1.b.b, (var_1.d.a.x & var_0.x) && select(var_1.d.b, false, var_1.b.a.x), var_1.b.b, var_1.b.c), var_0.x, true), func_2(!(var_1.a.x < ~(-16856i)), true).a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1399f, 616f, -134f, 623f) - vec4<f32>(-157f, 890f, -463f, 636f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(786f, -350f, 667f, 1078f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1723f, -397f, 708f, -450f) + vec4<f32>(-1150f, -258f, 2146f, -954f))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1880f);
    global3 = array<vec3<bool>, 5>();
    let var_4 = firstTrailingBit(-(~var_1.a));
    let var_5 = func_2(!func_1(true, ~58287u, var_1.c, ~u_input.b.x), func_2(!((var_1.c.x | 0i) > -var_1.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= -1131f).b);
    let var_6 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(593f * 109f), _wgslsmith_f_op_f32(-2081f - var_3), var_2.c.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(floor(1184f))), 242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) * _wgslsmith_f_op_f32(1013f - 730f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_3, -1835f, var_2.c.x), _wgslsmith_f_op_vec3_f32(-var_2.c.wzw))), false)), vec3<u32>(var_6.x | 0u, u_input.a.x, 90504u), ~(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(37279i, var_4.x, 31273i, -39153i), vec4<i32>(1i, var_1.c.x, -1i, 0i))), var_2.c.x);
}

