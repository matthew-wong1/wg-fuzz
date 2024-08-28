struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec3<f32>(-483f, -1302f, 641f), Struct_1(vec3<u32>(14812u, 1u, 39175u), 0u, true), vec2<f32>(333f, 1214f), 1062f), Struct_4(vec3<f32>(1253f, -517f, -1143f), Struct_1(vec3<u32>(0u, 40468u, 57469u), 114136u, true), vec2<f32>(327f, -1149f), -770f), Struct_4(vec3<f32>(-253f, 1536f, -367f), Struct_1(vec3<u32>(4294967295u, 17152u, 0u), 0u, true), vec2<f32>(-1086f, -1304f), -171f), Struct_4(vec3<f32>(-874f, -1211f, 1314f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), 70742u, false), vec2<f32>(365f, -254f), -316f), Struct_4(vec3<f32>(333f, 619f, -1490f), Struct_1(vec3<u32>(34290u, 49385u, 39140u), 5709u, false), vec2<f32>(-1608f, -1000f), -1000f), Struct_4(vec3<f32>(-334f, -195f, 274f), Struct_1(vec3<u32>(0u, 1u, 47912u), 0u, true), vec2<f32>(195f, 1284f), 1146f), Struct_4(vec3<f32>(472f, -617f, 1587f), Struct_1(vec3<u32>(60388u, 4294967295u, 24453u), 0u, true), vec2<f32>(-270f, -816f), -1014f), Struct_4(vec3<f32>(-1659f, -1000f, 1000f), Struct_1(vec3<u32>(25282u, 53327u, 76812u), 0u, true), vec2<f32>(-1319f, -2665f), -257f), Struct_4(vec3<f32>(-678f, -987f, -937f), Struct_1(vec3<u32>(32547u, 24585u, 30626u), 1u, false), vec2<f32>(-499f, -1110f), -465f), Struct_4(vec3<f32>(-282f, -1880f, 1003f), Struct_1(vec3<u32>(34761u, 4294967295u, 67572u), 35911u, true), vec2<f32>(983f, 217f), 664f), Struct_4(vec3<f32>(-2205f, -699f, -1000f), Struct_1(vec3<u32>(0u, 109774u, 9774u), 20130u, true), vec2<f32>(-1000f, 1220f), -697f), Struct_4(vec3<f32>(-1000f, -536f, -110f), Struct_1(vec3<u32>(86412u, 0u, 1u), 1u, false), vec2<f32>(-1482f, -1000f), -2405f));

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<Struct_4, 3> = array<Struct_4, 3>(Struct_4(vec3<f32>(-1304f, -455f, 594f), Struct_1(vec3<u32>(8913u, 9884u, 43460u), 37762u, true), vec2<f32>(602f, -1666f), 199f), Struct_4(vec3<f32>(1889f, -116f, -1424f), Struct_1(vec3<u32>(54686u, 33382u, 4294967295u), 15030u, true), vec2<f32>(-468f, 1000f), 872f), Struct_4(vec3<f32>(1249f, -623f, -1408f), Struct_1(vec3<u32>(4294967295u, 1u, 58196u), 0u, false), vec2<f32>(-645f, -1027f), 1183f));

var<private> global3: Struct_2 = Struct_2(i32(-2147483648), vec4<i32>(-6299i, 2837i, 1i, i32(-2147483648)), Struct_1(vec3<u32>(1u, 37879u, 39557u), 43037u, false), vec2<f32>(1878f, -2044f));

var<private> global4: array<vec4<u32>, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d.x, global3.d.x, 2286f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(913f, global3.d.x, global3.d.x)))))), Struct_1(_wgslsmith_sub_vec3_u32(~arg_2.a, vec3<u32>(_wgslsmith_mult_u32(arg_3, arg_3), firstTrailingBit(1u), arg_0.b)), arg_0.a.x | (global3.c.b << (~global3.c.a.x % 32u)), any(select(select(vec2<bool>(global3.c.c, arg_2.c), vec2<bool>(arg_2.c, true), vec2<bool>(arg_1.c, arg_0.c)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_1.c)))), global3.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global3.d.x)))));
    var var_1 = vec2<u32>(~arg_3, 95952u << (_wgslsmith_add_u32(var_0.b.b | var_0.b.a.x, global3.c.a.x) % 32u)) | ~reverseBits(firstLeadingBit(arg_2.a.xz));
    let var_2 = ~(-_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, global3.b.x, -33317i), global3.b), vec4<i32>(u_input.a.x, u_input.a.x, global3.a, -12079i) << (vec4<u32>(39000u, 55603u, 15343u, 38283u) % vec4<u32>(32u))) >> (global4[_wgslsmith_index_u32(~54569u, 9u)] % vec4<u32>(32u)));
    var var_3 = Struct_1(var_0.b.a | arg_2.a, ~arg_2.a.x, any(select(select(select(vec3<bool>(false, arg_0.c, var_0.b.c), vec3<bool>(arg_1.c, false, false), vec3<bool>(false, global3.c.c, true)), !vec3<bool>(true, arg_1.c, global3.c.c), vec3<bool>(true, global3.c.c, false)), vec3<bool>(any(vec4<bool>(arg_1.c, true, false, global3.c.c)), true, !global3.c.c), vec3<bool>(true, true, var_2.x >= -3325i))));
    var var_4 = _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(1235f * _wgslsmith_f_op_f32(max(var_0.c.x, _wgslsmith_f_op_f32(-1f)))));
    return vec2<i32>(0i, max(firstTrailingBit(max(u_input.a.x, -1i)), _wgslsmith_sub_i32(-35736i, 1i)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = abs(func_3(global3.c, global3.c, Struct_1(global3.c.a, ~global3.c.a.x, arg_2.a.x), global3.c.a.x));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.d.x - _wgslsmith_f_op_f32(floor(-2436f))))));
    var var_3 = Struct_3(vec3<bool>(true, !any(select(arg_2.a, vec3<bool>(false, false, global3.c.c), vec3<bool>(false, false, false))), true || (!global3.c.c && !arg_0)));
    let var_4 = vec4<u32>(firstLeadingBit(0u), ~global3.c.b, global3.c.a.x, abs(~_wgslsmith_dot_vec3_u32(~vec3<u32>(30582u, 109621u, global3.c.b), _wgslsmith_sub_vec3_u32(vec3<u32>(global3.c.a.x, 18496u, 72871u), vec3<u32>(25622u, 103549u, global3.c.b)))));
    return arg_2;
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    let var_0 = arg_0.b.c;
    return func_2(false, 6217i, Struct_3(select(!select(vec3<bool>(false, var_0, false), vec3<bool>(arg_1, arg_0.b.c, false), arg_1), !(!vec3<bool>(false, var_0, arg_0.b.c)), arg_0.b.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec4<bool>(false, select(global3.b.x, -7i, true) < (i32(-1i) * -2147483647i), global3.c.c, false), !select(!vec4<bool>(true, global3.c.c, global3.c.c, global3.c.c), global1[_wgslsmith_index_u32(~4294967295u, 16u)], global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.c.a.x, 1u), 16u)]), !vec4<bool>(global3.c.c, false, !global3.c.c, any(vec2<bool>(false, false))));
    var var_1 = func_1(global0[_wgslsmith_index_u32(firstTrailingBit(global3.c.a.x | global3.c.b), 12u)], global3.c.c);
    let var_2 = _wgslsmith_div_f32(-338f, 2553f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -924f) - _wgslsmith_f_op_f32(max(global3.d.x, global3.d.x))) - _wgslsmith_f_op_f32(round(global3.d.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f + global3.d.x) - global3.d.x) + _wgslsmith_f_op_f32(-global3.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~select(vec3<u32>(22835u, 1u, 88261u), vec3<u32>(global3.c.a.x, 42814u, 0u), false), ~(~vec3<u32>(1u, 1u, 31293u)), ~(~vec3<u32>(global3.c.a.x, global3.c.b, 4294967295u))), global3.c.a), 9u)]);
}

