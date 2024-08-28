struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: i32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<vec2<i32>, 30> = array<vec2<i32>, 30>(vec2<i32>(-57563i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(47i, -4283i), vec2<i32>(3859i, -24024i), vec2<i32>(-26596i, -1i), vec2<i32>(22694i, 65594i), vec2<i32>(-5821i, 43180i), vec2<i32>(-1i, 27028i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-47121i, -1i), vec2<i32>(-25005i, 1i), vec2<i32>(15519i, -661i), vec2<i32>(2147483647i, 8106i), vec2<i32>(2147483647i, 1i), vec2<i32>(14882i, -9209i), vec2<i32>(1i, 1i), vec2<i32>(0i, 0i), vec2<i32>(-34138i, i32(-2147483648)), vec2<i32>(-5123i, 0i), vec2<i32>(-46401i, 1i), vec2<i32>(22565i, 46784i), vec2<i32>(10487i, -1i), vec2<i32>(-22698i, -1i), vec2<i32>(-24217i, 1i), vec2<i32>(-72065i, -7245i), vec2<i32>(1i, -1i), vec2<i32>(56373i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(6250i, 72710i), vec2<i32>(5613i, 20498i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(329f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(select(-293f, 1265f, true)))), arg_1.x));
    return arg_3;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(-1812f, -1298f);
    global1 = !vec2<bool>(false, all(vec2<bool>(all(vec4<bool>(arg_0.a.b.c, true, false, arg_0.b.a.x)), true)));
    let var_1 = arg_0.b.c.zyx;
    global1 = vec2<bool>(all(vec4<bool>(true | global1.x, _wgslsmith_dot_vec4_i32(arg_1.b.c, vec4<i32>(arg_2.x, 29160i, arg_2.x, 0i)) <= (i32(-1i) * -37960i), false, any(select(arg_0.b.a, arg_1.a.a, false)))), true);
    let var_2 = arg_1;
    return vec3<bool>(_wgslsmith_f_op_f32(arg_1.a.b.d + _wgslsmith_f_op_f32(abs(-562f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.a.x) - -176f), !(var_2.a.b.d > arg_1.a.b.a.x), !(!all(arg_0.a.a.zy)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = func_4(Struct_4(Struct_2(!select(vec3<bool>(true, true, arg_1.c), vec3<bool>(false, arg_2.d.c, false), vec3<bool>(false, false, global1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d, arg_1.d, -2309f, -1866f), arg_2.d.a, arg_2.d.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_2.d.b.x, arg_2.b.x), arg_1.b), arg_2.d.c & false, arg_0.a.x, vec2<u32>(4241u, 12785u) ^ arg_0.e), vec4<i32>(arg_2.d.b.x, 43969i, func_3(vec2<bool>(arg_1.c, false), vec2<f32>(-1000f, arg_1.a.x), vec2<bool>(arg_1.c, arg_2.d.c), arg_0.b.x), arg_0.b.x), ~0u), Struct_2(!(!vec3<bool>(false, arg_2.d.c, arg_2.d.c)), Struct_1(_wgslsmith_f_op_vec4_f32(select(arg_2.d.a, arg_2.d.a, false)), reverseBits(arg_0.b), global1.x, 224f, vec2<u32>(arg_2.d.e.x, 0u)), arg_2.b, ~109658u), select(arg_1.e.x, arg_0.e.x, true)), Struct_4(Struct_2(vec3<bool>(all(vec2<bool>(true, false)), arg_0.c, 30512u > arg_0.e.x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.d, 175f, -325f, arg_1.d)), -arg_2.b.yyx, arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_sub_vec2_u32(arg_0.e, arg_2.d.e)), arg_2.b, 1u), Struct_2(select(vec3<bool>(global1.x, arg_1.c, false), vec3<bool>(false, true, arg_2.d.c), vec3<bool>(arg_1.c, arg_1.c, false)), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.d.a), min(arg_0.b, arg_2.d.b), !arg_1.c, _wgslsmith_f_op_f32(sign(arg_2.d.a.x)), firstLeadingBit(arg_2.d.e)), vec4<i32>(2147483647i, arg_1.b.x, 0i, arg_1.b.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4212u, arg_2.a, 4294967295u, 61029u), vec4<u32>(0u, 47340u, arg_1.e.x, arg_1.e.x), vec4<u32>(arg_1.e.x, arg_0.e.x, 1u, 4294967295u)) % vec4<u32>(32u)), 4294967295u), _wgslsmith_dot_vec2_u32(arg_0.e ^ ~arg_2.d.e, ~(~vec2<u32>(4294967295u, arg_0.e.x)))), abs(_wgslsmith_clamp_vec2_i32(firstLeadingBit(arg_0.b.zx), vec2<i32>(1i, 2147483647i), firstTrailingBit(u_input.a))) & global3[_wgslsmith_index_u32(~(~0u), 30u)]);
    let var_1 = Struct_5(Struct_3(~0u, vec4<i32>(_wgslsmith_div_i32(u_input.a.x, ~1674i), i32(-1i) * -2147483647i, _wgslsmith_add_i32(-2147483647i | arg_0.b.x, 2147483647i), -1i), 40707u, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-326f, 1000f, arg_0.a.x, arg_0.a.x))), firstLeadingBit(~arg_1.b), true, _wgslsmith_f_op_f32(arg_0.a.x - -743f), _wgslsmith_mult_vec2_u32(arg_1.e, vec2<u32>(arg_1.e.x, 4294967295u) & vec2<u32>(5464u, 1u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(387f)) - _wgslsmith_f_op_f32(abs(arg_1.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) - arg_2.d.d), 1475f)), min(_wgslsmith_mult_i32(18852i, arg_0.b.x), arg_2.d.b.x), vec2<i32>(arg_0.b.x, u_input.a.x));
    let var_2 = var_1.a.b;
    var var_3 = select(vec4<u32>(_wgslsmith_add_u32(var_1.a.a, _wgslsmith_mult_u32(var_1.a.d.e.x, ~arg_2.d.e.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(126578u, 13912u, arg_2.c)), select(vec3<u32>(1u, 4294967295u, arg_0.e.x), vec3<u32>(arg_1.e.x, var_1.a.d.e.x, arg_2.d.e.x), true)), max(arg_2.a, _wgslsmith_mult_u32(26710u, 39112u))), 4294967295u, ~abs(~4294967295u)), max(vec4<u32>(0u, countOneBits(~arg_2.d.e.x), _wgslsmith_mod_u32(arg_1.e.x, arg_1.e.x), ~arg_1.e.x & 1u), ~vec4<u32>(abs(31378u), arg_0.e.x, arg_0.e.x, ~arg_0.e.x)), select(select(!vec4<bool>(global1.x, arg_1.c, true, arg_0.c), !vec4<bool>(arg_1.c, var_0.x, global1.x, false), vec4<bool>(true, any(vec4<bool>(true, true, false, var_1.a.d.c)), true && global1.x, func_4(Struct_4(Struct_2(vec3<bool>(false, false, false), Struct_1(arg_1.a, vec3<i32>(arg_1.b.x, var_2.x, arg_2.b.x), arg_1.c, 865f, vec2<u32>(arg_0.e.x, 29638u)), arg_2.b, 29548u), Struct_2(vec3<bool>(false, false, true), Struct_1(arg_1.a, vec3<i32>(58096i, 1i, -28945i), false, var_1.a.d.d, vec2<u32>(19077u, 1u)), arg_2.b, var_1.a.d.e.x), 4294967295u), Struct_4(Struct_2(vec3<bool>(true, arg_2.d.c, global1.x), Struct_1(vec4<f32>(arg_1.a.x, 1310f, arg_0.a.x, 1205f), vec3<i32>(arg_0.b.x, arg_2.b.x, -1558i), false, 1000f, vec2<u32>(6002u, 1u)), var_1.a.b, 60926u), Struct_2(vec3<bool>(arg_0.c, var_0.x, var_1.a.d.c), arg_2.d, var_1.a.b, arg_1.e.x), var_1.a.a), vec2<i32>(-46284i, -2147483647i)).x)), select(!vec4<bool>(false, var_1.a.d.c, false, var_0.x), select(!vec4<bool>(true, false, arg_1.c, global1.x), vec4<bool>(true, arg_1.c, arg_2.d.c, true), select(vec4<bool>(false, arg_0.c, arg_0.c, var_1.a.d.c), vec4<bool>(true, arg_1.c, arg_0.c, arg_0.c), vec4<bool>(global1.x, global1.x, true, true))), arg_0.c), !all(var_0.xx)));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-119f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1395f)))))));
    return Struct_2(func_4(Struct_4(Struct_2(vec3<bool>(true, true, true), arg_0, ~var_1.a.b, var_1.a.c), Struct_2(vec3<bool>(global1.x, false, true), arg_2.d, -arg_2.b, 0u), _wgslsmith_mod_u32(1u, ~var_3.x)), Struct_4(Struct_2(!vec3<bool>(false, false, arg_0.c), arg_2.d, ~vec4<i32>(2147483647i, 11228i, 2147483647i, var_1.c), _wgslsmith_mult_u32(arg_0.e.x, 4294967295u)), Struct_2(vec3<bool>(arg_1.c, arg_1.c, var_1.a.d.c), global2[_wgslsmith_index_u32(arg_0.e.x << (arg_0.e.x % 32u), 20u)], vec4<i32>(1i, arg_1.b.x, 2147483647i, -1i), var_3.x & var_3.x), arg_0.e.x), ~select(var_2.yx, _wgslsmith_mult_vec2_i32(arg_2.d.b.yz, vec2<i32>(arg_0.b.x, 0i)), true)), global2[_wgslsmith_index_u32(arg_2.a, 20u)], firstTrailingBit(vec4<i32>(-2147483647i, arg_1.b.x ^ _wgslsmith_mod_i32(arg_2.b.x, 1i), -2147483647i, _wgslsmith_mult_i32(-arg_1.b.x, u_input.a.x & 0i))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(14521u, var_1.a.d.e.x, var_1.a.a), ~22747u), arg_0.e.x), abs(arg_0.e)));
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> u32 {
    let var_0 = func_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a.b.a)) * vec4<f32>(-1324f, _wgslsmith_f_op_f32(trunc(arg_0.a.b.a.x)), arg_0.a.b.d, _wgslsmith_f_op_f32(floor(-907f)))), arg_0.b.b.b, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f - 1899f)), vec2<u32>(arg_0.c, 4294967295u)), arg_0.a.b, Struct_3(abs(39091u), abs(min(-vec4<i32>(arg_1, arg_0.a.c.x, u_input.a.x, 2147483647i), -arg_0.a.c)), 21537u, func_2(Struct_1(vec4<f32>(arg_0.b.b.a.x, arg_0.b.b.a.x, arg_0.b.b.a.x, arg_0.a.b.a.x), arg_0.a.b.b & vec3<i32>(arg_0.b.b.b.x, u_input.a.x, arg_0.b.c.x), select(true, global1.x, true), _wgslsmith_f_op_f32(max(-334f, 173f)), ~vec2<u32>(arg_0.b.d, arg_0.c)), arg_0.b.b, Struct_3(~arg_0.a.b.e.x, arg_0.a.c, 28762u << (arg_0.a.b.e.x % 32u), global2[_wgslsmith_index_u32(arg_0.c, 20u)])).b));
    let var_1 = var_0.b;
    let var_2 = !any(vec4<bool>(false, true, func_4(arg_0, arg_0, vec2<i32>(-9156i, arg_1)).x, ~var_1.e.x > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.e.x, 34346u, var_1.e.x), vec4<u32>(var_1.e.x, 0u, var_1.e.x, 0u))));
    var var_3 = reverseBits(vec4<i32>(arg_1, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.b.x, arg_1), global3[_wgslsmith_index_u32(3106u, 30u)]) | (var_0.b.b.x & 19123i), abs(var_0.c.x | arg_1))) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-1i), u_input.a.x & var_1.b.x, -1i, ~u_input.a.x), -vec4<i32>(var_0.b.b.x, -26185i, arg_1, 2147483647i)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(32373u, 21235u, 0u), vec3<u32>(0u, arg_0.a.b.e.x, 91089u) ^ vec3<u32>(69210u, var_1.e.x, arg_0.b.b.e.x)), ~_wgslsmith_add_u32(14532u, var_0.d), _wgslsmith_sub_u32(~13399u, ~59477u), _wgslsmith_dot_vec2_u32(vec2<u32>(7999u, arg_0.b.d), var_0.b.e) << (1u % 32u)) % vec4<u32>(32u)));
    let var_4 = var_0.b.e.x;
    return ~(~1u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_f_op_f32(f32(-1f) * -437f)) - vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(-486f))))));
    global1 = vec2<bool>(func_5(Struct_4(func_2(global2[_wgslsmith_index_u32(arg_2.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], arg_3), Struct_2(vec3<bool>(false, false, arg_3.d.c), global2[_wgslsmith_index_u32(arg_2.x, 20u)], arg_3.b, arg_2.x), _wgslsmith_mod_u32(arg_2.x, 30747u)), -1i) != 4294967295u, all(!(!select(vec3<bool>(true, true, arg_3.d.c), vec3<bool>(arg_3.d.c, false, arg_3.d.c), vec3<bool>(true, arg_3.d.c, global1.x)))));
    let var_1 = -2147483647i;
    let var_2 = any(!vec2<bool>(global1.x, all(vec3<bool>(true, false, global1.x)))) || false;
    var var_3 = !func_2(func_2(arg_3.d, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, var_0.x, 2407f, -945f) - vec4<f32>(289f, arg_1.x, arg_1.x, arg_1.x)), arg_3.d.b, true, -863f, _wgslsmith_clamp_vec2_u32(arg_2.wy, vec2<u32>(arg_3.a, 0u), arg_3.d.e)), arg_3).b, arg_3.d, Struct_3(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.x, arg_2.x), _wgslsmith_div_vec2_u32(arg_2.yw, arg_3.d.e)), -arg_3.b, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c, arg_3.d.e.x, arg_3.c), vec3<u32>(4294967295u, arg_2.x, 73510u))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1075f, 823f, arg_1.x, 211f)), vec3<i32>(arg_3.d.b.x, arg_0.x, var_1) << (vec3<u32>(arg_2.x, arg_2.x, arg_3.a) % vec3<u32>(32u)), all(vec3<bool>(arg_3.d.c, false, global1.x)), -1158f, ~arg_3.d.e))).a.zx;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-788f + _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(163f * 1318f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec3<i32>(43372i, -2147483647i, u_input.a.x), vec2<f32>(922f, 532f), vec4<u32>(0u, 1u, 1u, 4294967295u), Struct_3(1u, vec4<i32>(-2147483647i, -3668i, u_input.a.x, u_input.a.x), 51017u, global2[_wgslsmith_index_u32(20353u, 20u)]))))) * _wgslsmith_f_op_f32(trunc(2271f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-149f, _wgslsmith_f_op_f32(round(-235f)))))));
    let var_1 = select(vec4<bool>(global1.x, !(false | func_4(Struct_4(Struct_2(vec3<bool>(global1.x, true, true), Struct_1(vec4<f32>(var_0, var_0, var_0, var_0), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global1.x, -396f, vec2<u32>(4384u, 61135u)), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), 9934u), Struct_2(vec3<bool>(global1.x, true, global1.x), Struct_1(vec4<f32>(var_0, 657f, var_0, 1885f), vec3<i32>(u_input.a.x, 0i, u_input.a.x), false, var_0, vec2<u32>(0u, 1u)), vec4<i32>(-1i, -14467i, u_input.a.x, u_input.a.x), 4294967295u), 0u), Struct_4(Struct_2(vec3<bool>(global1.x, false, true), Struct_1(vec4<f32>(1203f, 126f, 295f, 1881f), vec3<i32>(10820i, u_input.a.x, u_input.a.x), global1.x, var_0, vec2<u32>(20893u, 87886u)), vec4<i32>(-25410i, 1i, 14340i, -3517i), 1u), Struct_2(vec3<bool>(global1.x, true, false), global2[_wgslsmith_index_u32(14447u, 20u)], vec4<i32>(u_input.a.x, u_input.a.x, -57638i, u_input.a.x), 0u), 111966u), vec2<i32>(-5435i, 2147483647i)).x), all(vec4<bool>(true, global1.x, !global1.x, global1.x || global1.x)), !any(func_2(Struct_1(vec4<f32>(381f, 276f, var_0, 1397f), vec3<i32>(-1i, -2147483647i, u_input.a.x), false, var_0, vec2<u32>(48028u, 0u)), Struct_1(vec4<f32>(-1272f, -502f, -483f, -334f), vec3<i32>(52617i, 1i, u_input.a.x), global1.x, var_0, vec2<u32>(37968u, 4294967295u)), Struct_3(12761u, vec4<i32>(-14935i, -25300i, -49472i, u_input.a.x), 73864u, global2[_wgslsmith_index_u32(4294967295u, 20u)])).a.yx)), select(!vec4<bool>(var_0 <= var_0, false, func_2(Struct_1(vec4<f32>(var_0, 593f, var_0, -691f), vec3<i32>(-21959i, u_input.a.x, u_input.a.x), global1.x, 1000f, vec2<u32>(35885u, 1u)), global2[_wgslsmith_index_u32(0u, 20u)], Struct_3(3380u, vec4<i32>(u_input.a.x, -102i, 2147483647i, u_input.a.x), 1u, Struct_1(vec4<f32>(-460f, var_0, -2038f, -1145f), vec3<i32>(u_input.a.x, u_input.a.x, 1i), false, var_0, vec2<u32>(19512u, 34323u)))).b.c, true), !(!select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(true, global1.x, true, global1.x))), global1.x), func_4(Struct_4(Struct_2(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, global1.x)), func_2(Struct_1(vec4<f32>(var_0, -1333f, var_0, var_0), vec3<i32>(23952i, u_input.a.x, -1i), false, var_0, vec2<u32>(0u, 24774u)), global2[_wgslsmith_index_u32(4294967295u, 20u)], Struct_3(827u, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 2147483647i), 95703u, global2[_wgslsmith_index_u32(15907u, 20u)])).b, -vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, 0i), 0u), Struct_2(func_4(Struct_4(Struct_2(vec3<bool>(false, true, global1.x), Struct_1(vec4<f32>(-382f, -1000f, var_0, var_0), vec3<i32>(45435i, u_input.a.x, -11057i), false, var_0, vec2<u32>(0u, 0u)), vec4<i32>(-54810i, 0i, u_input.a.x, u_input.a.x), 47243u), Struct_2(vec3<bool>(global1.x, global1.x, false), Struct_1(vec4<f32>(1920f, var_0, var_0, 203f), vec3<i32>(0i, 20975i, 19944i), global1.x, var_0, vec2<u32>(0u, 1u)), vec4<i32>(8806i, u_input.a.x, 12046i, u_input.a.x), 67742u), 0u), Struct_4(Struct_2(vec3<bool>(true, global1.x, global1.x), Struct_1(vec4<f32>(-788f, var_0, -1838f, var_0), vec3<i32>(2147483647i, u_input.a.x, -47049i), false, var_0, vec2<u32>(16437u, 1u)), vec4<i32>(u_input.a.x, -2147483647i, -2660i, -27812i), 0u), Struct_2(vec3<bool>(global1.x, global1.x, global1.x), Struct_1(vec4<f32>(1043f, var_0, var_0, -1402f), vec3<i32>(1i, u_input.a.x, u_input.a.x), global1.x, -557f, vec2<u32>(4294967295u, 8377u)), vec4<i32>(-1771i, u_input.a.x, 23648i, 2147483647i), 1u), 15073u), vec2<i32>(u_input.a.x, u_input.a.x)), func_2(global2[_wgslsmith_index_u32(36608u, 20u)], global2[_wgslsmith_index_u32(93355u, 20u)], Struct_3(4294967295u, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x), 1u, global2[_wgslsmith_index_u32(40292u, 20u)])).b, select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -28263i), vec4<i32>(-48702i, -38856i, u_input.a.x, u_input.a.x), global1.x), 0u), func_5(Struct_4(Struct_2(vec3<bool>(global1.x, false, true), global2[_wgslsmith_index_u32(4294967295u, 20u)], vec4<i32>(u_input.a.x, 2147483647i, -17370i, 1i), 93332u), Struct_2(vec3<bool>(true, global1.x, global1.x), Struct_1(vec4<f32>(2161f, var_0, var_0, 1753f), vec3<i32>(2488i, -1i, u_input.a.x), global1.x, var_0, vec2<u32>(27190u, 0u)), vec4<i32>(u_input.a.x, -13436i, 6234i, u_input.a.x), 82850u), 0u), u_input.a.x)), Struct_4(Struct_2(!vec3<bool>(global1.x, true, true), Struct_1(vec4<f32>(var_0, 283f, var_0, -290f), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global1.x, var_0, vec2<u32>(43041u, 1u)), ~vec4<i32>(-7042i, -2147483647i, u_input.a.x, u_input.a.x), 7719u), func_2(Struct_1(vec4<f32>(var_0, var_0, 1000f, 261f), vec3<i32>(1i, -45738i, -20383i), global1.x, var_0, vec2<u32>(0u, 1u)), global2[_wgslsmith_index_u32(4294967295u, 20u)], Struct_3(39334u, vec4<i32>(u_input.a.x, 0i, -25086i, 28807i), 4294967295u, Struct_1(vec4<f32>(var_0, -1000f, -999f, var_0), vec3<i32>(u_input.a.x, u_input.a.x, -1i), true, var_0, vec2<u32>(1u, 1u)))), 4294967295u), select(vec2<i32>(17344i, -2147483647i) ^ global3[_wgslsmith_index_u32(~4294967295u, 30u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -40349i) | vec2<i32>(u_input.a.x, -5229i), global3[_wgslsmith_index_u32(43194u, 30u)], vec2<i32>(2147483647i, 44543i)), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), true))).x);
    var var_2 = Struct_3(func_5(Struct_4(Struct_2(var_1.xzz, global2[_wgslsmith_index_u32(1u, 20u)], ~vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x), func_5(Struct_4(Struct_2(vec3<bool>(var_1.x, global1.x, var_1.x), global2[_wgslsmith_index_u32(14902u, 20u)], vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), 7655u), Struct_2(var_1.yyy, global2[_wgslsmith_index_u32(0u, 20u)], vec4<i32>(-19279i, 1i, -19631i, u_input.a.x), 0u), 0u), -5893i)), func_2(func_2(Struct_1(vec4<f32>(-230f, -1355f, -681f, -105f), vec3<i32>(0i, -6328i, -1i), var_1.x, -2906f, vec2<u32>(0u, 48120u)), global2[_wgslsmith_index_u32(33214u, 20u)], Struct_3(27300u, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i), 112854u, global2[_wgslsmith_index_u32(26993u, 20u)])).b, Struct_1(vec4<f32>(249f, -197f, -871f, var_0), vec3<i32>(u_input.a.x, 47811i, -60315i), false, var_0, vec2<u32>(0u, 7799u)), Struct_3(23455u, vec4<i32>(-1i, 0i, u_input.a.x, -21978i), 0u, Struct_1(vec4<f32>(var_0, var_0, var_0, var_0), vec3<i32>(-1i, 1i, 2147483647i), global1.x, 1940f, vec2<u32>(1u, 0u)))), ~_wgslsmith_mult_u32(25065u, 20852u)), 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, -37345i)), vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -36485i), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), -1i, u_input.a.x, ~(~u_input.a.x)), 32653u, global2[_wgslsmith_index_u32(1u, 20u)]);
    let var_3 = var_2.d.a.wz;
    global1 = vec2<bool>(!(!(func_2(var_2.d, Struct_1(vec4<f32>(-538f, var_0, var_3.x, 186f), var_2.b.xxw, true, -1062f, var_2.d.e), Struct_3(4294967295u, vec4<i32>(var_2.d.b.x, 35646i, 13486i, var_2.d.b.x), 0u, global2[_wgslsmith_index_u32(var_2.c, 20u)])).b.a.x < var_3.x)), global1.x);
    var var_4 = var_2.d.e.x;
    global1 = vec2<bool>(true, global1.x);
    global0 = array<vec3<f32>, 19>();
    global3 = array<vec2<i32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(40592i, (0i >> (var_2.d.e.x % 32u)) >> (reverseBits(16348u) % 32u), 1i), _wgslsmith_f_op_f32(min(var_2.d.a.x, -228f)), ~1u);
}

