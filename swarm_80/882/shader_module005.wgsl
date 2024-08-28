struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(0u, vec4<i32>(2147483647i, -19719i, 4409i, 24050i)), 330f, vec3<bool>(false, false, false), Struct_2(Struct_1(2147483647i, 4294967295u), 75370u, vec4<f32>(643f, -1958f, -791f, -2538f), 1u), Struct_2(Struct_1(19334i, 1u), 0u, vec4<f32>(823f, -1541f, 1799f, -1380f), 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global0 = Struct_4(arg_1, arg_2.c.x, vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.c.x)) >= 1530f, global0.c.x, global0.c.x), global0.d, Struct_2(arg_2.a, select(arg_1.a, 104235u, global0.c.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c.x, global0.b, global0.d.c.x, _wgslsmith_f_op_f32(exp2(global0.b))))), u_input.a));
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(arg_0.a & (arg_0.a | arg_0.a), abs(60788u)) & (vec2<u32>(~4294967295u, abs(1u)) << (vec2<u32>(68571u, max(global0.e.d, arg_2.a.b)) % vec2<u32>(32u))), vec2<u32>(21293u, ~(~4294967295u)) | ~(~firstLeadingBit(vec2<u32>(global0.d.b, 0u))));
    let var_1 = global0.e.a;
    var var_2 = global0.a.b.zxw;
    var_0 = ~(~vec2<u32>(select(4294967295u, _wgslsmith_mod_u32(global0.d.d, 0u), global0.c.x), u_input.a));
    return !global0.c.x;
}

fn func_2() -> Struct_3 {
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(max(global0.d.c.x, _wgslsmith_f_op_f32(-global0.e.c.x))), !select(vec3<bool>(true, true, true), select(global0.c, global0.c, !vec3<bool>(global0.c.x, true, global0.c.x)), true), Struct_2(Struct_1(_wgslsmith_clamp_i32(global0.e.a.a, 26209i, global0.e.a.a) >> (41362u % 32u), u_input.d), ~u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.d.c.x, -2161f, -529f) - vec4<f32>(global0.e.c.x, global0.d.c.x, 199f, global0.b)) - _wgslsmith_div_vec4_f32(vec4<f32>(1038f, global0.e.c.x, global0.d.c.x, -1373f), global0.d.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-998f, 886f, 475f, global0.b))), 74479u), global0.d);
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -109f, global0.d.c.x) - global0.d.c.xzx) * _wgslsmith_f_op_vec3_f32(floor(global0.d.c.zxw)))) + vec3<f32>(_wgslsmith_f_op_f32(-891f + -1173f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, global0.e.c.x))), _wgslsmith_div_f32(global0.d.c.x, 1f)))));
    global0 = Struct_4(Struct_3(min(~1u, _wgslsmith_add_u32(5743u >> (global0.d.b % 32u), ~u_input.d)), select(-vec4<i32>(22720i, 4628i, 1i, u_input.c.x) & vec4<i32>(u_input.b, -50535i, -18553i, u_input.b), max(vec4<i32>(2147483647i, u_input.c.x, -2147483647i, u_input.b), abs(global0.a.b)), true)), _wgslsmith_f_op_f32(-global0.b), vec3<bool>(global0.c.x, any(vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x)) && (func_3(global0.a, global0.a, global0.d) | all(global0.c)), true), Struct_2(Struct_1(global0.e.a.a, 45921u), ~4294967295u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - global0.d.c.x) * _wgslsmith_f_op_f32(137f * global0.d.c.x)), var_0.x, _wgslsmith_f_op_f32(max(1361f, 385f)), global0.e.c.x), abs(11544u)), Struct_2(global0.e.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 33709u, u_input.a, u_input.a), vec4<u32>(4294967295u, 18846u, global0.e.a.b, 4294967295u)), vec4<u32>(37680u, global0.d.b, u_input.d, 32828u) << (vec4<u32>(u_input.a, 1u, global0.a.a, 0u) % vec4<u32>(32u))), reverseBits(min(vec4<u32>(1716u, global0.e.b, 69831u, 4294967295u), vec4<u32>(u_input.a, 8498u, u_input.a, 1u)))), _wgslsmith_f_op_vec4_f32(max(global0.d.c, global0.d.c)), 1u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(724f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.x, var_0.x, false)))))), _wgslsmith_f_op_f32(f32(-1f) * -1283f));
    let var_2 = 457f;
    return Struct_3(global0.d.d, max(~global0.a.b, reverseBits(-(global0.a.b | vec4<i32>(2147483647i, -12264i, -2147483647i, u_input.b)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_4 {
    let var_0 = ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, arg_1.d.a.a), -global0.a.b.yw)) != _wgslsmith_clamp_i32(arg_1.e.a.a, _wgslsmith_div_i32(~firstTrailingBit(0i), 1i), _wgslsmith_dot_vec4_i32(global0.a.b, abs(~global0.a.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1.d.c.x, arg_1.b), _wgslsmith_f_op_f32(-global0.d.c.x), -1038f) * global0.e.c.xzy)));
    global0 = Struct_4(arg_1.a, _wgslsmith_div_f32(361f, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1996f * 654f)))), select(!select(!global0.c, vec3<bool>(var_0, false, true), true), vec3<bool>(all(vec3<bool>(true, var_0, false)) && any(arg_1.c.zy), all(vec2<bool>(arg_1.c.x, global0.c.x)), !(!global0.c.x)), !arg_1.c), global0.d, global0.e);
    var var_2 = 1u;
    var_1 = arg_1.d.c.ywz;
    return arg_1;
}

fn func_1(arg_0: f32) -> u32 {
    global0 = func_4(global0.a.b, Struct_4(func_2(), _wgslsmith_f_op_f32(ceil(-144f)), !select(!global0.c, !vec3<bool>(true, true, global0.c.x), !global0.c), global0.d, Struct_2(Struct_1(u_input.c.x ^ u_input.b, ~19004u), 7110u, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, 1438f, global0.d.c.x), _wgslsmith_f_op_vec4_f32(select(global0.e.c, global0.d.c, vec4<bool>(global0.c.x, global0.c.x, true, true)))), 1u)));
    global0 = func_4(~vec4<i32>(global0.a.b.x >> (0u % 32u), _wgslsmith_mult_i32(85425i, u_input.b & -1i), ~u_input.c.x, u_input.b), func_4(firstTrailingBit(global0.a.b) | ~global0.a.b, Struct_4(func_2(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.e.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1408f))), global0.c, Struct_2(global0.d.a, u_input.a, _wgslsmith_f_op_vec4_f32(floor(global0.e.c)), ~0u), global0.d)));
    global0 = func_4(select(max(vec4<i32>(global0.a.b.x, ~global0.d.a.a, _wgslsmith_div_i32(1i, global0.e.a.a), global0.e.a.a), firstLeadingBit(_wgslsmith_mult_vec4_i32(global0.a.b, vec4<i32>(0i, global0.a.b.x, global0.d.a.a, u_input.b)))), ~(~(~global0.a.b)), !any(select(vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(true, false, global0.c.x, false), vec4<bool>(true, global0.c.x, global0.c.x, false)))), Struct_4(Struct_3(66272u, vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, -1i), -u_input.c.x, u_input.c.x, _wgslsmith_dot_vec2_i32(global0.a.b.yx, global0.a.b.yz))), _wgslsmith_f_op_f32(-1790f + -598f), select(func_4(~vec4<i32>(u_input.c.x, -50394i, -40350i, global0.a.b.x), Struct_4(global0.a, global0.e.c.x, vec3<bool>(false, global0.c.x, true), Struct_2(Struct_1(u_input.c.x, u_input.d), global0.a.a, vec4<f32>(global0.e.c.x, arg_0, arg_0, 1033f), global0.e.b), global0.e)).c, global0.c, true), func_4(~firstTrailingBit(global0.a.b), Struct_4(global0.a, 571f, global0.c, func_4(global0.a.b, Struct_4(Struct_3(global0.e.a.b, vec4<i32>(0i, 1i, u_input.c.x, u_input.b)), -499f, global0.c, Struct_2(global0.e.a, 1u, vec4<f32>(1411f, 787f, 321f, -2016f), u_input.a), global0.d)).d, func_4(vec4<i32>(global0.a.b.x, global0.a.b.x, -28643i, -41145i), Struct_4(Struct_3(66443u, global0.a.b), -748f, vec3<bool>(false, true, global0.c.x), Struct_2(global0.d.a, 38497u, global0.d.c, u_input.a), global0.d)).e)).d, global0.e));
    var var_0 = ~global0.e.a.b;
    var var_1 = max(firstTrailingBit(func_4(global0.a.b, func_4(vec4<i32>(21040i, global0.e.a.a, u_input.c.x, u_input.b), Struct_4(Struct_3(1u, vec4<i32>(global0.d.a.a, global0.d.a.a, u_input.b, u_input.b)), -645f, global0.c, Struct_2(global0.e.a, 1u, vec4<f32>(-1000f, 799f, -969f, -143f), u_input.d), global0.e))).a.b.xzw >> (~select(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(global0.a.a, global0.e.a.b, global0.d.d), true) % vec3<u32>(32u))), vec3<i32>(global0.a.b.x, func_2().b.x, 1i) << (_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 33817u, u_input.a)), firstLeadingBit(max(vec3<u32>(global0.a.a, 0u, u_input.a), vec3<u32>(69332u, global0.e.a.b, u_input.a)))) % vec3<u32>(32u)));
    return global0.d.a.b;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_4 {
    var var_0 = vec3<i32>(-firstLeadingBit(global0.a.b.x), reverseBits(_wgslsmith_div_i32(~(~6070i), -6410i)), arg_0.a);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(734f, arg_1, -286f, arg_1) * global0.d.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, global0.e.c.x, global0.e.c.x, 664f)))))) * vec4<f32>(-1289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, global0.d.c.x)) * _wgslsmith_div_f32(-631f, -1000f)) - -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 + -361f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), -984f));
    var var_2 = !vec2<bool>(any(!vec4<bool>(global0.c.x, global0.c.x, false, true)), 69267u >= abs(min(arg_0.b, u_input.d)));
    let var_3 = ~min(vec2<u32>((1u | global0.a.a) | _wgslsmith_mult_u32(24105u, 34555u), _wgslsmith_clamp_u32(29744u & u_input.a, global0.e.d & 15863u, ~6893u)), select(firstTrailingBit(vec2<u32>(global0.d.a.b, arg_0.b)), select(vec2<u32>(global0.a.a, u_input.a), vec2<u32>(1u, 41262u), false), all(vec4<bool>(true, false, global0.c.x, true))) | vec2<u32>(48148u, u_input.a >> (4991u % 32u)));
    var var_4 = ~max(~(~vec3<u32>(0u, 19184u, u_input.d)), firstLeadingBit(~(vec3<u32>(0u, global0.d.b, u_input.d) & vec3<u32>(15725u, arg_0.b, 4294967295u))));
    return func_4(global0.a.b, Struct_4(global0.a, 265f, func_4(_wgslsmith_div_vec4_i32(-global0.a.b, global0.a.b), Struct_4(global0.a, global0.e.c.x, select(global0.c, vec3<bool>(var_2.x, true, global0.c.x), global0.c), global0.d, func_4(global0.a.b, Struct_4(Struct_3(0u, global0.a.b), 408f, vec3<bool>(global0.c.x, true, false), Struct_2(arg_0, 4294967295u, var_1, u_input.a), Struct_2(global0.e.a, u_input.a, vec4<f32>(var_1.x, -1000f, -402f, 902f), u_input.a))).e)).c, Struct_2(Struct_1(-1i, 13102u), var_3.x >> (var_4.x % 32u), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_1.x, -1000f, arg_1) + vec4<f32>(1741f, 432f, var_1.x, var_1.x)), var_1, select(vec4<bool>(false, var_2.x, true, global0.c.x), vec4<bool>(global0.c.x, var_2.x, true, false), false))), _wgslsmith_div_u32(0u, func_1(arg_1))), global0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~vec2<i32>(~global0.a.b.x, 11017i)) ^ u_input.c.xy;
    global0 = func_5(Struct_1(global0.d.a.a << ((_wgslsmith_sub_u32(1u, u_input.d) | func_1(1450f)) % 32u), 3423u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.d.c.x))));
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(0u, firstLeadingBit(u_input.a), _wgslsmith_div_u32(~min(u_input.a, global0.e.a.b), 92470u), u_input.d), max(~(~firstLeadingBit(vec4<u32>(0u, global0.a.a, u_input.a, 30502u))), vec4<u32>(_wgslsmith_div_u32(4294967295u, max(u_input.a, 50346u)), u_input.a & 39765u, global0.a.a, ~(~0u))));
    global0 = func_5(global0.d.a, global0.d.c.x);
    let var_2 = select(func_4(global0.a.b, Struct_4(func_4(max(global0.a.b, vec4<i32>(3371i, 9512i, var_0.x, u_input.b)), Struct_4(Struct_3(u_input.a, vec4<i32>(33630i, -19085i, global0.e.a.a, global0.d.a.a)), global0.b, vec3<bool>(true, global0.c.x, global0.c.x), Struct_2(Struct_1(2147483647i, 9851u), global0.d.d, global0.d.c, 0u), global0.d)).a, _wgslsmith_div_f32(-1147f, _wgslsmith_f_op_f32(f32(-1f) * -288f)), !(!vec3<bool>(global0.c.x, false, global0.c.x)), Struct_2(Struct_1(-35318i, 0u), 20132u, _wgslsmith_f_op_vec4_f32(-global0.e.c), 0u), func_5(Struct_1(-37514i, var_1.x), _wgslsmith_f_op_f32(-1000f + global0.b)).d)).c.zy, !global0.c.xz, global0.c.x);
    var var_3 = ~countOneBits(firstTrailingBit(max(global0.a.b.x, min(u_input.b, var_0.x))));
    var var_4 = u_input.b;
    let var_5 = func_4(-(~abs(~vec4<i32>(var_0.x, u_input.c.x, var_0.x, var_0.x))), Struct_4(Struct_3(var_1.x, ~(-global0.a.b)), -767f, !vec3<bool>(var_2.x, func_3(global0.a, Struct_3(0u, global0.a.b), global0.e), true), func_5(func_4(global0.a.b, Struct_4(global0.a, global0.e.c.x, vec3<bool>(true, var_2.x, true), global0.d, Struct_2(Struct_1(u_input.b, 4294967295u), 0u, vec4<f32>(1646f, global0.d.c.x, 225f, 668f), var_1.x))).d.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.c.x) * global0.d.c.x)).e, global0.d));
    var var_6 = _wgslsmith_dot_vec3_i32(~(~vec3<i32>(u_input.c.x, -9817i, var_0.x)) ^ vec3<i32>(-2147483647i, -_wgslsmith_add_i32(-32453i, global0.a.b.x), -1i), firstLeadingBit(firstLeadingBit(global0.a.b.xxw)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.wxx, var_5.d.d);
}

