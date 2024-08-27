struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(firstTrailingBit(~arg_2.c.a), u_input.c)), _wgslsmith_add_vec4_i32(-arg_2.c.a, vec4<i32>(_wgslsmith_mod_i32(0i, u_input.c.x), arg_2.a, _wgslsmith_clamp_i32(global0.x, ~(-7308i), global0.x), -29000i)));
    let var_1 = _wgslsmith_mult_i32(-25859i, u_input.e);
    var var_2 = arg_1;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(-319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_2.c.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b)))));
    let var_4 = -_wgslsmith_add_i32(1i, max((i32(-1i) * -54452i) << (arg_2.c.d % 32u), ~_wgslsmith_add_i32(-2147483647i, arg_3.c)));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_3.d, 45338u, _wgslsmith_mult_u32(arg_1.c.e.x, u_input.a.x), _wgslsmith_clamp_u32(var_2.c.e.x, u_input.b, arg_3.e.x)) << (u_input.a % vec4<u32>(32u)), vec4<u32>(~u_input.b, _wgslsmith_add_u32(~arg_3.d, 1346u), _wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(105525u, 80919u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 19988u, 1u) ^ vec3<u32>(arg_2.c.d, arg_3.d, var_2.c.e.x), vec3<u32>(1u, 2272u, arg_3.d)))), select(_wgslsmith_clamp_vec4_u32(abs(u_input.a), ~firstLeadingBit(vec4<u32>(0u, 0u, 0u, arg_1.c.e.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.c.e.x, 4294967295u, arg_2.c.e.x, arg_2.c.d), u_input.a)), select(vec4<u32>(18950u, 13909u, 1u, 1u ^ arg_1.c.d), _wgslsmith_add_vec4_u32(~u_input.a, u_input.a), vec4<bool>(var_4 < 1i, all(vec3<bool>(true, true, true)), all(vec4<bool>(true, false, false, false)), false)), !vec4<bool>(select(true, true, true), select(false, false, true), all(vec3<bool>(true, true, true)), true)));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x * 1f), arg_2.x)));
    let var_1 = true;
    var var_2 = vec3<u32>(_wgslsmith_add_u32(u_input.a.x, abs(func_3(arg_2.x, Struct_2(global0.x, vec3<f32>(arg_2.x, 853f, arg_2.x), Struct_1(vec4<i32>(24511i, 1i, u_input.c.x, arg_1), -832f, 49217i, 29868u, vec2<u32>(0u, 39860u))), Struct_2(arg_1, vec3<f32>(186f, arg_2.x, arg_2.x), Struct_1(u_input.c, arg_2.x, -43923i, 0u, u_input.a.xw)), Struct_1(vec4<i32>(-57448i, global0.x, u_input.c.x, u_input.e), -557f, 1i, 0u, u_input.a.yy))) | func_3(_wgslsmith_f_op_f32(f32(-1f) * -1994f), Struct_2(u_input.e, vec3<f32>(arg_2.x, -555f, arg_2.x), Struct_1(vec4<i32>(2147483647i, -2147483647i, arg_1, global0.x), -854f, 0i, 4294967295u, u_input.a.yz)), Struct_2(12561i, vec3<f32>(735f, 1599f, arg_2.x), Struct_1(vec4<i32>(0i, 1i, 58155i, global0.x), -1792f, 0i, u_input.a.x, vec2<u32>(u_input.b, 1u))), Struct_1(vec4<i32>(1i, 9874i, 1i, global0.x), arg_2.x, global0.x, u_input.a.x, vec2<u32>(u_input.b, 9532u)))), ~1u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(4294967295u, u_input.a.x, u_input.b) << (_wgslsmith_mult_vec3_u32(vec3<u32>(41542u, u_input.a.x, 1u), u_input.a.wxz) % vec3<u32>(32u)), ~u_input.a.yww, !arg_0), vec3<u32>(u_input.b, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x | u_input.a.x)));
    var var_3 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-arg_2.x), -2147483647i, 1u, _wgslsmith_mod_vec2_u32(min(vec2<u32>(_wgslsmith_mod_u32(var_2.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), vec3<u32>(1u, 102121u, var_2.x))), vec2<u32>(49459u, countOneBits(var_2.x))), var_2.yz));
    var var_4 = ~vec4<i32>(var_3.a.x, arg_1, arg_1, var_3.c);
    return !(!(arg_2.x >= 1654f) && false);
}

fn func_1(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, global0.x & _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -62946i)), countOneBits(vec2<i32>(u_input.c.x, u_input.e))), global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(435f, 539f)))))), 0i, u_input.b, abs(~(~(~u_input.a.xx))));
    let var_1 = var_0;
    global0 = select(var_0.a.yxx, -var_0.a.yzw, vec3<bool>(!any(vec2<bool>(false, arg_0.x)) || any(vec3<bool>(true, true, false)), select(arg_0.x, func_2(arg_0, min(u_input.d.x, 7178i), _wgslsmith_div_vec2_f32(vec2<f32>(-2444f, 169f), vec2<f32>(-135f, var_1.b))), ~2147483647i >= u_input.e), arg_0.x));
    global0 = vec3<i32>(var_0.c, -21197i, abs(abs(abs(u_input.e))) >> (~select(u_input.a.x, firstLeadingBit(var_0.e.x), true || arg_0.x) % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_0.b, -148f, var_0.b)), vec4<f32>(-474f, 669f, var_0.b, -131f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-174f, 2455f, 378f, var_1.b))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1083f, -829f, var_0.b, var_1.b)))), arg_0.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -1004f, var_0.b, var_0.b)))))))));
    return abs(abs(firstTrailingBit(firstLeadingBit(var_0.a.wxy))) ^ (var_0.a.wxy ^ -vec3<i32>(2147483647i, u_input.c.x, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.e ^ 1i, -23069i);
    let var_1 = !(!vec2<bool>(true, u_input.b <= ~u_input.b));
    global0 = reverseBits(func_1(select(!vec3<bool>(var_1.x, var_1.x, false), !select(vec3<bool>(true, false, var_1.x), vec3<bool>(true, true, false), vec3<bool>(false, var_1.x, false)), var_1.x)));
    global0 = select(u_input.c.xxy, _wgslsmith_sub_vec3_i32(func_1(!(!vec3<bool>(var_1.x, var_1.x, var_1.x))), ~select(vec3<i32>(u_input.d.x, u_input.e, -16167i), ~vec3<i32>(global0.x, -17055i, u_input.c.x), true)), -(global0.x << (_wgslsmith_mult_u32(4294967295u, 1u) % 32u)) == -var_0.x);
    var var_2 = min(_wgslsmith_mult_vec4_i32(u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(31054i, ~u_input.d.x, func_1(vec3<bool>(var_1.x, true, var_1.x)).x, ~(-41103i)), vec4<i32>(~(-31741i), -31347i, firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(u_input.c.wxx, vec3<i32>(-1i, 2147483647i, u_input.c.x))))), firstTrailingBit(vec4<i32>(abs(global0.x), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(10650i, u_input.c.x, global0.x, u_input.c.x), firstTrailingBit(vec4<i32>(-2147483647i, -44552i, global0.x, var_0.x))), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(375f)) * -1470f)), _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(exp2(1f)), vec2<i32>(u_input.c.x, countOneBits(select(~1i, 1i, !var_1.x))), var_2.xz & global0.xz);
}

