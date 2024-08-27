struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 4294967295u, 37219u), vec3<u32>(17723u, 52510u, 4294967295u), vec3<u32>(297u, 86531u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 79615u, 21628u), vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 4294967295u, 11888u), vec3<u32>(28231u, 47939u, 7368u), vec3<u32>(31560u, 30401u, 16197u), vec3<u32>(372u, 43158u, 4294967295u), vec3<u32>(1u, 13084u, 120119u), vec3<u32>(5835u, 1u, 0u), vec3<u32>(52238u, 44689u, 1u), vec3<u32>(1u, 4294967295u, 60021u), vec3<u32>(58196u, 0u, 20229u), vec3<u32>(17350u, 4294967295u, 53716u));

var<private> global2: array<bool, 13> = array<bool, 13>(true, false, true, true, true, true, false, false, true, false, false, false, true);

var<private> global3: array<vec3<i32>, 2>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: Struct_5) -> vec3<i32> {
    var var_0 = Struct_4(arg_1.a, arg_3.b, select(select(vec3<bool>(any(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.e.x, 13u)], global2[_wgslsmith_index_u32(arg_0.e.x, 13u)])), arg_0.a.x, arg_1.c.x & false), vec3<bool>(true, true, !arg_3.a.c.x), any(vec3<bool>(true, true, true))), !vec3<bool>(all(vec3<bool>(false, true, true)), any(vec4<bool>(false, arg_1.b.b.a.x, false, false)), global2[_wgslsmith_index_u32(37034u, 13u)]), true || arg_0.a.x));
    let var_1 = Struct_3(Struct_2(arg_0, arg_1.b.a, -2147483647i), Struct_1(select(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.b.a.e.x, 13u)], false), vec2<bool>(arg_0.a.x, true), var_0.a.a.a), ~_wgslsmith_add_vec3_i32(arg_0.b, arg_0.b), firstLeadingBit(vec3<i32>(arg_0.b.x, var_0.a.c, -43320i)) & select(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], arg_0.c.x, 0i), vec3<i32>(-48946i, 2147483647i, -33074i), select(arg_3.a.c, var_0.c, vec3<bool>(false, var_0.b.b.a.x, arg_3.a.b.a.a.x))), var_0.b.a.d, arg_3.b.a.e), select(~_wgslsmith_mult_vec3_u32(global1[_wgslsmith_index_u32(arg_1.a.b.e.x, 16u)], global1[_wgslsmith_index_u32(arg_3.a.a.b.e.x, 16u)]), vec3<u32>(~42502u, ~arg_0.e.x, firstTrailingBit(80746u)), true) & firstLeadingBit(_wgslsmith_mod_vec3_u32(max(vec3<u32>(arg_0.e.x, u_input.b.x, 57090u), global1[_wgslsmith_index_u32(var_0.a.a.e.x, 16u)]), u_input.d >> (vec3<u32>(50354u, 42837u, u_input.b.x) % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1769f, -835f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1279f, arg_0.d)) + vec2<f32>(arg_0.d, _wgslsmith_f_op_f32(-734f + arg_1.b.a.d)))), Struct_1(select(arg_0.a, var_0.a.b.a, true), ~vec3<i32>(1i, _wgslsmith_clamp_i32(arg_0.b.x, global0[_wgslsmith_index_u32(u_input.a, 6u)], -5330i), arg_0.c.x), firstTrailingBit(reverseBits(arg_0.b) << (firstLeadingBit(u_input.d) % vec3<u32>(32u))), 1000f, firstTrailingBit((u_input.b ^ u_input.d.xz) & countOneBits(arg_3.a.b.b.e))));
    global3 = array<vec3<i32>, 2>();
    var var_2 = ~1u;
    global2 = array<bool, 13>();
    return ((vec3<i32>(-1i) * -var_1.b.c) ^ _wgslsmith_add_vec3_i32(-_wgslsmith_div_vec3_i32(var_0.a.b.c, arg_0.b), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e.c.x, 343i), var_1.b.b.xx), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.c, -1i, 29259i), arg_3.b.a.c), 1i))) & min(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~var_0.a.a.c, arg_3.a.a.b.c ^ var_0.b.a.b), vec3<i32>(firstLeadingBit(1i), 2147483647i, -9798i >> (var_1.e.e.x % 32u))), arg_1.b.a.b);
}

fn func_2() -> f32 {
    global3 = array<vec3<i32>, 2>();
    var var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(593f, 1284f)))))));
    var var_1 = Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), global3[_wgslsmith_index_u32(~u_input.b.x, 2u)], func_3(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(19563u, 13u)]), global3[_wgslsmith_index_u32(96875u, 2u)], vec3<i32>(u_input.e.x, 2147483647i, global0[_wgslsmith_index_u32(u_input.c, 6u)]), -1549f, vec2<u32>(4083u, u_input.d.x)), Struct_4(Struct_2(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], false), vec3<i32>(25507i, u_input.e.x, 40301i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], u_input.e.x), 555f, u_input.b), Struct_1(vec2<bool>(true, false), vec3<i32>(-23713i, -1391i, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec3<i32>(-177i, 1i, u_input.e.x), 451f, vec2<u32>(7802u, u_input.a)), global0[_wgslsmith_index_u32(u_input.a, 6u)]), Struct_2(Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(1u, 13u)], false), vec3<i32>(u_input.e.x, 0i, -2147483647i), global3[_wgslsmith_index_u32(u_input.b.x, 2u)], -264f, vec2<u32>(3546u, u_input.c)), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], -8111i, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec3<i32>(0i, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), 2206f, vec2<u32>(u_input.b.x, u_input.a)), u_input.e.x), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c, 13u)])), global0[_wgslsmith_index_u32(~4294967295u, 6u)], Struct_5(Struct_4(Struct_2(Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec3<i32>(16235i, global0[_wgslsmith_index_u32(6134u, 6u)], -4485i), global3[_wgslsmith_index_u32(u_input.a, 2u)], -1158f, u_input.d.zz), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.c, 13u)]), vec3<i32>(1i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 6u)]), global3[_wgslsmith_index_u32(1u, 2u)], -1000f, vec2<u32>(0u, 1u)), global0[_wgslsmith_index_u32(1u, 6u)]), Struct_2(Struct_1(vec2<bool>(true, true), vec3<i32>(u_input.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], u_input.e.x), global3[_wgslsmith_index_u32(u_input.c, 2u)], 481f, vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(29061u, 13u)]), vec3<i32>(-2147483647i, 0i, u_input.e.x), global3[_wgslsmith_index_u32(125017u, 2u)], -1710f, vec2<u32>(57827u, 26387u)), u_input.e.x), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 13u)], true)), Struct_2(Struct_1(vec2<bool>(true, false), global3[_wgslsmith_index_u32(u_input.c, 2u)], vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 6u)], -2147483647i, -19207i), -1250f, vec2<u32>(u_input.c, 84552u)), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], global2[_wgslsmith_index_u32(u_input.a, 13u)]), vec3<i32>(1i, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(70906u, 6u)]), global3[_wgslsmith_index_u32(0u, 2u)], -364f, vec2<u32>(u_input.b.x, 1u)), -2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1475f)), _wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(426u, u_input.b.x), ~u_input.b)), Struct_1(select(!vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], true)), vec3<i32>(-33252i, ~(-2596i), ~global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), ~global3[_wgslsmith_index_u32(~1u, 2u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1246f)), _wgslsmith_div_f32(883f, -213f)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 76080u), ~vec2<u32>(u_input.d.x, u_input.d.x))), ~(-max(32069i, u_input.e.x))), Struct_1(!(!select(vec2<bool>(false, global2[_wgslsmith_index_u32(93472u, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(34716u, 13u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 13u)]))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 32847u, 31358u), 1u << (1u % 32u)), select(u_input.b.x & u_input.b.x, ~u_input.d.x, false)), 2u)], -max(_wgslsmith_mult_vec3_i32(global3[_wgslsmith_index_u32(49370u, 2u)], vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)]) ^ vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], -1i, u_input.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(645f, 397f, false)), _wgslsmith_f_op_f32(min(-763f, 1f))), u_input.b), u_input.d << (_wgslsmith_mult_vec3_u32(u_input.d, firstLeadingBit(vec3<u32>(25244u, 729u, 4294967295u) ^ u_input.d)) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1681f, -2050f)), _wgslsmith_f_op_f32(694f + 321f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1537f * -847f), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -470f), -1000f))), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], !all(vec3<bool>(true, true, true))), global3[_wgslsmith_index_u32(u_input.c, 2u)], vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, -2147483647i, 0i, u_input.e.x), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], u_input.e.x, u_input.e.x, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.b.x, 6u)], 0i, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec4<i32>(u_input.e.x, global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(31120u, 6u)], -1i))), firstTrailingBit(-14131i) & _wgslsmith_sub_i32(-1i, -1i), -66398i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f - _wgslsmith_f_op_f32(ceil(1329f)))), min(u_input.b, min(firstTrailingBit(vec2<u32>(23598u, 0u)), u_input.d.yz))));
    var var_2 = false;
    let var_3 = ~var_1.e.e.x;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d.x))), _wgslsmith_f_op_f32(var_1.b.d + _wgslsmith_f_op_f32(f32(-1f) * -544f)), all(!select(!vec3<bool>(false, global2[_wgslsmith_index_u32(var_1.e.e.x, 13u)], var_1.b.a.x), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(var_1.b.e.x, 13u)], true), vec3<bool>(var_1.a.a.a.x, var_1.a.b.a.x, global2[_wgslsmith_index_u32(24638u, 13u)]), vec3<bool>(var_1.a.a.a.x, global2[_wgslsmith_index_u32(0u, 13u)], true)), global2[_wgslsmith_index_u32(1u, 13u)]))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_4 {
    var var_0 = !(!(!select(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 13u)], false, global2[_wgslsmith_index_u32(u_input.d.x, 13u)], true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 13u)], global2[_wgslsmith_index_u32(u_input.b.x, 13u)], true, global2[_wgslsmith_index_u32(arg_2, 13u)]), true)));
    let var_1 = _wgslsmith_f_op_f32(-arg_0);
    var var_2 = arg_2;
    let var_3 = Struct_1(vec2<bool>(!any(var_0.xz), _wgslsmith_clamp_i32(~u_input.e.x, -2147483647i, u_input.e.x ^ global0[_wgslsmith_index_u32(56701u, 6u)]) > ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, -11327i, u_input.e.x, -1i), vec4<i32>(global0[_wgslsmith_index_u32(arg_2, 6u)], 18505i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 6u)]))), vec3<i32>(1i, global0[_wgslsmith_index_u32(max(1u, arg_2), 6u)] >> (arg_2 % 32u), -2147483647i), _wgslsmith_sub_vec3_i32(select(~abs(vec3<i32>(-40475i, 11118i, u_input.e.x)), vec3<i32>(u_input.e.x, u_input.e.x, 0i), var_0.zxw), vec3<i32>(min(max(u_input.e.x, -15679i), u_input.e.x), reverseBits(i32(-1i) * -1i), -min(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], u_input.e.x))), -1001f, u_input.b);
    global1 = array<vec3<u32>, 16>();
    return Struct_4(Struct_2(Struct_1(vec2<bool>(var_3.d > -1917f, true), countOneBits(max(vec3<i32>(global0[_wgslsmith_index_u32(49237u, 6u)], 0i, -1i), global3[_wgslsmith_index_u32(86620u, 2u)])), firstLeadingBit(var_3.c) | var_3.b, var_1, var_3.e), Struct_1(var_3.a, global3[_wgslsmith_index_u32(37126u, 2u)], vec3<i32>(-global0[_wgslsmith_index_u32(20768u, 6u)], 13813i ^ var_3.b.x, global0[_wgslsmith_index_u32(~var_3.e.x, 6u)]), 692f, (var_3.e ^ u_input.b) & _wgslsmith_mod_vec2_u32(var_3.e, vec2<u32>(4294967295u, 14581u))), select(u_input.e.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, abs(vec2<u32>(4294967295u, 0u))), 6u)], false)), Struct_2(var_3, Struct_1(vec2<bool>(true, true), vec3<i32>(~24919i, var_3.c.x, 0i), global3[_wgslsmith_index_u32(arg_2, 2u)], _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(floor(arg_1))), vec2<u32>(var_3.e.x, 53172u)), 31977i), vec3<bool>(-2147483647i <= _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-13680i, 2147483647i, global0[_wgslsmith_index_u32(1u, 6u)]), reverseBits(var_3.c.x)), reverseBits(arg_2) < (4294967295u >> (_wgslsmith_mod_u32(var_3.e.x, 0u) % 32u)), var_3.a.x));
}

fn func_1() -> Struct_4 {
    global0 = array<i32, 6>();
    var var_0 = vec3<f32>(-1000f, -468f, _wgslsmith_f_op_f32(select(1104f, _wgslsmith_f_op_f32(floor(1000f)), true)));
    global0 = array<i32, 6>();
    var var_1 = func_4(-372f, _wgslsmith_f_op_f32(func_2()), ~u_input.c);
    var var_2 = func_4(var_1.a.b.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.d - _wgslsmith_f_op_f32(select(1000f, -299f, any(vec4<bool>(true, var_1.c.x, global2[_wgslsmith_index_u32(var_1.a.a.e.x, 13u)], var_1.c.x)))))), abs(max(_wgslsmith_mult_u32(70073u, _wgslsmith_div_u32(1u, 4294967295u)), 0u))).a.b.a;
    return func_4(_wgslsmith_f_op_f32(var_0.x + -393f), -1383f, ~(~((var_1.b.a.e.x & 0u) | u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1();
    let var_2 = _wgslsmith_div_u32(var_1.a.b.e.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_4(var_1.b.a.d, var_1.b.a.d, 46594u).b.b.e.x, ~1u), var_0.b.a.e.x), _wgslsmith_sub_u32(var_1.a.b.e.x, u_input.a)));
    global2 = array<bool, 13>();
    let var_3 = -var_0.b.c & -48287i;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.d, var_0.b.b.d)), vec2<f32>(var_1.b.a.d, 1461f), select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.b.b.e.x, 13u)]), var_0.b.b.a, var_0.c.xx))) - vec2<f32>(var_0.a.b.d, _wgslsmith_f_op_f32(-var_0.a.b.d))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(640f, var_0.b.b.d), vec2<f32>(757f, -127f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.a.b.d, 255f), vec2<f32>(var_1.b.b.d, var_1.b.b.d))))))))));
    global2 = array<bool, 13>();
    let var_5 = func_1();
    var var_6 = Struct_3(var_1.b, var_5.b.a, u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.b.b.d)), _wgslsmith_f_op_f32(-var_0.a.a.d)), vec2<f32>(_wgslsmith_f_op_f32(round(var_5.b.a.d)), var_0.b.a.d)) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1640f))), var_1.b.a.d)), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_mult_u32(firstLeadingBit(15413u) ^ ~var_1.a.b.e.x, ~(~4845u))).a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.a.b.zy, ~(~vec4<u32>(~var_0.b.b.e.x, 0u, 21167u << (1u % 32u), u_input.a << (var_6.e.e.x % 32u))), 22561i, _wgslsmith_mod_vec3_u32(abs(max(var_6.c, vec3<u32>(var_6.e.e.x, 27846u, 25336u))) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(19860u, var_1.a.a.e.x, var_6.c.x) >> (global1[_wgslsmith_index_u32(var_1.b.a.e.x, 16u)] % vec3<u32>(32u)), vec3<u32>(5347u, 1u, u_input.c) ^ vec3<u32>(4294967295u, 4294967295u, 45499u)), ~(vec3<u32>(1u, var_6.b.e.x, 22352u) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(25244u, 4294967295u, 0u), vec3<u32>(var_0.b.a.e.x, var_0.a.a.e.x, var_1.a.b.e.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1278f, 610f, var_1.b.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_div_f32(1054f, -204f))))));
}

