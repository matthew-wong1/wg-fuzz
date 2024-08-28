struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-599f, _wgslsmith_f_op_f32(f32(-1f) * -1617f), _wgslsmith_f_op_f32(-195f - -885f)));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 4294967295u))), Struct_1(vec3<u32>(57205u, select(25778u, u_input.a, false), ~u_input.a)), _wgslsmith_clamp_vec2_u32((vec2<u32>(1u, u_input.a) | vec2<u32>(u_input.a, u_input.a)) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), vec2<u32>(select(u_input.a, u_input.a, false), ~7209u), max(~vec2<u32>(u_input.a, 0u), ~vec2<u32>(27156u, 60603u))), any(vec3<bool>(true, false, false)) && any(vec3<bool>(false, false, true)), vec4<bool>(true, !any(vec2<bool>(true, false)), false, true)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, -1i, -2147483647i), vec3<i32>(-19782i, 22842i, -32305i), vec3<bool>(false, false, false)), -vec3<i32>(55488i, 2147483647i, 1i)), i32(-1i) * -1i, 1i, firstLeadingBit(firstLeadingBit(-2147483647i))), -vec3<i32>(-2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-9677i, 44922i, 1778i), vec3<i32>(-1i, -2147483647i, 23111i)), -23128i));
    let var_2 = ~(vec4<u32>(~0u, ~_wgslsmith_clamp_u32(45845u, 37223u, 56966u), u_input.a << (28200u % 32u), u_input.a) ^ abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, var_1.a.b.a.x, 1u, 1u), firstTrailingBit(vec4<u32>(767u, u_input.a, var_1.a.b.a.x, u_input.a)))));
    var var_3 = _wgslsmith_clamp_vec2_i32(-var_1.b.zx, var_1.b.yy, ~vec2<i32>((14723i | var_1.c.x) & -31929i, firstLeadingBit(var_1.b.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(468f, var_0.x, var_0.x, -705f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1722f, -103f, -1594f, var_0.x)))))));
    return 4294967295u;
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = Struct_4(arg_0.a.b, abs(arg_0.c.x), abs(func_3()));
    var var_1 = arg_0.a.e;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-268f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(618f, -465f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1618f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-623f * 1291f) - -1897f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f * -610f))));
    var var_3 = arg_0.a.e;
    var var_4 = reverseBits(vec2<i32>(_wgslsmith_mult_i32(var_0.b, ~(-28963i)), abs(firstLeadingBit(var_0.b))) | -_wgslsmith_mod_vec2_i32(arg_0.c.yz, arg_0.b.zz));
    return abs(7490u) >= (u_input.a | ~(~126224u));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_4(Struct_1(~(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 1u)) >> (vec3<u32>(61109u, u_input.a, u_input.a) % vec3<u32>(32u)))), abs(_wgslsmith_clamp_i32(~1i, abs(arg_0), -2147483647i)), u_input.a);
    var_0 = Struct_4(var_0.a, var_0.b, _wgslsmith_mod_u32(select(var_0.a.a.x, 6324u, arg_3.x), u_input.a));
    var_0 = Struct_4(var_0.a, -select(arg_2, -2147483647i, arg_3.x), 4294967295u);
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(~firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(27625i, arg_2), vec2<i32>(arg_0, var_0.b))), _wgslsmith_sub_i32(-59i ^ arg_0, ~var_0.b) >> (max(~var_0.a.a.x, ~u_input.a) % 32u)), -4727i);
    var var_2 = ~_wgslsmith_add_u32(var_0.a.a.x, ~var_0.c);
    return Struct_4(var_0.a, -1i << (countOneBits(10578u >> (~u_input.a % 32u)) % 32u), ~4294967295u);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(Struct_1(abs(vec3<u32>(~u_input.a, 1u, 0u))), -countOneBits(_wgslsmith_mod_i32(~arg_0.x, ~1i)), 21502u);
    var var_1 = !select(!vec4<bool>(true, all(vec3<bool>(true, false, false)), any(vec4<bool>(true, true, true, true)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(false, false, false)), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false), any(vec2<bool>(true, true))));
    let var_2 = ~(reverseBits(~(vec4<u32>(u_input.a, 4294967295u, arg_1.c, 5854u) << (vec4<u32>(4294967295u, 11263u, var_0.a.a.x, var_0.c) % vec4<u32>(32u)))) >> (countOneBits(select(abs(vec4<u32>(u_input.a, 280u, var_0.a.a.x, u_input.a)), reverseBits(vec4<u32>(arg_1.a.a.x, u_input.a, 142316u, arg_1.c)), select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x))) % vec4<u32>(32u)));
    let var_3 = true;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.x * arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))) * -231f), 1f, _wgslsmith_f_op_f32(-arg_3.x));
    return Struct_1(var_2.wyx >> (var_0.a.a % vec3<u32>(32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = func_5(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(abs(arg_0), vec3<i32>(arg_0.x, 48711i, arg_0.x)), arg_0, ~arg_0)), func_4(~arg_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(777f, -2227f) - vec2<f32>(-812f, -1442f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1031f, 279f))))), -_wgslsmith_div_i32(_wgslsmith_add_i32(1i, 0i), -2590i), vec4<bool>(true, true == func_2(Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.a, 34278u, u_input.a)), Struct_1(vec3<u32>(6621u, u_input.a, 1u)), vec2<u32>(u_input.a, u_input.a), true, arg_1), vec4<i32>(-2147483647i, arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, arg_0.x, -15112i))), arg_1.x && select(arg_1.x, arg_1.x, false), any(vec4<bool>(arg_1.x, false, false, arg_1.x)))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(~arg_0.xy, select(arg_0.zy, vec2<i32>(-40286i, arg_0.x), arg_1.x)), arg_0.x), arg_0.x, ~firstLeadingBit(-1i), -(-arg_0.x & -arg_0.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-148f, -1422f, -2416f, -174f), vec4<f32>(-681f, 178f, -1089f, 1000f))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2715f, _wgslsmith_f_op_f32(f32(-1f) * -300f), -1000f, 1117f))))));
    var var_1 = Struct_2(func_5(-_wgslsmith_clamp_vec3_i32(~arg_0, arg_0 << (vec3<u32>(var_0.a.x, 4294967295u, 1u) % vec3<u32>(32u)), ~vec3<i32>(-4169i, 0i, 1i)), func_4(_wgslsmith_div_i32(0i, countOneBits(2147483647i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1454f, -647f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-985f, -2221f), vec2<f32>(1738f, 220f), vec2<bool>(true, true)))), 2147483647i, !arg_1), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, arg_0.x, -23064i, arg_0.x), vec4<i32>(-2147483647i, -74949i, arg_0.x, -1i)) & ~(~vec4<i32>(0i, arg_0.x, arg_0.x, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(min(-511f, _wgslsmith_f_op_f32(123f + -1050f))), _wgslsmith_f_op_f32(f32(-1f) * -1343f), _wgslsmith_f_op_f32(-701f - -986f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-563f, 575f), 1f)))), Struct_1(~vec3<u32>(~57494u, 79919u, _wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(0u, 4294967295u, 4294967295u)))), vec2<u32>(var_0.a.x, ~abs(13955u)), (arg_0.x << (~var_0.a.x % 32u)) <= -2147483647i, !select(!select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), arg_1, arg_1), select(!vec4<bool>(false, arg_1.x, arg_1.x, false), arg_1, select(arg_1, arg_1, arg_1.x)), -arg_0.x > (arg_0.x ^ arg_0.x)));
    var var_2 = !(-(~(~(-2147483647i))) == ~arg_0.x);
    let var_3 = _wgslsmith_mod_i32(min(20788i, _wgslsmith_mod_i32(1i, ~(~arg_0.x))), -func_4(2147483647i, _wgslsmith_div_vec2_f32(vec2<f32>(-716f, 1872f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-471f, -1000f))), -30149i, select(!arg_1, vec4<bool>(false, true, true, var_1.e.x), arg_1.x)).b);
    var_1 = Struct_2(var_1.a, Struct_1(_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(var_1.b.a.x, var_1.c.x, var_1.b.a.x)), ~var_1.b.a)), var_1.b.a.yz, arg_1.x, var_1.e);
    return Struct_2(Struct_1(vec3<u32>(61469u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(16801u, u_input.a, var_0.a.x, u_input.a) << (vec4<u32>(var_0.a.x, 46043u, 82519u, 1u) % vec4<u32>(32u)), vec4<u32>(var_1.b.a.x, u_input.a, var_0.a.x, var_0.a.x) << (vec4<u32>(0u, 62574u, 1u, 73916u) % vec4<u32>(32u))))), Struct_1(var_0.a), ~vec2<u32>(0u, var_1.b.a.x), arg_1.x, var_1.e);
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_5(~vec3<i32>(1i, 1i, 1i), func_4(~1i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(322f, -184f), vec2<f32>(1369f, 539f)))))), abs(reverseBits(-14604i) >> (1u % 32u)), select(arg_0.e, select(func_1(vec3<i32>(-19552i, 1i, -1i), arg_0.e).e, arg_0.e, arg_0.e), !arg_0.e)), ~(-vec4<i32>(~36633i, ~15340i, countOneBits(-1i), ~1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-814f, 180f), 412f, _wgslsmith_f_op_f32(step(-402f, -475f)), -1000f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-285f, -339f, -464f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-327f, -1861f, -1725f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(584f, 811f, -241f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1564f, -645f, 431f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1275f, -134f, 522f)))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -667f), _wgslsmith_f_op_f32(307f * -266f), _wgslsmith_f_op_f32(-380f - -1477f)))));
    let var_2 = func_4(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-41392i), ~(-12984i), 0i >> (0u % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 2147483647i), vec3<i32>(54919i, 50546i, 0i))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, -184f))), _wgslsmith_f_op_vec2_f32(var_1.zx * _wgslsmith_div_vec2_f32(vec2<f32>(913f, var_1.x), var_1.yy)))), _wgslsmith_div_vec2_f32(vec2<f32>(452f, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-621f, -875f) - vec2<f32>(var_1.x, var_1.x)))), -2147483647i, func_1(vec3<i32>(~(~(-73003i)), -31793i, -1i), arg_0.e).e).a;
    let var_3 = func_4(1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_1.x)), var_1.x) - vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(545f, -282f), var_1.x)), _wgslsmith_f_op_f32(min(1000f, -1149f)))), -6013i, vec4<bool>(all(select(!arg_0.e.yw, !arg_0.e.zy, !arg_0.e.zx)), func_1(-vec3<i32>(1i, 1i, 1i), !(!vec4<bool>(arg_0.e.x, arg_0.d, arg_0.d, true))).e.x, true, arg_0.e.x));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-627f, var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(409f))), _wgslsmith_f_op_f32(abs(572f)), select(true, arg_0.e.x != arg_0.d, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1.x)), -864f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(ceil(728f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(floor(var_1.x)), 2007f, _wgslsmith_f_op_f32(-684f * -922f)))));
    return func_5(vec3<i32>(2147483647i, ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_3.b, var_3.b, var_3.b), vec3<i32>(var_3.b, var_3.b, var_3.b)), ~vec3<i32>(var_3.b, var_3.b, 35555i)), _wgslsmith_mult_i32(-11001i, var_3.b) ^ var_3.b), func_4(~min(var_3.b, var_3.b), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_4.x, -342f))), 24973i, !vec4<bool>(arg_0.e.x, var_1.x <= -249f, false, true)), ~((-vec4<i32>(var_3.b, var_3.b, 2147483647i, var_3.b) << ((vec4<u32>(23817u, 43991u, arg_0.a.a.x, var_2.a.x) | vec4<u32>(4294967295u, var_2.a.x, var_0.a.x, arg_0.b.a.x)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(var_3.a.a.x, arg_0.b.a.x), ~17018u, ~39549u, var_3.c) % vec4<u32>(32u))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2033f, _wgslsmith_f_op_f32(var_4.x + var_1.x), var_1.x, _wgslsmith_f_op_f32(trunc(var_4.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_4.x, var_4.x)))) - _wgslsmith_div_vec4_f32(vec4<f32>(3494f, 1590f, 1000f, var_4.x), vec4<f32>(777f, 113f, var_4.x, 637f)))));
}

fn func_7(arg_0: i32, arg_1: Struct_4) -> Struct_3 {
    var var_0 = 2147483647i ^ arg_0;
    var_0 = -(~arg_1.b);
    var_0 = select(arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, _wgslsmith_clamp_i32(-41036i, arg_1.b, -2151i), arg_1.b, func_4(arg_1.b, vec2<f32>(732f, -1000f), arg_1.b, vec4<bool>(false, true, false, true)).b), vec4<i32>(firstLeadingBit(3166i), arg_1.b, 0i, -arg_1.b), vec4<i32>(-2147483647i ^ arg_1.b, ~2147483647i, arg_1.b, arg_0)), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, arg_1.b, -1i, arg_1.b), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 0i, arg_1.b, 23615i), vec4<i32>(-1i, arg_0, arg_1.b, arg_0))) << (countOneBits(vec4<u32>(u_input.a, arg_1.c, 0u, 48761u) | vec4<u32>(1u, 7336u, 103833u, 0u)) % vec4<u32>(32u))), ~(~arg_1.a.a.x) >= arg_1.a.a.x);
    var var_1 = ~_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(arg_0, arg_0, 31514i)), vec3<i32>(4674i, -15312i, 54680i), ~reverseBits(vec3<i32>(17331i, arg_1.b, arg_0))), ~min(vec3<i32>(arg_1.b, -16072i, 0i), firstTrailingBit(vec3<i32>(arg_1.b, 24986i, arg_0))));
    var var_2 = vec4<i32>(33884i, ~48026i, 1i, 2147483647i);
    return Struct_3(Struct_2(arg_1.a, arg_1.a, arg_1.a.a.xx ^ ~arg_1.a.a.zy, 4294967295u < select(12388u, func_3(), true), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), true)))), _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(43212i, var_1.x, -2147483647i, arg_0)) & -vec4<i32>(arg_1.b, var_1.x, 37728i, -1i), vec4<i32>(var_1.x, arg_0, var_1.x, var_2.x) >> (~vec4<u32>(40742u, 1u, u_input.a, 97741u) % vec4<u32>(32u)), select(all(vec3<bool>(true, true, true)), select(false, false, false), false)), _wgslsmith_mult_vec4_i32(-vec4<i32>(3769i, var_1.x, arg_1.b, -1i), select(vec4<i32>(arg_1.b, 1i, var_1.x, -1i), vec4<i32>(arg_0, -34294i, 0i, -69892i), vec4<bool>(false, true, true, false))) & ~select(vec4<i32>(arg_1.b, 13664i, arg_0, 29820i), vec4<i32>(2147483647i, var_2.x, -1i, 6175i), vec4<bool>(false, false, false, false))), vec3<i32>(-1i, 19789i, arg_0 | ~(-54041i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(min(-2147483647i, 2147483647i), 1i, ~71200i), vec3<i32>(-2147483647i << (u_input.a % 32u), abs(-1i), 0i)), _wgslsmith_sub_i32(~36037i, -(~43706i))), Struct_4(func_6(func_1(vec3<i32>(-42249i, 2147483647i, 0i), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)))), -_wgslsmith_clamp_i32(i32(-1i) * -40519i, i32(-1i) * -1i, reverseBits(-41425i)), u_input.a));
    let var_1 = vec3<u32>(func_7(var_0.b.x, func_4(~firstLeadingBit(var_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(282f, -2163f) + vec2<f32>(-889f, 210f))), var_0.b.x, vec4<bool>(true, var_0.c.x < 2147483647i, var_0.a.e.x, true))).a.a.a.x, func_1(var_0.b.xxw, !var_0.a.e).b.a.x, func_3());
    var var_2 = Struct_1(((min(var_0.a.a.a, var_1) | var_0.a.b.a) ^ vec3<u32>(1u, ~u_input.a, min(1528u, u_input.a))) ^ vec3<u32>(_wgslsmith_div_u32(~0u, var_1.x), 42452u, var_0.a.a.a.x));
    var_2 = Struct_1(func_6(var_0.a).a);
    var var_3 = false;
    var_3 = !(select(2147483647i, -48625i, !all(vec3<bool>(true, false, false))) != firstLeadingBit(var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, -708f, -1228f, -2467f) - vec4<f32>(-936f, 391f, -1000f, 1594f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(403f, -1618f, 2429f, 1070f)), !vec4<bool>(false, true, var_0.a.e.x, var_0.a.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-564f, 113f, 338f, 325f))), vec4<f32>(665f, -1000f, 254f, -891f)), vec4<f32>(_wgslsmith_f_op_f32(select(378f, -1000f, true)), -560f, 1000f, _wgslsmith_f_op_f32(1039f - 554f))))), min(var_0.b.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(var_0.b, vec4<i32>(1i, var_0.b.x, 9649i, -27648i)), -var_0.b), var_0.b.x)));
}

