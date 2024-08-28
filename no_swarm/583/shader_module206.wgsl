struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 397f, vec3<f32>(1554f, -635f, -1278f));

var<private> global1: array<i32, 21> = array<i32, 21>(27151i, 64054i, -3371i, 0i, -76562i, 1i, 54569i, 1i, 2147483647i, 0i, 1i, 2147483647i, i32(-2147483648), 2147483647i, 1i, 21969i, 1i, -69616i, 22101i, -33264i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    global1 = array<i32, 21>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, 1f)));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1148f)) - _wgslsmith_f_op_f32(select(-1836f, 1600f, global0.a))), var_0, _wgslsmith_f_op_f32(386f + 624f), global0.c.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-893f, var_0, 1007f, global0.c.x), vec4<f32>(var_0, -463f, 365f, global0.b), true)), vec4<f32>(1601f, var_0, global0.c.x, -971f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, var_0, 797f, var_0)) - vec4<f32>(-1556f, 177f, global0.b, 1000f)))), vec4<f32>(global0.c.x, 352f, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0))))));
    global0 = Struct_1(!global0.a, var_1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, _wgslsmith_f_op_f32(global0.c.x * -1678f), _wgslsmith_f_op_f32(ceil(-840f)))) + _wgslsmith_f_op_vec3_f32(var_1.zxy - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.c + vec3<f32>(-628f, -273f, 1977f)))))));
    var var_2 = max(min(min(~(~vec2<u32>(50406u, 1u)), ~(~vec2<u32>(0u, 1u))), ~vec2<u32>(~63571u, 4294967295u)), vec2<u32>(1u, reverseBits(_wgslsmith_clamp_u32(34460u, 53475u, 8571u) & 4294967295u)));
    return _wgslsmith_f_op_f32(var_1.x * -1526f);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    global0 = var_0.c;
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(func_3(abs(-(~vec4<i32>(global1[_wgslsmith_index_u32(22623u, 21u)], var_0.a.x, global1[_wgslsmith_index_u32(1u, 21u)], arg_1.a.x))), 12540i, _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], -53496i), ~var_0.a) << (select(firstTrailingBit(vec3<u32>(26650u, 4294967295u, 0u)), vec3<u32>(1u, 1u, 1u), var_0.c.a) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(min(global0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f + global0.b)), -625f, _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, 1i, -2147483647i, var_0.a.x), vec4<i32>(2147483647i, arg_1.a.x, var_0.a.x, u_input.a)), _wgslsmith_add_i32(u_input.a, -70497i), firstLeadingBit(var_0.a)))))));
    global1 = array<i32, 21>();
    global1 = array<i32, 21>();
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    global1 = array<i32, 21>();
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(308f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3((vec4<i32>(arg_1.a.x, global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(arg_0, 21u)], 1i) >> (vec4<u32>(arg_2, 0u, arg_2, 44940u) % vec4<u32>(32u))) >> ((vec4<u32>(4294967295u, 8568u, arg_0, 12997u) >> (vec4<u32>(arg_0, arg_2, 1u, arg_0) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.a, arg_1.a ^ -arg_1.a))));
    var_1 = 132f;
    var var_2 = global0.a;
    return arg_1.c;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(808f, 475f, false)) - arg_1.c.c.x)))), arg_1.b);
    var var_0 = func_4(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, ~28137u), ~(~max(1u, 4294967295u))), func_2(arg_0, arg_1), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c.b, _wgslsmith_f_op_f32(-arg_1.c.b), _wgslsmith_f_op_f32(max(arg_1.c.b, 217f)), _wgslsmith_f_op_f32(-258f * global0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.b.x, -861f)), _wgslsmith_f_op_f32(func_3(vec4<i32>(-1i, 6091i, -2147483647i, u_input.a), 45487i, vec3<i32>(-19114i, u_input.a, -2147483647i))), -802f, _wgslsmith_f_op_f32(abs(arg_1.c.c.x))), !all(vec3<bool>(global0.a, false, global0.a)))) - vec4<f32>(global0.b, _wgslsmith_f_op_f32(arg_1.b.x + -690f), -1000f, 605f)));
    global1 = array<i32, 21>();
    var_0 = func_4((~_wgslsmith_dot_vec2_u32(vec2<u32>(101343u, 0u), vec2<u32>(4294967295u, 28803u)) & max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u)), select(29314u, 22326u, false))) | ~(~0u), Struct_2(arg_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(var_0.c))))), arg_1.c), 14820u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.b) + 1789f)), _wgslsmith_f_op_f32(func_3(max(vec4<i32>(u_input.a, -1i, -525i, -1782i), _wgslsmith_div_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 21u)], 23536i, 13194i, u_input.a), vec4<i32>(-2147483647i, 0i, u_input.a, arg_2))), 13474i, func_2(vec3<bool>(true, true, false), func_2(vec3<bool>(false, false, true), arg_1)).a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.b), _wgslsmith_f_op_f32(487f * 1000f)) * 632f)));
    let var_1 = true;
    return Struct_1(arg_0.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, arg_1.c.b)) + global0.c.x)), vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x + arg_1.c.b), -363f, arg_1.b.x));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<u32>) -> Struct_1 {
    global0 = Struct_1(true, 828f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_1.b), _wgslsmith_f_op_vec3_f32(-arg_1.c.c))) * global0.c), arg_2));
    var var_0 = _wgslsmith_f_op_vec3_f32(-global0.c);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, global0.c.x)))), _wgslsmith_f_op_f32(-func_4(~14689u, Struct_2(vec3<i32>(arg_1.a.x, u_input.a, global1[_wgslsmith_index_u32(0u, 21u)]), arg_1.b, arg_1.c), 0u, vec4<f32>(404f, 1286f, var_0.x, 1679f)).b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 851f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, arg_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(func_2(vec3<bool>(arg_1.c.a, global0.a, global0.a), Struct_2(arg_1.a, arg_1.b, arg_1.c)).c.c.zx))), func_4(0u, Struct_2(-arg_1.a, vec3<f32>(669f, arg_2.x, 922f), func_4(4294967295u, arg_1, arg_3.x, vec4<f32>(arg_0.x, 996f, 167f, arg_2.x))), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_3.wz, arg_3.zz), max(arg_3.xx, arg_3.wz)), vec4<f32>(_wgslsmith_f_op_f32(572f * arg_0.x), global0.b, _wgslsmith_f_op_f32(-arg_0.x), 2426f)).a)) + arg_2.zz);
    var var_2 = arg_3.x;
    return arg_1.c;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(ceil(arg_2)))), _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_vec2_f32(-global0.c.xx));
    global0 = func_5(global0.c.zx, arg_0, global0.c, ~(~vec4<u32>(_wgslsmith_mod_u32(1u, 48239u), ~1u, _wgslsmith_mod_u32(34584u, 6471u), ~34602u)));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.c.zx)))) - vec2<f32>(_wgslsmith_f_op_f32(261f - var_0.x), global0.b));
    var var_1 = ~(~vec4<u32>(44255u, _wgslsmith_dot_vec2_u32(~vec2<u32>(50266u, 0u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(10653u, 4294967295u), vec2<u32>(0u, 1u))), ~(~23523u), ~11818u));
    let var_2 = func_2(select(select(select(!vec3<bool>(false, global0.a, arg_0.c.a), !vec3<bool>(false, arg_0.c.a, global0.a), !vec3<bool>(arg_0.c.a, arg_0.c.a, false)), !select(vec3<bool>(global0.a, global0.a, false), vec3<bool>(arg_0.c.a, true, false), false), !(!vec3<bool>(arg_0.c.a, true, true))), vec3<bool>(arg_1.a, true || (false && arg_0.c.a), any(select(vec4<bool>(false, true, arg_1.a, arg_1.a), vec4<bool>(false, true, arg_0.c.a, true), vec4<bool>(false, false, arg_1.a, false)))), vec3<bool>(any(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_1.a)), func_2(!vec3<bool>(true, false, arg_0.c.a), arg_0).c.a, all(vec3<bool>(arg_1.a, true, global0.a)))), Struct_2(_wgslsmith_add_vec3_i32(select(~arg_0.a, _wgslsmith_mod_vec3_i32(arg_0.a, arg_0.a), arg_1.a), vec3<i32>(i32(-1i) * -25933i, 11168i, arg_0.a.x >> (0u % 32u))), _wgslsmith_f_op_vec3_f32(-arg_1.c), arg_1));
    return func_5(vec2<f32>(-1000f, arg_1.c.x), arg_0, _wgslsmith_f_op_vec3_f32(arg_0.c.c * func_4(0u, Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, -22086i, var_2.a.x), arg_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1391f, arg_0.b.x), vec3<f32>(602f, arg_1.c.x, -576f)), arg_0.c), ~60086u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1700f, global0.c.x, 1000f, -120f) - vec4<f32>(arg_1.c.x, 285f, var_0.x, global0.b)))).c), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(30691u, 4294967295u, var_1.x, var_1.x), ~vec4<u32>(var_1.x, 4294967295u, 68127u, var_1.x)), vec4<u32>(var_1.x, _wgslsmith_mod_u32(11067u, 52527u), 4294967295u, _wgslsmith_sub_u32(var_1.x, var_1.x))) ^ ~(~vec4<u32>(101428u, 0u, 40820u, 31745u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(55852u, 21u)], 24009i), vec4<i32>(u_input.a, -25984i, 38744i, u_input.a)) ^ reverseBits(-3567i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(13673u, 1u, 65835u, 1u), vec4<u32>(92649u, 1u, 1u, 1u)), ~vec4<u32>(0u, 79998u, 57544u, 4294967295u)), 21u)], abs(u_input.a)), vec3<f32>(global0.b, global0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -693f)), func_5(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-global0.b)), Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(-36252i, 1i, -16364i), vec3<i32>(1i, u_input.a, global1[_wgslsmith_index_u32(8355u, 21u)])), _wgslsmith_f_op_vec3_f32(-global0.c), func_1(vec3<bool>(true, false, false), Struct_2(vec3<i32>(-29573i, global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(23202u, 21u)]), vec3<f32>(1206f, -1130f, global0.c.x), Struct_1(true, 601f, global0.c)), -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-165f, 604f, global0.c.x), vec3<f32>(-321f, -703f, global0.b))), vec4<u32>(1u, 1u, 1u, 1u))), Struct_1(func_1(vec3<bool>(true, global0.a, true), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(37288i, u_input.a, 35258i), vec3<i32>(-1i, u_input.a, 2147483647i), vec3<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 21u)], -1i)), global0.c, Struct_1(global0.a, global0.b, global0.c)), abs(global1[_wgslsmith_index_u32(~1u, 21u)])).a, _wgslsmith_f_op_f32(-global0.b), global0.c), -526f, 2147483647i);
    let var_0 = Struct_1(!global0.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -890f), -1332f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1912f, -363f, -775f), vec3<f32>(global0.b, global0.b, global0.b)) - _wgslsmith_div_vec3_f32(global0.c, vec3<f32>(464f, 122f, 314f))))));
    let var_1 = true;
    global0 = Struct_1(true, _wgslsmith_f_op_f32(abs(var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, func_2(!vec3<bool>(var_0.a, false, var_0.a), Struct_2(vec3<i32>(18738i, global1[_wgslsmith_index_u32(23930u, 21u)], 0i), var_0.c, var_0)).c.c.x, -1161f)));
    var var_2 = vec4<i32>(abs(_wgslsmith_dot_vec3_i32(select(~vec3<i32>(-5048i, 1i, -2147483647i), -vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(14127u, 21u)], -54979i), !var_1), countOneBits(abs(vec3<i32>(global1[_wgslsmith_index_u32(0u, 21u)], global1[_wgslsmith_index_u32(39476u, 21u)], 0i))))), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(global1[_wgslsmith_index_u32(4294967295u, 21u)]), _wgslsmith_mod_i32(1i, 47081i), 15252i) >> (_wgslsmith_clamp_vec3_u32(max(vec3<u32>(100510u, 13427u, 0u), vec3<u32>(60100u, 0u, 14851u)), vec3<u32>(4294967295u, 28131u, 97818u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(39671u, 0u, 1u), vec3<u32>(30909u, 64071u, 0u))) % vec3<u32>(32u)), countOneBits(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(60116i, global1[_wgslsmith_index_u32(4294967295u, 21u)], 2199i), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(global1[_wgslsmith_index_u32(74873u, 21u)], u_input.a, u_input.a)), ~vec3<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 21u)]), var_1))), -2147483647i, ~(-func_2(!vec3<bool>(var_1, true, false), Struct_2(vec3<i32>(u_input.a, u_input.a, 2147483647i), var_0.c, Struct_1(false, -549f, vec3<f32>(1000f, global0.c.x, -188f)))).a.x));
    var_2 = firstTrailingBit(-vec4<i32>(select(-1i, countOneBits(-13676i), func_5(vec2<f32>(var_0.b, 1000f), Struct_2(var_2.zwy, vec3<f32>(-1959f, -1000f, -1077f), Struct_1(false, global0.b, var_0.c)), vec3<f32>(var_0.b, -1118f, global0.c.x), vec4<u32>(3940u, 6060u, 10249u, 0u)).a), ~_wgslsmith_mod_i32(var_2.x, 2147483647i), 27326i, countOneBits(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(3733u, 21u)], -53584i))));
    global0 = Struct_1((global0.a == (-2147483647i != -global1[_wgslsmith_index_u32(1u, 21u)])) && false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-245f * 2575f))) * _wgslsmith_f_op_f32(step(-184f, _wgslsmith_f_op_f32(global0.c.x + func_4(1u, Struct_2(vec3<i32>(u_input.a, 43082i, 19997i), vec3<f32>(global0.b, var_0.c.x, -1000f), Struct_1(global0.a, -1765f, var_0.c)), 9142u, vec4<f32>(global0.b, 685f, -1799f, 2712f)).b)))), func_2(!select(!vec3<bool>(true, true, var_0.a), vec3<bool>(false, false, false), select(vec3<bool>(var_1, false, global0.a), vec3<bool>(var_1, false, false), vec3<bool>(true, global0.a, var_1))), func_2(!select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, true, true), var_1), func_2(!vec3<bool>(var_0.a, true, var_1), func_2(vec3<bool>(global0.a, true, true), Struct_2(var_2.yzx, vec3<f32>(-2164f, global0.c.x, var_0.b), var_0))))).b);
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(455f, _wgslsmith_f_op_f32(-func_1(vec3<bool>(var_0.a, false, var_0.a), Struct_2(var_2.zzy, vec3<f32>(935f, var_0.b, global0.c.x), var_3), var_2.x).b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(809f, var_3.b))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, func_6(Struct_2(vec3<i32>(2147483647i, 27044i, u_input.a), vec3<f32>(-1260f, global0.c.x, 1337f), Struct_1(false, var_3.c.x, vec3<f32>(var_3.c.x, var_3.b, -1577f))), Struct_1(var_0.a, global0.c.x, global0.c), -252f, var_2.x).c.x, global0.b))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.b - 672f), 130f)))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, -1000f))), 1f));
}

