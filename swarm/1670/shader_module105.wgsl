struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<bool>(true, true, true, true), vec2<i32>(64728i, -5082i)), Struct_3(vec4<bool>(true, false, true, false), vec2<i32>(-1i, i32(-2147483648))), Struct_3(vec4<bool>(true, false, true, true), vec2<i32>(0i, 6623i)), Struct_3(vec4<bool>(false, true, true, false), vec2<i32>(-38095i, 34952i)), Struct_3(vec4<bool>(false, false, true, false), vec2<i32>(-29082i, -27888i)), Struct_3(vec4<bool>(true, true, false, true), vec2<i32>(29378i, 1i)), Struct_3(vec4<bool>(true, true, true, true), vec2<i32>(36480i, -1i)), Struct_3(vec4<bool>(true, true, false, false), vec2<i32>(-29716i, 18697i)), Struct_3(vec4<bool>(false, true, true, true), vec2<i32>(i32(-2147483648), -24508i)), Struct_3(vec4<bool>(false, true, false, false), vec2<i32>(66565i, -1i)), Struct_3(vec4<bool>(true, true, true, true), vec2<i32>(1i, -44109i)), Struct_3(vec4<bool>(true, true, false, false), vec2<i32>(i32(-2147483648), 32828i)), Struct_3(vec4<bool>(true, false, false, true), vec2<i32>(25647i, 7341i)), Struct_3(vec4<bool>(true, true, true, false), vec2<i32>(-1i, 3198i)), Struct_3(vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, 0i)));

var<private> global2: array<f32, 18> = array<f32, 18>(1813f, 2072f, 785f, -1412f, 1484f, 147f, 1345f, -1018f, -1000f, -1337f, -1508f, -1180f, -1000f, 955f, -747f, -704f, -886f, -1000f);

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<i32>(0i, -1i, 2147483647i, -1462i), -24445i, Struct_1(23448u, vec4<i32>(29448i, 52450i, 2147483647i, 37074i), 0i, vec2<bool>(false, false))), Struct_2(vec4<i32>(2147483647i, -18433i, i32(-2147483648), i32(-2147483648)), i32(-2147483648), Struct_1(7072u, vec4<i32>(1i, i32(-2147483648), 2147483647i, -1i), 31051i, vec2<bool>(true, false))), Struct_2(vec4<i32>(1i, 23486i, -1i, 1i), -13876i, Struct_1(7267u, vec4<i32>(i32(-2147483648), 25788i, 0i, 2147483647i), -6438i, vec2<bool>(false, true))), Struct_2(vec4<i32>(11896i, -1i, 1369i, 30253i), 8205i, Struct_1(42105u, vec4<i32>(4633i, -1i, 2147483647i, -1i), 2147483647i, vec2<bool>(false, true))), Struct_2(vec4<i32>(28377i, -96182i, 69121i, -37703i), 25354i, Struct_1(1u, vec4<i32>(0i, 1i, -22342i, 2147483647i), 0i, vec2<bool>(true, true))), Struct_2(vec4<i32>(56240i, -1i, -67886i, -1i), 15830i, Struct_1(54418u, vec4<i32>(1i, -7980i, -65871i, 1i), -7415i, vec2<bool>(true, true))), Struct_2(vec4<i32>(i32(-2147483648), 14142i, 16613i, -46524i), -1i, Struct_1(44788u, vec4<i32>(0i, 19260i, 1i, 0i), 2147483647i, vec2<bool>(false, false))), Struct_2(vec4<i32>(16468i, -12766i, -1i, i32(-2147483648)), -7173i, Struct_1(29378u, vec4<i32>(-30860i, -1i, 2147483647i, i32(-2147483648)), 1i, vec2<bool>(false, false))), Struct_2(vec4<i32>(-6801i, -59335i, 42577i, -1i), -51446i, Struct_1(66897u, vec4<i32>(-1i, 28512i, 1i, 0i), 50942i, vec2<bool>(true, true))), Struct_2(vec4<i32>(0i, 1i, 1i, 0i), -16342i, Struct_1(4294967295u, vec4<i32>(-1i, i32(-2147483648), 1i, 29160i), 2147483647i, vec2<bool>(true, false))), Struct_2(vec4<i32>(35636i, -15177i, i32(-2147483648), -38789i), -25338i, Struct_1(0u, vec4<i32>(i32(-2147483648), 0i, -41865i, 2147483647i), 0i, vec2<bool>(false, false))), Struct_2(vec4<i32>(0i, -1i, 1i, 20980i), -6129i, Struct_1(1u, vec4<i32>(i32(-2147483648), i32(-2147483648), 25826i, 36242i), -71730i, vec2<bool>(true, false))), Struct_2(vec4<i32>(-1i, 1i, 1i, -1i), -42931i, Struct_1(3814u, vec4<i32>(0i, i32(-2147483648), 946i, -37293i), -19998i, vec2<bool>(true, false))), Struct_2(vec4<i32>(24651i, 1i, 2147483647i, -1702i), -1i, Struct_1(51703u, vec4<i32>(14072i, i32(-2147483648), -35515i, -3593i), -4756i, vec2<bool>(true, true))), Struct_2(vec4<i32>(0i, -42946i, 51453i, -44770i), 42295i, Struct_1(1u, vec4<i32>(29418i, -1i, -1i, -58874i), -6489i, vec2<bool>(true, false))), Struct_2(vec4<i32>(-1i, -25767i, 22499i, 2147483647i), 1i, Struct_1(18499u, vec4<i32>(18502i, -1i, 43311i, 21288i), -32275i, vec2<bool>(true, true))), Struct_2(vec4<i32>(18470i, 0i, 2066i, -35145i), 27863i, Struct_1(22280u, vec4<i32>(-33853i, 2147483647i, 0i, 0i), -41206i, vec2<bool>(false, true))), Struct_2(vec4<i32>(1i, -1i, 0i, -46509i), 1248i, Struct_1(23229u, vec4<i32>(2147483647i, -20718i, -1425i, 0i), 0i, vec2<bool>(true, true))), Struct_2(vec4<i32>(60623i, 32899i, -1i, i32(-2147483648)), -24424i, Struct_1(65084u, vec4<i32>(26048i, -60645i, 0i, -3544i), -1i, vec2<bool>(true, true))), Struct_2(vec4<i32>(-1i, 1i, 2147483647i, -2913i), -1i, Struct_1(1758u, vec4<i32>(0i, -1i, -73171i, -17149i), 68865i, vec2<bool>(false, false))), Struct_2(vec4<i32>(-9377i, 0i, 3480i, 0i), 24787i, Struct_1(47915u, vec4<i32>(-1i, -29211i, 8729i, 11374i), 0i, vec2<bool>(false, true))), Struct_2(vec4<i32>(-1i, 0i, -55903i, -1i), 7444i, Struct_1(18894u, vec4<i32>(2147483647i, -43229i, -1i, 14670i), 11677i, vec2<bool>(false, true))));

var<private> global4: Struct_2;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = 31144i;
    global2 = array<f32, 18>();
    global1 = array<Struct_3, 15>();
    let var_1 = Struct_4(Struct_3(arg_0, ~(vec2<i32>(global0.b.x, global0.c) << (select(vec2<u32>(12441u, global0.a), u_input.b, global0.d) % vec2<u32>(32u)))), ~global0.b.xw, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-784f, _wgslsmith_f_op_f32(f32(-1f) * -1500f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 18u)] + global2[_wgslsmith_index_u32(global4.c.a, 18u)]))), vec3<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(u_input.a, 4294967295u)), 18u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_div_f32(-1133f, global2[_wgslsmith_index_u32(25800u, 18u)])), global2[_wgslsmith_index_u32(select(global4.c.a, u_input.a, global4.c.d.x) << (~7376u % 32u), 18u)]))), !(!arg_0.x));
    var var_2 = global4.c;
    return _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_1.c.zz)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(~(~global4.c.a) <= (global0.a & 0u), arg_2.d.x, false, select(true, global4.c.d.x == any(vec4<bool>(false, false, false, true)), true))));
    var var_1 = max(~(global0.a | ~(~global4.c.a)), countOneBits(0u));
    let var_2 = global3[_wgslsmith_index_u32(global0.a, 22u)];
    var var_3 = global1[_wgslsmith_index_u32(~arg_2.a, 15u)];
    let var_4 = global0.b;
    return var_2.c.d.x;
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-496f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 18u)]) + -1843f)))));
    let var_1 = arg_0.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, global2[_wgslsmith_index_u32(4294967295u, 18u)])))), vec2<f32>(_wgslsmith_f_op_f32(-1073f * global2[_wgslsmith_index_u32(global4.c.a, 18u)]), 665f)))));
    var var_3 = var_1;
    let var_4 = vec4<bool>(true, any(!(!vec4<bool>(global4.c.d.x, arg_0.a.x, false, global4.c.d.x))), global0.d.x || true, !(!arg_0.a.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -440f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 22>();
    global3 = array<Struct_2, 22>();
    let var_0 = -1006f;
    global2 = array<f32, 18>();
    let var_1 = global1[_wgslsmith_index_u32(~39820u, 15u)];
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(0u, 15u)], firstTrailingBit(vec2<i32>(~firstLeadingBit(2147483647i), 57242i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1231f, -930f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(756f, var_0, global2[_wgslsmith_index_u32(global4.c.a, 18u)]) + vec3<f32>(1238f, global2[_wgslsmith_index_u32(1u, 18u)], var_0)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(330f, -1254f, 435f) * vec3<f32>(293f, 1562f, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-437f, -950f, -563f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1613f, -1212f) * vec3<f32>(global2[_wgslsmith_index_u32(global0.a, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)], var_0))))), select(global0.d.x, global0.a > global0.a, u_input.a == _wgslsmith_mult_u32(18872u, 4294967295u << (u_input.b.x % 32u))));
    var var_3 = any(!(!vec4<bool>(!var_1.a.x, !var_2.a.a.x, func_1(var_2.c, false, Struct_1(global0.a, global4.a, -1i, var_1.a.zx), var_2.c), false)));
    let var_4 = ~_wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_sub_vec2_i32(vec2<i32>(-64512i, -24781i), vec2<i32>(-1i, var_2.b.x)), var_2.a.b);
    var_3 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_2.a.a, var_4)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_sub_vec2_i32(vec2<i32>(-var_1.b.x, _wgslsmith_mult_i32(countOneBits(0i), reverseBits(1i))), countOneBits(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, global4.c.c, -208i), global0.b.xyy), -14490i))), 8204i);
}

