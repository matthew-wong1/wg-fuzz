struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(45268u, 79495u, 0u, 18022u, 22149u, 1u, 4294967295u, 1u, 1u, 4294967295u, 75632u, 21825u, 73187u, 0u, 4294967295u, 1u, 16250u, 67093u, 25048u, 0u, 1u, 1756u, 4294967295u, 4294967295u, 8467u, 1u, 43679u, 21594u, 55906u, 48606u, 1u, 1u);

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 7>;

var<private> global3: array<vec2<bool>, 29>;

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    let var_0 = vec3<i32>(-15195i, (2147483647i << (abs(arg_3.c & 22952u) % 32u)) << (~abs(0u | u_input.a.x) % 32u), 0i);
    global0 = array<u32, 32>();
    var var_1 = vec2<i32>(~1i, 0i);
    var var_2 = -2147483647i;
    var var_3 = arg_3.d.xz;
    return _wgslsmith_sub_u32(~u_input.d.x, 34491u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> i32 {
    var var_0 = Struct_4(Struct_3((firstLeadingBit(vec4<i32>(-34188i, u_input.b.x, 2147483647i, u_input.b.x)) ^ min(vec4<i32>(-54856i, u_input.b.x, u_input.b.x, 28112i), vec4<i32>(68143i, 0i, 0i, u_input.b.x))) ^ (-vec4<i32>(0i, u_input.b.x, u_input.b.x, 1i) ^ vec4<i32>(u_input.b.x, u_input.b.x, 0i, 65289i)), global3[_wgslsmith_index_u32(u_input.d.x << (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)]), vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 32u)]))) % 32u), 29u)], global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 32u)]) | func_3(-vec4<i32>(12063i, u_input.b.x, -2147483647i, 0i), vec4<bool>(false, true, false, true), Struct_1(false, global3[_wgslsmith_index_u32(4294967295u, 29u)], false), Struct_3(vec4<i32>(0i, 0i, u_input.b.x, 15869i), vec2<bool>(false, true), global0[_wgslsmith_index_u32(u_input.d.x, 32u)], arg_1.xzw)), 32u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -1792f, arg_1.x)))))), Struct_1(true, select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14890u, 32u)], 32u)], 29u)], vec2<bool>(false, true), vec2<bool>(false, false)), false), vec2<bool>(u_input.c <= 4294967295u, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), false), _wgslsmith_div_vec2_i32(firstTrailingBit(u_input.b.xx), vec2<i32>(u_input.b.x & 0i, max(1i, u_input.b.x))), u_input.b.x);
    global4 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], firstLeadingBit(global0[_wgslsmith_index_u32(~28572u, 32u)]));
    var_0 = Struct_4(Struct_3(vec4<i32>(_wgslsmith_mod_i32(u_input.b.x, -1i), abs(u_input.b.x) ^ _wgslsmith_div_i32(u_input.b.x, 20007i), 1i, var_0.c.x >> (func_3(var_0.a.a, vec4<bool>(false, var_0.a.b.x, var_0.b.c, var_0.b.c), Struct_1(false, vec2<bool>(var_0.a.b.x, var_0.b.a), var_0.a.b.x), var_0.a) % 32u)), vec2<bool>(any(vec4<bool>(false, var_0.a.b.x, false, var_0.b.b.x)), all(vec4<bool>(false, var_0.b.c, var_0.b.b.x, var_0.a.b.x))), u_input.d.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 2313f, var_0.a.d.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-850f, 372f, 628f)))))), Struct_1(any(vec4<bool>(false || var_0.a.b.x, true, var_0.b.b.x, true)), vec2<bool>(true == var_0.b.a, all(vec4<bool>(var_0.a.b.x, false, true, true))), !(var_0.a.b.x | !var_0.b.c)), var_0.c, -2147483647i);
    let var_1 = 0u;
    return ~reverseBits(-reverseBits(~u_input.b.x));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<i32>) -> u32 {
    global2 = array<vec3<u32>, 7>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1003f * 597f)))));
    global3 = array<vec2<bool>, 29>();
    global1 = arg_2 << (~4294967295u % 32u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return ~(~min(~global0[_wgslsmith_index_u32(4294967295u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5286u, 32u)], 32u)], 32u)] % 32u), 32u)], 33590u));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_4 {
    var var_0 = !global3[_wgslsmith_index_u32(~reverseBits(140319u), 29u)];
    global3 = array<vec2<bool>, 29>();
    let var_1 = vec4<u32>(arg_1, countOneBits(u_input.c), 4294967295u, _wgslsmith_sub_u32(arg_1, 4294967295u)) | u_input.a;
    var var_2 = countOneBits(~global0[_wgslsmith_index_u32(func_4(func_2(Struct_2(754f), vec4<f32>(708f, -362f, 299f, 915f)) == (u_input.b.x << (arg_1 % 32u)), Struct_1(var_0.x, !global3[_wgslsmith_index_u32(46951u, 29u)], var_0.x), _wgslsmith_div_u32(~10814u, ~60807u), vec2<i32>(u_input.b.x, arg_0.x << (u_input.d.x % 32u))), 32u)]);
    var var_3 = vec3<i32>(u_input.b.x << (21876u % 32u), arg_0.x, min(max(1i, _wgslsmith_clamp_i32(u_input.b.x, -1i, arg_0.x)), i32(-1i) * -u_input.b.x)) | arg_0;
    return Struct_4(Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, 0i, -17639i, arg_0.x), ~vec4<i32>(var_3.x, arg_0.x, 31225i, -2147483647i)), -(vec4<i32>(1i, var_3.x, var_3.x, var_3.x) << (var_1 % vec4<u32>(32u)))), !(!select(vec2<bool>(var_0.x, var_0.x), global3[_wgslsmith_index_u32(var_1.x, 29u)], vec2<bool>(var_0.x, false))), _wgslsmith_add_u32(firstLeadingBit(~u_input.a.x), arg_1), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-618f, 344f, -699f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1407f, -1033f, -1000f), vec3<f32>(1058f, -1179f, -510f))))))), Struct_1(var_0.x, !select(select(vec2<bool>(var_0.x, var_0.x), global3[_wgslsmith_index_u32(15838u, 29u)], global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(49509u, 32u)], 29u)]), global3[_wgslsmith_index_u32(~u_input.d.x, 29u)], !global3[_wgslsmith_index_u32(15675u, 29u)]), var_0.x), firstLeadingBit(arg_0.yy) | vec2<i32>(reverseBits(-arg_0.x), min(~u_input.b.x, arg_0.x >> (43680u % 32u))), select(max(u_input.b.x, var_3.x), 0i, var_0.x));
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_4 {
    let var_0 = func_1(~u_input.b, _wgslsmith_sub_u32((global0[_wgslsmith_index_u32(4294967295u, 32u)] & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 61u, arg_0.a.c, 26573u), u_input.a)) | arg_0.a.c, 31042u)).a;
    let var_1 = _wgslsmith_sub_u32(arg_1, arg_1);
    global4 = 34987u;
    global2 = array<vec3<u32>, 7>();
    var var_2 = 1i | arg_0.d;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 29>();
    let var_0 = func_5(func_1(u_input.b ^ ~(u_input.b | vec3<i32>(-7828i, u_input.b.x, -2147483647i)), 4294967295u), _wgslsmith_mult_u32(0u, 4294967295u), Struct_2(_wgslsmith_div_f32(781f, _wgslsmith_f_op_f32(round(func_1(vec3<i32>(u_input.b.x, -1i, u_input.b.x), 38621u).a.d.x)))), -1194f);
    let var_1 = !(!all(!vec2<bool>(var_0.b.b.x, var_0.b.c)) && var_0.a.b.x);
    var var_2 = ~_wgslsmith_mod_u32((global0[_wgslsmith_index_u32(~4294967295u, 32u)] << (1u % 32u)) ^ 48366u, global0[_wgslsmith_index_u32(45993u, 32u)]);
    global4 = _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(countOneBits(1u), var_0.a.c), 71361u), _wgslsmith_clamp_u32(~0u, max(0u, 22948u), ~global0[_wgslsmith_index_u32(u_input.c, 32u)]), u_input.a.x);
    let var_3 = _wgslsmith_sub_i32(var_0.c.x, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(u_input.d, ~(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 32u)], 0u, 0u, 13934u) & u_input.d)), -_wgslsmith_dot_vec2_i32(var_0.c, -func_1(var_0.a.a.zyz, u_input.c).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-609f, var_0.a.d.x, var_0.a.d.x, -206f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-790f, var_0.a.d.x, var_0.a.d.x, var_0.a.d.x)))))), 0u >> ((u_input.d.x >> (select(firstTrailingBit(global0[_wgslsmith_index_u32(u_input.c, 32u)]), ~u_input.d.x, any(var_0.a.b)) % 32u)) % 32u), var_0.a.c);
}

