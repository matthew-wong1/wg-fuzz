struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(-1665i, Struct_2(vec4<bool>(false, false, true, false), vec2<u32>(55635u, 0u), vec4<f32>(679f, 2141f, -981f, -672f)), Struct_2(vec4<bool>(false, false, true, true), vec2<u32>(62411u, 20605u), vec4<f32>(-1138f, 155f, -2161f, 806f))), Struct_3(-17403i, Struct_2(vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 16099u), vec4<f32>(-1359f, 1546f, 1210f, 933f)), Struct_2(vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 34533u), vec4<f32>(-1064f, -2127f, -489f, 800f))), Struct_3(2147483647i, Struct_2(vec4<bool>(false, true, false, true), vec2<u32>(74711u, 34907u), vec4<f32>(346f, -1131f, 1000f, 301f)), Struct_2(vec4<bool>(true, true, true, true), vec2<u32>(78438u, 1u), vec4<f32>(836f, 555f, 372f, -1469f))), Struct_3(-19804i, Struct_2(vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 0u), vec4<f32>(-833f, -500f, -1000f, -572f)), Struct_2(vec4<bool>(true, true, false, false), vec2<u32>(45053u, 62469u), vec4<f32>(228f, -1428f, 1000f, 1000f))), Struct_3(-47926i, Struct_2(vec4<bool>(true, false, true, true), vec2<u32>(53377u, 85635u), vec4<f32>(756f, 1678f, -615f, 436f)), Struct_2(vec4<bool>(true, false, true, true), vec2<u32>(0u, 10412u), vec4<f32>(234f, 2375f, 924f, 1000f))), Struct_3(1i, Struct_2(vec4<bool>(false, true, true, true), vec2<u32>(0u, 37533u), vec4<f32>(-1000f, 648f, 1354f, 204f)), Struct_2(vec4<bool>(true, false, false, true), vec2<u32>(1u, 24319u), vec4<f32>(-1506f, 299f, 712f, 1127f))));

var<private> global1: vec2<bool>;

var<private> global2: Struct_4;

var<private> global3: array<vec2<u32>, 20>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    let var_0 = Struct_2(select(select(select(select(vec4<bool>(false, arg_1.x, arg_1.x, false), vec4<bool>(true, false, false, true), vec4<bool>(global2.b, arg_1.x, true, true)), global2.a.b.a, false), vec4<bool>(60492u != global2.a.b.b.x, 4294967295u <= global2.a.c.b.x, arg_1.x, true), all(select(global2.d.xy, global2.d.yz, global1.x))), vec4<bool>(any(!vec3<bool>(true, arg_1.x, false)), select(any(global2.a.b.a.xwz), global2.a.b.a.x, arg_2.x > global2.a.a), !all(global2.a.c.a.yzz), all(!vec4<bool>(false, global1.x, false, false))), !(_wgslsmith_sub_i32(global2.a.a, -2147483647i) > abs(-39955i))), max(u_input.b, abs(~u_input.b)), global2.a.c.c);
    let var_1 = Struct_5(~(-1i), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, ~u_input.a), abs(select(max(global3[_wgslsmith_index_u32(12353u, 20u)], vec2<u32>(63u, 34998u)), vec2<u32>(u_input.a, global2.a.c.b.x), true)), select(~_wgslsmith_add_vec2_u32(var_0.b, var_0.b), ~vec2<u32>(30824u, 1u), true)), Struct_1(abs(2147483647i), select(vec2<bool>(arg_0.x <= arg_0.x, global2.d.x && true), arg_1, var_0.a.xx), var_0.a), select(vec2<bool>(!(-852f >= var_0.c.x), any(var_0.a) & var_0.a.x), select(!vec2<bool>(true, global1.x), select(select(arg_1, arg_1, arg_1), !var_0.a.wx, vec2<bool>(arg_1.x, true)), vec2<bool>(!var_0.a.x, any(global2.a.c.a))), !select(select(arg_1, arg_1, false), vec2<bool>(false, true), vec2<bool>(global1.x, true))), select(global2.a.b.a.zxy, global2.d, true));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b.c.x))));
    let var_3 = Struct_4(global2.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global2.e)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x))))), vec3<bool>(false, global1.x, global2.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-850f, _wgslsmith_f_op_f32(-var_0.c.x))))));
    var var_4 = _wgslsmith_f_op_f32(-1757f * _wgslsmith_div_f32(839f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.c + global2.c), global2.e) - -445f)));
    return global2.e;
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_5(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, global2.a.a), ~44929i, 1i), -vec3<i32>(~0i, _wgslsmith_div_i32(0i, 1i), global2.a.a)), max(~(~(~global2.a.b.b)), vec2<u32>(u_input.a, 4294967295u)), Struct_1(min(6462i, global2.a.a >> (26188u % 32u)), vec2<bool>(arg_0.a.x, all(select(arg_0.a.xxy, arg_0.a.zwy, arg_0.a.yyw))), !vec4<bool>(false, global1.x | true, global1.x && global2.a.c.a.x, true)), vec2<bool>(false, arg_0.a.x), vec3<bool>(false, 1000f >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(-215f, arg_0.c.x) * _wgslsmith_f_op_f32(func_3(vec2<i32>(2147483647i, global2.a.a), arg_0.a.wz, vec4<i32>(-24237i, global2.a.a, global2.a.a, 2147483647i)))), any(!(!vec4<bool>(arg_0.a.x, global2.d.x, global2.b, false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(261f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a.c.c.x, -626f, var_0.e.x)), _wgslsmith_f_op_f32(1357f * -1356f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-605f)), _wgslsmith_f_op_f32(global2.e - 1024f)) - arg_0.c.x), -999f)));
    global1 = vec2<bool>(!(!all(var_0.d)) || !arg_0.a.x, global1.x);
    global2 = Struct_4(Struct_3(var_0.c.a, global2.a.c, Struct_2(select(!arg_0.a, global2.a.b.a, any(var_0.c.c.zzx)), ~(~arg_0.b), global2.a.c.c)), true | arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1016f))), vec3<bool>(true, any(!var_0.c.b), !(!(!arg_0.a.x))), -1102f);
    var var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.a, -6098i), ~global2.a.a) & (select(vec2<i32>(-1i, var_0.a), vec2<i32>(-2147483647i, var_0.c.a), vec2<bool>(true, false)) | ~vec2<i32>(1i, global2.a.a)), -max(vec2<i32>(global2.a.a, 43105i) & vec2<i32>(var_0.c.a, 0i), ~vec2<i32>(5785i, global2.a.a)), vec2<i32>(1i, abs(-12566i))), select(select(vec2<i32>(firstLeadingBit(var_0.c.a), 19733i), vec2<i32>(1i, firstLeadingBit(var_0.c.a)), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), var_0.d)), vec2<i32>(_wgslsmith_add_i32(-30165i, firstTrailingBit(-9316i)), ~1i), global2.a.c.a.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: f32, arg_1: u32) -> Struct_1 {
    global2 = Struct_4(Struct_3(-2147483647i & ~_wgslsmith_dot_vec4_i32(vec4<i32>(-56442i, global2.a.a, 0i, 16278i), vec4<i32>(1i, global2.a.a, 1i, -32929i)), Struct_2(vec4<bool>(false, true || global2.b, all(global2.a.c.a.yzz), !global2.b), ~vec2<u32>(u_input.b.x, 31114u), _wgslsmith_f_op_vec4_f32(max(global2.a.b.c, vec4<f32>(697f, global2.c, global2.c, global2.a.b.c.x)))), global2.a.b), !(~(~global2.a.b.b.x) <= global2.a.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -422f)), !(!global2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - global2.a.c.c.x)) + global2.c));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0)))) + _wgslsmith_f_op_f32(arg_0 + 188f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1666f * arg_0), 100f)) * _wgslsmith_f_op_f32(-637f + global2.c)));
    let var_1 = 5948u;
    var var_2 = -2387f;
    global0 = array<Struct_3, 6>();
    return Struct_1(global2.a.a, vec2<bool>(any(select(vec3<bool>(global2.b, false, global1.x), !global2.d, select(global2.a.b.a.zyz, vec3<bool>(global2.a.c.a.x, true, global1.x), global2.a.c.a.zzy))), global1.x), !select(global2.a.b.a, !(!global2.a.b.a), true));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = global2.a;
    var var_1 = ~(countOneBits(vec4<u32>(1u, global2.a.b.b.x, global2.a.b.b.x, var_0.c.b.x)) | firstLeadingBit(vec4<u32>(var_0.b.b.x, 2913u, global2.a.b.b.x, 27301u))) & vec4<u32>(86082u, global2.a.c.b.x, _wgslsmith_mult_u32(~(~u_input.b.x), firstLeadingBit(~arg_0)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(77254u, 14941u, u_input.a, 1u), vec4<u32>(u_input.a, global2.a.c.b.x, var_0.b.b.x, global2.a.c.b.x)));
    global0 = array<Struct_3, 6>();
    let var_2 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(select(vec4<bool>(global2.a.c.a.x, true, global1.x, global2.b), vec4<bool>(false, global2.d.x, var_0.b.a.x, var_0.c.a.x), global2.a.c.a.x), global3[_wgslsmith_index_u32(select(u_input.b.x, 12912u, global1.x), 20u)], _wgslsmith_f_op_vec4_f32(var_0.c.c + global2.a.b.c)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(933f, global2.e) + _wgslsmith_f_op_f32(global2.c * global2.a.c.c.x))), ~17821u);
    global0 = array<Struct_3, 6>();
    return func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(f32(-1f) * -985f))), ~var_1.x).c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = abs(u_input.a);
    global0 = array<Struct_3, 6>();
    var var_1 = Struct_5(select(max(arg_0.a, -14262i), abs(global2.a.a), firstLeadingBit(max(arg_0.a, arg_0.a)) <= _wgslsmith_div_i32(global2.a.a, arg_0.a)), ~vec2<u32>(65974u, 1u), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-637f)))), ~u_input.b.x), vec2<bool>(true, true), vec3<bool>((_wgslsmith_sub_u32(4294967295u, u_input.b.x) > _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.a, 14512u))) && true, true, -17435i < global2.a.a));
    global1 = vec2<bool>(arg_0.b.x, arg_1.a.x);
    var var_2 = 160f;
    return arg_1;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_5) -> bool {
    let var_0 = (~abs(vec4<u32>(arg_0.c.b.x, 32251u, arg_1.b.x, arg_0.c.b.x)) | vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_0.b.b.x, 61u), u_input.a), _wgslsmith_mod_u32(arg_0.b.b.x, 100225u), 4294967295u, max(abs(40582u), arg_1.b.x))) & vec4<u32>(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(19078u, 89575u, arg_0.b.b.x, 23745u), vec4<u32>(55479u, arg_0.b.b.x, 36191u, arg_1.b.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, 12194u, 5994u, global2.a.b.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(global2.a.c.b.x, 0u, global2.a.c.b.x, 20895u), vec4<u32>(13809u, 43031u, 1u, arg_0.b.b.x)))), _wgslsmith_mult_u32(~arg_1.b.x, min(58144u, 1u)) & global2.a.b.b.x, arg_0.c.b.x, 1u);
    var var_1 = Struct_4(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(4376u, arg_0.c.b.x)), 6u)], false, 336f, vec3<bool>(true || any(vec4<bool>(false, global2.d.x, true, arg_1.c.c.x)), ~global2.a.a == _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, global2.a.a), global2.a.a), global1.x), arg_0.b.c.x);
    global3 = array<vec2<u32>, 20>();
    var var_2 = Struct_5(var_1.a.a ^ countOneBits(global2.a.a), var_0.yz, Struct_1(global2.a.a, func_1(reverseBits(global2.a.c.b.x)).zz, func_5(func_4(func_5(arg_1.c, global2.a.c).c.x, _wgslsmith_add_u32(var_1.a.b.b.x, global2.a.c.b.x)), arg_0.c).a), vec2<bool>(global2.b, ((i32(-1i) * -53953i) != -arg_0.a) == (true | global1.x)), select(select(!func_5(arg_1.c, global2.a.c).a.xzw, vec3<bool>(true, arg_0.b.c.x < global2.a.b.c.x, all(arg_1.c.c)), func_1(~7811u).xzy), func_5(arg_1.c, func_5(arg_1.c, Struct_2(arg_1.c.c, arg_0.c.b, global2.a.c.c))).a.wyz, !arg_1.c.c.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2.a.c.c)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.a.b.a.yw;
    global3 = array<vec2<u32>, 20>();
    var var_0 = global2.a.c;
    let var_1 = firstLeadingBit(u_input.b);
    global1 = !select(select(!vec2<bool>(false, global1.x), var_0.a.yz, !(!global2.d.xz)), select(var_0.a.yz, select(!var_0.a.yx, select(var_0.a.yx, vec2<bool>(global2.d.x, var_0.a.x), vec2<bool>(true, false)), var_0.a.zz), !var_0.a.xz), var_0.a.x);
    var var_2 = func_6(Struct_3(~(~(i32(-1i) * -9426i)), func_5(Struct_1(global2.a.a, vec2<bool>(false, var_0.a.x), func_1(0u)), Struct_2(var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(-global2.a.c.c))), Struct_2(!global2.a.b.a, ~min(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 20u)]), var_0.c)), Struct_5(-_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, global2.a.a, -75615i, 9829i), firstLeadingBit(vec4<i32>(global2.a.a, -1i, global2.a.a, global2.a.a))), u_input.b | ~vec2<u32>(6818u, 3297u), Struct_1(countOneBits(1i), select(vec2<bool>(false, global2.b), global2.a.b.a.zy, !vec2<bool>(var_0.a.x, true)), var_0.a), select(global2.d.yz, select(!global2.a.b.a.ww, !vec2<bool>(var_0.a.x, false), vec2<bool>(true, true)), vec2<bool>(var_0.a.x, -1i >= global2.a.a)), var_0.a.xxw));
    var_2 = all(global2.d.yx);
    global0 = array<Struct_3, 6>();
    let var_3 = 411f;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(1u, 0u, global2.a.c.b.x, var_0.b.x)) >> (max(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(89506u, var_1.x, 2782u, u_input.a)), vec4<u32>(0u, var_1.x, var_0.b.x, var_1.x) << (vec4<u32>(var_0.b.x, var_0.b.x, 18971u, 1u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, global2.a.c.b.x, 48411u, 0u)), firstLeadingBit(min(vec4<u32>(2613u, 53365u, 0u, 4294967295u), vec4<u32>(u_input.a, 25126u, var_0.b.x, u_input.b.x)))) % vec4<u32>(32u)));
}

