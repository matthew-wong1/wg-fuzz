struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(404f, -1997f, 1046f);

var<private> global1: u32 = 36899u;

var<private> global2: array<bool, 32> = array<bool, 32>(false, false, true, true, true, false, false, true, false, false, false, false, false, false, true, false, true, false, false, false, true, true, true, true, false, true, true, false, false, true, true, true);

var<private> global3: array<bool, 22> = array<bool, 22>(false, true, true, false, false, true, true, true, false, false, true, false, false, false, true, false, false, false, true, false, true, true);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_sub_i32(-1i, min(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.b), max(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x))), u_input.c.x)), Struct_1(all(vec2<bool>(true, global2[_wgslsmith_index_u32(7506u, 32u)])) | global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 1u), 32u)], u_input.a.xx, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1565f * arg_0.x)))));
    var var_1 = true;
    var var_2 = Struct_2(~(-(~var_0.a & min(var_0.b.b.x, -1i))), Struct_1(var_0.b.a, abs(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, -42053i), vec2<i32>(2147483647i, 0i))), ~(~vec4<u32>(var_0.b.c.x, 60899u, 12260u, 44114u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f))));
    var var_3 = var_0.b.c.x;
    var_2 = Struct_2(var_0.a, Struct_1(var_0.b.a, var_2.b.b, vec4<u32>(~1u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.b.c.x, var_0.b.c.x, 28276u), vec4<u32>(var_0.b.c.x, 5840u, var_0.b.c.x, 11815u)), var_2.b.c.x, true), var_0.b.c.x, var_2.b.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1920f + arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2175f - -2270f)))))));
    return select(select(select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(18824u, 32u)]), vec3<bool>(true, 2147483647i != u_input.a.x, !global3[_wgslsmith_index_u32(var_2.b.c.x, 22u)]), select(select(vec3<bool>(true, var_2.b.a, global3[_wgslsmith_index_u32(21509u, 22u)]), vec3<bool>(true, var_0.b.a, var_0.b.a), vec3<bool>(var_2.b.a, var_2.b.a, global3[_wgslsmith_index_u32(var_0.b.c.x, 22u)])), !vec3<bool>(global3[_wgslsmith_index_u32(var_2.b.c.x, 22u)], var_0.b.a, var_0.b.a), !vec3<bool>(global2[_wgslsmith_index_u32(var_2.b.c.x, 32u)], var_0.b.a, false))), select(select(!vec3<bool>(true, var_2.b.a, true), select(vec3<bool>(true, var_2.b.a, true), vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 32u)], var_2.b.a), global2[_wgslsmith_index_u32(var_2.b.c.x, 32u)]), true), vec3<bool>(true || global3[_wgslsmith_index_u32(var_2.b.c.x, 22u)], var_2.b.a, global3[_wgslsmith_index_u32(~1u, 22u)]), select(false, !var_0.b.a, false == var_2.b.a)), true & any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.b.c.x, 32u)]), vec2<bool>(true, false), vec2<bool>(var_2.b.a, var_0.b.a)))), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(reverseBits(77742u), 22u)], true)), select(select(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 22u)], false, global2[_wgslsmith_index_u32(32563u, 32u)]), select(vec3<bool>(var_2.b.a, global3[_wgslsmith_index_u32(0u, 22u)], true), vec3<bool>(false, true, var_0.b.a), select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 22u)], false, global3[_wgslsmith_index_u32(var_0.b.c.x, 22u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.b.c.x, 32u)], true), global3[_wgslsmith_index_u32(0u, 22u)])), select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.c.x, 32u)], false, var_2.b.a), !vec3<bool>(var_2.b.a, global3[_wgslsmith_index_u32(var_0.b.c.x, 22u)], var_0.b.a), false)), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(var_2.b.c.x), min(1u, var_2.b.c.x)), 32u)], var_0.b.a, var_2.b.a), false));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    global1 = countOneBits(countOneBits(arg_1.c.x));
    let var_0 = Struct_1(!arg_2.x, -abs(arg_3.b.b), arg_1.c, _wgslsmith_f_op_f32(f32(-1f) * -1245f));
    global1 = _wgslsmith_dot_vec4_u32(min(select(~(~vec4<u32>(arg_3.b.c.x, arg_1.c.x, 3520u, arg_3.b.c.x)), arg_1.c, vec4<bool>(true, global3[_wgslsmith_index_u32(62804u, 22u)] & var_0.a, any(arg_2.yx), !arg_3.b.a)), arg_3.b.c), max(arg_1.c, arg_3.b.c));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, (var_0.b.x ^ (-16363i >> (arg_3.b.c.x % 32u))) ^ select(_wgslsmith_dot_vec2_i32(vec2<i32>(51315i, 2147483647i), vec2<i32>(0i, arg_3.b.b.x)), select(arg_0.x, -56592i, true), func_3(vec4<f32>(global0.x, arg_3.b.d, global0.x, var_0.d)).x), max(max(24206i, countOneBits(arg_1.b.x)), -1i), arg_0.x), reverseBits(-(~vec4<i32>(var_0.b.x, -26514i, var_0.b.x, 1i))) >> (abs(~vec4<u32>(var_0.c.x, arg_3.b.c.x, 1u, 1u)) % vec4<u32>(32u)));
    global3 = array<bool, 22>();
    return 7261u;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> f32 {
    let var_0 = false;
    let var_1 = arg_1.c.b.x;
    global2 = array<bool, 32>();
    global0 = arg_2.a.wxy;
    let var_2 = _wgslsmith_clamp_u32(arg_2.d ^ 88746u, func_4(~u_input.a, arg_2.c, select(!func_3(arg_1.a), vec3<bool>(any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(76961u, 32u)], true)), arg_3, false), select(func_3(vec4<f32>(arg_2.a.x, global0.x, global0.x, arg_1.c.d)), vec3<bool>(global2[_wgslsmith_index_u32(arg_2.d, 32u)], false, arg_1.c.a), arg_2.c.a)), Struct_2(i32(-1i) * -39141i, arg_1.c)), ~(~abs(arg_2.c.c.x ^ 0u)));
    return -1382f;
}

fn func_1() -> Struct_2 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1802f);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(max(global0.x, 1472f)), _wgslsmith_f_op_f32(func_2(vec2<bool>(global3[_wgslsmith_index_u32(11346u, 22u)], global3[_wgslsmith_index_u32(9664u, 22u)]), Struct_3(vec4<f32>(global0.x, -1103f, -333f, -1358f), 0i, Struct_1(false, vec2<i32>(-1i, -2147483647i), vec4<u32>(20858u, 1u, 22921u, 24700u), global0.x), 75217u), Struct_3(vec4<f32>(global0.x, global0.x, global0.x, -545f), u_input.a.x, Struct_1(global2[_wgslsmith_index_u32(1u, 32u)], u_input.a.zz, vec4<u32>(1u, 94925u, 72187u, 40083u), 1047f), 1u), true)), _wgslsmith_f_op_f32(global0.x - -1450f)) - vec4<f32>(_wgslsmith_f_op_f32(step(551f, 1199f)), _wgslsmith_f_op_f32(415f * global0.x), _wgslsmith_f_op_f32(767f * -528f), global0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, 1283f, -598f))))) * vec4<f32>(-1000f, -372f, _wgslsmith_f_op_f32(min(-1210f, global0.x)), -501f))), _wgslsmith_mod_i32(2147483647i, -2147483647i), Struct_1(all(vec2<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 32u)])), true)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz, _wgslsmith_add_vec2_i32(u_input.c, u_input.c)), ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c)), firstLeadingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 31514u, 31072u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(212f + _wgslsmith_f_op_f32(-global0.x)))), 0u);
    let var_3 = ~(~4294967295u);
    var var_4 = var_2.c.d;
    return Struct_2(var_2.c.b.x, Struct_1(false | !(var_2.c.d >= 1193f), _wgslsmith_add_vec2_i32(vec2<i32>(~(-4731i), u_input.b), var_2.c.b), var_2.c.c, 743f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], false), select(vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 22u)], false), vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 22u)])), select(vec3<bool>(global3[_wgslsmith_index_u32(55197u, 22u)], global2[_wgslsmith_index_u32(15302u, 32u)], global2[_wgslsmith_index_u32(44873u, 32u)]), vec3<bool>(global3[_wgslsmith_index_u32(52022u, 22u)], true, false), vec3<bool>(false, false, global3[_wgslsmith_index_u32(37297u, 22u)]))), vec3<bool>(true, true, true), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(2765u, 22u)])), !select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 32u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(40439u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)], global3[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(2310u, 32u)], global3[_wgslsmith_index_u32(7267u, 22u)]), global3[_wgslsmith_index_u32(27890u, 22u)]), false), true), select(!(!(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 22u)], false, false))), !vec3<bool>(false, !global3[_wgslsmith_index_u32(1u, 22u)], !global2[_wgslsmith_index_u32(3118u, 32u)]), !global3[_wgslsmith_index_u32(countOneBits(abs(48099u)), 22u)]), vec3<bool>(!global3[_wgslsmith_index_u32(5041u, 22u)], !(-1498f != _wgslsmith_f_op_f32(global0.x - global0.x)), !global3[_wgslsmith_index_u32(~(~4294967295u), 22u)]));
    var var_1 = 4294967295u;
    global2 = array<bool, 32>();
    let var_2 = func_1();
    global3 = array<bool, 22>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.d * global0.x), _wgslsmith_f_op_f32(-global0.x)), -234f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 32u)]), Struct_3(vec4<f32>(global0.x, -1788f, global0.x, var_2.b.d), 1i, Struct_1(var_2.b.a, var_2.b.b, var_2.b.c, global0.x), 4294967295u), Struct_3(vec4<f32>(1000f, global0.x, global0.x, 1199f), 12887i, var_2.b, var_2.b.c.x), false)), 1289f))), !(true || var_2.b.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1135f, -129f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zz - vec2<f32>(global0.x, var_2.b.d)) + _wgslsmith_f_op_vec2_f32(min(global0.zx, global0.zz))))));
    global1 = 1u;
    let var_4 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(select(u_input.a.x, -37667i, global2[_wgslsmith_index_u32(4294967295u, 32u)]), -u_input.c.x), var_2.a), Struct_1(false, select(-u_input.a.yx, ~(-var_2.b.b), select(!var_0.zz, vec2<bool>(var_2.b.a, true), func_3(vec4<f32>(var_3.x, 244f, 1384f, var_3.x)).x)), select(func_1().b.c, ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2.b.c.x, var_2.b.c.x, 1u), vec4<u32>(var_2.b.c.x, var_2.b.c.x, var_2.b.c.x, 0u)), var_0.x), -1058f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(var_4.b.c.x), func_1().b.c.x, var_2.b.c.x, 1u), vec2<f32>(528f, 1368f), var_4.b.c.x, _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(~var_2.b.c.zx, _wgslsmith_mod_vec2_u32(select(var_2.b.c.zx, vec2<u32>(var_2.b.c.x, 4294967295u), var_4.b.a), _wgslsmith_sub_vec2_u32(vec2<u32>(var_4.b.c.x, var_2.b.c.x), var_2.b.c.xz))), var_2.b.c.xz));
}

