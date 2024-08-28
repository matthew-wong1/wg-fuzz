struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 28>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(arg_0.a, -2977f, _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.e.x, max(u_input.e.x, -28256i), arg_2.a.c.x, 1i), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.d, global1.d, 2147483647i, -70421i), vec4<i32>(0i, global1.c.x, arg_1.x, arg_0.d))), -vec4<i32>(arg_2.a.c.x, -48780i, 30115i, 9672i)), _wgslsmith_mod_i32(~1i, _wgslsmith_sub_i32(firstTrailingBit(-40568i), _wgslsmith_dot_vec3_i32(arg_2.a.c.zwz, arg_2.a.c.wyz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -165f)));
    var var_1 = ~vec2<u32>(min(_wgslsmith_div_u32(global1.a, 1u) >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global1.a, 7u)], global0[_wgslsmith_index_u32(arg_0.a, 7u)]) % 32u), ~30784u), arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - -331f));
    var_1 = ~u_input.d.xy;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.b)) + 1873f);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1459f, arg_2.b, _wgslsmith_div_f32(arg_2.b, arg_0.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_2, -321f), -1185f, -746f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.b, arg_0.b, 280f), vec3<f32>(151f, global1.b, global1.b), vec3<bool>(false, true, arg_3))) * vec3<f32>(332f, var_0.a.b, var_2)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec3<i32> {
    let var_0 = vec4<u32>(~global0[_wgslsmith_index_u32(~0u, 7u)], 0u, 1u, global1.a);
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global2 = array<vec3<bool>, 28>();
    var var_1 = 325f;
    return vec3<i32>(arg_0.c.x, -_wgslsmith_dot_vec3_i32(firstTrailingBit(~global1.c.wxy), firstLeadingBit(countOneBits(vec3<i32>(global1.d, -2147483647i, arg_0.d)))), 5790i);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec3<i32>(-2437i, arg_0.c.x ^ (u_input.b.x >> (arg_1.a % 32u)), _wgslsmith_dot_vec3_i32(func_4(arg_0, _wgslsmith_f_op_vec3_f32(func_3(arg_0, arg_0.c.yy, Struct_2(Struct_1(global0[_wgslsmith_index_u32(arg_1.a, 7u)], arg_1.b, vec4<i32>(36236i, arg_0.d, arg_0.d, -13706i), 1i), -570f), false)), ~global1.c.zyy) << (min(vec3<u32>(48431u, arg_0.a, u_input.c), max(vec3<u32>(29208u, u_input.c, 0u), u_input.d)) % vec3<u32>(32u)), global1.c.yzz));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(102f, arg_1.b), vec2<f32>(global1.b, arg_1.b)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_0.b) * vec2<f32>(global1.b, 592f))))));
    var var_2 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.c.wz, ~vec2<i32>(arg_1.d, u_input.e.x)), arg_1.d);
    global1 = Struct_1(4294967295u, _wgslsmith_f_op_f32(-arg_1.b), vec4<i32>(var_0.x, min(i32(-1i) * -arg_1.d, abs(-1i)), ~(-34640i), -var_0.x & -firstLeadingBit(arg_1.d)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(17289i, 20661i) | u_input.b.yy, var_0.xy | global1.c.wx) | arg_1.d);
    let var_3 = min(_wgslsmith_clamp_i32(~(~0i), _wgslsmith_div_i32(global1.c.x, -arg_1.d), global1.d), 0i);
    return Struct_2(Struct_1(global0[_wgslsmith_index_u32(global1.a & global1.a, 7u)], _wgslsmith_f_op_f32(step(468f, _wgslsmith_f_op_f32(step(arg_1.b, -605f)))), vec4<i32>(var_0.x, min(0i, -10936i), var_0.x, u_input.e.x), select(-(~arg_1.d), 315i, false)), global1.b);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> vec4<i32> {
    var var_0 = func_2(Struct_1(1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) * _wgslsmith_f_op_f32(-1503f * _wgslsmith_f_op_f32(arg_2 * global1.b))), global1.c, abs(0i)), Struct_1(1u, 161f, vec4<i32>(_wgslsmith_mod_i32(abs(u_input.e.x), 40880i), -_wgslsmith_add_i32(global1.c.x, global1.c.x), 1i, firstLeadingBit(u_input.b.x >> (4294967295u % 32u))), abs(firstLeadingBit(~5670i))));
    var var_1 = func_2(var_0.a, func_2(var_0.a, var_0.a).a);
    global1 = Struct_1(u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(882f)))))), vec4<i32>(~_wgslsmith_dot_vec2_i32(abs(var_1.a.c.ww), _wgslsmith_sub_vec2_i32(var_1.a.c.xz, var_0.a.c.zz)), var_0.a.c.x, _wgslsmith_dot_vec3_i32(-max(vec3<i32>(u_input.e.x, var_1.a.d, global1.d), var_0.a.c.zyz), vec3<i32>(u_input.e.x << (30517u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-5i, global1.c.x, 2147483647i, global1.d), u_input.e), _wgslsmith_add_i32(0i, 31787i))), ~(-5309i)), 27626i << (~(~_wgslsmith_div_u32(1u, global0[_wgslsmith_index_u32(0u, 7u)])) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-785f, 1333f)))), vec2<f32>(-835f, -1000f), vec2<bool>(var_0.a.b != global1.b, all(vec3<bool>(true, false, false))))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), -1000f));
    var var_3 = var_1.a;
    return firstTrailingBit(-(max(select(vec4<i32>(u_input.b.x, -1i, 2147483647i, var_1.a.d), vec4<i32>(var_3.c.x, -1i, -1i, var_1.a.d), false), var_0.a.c) & reverseBits(vec4<i32>(global1.c.x, 2147483647i, var_3.c.x, global1.d))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_2) -> vec4<u32> {
    global0 = array<u32, 7>();
    global1 = Struct_1(func_2(Struct_1(~arg_0.a, arg_0.b, u_input.e, abs(-2147483647i)), arg_3.a).a.a >> (reverseBits(~(arg_0.a ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10411u, 7u)], 7u)], 7u)])) % 32u), arg_2.x, countOneBits(vec4<i32>(arg_3.a.c.x, _wgslsmith_clamp_i32(firstLeadingBit(arg_3.a.d), -12993i, ~arg_1.x), ~(~(-31341i)), firstTrailingBit(-18479i))), reverseBits(-2147483647i) ^ _wgslsmith_add_i32(abs(-41784i), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.x, -2147483647i), -1i)));
    let var_0 = abs(max(u_input.d.yx, ~(u_input.d.xy & u_input.d.xy) & ~(~u_input.d.zy)));
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(firstTrailingBit(global1.a), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global1.a ^ 1u, 7u)] | reverseBits(94187u), var_0.x)), ~(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, global0[_wgslsmith_index_u32(0u, 7u)]), ~0u)), ~(firstLeadingBit(var_0.x) << (_wgslsmith_mult_u32(max(arg_3.a.a, 1u), 1u) % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0, ~var_0), 10474u, 73520u, _wgslsmith_add_u32(52634u, _wgslsmith_dot_vec3_u32(vec3<u32>(31862u, global0[_wgslsmith_index_u32(8291u, 7u)], 90379u), vec3<u32>(arg_3.a.a, 56597u, global1.a)))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, 27664u, 1u, 1u) ^ vec4<u32>(10626u, 23285u, 1u, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.a, 7u)], 4294967295u, global1.a, arg_0.a), vec4<u32>(var_0.x, var_0.x, global1.a, 4294967295u)), select(vec4<u32>(arg_3.a.a, global1.a, 2148u, global1.a), vec4<u32>(1u, 1u, arg_0.a, var_0.x), true)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a, arg_3.a.a, 4294967295u, 4294967295u), vec4<u32>(82573u, 0u, 0u, 13693u), vec4<u32>(u_input.a, 1u, global1.a, 4294967295u)), abs(vec4<u32>(global1.a, 4294967295u, 20084u, arg_3.a.a))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, true, true), any(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7598u, 7u)], 7u)], 28u)])))));
    let var_2 = vec3<u32>(u_input.a, var_1.x, ~firstTrailingBit(var_0.x));
    return vec4<u32>(~_wgslsmith_dot_vec3_u32(var_1.ywy, _wgslsmith_clamp_vec3_u32(firstTrailingBit(var_2), vec3<u32>(52699u, 43243u, global1.a) | vec3<u32>(59673u, 0u, 1u), var_1.zxw)), 1u, var_1.x, ~var_1.x);
}

fn func_6(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> bool {
    var var_0 = arg_2;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_2)), -800f)) - _wgslsmith_f_op_f32(max(-1368f, global1.b)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)));
    var var_2 = _wgslsmith_dot_vec4_u32(~arg_1 | reverseBits(arg_1), arg_1) == _wgslsmith_mod_u32(u_input.d.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(29566u, min(1u, ~1u)), 7u)], 7u)]);
    let var_3 = func_2(Struct_1(abs(1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(exp2(func_2(Struct_1(2554u, 1000f, u_input.e, 13078i), Struct_1(global0[_wgslsmith_index_u32(global1.a, 7u)], arg_2, vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, -18970i), global1.d)).a.b)))), u_input.e, 25090i << (1u % 32u)), func_2(func_2(func_2(Struct_1(1042u, 2580f, vec4<i32>(global1.d, -2147483647i, global1.d, global1.c.x), 2147483647i), Struct_1(4294967295u, 1111f, global1.c, u_input.b.x)).a, func_2(func_2(Struct_1(4294967295u, -339f, u_input.e, 10738i), Struct_1(u_input.d.x, 1172f, vec4<i32>(0i, 0i, 1i, 60381i), global1.c.x)).a, func_2(Struct_1(u_input.a, arg_2, vec4<i32>(33695i, global1.c.x, u_input.e.x, 1i), u_input.b.x), Struct_1(71572u, arg_2, vec4<i32>(global1.c.x, 1i, -2147483647i, global1.c.x), global1.c.x)).a).a).a, func_2(Struct_1(global1.a >> (43066u % 32u), global1.b, u_input.e ^ vec4<i32>(22544i, global1.c.x, -2147483647i, global1.d), -1i), func_2(func_2(Struct_1(u_input.c, 1000f, vec4<i32>(2147483647i, -2147483647i, 31202i, global1.d), -36482i), Struct_1(global0[_wgslsmith_index_u32(arg_1.x, 7u)], 1732f, global1.c, u_input.b.x)).a, func_2(Struct_1(u_input.c, 231f, u_input.e, u_input.b.x), Struct_1(29989u, -357f, u_input.e, 1i)).a).a).a).a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u << (0u % 32u);
    var var_1 = vec2<bool>(all(select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34513u, 7u)], 7u)] > 53427u), true)), func_6(true, func_5(Struct_1(4294967295u, _wgslsmith_f_op_f32(abs(global1.b)), func_1(1u, u_input.d.zy, global1.b), u_input.b.x), ~(-global1.c), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -451f), -1658f, global1.b), Struct_2(Struct_1(43538u, 450f, vec4<i32>(-1i, u_input.e.x, u_input.b.x, global1.c.x), 62953i), 935f)), -1706f));
    global2 = array<vec3<bool>, 28>();
    let var_2 = -(~(~_wgslsmith_mult_i32(-u_input.b.x, u_input.e.x)));
    let var_3 = ~(~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(u_input.d, vec3<u32>(56651u, 1u, u_input.c)) >> (~vec3<u32>(1u, 97010u, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(0u, 7678u, 0u)));
    let var_4 = vec3<u32>(55343u, ~25054u, select(global1.a, _wgslsmith_dot_vec3_u32(~var_3, ~u_input.d) >> (((var_3.x ^ 1u) << (1u % 32u)) % 32u), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global1.b, global1.b));
}

