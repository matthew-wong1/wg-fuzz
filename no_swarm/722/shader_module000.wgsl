struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-1i, 6680i, 78431i, -3955i, 0i, 2147483647i, -17140i, -29337i, -40356i, 1i, 0i, 2147483647i, -4985i, 2147483647i, 2147483647i);

var<private> global1: array<vec2<u32>, 27>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    global1 = array<vec2<u32>, 27>();
    global0 = array<i32, 15>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(462f, 214f) - vec2<f32>(-1000f, -263f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-154f, -218f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-175f, -214f), vec2<f32>(-765f, -637f)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-2208f * var_0.x));
    let var_2 = vec3<bool>(!(!all(vec3<bool>(true, false, true)) && any(vec3<bool>(true, true, true))), arg_0 > u_input.a, !(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))) + vec4<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, 1442f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1649f, var_1.x)))), var_1.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)));
    var_0 = 1423f;
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 4952u, 0u), vec3<u32>(1u, u_input.a, 4294967295u))), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), vec2<u32>(0u, 0u) & global1[_wgslsmith_index_u32(u_input.a, 27u)]), arg_2, arg_2)), 14165u);
    var var_2 = abs(_wgslsmith_div_i32(-1i, -(~(global0[_wgslsmith_index_u32(var_1, 15u)] << (38154u % 32u)))));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1471f)), arg_0.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))), true, vec4<i32>(35639i, ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(9858u, 1u) ^ _wgslsmith_mult_u32(var_1, 1u), 15u)], i32(-1i) * -10112i, ~(~21362i)));
    return var_3.c;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<f32>) -> f32 {
    var var_0 = min(~vec3<u32>(u_input.a, u_input.a, 17874u), select(vec3<u32>(0u, 0u, _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(u_input.a, u_input.a))), reverseBits(firstLeadingBit(countOneBits(vec3<u32>(u_input.a, u_input.a, u_input.a)))), vec3<bool>(true, true, true)));
    var var_1 = ~func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(u_input.a)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x * -1685f), -1076f), _wgslsmith_f_op_f32(trunc(arg_2.x))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(76575u, _wgslsmith_add_u32(112794u, u_input.a)), var_0.x, ~abs(155u)));
    let var_2 = Struct_1(-1i, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x)), -568f));
    let var_3 = ~(-(~_wgslsmith_div_i32(-global0[_wgslsmith_index_u32(23897u, 15u)], global0[_wgslsmith_index_u32(firstTrailingBit(1u), 15u)])));
    var var_4 = abs(select(var_1.x, reverseBits(-1i), select(false, true, true)) & ~(-(i32(-1i) * -11284i)));
    return _wgslsmith_f_op_f32(arg_2.x - arg_2.x);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> Struct_1 {
    let var_0 = !arg_2.b;
    let var_1 = Struct_1(-2147483647i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -102f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1893f - arg_3))), -1233f));
    global0 = array<i32, 15>();
    global1 = array<vec2<u32>, 27>();
    global1 = array<vec2<u32>, 27>();
    return var_1;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<i32, 15>();
    global1 = array<vec2<u32>, 27>();
    global1 = array<vec2<u32>, 27>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))))));
    return func_5(_wgslsmith_add_vec3_i32(-firstTrailingBit(-vec3<i32>(21665i, 20575i, 47664i)), ~abs(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 15u)], -4851i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(0i, vec3<i32>(16741i, global0[_wgslsmith_index_u32(21875u, 15u)], -2147483647i), vec4<f32>(var_1, var_1, 943f, -249f)))), var_1, _wgslsmith_f_op_f32(round(var_1)))), Struct_3(1074f, arg_0, firstTrailingBit(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a, 15u)], -8694i, -73570i), min(vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a, 15u)], -19497i, global0[_wgslsmith_index_u32(51460u, 15u)]), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], 64981i, global0[_wgslsmith_index_u32(u_input.a, 15u)]))))), 486f);
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec4<bool>((80621i | global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a, u_input.a << (arg_0 % 32u), ~4294967295u), 15u)]) == -1i, any(!select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, false), arg_1.a), !vec2<bool>(arg_1.a, false), vec2<bool>(arg_1.a, true))), !(arg_2.b.x <= 1315f), !arg_1.a | select(any(vec2<bool>(arg_1.a, true)), all(vec2<bool>(true, true)), 0i > abs(arg_2.a)));
    let var_1 = Struct_1(_wgslsmith_div_i32(abs(-1i), abs(global0[_wgslsmith_index_u32(arg_0, 15u)])), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_2.b + arg_2.b))));
    let var_2 = -(-firstLeadingBit(-vec4<i32>(2147483647i, arg_2.a, arg_2.a, -3061i)) << (abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, arg_0, 84329u, 1u), vec4<u32>(arg_0, arg_0, 11133u, 4294967295u))) % vec4<u32>(32u)));
    var var_3 = vec4<f32>(-394f, var_1.b.x, _wgslsmith_f_op_f32(sign(arg_2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.x))) + -1226f));
    let var_4 = ~var_2.x;
    return vec3<bool>(!all(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, true, false), arg_1.a), !vec4<bool>(false, false, false, var_0.x), arg_0 < u_input.a)), !any(vec2<bool>(any(var_0.zwx), true)), arg_1.a);
}

fn func_7(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<bool>) -> Struct_3 {
    global0 = array<i32, 15>();
    let var_0 = Struct_1(-16999i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(arg_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(287f, -323f)), select(!arg_3.yx, vec2<bool>(arg_3.x, true), func_6(3271u, Struct_2(true, -56206i), arg_1).xy))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(~reverseBits(u_input.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(352f, arg_0.x, -1514f, arg_2), vec4<f32>(-1993f, arg_0.x, arg_1.b.x, var_0.b.x), vec4<bool>(arg_3.x, false, arg_3.x, true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1323f, 1508f, var_0.b.x, 2418f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-459f, arg_0.x, -1905f, -1000f))))))));
    var var_2 = ~(~select(vec4<u32>(73528u, ~u_input.a, select(68542u, u_input.a, arg_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 12435u), vec3<u32>(1u, 32309u, 35282u))), countOneBits(vec4<u32>(21182u, 1u, 31316u, 4294967295u) & vec4<u32>(24409u, u_input.a, 18449u, u_input.a)), vec4<bool>(true, true, !arg_3.x, !arg_3.x)));
    var var_3 = arg_1;
    return Struct_3(_wgslsmith_f_op_f32(sign(var_3.b.x)), true, -(reverseBits(~vec4<i32>(46879i, 0i, -7717i, 0i)) << (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(13282u, var_2.x, 1070u, var_2.x), vec4<u32>(81589u, 1u, 1101u, var_2.x), vec4<u32>(var_2.x, var_2.x, 4294967295u, var_2.x)), ~vec4<u32>(u_input.a, var_2.x, 23080u, var_2.x)) % vec4<u32>(32u))));
}

fn func_8(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: vec4<bool>) -> StorageBuffer {
    let var_0 = Struct_2(select(arg_1.x, arg_3.x, !(!arg_3.x)) && false, -_wgslsmith_div_i32(_wgslsmith_clamp_i32(~arg_0.c.x, abs(global0[_wgslsmith_index_u32(u_input.a, 15u)]), 22254i), arg_0.c.x));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(abs(1549f)))), arg_0.a);
    let var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(1i | arg_2.x, ~1i) & _wgslsmith_sub_vec2_i32(arg_2.zz, vec2<i32>(_wgslsmith_div_i32(arg_0.c.x, -11427i), var_0.b)), countOneBits(-abs(arg_0.c.yy)));
    global0 = array<i32, 15>();
    var var_3 = -228f;
    return StorageBuffer(-1000f, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.a, 4294967295u), reverseBits(select(vec4<u32>(1u, 1226u, 87091u, u_input.a) ^ vec4<u32>(u_input.a, 19584u, u_input.a, u_input.a), ~vec4<u32>(u_input.a, 79995u, u_input.a, 65495u), select(arg_3, vec4<bool>(var_0.a, var_0.a, arg_1.x, true), arg_3)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.a, 1356f, arg_0.a))))), 9140u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<u32>, 27>();
    let x = u_input.a;
    s_output = func_8(func_7(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(431f, 1688f, 1712f), vec3<f32>(-1873f, -338f, -129f))) * vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1151f, -1000f, -180f) - vec3<f32>(-133f, -1128f, -723f))))), Struct_1(-1i, vec2<f32>(-1000f, 237f)), -563f, func_6(8793u, Struct_2(true, 1i), func_1(all(vec3<bool>(false, true, false))))), select(!vec3<bool>(true, func_6(u_input.a, Struct_2(true, global0[_wgslsmith_index_u32(u_input.a, 15u)]), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 15u)], vec2<f32>(-1000f, 332f))).x, true), select(vec3<bool>(any(vec3<bool>(false, true, true)), true, true), !func_6(1u, Struct_2(true, global0[_wgslsmith_index_u32(1u, 15u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 15u)], vec2<f32>(-1259f, -1000f))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), vec3<bool>(true, true, true)), vec3<i32>(0i, firstLeadingBit(~global0[_wgslsmith_index_u32(max(u_input.a, 25227u), 15u)]), countOneBits(-(~(-2147483647i)))), select(select(vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(func_3(u_input.a ^ 1u)).x < _wgslsmith_f_op_f32(floor(-731f))));
}

