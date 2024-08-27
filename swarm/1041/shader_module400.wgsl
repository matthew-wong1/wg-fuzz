struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-1457f, 237f, -1006f), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, false)));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, true));

var<private> global3: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(545f, -435f), vec2<f32>(529f, -251f), vec2<f32>(-686f, -674f), vec2<f32>(-767f, 214f), vec2<f32>(-936f, -527f));

var<private> global4: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-49073i, 2147483647i, -23851i, 709i), vec4<i32>(0i, -12419i, 2147483647i, 5457i), vec4<i32>(24525i, 0i, -855i, -25799i), vec4<i32>(62869i, 13131i, -29325i, -3507i), vec4<i32>(1i, -96259i, 1i, -1i), vec4<i32>(-1i, 21171i, i32(-2147483648), -1i), vec4<i32>(i32(-2147483648), -40599i, -1i, -46663i), vec4<i32>(10061i, 4721i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, 6525i, i32(-2147483648), 30875i), vec4<i32>(-45715i, -1i, -3401i, i32(-2147483648)), vec4<i32>(20886i, 1519i, 2147483647i, 0i), vec4<i32>(7299i, 1i, 39596i, 0i), vec4<i32>(i32(-2147483648), 1i, 0i, -10451i), vec4<i32>(-18674i, -1919i, i32(-2147483648), -1i), vec4<i32>(19276i, -9323i, -11975i, 1i), vec4<i32>(-1i, -71978i, -62618i, -35541i), vec4<i32>(48970i, -14210i, 62149i, 29943i), vec4<i32>(0i, 1i, -1i, 0i), vec4<i32>(1i, -31846i, -48588i, 7664i), vec4<i32>(950i, 1i, -1i, -898i), vec4<i32>(100i, 97462i, 2147483647i, -38200i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> f32 {
    global3 = array<vec2<f32>, 5>();
    global3 = array<vec2<f32>, 5>();
    global4 = array<vec4<i32>, 21>();
    let var_0 = vec2<u32>(firstTrailingBit(1u), abs(~_wgslsmith_mod_u32(u_input.a.x, arg_1.c.x))) << (arg_1.c % vec2<u32>(32u));
    global3 = array<vec2<f32>, 5>();
    return global0.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec2<u32> {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-5145i, 0i, 61029i), vec3<i32>(90019i, 41542i, -1i)), ~vec3<i32>(2147483647i, 7338i, -41495i)), _wgslsmith_sub_i32(i32(-1i) * -1936i, 1i)), max(abs(~(-18655i)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1143i, -1i, 28598i), global4[_wgslsmith_index_u32(38833u, 21u)]), 1i, global2.a.x & false))), 2147483647i, countOneBits(~(-1i)) | _wgslsmith_dot_vec2_i32(-(vec2<i32>(0i, -5278i) >> (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(-22371i, 37352i) << (arg_0.yz % vec2<u32>(32u)), vec2<i32>(-60168i, 2147483647i))));
    let var_1 = var_0.x << (select(u_input.a.x, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), ~1u), all(vec2<bool>(true, arg_2.b.a.x))) % 32u);
    global1 = Struct_2(arg_3.a, arg_2.b, global0.b, Struct_1(vec4<bool>(all(vec3<bool>(true, false, arg_3.c.a.x)), arg_2.b.a.x, all(global0.b.a.wyy), arg_2.c.a.x)));
    let var_2 = var_0.yx;
    var var_3 = arg_3;
    return vec2<u32>(firstTrailingBit(arg_0.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.a.x, max(arg_0.x, arg_0.x)) << (firstLeadingBit(~u_input.a.x) % 32u), 83214u, 11539u));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~select(func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 49552u, u_input.a.x), vec4<u32>(51227u, 1u, u_input.a.x, u_input.a.x)), ~20884u, u_input.a.x & 0u), vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(func_3(arg_1.x, Struct_3(false, vec2<bool>(arg_2.a.x, false), u_input.a))), _wgslsmith_f_op_f32(func_3(53715i, Struct_3(global2.a.x, vec2<bool>(global0.d.a.x, global0.d.a.x), u_input.a)))), Struct_2(_wgslsmith_f_op_vec3_f32(-global1.a), Struct_1(global2.a), Struct_1(vec4<bool>(false, arg_2.a.x, global2.a.x, false)), Struct_1(arg_2.a)), Struct_2(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(global0.a.x, global1.a.x, 1695f)), Struct_1(vec4<bool>(true, false, false, arg_2.a.x)), Struct_1(global2.a), Struct_1(vec4<bool>(true, true, true, true)))), vec2<u32>(~u_input.a.x, 0u) >> (_wgslsmith_div_vec2_u32(~u_input.a, select(u_input.a, u_input.a, vec2<bool>(arg_0.a.x, global1.c.a.x))) % vec2<u32>(32u)), vec2<bool>(true, !all(global0.b.a)));
    var var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-569f))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-212f * global1.a.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(364f, 228f, global1.a.x), select(arg_0.a.wyy, vec3<bool>(false, false, arg_2.a.x), arg_2.a.xxw))) * _wgslsmith_f_op_vec3_f32(-global0.a))))));
    return Struct_1(global0.c.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = vec2<bool>(true, false);
    var var_1 = -(i32(-1i) * -15723i);
    var var_2 = Struct_1(!global0.b.a);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-405f, global1.a.x, 1445f), _wgslsmith_f_op_vec3_f32(vec3<f32>(759f, global1.a.x, 679f) * vec3<f32>(-1173f, global1.a.x, global1.a.x)), global1.c.a.zxw)))), Struct_1(global2.a), global1.b, func_2(Struct_1(!var_2.a), arg_2.xw, Struct_1(arg_0.a)));
    let var_3 = func_2(Struct_1(!func_2(func_2(Struct_1(arg_0.a), vec2<i32>(arg_2.x, 17153i), global1.c), arg_2.yx, Struct_1(var_2.a)).a), vec2<i32>(min(-(-49770i ^ arg_2.x), ~arg_2.x), ~arg_2.x), Struct_1(vec4<bool>(~arg_1.x >= u_input.a.x, global0.b.a.x, global1.d.a.x, global2.a.x)));
    return ~abs(_wgslsmith_sub_i32(1i, 35981i));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    var var_0 = vec2<i32>(firstLeadingBit(select(0i, func_5(func_2(global0.b, vec2<i32>(-6838i, -30975i), Struct_1(global2.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, arg_1, 674u, u_input.a.x), vec4<u32>(u_input.a.x, 1468u, u_input.a.x, 0u)), global4[_wgslsmith_index_u32(0u, 21u)]), func_2(Struct_1(global1.d.a), -vec2<i32>(arg_0, arg_0), func_2(Struct_1(vec4<bool>(arg_2.x, global0.c.a.x, true, true)), vec2<i32>(arg_0, arg_0), global0.b)).a.x)), ~(countOneBits(_wgslsmith_div_i32(arg_0, arg_0)) >> (0u % 32u)));
    var var_1 = ~1u == arg_1;
    global2 = arg_3.b;
    global1 = arg_3;
    var var_2 = arg_1;
    return !(!global2.a.x);
}

fn func_6(arg_0: i32, arg_1: bool) -> vec3<f32> {
    global1 = Struct_2(global1.a, global1.b, Struct_1(vec4<bool>(!global1.c.a.x, global2.a.x, 1428f < _wgslsmith_f_op_f32(global1.a.x - 1884f), true)), Struct_1(!global2.a));
    let var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 21u)];
    global3 = array<vec2<f32>, 5>();
    var var_1 = true;
    let var_2 = _wgslsmith_add_u32(u_input.a.x & u_input.a.x, abs(~(~u_input.a.x)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-491f, _wgslsmith_f_op_f32(-global0.a.x), global1.a.x))), _wgslsmith_f_op_vec3_f32(global0.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(round(-1917f)), _wgslsmith_f_op_f32(-973f + -234f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -13820i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_mod_i32(select(var_0, -8147i, global2.a.x), ~var_0) ^ 35524i, !func_1(_wgslsmith_dot_vec4_i32(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], global4[_wgslsmith_index_u32(24243u, 21u)]), u_input.a.x, !global2.a, Struct_2(global1.a, global1.d, Struct_1(global0.b.a), Struct_1(vec4<bool>(true, global1.c.a.x, global2.a.x, false)))))), func_2(func_2(Struct_1(global1.b.a), -(vec2<i32>(var_0, -56785i) & vec2<i32>(8234i, var_0)), func_2(global1.d, vec2<i32>(var_0, 2147i), Struct_1(vec4<bool>(global1.b.a.x, global1.b.a.x, global0.c.a.x, true)))), vec2<i32>(_wgslsmith_mult_i32(-44949i, var_0), -(~var_0)), Struct_1(vec4<bool>(false, !global1.c.a.x, func_1(var_0, 32468u, vec4<bool>(global0.c.a.x, true, false, false), Struct_2(vec3<f32>(535f, -2949f, -359f), Struct_1(vec4<bool>(true, true, global0.c.a.x, global2.a.x)), global1.b, global1.c)), false))), Struct_1(select(global1.b.a, vec4<bool>(true, global1.d.a.x || global1.d.a.x, true, global2.a.x), vec4<bool>(global2.a.x, global1.b.a.x, true, !global0.d.a.x))), Struct_1(select(!func_2(global0.b, vec2<i32>(0i, var_0), global0.d).a, !(!global0.b.a), true)));
    global3 = array<vec2<f32>, 5>();
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(877f, 50022u);
}

