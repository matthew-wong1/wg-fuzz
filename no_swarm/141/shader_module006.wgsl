struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: vec2<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> i32 {
    let var_0 = vec2<u32>(1u, _wgslsmith_clamp_u32(arg_0.a.c.x, arg_0.a.c.x, 1u));
    var var_1 = true;
    var var_2 = arg_0.a.c.x;
    let var_3 = arg_0.a.d;
    var var_4 = ~44745i;
    return abs(-1i);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), any(vec4<bool>(true, false, true, false))), u_input.a, _wgslsmith_div_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 18135u), vec3<u32>(26454u, 0u, 46481u), vec3<u32>(0u, 15869u, 42431u)), vec3<u32>(1u, 1u, 1u)), Struct_1(global0[_wgslsmith_index_u32(~69693u, 2u)] > _wgslsmith_f_op_f32(global1.x * global0[_wgslsmith_index_u32(5119u, 2u)]))), Struct_1(true), Struct_2(!vec4<bool>(all(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, true)), true, any(vec2<bool>(false, true))), select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-19694i, u_input.a, u_input.a), func_3(Struct_3(Struct_2(vec4<bool>(true, false, false, false), u_input.b, vec3<u32>(21270u, 32126u, 32200u), Struct_1(false)), Struct_1(true), Struct_2(vec4<bool>(false, true, true, true), u_input.b, vec3<u32>(0u, 4294967295u, 0u), Struct_1(false))), vec3<f32>(global1.x, global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(8271u, 2u)]))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(42370i, u_input.b, 49364i), vec3<i32>(u_input.a, -560i, u_input.a)), min(vec3<i32>(-43608i, -24023i, 9954i), vec3<i32>(u_input.b, u_input.a, u_input.b))), true), vec3<u32>(~reverseBits(1u), 12025u, firstLeadingBit(0u)), Struct_1(true)));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, 0u, 80605u, 4294967295u), vec4<u32>(95677u, 21074u, 1u, 1152u)), var_0.c.c.x) | (18993u & _wgslsmith_sub_u32(var_0.a.c.x, var_0.a.c.x))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.a.c.x, var_0.a.c.x), countOneBits(vec2<u32>(var_0.c.c.x, 1u)) ^ var_0.c.c.xz, ~max(vec2<u32>(var_0.a.c.x, 0u), vec2<u32>(var_0.c.c.x, 1u)) ^ vec2<u32>(var_0.c.c.x & var_0.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.c.x, 21931u, var_0.a.c.x, var_0.a.c.x), vec4<u32>(var_0.a.c.x, 15197u, 0u, var_0.a.c.x)))));
    var_0 = Struct_3(Struct_2(var_0.c.a, 70463i, _wgslsmith_mult_vec3_u32(var_0.c.c ^ vec3<u32>(1u, var_1.x, 33723u), vec3<u32>(var_0.c.c.x, 1u >> (var_1.x % 32u), 4294967295u)), Struct_1(var_0.b.a)), Struct_1(!var_0.c.d.a & true), var_0.a);
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 2>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.x, 2u)]);
    var var_2 = arg_1.x ^ ~arg_1.x;
    return func_2();
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> i32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 103f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 2u)] * global1.x), _wgslsmith_f_op_f32(trunc(global1.x)))), 929f < global0[_wgslsmith_index_u32(abs(1u), 2u)])));
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(~8507u, ~1u, ~41371u, _wgslsmith_sub_u32(arg_1.c.x, 1u)) << ((vec4<u32>(min(arg_1.c.x, arg_0), ~0u, 11046u | arg_0, 100634u) & ~(~vec4<u32>(arg_0, 1u, 26543u, arg_1.c.x))) % vec4<u32>(32u)), ~vec4<u32>(0u, arg_0, ~(~4294967295u), arg_0));
    let var_1 = ~var_0.wxx ^ vec3<u32>(4407u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(arg_1.c.x, 29226u, arg_0, arg_0)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, var_0.x, arg_1.c.x, 1u)), firstTrailingBit(vec4<u32>(var_0.x, arg_0, arg_0, arg_1.c.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_sub_u32(1u, var_0.x), abs(4294967295u), ~arg_0), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, 0u, 14600u, arg_1.c.x), ~vec4<u32>(0u, arg_1.c.x, arg_0, arg_0))));
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-105f, global0[_wgslsmith_index_u32(arg_0, 2u)]))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-586f, 400f)))))));
    var_0 = vec4<u32>(min(_wgslsmith_div_u32(~(~49934u), arg_1.c.x), firstLeadingBit(reverseBits(var_1.x))), var_1.x, ~arg_0, _wgslsmith_mod_u32(3445u, _wgslsmith_sub_u32(~arg_1.c.x, countOneBits(var_0.x))) & ~(~arg_0 ^ (var_0.x >> (1u % 32u))));
    return reverseBits(firstTrailingBit(arg_1.b));
}

fn func_6(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(-27577i, ~u_input.a, ~u_input.a, arg_1), -select(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(-16293i, arg_1, -8292i, arg_1)), vec4<i32>(u_input.a, -22919i, -2570i, -1i) & vec4<i32>(u_input.b, arg_1, 4898i, u_input.b)), -_wgslsmith_div_vec4_i32(vec4<i32>(-4731i, 0i, -1i, 2147483647i), vec4<i32>(arg_1, arg_1, u_input.b, u_input.a)), arg_0), -_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(u_input.b, -1i, -1i, -6449i), vec4<i32>(arg_1, arg_1, 1i, 52722i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, -1i), vec4<i32>(2147483647i, 8647i, 0i, u_input.a) >> (vec4<u32>(1u, 23868u, 26572u, 49071u) % vec4<u32>(32u)), -vec4<i32>(2147483647i, u_input.a, -1i, u_input.a)), ~vec4<i32>(2147483647i, arg_1, u_input.a, arg_1)));
    var var_1 = arg_1;
    var var_2 = Struct_3(Struct_2(vec4<bool>(true, all(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0))), func_2().a.x, false), u_input.b, vec3<u32>(1u, 1u, 1u), Struct_1(arg_0)), Struct_1(!any(!vec2<bool>(true, arg_0))), func_4(all(!(!vec4<bool>(true, arg_0, false, false))), min(vec4<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(35191u, 11809u), vec2<u32>(1u, 4294967295u)), ~1u, 25034u), max(abs(vec4<u32>(1u, 7261u, 4294967295u, 1u)), vec4<u32>(1u, 1u, 1u, 1u))), select(vec4<bool>(false, true, true, false), func_4(true, select(vec4<u32>(1u, 45297u, 0u, 48678u), vec4<u32>(41242u, 69780u, 17405u, 1u), true), !vec4<bool>(arg_0, arg_0, arg_0, arg_0), func_4(false, vec4<u32>(74246u, 1u, 54635u, 7027u), vec4<bool>(arg_0, arg_0, arg_0, true), Struct_2(vec4<bool>(arg_0, arg_0, true, arg_0), -1i, vec3<u32>(6085u, 1u, 43460u), Struct_1(arg_0)))).a, true), func_2()));
    var_2 = Struct_3(func_4(arg_0, vec4<u32>(0u, 36241u, func_4(false, countOneBits(vec4<u32>(var_2.a.c.x, 1u, var_2.a.c.x, 0u)), !vec4<bool>(false, arg_0, var_2.b.a, false), var_2.c).c.x, abs(var_2.a.c.x)), select(!(!var_2.a.a), var_2.a.a, arg_0), func_2()), func_2().d, Struct_2(var_2.c.a, ~6551i, ~func_2().c, var_2.c.d));
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, -563f), vec2<f32>(global1.x, 1607f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(63781u, 2u)], -760f) + vec2<f32>(323f, -1439f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(852f, -693f)))))))));
    return Struct_1(true);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(arg_0.a, func_6(!arg_0.b.a, func_5(66410u, func_4(false, vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 78786u, 36947u) & vec4<u32>(1u, arg_0.c.c.x, arg_0.a.c.x, arg_0.c.c.x), arg_0.c.a, func_2()))), Struct_2(!vec4<bool>(all(vec3<bool>(arg_0.a.d.a, arg_0.b.a, arg_0.a.a.x)), true, arg_0.b.a, -3971i < arg_0.c.b), u_input.a, _wgslsmith_div_vec3_u32(arg_0.c.c, select(max(arg_0.c.c, arg_0.c.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_0.c.c.x, 4294967295u), arg_0.a.c, vec3<u32>(arg_0.c.c.x, arg_0.a.c.x, 1u)), arg_0.c.a.x)), func_6(false, -u_input.a)));
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-291f - global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_f_op_f32(f32(-1f) * -1146f)))));
    var var_1 = u_input.a;
    let var_2 = ~(~(~(~(arg_0.a.c.x | 74924u))));
    global0 = array<f32, 2>();
    return Struct_1(arg_0.c.d.a);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(abs(344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    let var_1 = ~min(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_1.c.c.x, arg_0.c.c.x, arg_1.a.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c.c.x, arg_0.c.c.x, 1u, arg_1.c.c.x), vec4<u32>(1u, 2457u, arg_1.a.c.x, 0u))) << ((vec4<u32>(0u, 45003u, 0u, arg_1.c.c.x) << ((vec4<u32>(66285u, 3800u, arg_1.c.c.x, arg_1.c.c.x) & vec4<u32>(arg_0.a.c.x, arg_1.a.c.x, 19011u, arg_0.a.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(~32057u, min(13647u, arg_0.a.c.x), func_4(arg_2.a, vec4<u32>(arg_1.c.c.x, 4294967295u, arg_0.a.c.x, arg_0.c.c.x), arg_1.c.a, arg_1.c).c.x, 0u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_div_f32(var_0.x, global0[_wgslsmith_index_u32(1u, 2u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a.c.x, 2u)] * global1.x) - -117f)))));
    let var_3 = func_4(any(select(arg_0.c.a.ww, arg_0.a.a.xw, func_4(true, ~var_1, vec4<bool>(arg_2.a, true, false, arg_0.b.a), func_4(arg_0.a.a.x, var_1, arg_0.a.a, Struct_2(arg_1.a.a, 26719i, vec3<u32>(13420u, 18032u, 1408u), Struct_1(true)))).a.yw)), vec4<u32>(~var_1.x, _wgslsmith_div_u32(~(~var_1.x), ~func_2().c.x), ~var_1.x, 15897u << (1u % 32u)), !(!vec4<bool>(true, func_6(true, 25955i).a, all(arg_1.c.a.zx), func_1(Struct_3(arg_0.c, Struct_1(true), arg_1.c)).a)), func_2()).d;
    var var_4 = func_2();
    return StorageBuffer(var_0.x, ~vec4<i32>(-var_4.b, var_4.b, _wgslsmith_sub_i32(1i, var_4.b), u_input.a) >> (_wgslsmith_div_vec4_u32(abs(var_1) ^ var_1, select(max(vec4<u32>(var_1.x, 4294967295u, 1u, 1215u), var_1), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, arg_0.c.c.x, 0u, 19854u), vec4<u32>(1u, var_4.c.x, var_1.x, 1u)), any(arg_0.a.a.xww))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(global1.x * global0[_wgslsmith_index_u32(14879u, 2u)]), arg_2.a || true)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1038f))))) + _wgslsmith_f_op_f32(f32(-1f) * -1086f)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-639i, arg_0.a.b, 80083i, arg_0.c.b) >> (firstTrailingBit(vec4<u32>(4294967295u, 394u, 1u, arg_1.c.c.x)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_4.b, -17805i, 16539i, -1249i), ~vec4<i32>(-16331i, var_4.b, u_input.b, 2147483647i))), arg_0.a.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(min(0i, -52966i), -2147483647i), -arg_0.c.b >> (~40555u % 32u)), 8595i), vec4<u32>(_wgslsmith_clamp_u32(arg_1.a.c.x, _wgslsmith_sub_u32(33046u, 1u), ~_wgslsmith_sub_u32(arg_1.a.c.x, 0u)), firstLeadingBit(~1u), ~(~abs(40495u)), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1455f;
    let var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1000f))))) + 573f));
    var var_2 = ~7881i;
    var var_3 = Struct_1(!(_wgslsmith_add_i32(-18280i, u_input.a) == countOneBits(u_input.a)) && ((1u >= _wgslsmith_dot_vec3_u32(vec3<u32>(43522u, 1u, 764u), vec3<u32>(1u, 4294967295u, 4294967295u))) != any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true))));
    var_3 = Struct_1(var_3.a);
    var var_4 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(5397u, 1u, ~8837u), vec3<u32>(~4294967295u, 0u, 1u)));
    var var_5 = ~(~(~(1u ^ ~var_4.x)));
    let var_6 = vec4<bool>(!(_wgslsmith_f_op_f32(-global1.x) <= global1.x), var_3.a, all(vec2<bool>(any(vec2<bool>(var_3.a, false)), all(vec3<bool>(var_3.a, false, true)))), !any(select(vec3<bool>(true, true, var_3.a), vec3<bool>(var_3.a, var_3.a, false), vec3<bool>(true, var_3.a, var_3.a))) & any(vec2<bool>(var_3.a, var_3.a)));
    let x = u_input.a;
    s_output = func_7(Struct_3(Struct_2(!select(vec4<bool>(var_6.x, false, true, var_3.a), var_6, var_3.a), -var_1 >> (~4294967295u % 32u), ~firstLeadingBit(vec3<u32>(var_4.x, var_4.x, var_4.x)), func_1(Struct_3(Struct_2(var_6, var_1, vec3<u32>(0u, var_4.x, 4294967295u), Struct_1(false)), Struct_1(var_6.x), Struct_2(var_6, 1i, vec3<u32>(var_4.x, var_4.x, 1507u), Struct_1(false))))), func_6(!var_3.a, var_1), func_2()), Struct_3(Struct_2(var_6, ~2147483647i, ~(~vec3<u32>(79101u, 0u, var_4.x)), Struct_1(var_6.x)), Struct_1(true != var_6.x), Struct_2(func_4(true, ~vec4<u32>(var_4.x, var_4.x, 1u, 0u), select(var_6, var_6, vec4<bool>(var_6.x, var_6.x, var_3.a, false)), func_2()).a, 0i, vec3<u32>(var_4.x, var_4.x, var_4.x), func_2().d)), func_6(true || func_4(false, vec4<u32>(4294967295u, var_4.x, 7602u, 4294967295u) | vec4<u32>(29285u, 4294967295u, var_4.x, var_4.x), vec4<bool>(false, true, true, var_3.a), Struct_2(vec4<bool>(true, false, var_3.a, var_6.x), u_input.b, vec3<u32>(0u, var_4.x, var_4.x), Struct_1(true))).a.x, ~reverseBits(~var_1)));
}

