struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    var var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(min(u_input.c, 7261u), min(4294967295u, 1u)), ~vec2<u32>(u_input.c, 46071u) >> (~vec2<u32>(25983u, 0u) % vec2<u32>(32u)), any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))) >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.d, u_input.d)), vec2<u32>(4294967295u & u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, u_input.d), vec3<u32>(u_input.d, 25823u, u_input.d))), firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(73049u, u_input.d), vec2<u32>(29767u, u_input.d))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_0)) + -114f), _wgslsmith_f_op_f32(round(1760f))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -152f), _wgslsmith_div_f32(483f, var_1.x))), _wgslsmith_f_op_f32(-var_1.x)))));
    return 0u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<bool>) -> vec3<u32> {
    global0 = array<Struct_2, 16>();
    let var_0 = Struct_2(794f, select(vec3<u32>(arg_1.b.c.x, _wgslsmith_mult_u32(arg_1.d.x, 2500u), 94590u), ~vec3<u32>(30631u, 0u, 16433u), !arg_1.c.x) >> (arg_0.wzy % vec3<u32>(32u)));
    let var_1 = Struct_5(select(_wgslsmith_div_vec3_u32(arg_0.xxx, ~vec3<u32>(45354u, 6208u, u_input.d)), firstLeadingBit(firstLeadingBit(var_0.b)) ^ _wgslsmith_clamp_vec3_u32(firstTrailingBit(arg_0.xyx), max(arg_1.d, arg_0.xzy), vec3<u32>(26825u, 1u, var_0.b.x)), all(!select(vec4<bool>(arg_3.x, true, true, arg_1.c.x), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), false))), var_0, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a)) - _wgslsmith_f_op_f32(399f - var_0.a)) < _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))));
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    return var_1.b.b;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_u32(arg_2.d.b, arg_2.d.b);
    var var_1 = 1u;
    var var_2 = _wgslsmith_f_op_f32(select(arg_2.d.a, arg_2.c, !any(vec3<bool>(arg_2.a.x, false, false)) && any(arg_2.b))) >= arg_2.c;
    let var_3 = false;
    var var_4 = Struct_5(func_4(vec4<u32>(func_3(_wgslsmith_div_f32(arg_2.c, arg_2.d.a)), ~min(4294967295u, var_0.x), min(var_0.x << (var_0.x % 32u), max(0u, 4294967295u)), u_input.d), Struct_3(-23079i | arg_1.x, Struct_1(var_3, !vec4<bool>(arg_2.b.x, false, false, var_3), ~vec2<u32>(9324u, 80741u)), arg_2.a.wzy, select(arg_2.d.b, ~vec3<u32>(1u, 0u, var_0.x), arg_2.a.zyw)), select(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.a.x & var_3), !arg_2.a.zyy, arg_2.a.yyy), arg_2.a), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), vec3<u32>(countOneBits(~13609u), 22615u, _wgslsmith_mult_u32(reverseBits(u_input.d), _wgslsmith_sub_u32(u_input.c, 1u)))), arg_2.a.x);
    return Struct_1(!var_3, select(arg_2.a, vec4<bool>(true, !var_3, !select(true, true, true), false), vec4<bool>(true, true, true, true)), ~arg_2.d.b.zz);
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<u32>(17937u, ~arg_0.c.x, u_input.c) >> (vec3<u32>(arg_0.c.x, (~u_input.c ^ _wgslsmith_mult_u32(u_input.c, u_input.c)) << (arg_0.c.x % 32u), (24760u & ~arg_0.c.x) ^ ~0u) % vec3<u32>(32u));
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -479f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-695f * 232f))), false)), 1f);
    var var_2 = vec3<bool>(false, arg_0.b.x, _wgslsmith_add_u32(~u_input.c, u_input.c & _wgslsmith_dot_vec2_u32(var_0.yx, var_0.zy)) < ((~u_input.c ^ ~u_input.c) >> (u_input.c % 32u)));
    return var_1.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(min(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(-70119i, arg_0.x))), 36210i), ~u_input.a.x), -17170i);
    let var_1 = arg_1.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -1i), vec3<i32>(arg_0.x, u_input.b.x, arg_0.x)), ~u_input.a, Struct_4(vec4<bool>(var_1, var_1, true, false), vec2<bool>(true, true), -1097f, global0[_wgslsmith_index_u32(u_input.d, 16u)]))))));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(u_input.b.x, vec3<i32>(-26345i, u_input.a.x, 2147483647i) & vec3<i32>(u_input.a.x, arg_0.x, -1i), Struct_4(vec4<bool>(var_1, var_1, false, true), vec2<bool>(var_1, var_1), 638f, global0[_wgslsmith_index_u32(32809u, 16u)]))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -305f)) - 817f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(894f, 563f, arg_1.x))))))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_0 = vec2<u32>(select(u_input.c, 1u, func_1(select(countOneBits(u_input.a), u_input.a | u_input.a, any(vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), u_input.c);
    let var_1 = func_2((~u_input.b.x | countOneBits(~u_input.b.x)) >> (4294967295u % 32u), _wgslsmith_add_vec3_i32(select(u_input.a, countOneBits(_wgslsmith_mod_vec3_i32(u_input.a, u_input.a)), false), countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, 1i), -vec3<i32>(-2147483647i, 46317i, -16500i)))), Struct_4(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, false, false, true)), !vec2<bool>(true, all(vec4<bool>(true, true, true, false))), -520f, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1212f), vec3<u32>(25962u, 17624u, ~1748u))));
    let var_2 = Struct_4(func_2(0i, min(u_input.a, -u_input.a), Struct_4(var_1.b, !(!vec2<bool>(var_1.b.x, var_1.b.x)), 845f, Struct_2(_wgslsmith_f_op_f32(-162f + -1129f), vec3<u32>(var_0.x, var_1.c.x, 26767u) ^ vec3<u32>(58066u, 6130u, var_1.c.x)))).b, var_1.b.yw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-958f, _wgslsmith_f_op_f32(step(927f, 358f))))))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, var_1.c.x, ~_wgslsmith_clamp_u32(4294967295u, 4294967295u, var_0.x)) | ~((0u >> (var_1.c.x % 32u)) >> (max(14917u, u_input.c) % 32u)), 16u)]);
    let var_3 = 27883u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1294f), _wgslsmith_f_op_f32(f32(-1f) * -1047f));
}

