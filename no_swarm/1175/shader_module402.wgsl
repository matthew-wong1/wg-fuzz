struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(true, true, false, true, false, false, true, true, false, false, true, true, true, true, true, true, false, false, true, false, false, true, true);

var<private> global1: u32;

var<private> global2: bool = false;

var<private> global3: array<bool, 1> = array<bool, 1>(false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<f32>) -> u32 {
    global2 = any(!(!select(!vec2<bool>(arg_0, false), select(vec2<bool>(true, arg_0), vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(global3[_wgslsmith_index_u32(1u, 1u)], global3[_wgslsmith_index_u32(arg_1.a, 1u)])), true)));
    global2 = true;
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(4294967295u, u_input.a, arg_1.c)), vec3<u32>(arg_1.a, arg_1.c, ~16689u)), reverseBits(~vec3<u32>(countOneBits(38528u), ~u_input.a, 57983u)));
    var var_1 = Struct_2(any(vec3<bool>(global0[_wgslsmith_index_u32(106683u, 23u)] & false, true, global0[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(0u, 1u, arg_1.a)) % 32u), 23u)])), all(vec2<bool>(false, true)));
    var var_2 = vec4<bool>(!all(select(!vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 1u)], arg_1.b), select(vec3<bool>(arg_1.b, arg_1.b, global3[_wgslsmith_index_u32(arg_1.a, 1u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], false), true), any(vec2<bool>(global3[_wgslsmith_index_u32(arg_1.c, 1u)], global3[_wgslsmith_index_u32(arg_1.a, 1u)])))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(var_0 | vec3<u32>(1u, 0u, 4294967295u)), ~vec3<u32>(var_0.x, arg_1.a, 4294967295u)), 23u)], !global0[_wgslsmith_index_u32(0u, 23u)], select(any(select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(u_input.a, 1u)]), select(vec3<bool>(arg_1.b, true, arg_1.b), vec3<bool>(arg_0, arg_1.b, true), vec3<bool>(true, arg_0, global0[_wgslsmith_index_u32(u_input.a, 23u)])))), arg_1.b, true && any(select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(arg_1.b, arg_0), vec2<bool>(global3[_wgslsmith_index_u32(1u, 1u)], false)))));
    return ~2951u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_2(!global3[_wgslsmith_index_u32(30426u, 1u)], 4294967295u != func_3(arg_0.x <= (u_input.b & 0i), Struct_1(u_input.a, !global3[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, vec4<f32>(-638f, 802f, 903f, 228f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-287f, -665f, 1974f, 814f) + vec4<f32>(-1481f, -478f, -537f, -288f))), arg_1.zzw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(123f, -928f) * vec2<f32>(515f, 1000f)))));
    global1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(3542u, 0u)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(115200u, 2063u)))), ~u_input.a ^ u_input.a);
    let var_1 = ~u_input.a;
    var var_2 = _wgslsmith_add_u32(~min(~47284u, u_input.a), ~1u);
    var var_3 = !(!select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 1u)], global3[_wgslsmith_index_u32(u_input.a, 1u)], true, global3[_wgslsmith_index_u32(var_1, 1u)]), !vec4<bool>(var_0.a, false, true, true), !select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(37600u, 23u)], false), vec4<bool>(false, false, var_0.a, global3[_wgslsmith_index_u32(u_input.a, 1u)]), false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1488f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1764f - 1000f), _wgslsmith_f_op_f32(-993f + 287f))) - 464f));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(475f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec2<i32>(u_input.b, -8466i) & vec2<i32>(u_input.b, 2147483647i), vec4<i32>(1i, 47788i, 71164i, u_input.b) << (vec4<u32>(u_input.a, 35777u, u_input.a, u_input.a) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f + 1124f) * _wgslsmith_f_op_f32(max(-564f, 1157f))))));
    global0 = array<bool, 23>();
    global1 = u_input.a;
    return Struct_1(min(countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(u_input.a, u_input.a, 42686u, 16185u) ^ vec4<u32>(u_input.a, 57489u, u_input.a, u_input.a))), u_input.a), select(all(!select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global3[_wgslsmith_index_u32(1u, 1u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(0u, 1u)], false), false)), u_input.a >= _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 18133u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(0u, 1u, 4294967295u)), vec3<u32>(u_input.a, 19027u, u_input.a)), all(select(vec4<bool>(global3[_wgslsmith_index_u32(15u, 1u)], false, true, global3[_wgslsmith_index_u32(u_input.a, 1u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)], true, true), any(vec2<bool>(false, false))))), 91171u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(ceil(346f)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f * var_0) + _wgslsmith_f_op_f32(var_0 + -252f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(max(-159f, 1168f)))), 1f, var_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -1105f, _wgslsmith_f_op_f32(trunc(573f)), var_0))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32((vec4<u32>(arg_1, 18307u, 1u, arg_1) ^ vec4<u32>(61092u, arg_1, arg_2.a, arg_2.a)) << (~vec4<u32>(1u, arg_1, 1u, 28593u) % vec4<u32>(32u)), max(vec4<u32>(1230u, arg_1, u_input.a, arg_1), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, 43784u, u_input.a), vec4<u32>(0u, arg_2.a, 9926u, 6374u)))), ~firstLeadingBit(abs(vec4<u32>(69468u, 7270u, 4294967295u, u_input.a)))) | (select(vec4<u32>(u_input.a, ~4294967295u, ~arg_2.c, _wgslsmith_div_u32(4294967295u, 10001u)), select(vec4<u32>(0u, arg_1, arg_2.a, 62280u), vec4<u32>(0u, 26743u, arg_1, u_input.a), vec4<bool>(global0[_wgslsmith_index_u32(1u, 23u)], true, global3[_wgslsmith_index_u32(arg_2.c, 1u)], global0[_wgslsmith_index_u32(24786u, 23u)])) ^ _wgslsmith_add_vec4_u32(vec4<u32>(3431u, 1u, 41351u, 114345u), vec4<u32>(arg_2.c, 19698u, arg_1, 43667u)), select(vec4<bool>(false, true, true, arg_2.b), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], false, true, true), func_1(true).b)) | firstLeadingBit(select(abs(vec4<u32>(arg_1, arg_2.c, 4294967295u, u_input.a)), ~vec4<u32>(4289u, arg_2.c, arg_1, 4294967295u), u_input.b > -2147483647i)));
    let var_1 = func_1(true);
    var var_2 = Struct_2(!(var_0.x < abs(var_1.a)), !any(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.c, 23u)], false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(var_1.b, var_1.b, false, true))));
    let var_3 = Struct_2(any(select(select(select(vec4<bool>(true, true, var_1.b, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.c, 1u)], true, var_1.b, false), vec4<bool>(true, arg_2.b, true, var_1.b)), !vec4<bool>(var_1.b, global0[_wgslsmith_index_u32(var_1.a, 23u)], global3[_wgslsmith_index_u32(var_1.c, 1u)], var_2.b), vec4<bool>(var_1.b, global3[_wgslsmith_index_u32(4294967295u, 1u)], true, var_2.a)), select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 1u)], false, var_1.b, true), !vec4<bool>(global3[_wgslsmith_index_u32(42061u, 1u)], false, true, global0[_wgslsmith_index_u32(14960u, 23u)]), vec4<bool>(true, true, true, true)), !global3[_wgslsmith_index_u32(~arg_1, 1u)])), var_2.a);
    global1 = u_input.a;
    return false;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<f32> {
    var var_0 = Struct_2(true, true);
    let var_1 = Struct_2(all(vec3<bool>(true, !(var_0.a && false), true)), !var_0.a);
    let var_2 = func_1(!(!(!var_1.a)));
    global1 = 13929u;
    let var_3 = vec3<u32>(reverseBits(func_3(global0[_wgslsmith_index_u32(~1u, 23u)], func_1(func_4(vec2<f32>(var_2.e.x, var_2.d.x), 4294967295u, var_2)), -vec3<i32>(u_input.b, u_input.b, u_input.b) & -vec3<i32>(11867i, -2147483647i, u_input.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_2.e.yy - vec2<f32>(1465f, var_2.d.x)), vec2<f32>(var_2.d.x, -2762f))))), ~21536u, countOneBits(reverseBits(u_input.a)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(790f, var_2.e.x)) * -285f), 663f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-654f, -1528f))), _wgslsmith_f_op_f32(var_2.d.x + 1541f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, 269f, -1073f, var_2.e.x) + var_2.e)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_2.e.x, 804f, var_2.e.x) + vec4<f32>(-469f, var_2.d.x, 185f, var_2.d.x)), _wgslsmith_f_op_vec4_f32(var_2.e - vec4<f32>(-625f, var_2.e.x, 249f, var_2.e.x)))) - var_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = Struct_1(u_input.a, any(vec3<bool>(global3[_wgslsmith_index_u32(1u, 1u)] || !global0[_wgslsmith_index_u32(10459u, 23u)], true, select(!global0[_wgslsmith_index_u32(1485u, 23u)], true, global3[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 1u)]))), ~1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(func_5(any(vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a, 1u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])) && func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(173f, -760f)), 1u, func_1(true)), Struct_2(true, global3[_wgslsmith_index_u32(~0u, 1u)] && any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 23u)]))), vec2<bool>(false, -u_input.b <= -u_input.b))));
    let var_1 = 13310i;
    var var_2 = func_1(var_0.b);
    global1 = ~_wgslsmith_dot_vec2_u32(~(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.c, var_0.c), vec2<u32>(95941u, 9003u)) >> ((vec2<u32>(10655u, u_input.a) | vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(~var_2.a, 75159u), ~vec2<u32>(var_0.a, 4294967295u) << (vec2<u32>(var_2.a, 0u) % vec2<u32>(32u))));
    var var_3 = var_2.e.x;
    let var_4 = Struct_2(!global3[_wgslsmith_index_u32(u_input.a, 1u)], any(vec4<bool>(_wgslsmith_div_u32(u_input.a, 31926u) <= firstLeadingBit(var_0.a), false, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(605f, var_0.e.x)), countOneBits(var_2.c), func_1(var_2.b)), all(vec4<bool>(var_2.b, true, var_2.b, false)))));
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_1 ^ 0i, var_1, 78996i), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(12656i, var_1, var_1, 10664i), vec4<i32>(11661i, var_1, u_input.b, 135i), ~vec4<i32>(var_1, var_1, var_1, -62861i)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(21894i, -30822i, -36337i, 25615i), vec4<i32>(-2147483647i, u_input.b, var_1, var_1), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))))));
}

