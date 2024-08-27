struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(-22316i, -26420i, 20373i, i32(-2147483648), 2147483647i, -1i, -10161i, 0i, 8801i, -25244i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> f32 {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(arg_1.c, 10u)], firstLeadingBit(arg_0.b & max(20945u, ~arg_2.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(reverseBits(0u), arg_0.c >> (arg_2.x % 32u)), arg_0.b), ~vec2<u32>(0u, 4294967295u) ^ ~countOneBits(arg_2.xz)));
    var var_1 = (all(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))) && (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2.x, 24529u, 1u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b, arg_0.b, arg_2.x, arg_0.c), vec4<u32>(arg_2.x, 1u, arg_1.c, arg_0.c))) <= var_0.c)) & true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1f, -734f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(147f)) + _wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-236f, 375f)), _wgslsmith_f_op_f32(933f - 1000f)))))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3(arg_0, arg_0, ~vec3<u32>(12469u | _wgslsmith_div_u32(arg_0.c, arg_0.b), firstTrailingBit(arg_0.c) << (~arg_0.c % 32u), ~(~arg_0.b))));
    let var_1 = vec3<i32>(-1i) * -u_input.c.yyy;
    var var_2 = Struct_1(~countOneBits(-1i), min(_wgslsmith_mod_u32(4294967295u, min(arg_0.b, ~1u)), ~firstLeadingBit(_wgslsmith_clamp_u32(1u, arg_0.c, arg_0.c))), abs(firstLeadingBit(_wgslsmith_mult_u32(1u, abs(arg_0.b)))));
    global0 = array<i32, 10>();
    var var_3 = arg_0.c;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1647f))) + 766f))));
    global0 = array<i32, 10>();
    var var_1 = arg_0;
    return Struct_1(arg_1.x, 4294967295u, 4294967295u);
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = u_input.c.x;
    global0 = array<i32, 10>();
    let var_1 = Struct_1(_wgslsmith_mult_i32(-1i, var_0), 1373u, arg_1.x);
    var var_2 = reverseBits(~(~var_0)) > 2147483647i;
    let var_3 = func_4(func_2(var_1), vec3<i32>(_wgslsmith_add_i32(var_1.a, _wgslsmith_dot_vec4_i32(max(u_input.c, u_input.c), u_input.c)), global0[_wgslsmith_index_u32(~arg_1.x, 10u)], var_0), u_input.a.yy);
    return !(!select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 220f, -905f, -199f), vec4<f32>(-567f, -1800f, -251f, -597f))), vec4<f32>(_wgslsmith_f_op_f32(round(-2120f)), _wgslsmith_f_op_f32(floor(916f)), _wgslsmith_f_op_f32(1000f - -1395f), _wgslsmith_f_op_f32(step(900f, 2573f))), !(!arg_0))))));
    var var_1 = _wgslsmith_div_u32(arg_1.c, 66723u);
    let var_2 = firstTrailingBit(abs(~vec2<u32>(arg_1.c, arg_1.c) | vec2<u32>(1u, 1u))) << (select(~vec2<u32>(1u, 1u) << ((~vec2<u32>(arg_1.c, 1u) | reverseBits(vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(64950u, arg_1.b), reverseBits(vec2<u32>(arg_1.b, 77264u))), ~(~vec2<u32>(4294967295u, arg_1.b)), vec2<u32>(arg_1.c | arg_1.c, _wgslsmith_mult_u32(arg_1.b, arg_1.c))), vec2<bool>(true, true)) % vec2<u32>(32u));
    var var_3 = func_2(arg_1);
    var var_4 = reverseBits(u_input.c);
    return func_4(Struct_1(1i, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_3.c, var_3.c, arg_1.b) >> (vec3<u32>(arg_1.c, arg_1.b, arg_1.b) % vec3<u32>(32u)), ~vec3<u32>(var_2.x, var_2.x, 1u)), vec3<u32>(var_2.x, 30095u, _wgslsmith_mod_u32(5834u, var_2.x))), 59731u), var_4.xyz, vec2<i32>(arg_1.a, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1247f), firstLeadingBit(~abs(vec2<u32>(4294967295u, 30753u)))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~53273u, _wgslsmith_mod_u32(abs(5491u), select(1u, 23152u, true))), 10u)], 5286u, ~(~(~38084u))), u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-global0[_wgslsmith_index_u32(12619u, 10u)], 1i), ~u_input.a.yx)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-740f)), _wgslsmith_f_op_f32(-1464f - -1739f))) - _wgslsmith_f_op_f32(f32(-1f) * -461f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1328f)), _wgslsmith_f_op_f32(trunc(1557f))))), -1223f));
    var var_2 = Struct_1(firstTrailingBit(global0[_wgslsmith_index_u32(var_0.b, 10u)]), var_0.c, 25965u);
    var var_3 = select(~vec4<u32>(~(~47933u), ~reverseBits(0u), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.b, var_2.c), firstLeadingBit(var_0.b)), func_4(Struct_1(6723i, var_0.b, var_0.c), firstLeadingBit(vec3<i32>(-1506i, u_input.b, var_2.a)), u_input.a.xz).b), ~vec4<u32>(var_0.c, var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 32933u, var_0.c, var_0.b), vec4<u32>(var_0.c, var_2.b, var_0.c, 67858u)), 102606u >> (var_0.c % 32u)) << (~vec4<u32>(var_0.b, var_2.b, _wgslsmith_mult_u32(var_2.b, 0u), firstTrailingBit(var_2.b)) % vec4<u32>(32u)), func_1(_wgslsmith_f_op_f32(646f + 722f), ~vec2<u32>(_wgslsmith_add_u32(var_2.c, var_0.c), var_0.b)));
    var var_4 = func_1(_wgslsmith_f_op_f32(-var_1), vec2<u32>(var_3.x, 4294967295u >> ((_wgslsmith_dot_vec3_u32(var_3.xyz, vec3<u32>(var_3.x, 18954u, 39490u)) ^ _wgslsmith_dot_vec2_u32(var_3.xy, vec2<u32>(57172u, 27078u))) % 32u))).x;
    var var_5 = _wgslsmith_clamp_vec4_i32(-countOneBits(u_input.c), u_input.c, vec4<i32>(var_2.a, -31441i, u_input.a.x, select(-19034i, u_input.c.x, var_0.c < 89890u)) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(28929u, var_0.c, var_2.b, 4294967295u)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(var_2.c, var_3.x, 0u, var_2.c), vec4<u32>(1053u, 0u, 21888u, 1u)), ~vec4<u32>(55680u, 1u, 4294967295u, 5988u) ^ abs(vec4<u32>(0u, var_0.b, 42954u, var_3.x))) % vec4<u32>(32u)));
    var_2 = func_5(!vec4<bool>(select(false, true, true) | true, _wgslsmith_f_op_f32(var_1 - var_1) <= _wgslsmith_f_op_f32(floor(-795f)), true, func_1(_wgslsmith_f_op_f32(var_1 - 2606f), vec2<u32>(0u, var_0.c)).x), Struct_1(-2147483647i, reverseBits(19422u), var_2.b), _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, func_5(vec4<bool>(true, false, false, true), var_0, var_5.x, 37286i).a)), global0[_wgslsmith_index_u32(2768u, 10u)] & 56596i), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a), _wgslsmith_sub_vec3_i32(var_5.yzy, ~vec3<i32>(9058i, var_2.a, 9985i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(var_5.wwz, -u_input.c.xyy) ^ vec3<i32>(global0[_wgslsmith_index_u32(~65605u, 10u)], global0[_wgslsmith_index_u32(var_0.b, 10u)], -1i));
}

