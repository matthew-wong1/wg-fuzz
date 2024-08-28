struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25> = array<bool, 25>(false, true, false, true, false, false, true, true, true, false, false, true, false, true, false, true, false, true, true, false, false, false, false, true, false);

var<private> global1: array<vec2<bool>, 16>;

var<private> global2: array<Struct_1, 6>;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    global0 = array<bool, 25>();
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
    var var_1 = _wgslsmith_add_i32(arg_2.x, arg_2.x);
    var var_2 = global2[_wgslsmith_index_u32(~4294967295u ^ u_input.a.x, 6u)];
    global3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(867f, -1419f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) * 1000f))), _wgslsmith_f_op_f32(ceil(-1559f)), var_2.b, -1427f) * vec4<f32>(_wgslsmith_f_op_f32(-global3.x), 215f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + _wgslsmith_f_op_f32(f32(-1f) * -913f)), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-598f - 899f)));
    return var_2.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1283f));
    var var_1 = 0u;
    global1 = array<vec2<bool>, 16>();
    global1 = array<vec2<bool>, 16>();
    global1 = array<vec2<bool>, 16>();
    return arg_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-674f, global3.x, global3.x, global3.x), vec4<f32>(1131f, global3.x, 1005f, global3.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1207f, -424f, 253f, 2470f), vec4<f32>(global3.x, -399f, global3.x, 1000f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 25u)], true, false, global0[_wgslsmith_index_u32(51589u, 25u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1014f, 359f, -1000f, global3.x) * vec4<f32>(-379f, global3.x, -1234f, global3.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-729f, global3.x, 495f, 1000f) - vec4<f32>(global3.x, -1000f, global3.x, global3.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-545f, -102f, global3.x, global3.x)))))));
    let var_1 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), -719f, vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(32218u, u_input.b), min(vec2<u32>(0u, 16624u), u_input.d)), u_input.a.x, 33634u, func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, 96250u), 16u)], select(true, false, global0[_wgslsmith_index_u32(16458u, 25u)]), -vec2<i32>(6121i, 43198i)))), select(-2147483647i, max(abs(28377i), i32(-1i) * -50946i) << (u_input.d.x % 32u), global0[_wgslsmith_index_u32(u_input.d.x ^ (max(u_input.c.x, 0u) | u_input.a.x), 25u)]));
    let var_2 = global2[_wgslsmith_index_u32(1u, 6u)];
    let var_3 = !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x ^ _wgslsmith_sub_u32(max(83u, u_input.a.x), 25195u | var_2.c.x), 25u)], global0[_wgslsmith_index_u32(reverseBits(var_2.c.x), 25u)]);
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(933f, 810f)))), _wgslsmith_div_f32(-756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-849f + 1007f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(min(var_2.a, var_2.a)))))));
    return -1155f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = -vec4<i32>(~((i32(-1i) * -66312i) >> ((u_input.c.x ^ 1u) % 32u)), min(-2147483647i, -12121i), _wgslsmith_dot_vec3_i32(-min(vec3<i32>(10428i, 11107i, -1i), vec3<i32>(2147483647i, 1i, 20537i)), ~(~vec3<i32>(-1i, -34185i, -2147483647i))), _wgslsmith_div_i32(1i, 1i));
    global1 = array<vec2<bool>, 16>();
    var var_1 = -679f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1353f, global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * arg_2.b);
    global0 = array<bool, 25>();
    return func_3(arg_0, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * -713f)), 240f, ~vec4<u32>(26672u, u_input.b >> (u_input.c.x % 32u), ~4294967295u, u_input.c.x)), vec3<bool>(true, !(!(!global0[_wgslsmith_index_u32(u_input.c.x, 25u)])), true), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-243f, 701f))))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, 33170u, 4931u)), min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 34367u, 31482u, 28260u), vec4<u32>(1u, 83724u, u_input.c.x, u_input.c.x)), func_3(global2[_wgslsmith_index_u32(u_input.c.x, 6u)], 2147483647i).c))), false);
    var var_1 = select(var_0.c, var_0.c, global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(4294967295u, ~u_input.b), ~u_input.c.x) << (45060u % 32u), 25u)]);
    var var_2 = Struct_1(_wgslsmith_div_f32(1091f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -851f))))), 1000f, var_0.c ^ vec4<u32>(var_1.x, 18638u, var_0.c.x, 43676u));
    var var_3 = func_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, -283f)) * -1266f), 237f), var_2.a, select(var_0.c << (abs(var_2.c) % vec4<u32>(32u)), firstLeadingBit(abs(var_0.c)), vec4<bool>(any(vec4<bool>(true, false, global0[_wgslsmith_index_u32(53969u, 25u)], true)), any(global1[_wgslsmith_index_u32(59505u, 16u)]), true, true))), (25513i << (~var_0.c.x % 32u)) >> (7599u % 32u));
    let var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-564f, -226f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-911f, var_2.a) * vec2<f32>(var_2.a, var_2.b)), _wgslsmith_f_op_vec2_f32(-global3.xy))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, var_2.a))), _wgslsmith_f_op_f32(trunc(-1000f))))));
    let var_5 = abs(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(31972i, 0i)) >> (var_0.c.yz % vec2<u32>(32u)), vec2<i32>(29708i, i32(-1i) * -1i)));
    var var_6 = select(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_5, -2147483647i, 25909i, 0i), vec4<i32>(var_5, -16734i, var_5, 59721i) ^ vec4<i32>(var_5, 2147483647i, var_5, var_5)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -8415i), vec2<i32>(-21565i, 27419i))), ~(vec2<i32>(14833i, var_5) & vec2<i32>(-13053i, -24382i)) ^ firstTrailingBit(vec2<i32>(var_5, var_5))), -var_5, select(!(71643i != var_5) & false, false | !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_3.c.x), 25u)], false));
    global1 = array<vec2<bool>, 16>();
    var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(abs(~var_0.c.zzz), ~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 1544u), vec3<u32>(var_2.c.x, 91014u, var_3.c.x)), ~vec3<u32>(4294967295u, var_1.x, var_2.c.x)));
}

