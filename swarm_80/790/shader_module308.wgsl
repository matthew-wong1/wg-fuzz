struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(7627u, 18038u, 0u, 4294967295u, 1u, 93053u, 1u, 96003u, 33906u, 1u, 1u, 13249u, 0u, 4294967295u, 557u, 74515u, 60655u, 0u, 0u, 20898u, 11892u, 4294967295u, 0u, 4294967295u);

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<bool>(false, false, false), vec4<i32>(-3758i, i32(-2147483648), 21693i, 2147483647i), 0u, vec4<bool>(true, false, true, true), vec3<f32>(306f, -683f, -1048f)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-19858i, -1i, 0i, 47333i), 4294967295u, vec4<bool>(true, false, true, true), vec3<f32>(-973f, 1000f, 483f)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), -28253i, -13495i, -53083i), 73412u, vec4<bool>(true, true, true, true), vec3<f32>(709f, -1211f, 298f)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(-17843i, 9498i, 1i, 8303i), 0u, vec4<bool>(false, true, true, true), vec3<f32>(937f, -949f, 1938f)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-1i, 5041i, 0i, i32(-2147483648)), 0u, vec4<bool>(false, false, true, false), vec3<f32>(-1330f, -338f, -1510f)), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-29968i, -1i, -9349i, 0i), 70538u, vec4<bool>(false, true, true, true), vec3<f32>(-318f, -615f, -1957f)), Struct_1(vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), -60713i, 0i, 2147483647i), 14942u, vec4<bool>(true, true, false, true), vec3<f32>(1180f, 1203f, -1000f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-2134i, -25355i, 24337i, 20473i), 0u, vec4<bool>(false, true, true, true), vec3<f32>(-565f, 990f, 1099f)), Struct_1(vec3<bool>(true, true, false), vec4<i32>(1i, i32(-2147483648), -1i, 15400i), 0u, vec4<bool>(true, true, false, false), vec3<f32>(-494f, -1856f, -1686f)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(32515i, -1905i, 0i, 1i), 105470u, vec4<bool>(false, false, false, false), vec3<f32>(-157f, 1169f, -189f)), Struct_1(vec3<bool>(false, false, false), vec4<i32>(-712i, -1i, -1i, 0i), 4294967295u, vec4<bool>(false, true, false, true), vec3<f32>(-369f, 541f, 606f)), Struct_1(vec3<bool>(true, true, true), vec4<i32>(2147483647i, 2147483647i, 53086i, -25259i), 1u, vec4<bool>(false, false, false, false), vec3<f32>(1479f, 2074f, -661f)), Struct_1(vec3<bool>(true, false, false), vec4<i32>(7591i, 2147483647i, 2147483647i, -5436i), 49362u, vec4<bool>(true, true, true, true), vec3<f32>(-766f, -236f, 836f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-42410i, -1i, 29113i, 15195i), 4294967295u, vec4<bool>(false, true, true, true), vec3<f32>(709f, -1174f, 1049f)), Struct_1(vec3<bool>(false, false, true), vec4<i32>(-1i, 1i, -3417i, -27354i), 1u, vec4<bool>(false, false, true, true), vec3<f32>(-467f, 1594f, -168f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-7268i, -39422i, 2147483647i, -10775i), 1u, vec4<bool>(true, false, false, false), vec3<f32>(-1828f, 764f, -1000f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec2<f32>) -> u32 {
    let var_0 = firstTrailingBit(~vec3<u32>(1u ^ firstTrailingBit(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~0u), arg_0.x));
    let var_1 = Struct_2(true, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, select(var_0.x, 4294967295u << (global0[_wgslsmith_index_u32(4294967295u, 24u)] % 32u), true), u_input.a.x), 16u)], Struct_1(vec3<bool>(10991u == select(111080u, var_0.x, true), arg_1.x, false), vec4<i32>(~(-29662i), select(-72505i, 1i, arg_1.x), _wgslsmith_mod_i32(-1i, 1i), i32(-1i) * -42524i) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x), vec4<u32>(1u, u_input.a.x, 0u, var_0.x)) ^ ~vec4<u32>(var_0.x, arg_0.x, 1u, arg_0.x)) % vec4<u32>(32u)), ~arg_0.x, select(select(select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(true, false, false, arg_1.x), arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, true), true), vec4<bool>(!arg_1.x, any(vec3<bool>(arg_1.x, false, arg_1.x)), all(arg_1), arg_1.x), !select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(arg_1.x, true, false, true), arg_1.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-617f, 1412f, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, -264f)), select(false & arg_1.x, any(vec2<bool>(arg_1.x, true)), arg_1.x)))), -(~vec3<i32>(firstLeadingBit(-2147483647i), i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 17312i, 3188i, 1i), vec4<i32>(0i, -20362i, -9465i, 2147483647i)))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1123f)) - 224f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(235f - _wgslsmith_f_op_f32(floor(-2060f))), -887f, !any(arg_1))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1068f) - _wgslsmith_f_op_f32(-arg_2.x)) + _wgslsmith_f_op_f32(-arg_2.x))), var_1.b.b.x <= 0i));
    let var_3 = Struct_2(all(!vec4<bool>(true, !arg_1.x, false, !arg_1.x)), var_1.c, global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~0u, 24u)] ^ ~1u, 16u)], var_1.b.b.xwx);
    var var_4 = var_3.b.b.x;
    return _wgslsmith_add_u32(var_0.x, _wgslsmith_mult_u32(arg_0.x, arg_0.x));
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = abs(-min(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, arg_0, 13630i), vec4<i32>(arg_0, arg_0, 20865i, 1i)) ^ ~vec4<i32>(-1i, arg_0, arg_0, arg_0), vec4<i32>(-1i) * -vec4<i32>(-25160i, 3497i, -2147483647i, -1i)));
    var var_1 = _wgslsmith_f_op_f32(1669f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-538f))) * _wgslsmith_f_op_f32(1559f + -341f))));
    let var_2 = firstTrailingBit(var_0);
    let var_3 = vec2<i32>(-1i, var_2.x);
    global0 = array<u32, 24>();
    return _wgslsmith_div_u32(~_wgslsmith_sub_u32(abs(~global0[_wgslsmith_index_u32(9874u, 24u)]), ~func_3(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35614u, 24u)], 24u)], 24u)], u_input.a.x), vec2<bool>(false, false), vec2<f32>(-302f, -688f))), _wgslsmith_div_u32(14009u, 17390u));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_1, 16>();
    global0 = array<u32, 24>();
    var var_0 = Struct_2(true, Struct_1(vec3<bool>(true, true, true), -select(vec4<i32>(3602i, 62825i, 14923i, 2147483647i), vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), true), func_2(0i), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, arg_0, 2178f)))))), Struct_1(!vec3<bool>(true, all(vec4<bool>(true, false, true, false)), true), countOneBits(reverseBits(vec4<i32>(arg_1.x, arg_1.x, 17900i, 22511i))), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)], global0[_wgslsmith_index_u32(16035u, 24u)])), 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0), -1112f))), arg_1);
    global1 = array<Struct_1, 16>();
    let var_1 = vec2<i32>(~var_0.d.x, abs(abs(_wgslsmith_mod_i32(var_0.b.b.x, select(-2147483647i, 2147483647i, true)))));
    return Struct_1(vec3<bool>(var_0.a && all(select(vec4<bool>(var_0.a, true, false, false), vec4<bool>(true, false, false, var_0.b.a.x), var_0.c.d.x)), !all(vec2<bool>(false, false)), all(var_0.b.a)), ~var_0.b.b, max(~1u, var_0.c.c), !select(!var_0.b.d, var_0.b.d, all(select(var_0.c.d.wzw, vec3<bool>(var_0.c.a.x, var_0.c.d.x, var_0.a), var_0.b.d.x))), _wgslsmith_f_op_vec3_f32(abs(var_0.c.e)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> f32 {
    global0 = array<u32, 24>();
    let var_0 = Struct_2(false, Struct_1(vec3<bool>(arg_1.b.d.x, !any(arg_0.d), false), abs(max(arg_2.b.b | vec4<i32>(arg_2.c.b.x, arg_0.b.x, arg_1.d.x, arg_1.b.b.x), _wgslsmith_mult_vec4_i32(arg_0.b, arg_2.b.b))), ~(~firstTrailingBit(u_input.a.x)), vec4<bool>(true, !arg_2.a, func_1(_wgslsmith_f_op_f32(arg_1.c.e.x * -205f), arg_2.c.b.ywz).a.x, arg_0.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1177f, _wgslsmith_f_op_f32(select(arg_0.e.x, 440f, false)), _wgslsmith_f_op_f32(-arg_2.b.e.x)) + arg_1.b.e)), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b.e.x, 2077f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))), vec3<i32>(1i, -_wgslsmith_div_i32(-2147483647i, arg_2.d.x), arg_3)), arg_0.b.wzz);
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(1u), 16u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.e.x, 275f))), 996f)) * var_0.c.e.x);
    var var_3 = func_1(-1927f, vec3<i32>(~_wgslsmith_mult_i32(min(arg_1.b.b.x, 43314i), 1i), arg_0.b.x, _wgslsmith_mod_i32(arg_2.d.x, -(~arg_1.d.x))));
    return -268f;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = arg_2.a.yy;
    global1 = array<Struct_1, 16>();
    var var_1 = ~(-2147483647i);
    global1 = array<Struct_1, 16>();
    var var_2 = Struct_2(arg_2.d.x, global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 24u)], 16u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(arg_1.b.e.x, arg_2.b.yzz).e.x)), arg_1.b.b.yyz), arg_2.b.zwx);
    return Struct_2(arg_2.d.x, var_2.b, Struct_1(arg_2.d.xwx, _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(arg_1.c.b, var_2.b.b), -(arg_2.b >> (vec4<u32>(arg_2.c, global0[_wgslsmith_index_u32(38875u, 24u)], var_2.c.c, 1u) % vec4<u32>(32u)))), firstLeadingBit(arg_2.c), select(vec4<bool>(true, true, !arg_2.d.x, arg_3 & false), vec4<bool>(arg_2.d.x, var_0.x, select(arg_1.b.a.x, true, true), any(arg_1.c.d.zw)), vec4<bool>(all(var_2.b.d), var_0.x, arg_2.d.x, !var_2.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1248f, -906f, 1639f) * var_2.b.e), vec3<f32>(-1633f, -2337f, -417f), any(vec2<bool>(arg_3, true)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1488f, 1221f, -470f)))), arg_1.b.b.wxx);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 16>();
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -398f), 288f)) * _wgslsmith_f_op_f32(func_4(Struct_1(vec3<bool>(true, false, true), abs(vec4<i32>(1i, -1i, -4182i, -2147483647i)), 4294967295u, vec4<bool>(true, true, true, true), vec3<f32>(-682f, -632f, 1278f)), Struct_2(any(vec3<bool>(false, true, true)), func_1(-330f, vec3<i32>(2147483647i, -537i, -1i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 24u)]), 16u)], vec3<i32>(1i, 2147483647i, -1i)), Struct_2(u_input.a.x > 4294967295u, Struct_1(vec3<bool>(true, false, true), vec4<i32>(10069i, 18988i, 2147483647i, 2147483647i), 0u, vec4<bool>(true, true, false, false), vec3<f32>(394f, -1000f, 1283f)), Struct_1(vec3<bool>(false, true, false), vec4<i32>(-2108i, 0i, 37695i, 2147483647i), u_input.a.x, vec4<bool>(false, true, true, false), vec3<f32>(-232f, -238f, -635f)), -vec3<i32>(2147483647i, -2147483647i, -2147483647i)), _wgslsmith_clamp_i32(~1i, 1i, ~(-15186i))))), Struct_2(15122u < u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(52567u, 24u)], u_input.a.x, 4294967295u), ~abs(vec4<u32>(u_input.a.x, 4294967295u, 66313u, 0u))), 16u)], vec3<i32>(1i, 1i, 1i)), global1[_wgslsmith_index_u32((~(~u_input.a.x) << (u_input.a.x % 32u)) << (0u % 32u), 16u)], false);
    var var_1 = 12557u >= (func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.e.x)) * var_0.b.e.x), _wgslsmith_add_vec3_i32(-var_0.d, min(var_0.c.b.xxz, var_0.c.b.yxw))).c << (firstLeadingBit(func_2(var_0.b.b.x) >> (_wgslsmith_div_u32(28149u, global0[_wgslsmith_index_u32(4294967295u, 24u)]) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(-52446i, var_0.d.x, _wgslsmith_mult_i32(var_0.c.b.x, var_0.b.b.x), func_1(454f, vec3<i32>(-2147483647i, var_0.d.x, var_0.c.b.x)).b.x ^ _wgslsmith_add_i32(var_0.b.b.x, var_0.b.b.x))), var_0.c.e.yx, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(var_0.c.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(485f, -2628f, var_0.b.e.x) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.e.x, -1522f, 189f), vec3<f32>(var_0.b.e.x, -117f, 488f)))))))), select(firstLeadingBit(func_1(var_0.b.e.x, vec3<i32>(var_0.d.x, var_0.d.x, var_0.b.b.x)).b.x & 0i), -2147483647i, var_0.c.d.x), var_0.c.b.x);
}

