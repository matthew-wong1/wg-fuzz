struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, -89109i, -62649i, 0i);

var<private> global1: array<vec3<i32>, 30>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global1 = array<vec3<i32>, 30>();
    global1 = array<vec3<i32>, 30>();
    let var_0 = ~min(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 1i, global0.x, u_input.c), vec4<i32>(global0.x, 2903i, 0i, u_input.c)), ~select(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -1i, u_input.c, 2147483647i), vec4<i32>(-19330i, 0i, u_input.d, global0.x)), -vec4<i32>(u_input.d, u_input.d, u_input.c, -1i), vec4<bool>(false, false, true, false)));
    var var_1 = Struct_3(false, select(vec3<bool>(true, countOneBits(u_input.d) > u_input.c, all(vec3<bool>(true, false, true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, false), select(!(u_input.a == u_input.a), false, all(vec4<bool>(true, false, false, true)))), var_0.zw, _wgslsmith_f_op_f32(431f + arg_0.x), Struct_2(arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xy) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0.x, 282f)))), 906f), true));
    global0 = vec4<i32>(i32(-1i) * -(i32(-1i) * -55713i), _wgslsmith_sub_i32(var_1.c.x & var_1.c.x, u_input.c) & _wgslsmith_dot_vec2_i32(global0.zz, select(max(vec2<i32>(u_input.c, var_1.c.x), vec2<i32>(1i, u_input.d)), vec2<i32>(-2147483647i, -37435i), var_1.a && true)), _wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(u_input.d), reverseBits(-global0.x), u_input.d), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(var_1.c.x, var_0.x, -2122i))), var_0.x);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-453f))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + 1222f))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    let var_0 = max(1i, _wgslsmith_dot_vec3_i32(global0.zwz & vec3<i32>(_wgslsmith_clamp_i32(15990i, global0.x, global0.x), -13646i ^ u_input.c, global0.x), firstTrailingBit(abs(countOneBits(global1[_wgslsmith_index_u32(77048u, 30u)])))));
    global0 = vec4<i32>(1i, firstTrailingBit(global0.x), 0i, 25948i);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_2.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_2.x))))), _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(round(-3523f)), _wgslsmith_f_op_f32(trunc(3009f)), arg_2.x))));
    var var_2 = abs(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(36560u, 1u, 1u, u_input.a), vec4<u32>(u_input.a, 4294967295u, 0u, 100014u) << (vec4<u32>(732u, 1u, u_input.b, arg_1) % vec4<u32>(32u))), 4294967295u, abs(~u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19944u, arg_1), u_input.e)) << (~(~(~vec4<u32>(u_input.e.x, 5530u, arg_1, 40442u))) % vec4<u32>(32u)));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3 - -882f))) * _wgslsmith_f_op_f32(581f * -1976f)), _wgslsmith_f_op_f32(ceil(1020f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1722f * -355f) - _wgslsmith_f_op_f32(min(arg_2.x, var_1.a.x)))))));
    return u_input.d;
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = arg_0.e;
    global0 = vec4<i32>(arg_0.c.x, 6706i, global0.x, u_input.c);
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(func_2(!var_0.c, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, u_input.a), ~u_input.b, 0u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(655f, -1222f, arg_0.d), vec3<f32>(arg_0.d, var_0.b.a.x, var_0.a)), vec3<f32>(arg_0.d, 510f, 505f))), arg_0.d), 1i, -_wgslsmith_div_i32(_wgslsmith_div_i32(global0.x, u_input.d), _wgslsmith_clamp_i32(2147483647i, 0i, 0i)), -min(7951i, u_input.d)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -reverseBits(vec4<i32>(-2147483647i, -41361i, global0.x, 25411i)), vec4<i32>(abs(-39862i), 0i, select(global0.x, -6243i, var_0.c), ~firstTrailingBit(arg_0.c.x)), ~vec4<i32>(global0.x, global0.x ^ 10032i, u_input.c, ~0i)));
    global0 = abs(vec4<i32>(_wgslsmith_add_i32(global0.x, firstLeadingBit(-1i)), max(1i, ~(-18690i)), -10454i >> ((u_input.a >> (1u % 32u)) % 32u), -13357i));
    global1 = array<vec3<i32>, 30>();
    return -934f;
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = ~(-(~(-vec4<i32>(global0.x, -1i, 15889i, -20077i))));
    let var_1 = !all(vec2<bool>(any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(_wgslsmith_mult_vec3_u32(u_input.e, _wgslsmith_clamp_vec3_u32(u_input.e, vec3<u32>(52723u, u_input.b, 0u), vec3<u32>(u_input.e.x, 1u, u_input.b)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.e.x), vec4<u32>(u_input.b, 41384u, u_input.a, 4294967295u)), ~4294967295u, u_input.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b, 78934u, 0u), firstTrailingBit(vec3<u32>(25539u, u_input.e.x, u_input.a) & u_input.e)), _wgslsmith_clamp_vec3_u32(u_input.e, ~u_input.e, vec3<u32>(27903u, 0u, ~u_input.e.x))));
    let var_3 = Struct_3(true, !(!select(vec3<bool>(true, false, false), select(vec3<bool>(var_1, true, true), vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, false, true)), any(vec2<bool>(var_1, false)))), ~vec2<i32>(-(u_input.d >> (1u % 32u)), -1i), arg_1.x, Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(f32(-1f) * -1973f)), arg_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1207f, -1233f) * _wgslsmith_f_op_vec2_f32(arg_1.xw * arg_1.zw)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, -482f))), any(vec3<bool>(true, true, all(vec4<bool>(true, false, var_1, var_1))))));
    global1 = array<vec3<i32>, 30>();
    return _wgslsmith_sub_i32(var_0.x, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(global0.x, var_0.x, arg_3 << (0u % 32u), min(2147483647i, -1i))), -firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_3, 26998i, global0.x), vec4<i32>(-14764i, arg_3, -19482i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(-vec4<i32>(13446i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, global0.x), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(23833u, 37852u, 13760u), 30u)]), abs(firstLeadingBit(global0.x)), ~_wgslsmith_dot_vec2_i32(global0.yy, global0.xx)), -((vec4<i32>(global0.x, u_input.d, u_input.d, 2147483647i) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, -10647i, u_input.d, 7590i), vec4<i32>(global0.x, u_input.d, u_input.d, 1768i))) << (~vec4<u32>(u_input.b, 0u, 20050u, 4294967295u) % vec4<u32>(32u))));
    var var_0 = (_wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 0i, 0i, u_input.c), vec4<i32>(global0.x, global0.x, u_input.c, u_input.d), vec4<i32>(1i, -45392i, 2567i, 1i)), countOneBits(vec4<i32>(global0.x, global0.x, 1i, u_input.d)) & abs(vec4<i32>(1i, u_input.c, u_input.d, u_input.c))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 1u, 4193u) & ~vec4<u32>(31243u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 51591u) >> (~vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.e.x) % vec4<u32>(32u))) % vec4<u32>(32u))) & -(~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.d, 0i, -2147483647i, -70158i)), ~vec4<i32>(global0.x, 1i, u_input.c, global0.x)));
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1345f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-420f, 104f, 974f, -945f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1143f, 1434f, 785f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(false, vec3<bool>(false, false, false), vec2<i32>(u_input.d, -2147483647i), -792f, Struct_2(-1551f, Struct_1(vec2<f32>(902f, -2255f), -780f), false))))), 1f))), 0i);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1142f, 117f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-694f, -355f))))), 857f);
    var_0 = ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(abs(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 50356i, 1i), vec3<i32>(-10548i, -9583i, 0i)), ~var_0.x, select(global0.x, -1i, false)), ~max(vec4<i32>(1i, var_0.x, u_input.d, -49099i), vec4<i32>(var_1, var_0.x, var_0.x, -2147483647i)), ~vec4<i32>(global0.x, global0.x, 1i, var_0.x)));
    let var_3 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(vec2<i32>(u_input.d, var_3) << (u_input.e.zz % vec2<u32>(32u))), ((_wgslsmith_add_i32(var_1, global0.x) << (u_input.a % 32u)) | _wgslsmith_add_i32(1i << (u_input.b % 32u), ~var_0.x)) & var_1, vec3<f32>(var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), 1357f), _wgslsmith_f_op_f32(round(2480f))), _wgslsmith_add_vec4_u32(~(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 1u, u_input.b)) << (min(vec4<u32>(20361u, u_input.e.x, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 0u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.e.x, u_input.e.x), vec4<u32>(u_input.a, 4294967295u, u_input.b, u_input.b) >> (vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b), u_input.a, u_input.e.x, 48790u)), u_input.e.xz);
}

