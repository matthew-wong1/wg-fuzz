struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(vec3<f32>(137f, 239f, 1325f), vec2<i32>(-1i, -1i), Struct_2(-19884i, Struct_1(vec2<u32>(44836u, 9035u), vec3<bool>(false, false, false)))), Struct_4(vec3<f32>(339f, 607f, 727f), vec2<i32>(i32(-2147483648), -44934i), Struct_2(0i, Struct_1(vec2<u32>(9888u, 122405u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-2341f, 319f, 135f), vec2<i32>(36047i, -21000i), Struct_2(-3290i, Struct_1(vec2<u32>(31739u, 44689u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-379f, 1671f, -978f), vec2<i32>(1i, 0i), Struct_2(16626i, Struct_1(vec2<u32>(14606u, 1u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(-1418f, -571f, -115f), vec2<i32>(1i, 1i), Struct_2(-1i, Struct_1(vec2<u32>(4294967295u, 101953u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-1000f, -589f, -1123f), vec2<i32>(-33595i, i32(-2147483648)), Struct_2(57415i, Struct_1(vec2<u32>(34646u, 0u), vec3<bool>(true, true, false)))), Struct_4(vec3<f32>(507f, -114f, -1824f), vec2<i32>(10663i, -6990i), Struct_2(32329i, Struct_1(vec2<u32>(0u, 4294967295u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-1095f, -1714f, 488f), vec2<i32>(66361i, 2147483647i), Struct_2(-46728i, Struct_1(vec2<u32>(0u, 4294967295u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(-611f, 1000f, -1000f), vec2<i32>(1i, 740i), Struct_2(2147483647i, Struct_1(vec2<u32>(34791u, 80496u), vec3<bool>(false, true, false)))), Struct_4(vec3<f32>(-457f, -300f, 301f), vec2<i32>(-66734i, -41010i), Struct_2(5984i, Struct_1(vec2<u32>(4294967295u, 105285u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(-1460f, -103f, -332f), vec2<i32>(27807i, 0i), Struct_2(39821i, Struct_1(vec2<u32>(0u, 100605u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(1272f, 1472f, -580f), vec2<i32>(-68107i, i32(-2147483648)), Struct_2(-26316i, Struct_1(vec2<u32>(8246u, 41370u), vec3<bool>(false, true, true)))), Struct_4(vec3<f32>(-971f, 492f, 603f), vec2<i32>(61698i, -42413i), Struct_2(2147483647i, Struct_1(vec2<u32>(36228u, 1u), vec3<bool>(true, false, true)))), Struct_4(vec3<f32>(1077f, 234f, -687f), vec2<i32>(1i, -31739i), Struct_2(i32(-2147483648), Struct_1(vec2<u32>(5515u, 0u), vec3<bool>(true, true, false)))), Struct_4(vec3<f32>(-755f, 541f, 1000f), vec2<i32>(-25388i, 2147483647i), Struct_2(1i, Struct_1(vec2<u32>(82758u, 1u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(-1000f, 1116f, 324f), vec2<i32>(1i, 1i), Struct_2(-8071i, Struct_1(vec2<u32>(1u, 43475u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(1463f, -385f, -231f), vec2<i32>(2147483647i, 1i), Struct_2(10026i, Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, false)))), Struct_4(vec3<f32>(101f, -700f, -189f), vec2<i32>(2147483647i, -1i), Struct_2(38463i, Struct_1(vec2<u32>(0u, 1u), vec3<bool>(true, true, true)))), Struct_4(vec3<f32>(-271f, 1682f, -105f), vec2<i32>(0i, 2147483647i), Struct_2(-1i, Struct_1(vec2<u32>(1u, 2179u), vec3<bool>(true, true, true)))), Struct_4(vec3<f32>(513f, -115f, -1100f), vec2<i32>(-43106i, -43278i), Struct_2(1i, Struct_1(vec2<u32>(4294967295u, 7303u), vec3<bool>(false, false, true)))), Struct_4(vec3<f32>(-225f, -1232f, -678f), vec2<i32>(-8557i, 9766i), Struct_2(-23770i, Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(false, false, false)))));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(40618u, 1u), vec3<bool>(true, true, false));

var<private> global3: Struct_4 = Struct_4(vec3<f32>(778f, -1475f, 450f), vec2<i32>(-1i, -1i), Struct_2(-1i, Struct_1(vec2<u32>(1u, 0u), vec3<bool>(false, true, true))));

var<private> global4: vec4<f32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> f32 {
    let var_0 = arg_0;
    global3 = global1[_wgslsmith_index_u32(arg_2.e, 21u)];
    let var_1 = global3.c.b.a.x;
    let var_2 = global3.c.b.a;
    global0 = array<Struct_1, 10>();
    return _wgslsmith_f_op_f32(trunc(arg_1.a.x));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = global3.a.x;
    global4 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, arg_0, global4.x, arg_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global3.a.x, -2638f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, arg_0, global4.x, arg_0) * vec4<f32>(global4.x, -903f, 928f, -188f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, -778f, 375f), vec4<f32>(763f, global3.a.x, global3.a.x, -423f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(global3.a.xx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global4.x) - vec2<f32>(-334f, global3.a.x))))))));
    var var_2 = !vec3<bool>(global3.a.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f - var_1.x)), any(!select(vec3<bool>(global2.b.x, global3.c.b.b.x, true), global2.b, global2.b)), all(!select(vec4<bool>(global3.c.b.b.x, global2.b.x, false, true), vec4<bool>(global3.c.b.b.x, true, global2.b.x, global2.b.x), global3.c.b.b.x)));
    var var_3 = Struct_3(global2.a.x | 4294967295u, countOneBits(u_input.a.xz), global3.c.b.a, Struct_2(~(i32(-1i) * -2147483647i), Struct_1(global2.a, global2.b)), ~global2.a.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.x, _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(global3.c.b.a.x, var_3.c.x), global3.c.b.b), Struct_4(vec3<f32>(-571f, -1231f, 554f), var_3.b | vec2<i32>(0i, global3.b.x), var_3.d), Struct_3(1u, global3.b, _wgslsmith_mult_vec2_u32(global2.a, vec2<u32>(6989u, var_3.e)), global3.c, _wgslsmith_add_u32(global3.c.b.a.x, global3.c.b.a.x)), !(!var_3.d.b.b.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(994f, global3.a.x, global4.x, 731f) + vec4<f32>(-325f, -358f, global4.x, global3.a.x)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, global4.x, global4.x, global3.a.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1682f, 440f, -1000f, global3.a.x))))) - vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(round(global4.x)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(426f - global4.x) + _wgslsmith_f_op_f32(-global4.x)), -152f)));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(56360u, firstLeadingBit(5744u)), 21u)];
    var var_1 = !select(select(!select(vec4<bool>(global3.c.b.b.x, false, global3.c.b.b.x, true), vec4<bool>(true, false, arg_1, var_0.c.b.b.x), global2.b.x), select(vec4<bool>(true, var_0.c.b.b.x, false, false), vec4<bool>(true, true, false, arg_1), !global2.b.x), !select(vec4<bool>(var_0.c.b.b.x, global3.c.b.b.x, true, true), vec4<bool>(arg_0.b.x, arg_1, arg_1, true), vec4<bool>(arg_1, global2.b.x, arg_1, false))), !select(!vec4<bool>(false, arg_0.b.x, arg_0.b.x, arg_0.b.x), !vec4<bool>(var_0.c.b.b.x, true, global3.c.b.b.x, var_0.c.b.b.x), global3.a.x >= global4.x), any(global2.b.xx));
    global2 = global0[_wgslsmith_index_u32(0u, 10u)];
    var var_2 = Struct_2(~(-15535i), Struct_1(_wgslsmith_add_vec2_u32(abs(arg_0.a), global3.c.b.a) | ~global2.a, var_1.ywz));
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(global3.b.x, arg_0.d.a, _wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(-57665i, global3.c.a, arg_0.b.x), u_input.a)))), select(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-20390i, 2147483647i, -2147483647i)), vec3<i32>(arg_0.d.a, 6127i, ~global3.c.a)), -(select(vec3<i32>(-1i, arg_0.d.a, -6382i), u_input.a, arg_1.b) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(21653u, global3.c.b.a.x, global3.c.b.a.x), vec3<u32>(arg_1.a.x, 4870u, 24855u)) % vec3<u32>(32u))), global3.c.b.b.x == (1i <= global3.b.x)));
    var var_1 = vec3<u32>(_wgslsmith_mod_u32(min(~0u, arg_1.a.x), ~41183u), arg_0.e, ~_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(global2.a.x, global2.a.x, 1u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(1u, global2.a.x, 1u), min(vec3<u32>(1u, global2.a.x, 46607u), vec3<u32>(arg_0.c.x, 1u, global2.a.x)))));
    var var_2 = Struct_1(_wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(global2.a, ~vec2<u32>(44129u, 4675u))), arg_1.a), vec3<bool>(reverseBits(arg_1.a.x) > abs(~arg_0.d.b.a.x), global3.c.b.b.x, false));
    var var_3 = global3.c;
    global3 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)), global4.x, _wgslsmith_f_op_f32(floor(global4.x))), global3.b, global3.c);
    return var_3.b.b;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: bool) -> StorageBuffer {
    let var_0 = arg_1.x;
    var var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -706f, global3.a.x) + global3.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.xxw) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global3.a.x, global3.a.x) * vec3<f32>(694f, 635f, global3.a.x))))), ~arg_2.b, Struct_2(-(max(-1i, var_0) << (arg_2.a % 32u)), arg_2.d.b));
    global2 = func_1(Struct_1(~(~func_1(Struct_1(vec2<u32>(arg_2.d.b.a.x, 32212u), global3.c.b.b), arg_2.d.b.b.x).a), vec3<bool>(!global3.c.b.b.x, all(select(vec4<bool>(true, global2.b.x, var_1.c.b.b.x, global3.c.b.b.x), vec4<bool>(true, true, true, true), true)), select(all(var_1.c.b.b), !global3.c.b.b.x, global2.b.x != true))), select(global3.c.b.b.x, arg_0.x, arg_2.d.b.b.x));
    let var_2 = _wgslsmith_sub_vec4_i32(arg_1, ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(u_input.a.x, var_0, arg_2.b.x, -57986i)), arg_1), _wgslsmith_div_vec4_i32(arg_1, vec4<i32>(2147483647i, var_0, arg_1.x, 12768i)) >> (max(vec4<u32>(global2.a.x, 1u, 4701u, 24614u), vec4<u32>(4294967295u, 0u, global2.a.x, 12967u)) % vec4<u32>(32u))));
    var var_3 = vec4<f32>(_wgslsmith_div_f32(289f, _wgslsmith_f_op_f32(func_2(1443f))), _wgslsmith_f_op_f32(-global4.x), global3.a.x, 1608f);
    return StorageBuffer(~(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 14814i, -29999i, var_1.b.x) | var_2, _wgslsmith_mod_vec4_i32(var_2, arg_1)) >> ((_wgslsmith_div_u32(0u, global2.a.x) >> (~global2.a.x % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, countOneBits(u_input.a.x)), global3.b.x, 1i), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, global3.c.a, global3.c.a), vec3<i32>(8175i, 0i, -89444i)))), vec3<i32>(32358i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(global3.c.a | global3.b.x, _wgslsmith_mod_i32(u_input.a.x, 2147483647i), u_input.a.x)), global3.b.x << (firstLeadingBit(global3.c.b.a.x) % 32u)));
    global1 = array<Struct_4, 21>();
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = _wgslsmith_add_i32(global3.c.a, 680i);
    let var_3 = 10824u;
    var_0 = u_input.a;
    var var_4 = ~(-(~var_0.zy));
    let var_5 = vec3<u32>(global3.c.b.a.x, global3.c.b.a.x, 1u);
    var var_6 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(~var_0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_4.x), vec3<i32>(u_input.a.x, 1i, u_input.a.x)), var_0.x & -2147483647i), _wgslsmith_dot_vec2_i32(var_0.yz, vec2<i32>(var_2, u_input.a.x) & var_0.zz))), -abs(select(vec3<i32>(u_input.a.x, -1i, var_4.x), u_input.a >> (vec3<u32>(33216u, var_3, var_3) % vec3<u32>(32u)), true)));
    let x = u_input.a;
    s_output = func_5(func_4(Struct_3(1u, vec2<i32>(u_input.a.x, -1i), min(var_5.xz, vec2<u32>(4294967295u, global2.a.x)), global3.c, 0u), func_1(Struct_1(var_5.zx, !vec3<bool>(false, global3.c.b.b.x, false)), global3.c.b.b.x), !select(select(vec4<bool>(global3.c.b.b.x, false, global2.b.x, false), vec4<bool>(global2.b.x, global2.b.x, global2.b.x, false), vec4<bool>(false, global3.c.b.b.x, true, global2.b.x)), !vec4<bool>(false, true, global2.b.x, false), func_1(Struct_1(vec2<u32>(35422u, 4294967295u), vec3<bool>(true, global3.c.b.b.x, global2.b.x)), true).b.x)), max(vec4<i32>(~_wgslsmith_mod_i32(2147483647i, var_2), -1i, _wgslsmith_mod_i32(var_6.x, -1i), -48348i), -(~(~vec4<i32>(14816i, var_0.x, -1i, var_2)))), Struct_3(_wgslsmith_div_u32(20072u, _wgslsmith_sub_u32(2946u, global3.c.b.a.x)) | 39307u, abs(vec2<i32>(-1i) * -u_input.a.xx), ~func_1(Struct_1(var_5.yz, global3.c.b.b), global2.b.x).a ^ firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(global3.c.b.a.x, var_3), vec2<u32>(1u, 4294967295u))), global3.c, _wgslsmith_add_u32(~_wgslsmith_div_u32(global2.a.x, global2.a.x), select(var_3, global2.a.x, global3.c.b.b.x || global2.b.x))), 1u == var_3);
}

