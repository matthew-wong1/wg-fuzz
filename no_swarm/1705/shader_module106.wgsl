struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, true, false, false, true);

var<private> global1: array<u32, 27> = array<u32, 27>(17460u, 4294967295u, 0u, 37453u, 0u, 16051u, 4294967295u, 4294967295u, 0u, 7207u, 13575u, 9083u, 4294967295u, 56358u, 1647u, 31189u, 90189u, 122482u, 20965u, 4294967295u, 15622u, 1u, 55618u, 36701u, 959u, 22690u, 2265u);

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true), vec2<f32>(-522f, 527f), vec3<u32>(43122u, 1u, 0u));

var<private> global3: array<bool, 10>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_2) -> vec2<f32> {
    return _wgslsmith_div_vec2_f32(arg_3.b, arg_3.b);
}

fn func_2() -> Struct_2 {
    let var_0 = u_input.a.x | max(_wgslsmith_clamp_i32(_wgslsmith_add_i32(firstLeadingBit(u_input.a.x), firstTrailingBit(-1i)), u_input.a.x, ~abs(u_input.a.x)), countOneBits(-1i));
    let var_1 = ~(-(~vec4<i32>(-2147483647i, ~var_0, -2147483647i, abs(u_input.a.x))));
    let var_2 = Struct_4(global2.b.x);
    global2 = Struct_2(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 5u)], Struct_1(vec4<u32>(global2.c.x, 44567u, u_input.d.x, 28639u)), vec3<f32>(-1561f, 1244f, 141f), Struct_2(global2.a, vec2<f32>(global2.b.x, 728f), vec3<u32>(global2.c.x, 27163u, global2.c.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(651f, 2218f) * vec2<f32>(-869f, 461f))), vec2<f32>(263f, -535f)))), vec3<u32>(1u, 1u, min(firstTrailingBit(~u_input.c), global2.c.x)));
    var var_3 = Struct_5(false, _wgslsmith_f_op_vec2_f32(func_3(!all(vec3<bool>(global2.a.x, global0[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(1u, 10u)])), Struct_1(~u_input.d), vec3<f32>(1175f, var_2.a, _wgslsmith_f_op_f32(308f + var_2.a)), Struct_2(select(vec2<bool>(false, global2.a.x), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 27u)], 5u)], false), true), vec2<f32>(global2.b.x, global2.b.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(10568u, 27u)], 27u)], u_input.c, global1[_wgslsmith_index_u32(0u, 27u)]) >> (vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 27u)], u_input.c) % vec3<u32>(32u))))).x <= -246f, ~1u);
    return Struct_2(!global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(-var_2.a))), ~global2.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = Struct_5(any(!global2.a), true, func_2().c.x & 19512u);
    global1 = array<u32, 27>();
    global0 = array<bool, 5>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), -684f, _wgslsmith_f_op_f32(-arg_1.b.b.x), -495f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(u_input.d), vec3<f32>(-555f, arg_0.b.x, arg_0.b.x), Struct_2(arg_0.a, vec2<f32>(arg_0.b.x, -137f), arg_1.b.c))).x, arg_0.b.x, global2.b.x, _wgslsmith_f_op_f32(-161f * 872f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-3882f, -1399f, global2.b.x, -293f)))), true == select(true, false, true))))));
    var var_2 = firstTrailingBit(abs(1i));
    return arg_0.c;
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(-2147483647i, func_2(), min(abs(~4294967295u), firstLeadingBit(_wgslsmith_div_u32(0u, arg_0.c))) & ~1u);
    var var_1 = Struct_4(-301f);
    let var_2 = Struct_3(-2162i, var_0.b, func_4(var_0.b, Struct_3(var_0.a, func_2(), select(4294967295u, 71138u, false))).x ^ global1[_wgslsmith_index_u32(arg_1.a.x, 27u)]);
    let var_3 = var_2.b;
    global3 = array<bool, 10>();
    return Struct_2(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -230f)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-334f, -1074f) * var_0.b.b.x), global0[_wgslsmith_index_u32(20239u, 5u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.b.x, 1215f))), var_3.b)), _wgslsmith_sub_vec3_u32(var_2.b.c >> (~_wgslsmith_add_vec3_u32(var_2.b.c, vec3<u32>(arg_1.a.x, global2.c.x, arg_0.c)) % vec3<u32>(32u)), var_3.c));
}

fn func_1() -> i32 {
    global2 = func_5(Struct_5(global2.a.x, all(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 10u)], false)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.xzy, _wgslsmith_mult_vec3_u32(global2.c, u_input.d.xwz)), func_4(func_2(), Struct_3(2147483647i, Struct_2(vec2<bool>(global0[_wgslsmith_index_u32(1u, 5u)], global2.a.x), global2.b, global2.c), u_input.c)))), Struct_1(~(vec4<u32>(global2.c.x, global2.c.x, 85271u, global2.c.x) & vec4<u32>(u_input.b.x, global2.c.x, 4294967295u, global2.c.x)) >> (vec4<u32>(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], 0u), 22965u, 0u >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2.c.x, 27u)], 27u)] % 32u), ~global2.c.x) % vec4<u32>(32u))));
    let var_0 = _wgslsmith_f_op_vec2_f32(global2.b * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-305f, -200f) + global2.b))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, global2.b.x) - global2.b) + vec2<f32>(global2.b.x, global2.b.x)), global2.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, func_5(Struct_5(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(98717u, 27u)], 5u)], 13901u), Struct_1(u_input.d)).b.x))));
    let var_2 = Struct_5(true, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~4294967295u, 27u)], 10u)], u_input.c);
    let var_3 = true;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 5>();
    var var_0 = -2147483647i;
    var_0 = func_1();
    global3 = array<bool, 10>();
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.c.x, ~u_input.c << (4294967295u % 32u)), 1u);
    var var_2 = ~_wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(-11854i, 79333i, u_input.a.x, 9868i)), vec4<i32>(u_input.a.x, 0i, -1i, u_input.a.x) >> (u_input.d % vec4<u32>(32u))), firstTrailingBit((vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 40505i) >> (vec4<u32>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global2.c.x, global2.c.x, global2.c.x) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -14577i)));
    global1 = array<u32, 27>();
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec4<i32>(1i, var_2.x, _wgslsmith_sub_i32(reverseBits(var_2.x), ~1i), _wgslsmith_mod_i32(countOneBits(-31678i), i32(-1i) * -48012i)), 1384f, ~(~(~select(var_2.x, u_input.a.x, true))), u_input.a);
}

