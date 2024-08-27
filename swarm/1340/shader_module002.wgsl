struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(false, true, true, false, false, true, false, true, true, true, true, false, true, false, true, false, false, false, true, true, true, false, true, true, true, true);

var<private> global1: bool;

var<private> global2: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-1i, vec3<i32>(61876i, i32(-2147483648), i32(-2147483648)), false), Struct_2(25296i, vec3<i32>(1i, 24594i, 2147483647i), true), Struct_2(8531i, vec3<i32>(1i, 2147483647i, 0i), true), Struct_2(-25917i, vec3<i32>(-40208i, 29661i, 9589i), true), Struct_2(i32(-2147483648), vec3<i32>(i32(-2147483648), -1i, -1i), false), Struct_2(0i, vec3<i32>(-1i, 1i, 0i), true), Struct_2(4280i, vec3<i32>(-24192i, -47089i, 29174i), true), Struct_2(2147483647i, vec3<i32>(-1i, -1i, -52994i), false), Struct_2(54543i, vec3<i32>(-1i, -1i, 15278i), false), Struct_2(i32(-2147483648), vec3<i32>(-72423i, 13058i, 19200i), true), Struct_2(-17317i, vec3<i32>(26583i, i32(-2147483648), -1i), true), Struct_2(-91272i, vec3<i32>(-1i, -24169i, 2147483647i), true), Struct_2(-15982i, vec3<i32>(44486i, -1i, 22386i), false), Struct_2(-14636i, vec3<i32>(0i, i32(-2147483648), -24819i), false), Struct_2(6091i, vec3<i32>(-1i, -30056i, -1259i), true), Struct_2(-513i, vec3<i32>(-9300i, 987i, -20315i), false), Struct_2(1i, vec3<i32>(-60057i, -3075i, 55472i), false), Struct_2(0i, vec3<i32>(-85842i, i32(-2147483648), -15890i), false));

var<private> global3: Struct_4 = Struct_4(vec4<f32>(1384f, 129f, -204f, -348f), 4294967295u, vec3<i32>(-67531i, i32(-2147483648), 0i), true, 1380f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec4<f32> {
    let var_0 = (u_input.c.x | min(~(~global3.b), global3.b)) ^ ~u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global3.a.yw), 1u);
    let var_2 = arg_1.x;
    var var_3 = -_wgslsmith_add_i32(-(firstLeadingBit(50348i) | countOneBits(global3.c.x)), _wgslsmith_mult_i32(abs(-1i | global3.c.x), global3.c.x));
    var var_4 = Struct_3(~(abs(~u_input.c) & select(countOneBits(vec4<u32>(global3.b, var_0, var_1.b, u_input.e)), select(vec4<u32>(u_input.e, global3.b, 22412u, var_1.b), vec4<u32>(u_input.d, global3.b, 4294967295u, 10831u), global3.d), select(vec4<bool>(true, arg_1.x, global0[_wgslsmith_index_u32(global3.b, 26u)], arg_1.x), vec4<bool>(arg_0, true, var_2, false), arg_0))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.a));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>) -> vec3<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))) - _wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-325f)))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(trunc(-1000f))), arg_1.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, global3.a.x, var_0.x, arg_1.x))) + arg_1)), ~(~(~_wgslsmith_dot_vec2_u32(u_input.c.xw, vec2<u32>(55289u, 1u)))), ~u_input.b.yxx, _wgslsmith_dot_vec2_i32(global3.c.zy, ~vec2<i32>(2147483647i, -1i)) > firstTrailingBit(arg_0), var_0.x);
    global0 = array<bool, 26>();
    let var_2 = true;
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-318f - global3.e) + _wgslsmith_f_op_f32(f32(-1f) * -1253f))), var_1.a.xz), 4294967295u);
    return vec3<i32>(_wgslsmith_div_i32(43448i, ~1i), -61810i, u_input.b.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global3.a, vec4<f32>(global3.e, -410f, global3.e, global3.a.x))))), countOneBits(4294967295u), global3.c, true, 976f);
    var var_1 = true;
    global3 = Struct_4(global3.a, reverseBits(select(_wgslsmith_mult_u32(14223u, 0u), 1u, select(global0[_wgslsmith_index_u32(var_0.b, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)], global3.d))) ^ min(4294967295u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 44324u), 75863u)), countOneBits(select(vec3<i32>(~global3.c.x, 2147483647i, global3.c.x | u_input.b.x), func_4(var_0.c.x, _wgslsmith_f_op_vec4_f32(func_3(global3.d, vec3<bool>(var_0.d, false, false)))), global3.d)), -(~(~var_0.c.x)) > reverseBits(~(-2147483647i & global3.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.e, 3152f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * global3.a.x)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3(1u > ~var_0.b, select(select(vec3<bool>(global0[_wgslsmith_index_u32(global3.b, 26u)], var_0.d, true), vec3<bool>(global3.d, global3.d, var_0.d), false), select(!vec3<bool>(true, global0[_wgslsmith_index_u32(global3.b, 26u)], true), !vec3<bool>(false, global0[_wgslsmith_index_u32(16386u, 26u)], global3.d), var_0.d), vec3<bool>(any(vec2<bool>(false, false)), true, false)))).yw, ~(~u_input.e));
    let var_3 = global2[_wgslsmith_index_u32(var_2.b, 18u)];
    return Struct_3(~(vec4<u32>(70546u, _wgslsmith_dot_vec2_u32(vec2<u32>(80288u, var_2.b), vec2<u32>(u_input.d, u_input.e)), min(var_0.b, var_2.b), _wgslsmith_mod_u32(4294967295u, 26655u)) & (~vec4<u32>(var_0.b, global3.b, global3.b, 12869u) >> (vec4<u32>(global3.b, 7622u, 15748u, var_0.b) % vec4<u32>(32u)))));
}

fn func_1() -> u32 {
    var var_0 = min(firstLeadingBit(~16709i), 27149i);
    var var_1 = u_input.b.wy;
    let var_2 = func_2();
    global1 = true;
    let var_3 = func_2();
    return 4294967295u;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_2 {
    global0 = array<bool, 26>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.e, -1238f)));
    global0 = array<bool, 26>();
    global3 = arg_2;
    let var_1 = select(u_input.b, max(vec4<i32>(firstTrailingBit(arg_2.c.x) >> (abs(21026u) % 32u), _wgslsmith_add_i32(-1127i, _wgslsmith_sub_i32(u_input.b.x, 15607i)), _wgslsmith_mod_i32(arg_1.x, abs(23365i)), ~u_input.a), max(~(-vec4<i32>(arg_1.x, arg_2.c.x, arg_2.c.x, -17090i)), ~countOneBits(u_input.b))), !(!arg_2.d));
    return global2[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(23444u, arg_0.b), 51864u), arg_2.b)), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 18>();
    var var_0 = vec3<bool>(!global3.d, true, true);
    let var_1 = _wgslsmith_f_op_f32(-global3.e);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global3.c, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, 40i) ^ vec3<i32>(u_input.a, -1i, 2147483647i), max(vec3<i32>(62186i, global3.c.x, -1i) ^ u_input.b.zzy, reverseBits(u_input.b.xyx)))), global3.c.x);
    var var_3 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(round(global3.a.zx)), func_1()), -(~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zw, global3.c.xy), -2147483647i)), Struct_4(vec4<f32>(var_1, 1f, var_1, global3.e), ~(~global3.b | 1u), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_div_i32(-2147483647i, global3.c.x)), max(0i, 53673i), 2147483647i), false, global3.a.x));
    var_3 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))), 4294967295u), max(global3.c.yz, var_3.b.xy), Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global3.a, global3.a, true)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1232f, 1000f, 668f, -2465f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-433f, -287f, -653f, 572f) - global3.a)))), _wgslsmith_mult_u32(select(0u, 1u, true), ~u_input.c.x), reverseBits(vec3<i32>(global3.c.x, global3.c.x, var_3.a)) | (-vec3<i32>(0i, 1i, var_3.b.x) | vec3<i32>(-23817i, u_input.b.x, 1909i)), false, 1140f));
    global2 = array<Struct_2, 18>();
    var var_4 = !var_3.c;
    var_2 = ~29630i;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.wyy, abs(1i), ~0u);
}

