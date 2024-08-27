struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> u32 {
    global1 = arg_0.c;
    global0 = !global1.b;
    global0 = !arg_0.c.b & ((i32(-1i) * -_wgslsmith_add_i32(u_input.a, u_input.a)) >= (firstLeadingBit(u_input.a) | u_input.a));
    var var_0 = (~_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.c, 46453u, arg_0.c.a.x, 1u), vec4<u32>(global1.a.x, 67608u, 1u, 39217u)), vec4<u32>(global1.a.x, 1u, 39303u, global1.a.x) & vec4<u32>(4294967295u, global1.c, 13061u, 27074u)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, 15301u, global1.c, 6501u), abs(vec4<u32>(4294967295u, 1u, global1.c, 4294967295u)))) >> (~vec4<u32>(16673u, 32672u, countOneBits(arg_0.c.c), 0u) % vec4<u32>(32u));
    global1 = Struct_1(~_wgslsmith_sub_vec3_u32(global1.a | var_0.zyz, ~vec3<u32>(0u, var_0.x, arg_0.a)), true, 83834u, _wgslsmith_f_op_vec4_f32(abs(global1.d)));
    return reverseBits(4294967295u);
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(global1.a, select(false, global1.b, (-251f < _wgslsmith_f_op_f32(floor(global1.d.x))) & global1.b), _wgslsmith_add_u32(func_3(Struct_5(74u, vec2<f32>(-353f, -1269f), Struct_1(global1.a, false, global1.c, global1.d)), !global1.b) | global1.a.x, ~min(reverseBits(1u), ~global1.c)), global1.d);
    global1 = Struct_1(global1.a, abs(0u) != (_wgslsmith_mod_u32(global1.a.x, global1.c) << (64634u % 32u)), ~global1.a.x ^ global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(646f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d.x, global1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), global1.d.x)));
    let var_0 = Struct_4(vec4<bool>(false == (_wgslsmith_f_op_f32(min(-103f, global1.d.x)) >= _wgslsmith_f_op_f32(-1153f + global1.d.x)), global1.b, global1.b, all(!select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, global1.b), vec2<bool>(true, global1.b)))), ~global1.a, global1.d.x, Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(global1.a, vec3<u32>(global1.c, 0u, global1.c)), global1.a ^ global1.a) & ~global1.a, true, global1.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.d.x + global1.d.x), _wgslsmith_f_op_f32(sign(-341f)), _wgslsmith_f_op_f32(max(-396f, 372f)), global1.d.x) + vec4<f32>(-1312f, _wgslsmith_f_op_f32(sign(global1.d.x)), _wgslsmith_f_op_f32(sign(global1.d.x)), _wgslsmith_f_op_f32(-394f + 1739f)))), u_input.a);
    let var_1 = Struct_2(var_0.d, var_0.a.xwx);
    var var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-731f, -866f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a.d.x, _wgslsmith_f_op_f32(var_0.d.d.x + 807f)))), _wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f - var_0.c))), 152f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(959f, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d.x))), var_0.c)));
    return Struct_1(max(vec3<u32>(~1u, 24465u, var_1.a.c), global1.a), false, 23533u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-1465f, _wgslsmith_f_op_f32(-336f * global1.d.x)), _wgslsmith_f_op_f32(global1.d.x + 1484f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-777f, var_1.a.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(-global1.d.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.a.d.x)), var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 287f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) - _wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    global0 = true;
    global1 = func_2();
    let var_0 = Struct_5(global1.c, vec2<f32>(global1.d.x, 2850f), Struct_1(min(~(~vec3<u32>(15011u, arg_1.b.x, global1.a.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.a.x, 1u), ~arg_0.a.a)), global1.b, _wgslsmith_clamp_u32(reverseBits(arg_0.a.c) >> (18141u % 32u), arg_0.a.c >> (0u % 32u), 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + 154f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -408f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.d.x, arg_1.d.d.x)))));
    global1 = func_2();
    var var_1 = var_0;
    return func_2();
}

fn func_1() -> Struct_5 {
    global1 = func_4(Struct_2(func_2(), select(!vec3<bool>(true, global1.b, false), select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.b, true, true), true), select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(true, true, true), select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(true, global1.b, global1.b), vec3<bool>(global1.b, false, true))))), Struct_4(!(!vec4<bool>(global1.b, true, global1.b, global1.b)), vec3<u32>(global1.c, countOneBits(global1.c), ~_wgslsmith_div_u32(global1.a.x, 1u)), global1.d.x, func_2(), ~(~_wgslsmith_mult_i32(u_input.a, -8453i))));
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<u32>(global1.c, 1u, global1.a.x) & firstLeadingBit(global1.a), !(u_input.a >= 2147483647i), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(35580u, global1.c), global1.a.xz), vec2<u32>(global1.c, global1.a.x)), vec4<f32>(global1.d.x, _wgslsmith_f_op_f32(global1.d.x * global1.d.x), -971f, _wgslsmith_f_op_f32(-global1.d.x))), vec3<bool>(false, global1.b, all(select(vec2<bool>(true, global1.b), vec2<bool>(global1.b, global1.b), global1.b)))), Struct_2(Struct_1(abs(global1.a), (global1.d.x == -1000f) && false, ~_wgslsmith_mod_u32(0u, global1.c), vec4<f32>(_wgslsmith_div_f32(global1.d.x, global1.d.x), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-global1.d.x), 385f)), select(vec3<bool>(global1.b, true, func_2().b), vec3<bool>(global1.b || true, !global1.b, global1.b), !(global1.b || true))), global1.d.x, global1.d.x < _wgslsmith_f_op_f32(select(global1.d.x, 328f, true)));
    var_0 = Struct_3(Struct_2(var_0.b.a, vec3<bool>(false, var_0.d, var_0.b.b.x)), Struct_2(var_0.b.a, vec3<bool>(var_0.b.a.b, true, false)), func_2().d.x, all(select(!select(vec4<bool>(global1.b, true, false, var_0.a.a.b), vec4<bool>(true, var_0.a.b.x, true, true), vec4<bool>(global1.b, global1.b, true, global1.b)), !select(vec4<bool>(global1.b, var_0.d, var_0.d, true), vec4<bool>(true, global1.b, var_0.d, var_0.a.b.x), false), select(vec4<bool>(global1.b, false, global1.b, global1.b), select(vec4<bool>(true, global1.b, global1.b, false), vec4<bool>(false, true, global1.b, false), vec4<bool>(global1.b, false, true, false)), select(vec4<bool>(false, false, true, global1.b), vec4<bool>(global1.b, var_0.a.a.b, var_0.a.b.x, false), true)))));
    var var_1 = !vec3<bool>(global1.a.x >= func_4(Struct_2(Struct_1(global1.a, var_0.b.a.b, 4294967295u, var_0.b.a.d), var_0.b.b), Struct_4(vec4<bool>(var_0.d, false, global1.b, var_0.b.a.b), global1.a, global1.d.x, var_0.b.a, -2147483647i)).c, global1.b, any(select(select(var_0.b.b.zz, vec2<bool>(global1.b, false), global1.b), vec2<bool>(global1.b, global1.b), true)));
    let var_2 = abs(func_4(var_0.a, Struct_4(vec4<bool>(!var_0.d, false | var_1.x, var_1.x, global1.a.x >= 29965u), vec3<u32>(~64821u, max(1u, var_0.a.a.c), ~global1.a.x), 1000f, func_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 22687u, 1u), false, 0u, global1.d), vec3<bool>(false, var_1.x, false)), Struct_4(vec4<bool>(false, false, true, true), vec3<u32>(0u, 86774u, 1u), global1.d.x, var_0.a.a, -21386i)), -2147483647i & u_input.a)).a);
    return Struct_5(var_2.x, _wgslsmith_f_op_vec2_f32(var_0.b.a.d.xw - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global1.d.ww))), var_0.a.a.d.zy))), var_0.b.a);
}

fn func_5(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = -(~(~_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 0i)), abs(vec2<i32>(-2147483647i, 14338i)))));
    let var_1 = Struct_2(arg_0.c, select(select(!vec3<bool>(arg_0.c.b, true, false), vec3<bool>(true, any(vec2<bool>(global1.b, arg_0.c.b)), func_2().b), all(select(vec3<bool>(true, true, global1.b), vec3<bool>(arg_0.c.b, arg_0.c.b, global1.b), true))), vec3<bool>(true, true, true), true));
    global0 = false;
    var var_2 = Struct_3(var_1, Struct_2(func_2(), select(vec3<bool>(any(var_1.b.xz), var_1.a.b | global1.b, arg_0.c.b), vec3<bool>(func_2().b, false, global1.b), var_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-951f * global1.d.x))), arg_0.c.d.x), arg_0.c.b);
    var var_3 = Struct_4(select(select(vec4<bool>(all(var_1.b), false, false, true), select(vec4<bool>(var_2.b.b.x, false, var_1.a.b, global1.b), vec4<bool>(global1.b, arg_0.c.b, false, true), true), arg_0.c.b), vec4<bool>(var_1.b.x, false, global1.b, func_2().b), global1.b), var_2.b.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(var_1.a, vec3<bool>(var_2.d, false, global1.b)), Struct_4(vec4<bool>(var_2.b.a.b, global1.b, true, arg_0.c.b), vec3<u32>(global1.a.x, 4294967295u, var_1.a.a.x), var_2.a.a.d.x, var_1.a, var_0.x)).d.x * var_1.a.d.x) + -1594f)), func_4(var_2.b, Struct_4(select(vec4<bool>(var_1.a.b, global1.b, arg_0.c.b, var_1.b.x), !vec4<bool>(global1.b, var_1.b.x, var_1.b.x, true), select(vec4<bool>(global1.b, var_1.b.x, var_2.b.b.x, var_1.a.b), vec4<bool>(global1.b, true, true, arg_0.c.b), vec4<bool>(true, true, false, var_1.a.b))), select(global1.a, var_1.a.a, false), _wgslsmith_f_op_f32(select(245f, _wgslsmith_f_op_f32(abs(arg_0.c.d.x)), true)), arg_0.c, u_input.a)), 2147483647i);
    return vec3<bool>(all(var_3.a.wx), !(!global1.b), true);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = vec2<i32>(abs(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, ~arg_1.x), max(-14255i, ~arg_1.x), _wgslsmith_sub_i32(1i, ~(-1i)))), -_wgslsmith_add_i32(reverseBits(_wgslsmith_dot_vec3_i32(arg_1.xzx, vec3<i32>(u_input.a, arg_1.x, -1i))), 2292i));
    var var_1 = global1.a.x;
    var var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(global1.c, global1.a.x, _wgslsmith_mod_u32(~global1.a.x, 44694u), global1.c), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, ~_wgslsmith_dot_vec2_u32(global1.a.xy, global1.a.zx), global1.c), (firstTrailingBit(vec4<u32>(1u, global1.c, global1.a.x, 3015u)) >> (vec4<u32>(4294967295u, 4294967295u, 18833u, 38721u) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.x, 0u, global1.c, 12078u), vec4<u32>(75662u, 0u, global1.c, 22985u) << (vec4<u32>(global1.a.x, 34287u, 138147u, 4294967295u) % vec4<u32>(32u)))));
    var var_3 = true & (global1.b & true);
    let var_4 = global1.d.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(func_6(func_5(func_1()), -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, -12601i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), select(!(!vec3<bool>(global1.b, true, false)), vec3<bool>(!global1.b, true, all(vec3<bool>(global1.b, global1.b, false))), false)), Struct_2(func_4(Struct_2(Struct_1(global1.a, global1.b, global1.c, global1.d), select(vec3<bool>(true, global1.b, false), vec3<bool>(false, global1.b, global1.b), global1.b)), Struct_4(select(vec4<bool>(true, global1.b, global1.b, global1.b), vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(global1.b, global1.b, global1.b, false)), reverseBits(global1.a), func_1().b.x, Struct_1(global1.a, global1.b, global1.c, vec4<f32>(-138f, -720f, 796f, global1.d.x)), -2147483647i)), !(!select(vec3<bool>(global1.b, global1.b, false), vec3<bool>(global1.b, global1.b, false), vec3<bool>(true, true, true)))), -755f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, 1000f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - 1037f) - -1189f))));
    var var_1 = 561f;
    var var_2 = false;
    var var_3 = !(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(1f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-383f * 1000f) - global1.d.x))));
    var var_4 = Struct_4(!select(select(vec4<bool>(false, true, var_0.d, var_0.d), select(vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(var_0.b.a.b, false, var_0.b.b.x, false), true), vec4<bool>(global1.b, false, global1.b, true)), select(select(vec4<bool>(true, true, global1.b, global1.b), vec4<bool>(global1.b, global1.b, false, false), vec4<bool>(var_0.d, global1.b, global1.b, var_0.a.a.b)), vec4<bool>(global1.b, global1.b, true, global1.b), true), var_0.a.b.x), vec3<u32>(~1u << (abs(~global1.a.x) % 32u), ~34950u, global1.c), global1.d.x, Struct_1(abs(vec3<u32>(1u, var_0.a.a.c, 8430u) | ~vec3<u32>(var_0.b.a.c, 37479u, 63890u)), !var_0.a.b.x, max(~func_3(Struct_5(31539u, global1.d.ww, var_0.a.a), var_0.b.b.x), global1.c), global1.d), 36534i);
    var var_5 = var_0.b;
    var_5 = Struct_2(Struct_1(~(vec3<u32>(global1.c, global1.c, 31552u) << (countOneBits(var_4.b) % vec3<u32>(32u))), func_2().b, var_4.d.a.x, var_4.d.d), vec3<bool>(var_4.a.x, func_4(Struct_2(var_4.d, select(var_0.b.b, vec3<bool>(true, var_4.a.x, var_0.a.a.b), false)), Struct_4(select(vec4<bool>(var_4.a.x, global1.b, global1.b, false), vec4<bool>(var_0.d, true, var_4.a.x, true), vec4<bool>(false, var_0.a.a.b, var_5.b.x, var_0.d)), ~vec3<u32>(var_5.a.c, 56949u, var_4.d.a.x), _wgslsmith_f_op_f32(var_5.a.d.x - 743f), Struct_1(vec3<u32>(4294967295u, 1901u, 86684u), global1.b, global1.c, vec4<f32>(1227f, -622f, var_4.c, -1204f)), u_input.a)).b, (func_1().c.b || true) | func_5(Struct_5(var_0.b.a.c, vec2<f32>(var_0.c, global1.d.x), Struct_1(vec3<u32>(14116u, var_5.a.c, 0u), var_0.a.b.x, global1.c, var_4.d.d))).x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~(~vec3<i32>(-4590i, u_input.a, -1i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1049f + -957f)))), vec2<i32>(u_input.a, -firstTrailingBit(i32(-1i) * -14386i)), global1.a.x, max(firstLeadingBit(var_4.e ^ -u_input.a), 677i));
}

