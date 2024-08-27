struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(57147u, Struct_2(1u, Struct_1(0i, 1i), false, vec2<u32>(10798u, 24377u), Struct_1(31428i, -28239i))), Struct_3(51975u, Struct_2(1u, Struct_1(-26006i, -1i), true, vec2<u32>(171u, 9987u), Struct_1(-676i, 27358i))), Struct_3(81559u, Struct_2(55363u, Struct_1(0i, -13099i), false, vec2<u32>(1360u, 16774u), Struct_1(0i, -26676i))), Struct_3(14373u, Struct_2(1u, Struct_1(1i, -60240i), true, vec2<u32>(107261u, 4294967295u), Struct_1(1755i, 1i))), Struct_3(4294967295u, Struct_2(4294967295u, Struct_1(0i, -1i), true, vec2<u32>(4294967295u, 25435u), Struct_1(i32(-2147483648), -33498i))), Struct_3(4294967295u, Struct_2(911u, Struct_1(-28179i, -30830i), true, vec2<u32>(4294967295u, 1u), Struct_1(-1i, 1i))), Struct_3(0u, Struct_2(25623u, Struct_1(-4495i, -4455i), true, vec2<u32>(0u, 0u), Struct_1(69011i, 20224i))), Struct_3(46772u, Struct_2(21303u, Struct_1(1i, -19682i), false, vec2<u32>(1u, 40803u), Struct_1(-60516i, i32(-2147483648)))), Struct_3(2913u, Struct_2(53866u, Struct_1(i32(-2147483648), 59753i), true, vec2<u32>(35841u, 4294967295u), Struct_1(14584i, 1i))), Struct_3(0u, Struct_2(47112u, Struct_1(2147483647i, 29100i), true, vec2<u32>(16076u, 1u), Struct_1(1i, 21698i))), Struct_3(25353u, Struct_2(1u, Struct_1(-29889i, 64696i), false, vec2<u32>(17141u, 66516u), Struct_1(0i, 0i))), Struct_3(4294967295u, Struct_2(4294967295u, Struct_1(-1i, -4002i), true, vec2<u32>(1u, 5078u), Struct_1(-26966i, 18581i))), Struct_3(1u, Struct_2(18428u, Struct_1(0i, -23811i), true, vec2<u32>(4294967295u, 1u), Struct_1(-46310i, -1644i))), Struct_3(1u, Struct_2(4294967295u, Struct_1(-23098i, 26987i), false, vec2<u32>(4294967295u, 1u), Struct_1(0i, 6648i))), Struct_3(74136u, Struct_2(4294967295u, Struct_1(-30144i, 36989i), false, vec2<u32>(4294967295u, 1u), Struct_1(38489i, 2147483647i))), Struct_3(4294967295u, Struct_2(18352u, Struct_1(23132i, 1i), true, vec2<u32>(22837u, 17420u), Struct_1(-1i, 1i))), Struct_3(53157u, Struct_2(1u, Struct_1(i32(-2147483648), -30740i), true, vec2<u32>(30682u, 0u), Struct_1(-1i, 31244i))), Struct_3(4294967295u, Struct_2(18999u, Struct_1(-1i, -46098i), true, vec2<u32>(0u, 52180u), Struct_1(-77987i, 8647i))), Struct_3(20623u, Struct_2(1u, Struct_1(-34210i, i32(-2147483648)), false, vec2<u32>(1988u, 42836u), Struct_1(-7704i, i32(-2147483648)))), Struct_3(16227u, Struct_2(43688u, Struct_1(25549i, -1i), false, vec2<u32>(15582u, 1u), Struct_1(0i, 32358i))), Struct_3(4294967295u, Struct_2(12628u, Struct_1(1i, -23939i), true, vec2<u32>(1u, 92990u), Struct_1(0i, -17521i))));

var<private> global1: u32 = 0u;

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: vec4<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = 584f;
    let var_1 = vec2<i32>(0i, u_input.a.x);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -501f, 296f, global3.x) - vec4<f32>(global3.x, 244f, -1398f, global3.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, -306f, -588f, 1000f))), vec4<f32>(1369f, global3.x, -521f, global3.x))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x))) + vec4<f32>(_wgslsmith_f_op_f32(-1f), global3.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1103f, global3.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(191f, global3.x, 505f, global3.x))))))));
    global0 = array<Struct_3, 21>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 781f));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 21u)];
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = 1u;
    return _wgslsmith_sub_i32(var_0.b.e.a, u_input.c);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3.b;
    global1 = ~(~(_wgslsmith_div_u32(~78001u, 4294967295u) ^ u_input.e));
    var var_1 = _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(~reverseBits(vec3<u32>(37301u, 41123u, u_input.e)), vec3<u32>(u_input.e, reverseBits(1u), arg_3.d.x)), min(_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, arg_3.a, arg_3.a), vec3<u32>(u_input.e, 0u, arg_3.a), vec3<bool>(arg_3.c, arg_3.c, false)), vec3<u32>(arg_3.d.x, 84581u, 14221u)) | ((vec3<u32>(u_input.e, 1u, arg_3.a) << (vec3<u32>(12041u, 4294967295u, u_input.e) % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.e), vec3<u32>(u_input.e, arg_3.d.x, 1u)) % vec3<u32>(32u))), ~(vec3<u32>(27660u, u_input.e, u_input.e) | _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.a, arg_3.a, 1u), vec3<u32>(18765u, arg_3.d.x, u_input.e), vec3<u32>(arg_3.d.x, u_input.e, 14565u)))));
    var var_2 = global3.x;
    global0 = array<Struct_3, 21>();
    return _wgslsmith_sub_i32(0i, 51401i >> (((898u << (1u % 32u)) | (_wgslsmith_clamp_u32(0u, 0u, arg_3.d.x) >> (min(u_input.e, arg_3.a) % 32u))) % 32u));
}

fn func_1() -> bool {
    global0 = array<Struct_3, 21>();
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -1946f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global3.x + -551f))), 127f) - vec4<f32>(_wgslsmith_div_f32(-844f, -508f), _wgslsmith_f_op_f32(floor(-2610f)), _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(-global3.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1046f, -1375f))), 1244f, _wgslsmith_f_op_f32(-global3.x), 736f)));
    let var_0 = func_4(!(!global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(43186u, u_input.e), _wgslsmith_mult_u32(u_input.e, 4294967295u)), 31u)]), -_wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(u_input.b.x, ~(-10996i), firstLeadingBit(u_input.a.x), func_2()), select(-vec4<i32>(u_input.d.x, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.c, 2890i, 6052i), all(global2[_wgslsmith_index_u32(u_input.e, 31u)]))), any(vec2<bool>(true, true)), Struct_2(abs(0u), Struct_1(u_input.b.x, ~u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1671u, u_input.e, 0u), vec4<u32>(4294967295u, u_input.e, 62188u, 52501u)) <= (37427u ^ (u_input.e | u_input.e)), firstLeadingBit(~vec2<u32>(35703u, u_input.e)) >> ((_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(14946u, 17916u), vec2<u32>(24700u, u_input.e)) & (vec2<u32>(u_input.e, u_input.e) >> (vec2<u32>(19577u, u_input.e) % vec2<u32>(32u)))) % vec2<u32>(32u)), Struct_1(_wgslsmith_mult_i32(~u_input.d.x, i32(-1i) * -2147483647i), -u_input.d.x)));
    let var_1 = select(vec4<bool>(true, all(!global2[_wgslsmith_index_u32(~u_input.e, 31u)]), true, false), !(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true));
    let var_2 = firstLeadingBit(u_input.e) >> (u_input.e % 32u);
    return !any(!select(select(global2[_wgslsmith_index_u32(var_2, 31u)], vec3<bool>(var_1.x, true, false), false), vec3<bool>(false, false, false), true));
}

fn func_5(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = 25376u;
    var var_1 = firstLeadingBit(abs(vec4<u32>(u_input.e, firstTrailingBit(min(0u, 22012u)), ~4294967295u, countOneBits(u_input.e))));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(var_1.x), 21u)];
    var var_3 = abs(-vec3<i32>(u_input.c, 0i, 0i));
    var var_4 = _wgslsmith_f_op_f32(round(global3.x));
    return Struct_2(~select((var_1.x << (1u % 32u)) & ~u_input.e, ~1u, -829f == global3.x), Struct_1(-_wgslsmith_mult_i32(var_3.x, abs(1i)), var_2.b.e.b), false, vec2<u32>(var_1.x, _wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(select(u_input.e, 0u, false), ~u_input.e))), var_2.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 31>();
    var var_0 = func_5(!vec4<bool>(true, true, true, 0u <= u_input.e), func_1(), vec2<i32>(u_input.b.x, ~_wgslsmith_mod_i32(8216i, -1i)));
    global1 = reverseBits(72740u);
    global0 = array<Struct_3, 21>();
    let var_1 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1395f, global3.x) * global3.zz), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.d.x, 44993u), 4294967295u >> (var_0.d.x % 32u)), min(9203u, ~(var_1 | u_input.e)), max(var_0.a, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(u_input.e, 75753u, var_1)), vec3<u32>(4294967295u, 4294967295u, var_1) | vec3<u32>(1u, 43884u, 4294967295u)))), -(~vec2<i32>(u_input.c, 38316i) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), ~(~(~(~vec4<u32>(46012u, var_0.d.x, 67967u, 15647u)))), vec4<u32>(1u, var_0.d.x, 4294967295u, ~_wgslsmith_sub_u32(var_0.d.x, 16515u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(81923u, ~u_input.e, _wgslsmith_clamp_u32(u_input.e, var_1, 50056u), 4294967295u), vec4<u32>(4294967295u, 48970u | var_1, ~var_0.a, 67803u)) % vec4<u32>(32u)));
}

