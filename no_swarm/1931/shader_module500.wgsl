struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: bool,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-778f, 760f, 135f, -1353f, -1344f, -169f, 451f);

var<private> global1: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_3(~(-(~(u_input.a.x & u_input.a.x))), select(-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, 31536i, u_input.a.x, arg_2.e), ~vec4<i32>(24526i, u_input.a.x, 0i, 22536i)), max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, arg_2.e) ^ select(vec4<i32>(arg_2.e, arg_2.e, -1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, 0i, arg_2.e), vec4<bool>(arg_2.a, arg_2.c, arg_1.x, false)), -(~vec4<i32>(u_input.a.x, arg_2.e, u_input.a.x, arg_2.e))), !select(vec4<bool>(arg_2.a, arg_2.c, arg_1.x, true), !vec4<bool>(true, true, arg_2.c, true), vec4<bool>(false, arg_2.c, arg_1.x, true))));
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(50097u, 1u) ^ arg_3.xx, select(vec2<u32>(35278u, 0u), vec2<u32>(20260u, 35791u), arg_2.a)), _wgslsmith_mult_u32(abs(41699u), 4294967295u << (arg_2.d % 32u)) | arg_3.x, select(0u, arg_2.d, !any(vec2<bool>(true, arg_1.x))), ~arg_2.d) << ((max((vec4<u32>(4294967295u, arg_2.d, arg_3.x, arg_3.x) << (vec4<u32>(arg_3.x, arg_2.d, 0u, arg_2.d) % vec4<u32>(32u))) | ~vec4<u32>(arg_3.x, 43659u, arg_2.d, arg_2.d), select(~vec4<u32>(4294967295u, arg_2.d, 15973u, arg_3.x), ~vec4<u32>(arg_3.x, 1u, 0u, 0u), select(vec4<bool>(arg_2.c, true, true, true), vec4<bool>(false, true, arg_1.x, false), vec4<bool>(arg_1.x, arg_1.x, true, false)))) & (~(vec4<u32>(1u, 1u, arg_2.d, 4294967295u) | vec4<u32>(arg_3.x, arg_3.x, arg_3.x, 1u)) >> (select(max(vec4<u32>(1u, 34931u, arg_2.d, arg_3.x), vec4<u32>(0u, 1589u, arg_3.x, arg_3.x)), ~vec4<u32>(38342u, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_2.c, true, arg_1.x, arg_1.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global1 = all(!select(!arg_1, select(vec3<bool>(true, arg_2.a, arg_2.c), vec3<bool>(arg_1.x, arg_2.a, arg_2.a), !vec3<bool>(arg_2.c, arg_2.c, true)), arg_1.x));
    global1 = true;
    global1 = !any(select(vec3<bool>(true, true, true), arg_1, any(vec4<bool>(false, true, false, arg_2.a))));
    return min(arg_2.d, 4294967295u);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_1.c, 7u)])), 356f)));
    let var_1 = u_input.a;
    var var_2 = arg_0;
    let var_3 = ~(~vec2<u32>(abs(func_3(var_0.yz, vec3<bool>(false, true, arg_1.b.x), Struct_5(false, Struct_4(global0[_wgslsmith_index_u32(arg_1.c, 7u)]), true, 4294967295u, -51502i), vec3<u32>(arg_1.c, 49258u, arg_1.c))), max(47945u, 26001u >> (arg_1.c % 32u))));
    let var_4 = Struct_3(2147483647i | reverseBits(u_input.a.x), ~vec4<i32>(firstLeadingBit(-2147483647i), -(var_1.x & -2147483647i), 1i, u_input.a.x));
    return -1884f;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_3) -> Struct_4 {
    var var_0 = vec3<u32>(24221u, 4294967295u, 4294967295u);
    var var_1 = vec3<u32>(var_0.x, 30596u, 0u);
    var var_2 = vec4<bool>(!(!(_wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_f_op_f32(floor(-1105f)))), true, any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), -31238i < -((680i ^ arg_2.b.x) >> (~var_0.x % 32u)));
    return Struct_4(global0[_wgslsmith_index_u32(select(18300u, var_1.x, !var_2.x), 7u)]);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_5) -> vec2<f32> {
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    var var_0 = func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_2(arg_1.b, Struct_2(arg_0.a, arg_0.b, 10346u))), _wgslsmith_f_op_f32(-arg_1.b.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(900f, global0[_wgslsmith_index_u32(arg_1.d, 7u)]) * vec2<f32>(arg_1.b.a, -513f)))))), Struct_3(u_input.a.x, vec4<i32>(u_input.a.x, -1i, ~24671i, -2147483647i) << (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, 84539u, arg_1.d), vec3<u32>(arg_1.d, 30734u, 10383u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_1.d), vec2<u32>(arg_1.d, 4294967295u)), ~arg_0.c, arg_1.d) % vec4<u32>(32u))), Struct_3(-_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 11397i, arg_1.e), vec3<i32>(u_input.a.x, u_input.a.x, -7131i), arg_1.c), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), ~vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 48211i), u_input.a.x, countOneBits(u_input.a.x), firstTrailingBit(-2147483647i))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1.d, 7u)])), 1039f))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_5) -> vec4<f32> {
    global0 = array<f32, 7>();
    var var_0 = arg_1.a;
    var_0 = arg_1.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_1.b.a));
    let var_2 = vec2<bool>(arg_1.a, all(select(select(!vec3<bool>(arg_1.c, false, false), vec3<bool>(arg_1.c, true, true), vec3<bool>(arg_1.a, false, false)), vec3<bool>(false, all(vec3<bool>(arg_1.c, arg_1.c, arg_1.c)), arg_1.c), false)));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(383f, _wgslsmith_f_op_f32(f32(-1f) * -932f), _wgslsmith_f_op_f32(f32(-1f) * -1056f), global0[_wgslsmith_index_u32(arg_1.d, 7u)])))), vec4<f32>(var_1, -930f, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, arg_1.d)), 7u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-873f)) - 1808f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = vec4<f32>(-1597f, -589f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1236f * global0[_wgslsmith_index_u32(19213u, 7u)]))) * global0[_wgslsmith_index_u32(~(~81813u), 7u)]), -1171f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_2(false, vec2<bool>(false, false), 4106u), Struct_5(false, Struct_4(-146f), false, 2015u, -36736i))) * var_0.wz), Struct_5(u_input.a.x > -7362i, func_4(vec2<f32>(-1441f, global0[_wgslsmith_index_u32(71338u, 7u)]), Struct_3(-1i, vec4<i32>(u_input.a.x, u_input.a.x, 514i, -9555i)), Struct_3(u_input.a.x, vec4<i32>(u_input.a.x, -2147483647i, 0i, -19543i))), 2687i != u_input.a.x, 27668u, -u_input.a.x)))));
    global1 = max(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), u_input.a.x), _wgslsmith_clamp_i32(~28907i >> (1u % 32u), u_input.a.x, select(29459i, 1i, true))) < (1i | (-u_input.a.x >> (~1u % 32u)));
    global1 = !any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true));
    let var_2 = Struct_1(min(vec4<u32>(1u, 1u, 1u, 1u) >> (_wgslsmith_div_vec4_u32(select(vec4<u32>(28300u, 5596u, 0u, 0u), vec4<u32>(23509u, 4294967295u, 1u, 1u), vec4<bool>(false, true, true, true)), ~vec4<u32>(1u, 4294967295u, 16410u, 1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(0u, 4294967295u), 0u, 1u, reverseBits(4294967295u)) >> (select(~vec4<u32>(4294967295u, 0u, 3996u, 4294967295u), ~vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))), -47686i, i32(-1i) * -u_input.a.x, 1356f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-272f * var_0.x) - 304f), _wgslsmith_f_op_f32(-var_0.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f))), var_1.x, 540f));
    let x = u_input.a;
    s_output = StorageBuffer(8759u, _wgslsmith_f_op_f32(-1102f - 692f));
}

