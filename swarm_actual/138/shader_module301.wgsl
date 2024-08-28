struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<bool, 26> = array<bool, 26>(false, false, false, true, true, false, true, true, false, true, false, false, false, true, false, true, true, true, false, true, false, false, false, true, false, false);

var<private> global2: i32 = -20072i;

var<private> global3: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<f32>(-350f, 2193f), vec3<u32>(89610u, 0u, 18819u), 2288u, true, false), Struct_1(vec2<f32>(1475f, 1000f), vec3<u32>(4294967295u, 19258u, 22587u), 26010u, false, true), Struct_1(vec2<f32>(-1000f, -797f), vec3<u32>(0u, 4294967295u, 0u), 1u, true, true), Struct_1(vec2<f32>(1657f, -775f), vec3<u32>(4294967295u, 4294967295u, 17511u), 0u, false, false), Struct_1(vec2<f32>(818f, 347f), vec3<u32>(14000u, 27038u, 4294967295u), 34821u, true, true), Struct_1(vec2<f32>(1360f, -840f), vec3<u32>(0u, 11371u, 33255u), 0u, true, true), Struct_1(vec2<f32>(1381f, -1233f), vec3<u32>(1u, 96420u, 1u), 0u, false, false), Struct_1(vec2<f32>(841f, 720f), vec3<u32>(4294967295u, 54486u, 5401u), 1u, false, false), Struct_1(vec2<f32>(245f, 563f), vec3<u32>(73369u, 11559u, 1u), 27825u, true, false), Struct_1(vec2<f32>(1440f, -342f), vec3<u32>(1u, 58575u, 4294967295u), 1u, false, false), Struct_1(vec2<f32>(2109f, 1088f), vec3<u32>(20472u, 85523u, 34386u), 0u, true, true), Struct_1(vec2<f32>(-1000f, 1847f), vec3<u32>(52231u, 0u, 4294967295u), 4294967295u, true, false), Struct_1(vec2<f32>(1062f, 734f), vec3<u32>(1u, 18049u, 14869u), 36062u, false, false), Struct_1(vec2<f32>(-200f, -2372f), vec3<u32>(1u, 22341u, 4294967295u), 23122u, true, true));

var<private> global4: Struct_1 = Struct_1(vec2<f32>(265f, 455f), vec3<u32>(37010u, 13519u, 0u), 0u, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = ~(~global4.b.yx);
    let var_1 = -_wgslsmith_sub_vec3_i32(u_input.a, ~u_input.a << ((global4.b ^ vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))) << (~vec3<u32>(var_0.x, ~(34453u << (1u % 32u)), 56573u) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1469f - global0[_wgslsmith_index_u32(global4.b.x, 31u)]), -765f), global4.a.x), global4.a, !select(!arg_0.x, !arg_2.x, arg_0.x))), vec3<u32>(global4.b.x, (_wgslsmith_dot_vec4_u32(vec4<u32>(101153u, 42773u, 63642u, global4.b.x), vec4<u32>(85944u, global4.c, 4294967295u, 0u)) >> (~4294967295u % 32u)) | ~var_0.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(global4.b.x, ~14889u), reverseBits(_wgslsmith_clamp_u32(global4.c, var_0.x, 0u)))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, 4823u, global4.c, var_0.x), ~(vec4<u32>(1u, global4.b.x, 1u, 49777u) & vec4<u32>(global4.c, var_0.x, 1u, global4.c))), arg_0.x, select(true, !((global0[_wgslsmith_index_u32(global4.c, 31u)] > global4.a.x) || (arg_2.x | arg_2.x)), any(vec2<bool>(true, true))));
    var var_3 = arg_1;
    let var_4 = 4294967295u;
    return vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(var_0.x & ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c, var_2.c), vec2<u32>(37696u, var_4))), 26u)], _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_4, 71698u, var_2.b.x, var_0.x)), vec4<u32>(_wgslsmith_clamp_u32(9153u, var_0.x, 74279u), 0u, 74930u, ~var_0.x)) == var_0.x, true, ~74407u >= min(4294967295u, ~(~var_4)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: bool) -> u32 {
    global4 = global3[_wgslsmith_index_u32(~(~global4.c), 14u)];
    let var_0 = false;
    var var_1 = Struct_1(global4.a, firstTrailingBit(~_wgslsmith_mod_vec3_u32(vec3<u32>(2498u, global4.c, global4.b.x), vec3<u32>(global4.c, 4294967295u, 741u))) | min(vec3<u32>(max(global4.b.x, global4.c), 0u, global4.b.x ^ global4.c), ~vec3<u32>(4294967295u, global4.c, global4.b.x)), global4.b.x, !var_0, -2147483647i == arg_0);
    var_1 = Struct_1(var_1.a, abs(var_1.b) | vec3<u32>(var_1.b.x, 22109u, _wgslsmith_div_u32(1u >> (global4.c % 32u), ~0u)), 22852u, _wgslsmith_sub_u32(firstTrailingBit(~global4.c), ~var_1.b.x) >= (~(~var_1.c) | 1u), global1[_wgslsmith_index_u32(global4.b.x, 26u)]);
    let var_2 = 1i;
    return ~abs(_wgslsmith_sub_u32(23094u, abs(_wgslsmith_dot_vec2_u32(global4.b.zy, vec2<u32>(58970u, 72147u)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> bool {
    global4 = Struct_1(arg_1.a, global4.b, func_3(firstLeadingBit(arg_3.x), global4.a.x, global1[_wgslsmith_index_u32(39097u, 26u)]), ((true != any(vec4<bool>(false, false, global4.e, global1[_wgslsmith_index_u32(arg_1.b.x, 26u)]))) & true) | true, false);
    global3 = array<Struct_1, 14>();
    let var_0 = Struct_2(arg_1, true);
    global3 = array<Struct_1, 14>();
    global4 = arg_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(385f, global4.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-650f, -1796f))), global4.e)) - vec2<f32>(_wgslsmith_f_op_f32(-1780f - global0[_wgslsmith_index_u32(global4.b.x, 31u)]), _wgslsmith_f_op_f32(trunc(global4.a.x)))), vec2<f32>(_wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(8104u, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f) + _wgslsmith_f_op_f32(-global4.a.x))))), global4.b, global4.c, ~(42650i >> (global4.c % 32u)) > u_input.c, true);
    let var_0 = select(select(vec4<bool>(false, !global4.e, any(select(vec2<bool>(false, global1[_wgslsmith_index_u32(40077u, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(41328u, 26u)], global4.e), global1[_wgslsmith_index_u32(0u, 26u)])), true), vec4<bool>(global4.e, global4.e, !all(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 26u)], true, global1[_wgslsmith_index_u32(1u, 26u)])), true), !func_1(select(vec4<bool>(global1[_wgslsmith_index_u32(global4.c, 26u)], true, global1[_wgslsmith_index_u32(112925u, 26u)], global1[_wgslsmith_index_u32(global4.b.x, 26u)]), vec4<bool>(true, true, true, true), false), ~1i, vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global4.d, global4.e, global4.d))), vec4<bool>(_wgslsmith_f_op_f32(abs(global4.a.x)) < 726f, !global1[_wgslsmith_index_u32(global4.b.x, 26u)], false, all(vec4<bool>(true, false, func_2(u_input.a.x, Struct_1(global4.a, global4.b, global4.b.x, global4.d, true), -55898i, u_input.a), global1[_wgslsmith_index_u32(1u, 26u)]))), vec4<bool>(!func_2(~(-2147483647i), Struct_1(global4.a, global4.b, 4294967295u, global1[_wgslsmith_index_u32(global4.b.x, 26u)], false), u_input.b, vec3<i32>(-1i, -24743i, 0i)), true, global4.d, !any(vec4<bool>(global1[_wgslsmith_index_u32(global4.c, 26u)], false, false, global1[_wgslsmith_index_u32(global4.c, 26u)]))));
    var var_1 = vec3<u32>(global4.b.x, global4.c, 4294967295u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.x, -1079f)), vec2<f32>(-1291f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(global4.a.x, -537f))))), var_0.x)), ~reverseBits(vec3<u32>(0u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 21556u, 1u, 54428u), vec4<u32>(4294967295u, 28260u, 99154u, var_1.x)))), 1u, all(func_1(vec4<bool>(true, var_1.x <= var_1.x, true, func_2(u_input.a.x, Struct_1(vec2<f32>(201f, -489f), vec3<u32>(global4.c, 0u, global4.c), var_1.x, true, global4.d), -4182i, vec3<i32>(u_input.b, u_input.a.x, u_input.c))), -u_input.a.x, !var_0).xzz), true);
    var var_3 = _wgslsmith_mod_vec3_i32(u_input.a, ~_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(~u_input.a, u_input.a << (global4.b % vec3<u32>(32u))), u_input.a));
    global2 = -abs(_wgslsmith_mod_i32(reverseBits(var_3.x), _wgslsmith_div_i32(u_input.c, u_input.c))) << (_wgslsmith_mod_u32(_wgslsmith_add_u32(global4.c, ~32814u), var_2.c) % 32u);
    let var_4 = Struct_2(var_2, func_1(select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.b.x, 26u)], false, var_0.x), var_0, vec4<bool>(false, true, global1[_wgslsmith_index_u32(85528u, 26u)], var_0.x)), var_0, all(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 26u)], false, var_0.x, false))), abs(var_3.x), !(!vec4<bool>(var_0.x, false, false, var_0.x))).x);
    let var_5 = var_2.a;
    global4 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-836f * var_4.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f * 104f)), _wgslsmith_f_op_f32(var_5.x * -919f), 953f)), u_input.b);
}

