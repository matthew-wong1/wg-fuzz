struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(-1i, 30991i, 1i, 1i), vec4<i32>(-11601i, -1i, -12027i, 0i), vec4<i32>(2147483647i, -3236i, -22039i, 0i), vec4<i32>(0i, 14390i, 1i, -44513i), vec4<i32>(2147483647i, -19170i, 2147483647i, 38422i), vec4<i32>(-1718i, -7742i, 2868i, 11132i));

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<u32>(1u, 13264u), vec3<bool>(false, true, true), 1314f, Struct_1(0i, 15850u), 2147483647i), Struct_3(vec2<u32>(4294967295u, 38166u), vec3<bool>(false, true, false), -486f, Struct_1(13789i, 10373u), 8764i));

var<private> global2: bool;

var<private> global3: array<vec3<u32>, 26> = array<vec3<u32>, 26>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 10065u, 0u), vec3<u32>(1u, 49262u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 75367u, 220u), vec3<u32>(84295u, 22038u, 23687u), vec3<u32>(1u, 4294967295u, 30922u), vec3<u32>(4294967295u, 73257u, 4294967295u), vec3<u32>(1u, 4294967295u, 70147u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(12045u, 15009u, 0u), vec3<u32>(1u, 22242u, 14319u), vec3<u32>(6537u, 6888u, 23859u), vec3<u32>(16323u, 1u, 1u), vec3<u32>(28158u, 35354u, 49940u), vec3<u32>(24120u, 44671u, 86930u), vec3<u32>(4294967295u, 0u, 42398u), vec3<u32>(0u, 25910u, 67203u), vec3<u32>(0u, 2464u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(38084u, 1u, 1u), vec3<u32>(49869u, 4294967295u, 0u), vec3<u32>(11545u, 0u, 4294967295u), vec3<u32>(1u, 1u, 14689u), vec3<u32>(4294967295u, 1u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = vec3<i32>(select(reverseBits(-1i), max(~abs(-63305i), -2147483647i), true), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(55733i, -65587i, 0i)), vec3<i32>(1i, -18960i, i32(-1i) * -42729i)), select(~2147483647i, reverseBits(_wgslsmith_mult_i32(43085i, 0i)), true)), _wgslsmith_div_i32(-1i, abs(-6775i)) << (_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 4294967295u), vec2<u32>(~u_input.c, 4294967295u)) % 32u));
    var_0 = _wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, i32(-1i) * -84234i, -var_0.x) & countOneBits(vec3<i32>(-310i, var_0.x, var_0.x))), vec3<i32>(abs(0i) | var_0.x, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(44123u, 6u)], global0[_wgslsmith_index_u32(47126u, 6u)]), ~vec4<i32>(var_0.x, -2147483647i, var_0.x, 2147483647i) & vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -2147483647i, _wgslsmith_mod_i32(var_0.x, 39781i), var_0.x), -firstTrailingBit(vec4<i32>(var_0.x, 0i, -1i, 1i)))));
    let var_1 = var_0.zy;
    let var_2 = Struct_4(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-23723i, -1i, var_0.x)), vec3<i32>(-var_0.x, var_0.x, 6312i)), _wgslsmith_sub_vec3_i32(max(select(vec3<i32>(var_0.x, 46961i, var_0.x), vec3<i32>(var_0.x, 0i, -2147483647i), vec3<bool>(true, true, false)), countOneBits(vec3<i32>(-9198i, 0i, 7600i))), vec3<i32>(abs(var_1.x), i32(-1i) * -1i, select(var_0.x, var_0.x, false)))), true, Struct_1(var_1.x & _wgslsmith_sub_i32(~var_0.x, 1i), countOneBits(137079u)), 24000u, reverseBits(vec2<u32>(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, 17147u), firstTrailingBit(0u))));
    var var_3 = var_2.b;
    return ~min(u_input.a.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.b.yy) >> (~var_2.e % vec2<u32>(32u)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_4(((-vec3<i32>(-64683i, 0i, 26097i) >> (vec3<u32>(42213u, u_input.a.x, u_input.b.x) % vec3<u32>(32u))) >> (_wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(u_input.c, 26u)], vec3<u32>(u_input.a.x, u_input.c, 51829u)) % vec3<u32>(32u))) >> (~vec3<u32>(~4294967295u, ~u_input.c, _wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, 0u)) % vec3<u32>(32u)), !arg_0, Struct_1(select(-2147483647i, -(i32(-1i) * -34181i), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true))), 4294967295u), 4294967295u, func_3());
    var_0 = Struct_4(vec3<i32>(0i, -1i, ~((0i | var_0.a.x) | _wgslsmith_mod_i32(var_0.c.a, var_0.c.a))), true, var_0.c, ~_wgslsmith_mod_u32(34059u | var_0.c.b, 32607u), max(countOneBits(u_input.b.zz), max(reverseBits(_wgslsmith_clamp_vec2_u32(var_0.e, var_0.e, var_0.e)), vec2<u32>(firstTrailingBit(4294967295u), reverseBits(var_0.d)))));
    global0 = array<vec4<i32>, 6>();
    let var_1 = Struct_2(_wgslsmith_mod_vec2_i32(-max(-var_0.a.xy, var_0.a.zx & vec2<i32>(-2147483647i, 0i)), var_0.a.yx ^ vec2<i32>(var_0.c.a, -1i)), ~_wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~4294967295u, u_input.c | u_input.c), 6u)], global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 6u)]), ~vec2<u32>(var_0.c.b, var_0.e.x | ~4294967295u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1543f + -1736f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1246f + 1001f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(max(-858f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(350f, -1413f)), _wgslsmith_f_op_f32(trunc(1000f))))))), -1331f);
    return var_0.c;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    global0 = array<vec4<i32>, 6>();
    global0 = array<vec4<i32>, 6>();
    let var_0 = !vec4<bool>(false, !all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), false, false);
    var var_1 = global1[_wgslsmith_index_u32(func_2(true).b, 2u)];
    global2 = true;
    return _wgslsmith_f_op_f32(f32(-1f) * -392f);
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(508f - -1023f) + _wgslsmith_f_op_f32(trunc(624f))), _wgslsmith_f_op_f32(func_4(firstTrailingBit(u_input.b.x), func_2(true), 11185i, -global0[_wgslsmith_index_u32(u_input.b.x, 6u)])), _wgslsmith_f_op_f32(f32(-1f) * -2118f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(558f)) + -441f), _wgslsmith_f_op_f32(select(-743f, _wgslsmith_f_op_f32(-403f - -1000f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -944f))))));
    var var_1 = Struct_1(1i, u_input.a.x);
    var var_2 = u_input.c;
    var_2 = 0u;
    let var_3 = select(select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), false)), vec4<bool>(true && select(true, false, true), any(vec2<bool>(true, false)), any(vec2<bool>(false, true)), true), !(_wgslsmith_f_op_f32(f32(-1f) * -370f) == _wgslsmith_f_op_f32(var_0.x + var_0.x))), select(vec4<bool>(false, true, true, true), !vec4<bool>(all(vec2<bool>(true, false)), var_1.b == var_1.b, any(vec4<bool>(false, false, true, false)), true), any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), false)))), !vec4<bool>(any(vec2<bool>(true, true)), select(any(vec3<bool>(true, true, false)), true, -190f == var_0.x), true, !all(vec3<bool>(false, false, false))));
    return StorageBuffer(_wgslsmith_div_vec4_i32(~vec4<i32>(select(0i, 25128i, var_3.x), -2147483647i, ~var_1.a, _wgslsmith_add_i32(var_1.a, var_1.a)), -global0[_wgslsmith_index_u32(~select(var_1.b, var_1.b, var_3.x), 6u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(1i, 1i) == _wgslsmith_add_i32(select((60410i >> (1u % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(31941i, -2147483647i, 1i, 0i), vec4<i32>(-1i, -1i, -1459i, 0i)), countOneBits(-19325i), true), 1i);
    global3 = array<vec3<u32>, 26>();
    let var_1 = 16035u;
    let var_2 = vec2<u32>(0u, 72208u) >> ((vec2<u32>(~(~u_input.b.x), u_input.c) >> (select(_wgslsmith_mod_vec2_u32(u_input.b.zx, vec2<u32>(var_1, var_1)) ^ min(vec2<u32>(4294967295u, u_input.c), u_input.a.xy), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(var_1, u_input.a.x)), vec2<u32>(45704u, 4294967295u)), false) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_3 = global0[_wgslsmith_index_u32(0u, 6u)];
    global3 = array<vec3<u32>, 26>();
    let x = u_input.a;
    s_output = func_1();
}

