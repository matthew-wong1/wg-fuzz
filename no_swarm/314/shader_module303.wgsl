struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global1: array<vec4<bool>, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: u32) -> u32 {
    global0 = array<vec2<bool>, 13>();
    let var_0 = all(select(vec3<bool>(false, true, true), vec3<bool>(all(select(global0[_wgslsmith_index_u32(arg_1.x, 13u)], global0[_wgslsmith_index_u32(u_input.b, 13u)], vec2<bool>(true, false))), any(vec3<bool>(false, false, true)), _wgslsmith_div_u32(0u, u_input.b) > 49474u), any(select(global1[_wgslsmith_index_u32(~4294967295u, 26u)], !global1[_wgslsmith_index_u32(u_input.a.x, 26u)], !global1[_wgslsmith_index_u32(1u, 26u)]))));
    global1 = array<vec4<bool>, 26>();
    global1 = array<vec4<bool>, 26>();
    global0 = array<vec2<bool>, 13>();
    return u_input.a.x;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-910f, -217f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-573f, -1569f)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(115f - 1000f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(-1347f, -607f))))))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), -671f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1582f, 200f, -779f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(208f, -1000f, 1000f, 296f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), var_0.x, var_0.x, 1f))), 2147483647i, u_input.d >> (abs(func_3(Struct_1(vec3<f32>(168f, -1235f, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -1512f, var_0.x, -1000f), arg_0.x, arg_0.x), u_input.a >> (u_input.a % vec2<u32>(32u)), ~arg_0.xy, countOneBits(4294967295u))) % 32u));
    let var_2 = Struct_1(vec3<f32>(-2221f, _wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(min(var_1.b.x, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * var_1.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b - var_1.a) - _wgslsmith_f_op_vec3_f32(-var_1.b))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.c.x, var_0.x, var_0.x, var_1.c.x), _wgslsmith_f_op_vec4_f32(max(var_1.c, vec4<f32>(-1000f, -825f, var_1.c.x, 2208f)))))))), 5519i, -reverseBits(-2723i));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), 909f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * var_2.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -467f)) + -727f), var_2.b.x, var_1.c.x), var_2.c, u_input.c << ((reverseBits(reverseBits(0u)) << (u_input.b % 32u)) % 32u), ~arg_0.x);
    let var_4 = -28504i;
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> f32 {
    global0 = array<vec2<bool>, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_2(vec3<i32>(arg_0.e, 88598i, 26895i) >> (vec3<u32>(0u, u_input.a.x, 40134u) % vec3<u32>(32u))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1088f, -1000f, false)) * _wgslsmith_f_op_f32(f32(-1f) * -1674f)), arg_0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, -149f) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x)), _wgslsmith_f_op_f32(abs(757f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f + arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 648f, 1000f, arg_0.b.x)), (i32(-1i) * -arg_0.d) ^ arg_1, select(-2147483647i, _wgslsmith_mod_i32(2147483647i, firstTrailingBit(~arg_1)), true));
    let var_1 = ~(~_wgslsmith_mult_u32(u_input.b, u_input.a.x));
    let var_2 = arg_0;
    global1 = array<vec4<bool>, 26>();
    return arg_0.b.x;
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    let var_0 = func_2(vec3<i32>(_wgslsmith_div_i32((1i | u_input.c) ^ (u_input.d & -1i), i32(-1i) * -5288i), arg_1.d, -1i));
    global0 = array<vec2<bool>, 13>();
    let var_1 = true;
    global1 = array<vec4<bool>, 26>();
    var var_2 = !vec3<bool>(all(!vec2<bool>(var_1, true)), true, select(true, true, var_1));
    return _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1035f), -975f)))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<bool>, 13>();
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(func_4(func_2(vec3<i32>(u_input.d, arg_2.e, arg_2.e)), u_input.c)), Struct_1(vec3<f32>(2046f, -1129f, arg_2.a.x), vec3<f32>(arg_2.b.x, -798f, 252f), arg_2.c, u_input.c, u_input.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(1934f, Struct_1(arg_2.b, arg_2.b, vec4<f32>(arg_2.c.x, arg_2.b.x, arg_2.b.x, arg_2.c.x), 19663i, arg_2.e))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_2.c.x, arg_2.c.x, arg_0)), 1200f, any(vec2<bool>(false, false))))), _wgslsmith_f_op_f32(501f + -640f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(arg_2.b.x - 696f)), _wgslsmith_f_op_f32(func_4(func_2(vec3<i32>(1i, -20487i, 1i)), firstLeadingBit(20509i))), _wgslsmith_f_op_f32(func_5(arg_2.a.x, func_2(vec3<i32>(0i, -2147483647i, 1i))))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.c.x, arg_2.b.x, -1000f, _wgslsmith_f_op_f32(-139f - 1589f)) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-264f)), 580f, arg_2.a.x, arg_2.b.x)), (min(70686i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 31845i), vec2<i32>(412i, u_input.c))) & -2147483647i) & 11051i, abs(u_input.d));
    let var_1 = arg_2;
    global1 = array<vec4<bool>, 26>();
    global0 = array<vec2<bool>, 13>();
    return _wgslsmith_f_op_f32(func_5(arg_2.c.x, var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~38724u), 21401u), 26u)];
    let var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, -1i >> (abs(_wgslsmith_clamp_u32(32016u, 28375u, u_input.b)) % 32u), _wgslsmith_mult_i32(~u_input.c, ~u_input.d)), vec3<i32>(-2147483647i, u_input.d, ~(-(u_input.d & -29487i))));
    global0 = array<vec2<bool>, 13>();
    var_0 = vec4<bool>(true, ~u_input.a.x >= ~u_input.b, var_0.x, var_0.x);
    var var_2 = ~abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 0u), reverseBits(vec2<u32>(u_input.a.x, 37772u)))) | vec2<u32>(~1u, 4294967295u);
    var var_3 = -1875f;
    let var_4 = vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_sub_u32(firstTrailingBit(firstTrailingBit(30134u)), u_input.b), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(firstTrailingBit(u_input.a.x), firstLeadingBit(var_2.x))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2050f - 1908f)), _wgslsmith_f_op_f32(min(1000f, -348f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-959f + 229f) + -346f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(258f * 1405f), _wgslsmith_f_op_f32(func_1(false, global1[_wgslsmith_index_u32(var_4.x, 26u)], Struct_1(vec3<f32>(-1380f, -315f, -821f), vec3<f32>(494f, 1648f, 981f), vec4<f32>(-1173f, 1076f, -346f, -536f), var_1.x, -2147483647i))), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1017f + -329f))), 645f), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(959f, 851f, -1086f, -186f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, -404f, 339f, -2155f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-178f, -896f, -344f, 795f) + vec4<f32>(422f, -218f, 665f, 787f)), !var_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1647f, 1812f, -1571f, 574f) + vec4<f32>(215f, 506f, 1664f, 1671f)) - vec4<f32>(1415f, 1083f, -681f, -370f)))), 3556i, -var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(var_1.x, -1i, u_input.c, -37975i), vec4<i32>(0i, -5400i, 2147483647i, var_5.e), var_0.x), ~vec4<i32>(var_5.d, u_input.d, var_5.d, u_input.d))), -select(abs(-2147483647i & var_1.x), firstTrailingBit(u_input.c) >> (max(var_2.x, 4294967295u) % 32u), select(var_0.x, var_2.x >= 0u, true)));
}

