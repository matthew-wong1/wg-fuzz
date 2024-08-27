struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, -2574f, -1123f);

var<private> global1: array<Struct_5, 20>;

var<private> global2: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false));

var<private> global3: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(793f, -382f, -1376f, 343f), vec4<f32>(-524f, 110f, 864f, 1069f), vec4<f32>(-471f, -500f, 734f, 170f), vec4<f32>(914f, 1000f, 920f, -491f), vec4<f32>(-174f, 1306f, -1000f, -1257f), vec4<f32>(-347f, -1645f, -939f, 1303f), vec4<f32>(406f, 352f, 762f, 559f), vec4<f32>(1696f, 624f, 1607f, -655f), vec4<f32>(-501f, -1002f, -1057f, 1007f), vec4<f32>(1732f, 259f, -357f, -1351f), vec4<f32>(-119f, -244f, 1604f, -454f), vec4<f32>(616f, -1082f, 1000f, 1492f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = !(false == arg_0);
    let var_1 = u_input.a;
    let var_2 = 1099f;
    global2 = array<vec4<bool>, 6>();
    let var_3 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, 15358i), var_1)), vec2<i32>(26070i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_1, 1i, var_1), _wgslsmith_div_vec4_i32(vec4<i32>(-4475i, -3544i, 5028i, var_1), vec4<i32>(0i, u_input.a, 1i, -38076i)))));
    return u_input.b.x;
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> f32 {
    let var_0 = Struct_4(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], 35073i, arg_0.a.c);
    global3 = array<vec4<f32>, 12>();
    global0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(215f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))))));
    global2 = array<vec4<bool>, 6>();
    global2 = array<vec4<bool>, 6>();
    return global0.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<f32>) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 20u)];
    global0 = arg_0.c.wxw;
    var var_1 = func_2(_wgslsmith_f_op_f32(-arg_0.a.b) != _wgslsmith_f_op_f32(-900f * global0.x));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], var_0.a.b, var_0.a.c), global0.x, var_0.c), !var_0.a.c)))), -673f, -867f);
    global1 = array<Struct_5, 20>();
    return select(!(!arg_0.d.d), any(select(!var_0.c.c.yy, !select(arg_0.e, arg_0.e, var_0.c.c.ww), arg_1.x)), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(!all(vec2<bool>(any(vec3<bool>(true, false, false)), true)), !(false | !func_1(Struct_3(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, 25972u, 14203u), global0.x, 17409u, true), false, global3[_wgslsmith_index_u32(19179u, 12u)], Struct_1(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), global0.x, 0u, true), vec2<bool>(true, true)), vec3<bool>(false, true, true), vec3<f32>(global0.x, 805f, global0.x))), true);
    var var_1 = !global2[_wgslsmith_index_u32((0u ^ (u_input.b.x << (~u_input.b.x % 32u))) << (~(~u_input.b.x) % 32u), 6u)];
    let var_2 = Struct_2(~(-1i), Struct_1(countOneBits(vec4<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, func_2(false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1190f)))), u_input.b.x, select(any(select(vec3<bool>(var_0.x, var_1.x, true), vec3<bool>(true, var_0.x, var_1.x), var_0.x)), func_1(Struct_3(Struct_1(vec4<u32>(0u, 54112u, u_input.b.x, 63256u), -1062f, 0u, false), false, vec4<f32>(1965f, 443f, global0.x, global0.x), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), global0.x, u_input.b.x, var_1.x), vec2<bool>(true, false)), vec3<bool>(true, var_1.x, false), vec3<f32>(global0.x, global0.x, -832f)) && true, all(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, true), var_1.x)))), vec4<bool>(all(vec3<bool>(true, true, true)), ~u_input.b.x >= _wgslsmith_add_u32(min(30547u, 4294967295u), _wgslsmith_div_u32(16418u, u_input.b.x)), true || (~14335u == u_input.b.x), all(var_0)), Struct_1(select(~vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 4294967295u) & select(vec4<u32>(u_input.b.x, 31750u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 10116u, 57640u, 38270u), global2[_wgslsmith_index_u32(0u, 6u)]), select(vec4<u32>(1u, 62804u, 55978u, u_input.b.x), max(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u), vec4<u32>(0u, 86443u, 21129u, u_input.b.x)), all(var_1.yx)), !(!var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(816f - _wgslsmith_f_op_f32(f32(-1f) * -439f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(393f, global0.x)))), max(max(u_input.b.x, u_input.b.x), ~4294967295u) | 26255u, var_0.x));
    var var_3 = _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, -7190i)), -max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(var_2.a, -8170i))), vec2<i32>(_wgslsmith_mod_i32(abs(i32(-1i) * -1i), _wgslsmith_add_i32(u_input.a, var_2.a) & firstLeadingBit(-5406i)), 1i));
    var var_4 = vec3<bool>(false, var_0.x, var_3.x >= countOneBits(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.a, u_input.a, var_3.x), 128150i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, -2147483647i, var_2.a), vec3<i32>(u_input.a, 2147483647i, var_3.x)) | ~vec3<i32>(27826i, 2147483647i, -67229i)), 2147483647i);
}

