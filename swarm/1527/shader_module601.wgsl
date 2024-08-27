struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(8793u, 77482u, 4294967295u, 44175u), vec4<u32>(0u, 0u, 1u, 8859u), vec4<u32>(75579u, 0u, 74695u, 4294967295u), vec4<u32>(4294967295u, 26535u, 32911u, 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_2;
    return _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(~4294967295u, ~_wgslsmith_sub_u32(4294967295u, 34070u), _wgslsmith_div_u32(19491u, 4294967295u), ~arg_2.b | _wgslsmith_add_u32(81094u, 0u))), ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, ~132324u), 5u)], global0[_wgslsmith_index_u32(arg_1.x, 5u)]);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(1852f * arg_1.a.x), -675f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -262f), arg_1.a.x, !arg_1.d.x))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.a), 18704u, _wgslsmith_mod_u32(arg_0.x, arg_1.c) ^ ~_wgslsmith_mod_u32(reverseBits(arg_0.x), ~26566u), select(vec2<bool>(arg_1.d.x, false), !arg_1.d, all(vec3<bool>(arg_1.d.x, false, true))));
    var var_2 = !vec4<bool>(_wgslsmith_f_op_f32(abs(669f)) < _wgslsmith_div_f32(-1224f, _wgslsmith_div_f32(arg_1.a.x, var_0.x)), !(arg_1.c > arg_0.x) || !(false & arg_1.d.x), !(true && var_1.d.x), !(!(var_1.d.x || true)));
    var_1 = arg_1;
    var_1 = arg_1;
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    return func_3(~func_2(!vec4<bool>(false, arg_2.d.x, false, false), vec3<u32>(arg_1, ~20475u, select(arg_1, 0u, false)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.a), ~0u, arg_2.b, arg_2.d)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2.a.x, arg_2.a.x, arg_0)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 634f, arg_0, arg_2.a.x) - arg_2.a))), _wgslsmith_mult_u32(0u & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_2.c), vec2<u32>(arg_2.b, 0u)), ~arg_1), arg_2.c, arg_2.d));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> vec3<bool> {
    global0 = array<vec4<u32>, 5>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + arg_0.a.x)))));
    let var_1 = abs(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a.x, u_input.a.x), reverseBits(u_input.a))));
    var var_2 = 440f;
    let var_3 = arg_0;
    return select(select(!select(!vec3<bool>(true, arg_0.d.x, arg_2.d.x), !vec3<bool>(var_3.d.x, false, true), vec3<bool>(true, arg_2.d.x, var_3.d.x)), select(vec3<bool>(func_3(vec4<u32>(1u, 0u, arg_2.c, arg_2.c), Struct_1(vec4<f32>(1596f, -141f, var_3.a.x, -368f), 0u, 50289u, vec2<bool>(false, true))).d.x, arg_2.d.x, false && arg_2.d.x), select(!vec3<bool>(true, false, arg_0.d.x), !vec3<bool>(arg_0.d.x, true, true), vec3<bool>(arg_2.d.x, true, arg_0.d.x)), vec3<bool>(true, false, true)), vec3<bool>(true, all(select(var_3.d, vec2<bool>(false, true), vec2<bool>(arg_2.d.x, false))), true)), select(!select(select(vec3<bool>(arg_2.d.x, arg_0.d.x, true), vec3<bool>(arg_2.d.x, arg_2.d.x, false), arg_0.d.x), vec3<bool>(arg_2.d.x, arg_0.d.x, false), func_1(843f, arg_2.c, arg_2).d.x), select(vec3<bool>(true, var_3.d.x != arg_2.d.x, true), vec3<bool>(select(arg_0.d.x, arg_2.d.x, var_3.d.x), any(vec2<bool>(var_3.d.x, arg_0.d.x)), arg_2.d.x), select(true, var_3.d.x, func_3(global0[_wgslsmith_index_u32(93532u, 5u)], Struct_1(vec4<f32>(arg_0.a.x, arg_1.x, -1190f, -1000f), 1u, 18513u, var_3.d)).d.x)), vec3<bool>(arg_2.d.x, arg_0.d.x, true)), arg_2.a.x <= _wgslsmith_f_op_f32(f32(-1f) * -158f));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> f32 {
    var var_0 = 3644i;
    var var_1 = 4294967295u;
    var var_2 = func_3(~_wgslsmith_sub_vec4_u32(max(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(86775u, 5u)], vec4<u32>(arg_3.b, arg_3.b, arg_3.b, 1u), vec4<u32>(arg_3.b, 4294967295u, 4034u, 1u)), global0[_wgslsmith_index_u32(func_2(vec4<bool>(arg_3.d.x, false, arg_0.x, true), vec3<u32>(arg_3.b, arg_3.b, arg_3.c), Struct_1(vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), 4294967295u, arg_3.c, arg_3.d)).x, 5u)]), _wgslsmith_sub_vec4_u32(global0[_wgslsmith_index_u32(17131u, 5u)], vec4<u32>(arg_3.c, arg_3.b, arg_3.c, arg_3.c))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -1000f, 1083f, 641f))), func_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.x, arg_3.a.x) - _wgslsmith_f_op_f32(arg_3.a.x - 102f)), arg_3.b, Struct_1(vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x), arg_3.c, _wgslsmith_mult_u32(arg_3.c, arg_3.c), !vec2<bool>(false, arg_0.x))).b, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_3.b, arg_3.b), arg_3.c | arg_3.c), !vec2<bool>(true, !arg_3.d.x)));
    var_2 = func_1(func_3(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(countOneBits(arg_3.b), 5u)], firstTrailingBit(global0[_wgslsmith_index_u32(arg_3.c, 5u)]), abs(vec4<u32>(37947u, 57702u, var_2.b, var_2.b))), ~global0[_wgslsmith_index_u32(~var_2.c, 5u)]), func_3(~global0[_wgslsmith_index_u32(106920u, 5u)], arg_3)).a.x, var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1428f - var_2.a.x), _wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x), _wgslsmith_f_op_f32(abs(arg_3.a.x)), arg_3.a.x)), func_2(select(!vec4<bool>(arg_3.d.x, false, arg_3.d.x, var_2.d.x), select(vec4<bool>(false, arg_3.d.x, arg_0.x, var_2.d.x), vec4<bool>(true, arg_0.x, true, true), vec4<bool>(var_2.d.x, var_2.d.x, var_2.d.x, false)), select(vec4<bool>(arg_3.d.x, false, arg_0.x, true), vec4<bool>(arg_3.d.x, false, arg_3.d.x, false), arg_3.d.x)), vec3<u32>(arg_3.b, abs(arg_3.b), 1u), Struct_1(var_2.a, 4294967295u, arg_3.b, vec2<bool>(arg_3.d.x, arg_3.d.x))).x, arg_3.c, arg_3.d));
    var var_3 = func_3(~(~(~(~vec4<u32>(4294967295u, arg_3.c, 11722u, 74545u)))), arg_3);
    return 1994f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_5(!func_4(func_1(-2175f, 63014u, Struct_1(vec4<f32>(-2401f, -949f, -1050f, 744f), 13262u, 16789u, vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1176f, 667f, 270f, -648f)), func_1(770f, 108940u, Struct_1(vec4<f32>(-1000f, 1994f, 382f, -1959f), 1u, 4294967295u, vec2<bool>(false, true)))), vec3<i32>(u_input.a.x, u_input.a.x << (4294967295u % 32u), min(u_input.a.x, u_input.a.x)) | u_input.a.xxy, ~vec2<i32>(-5483i, u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-523f, -298f, -2039f, 1000f)))), ~23974u >> (max(0u, 1u) % 32u), ~_wgslsmith_div_u32(4294967295u, 1u), vec2<bool>(true, true)))), 399f, any(!func_4(Struct_1(vec4<f32>(312f, 367f, 1234f, 1000f), 4294967295u, 1369u, vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(473f, 572f, 924f, 1165f) * vec4<f32>(-917f, -1242f, -821f, -1533f)), func_3(vec4<u32>(49543u, 28388u, 4294967295u, 49750u), Struct_1(vec4<f32>(-1694f, -1355f, 891f, -1644f), 4294967295u, 0u, vec2<bool>(false, true)))))));
    var var_1 = _wgslsmith_f_op_f32(func_5(!(!vec3<bool>(false, select(false, false, true), true)), ~_wgslsmith_add_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(55310i, 7023i, 18301i), vec3<i32>(u_input.a.x, -1i, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a.xwz, func_1(-786f, 68257u, Struct_1(vec4<f32>(var_0, var_0, var_0, 1020f), 0u, 21294u, vec2<bool>(false, true))).d.x), u_input.a.wwx), ~u_input.a.ww, Struct_1(func_3(firstTrailingBit(vec4<u32>(25448u, 23261u, 41002u, 34931u)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1853f, var_0) * vec4<f32>(-353f, var_0, var_0, var_0)), func_1(var_0, 11195u, Struct_1(vec4<f32>(var_0, -174f, 1012f, var_0), 82910u, 67456u, vec2<bool>(true, true))).b, ~23410u, vec2<bool>(true, false))).a, func_3(select(vec4<u32>(35226u, 40843u, 28929u, 43606u), vec4<u32>(57777u, 4294967295u, 17304u, 4294967295u), vec4<bool>(false, false, false, true)), func_1(var_0, ~85337u, Struct_1(vec4<f32>(var_0, var_0, var_0, -602f), 1u, 41826u, vec2<bool>(false, true)))).b, 1u, vec2<bool>(all(vec4<bool>(true, true, true, true)), func_3(global0[_wgslsmith_index_u32(0u, 5u)], Struct_1(vec4<f32>(-407f, 780f, 1000f, -1733f), 1u, 0u, vec2<bool>(true, true))).d.x == true))));
    var var_2 = vec2<f32>(-1142f, 523f);
    var_1 = var_0;
    global0 = array<vec4<u32>, 5>();
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(10674u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(1u, 1u))), vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_div_u32(19081u, 4294967295u), 4294967295u)));
    var_3 = ~(~max(func_3(~vec4<u32>(46511u, 1u, 63560u, 4294967295u), func_3(vec4<u32>(84049u, 84490u, 4294967295u, 0u), Struct_1(vec4<f32>(-905f, -989f, var_0, var_2.x), 380u, 4294967295u, vec2<bool>(false, false)))).c, 1u));
    let var_4 = func_1(var_2.x, 1u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1000f, var_0) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-579f, var_0, var_2.x, 924f))) + vec4<f32>(-386f, var_0, var_0, _wgslsmith_f_op_f32(floor(-162f)))), _wgslsmith_clamp_u32(5398u, func_3(global0[_wgslsmith_index_u32(11108u, 5u)], Struct_1(vec4<f32>(var_2.x, 684f, var_0, -1658f), 29782u, 12665u, vec2<bool>(true, false))).c, 13216u) ^ 1u, 10709u, func_4(Struct_1(vec4<f32>(var_0, var_2.x, 323f, 1000f), abs(0u), ~4294967295u, func_3(global0[_wgslsmith_index_u32(11048u, 5u)], Struct_1(vec4<f32>(1669f, -1483f, var_2.x, 1207f), 13984u, 1u, vec2<bool>(true, true))).d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, -2541f, var_2.x)), vec4<f32>(var_2.x, 702f, var_2.x, var_2.x), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, -333f, 465f, -685f), vec4<f32>(var_2.x, var_0, var_0, var_0)), ~82035u, ~4294967295u, vec2<bool>(false, true))).xy));
    var_2 = var_4.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(-var_0), 4294967295u);
}

