struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<f32>(-541f, -1198f, 480f)), Struct_1(vec3<f32>(988f, 1427f, 1092f)), Struct_1(vec3<f32>(246f, -1776f, -880f)), Struct_1(vec3<f32>(-845f, -1000f, 809f)), Struct_1(vec3<f32>(-303f, -713f, -2001f)), Struct_1(vec3<f32>(955f, -874f, -1000f)), Struct_1(vec3<f32>(-1000f, 1047f, -752f)), Struct_1(vec3<f32>(2001f, -715f, 2501f)), Struct_1(vec3<f32>(-940f, 1219f, 2653f)), Struct_1(vec3<f32>(985f, -718f, -1000f)), Struct_1(vec3<f32>(-1035f, 127f, 1125f)), Struct_1(vec3<f32>(-276f, 609f, -666f)), Struct_1(vec3<f32>(-251f, -829f, -172f)), Struct_1(vec3<f32>(-293f, 684f, -1979f)), Struct_1(vec3<f32>(459f, 129f, 1173f)), Struct_1(vec3<f32>(-123f, -316f, -356f)), Struct_1(vec3<f32>(1193f, -1564f, -1484f)), Struct_1(vec3<f32>(512f, 158f, 1118f)), Struct_1(vec3<f32>(-974f, 1000f, 1329f)), Struct_1(vec3<f32>(-178f, 126f, 205f)), Struct_1(vec3<f32>(878f, -1323f, 1000f)), Struct_1(vec3<f32>(-786f, -108f, -1054f)), Struct_1(vec3<f32>(923f, -378f, 1349f)), Struct_1(vec3<f32>(1195f, 1254f, 1225f)), Struct_1(vec3<f32>(-225f, -426f, -460f)), Struct_1(vec3<f32>(1080f, 636f, 1032f)));

var<private> global3: vec2<i32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> u32 {
    global2 = array<Struct_1, 26>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1000f, -620f)), 1627f, _wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, false))))), global2[_wgslsmith_index_u32(min(~u_input.e, ~reverseBits(~arg_3)), 26u)], Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.a.a * global1.a), _wgslsmith_f_op_vec3_f32(trunc(arg_2.a.a))), global1.a)));
    var var_1 = _wgslsmith_f_op_f32(-arg_2.c.a.x);
    let var_2 = ~vec2<u32>(_wgslsmith_sub_u32(~reverseBits(1269u), 1u), u_input.c.x);
    global0 = !(!vec2<bool>(true, all(vec2<bool>(false, arg_1))));
    return u_input.d;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec2<bool> {
    let var_0 = Struct_1(arg_2.a.a);
    let var_1 = arg_2;
    let var_2 = vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(111f)))))))));
    var var_3 = var_1;
    var var_4 = var_1.b;
    return select(select(vec2<bool>(arg_3, any(select(vec3<bool>(false, arg_3, true), vec3<bool>(true, true, arg_3), vec3<bool>(global0.x, arg_3, false)))), !select(vec2<bool>(true, arg_3), vec2<bool>(global0.x, false), arg_3), global0.x), select(!select(vec2<bool>(arg_3, true), select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_3), false), !global0.x), select(!vec2<bool>(false, arg_3), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, global0.x), vec2<bool>(false, true))), all(vec4<bool>(arg_3, global0.x, false, true))), !(!(!vec2<bool>(false, arg_3)))), select(!select(select(vec2<bool>(false, arg_3), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true)), vec2<bool>(true, true), !vec2<bool>(false, global0.x)), !select(vec2<bool>(true, arg_3), vec2<bool>(global0.x, false), true), vec2<bool>(_wgslsmith_f_op_f32(-var_2.x) != _wgslsmith_f_op_f32(var_4.a.x - 649f), any(vec3<bool>(true, true, true)))));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(func_3(~abs(vec2<u32>(1u, 2008u)), global0.x, Struct_2(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(u_input.d, u_input.e)), 26u)], global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(u_input.c.x, 1u, 0u)), 26u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(108246u, u_input.a), 0u), 26u)]), u_input.c.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a.x, 154f, 524f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 995f, -283f))))), Struct_2(global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(reverseBits(u_input.c.x), 26u)], Struct_1(global1.a)), global0.x);
    let var_1 = 1i;
    global2 = array<Struct_1, 26>();
    global1 = global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(1u, ~_wgslsmith_mult_u32(u_input.c.x, 1u), _wgslsmith_mult_u32(u_input.d, 17105u) ^ _wgslsmith_sub_u32(26000u, 1u)) ^ u_input.d), 26u)];
    var var_2 = global2[_wgslsmith_index_u32(~(~u_input.d), 26u)];
    return Struct_1(_wgslsmith_f_op_vec3_f32(ceil(global1.a)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    global1 = func_2();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), func_2().a.x, global1.a.x))));
    var var_1 = vec3<bool>(!any(select(select(arg_1, arg_1, true), arg_1, arg_1)), false, true);
    global2 = array<Struct_1, 26>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -322f, _wgslsmith_f_op_f32(507f + var_0.a.x), 682f));
    return Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.x, var_2.x, global1.a.x)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_2.xyz))))), global2[_wgslsmith_index_u32(arg_2, 26u)], global2[_wgslsmith_index_u32(abs(u_input.a), 26u)]);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    global1 = arg_1.a;
    global3 = abs((firstTrailingBit(vec2<i32>(-56112i, 8586i)) << (countOneBits(vec2<u32>(u_input.c.x, 0u)) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(max(vec2<i32>(global3.x, -1i), vec2<i32>(u_input.b, u_input.b)), -vec2<i32>(22749i, -8802i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, global3.x), vec2<i32>(-1i, -32667i), vec2<i32>(u_input.b, global3.x)))) << (vec2<u32>(~firstLeadingBit(20630u), u_input.a) % vec2<u32>(32u));
    var var_0 = func_2();
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, -1069f))) - arg_1.c.a.x) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1661f * -167f) + 1f)));
    var var_2 = ~10843u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(u_input.e, 26u)];
    global3 = ((vec2<i32>(i32(-1i) * -12108i, _wgslsmith_add_i32(5360i, global3.x)) << (~vec2<u32>(u_input.e, u_input.a) % vec2<u32>(32u))) << (~vec2<u32>(u_input.a, u_input.d ^ 1u) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c, ~_wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(66630u, u_input.a))), countOneBits(u_input.c ^ abs(vec2<u32>(u_input.d, 27698u)))) % vec2<u32>(32u));
    var var_1 = vec2<bool>(false, !all(vec4<bool>(!global0.x, global0.x, true, true)));
    var var_2 = func_5(true, func_1(global2[_wgslsmith_index_u32(u_input.a, 26u)], !select(vec2<bool>(true, true), vec2<bool>(false, false), global0.x), _wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.e, 57293u), ~1u)));
    global2 = array<Struct_1, 26>();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, 662f), _wgslsmith_f_op_f32(-2845f + global1.a.x), !global0.x)), _wgslsmith_div_f32(-1220f, _wgslsmith_f_op_f32(566f * global1.a.x))))), _wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.x)) * -647f)), ~firstTrailingBit(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -40432i, u_input.b, global3.x), vec4<i32>(17064i, global3.x, -15501i, 1i)))));
}

