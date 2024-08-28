struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec3<i32>(2147483647i, 22121i, 14654i), 92538u, true, 1487f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(true, true, false), vec3<i32>(-15790i, 1i, 19133i), vec2<u32>(2115u, 0u)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(13858i, -8707i, 2283i), vec2<u32>(50406u, 45219u)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(23119i, -13410i, 1i), vec2<u32>(0u, 0u)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, -25253i, 2147483647i), vec2<u32>(4294967295u, 17090u)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(17009i, 2147483647i, -1i), vec2<u32>(35642u, 5227u)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(-35681i, i32(-2147483648), 2147483647i), vec2<u32>(0u, 1u)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec2<u32>(0u, 0u)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, 88380i, i32(-2147483648)), vec2<u32>(28548u, 0u)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(-7644i, 2147483647i, 22729i), vec2<u32>(15668u, 1u)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, 1i, 19829i), vec2<u32>(1u, 1u)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(2746i, i32(-2147483648), 1i), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(0i, 0i, 24495i), vec2<u32>(1u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec2<u32>(4294967295u, 23805u)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-36084i, 1i, -7066i), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, -21220i, -5590i), vec2<u32>(4294967295u, 1u)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(1i, 1i, 1i), vec2<u32>(1u, 107755u)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(11748i, -2282i, -12980i), vec2<u32>(32755u, 46067u)), Struct_1(vec3<bool>(true, true, false), vec3<i32>(-26709i, -1i, 0i), vec2<u32>(8222u, 4294967295u)), Struct_1(vec3<bool>(false, true, true), vec3<i32>(0i, -1i, -16599i), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, 56347i, -28153i), vec2<u32>(0u, 4814u)), Struct_1(vec3<bool>(false, false, false), vec3<i32>(-44664i, 64083i, -1i), vec2<u32>(4294967295u, 36313u)), Struct_1(vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec2<u32>(4294967295u, 4583u)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-1i, 2908i, -46300i), vec2<u32>(4294967295u, 0u)), Struct_1(vec3<bool>(true, false, false), vec3<i32>(3112i, i32(-2147483648), -84433i), vec2<u32>(10413u, 84451u)));

var<private> global3: vec4<i32> = vec4<i32>(22275i, -45686i, 23385i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = 1427u;
    global0 = Struct_2(true, global1.b, global0.c, !global1.a.x, _wgslsmith_f_op_f32(-1375f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.e)), _wgslsmith_f_op_f32(sign(global0.e))))))));
    var var_1 = all(!vec4<bool>(all(arg_1.b.a.yz), any(!arg_1.b.a.xy), global1.a.x, !arg_1.a.a.a.x));
    var_0 = 62527u;
    global0 = Struct_2(select(!global1.a.x, arg_1.a.a.a.x && arg_1.b.a.x, true), min(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 12529i, -36182i), vec3<i32>(arg_1.b.b.x, u_input.a.x, -30226i)), ~global3.xxx | vec3<i32>(global3.x, global0.b.x, u_input.a.x)) | vec3<i32>(~countOneBits(-2147483647i), ~(u_input.a.x << (0u % 32u)), -2147483647i & u_input.a.x), ~_wgslsmith_mod_u32(reverseBits(10825u), 96877u), countOneBits(_wgslsmith_div_i32(global1.b.x, global3.x)) <= u_input.a.x, _wgslsmith_f_op_f32(select(global0.e, arg_0.x, global0.d)));
    return !select(select(global1.a, !(!vec3<bool>(global1.a.x, global0.d, global1.a.x)), true), select(arg_1.b.a, !global1.a, arg_1.a.a.a.x), !all(arg_1.a.a.a.yx));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -441f);
    global1 = global2[_wgslsmith_index_u32(global1.c.x, 24u)];
    return global1.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_3 {
    global1 = Struct_1(!(!vec3<bool>(false, true, all(vec4<bool>(false, arg_1.a.x, true, true)))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b.x, u_input.a.x, -2147483647i), arg_0), ~select(func_4(~57186u, func_3(vec3<f32>(global0.e, global0.e, global0.e), Struct_4(Struct_3(Struct_1(global1.a, arg_0, vec2<u32>(global0.c, 4294967295u))), arg_1, vec4<u32>(global0.c, 51791u, arg_1.c.x, 0u)), u_input.a)), ~_wgslsmith_mult_vec2_u32(arg_1.c, arg_1.c), global1.a.zz));
    var var_0 = global0.e;
    var var_1 = countOneBits(~firstLeadingBit(global0.c));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.e - -335f))) - global0.e));
    let var_3 = abs(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, 19355u, 78600u), ~vec4<u32>(global1.c.x, global0.c, arg_1.c.x, 54813u)), arg_1.c.x, global1.c.x, arg_1.c.x));
    return Struct_3(Struct_1(global1.a, vec3<i32>(global0.b.x, 37652i, arg_1.b.x) & (-arg_1.b ^ global3.wxz), _wgslsmith_sub_vec2_u32(max(~vec2<u32>(global1.c.x, var_3.x), ~vec2<u32>(global0.c, global1.c.x)), arg_1.c ^ arg_1.c)));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: Struct_5, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = select(!vec4<bool>(true, any(vec3<bool>(arg_0.a.a.a.x, true, global1.a.x)), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, -730f, global0.e) * vec3<f32>(169f, global0.e, -1293f)), Struct_4(arg_2.a, Struct_1(vec3<bool>(true, global0.a, true), u_input.a.yzw, arg_2.a.a.c), vec4<u32>(arg_2.a.a.c.x, global1.c.x, arg_0.a.a.c.x, 1u)), abs(u_input.a)).x, !func_2(arg_0.a.a.b, arg_2.a.a).a.a.x), select(vec4<bool>(select(arg_1 < arg_2.a.a.b.x, global0.a, true), _wgslsmith_f_op_f32(arg_0.b + -1000f) <= _wgslsmith_f_op_f32(f32(-1f) * -1076f), arg_3.x < -global1.b.x, global0.e < arg_0.b), !vec4<bool>(select(true, global1.a.x, false), any(vec2<bool>(arg_2.a.a.a.x, arg_0.a.a.a.x)), global0.d, true), any(!select(vec2<bool>(global1.a.x, false), vec2<bool>(false, true), global0.a))), global1.a.x);
    global0 = Struct_2(arg_0.a.a.a.x, arg_2.a.a.b, _wgslsmith_dot_vec3_u32(countOneBits(~(~vec3<u32>(global0.c, global1.c.x, arg_2.a.a.c.x))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(30385u, 24322u, 1u) << (vec3<u32>(arg_0.a.a.c.x, 58900u, 1u) % vec3<u32>(32u)), ~vec3<u32>(arg_2.a.a.c.x, 3091u, global0.c)))), all(global1.a), _wgslsmith_f_op_f32(floor(238f)));
    var var_1 = !select(select(arg_0.a.a.a, arg_2.a.a.a, any(vec4<bool>(global1.a.x, true, global0.a, global0.d))), func_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -434f), -2052f, -828f), Struct_4(Struct_3(Struct_1(var_0.ywx, vec3<i32>(global0.b.x, -34113i, global3.x), vec2<u32>(arg_2.a.a.c.x, 112708u))), Struct_1(arg_0.a.a.a, vec3<i32>(global3.x, u_input.a.x, global1.b.x), global1.c), ~vec4<u32>(4294967295u, global1.c.x, global1.c.x, 47026u)), u_input.a), vec3<bool>(false, _wgslsmith_clamp_u32(1321u, 1u, 26821u) != ~29080u, global0.c > ~arg_2.a.a.c.x));
    global2 = array<Struct_1, 24>();
    global2 = array<Struct_1, 24>();
    return Struct_1(vec3<bool>(select(true, arg_0.a.a.a.x, arg_0.a.a.a.x), global0.b.x != u_input.a.x, any(!(!var_0))), vec3<i32>(arg_0.a.a.b.x, _wgslsmith_mult_i32(global1.b.x, abs(-2147483647i) << (~arg_2.a.a.c.x % 32u)), arg_0.a.a.b.x), select(select(func_4(arg_0.a.a.c.x, arg_2.a.a.a), ~global1.c, true), _wgslsmith_mult_vec2_u32(global1.c ^ arg_2.a.a.c, countOneBits(vec2<u32>(global1.c.x, 4294967295u))), arg_2.a.a.a.x) >> (_wgslsmith_mod_vec2_u32(arg_2.a.a.c, _wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.a.c.x, arg_2.a.a.c.x), countOneBits(vec2<u32>(92170u, 54205u)))) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> Struct_5 {
    var var_0 = !vec3<bool>(!((24006i ^ global3.x) < _wgslsmith_clamp_i32(-2147483647i, 4093i, -1i)), !all(select(vec3<bool>(global1.a.x, false, global0.a), global1.a, vec3<bool>(false, true, true))), false & global0.a);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(457f, -1000f)))))), global0.e);
    global1 = func_5(Struct_5(func_2(_wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a.x, global3.x), vec3<i32>(-2147483647i, global1.b.x, 1i)), Struct_1(select(vec3<bool>(false, global0.a, false), vec3<bool>(global1.a.x, false, var_0.x), vec3<bool>(var_0.x, arg_1, true)), global3.yyz, _wgslsmith_div_vec2_u32(arg_0.yy, global1.c))), global0.e), global0.b.x, Struct_5(func_2(-countOneBits(global1.b), Struct_1(vec3<bool>(false, arg_1, false), -vec3<i32>(global1.b.x, global0.b.x, -22495i), vec2<u32>(67685u, 48554u))), 961f), ~abs(global3.yzy));
    global1 = global2[_wgslsmith_index_u32(~global1.c.x | arg_0.x, 24u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1666f, 1520f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-167f, global0.e)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, -469f)))))));
    return Struct_5(func_2(func_5(Struct_5(func_2(vec3<i32>(global0.b.x, global1.b.x, -6273i), Struct_1(global1.a, vec3<i32>(global1.b.x, u_input.a.x, -1i), arg_0.xz)), global0.e), func_5(Struct_5(Struct_3(Struct_1(vec3<bool>(global1.a.x, global0.a, global1.a.x), vec3<i32>(global3.x, global1.b.x, global3.x), arg_0.zy)), 1513f), _wgslsmith_div_i32(global1.b.x, -1547i), Struct_5(Struct_3(global2[_wgslsmith_index_u32(arg_0.x, 24u)]), 183f), -vec3<i32>(global0.b.x, u_input.a.x, global1.b.x)).b.x, Struct_5(func_2(global1.b, global2[_wgslsmith_index_u32(global0.c, 24u)]), global0.e), func_5(Struct_5(Struct_3(Struct_1(global1.a, vec3<i32>(global1.b.x, 14653i, u_input.a.x), global1.c)), 997f), -2147483647i, Struct_5(Struct_3(global2[_wgslsmith_index_u32(global0.c, 24u)]), var_2.x), -vec3<i32>(0i, -2089i, global3.x)).b).b, global2[_wgslsmith_index_u32(global0.c, 24u)]), var_2.x);
}

fn func_6(arg_0: Struct_5, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_sub_i32(firstTrailingBit(arg_0.a.a.b.x), max(func_1(vec4<u32>(0u, arg_2.c.x, 0u, global1.c.x) << (max(vec4<u32>(41485u, 4294967295u, arg_2.c.x, 0u), vec4<u32>(arg_0.a.a.c.x, 103085u, global1.c.x, 6732u)) % vec4<u32>(32u)), !(global1.c.x >= 50977u)).a.a.b.x, 0i));
    var var_1 = true;
    var var_2 = false;
    var var_3 = Struct_5(arg_0.a, 330f);
    let var_4 = Struct_4(Struct_3(func_5(Struct_5(func_1(vec4<u32>(arg_1.a.c.x, global0.c, 94859u, global0.c), arg_2.a.x).a, _wgslsmith_f_op_f32(-arg_0.b)), var_3.a.a.b.x, Struct_5(var_3.a, func_1(vec4<u32>(0u, 4294967295u, 8912u, var_3.a.a.c.x), false).b), arg_2.b)), Struct_1(global1.a, arg_2.b, ~(~global1.c)), _wgslsmith_sub_vec4_u32(select(~countOneBits(vec4<u32>(5405u, 4294967295u, 1u, 51587u)), select(vec4<u32>(var_3.a.a.c.x, 0u, arg_2.c.x, 0u) ^ vec4<u32>(arg_1.a.c.x, 17666u, 38852u, global1.c.x), vec4<u32>(arg_1.a.c.x, 4294967295u, global0.c, 0u), func_3(vec3<f32>(global0.e, -385f, -145f), Struct_4(arg_0.a, Struct_1(vec3<bool>(false, false, false), arg_2.b, vec2<u32>(global1.c.x, arg_2.c.x)), vec4<u32>(29327u, arg_0.a.a.c.x, arg_2.c.x, var_3.a.a.c.x)), vec4<i32>(21730i, u_input.a.x, global1.b.x, 1i)).x), false | arg_1.a.a.x), vec4<u32>(1u << (arg_0.a.a.c.x % 32u), 1u, ~var_3.a.a.c.x, arg_0.a.a.c.x)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.e;
    global0 = Struct_2(true, ~vec3<i32>(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-1i, u_input.a.x, global0.b.x, global0.b.x)) ^ ~u_input.a.x, 5077i, _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, -35475i), _wgslsmith_clamp_i32(0i, global1.b.x, u_input.a.x))), ~(~0u), func_6(func_1(vec4<u32>(global0.c, global1.c.x, 54949u, global1.c.x), global0.a), func_1(~vec4<u32>(global1.c.x, 53646u, 1u, 4294967295u), !global1.a.x).a, Struct_1(!vec3<bool>(global1.a.x, true, false), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.x, 35309i, -25235i), vec3<i32>(-10187i, global1.b.x, 0i), global3.zxw), vec2<u32>(global1.c.x, global1.c.x))) && ((global1.b.x > ~(-1i)) & false), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-521f, _wgslsmith_f_op_f32(289f * global0.e), global1.a.x || global1.a.x))))));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.c.x, ~reverseBits(global0.c)), 24u)];
    global2 = array<Struct_1, 24>();
    var var_2 = select(vec4<bool>(true, true, true, true), vec4<bool>(!(!global0.a || any(global1.a)), var_1.a.x, !func_5(Struct_5(Struct_3(Struct_1(global1.a, vec3<i32>(-2147483647i, global0.b.x, u_input.a.x), var_1.c)), global0.e), select(-60772i, global1.b.x, global1.a.x), func_1(vec4<u32>(23980u, 1u, global1.c.x, 59775u), global1.a.x), select(global0.b, vec3<i32>(var_1.b.x, var_1.b.x, global1.b.x), true)).a.x, false), select(!(!vec4<bool>(false, global1.a.x, global0.a, true)), !(!(!vec4<bool>(true, true, var_1.a.x, false))), var_1.a.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -168f));
    global3 = ~firstTrailingBit(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global3.x, -2147483647i), vec3<u32>(74982u, abs(4294967295u), ~(~_wgslsmith_div_u32(1u, global1.c.x))), _wgslsmith_add_i32(func_2(func_5(func_1(vec4<u32>(global0.c, var_1.c.x, 32249u, global1.c.x), global1.a.x), abs(-1i), func_1(vec4<u32>(var_1.c.x, var_1.c.x, global1.c.x, 28455u), global1.a.x), -vec3<i32>(2147483647i, global1.b.x, -18179i)).b, Struct_1(var_1.a, vec3<i32>(global0.b.x, global3.x, global0.b.x) & var_1.b, ~vec2<u32>(global1.c.x, global0.c))).a.b.x, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(820f, -639f))), 1u);
}

