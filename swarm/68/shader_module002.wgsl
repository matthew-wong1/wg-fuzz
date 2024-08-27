struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 52033u;

var<private> global1: array<Struct_1, 7>;

var<private> global2: Struct_2 = Struct_2(12073i, Struct_1(55180u, vec2<u32>(69334u, 67251u), -1i, vec3<bool>(true, true, false)), vec2<i32>(0i, 0i), 2147483647i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_i32(15170i, _wgslsmith_dot_vec4_i32(countOneBits(abs(abs(vec4<i32>(57385i, -45640i, global2.a, global2.b.c)))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -7830i, -5519i, global2.a), vec4<i32>(global2.c.x, global2.d, global2.d, 18789i)) | vec4<i32>(-global2.a, ~43682i, max(global2.a, -2147483647i), ~6795i)));
    return var_0 | -57836i;
}

fn func_2() -> i32 {
    var var_0 = Struct_2(~func_3(289f, _wgslsmith_div_vec4_f32(vec4<f32>(251f, -275f, 803f, 969f), vec4<f32>(-411f, 338f, 514f, 1514f))), Struct_1(u_input.a.x, select(global2.b.b, vec2<u32>(global2.b.a, 1u) | u_input.b.wz, select(!vec2<bool>(true, global2.b.d.x), vec2<bool>(global2.b.d.x, global2.b.d.x), true)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(global2.b.c), global2.d, -32743i, 4884i), vec4<i32>(global2.d, global2.a, _wgslsmith_dot_vec2_i32(global2.c, global2.c), abs(12772i))), global2.b.d), -global2.c | global2.c, global2.b.c);
    return 1i;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = firstTrailingBit(~(_wgslsmith_mod_vec2_u32(global2.b.b, arg_0.xw) & _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a.x, arg_0.x)))) ^ firstTrailingBit(_wgslsmith_mod_vec2_u32(select(~vec2<u32>(0u, 0u), _wgslsmith_mult_vec2_u32(vec2<u32>(304u, 4294967295u), vec2<u32>(arg_0.x, arg_2.b.b.x)), arg_2.b.d.xy), arg_0.xw));
    var var_1 = arg_2;
    global0 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1240f, -231f, global2.b.d.x)) * 1105f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1001f - 1000f), _wgslsmith_div_f32(-660f, 2439f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1353f, -1000f, arg_3.x)), -1465f)))), 295f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(945f))))))));
    var var_3 = Struct_2(countOneBits(-(~var_1.a << (_wgslsmith_div_u32(u_input.b.x, arg_0.x) % 32u))), global1[_wgslsmith_index_u32(1u, 7u)], firstLeadingBit(min(global2.c, reverseBits(vec2<i32>(arg_1, var_1.d)))), firstLeadingBit(-arg_2.b.c & -(~global2.a)));
    return Struct_2(min(_wgslsmith_add_i32(global2.b.c, -73520i), 4393i), Struct_1(13675u, arg_2.b.b, var_1.c.x, select(arg_2.b.d, global2.b.d, select(vec3<bool>(var_3.b.d.x, true, false), vec3<bool>(true, true, true), var_3.b.d))), countOneBits(var_1.c), min(~(-12118i), var_3.b.c));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    global2 = func_4(vec4<u32>(~(~41959u), select(u_input.b.x, arg_1.b.a, true) | _wgslsmith_dot_vec4_u32(vec4<u32>(24283u, 9797u, global2.b.b.x, 2120u), vec4<u32>(global2.b.b.x, arg_1.b.a, 0u, 37154u) << (u_input.b % vec4<u32>(32u))), ~107871u, 39496u), abs(func_2()), arg_1, !select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, arg_1.b.d.x, global2.b.d.x, arg_1.b.d.x), vec4<bool>(true, false, true, true), vec4<bool>(arg_1.b.d.x, global2.b.d.x, arg_1.b.d.x, global2.b.d.x)), select(vec4<bool>(true, global2.b.d.x, global2.b.d.x, true), vec4<bool>(true, arg_1.b.d.x, false, global2.b.d.x), true), true), !(!vec4<bool>(true, true, global2.b.d.x, true))));
    var var_0 = ((min(~vec3<u32>(arg_1.b.a, 58380u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, global2.b.b.x, global2.b.b.x), u_input.b.xyw)) ^ u_input.a) << (_wgslsmith_mult_vec3_u32(~(vec3<u32>(arg_1.b.b.x, global2.b.a, 0u) >> (vec3<u32>(arg_1.b.b.x, arg_1.b.a, arg_1.b.a) % vec3<u32>(32u))), abs(u_input.a) << (min(vec3<u32>(84425u, 0u, 4294967295u), u_input.b.yxy) % vec3<u32>(32u))) % vec3<u32>(32u))) ^ min(u_input.a, select(u_input.a, vec3<u32>(4294967295u, 1u ^ u_input.b.x, u_input.a.x), func_4(u_input.b, func_2(), arg_1, select(vec4<bool>(false, global2.b.d.x, true, true), vec4<bool>(arg_1.b.d.x, false, false, global2.b.d.x), false)).b.d.x));
    let var_1 = (var_0.x <= ~arg_1.b.b.x) | !((arg_1.b.a & 8485u) >= ~(~0u));
    global2 = arg_1;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(113f, 607f, var_1)) - _wgslsmith_f_op_f32(223f * -858f)), _wgslsmith_f_op_f32(ceil(-1348f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-1000f * 1082f), _wgslsmith_f_op_f32(1441f * -1014f)))))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(783f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<f32>(1f, 1f))));
    return Struct_2(_wgslsmith_div_i32(arg_0, _wgslsmith_mult_i32(global2.b.c & -2147483647i, select(0i, -32283i, false)) << (_wgslsmith_dot_vec3_u32(~u_input.b.yzw, vec3<u32>(4294967295u, 4294967295u, var_0.x)) % 32u)), global1[_wgslsmith_index_u32(select(~(~1u), 4294967295u, !(true != !var_1)), 7u)], arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1353i, arg_0, max(-1i, arg_0), _wgslsmith_add_i32(0i, arg_0)) & -(~vec4<i32>(1i, -56166i, arg_1.b.c, arg_1.d)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(35339i, -32637i, global2.d, 0i) | vec4<i32>(global2.c.x, arg_1.d, 2147483647i, 10341i), abs(vec4<i32>(arg_0, 11398i, 1i, global2.a))), vec4<i32>(arg_0, -1i, arg_1.b.c, _wgslsmith_div_i32(arg_1.c.x, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    global2 = func_1(firstTrailingBit(-2147483647i), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(select(global2.b.c, 21421i, true), ~global2.d, -global2.a), _wgslsmith_mult_vec3_i32(vec3<i32>(-60616i, global2.a, global2.d), vec3<i32>(-2147483647i, global2.d, 0i)) | -vec3<i32>(global2.c.x, 1i, -63218i)), global1[_wgslsmith_index_u32(1u, 7u)], countOneBits(global2.c), firstLeadingBit(-1i)));
    global2 = func_1(global2.c.x, func_1(global2.d, Struct_2(i32(-1i) * -global2.d, Struct_1(global2.b.a, select(vec2<u32>(0u, global2.b.b.x), global2.b.b, vec2<bool>(global2.b.d.x, true)), _wgslsmith_mod_i32(global2.c.x, global2.b.c), select(vec3<bool>(global2.b.d.x, global2.b.d.x, global2.b.d.x), global2.b.d, vec3<bool>(true, false, global2.b.d.x))), global2.c, func_1(i32(-1i) * -12739i, func_4(u_input.b, global2.a, Struct_2(0i, Struct_1(4294967295u, global2.b.b, 2147483647i, global2.b.d), global2.c, global2.a), vec4<bool>(true, global2.b.d.x, true, global2.b.d.x))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(global2.c.x, firstTrailingBit(global2.b.c), ~countOneBits(1i)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), -533f);
}

