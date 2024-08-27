struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, false, false, false, true, false, false, true, false, false, true, false, false, true);

var<private> global2: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(-1307f, 1142f, -2239f, 1675f), vec4<f32>(814f, 737f, 1094f, -117f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = ~u_input.a;
    global2 = array<vec4<f32>, 2>();
    global1 = array<bool, 15>();
    global2 = array<vec4<f32>, 2>();
    let var_1 = arg_0.a;
    return abs(_wgslsmith_div_vec2_u32(~(vec2<u32>(26987u, 50645u) >> (abs(u_input.b) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~max(vec2<u32>(var_1.a.x, var_1.a.x), vec2<u32>(var_1.a.x, arg_0.a.a.x)), vec2<u32>(abs(u_input.b.x), _wgslsmith_mod_u32(1u, arg_0.a.a.x)))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = vec4<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, arg_0.a.zy), func_3(Struct_2(Struct_1(vec4<u32>(4294967295u, 73931u, 4294967295u, 0u))), vec3<f32>(_wgslsmith_f_op_f32(trunc(148f)), _wgslsmith_div_f32(-625f, -1688f), -109f), vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, u_input.b.x), 15u)], !global1[_wgslsmith_index_u32(arg_0.a.x, 15u)], true))), min(4294967295u, 1u), _wgslsmith_div_u32(~u_input.b.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.x, arg_0.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), u_input.b)), reverseBits(_wgslsmith_mult_u32(0u, 65770u)) | ~_wgslsmith_dot_vec3_u32(arg_0.a.yzw, vec3<u32>(0u, arg_0.a.x, u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -953f) * _wgslsmith_f_op_f32(f32(-1f) * -249f));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1144f), 1f, any(!(!vec3<bool>(global1[_wgslsmith_index_u32(5016u, 15u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 15u)]))))), _wgslsmith_f_op_f32(sign(1000f)));
    return Struct_2(arg_0);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> Struct_1 {
    global0 = max(u_input.a, u_input.a);
    global0 = -2147483647i;
    var var_0 = -839f;
    var var_1 = ~0u;
    global1 = array<bool, 15>();
    return arg_1.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = ~(~(~1u));
    let var_1 = global1[_wgslsmith_index_u32(arg_1.a.a.x, 15u)];
    let var_2 = !(!vec2<bool>(true, global1[_wgslsmith_index_u32(31392u, 15u)]));
    var var_3 = ~(1u << (0u % 32u));
    let var_4 = u_input.a;
    return func_2(Struct_1(select(~select(arg_1.a.a, vec4<u32>(var_0, 119792u, 1u, 20646u), true), arg_1.a.a, any(var_2) | false)));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(-vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, u_input.a), vec3<i32>(-18062i, -2147483647i, 83634i)), u_input.a)), vec2<i32>(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(19564i, 0i, 0i), vec3<i32>(u_input.a, u_input.a, -40940i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -8539i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), u_input.a));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1322f, _wgslsmith_div_f32(-162f, 1464f), u_input.a >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(0i, u_input.a, u_input.a)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-367f, -1000f)), 1000f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(411f + 165f), 394f)) + _wgslsmith_f_op_f32(abs(1049f))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -747f);
    let var_1 = -4154i >> (~(~(~u_input.b.x)) % 32u);
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = func_6(func_5(vec3<i32>(u_input.a, -_wgslsmith_sub_i32(-1i, 13259i), 100148i), Struct_2(func_4(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], false, false), func_2(Struct_1(vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x))))), 1u ^ u_input.b.x, vec3<i32>(-countOneBits(u_input.a), u_input.a, ~u_input.a & 2147483647i)));
    global2 = array<vec4<f32>, 2>();
    global2 = array<vec4<f32>, 2>();
    var var_1 = Struct_2(Struct_1(vec4<u32>(~u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b | vec2<u32>(1u, 0u), vec2<u32>(u_input.b.x, u_input.b.x)), abs(select(43506u, u_input.b.x, false)), max(1u & u_input.b.x, 1u))));
    let var_2 = var_0.a;
    return Struct_2(Struct_1(~var_1.a.a));
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    let var_0 = !(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1, 15u)], arg_2, arg_2, arg_2), select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_3.a.a.x, 15u)], arg_2, global1[_wgslsmith_index_u32(arg_1, 15u)]), vec4<bool>(arg_2, true, arg_2, global1[_wgslsmith_index_u32(1u, 15u)]), global1[_wgslsmith_index_u32(1u, 15u)]), global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), !(!vec4<bool>(false, arg_2, global1[_wgslsmith_index_u32(14238u, 15u)], global1[_wgslsmith_index_u32(arg_3.a.a.x, 15u)])), vec4<bool>(true, true && global1[_wgslsmith_index_u32(84898u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], any(vec2<bool>(false, false)))));
    var var_1 = Struct_1(arg_3.a.a);
    let var_2 = 1994f;
    global1 = array<bool, 15>();
    global2 = array<vec4<f32>, 2>();
    return Struct_2(Struct_1(vec4<u32>(~func_1().a.a.x, ~(~22200u), ~arg_1 ^ 24957u, func_1().a.a.x)));
}

fn func_8(arg_0: i32, arg_1: u32, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = any(select(!select(select(vec3<bool>(global1[_wgslsmith_index_u32(75161u, 15u)], global1[_wgslsmith_index_u32(arg_2.a.a.x, 15u)], true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(51310u, 15u)]), global1[_wgslsmith_index_u32(arg_2.a.a.x, 15u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(28006u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)]), any(vec2<bool>(true, true))), select(select(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(14738u, 15u)], global1[_wgslsmith_index_u32(arg_2.a.a.x, 15u)]), vec3<bool>(global1[_wgslsmith_index_u32(36686u, 15u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(85676u, 15u)], false, global1[_wgslsmith_index_u32(arg_1, 15u)])), !vec3<bool>(false, global1[_wgslsmith_index_u32(arg_1, 15u)], true), vec3<bool>(false, false, true)), vec3<bool>(!global1[_wgslsmith_index_u32(arg_2.a.a.x, 15u)], any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])), !global1[_wgslsmith_index_u32(arg_1, 15u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], true))), vec3<bool>(global1[_wgslsmith_index_u32(~21375u, 15u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 3011u), 15u)], select(global1[_wgslsmith_index_u32(0u, 15u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a.a.x, arg_2.a.a.x), vec2<u32>(arg_1, 1u)), 15u)], !global1[_wgslsmith_index_u32(57288u, 15u)]))));
    return vec3<f32>(-599f, -719f, -2391f);
}

fn func_9(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(~func_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 48004u, 4294967295u))).a.a.x << (_wgslsmith_mult_u32(~63184u, ~u_input.b.x) % 32u), 15u)], global1[_wgslsmith_index_u32(45176u, 15u)], false);
    var var_1 = _wgslsmith_f_op_f32(346f * arg_0.x);
    var var_2 = global1[_wgslsmith_index_u32(~firstLeadingBit(~u_input.b.x), 15u)];
    let var_3 = func_7(-34249i, ~1u, var_0.x, func_5(_wgslsmith_add_vec3_i32(-vec3<i32>(-48243i, -28804i, 3847i), vec3<i32>(-1i, -2147483647i, u_input.a)) >> (vec3<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 4294967295u) % vec3<u32>(32u)), func_1(), ~(func_1().a.a.x & u_input.b.x), -select(vec3<i32>(u_input.a, -2147483647i, -2147483647i), ~vec3<i32>(-1i, u_input.a, u_input.a), vec3<bool>(var_0.x, true, var_0.x))));
    var var_4 = -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 32125i) << (var_3.a.a % vec4<u32>(32u)), -vec4<i32>(u_input.a, u_input.a, 54485i, u_input.a)) >> (~(~(var_3.a.a ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 44643u, 138754u, u_input.b.x), vec4<u32>(51372u, 4294967295u, 26458u, u_input.b.x)))) % vec4<u32>(32u));
    return Struct_2(var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_9(_wgslsmith_f_op_vec3_f32(func_8(-26653i, u_input.b.x, func_7(~(~29872i), _wgslsmith_div_u32(~u_input.b.x, u_input.b.x >> (0u % 32u)), true && !global1[_wgslsmith_index_u32(u_input.b.x, 15u)], func_1()))));
    var var_1 = func_1();
    global0 = u_input.a;
    var var_2 = var_0;
    var var_3 = var_0.a.a.xyy;
    var var_4 = func_6(func_7(~(~18286i), func_6(Struct_2(Struct_1(vec4<u32>(var_0.a.a.x, var_0.a.a.x, 12248u, var_1.a.a.x)))).a.a.x, global1[_wgslsmith_index_u32(592u, 15u)], func_2(Struct_1(vec4<u32>(u_input.b.x, 77455u, u_input.b.x, 0u))))).a;
    var var_5 = any(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(24776u, 15u)]), false), any(vec3<bool>(true, global1[_wgslsmith_index_u32(75113u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]))), !vec2<bool>(global1[_wgslsmith_index_u32(var_3.x, 15u)], global1[_wgslsmith_index_u32(var_4.a.x, 15u)]), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(var_4.a.x, 15u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(var_4.a.x, 15u)], global1[_wgslsmith_index_u32(1u, 15u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(1u, 15u)])), global1[_wgslsmith_index_u32(61793u, 15u)])));
    let var_6 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), countOneBits(-2147483647i)), ~(~32728i), u_input.a), -vec3<i32>(-1970i, u_input.a, u_input.a) >> (~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.a.x, 42689u, var_2.a.a.x), var_2.a.a.zyw) % vec3<u32>(32u))), _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 45131i, u_input.a), max(vec3<i32>(u_input.a, u_input.a, -2147483647i), ~vec3<i32>(-19455i, u_input.a, -1i)))), u_input.a, -1i);
    var var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1504f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1120f, -910f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-461f, 515f)), _wgslsmith_f_op_f32(f32(-1f) * -872f))), true && (_wgslsmith_f_op_f32(ceil(750f)) <= _wgslsmith_div_f32(1229f, 495f)))), u_input.a);
}

