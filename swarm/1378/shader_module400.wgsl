struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<i32>(28309i, -27140i, 26176i, -88838i)), Struct_1(vec4<i32>(-1i, -30928i, -8232i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 49875i, -28570i, 29367i)), Struct_1(vec4<i32>(11829i, -26722i, -38536i, 0i)), Struct_1(vec4<i32>(6357i, 55637i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), -17428i, 1i, -1i)), Struct_1(vec4<i32>(33882i, -1i, -14524i, 2147483647i)), Struct_1(vec4<i32>(-28787i, -22416i, 11315i, 0i)), Struct_1(vec4<i32>(12269i, 1i, 43826i, i32(-2147483648))), Struct_1(vec4<i32>(-1761i, 3043i, -23726i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -45012i, 1i)), Struct_1(vec4<i32>(7808i, -38379i, 2147483647i, 1i)), Struct_1(vec4<i32>(-1i, 7341i, 485i, 52717i)), Struct_1(vec4<i32>(0i, 2147483647i, 1i, -56741i)), Struct_1(vec4<i32>(1i, -1i, 14323i, -34643i)), Struct_1(vec4<i32>(1i, -22733i, -1i, 55599i)), Struct_1(vec4<i32>(0i, -11917i, i32(-2147483648), -3333i)), Struct_1(vec4<i32>(11774i, -54916i, 0i, 2147483647i)), Struct_1(vec4<i32>(-1i, 2147483647i, 60902i, i32(-2147483648))), Struct_1(vec4<i32>(-3198i, 0i, 6492i, 2147483647i)), Struct_1(vec4<i32>(2147483647i, 1i, -34308i, 15862i)), Struct_1(vec4<i32>(0i, i32(-2147483648), 34174i, 1i)), Struct_1(vec4<i32>(-1358i, -16498i, 44060i, 0i)), Struct_1(vec4<i32>(-16700i, -34198i, 2147483647i, 45005i)), Struct_1(vec4<i32>(2993i, -1i, -12978i, -1i)), Struct_1(vec4<i32>(-29528i, -1i, -1i, 0i)), Struct_1(vec4<i32>(7494i, i32(-2147483648), 0i, 15144i)), Struct_1(vec4<i32>(67616i, 17491i, 29160i, i32(-2147483648))));

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 78155i), vec2<i32>(1i, 34131i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-12198i, -25238i), vec2<i32>(-1i, -37987i), vec2<i32>(12149i, -17775i), vec2<i32>(2147483647i, -18543i), vec2<i32>(10684i, -14367i), vec2<i32>(2147483647i, 26566i), vec2<i32>(1i, -1i), vec2<i32>(1i, 7211i), vec2<i32>(-66788i, 31991i), vec2<i32>(1i, 23005i), vec2<i32>(664i, -19297i), vec2<i32>(-21931i, -5310i), vec2<i32>(i32(-2147483648), -48478i), vec2<i32>(24304i, -1i), vec2<i32>(1i, 2147483647i), vec2<i32>(0i, 9418i), vec2<i32>(64726i, -1i), vec2<i32>(-50061i, -20295i), vec2<i32>(7310i, -16313i), vec2<i32>(-7580i, i32(-2147483648)));

var<private> global3: array<u32, 21>;

var<private> global4: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = !select(select(select(select(vec2<bool>(global4.a, true), vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, global4.a)), select(vec2<bool>(global4.a, false), vec2<bool>(global4.a, global4.a), true), vec2<bool>(global4.a, global4.a)), select(vec2<bool>(true, true), select(vec2<bool>(true, global4.a), vec2<bool>(global4.a, true), vec2<bool>(true, true)), true), select(vec2<bool>(global4.a, false), select(vec2<bool>(global4.a, global4.a), vec2<bool>(global4.a, global4.a), true), any(vec3<bool>(global4.a, global4.a, true)))), !vec2<bool>(any(vec2<bool>(global4.a, false)), global4.a || global4.a), vec2<bool>(global4.a, true));
    var_0 = select(vec2<bool>(1i >= select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0, 1916i, -2147483647i), vec4<i32>(arg_0, 0i, arg_0, -1i)), -1i, false), true), !vec2<bool>(!(!var_0.x), _wgslsmith_f_op_f32(step(-377f, 108f)) > _wgslsmith_f_op_f32(f32(-1f) * -1878f)), !(!(!vec2<bool>(global4.a, true))));
    let var_1 = reverseBits(u_input.a);
    let var_2 = ~vec4<i32>(-arg_0, _wgslsmith_clamp_i32(arg_0, arg_0, min(firstLeadingBit(arg_0), -arg_0)), -2147483647i, _wgslsmith_clamp_i32(min(-arg_0, arg_0), 27790i, 1i));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1782f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_1.zzy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1079f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1417f * 406f), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1256f), 273f)))));
    global0 = 0i << (~min(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21421u, u_input.a.x, global3[_wgslsmith_index_u32(0u, 21u)]), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)], u_input.b.x, global3[_wgslsmith_index_u32(79812u, 21u)], 74379u)) << (global3[_wgslsmith_index_u32(4294967295u, 21u)] % 32u), u_input.b.x) % 32u);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(func_3(arg_0.x))), 817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-697f * arg_1.x) * _wgslsmith_f_op_f32(max(var_0.x, -762f)))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(527f, arg_1.x, -620f)))));
    let var_1 = Struct_1(vec4<i32>(0i, 2147483647i, arg_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(arg_0.x), arg_0.x ^ -1i, -1i, 2147483647i), reverseBits(vec4<i32>(22416i, arg_0.x, 2147483647i, arg_0.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2016f, 586f)) - _wgslsmith_f_op_vec2_f32(select(var_0.xx, var_0.zy, false))) * _wgslsmith_f_op_vec2_f32(select(arg_1.zx, _wgslsmith_f_op_vec2_f32(exp2(arg_1.zx)), !arg_2))))));
    return ~vec3<u32>(~(0u | u_input.a.x), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(22360u, 21u)]), ~13858u, ~u_input.b.x), max(countOneBits(~u_input.b.x), 1u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f)), -1621f))), 954f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(497f)) + _wgslsmith_div_f32(-934f, -946f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2.x >> (abs(u_input.a.x) % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1434f))));
    global4 = Struct_2(arg_3.x | (~global3[_wgslsmith_index_u32(abs(u_input.a.x), 21u)] >= u_input.b.x));
    var var_1 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 21u)] & 23002u, 0u, 11253u), min(u_input.a, ~arg_0), vec3<u32>(1u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), global3[_wgslsmith_index_u32(1u, 21u)])));
    let var_2 = 1i;
    return abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_1.x, 21u)], 21u)]);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    global4 = Struct_2(arg_0.a && all(vec3<bool>(global4.a, any(vec3<bool>(global4.a, true, arg_0.a)), false)));
    var var_0 = ~vec4<u32>(7968u, func_4(vec3<u32>(global3[_wgslsmith_index_u32(1u, 21u)], 49334u, u_input.a.x) << (func_2(vec3<i32>(21669i, -37336i, -1i), vec4<f32>(645f, -1000f, 1584f, 1036f), vec2<bool>(global4.a, global4.a)) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<i32>(-1i) * -vec4<i32>(-1i, 2125i, 57397i, 31608i), vec3<bool>(!global4.a, arg_0.a, arg_0.a)), 78328u, firstLeadingBit(23158u << (0u % 32u)) & select(0u, u_input.b.x, global4.a || arg_0.a));
    var var_1 = _wgslsmith_add_i32(1i, firstTrailingBit(1i));
    global2 = array<vec2<i32>, 24>();
    let var_2 = select(select(vec2<bool>(true, _wgslsmith_f_op_f32(sign(2113f)) >= _wgslsmith_f_op_f32(ceil(996f))), vec2<bool>(global4.a, false), select(!(!vec2<bool>(arg_0.a, global4.a)), select(vec2<bool>(global4.a, false), vec2<bool>(true, arg_0.a), !vec2<bool>(arg_0.a, true)), !(!vec2<bool>(global4.a, arg_0.a)))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(false, global4.a), vec2<bool>(arg_0.a, true), arg_0.a), select(vec2<bool>(global4.a, true), vec2<bool>(true, global4.a), false), true), !(!vec2<bool>(true, global4.a))), !vec2<bool>(all(vec4<bool>(global4.a, arg_0.a, arg_0.a, false)), arg_0.a), select(select(vec2<bool>(arg_0.a, global4.a), !vec2<bool>(global4.a, global4.a), select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, false), vec2<bool>(false, true))), select(select(vec2<bool>(false, global4.a), vec2<bool>(global4.a, arg_0.a), vec2<bool>(false, global4.a)), select(vec2<bool>(global4.a, true), vec2<bool>(true, arg_0.a), vec2<bool>(false, false)), !vec2<bool>(arg_0.a, true)), true)), true);
    return arg_0;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = u_input.b;
    var_0 = Struct_2(var_0.a);
    global2 = array<vec2<i32>, 24>();
    var var_2 = vec3<i32>(firstTrailingBit(-14579i), select(min(~_wgslsmith_mult_i32(1i, 2147483647i), firstTrailingBit(2147483647i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, -16118i), vec3<i32>(7795i, 20594i, 0i)), select(true, true, true)), ~(~arg_0.x));
    return Struct_2(!var_0.a);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = abs(-(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-36223i, 74166i, 0i, 2147483647i), vec4<i32>(0i, -8664i, -12894i, -1984i), vec4<i32>(-19755i, 0i, -2771i, -1i)), abs(vec4<i32>(-9819i, 0i, 18829i, -1i))) ^ ~(-vec4<i32>(13850i, -17247i, 1i, 13321i))));
    let var_1 = vec2<bool>(false, true);
    let var_2 = global1[_wgslsmith_index_u32(u_input.b.x, 28u)];
    var var_3 = Struct_1(vec4<i32>(var_0.x, var_0.x, firstLeadingBit(firstLeadingBit(1i)), var_0.x));
    global0 = -72996i;
    return Struct_1(firstTrailingBit(vec4<i32>(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(18427i, var_0.x), var_2.a.yy), ~0i, ~var_0.x)) & -(~(~vec4<i32>(28483i, -39247i, 2147483647i, 2147483647i))));
}

fn func_7(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 28>();
    let var_0 = firstLeadingBit(vec4<u32>((_wgslsmith_add_u32(u_input.b.x, global3[_wgslsmith_index_u32(84319u, 21u)]) ^ ~u_input.b.x) & ~func_2(arg_0.a.xzx, vec4<f32>(-751f, 761f, -662f, 1000f), vec2<bool>(global4.a, global4.a)).x, u_input.a.x, 1u << (1u % 32u), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 22987u, 71940u), u_input.a)));
    global3 = array<u32, 21>();
    var var_1 = !select(vec3<bool>(any(vec4<bool>(global4.a, global4.a, true, false)), global4.a, global4.a), select(select(select(vec3<bool>(false, global4.a, false), vec3<bool>(global4.a, true, false), vec3<bool>(false, true, global4.a)), select(vec3<bool>(global4.a, false, global4.a), vec3<bool>(global4.a, false, true), vec3<bool>(false, global4.a, global4.a)), func_5(arg_0.a.xy, Struct_2(global4.a)).a), !vec3<bool>(global4.a, global4.a, true), any(vec3<bool>(false, false, global4.a))), global4.a);
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~countOneBits(u_input.a.x), u_input.b.x, select(select(1u, 13174u, false), 1u << (var_0.x % 32u), var_1.x), ~4294967295u), (~vec4<u32>(14604u, 1u, u_input.b.x, var_0.x) ^ _wgslsmith_add_vec4_u32(var_0, var_0)) ^ var_0), 4294967295u);
    return var_1.yy;
}

fn func_8(arg_0: vec2<bool>) -> Struct_1 {
    global0 = ~(-2147483647i);
    let var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(28075u, u_input.a.x, u_input.a.x), vec3<u32>(global3[_wgslsmith_index_u32(41566u, 21u)], u_input.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)]) ^ u_input.a), u_input.a), u_input.a);
    global4 = Struct_2(!global4.a);
    var var_1 = func_5(min(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(2401u, 24u)]), -func_6(Struct_2(false), !vec2<bool>(true, global4.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1459f, 499f, -463f)), func_1(Struct_2(global4.a), vec3<u32>(var_0.x, 372u, global3[_wgslsmith_index_u32(var_0.x, 21u)]))).a.xy), Struct_2(global4.a));
    let var_2 = func_6(func_1(func_5(vec2<i32>(1i, 1i), Struct_2(var_1.a)), firstTrailingBit(~var_0) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 75809u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 15974u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.x, 21u)], 21u)]), var_0))), func_7(global1[_wgslsmith_index_u32(1u, 28u)]), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) * 851f)), -2009f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -978f))), func_5(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i) << (~vec2<u32>(var_0.x, u_input.b.x) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), func_5(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -36377i), global2[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec2<i32>(-2147483647i, 2147483647i)), Struct_2(arg_0.x))));
    return Struct_1(_wgslsmith_mult_vec4_i32(var_2.a, _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.a.x, var_2.a.x, -1i, var_2.a.x) & var_2.a, vec4<i32>(-2147483647i, 1i, var_2.a.x, _wgslsmith_mod_i32(0i, var_2.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(abs(vec4<u32>(38098u, u_input.a.x, 0u, 19236u)))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(15161u, u_input.a.x, 4294967295u, global3[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<u32>(24698u, u_input.a.x, 1u, 4294967295u)) << (max(vec4<u32>(u_input.b.x, 19020u, 8661u, 30240u), vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(64641u, 21u)], u_input.b.x, 45184u)) % vec4<u32>(32u)))), 28u)];
    var var_1 = func_8(func_7(func_6(Struct_2(true), select(!vec2<bool>(global4.a, false), vec2<bool>(true, global4.a), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1673f, -323f, 381f) - vec3<f32>(-443f, 1760f, -1000f)) - vec3<f32>(-329f, -324f, -741f)), func_5(global2[_wgslsmith_index_u32(33054u, 24u)] | var_0.a.zz, func_1(Struct_2(true), vec3<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 0u, 0u))))));
    global0 = var_1.a.x;
    let var_2 = Struct_2(any(!(!(!vec2<bool>(global4.a, true)))));
    var_0 = global1[_wgslsmith_index_u32((~(~0u) ^ u_input.b.x) | _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_mod_u32(69504u & u_input.b.x, ~4758u)), 21124u), 28u)];
    let var_3 = !vec2<bool>(any(!vec3<bool>(global4.a, var_2.a, global4.a)) & global4.a, func_7(Struct_1(-vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, 1i))).x);
    global3 = array<u32, 21>();
    let var_4 = vec3<bool>(true, true, var_3.x);
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(select(~vec4<u32>(global3[_wgslsmith_index_u32(36206u, 21u)] ^ 4294967295u, u_input.a.x, max(u_input.b.x, global3[_wgslsmith_index_u32(4294967295u, 21u)]), ~74267u), vec4<u32>(max(u_input.a.x, u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), ~countOneBits(u_input.b.x), firstLeadingBit(~u_input.b.x)), vec4<bool>(!var_3.x, var_5.a, (var_5.a != var_5.a) & !global4.a, true)), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(24791u | (~u_input.a.x ^ _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 21u)], 21u)], u_input.a.x)), ~19189u), 21u)], max(vec3<i32>(countOneBits(var_0.a.x), ~21089i, 54853i), var_0.a.xyy) ^ vec3<i32>(1i, ~var_1.a.x & 1i, _wgslsmith_clamp_i32(1i, var_1.a.x, _wgslsmith_add_i32(var_0.a.x, 32280i))), ~u_input.a.x, vec4<f32>(1f, 1f, 1f, 1f));
}

