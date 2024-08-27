struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(598f, 214f), vec2<f32>(-100f, 1822f), vec2<f32>(-902f, -1000f), vec2<f32>(1000f, -1456f), vec2<f32>(517f, -1014f), vec2<f32>(768f, 1739f), vec2<f32>(-777f, -139f), vec2<f32>(-143f, 2155f), vec2<f32>(314f, -356f), vec2<f32>(-1863f, -931f), vec2<f32>(-369f, -353f), vec2<f32>(1099f, -756f), vec2<f32>(704f, -603f), vec2<f32>(-1229f, 1141f), vec2<f32>(124f, 968f), vec2<f32>(-514f, 356f));

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec2<bool>(true, true), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 1u, 1u), true), Struct_1(vec2<bool>(false, true), 1u, vec4<u32>(4294967295u, 6991u, 0u, 33912u), false), Struct_1(vec2<bool>(false, true), 1511u, vec4<u32>(19537u, 46355u, 1u, 0u), false), Struct_1(vec2<bool>(true, true), 0u, vec4<u32>(22008u, 988u, 1u, 1u), false), Struct_1(vec2<bool>(false, true), 43176u, vec4<u32>(4294967295u, 29987u, 4294967295u, 4294967295u), true));

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(true, false), 1931u, vec4<u32>(13492u, 34610u, 78391u, 23877u), false), Struct_1(vec2<bool>(false, true), 4294967295u, vec4<u32>(44182u, 14734u, 39267u, 1u), false), Struct_1(vec2<bool>(false, true), 59989u, vec4<u32>(51547u, 58195u, 40249u, 0u), false), Struct_1(vec2<bool>(false, false), 1u, vec4<u32>(4294967295u, 51366u, 15753u, 48709u), false), Struct_1(vec2<bool>(true, false), 22755u, vec4<u32>(8401u, 36256u, 61741u, 0u), false), Struct_1(vec2<bool>(false, true), 1u, vec4<u32>(2198u, 1u, 4294967295u, 6644u), false), Struct_1(vec2<bool>(false, false), 22259u, vec4<u32>(0u, 1u, 1u, 48485u), true), Struct_1(vec2<bool>(true, false), 17742u, vec4<u32>(0u, 0u, 4294967295u, 33361u), true));

var<private> global4: vec4<u32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    return ~reverseBits(~vec4<u32>(u_input.c, 1u, u_input.a, select(u_input.c, u_input.c, false)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<vec2<f32>, 16>();
    let var_0 = arg_0;
    var var_1 = -(select(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x), vec4<i32>(u_input.b.x, 34775i, -12596i, -10871i), vec4<i32>(u_input.b.x, u_input.b.x, -26122i, -11339i)), select(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -61563i, -69i), true)), vec4<i32>(-u_input.b.x, 11250i, ~(-1i), firstLeadingBit(u_input.b.x)), true) & (-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, -22903i, u_input.b.x, 1i), vec4<i32>(u_input.b.x, -65705i, u_input.b.x, 1i)) & vec4<i32>(-u_input.b.x, select(-2147483647i, -86078i, true), -1i, i32(-1i) * -27605i)));
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u, 5u)];
    var var_3 = global2[_wgslsmith_index_u32(~u_input.a, 5u)];
    return Struct_1(select(select(vec2<bool>(true, var_2.a.x), vec2<bool>(var_2.d != var_3.a.x, true), var_3.d), vec2<bool>(-6116i < var_1.x, var_2.d), true | !all(vec4<bool>(true, var_3.a.x, var_2.a.x, false))), ~(~var_3.c.x), min(~firstLeadingBit(vec4<u32>(global4.x, global4.x, 4294967295u, 1u)), ~func_3()) << (_wgslsmith_sub_vec4_u32(~var_3.c & var_3.c, abs(~vec4<u32>(45841u, 25076u, var_2.b, global4.x))) % vec4<u32>(32u)), false);
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_1(vec2<bool>(!all(vec4<bool>(true, true, true, true)), true), 61497u >> (global4.x % 32u), vec4<u32>(1u, u_input.a, _wgslsmith_mod_u32(~(~u_input.c), 1u), 42959u), all(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true), 4294967295u <= global4.x)));
    let var_1 = func_2(_wgslsmith_f_op_f32(sign(arg_2)));
    let var_2 = var_0.a.x;
    var var_3 = _wgslsmith_f_op_f32(-321f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 * -488f)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-336f, 1000f, _wgslsmith_div_f32(arg_0, arg_1), -658f) * vec4<f32>(1836f, -1263f, _wgslsmith_f_op_f32(f32(-1f) * -1230f), 612f)));
    return _wgslsmith_f_op_f32(arg_1 - arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 16>();
    var var_0 = global2[_wgslsmith_index_u32(global4.x, 5u)];
    global3 = array<Struct_1, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -328f, -469f, global0.x))) - vec4<f32>(_wgslsmith_div_f32(-746f, -944f), 289f, _wgslsmith_f_op_f32(func_1(global0.x, -720f, global0.x, u_input.b.x)), 373f)) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-788f, 605f, -1000f, _wgslsmith_f_op_f32(global0.x + global0.x)))))));
    var var_2 = u_input.a;
    let var_3 = u_input.b.x ^ ~u_input.b.x;
    var_0 = Struct_1(!vec2<bool>(var_0.a.x, var_0.d), 7887u, ~countOneBits(var_0.c), global0.x == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-526f, -428f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_3, -2147483647i, -31806i, 24030i)), vec4<i32>(40782i, 30308i, -9472i, 10367i))), ~vec4<i32>(_wgslsmith_sub_i32(u_input.b.x, var_3), i32(-1i) * -30590i, u_input.b.x, -2147483647i), ~(~(~vec4<i32>(-1i, 24666i, -25269i, -2147483647i)))), vec4<u32>(~7100u, 93970u, global4.x >> (max(abs(37572u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 80908u, 3207u), vec4<u32>(4294967295u, 4294967295u, global4.x, 74670u))) % 32u), min(select(_wgslsmith_div_u32(0u, global4.x), ~global4.x, !var_0.a.x), 1u)));
}

