struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_2 = Struct_2(Struct_1(43667u, -270f, -73456i, vec4<i32>(39281i, 0i, 11881i, 2147483647i), false), vec3<f32>(421f, -107f, -187f), -870f);

var<private> global2: array<u32, 5> = array<u32, 5>(4294967295u, 78971u, 33153u, 35346u, 28642u);

var<private> global3: array<i32, 23> = array<i32, 23>(1i, 24092i, 2147483647i, -2352i, -1i, -26775i, 0i, i32(-2147483648), -1i, 44019i, 2147483647i, 5970i, i32(-2147483648), 2147483647i, -6117i, 25765i, -12502i, i32(-2147483648), -14167i, 0i, 0i, -1i, 16000i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    global1 = Struct_2(Struct_1(~(~4294967295u), _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_sub_i32(abs(2147483647i << (global2[_wgslsmith_index_u32(global1.a.a, 5u)] % 32u)), global3[_wgslsmith_index_u32(78917u | min(u_input.a.x, 95455u), 23u)]), vec4<i32>(-8681i >> (~arg_0.a % 32u), -(24574i & arg_0.c), global3[_wgslsmith_index_u32(max(39865u, 4294967295u), 23u)], global1.a.d.x), any(select(select(vec4<bool>(false, arg_0.e, arg_0.e, true), vec4<bool>(global1.a.e, false, false, false), vec4<bool>(arg_0.e, global1.a.e, global1.a.e, global1.a.e)), vec4<bool>(true, false, arg_0.e, false), select(vec4<bool>(true, true, global1.a.e, global1.a.e), vec4<bool>(false, arg_0.e, true, true), vec4<bool>(true, false, false, arg_0.e))))), global1.b, _wgslsmith_f_op_f32(f32(-1f) * -1062f));
    global0 = true;
    var var_0 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1497f))), 31862i | _wgslsmith_clamp_i32(arg_0.c, -3832i, _wgslsmith_mod_i32(15019i ^ arg_0.d.x, _wgslsmith_clamp_i32(1i, global1.a.d.x, 21336i))), ~arg_0.d, false);
    let var_1 = Struct_3(Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1069f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1330f, -739f)), -163f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.b)), _wgslsmith_f_op_f32(abs(arg_0.b))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.b.zy * vec2<f32>(-1000f, -263f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(222f, global1.a.b) - global1.b.xy)), vec2<f32>(-254f, _wgslsmith_f_op_f32(global1.a.b * var_0.b)))), Struct_2(Struct_1(global2[_wgslsmith_index_u32(~44898u, 5u)], arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, global1.a.d.x, 1i), vec4<i32>(global1.a.c, 2147483647i, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 23u)], arg_0.d.x)) << (u_input.a.x % 32u), _wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, -122600i, var_0.c, 1i)), global1.a.d << (vec4<u32>(arg_0.a, arg_0.a, u_input.a.x, global2[_wgslsmith_index_u32(0u, 5u)]) % vec4<u32>(32u))), all(!vec4<bool>(true, true, true, var_0.e))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b, global1.b)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.b, arg_0.b))))), -904f);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(784f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), 1890f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-631f, arg_0.b)))), -280f)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_2.ww)))));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -435f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_div_f32(1073f, 797f))), -2147483647i, global1.a.d | vec4<i32>(_wgslsmith_mod_i32(arg_2.c.a.c, arg_2.a.a.d.x), global1.a.d.x, 1i, ~global3[_wgslsmith_index_u32(7347u, 23u)]), !global1.a.e), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -188f)))));
    var var_1 = Struct_2(var_0.a, _wgslsmith_div_vec3_f32(arg_2.c.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b) + vec3<f32>(-1846f, _wgslsmith_f_op_f32(sign(arg_2.b.x)), 258f))), arg_1);
    let var_2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.a, u_input.a.x, u_input.a.x, global1.a.a), firstTrailingBit(vec4<u32>(global1.a.a, var_0.a.a, var_0.a.a, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.a)).x), ~(-global3[_wgslsmith_index_u32(reverseBits(arg_2.a.a.a), 23u)]), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-34368i, -930i, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0.a.d.x), vec4<i32>(global1.a.c, var_1.a.d.x, 0i, global3[_wgslsmith_index_u32(1u, 23u)]))) ^ select(var_0.a.d, global1.a.d ^ var_1.a.d, arg_2.c.a.e & var_0.a.e), true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c - global1.b.x)))), arg_2.b.x, _wgslsmith_f_op_f32(select(var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) * _wgslsmith_f_op_f32(abs(-794f))), true))), global1.a.b);
    global3 = array<i32, 23>();
    return select(~((global1.a.a >> (var_2.a.a % 32u)) & 17342u), var_2.a.a, true);
}

fn func_2() -> i32 {
    let var_0 = ~func_4(true, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 596f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-556f))))), Struct_3(Struct_2(Struct_1(142018u, -1462f, 2147483647i, global1.a.d, global1.a.e), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1522f, global1.c, global1.a.b), global1.b, vec3<bool>(global1.a.e, false, true))), _wgslsmith_div_f32(global1.a.b, 391f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(global1.a)) - global1.b.yz), Struct_2(Struct_1(23988u, 352f, 7474i, vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(21669u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], global3[_wgslsmith_index_u32(30914u, 23u)]), global1.a.e), _wgslsmith_f_op_vec3_f32(-global1.b), -715f), _wgslsmith_f_op_f32(-1534f - _wgslsmith_f_op_f32(step(-1274f, global1.c)))));
    var var_1 = all(select(vec3<bool>(true, any(select(vec3<bool>(true, global1.a.e, false), vec3<bool>(global1.a.e, true, false), global1.a.e)), !(!global1.a.e)), vec3<bool>(false, global1.a.e, global1.a.e), !((global1.a.e | global1.a.e) | any(vec2<bool>(true, global1.a.e)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1016f * -838f) + 2708f));
    var var_3 = -(global1.a.d.xzx << (vec3<u32>(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(45386u, 5u)], min(u_input.a.x, global2[_wgslsmith_index_u32(42367u, 5u)])), 159u, ~func_4(true, 515f, Struct_3(Struct_2(Struct_1(u_input.a.x, global1.c, 1i, global1.a.d, false), global1.b, global1.a.b), vec2<f32>(153f, global1.b.x), Struct_2(Struct_1(33465u, global1.a.b, global3[_wgslsmith_index_u32(30404u, 23u)], vec4<i32>(17490i, 1i, 1886i, global1.a.d.x), false), vec3<f32>(-1000f, global1.a.b, global1.c), global1.b.x), 781f))) % vec3<u32>(32u)));
    global2 = array<u32, 5>();
    return abs(min(abs(global1.a.d.x), _wgslsmith_add_i32(13594i, ~max(2147483647i, 2147483647i))));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = abs(~u_input.a);
    global2 = array<u32, 5>();
    global0 = true;
    global0 = arg_2.a.e;
    global3 = array<i32, 23>();
    return Struct_2(arg_3, arg_2.b, 917f);
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: i32) -> Struct_3 {
    global2 = array<u32, 5>();
    let var_0 = ~(~4294967295u);
    let var_1 = arg_0;
    let var_2 = func_5(~(~_wgslsmith_clamp_i32(1i, func_2(), 2147483647i)), !(!(!(!vec3<bool>(var_1, true, var_1)))), Struct_2(global1.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.c), _wgslsmith_f_op_f32(abs(global1.b.x)), _wgslsmith_f_op_f32(step(global1.a.b, global1.a.b))), global1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1123f)) - _wgslsmith_f_op_f32(min(556f, global1.c)))))), global1.a);
    global3 = array<i32, 23>();
    return Struct_3(Struct_2(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -588f), _wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -450f)))), var_2.b.zx, func_5(select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 93030u), 23u)], -global1.a.c, arg_2) >> (2161u % 32u), select(vec3<bool>(false, var_1, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, global1.a.e, arg_2), vec3<bool>(true, global1.a.e, true)), select(vec3<bool>(arg_0, false, var_2.a.e), vec3<bool>(true, false, false), vec3<bool>(false, global1.a.e, var_1)), !var_1), true), var_2, func_5(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, -2147483647i, arg_3), vec3<i32>(40237i, -41344i, -1i)), select(select(vec3<bool>(var_1, var_2.a.e, global1.a.e), vec3<bool>(false, var_1, false), false), !vec3<bool>(arg_2, true, var_1), vec3<bool>(true, global1.a.e, arg_2)), Struct_2(Struct_1(var_0, global1.b.x, -1i, vec4<i32>(arg_3, arg_1.x, global1.a.d.x, var_2.a.d.x), false), var_2.b, _wgslsmith_f_op_f32(abs(1201f))), Struct_1(~0u, _wgslsmith_f_op_f32(step(-598f, -403f)), -46623i, min(vec4<i32>(-2366i, 0i, -79215i, 18859i), vec4<i32>(var_2.a.d.x, -17463i, global3[_wgslsmith_index_u32(var_0, 23u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(37318u, 5u)], 23u)])), true)).a), -308f);
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b));
    global3 = array<i32, 23>();
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~(~36418u), ~func_1(true, vec4<i32>(global1.a.c, 1i, 2147483647i, global1.a.c), true, 61942i).c.a.a), u_input.a.x), min(arg_2.a.a.a, global1.a.a), _wgslsmith_sub_u32(~arg_2.a.a.a, 10465u), global2[_wgslsmith_index_u32(global1.a.a, 5u)]);
    let var_2 = func_1(!(-arg_2.a.a.c < 1i), ~arg_2.c.a.d, select(true, select(true, true, arg_2.c.a.e), true), i32(-1i) * -global1.a.d.x);
    var var_3 = arg_2.c.a;
    return arg_2.b.x;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_mult_u32(abs(global1.a.a), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(27669u, 5u)], 7359u))), abs(~4294967295u));
    global1 = Struct_2(Struct_1(arg_1.c.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(func_5(-38321i, vec3<bool>(false, global1.a.e, true), arg_1.c, arg_0.a.a).a)).x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.b.x, -986f, arg_2.x)) + _wgslsmith_f_op_f32(func_6(vec4<f32>(global1.b.x, global1.c, 2269f, -655f), vec3<bool>(true, true, arg_0.a.a.e), arg_1, arg_1.b.x)))), 7296i, -(vec4<i32>(-1i) * -vec4<i32>(global3[_wgslsmith_index_u32(var_0.x, 23u)], global3[_wgslsmith_index_u32(arg_1.c.a.a, 23u)], 7923i, arg_0.a.a.d.x)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1078f, _wgslsmith_f_op_f32(-1097f - -1882f), _wgslsmith_f_op_f32(abs(arg_1.d)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, global1.b.x, arg_1.b.x, 441f))), select(vec3<bool>(true, false, false), !vec3<bool>(true, arg_0.c.a.e, true), select(vec3<bool>(global1.a.e, arg_0.c.a.e, arg_0.c.a.e), vec3<bool>(global1.a.e, true, true), vec3<bool>(arg_2.x, true, arg_2.x))), arg_0, _wgslsmith_f_op_f32(-791f - 271f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1429f * arg_0.b.x) - -1312f), _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, -483f, arg_0.a.b.x, arg_0.c.a.b)), !vec3<bool>(true, global1.a.e, arg_0.c.a.e), Struct_3(arg_0.c, global1.b.xx, arg_0.a, arg_0.d), _wgslsmith_f_op_f32(-arg_1.d))), arg_2.x))));
    var var_1 = func_1(all(!(!vec3<bool>(true, arg_2.x, global1.a.e))) && true, vec4<i32>(-1i) * -arg_0.c.a.d, !select(!global1.a.e, arg_1.a.a.e, false), 2147483647i).a.a;
    var var_2 = _wgslsmith_mult_vec2_i32(var_1.d.wz, arg_1.a.a.d.zx);
    global2 = array<u32, 5>();
    return func_5(abs(arg_1.a.a.c << (_wgslsmith_add_u32(~global1.a.a, 4294967295u) % 32u)), !(!select(select(vec3<bool>(var_1.e, var_1.e, true), vec3<bool>(true, false, arg_2.x), vec3<bool>(true, true, var_1.e)), !vec3<bool>(false, arg_1.c.a.e, arg_2.x), arg_1.a.a.e)), func_5(~1i, !select(select(vec3<bool>(false, arg_2.x, true), vec3<bool>(true, false, arg_2.x), true), !vec3<bool>(var_1.e, arg_0.a.a.e, arg_1.c.a.e), select(vec3<bool>(true, arg_1.a.a.e, true), vec3<bool>(true, global1.a.e, false), vec3<bool>(arg_1.a.a.e, true, false))), func_5(_wgslsmith_mult_i32(~(-2147483647i), global1.a.d.x), select(vec3<bool>(true, true, true), !vec3<bool>(false, false, arg_0.a.a.e), select(vec3<bool>(true, var_1.e, global1.a.e), vec3<bool>(var_1.e, false, true), true)), func_1(arg_2.x, -var_1.d, arg_0.a.a.e, -var_2.x).a, arg_0.c.a), Struct_1(var_0.x, global1.b.x, min(32417i, arg_1.a.a.d.x << (arg_0.a.a.a % 32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(global1.a.d, var_1.d), -arg_1.c.a.d), global1.a.e)), func_5(global1.a.c, !(!vec3<bool>(false, true, var_1.e)), func_1(all(!arg_2), abs(arg_1.a.a.d ^ var_1.d), arg_2.x || var_1.e, -29998i).c, arg_0.a.a).a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global3 = array<i32, 23>();
    var var_0 = func_7(Struct_3(Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, global1.b.x, -397f)), _wgslsmith_f_op_f32(func_6(vec4<f32>(-339f, 1343f, -284f, global1.c), vec3<bool>(false, false, false), func_1(true, vec4<i32>(-17637i, 0i, -2147483647i, global3[_wgslsmith_index_u32(global1.a.a, 23u)]), global1.a.e, global1.a.c), _wgslsmith_f_op_vec2_f32(func_3(global1.a)).x))), vec2<f32>(454f, -1298f), Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-308f, 1000f, -1307f) + _wgslsmith_f_op_vec3_f32(-global1.b)), _wgslsmith_f_op_f32(select(2311f, -636f, global1.a.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(847f, -2102f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) * _wgslsmith_div_f32(-1544f, global1.a.b)))), func_1(!global1.a.e, global1.a.d, true & !(!global1.a.e), ~(1i ^ func_2())), vec2<bool>(!func_1(all(vec2<bool>(global1.a.e, global1.a.e)), global1.a.d, global1.a.e, 1i).a.a.e, !any(select(vec3<bool>(global1.a.e, global1.a.e, true), vec3<bool>(false, true, global1.a.e), global1.a.e))));
    let var_1 = firstTrailingBit(-2147483647i);
    var var_2 = any(vec2<bool>(!(select(global1.a.e, false, var_0.a.e) != global1.a.e), global1.a.e));
    global3 = array<i32, 23>();
    let var_3 = func_1(any(!(!vec3<bool>(true, var_0.a.e, global1.a.e))), firstTrailingBit(~var_0.a.d), any(!select(!vec2<bool>(var_0.a.e, true), vec2<bool>(true, true), func_5(0i, vec3<bool>(var_0.a.e, global1.a.e, var_0.a.e), Struct_2(Struct_1(global2[_wgslsmith_index_u32(87700u, 5u)], var_0.c, -1i, var_0.a.d, false), global1.b, var_0.b.x), Struct_1(u_input.a.x, var_0.b.x, 5177i, global1.a.d, false)).a.e)), -1i).a.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(34484u, 7258u), vec2<u32>(var_3.a, var_0.a.a))), min(1u, func_1(true, vec4<i32>(1i, 0i, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.a, 5u)], 23u)], 1i), true, var_0.a.d.x).c.a.a) << (global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_3.a, 5u)], u_input.a.x) >> ((4294967295u ^ var_3.a) % 32u), 5u)] % 32u), 33898u, ~global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, global1.a.a, var_3.a), vec4<u32>(var_0.a.a, 57612u, 63360u, global2[_wgslsmith_index_u32(15878u, 5u)])), 5u)]), ~_wgslsmith_div_u32(firstTrailingBit(~29227u), global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_7(Struct_3(Struct_2(Struct_1(u_input.a.x, -282f, 48311i, global1.a.d, global1.a.e), global1.b, 2173f), global1.b.yy, Struct_2(Struct_1(0u, var_3.b, var_3.d.x, global1.a.d, false), vec3<f32>(1000f, 1096f, 1678f), -318f), var_0.b.x), Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 5u)], var_3.b, 0i, vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(4294967295u, 23u)], 0i, var_3.d.x), var_3.e), vec3<f32>(1259f, -493f, 641f), 560f), global1.b.zx, Struct_2(Struct_1(1u, -509f, 0i, var_3.d, var_0.a.e), var_0.b, var_0.c), -1192f), vec2<bool>(global1.a.e, var_3.e)).b.x, -210f)))));
}

