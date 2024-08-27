struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(49411u, 11157u, 0u, 0u), true, 71842u, -2348f, 64795i), Struct_1(vec4<u32>(22321u, 12666u, 13263u, 0u), true, 6331u, -492f, 1i), Struct_1(vec4<u32>(0u, 4294967295u, 53660u, 53850u), true, 4294967295u, 1625f, 16299i), Struct_1(vec4<u32>(4294967295u, 12470u, 1u, 133692u), false, 0u, 262f, -42481i), Struct_1(vec4<u32>(33870u, 51541u, 0u, 0u), false, 0u, 257f, 0i), Struct_1(vec4<u32>(25678u, 97887u, 52660u, 6784u), false, 1u, 1622f, 22822i), Struct_1(vec4<u32>(4294967295u, 0u, 1723u, 0u), false, 34018u, -323f, -1i), Struct_1(vec4<u32>(15078u, 0u, 1u, 1u), false, 0u, -751f, -1i), Struct_1(vec4<u32>(1u, 0u, 16930u, 0u), true, 4294967295u, 1872f, 40655i), Struct_1(vec4<u32>(0u, 0u, 0u, 96494u), false, 10538u, 1471f, 2147483647i), Struct_1(vec4<u32>(3743u, 4294967295u, 723u, 48306u), false, 63049u, -1051f, 2147483647i), Struct_1(vec4<u32>(1u, 0u, 38006u, 25336u), false, 1u, -501f, 20199i), Struct_1(vec4<u32>(36135u, 0u, 40606u, 0u), true, 4294967295u, 1193f, -35325i), Struct_1(vec4<u32>(15629u, 5058u, 43065u, 0u), false, 19056u, -1980f, 0i), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), true, 1u, 836f, 0i), Struct_1(vec4<u32>(0u, 16779u, 1u, 0u), false, 4294967295u, 1717f, -13230i), Struct_1(vec4<u32>(25260u, 4294967295u, 11987u, 19054u), true, 42992u, -1544f, -1i), Struct_1(vec4<u32>(51966u, 23525u, 28935u, 1u), true, 1u, 261f, -4524i), Struct_1(vec4<u32>(1u, 25028u, 18854u, 59788u), false, 7190u, -1210f, -7097i), Struct_1(vec4<u32>(3906u, 0u, 80253u, 1u), true, 1u, 478f, 9567i), Struct_1(vec4<u32>(0u, 86449u, 9322u, 1u), false, 0u, 1422f, 0i), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 0u), false, 4294967295u, 1000f, 636i), Struct_1(vec4<u32>(38597u, 38730u, 1u, 7774u), true, 22575u, 622f, -62347i), Struct_1(vec4<u32>(4294967295u, 58333u, 0u, 32221u), false, 1u, 249f, 1i), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 53805u), true, 40773u, 962f, 0i), Struct_1(vec4<u32>(0u, 1u, 1265u, 6578u), true, 16040u, -339f, 3020i), Struct_1(vec4<u32>(0u, 0u, 1u, 14461u), false, 0u, 230f, -21110i));

var<private> global3: array<vec2<i32>, 30>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(96345u, 0u, 11706u, 11874u), false, 4294967295u, -302f, -1i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = min(-_wgslsmith_add_i32(countOneBits(arg_2), arg_2), u_input.a.x) | global4.e;
    var var_1 = vec4<i32>(arg_2, ~u_input.a.x, -1i, -9666i | u_input.a.x);
    global3 = array<vec2<i32>, 30>();
    var var_2 = ~vec2<i32>(~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, 16355i), ~u_input.a.x, arg_2), 26473i);
    global1 = global4.c << (u_input.b % 32u);
    return global2[_wgslsmith_index_u32(global4.a.x, 27u)];
}

fn func_3() -> Struct_1 {
    let var_0 = func_1(select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(global4.b, global0[_wgslsmith_index_u32(global4.c, 9u)], true, global0[_wgslsmith_index_u32(1u, 9u)]), vec4<bool>(global4.b, global0[_wgslsmith_index_u32(0u, 9u)], false, global4.b)), !vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global4.b, true, false), true), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 9u)], true, global4.b), global4.b), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(33086u, 9u)], global4.b, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global4.b, global4.b, global4.b), global0[_wgslsmith_index_u32(global4.c, 9u)]), -9962i <= global4.e), -abs(global4.e) < firstLeadingBit(-2147483647i)), !vec4<bool>(true, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global4.c, global4.a.x, 0u), 9u)], select(true, false, global4.b) | all(vec2<bool>(global0[_wgslsmith_index_u32(74287u, 9u)], global0[_wgslsmith_index_u32(global4.c, 9u)])), global4.b), reverseBits(max(-2147483647i >> (global4.c % 32u), u_input.a.x) ^ firstLeadingBit(-u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.d * global4.d) * _wgslsmith_div_f32(1864f, global4.d)));
    global2 = array<Struct_1, 27>();
    let var_1 = Struct_1(~var_0.a, true, var_0.a.x, var_0.d, -1i);
    return var_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    global3 = array<vec2<i32>, 30>();
    global2 = array<Struct_1, 27>();
    var var_0 = func_3();
    global1 = ~(~var_0.a.x);
    var var_1 = Struct_1(var_0.a, global4.b & true, 11185u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), reverseBits(2147483647i));
    return arg_0.zw;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(abs(vec4<u32>(u_input.b, reverseBits(arg_2.a.x & 0u), ~_wgslsmith_sub_u32(u_input.b, 4294967295u), 4294967295u)), all(func_4(vec4<bool>(arg_0.b | global4.b, true, !arg_1.b, !arg_2.b), func_3(), func_1(vec4<bool>(false, false, false, false), !vec4<bool>(arg_1.b, global0[_wgslsmith_index_u32(arg_2.c, 9u)], false, true), firstLeadingBit(arg_0.e), 848f), -(~vec4<i32>(0i, arg_2.e, arg_0.e, u_input.a.x)))), ~0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1000f, arg_1.d)))) - arg_2.d), 20381i);
    let var_1 = vec4<f32>(arg_0.d, var_0.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d) + _wgslsmith_f_op_f32(floor(var_0.d))), arg_0.d, arg_2.b)), -359f);
    var var_2 = global4.e;
    global3 = array<vec2<i32>, 30>();
    global3 = array<vec2<i32>, 30>();
    return abs(~arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_vec3_u32(~(~global4.a.ywy), reverseBits(min(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 69911u, u_input.b)))) | global4.a.xxw);
    global1 = ~(~(~global4.c));
    let var_1 = u_input.a;
    let var_2 = global2[_wgslsmith_index_u32(56293u, 27u)];
    let var_3 = Struct_1(~var_2.a, !var_2.b, 105528u, global4.d, -_wgslsmith_div_i32(func_2(func_1(vec4<bool>(false, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true, true, false), 13915i, global4.d), func_1(vec4<bool>(var_2.b, false, false, true), vec4<bool>(false, global4.b, global4.b, false), global4.e, var_2.d), Struct_1(vec4<u32>(4294967295u, global4.c, 4294967295u, u_input.b), global4.b, global4.a.x, -1000f, -23150i)), u_input.a.x));
    var var_4 = -vec2<i32>(u_input.a.x, select(34129i, abs(max(var_3.e, 2147483647i)), var_3.b));
    var var_5 = Struct_1(~func_1(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 9u)], global4.b)), !vec4<bool>(true, var_2.b, global0[_wgslsmith_index_u32(16702u, 9u)], var_3.b), _wgslsmith_dot_vec3_i32(~vec3<i32>(global4.e, u_input.a.x, var_4.x), vec3<i32>(var_2.e, 1i, var_3.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(138f + 1136f))).a, any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], var_2.b, true), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 9u)], var_3.b, global0[_wgslsmith_index_u32(46985u, 9u)]), global4.b), select(vec3<bool>(global4.b, var_3.b, global0[_wgslsmith_index_u32(25951u, 9u)]), vec3<bool>(true, false, var_2.b), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], var_3.b, true)), true)) || false, 20555u, var_2.d, abs(2315i));
    var var_6 = Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(global4.a, abs(vec4<u32>(4294967295u, 37458u, global4.c, var_0.x) | global4.a)), func_3().a.x, reverseBits(var_5.a.x), ~0u), all(vec3<bool>(true, global4.b, func_1(vec4<bool>(false, var_5.b, global0[_wgslsmith_index_u32(var_2.c, 9u)], true), vec4<bool>(var_5.b, true, true, false), _wgslsmith_add_i32(-24262i, var_3.e), _wgslsmith_f_op_f32(-var_5.d)).b)), ~54037u, var_3.d, -(~func_3().e));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, _wgslsmith_mult_vec3_i32(countOneBits(-vec3<i32>(var_2.e, var_4.x, -1i) | min(u_input.a.wxz, vec3<i32>(var_4.x, 32583i, var_6.e))), vec3<i32>(var_2.e, _wgslsmith_dot_vec2_i32(max(vec2<i32>(2147483647i, var_5.e), var_1.wz), var_1.zx | vec2<i32>(2147483647i, u_input.a.x)), var_1.x)));
}

