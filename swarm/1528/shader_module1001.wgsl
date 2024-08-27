struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec2<f32>;

var<private> global2: array<vec2<u32>, 7>;

var<private> global3: Struct_2 = Struct_2(1721f, vec3<f32>(581f, 654f, 329f), 16186u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global3.b.x));
    var var_1 = Struct_1(all(vec3<bool>(!any(vec4<bool>(true, false, false, true)), -406f == global0.x, -u_input.c == 1i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(817f)), _wgslsmith_f_op_f32(exp2(global1.x)))))), true);
    var var_2 = vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(-var_1.b.x), var_0);
    let var_3 = ~vec3<i32>(i32(-1i) * -2147483647i, u_input.d.x, ~_wgslsmith_clamp_i32(0i, 1i, 2147483647i));
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(150f)) * -1313f)), var_1.b.x), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(854f)), _wgslsmith_f_op_f32(1801f - -659f))))));
    return select(!(!(!(!vec3<bool>(true, var_1.c, true)))), !(!vec3<bool>(any(vec3<bool>(var_1.c, false, true)), true, var_1.a & true)), all(!select(!vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(true, false, var_1.a), false)));
}

fn func_2() -> vec2<f32> {
    var var_0 = abs(_wgslsmith_dot_vec2_i32(countOneBits((vec2<i32>(u_input.e, u_input.d.x) | u_input.d) & vec2<i32>(u_input.e, -1i)), u_input.d));
    var var_1 = !any(func_3()) && true;
    var var_2 = vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -262f) - global0.x)))), -1428f, _wgslsmith_f_op_f32(-886f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-892f + _wgslsmith_f_op_f32(f32(-1f) * -1237f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-247f - -330f))))), global3.b.x);
    let var_3 = Struct_2(_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 306f) * var_2.x)), global3.b, ~62805u);
    global3 = Struct_2(-474f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2103f, -257f, -1640f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.x, 1863f, var_2.x) * vec3<f32>(global0.x, -1428f, 224f)))), global3.c << (~_wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 63146u), vec2<u32>(var_3.c, 1u), true), u_input.a.xy) % 32u));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x - global0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * -248f)), -1028f), _wgslsmith_f_op_vec2_f32(global3.b.yx + vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-544f, 132f)), _wgslsmith_div_f32(var_2.x, -761f))), _wgslsmith_f_op_f32(global3.a * 205f))), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_4 {
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, _wgslsmith_f_op_f32(floor(-299f)), _wgslsmith_div_f32(-736f, global0.x)))), ~(~_wgslsmith_mult_u32(u_input.a.x, 3963u)));
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(-449f, arg_1)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x - 275f)))), _wgslsmith_f_op_vec3_f32(global3.b + global0.wxz), ~global3.c);
    var var_0 = Struct_3(~(vec2<i32>(-1i) * -vec2<i32>(u_input.c, -1i)) << (vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.b.zxx, vec3<u32>(u_input.a.x, global3.c, u_input.a.x))), _wgslsmith_clamp_u32(99334u, u_input.a.x, global3.c)) % vec2<u32>(32u)), Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zz - global3.b.yy), _wgslsmith_f_op_vec2_f32(func_2()))), !any(vec3<bool>(true, true, true))), !vec4<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false)), all(vec3<bool>(false, true, false)) | true, true, !any(vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(-global0.zwx));
    let var_1 = ~u_input.b.ywx;
    global3 = Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.b.x), 1f, _wgslsmith_f_op_f32(max(global1.x, 128f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, var_0.b.b.x, global1.x))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(-var_0.b.b.x)))))), ~0u);
    return Struct_4(firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), min(vec3<i32>(1i, arg_0.x, u_input.d.x), vec3<i32>(var_0.a.x, arg_0.x, -2147483647i)))), u_input.d, Struct_1(true || (!var_0.c.x | true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zy - _wgslsmith_div_vec2_f32(vec2<f32>(427f, global0.x), vec2<f32>(206f, var_0.b.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.yy)))), true));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(730f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.b.x)))) + arg_2.a);
    let var_1 = true || arg_0.c.c;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -390f), _wgslsmith_f_op_f32(min(-420f, arg_2.a)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2.b.x)) - _wgslsmith_f_op_f32(ceil(1161f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(-arg_0.c.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3.b.x - global1.x), 1048f)), global1.x, arg_0.c.c))), abs(12718u << (reverseBits(~4294967295u) % 32u)));
    var var_3 = Struct_3(-_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(func_1(vec4<i32>(u_input.d.x, arg_0.a.x, arg_0.b.x, -1i), -450f).a.xy, u_input.d & vec2<i32>(arg_0.a.x, u_input.e)), func_1(vec4<i32>(arg_0.b.x, u_input.d.x, 0i, 17668i), arg_2.b.x).b), arg_0.c, !select(!vec4<bool>(true, false, var_1, var_1), vec4<bool>(arg_0.c.c, arg_0.a.x <= u_input.c, any(vec4<bool>(arg_0.c.c, arg_0.c.a, true, false)), any(vec2<bool>(true, var_1))), select(select(vec4<bool>(true, arg_0.c.a, arg_0.c.a, true), vec4<bool>(var_1, arg_0.c.c, arg_0.c.a, arg_0.c.c), arg_0.c.c), !vec4<bool>(arg_0.c.a, arg_0.c.c, true, false), arg_0.c.a)), global3.b);
    var var_4 = var_1;
    return func_1(vec4<i32>(arg_0.b.x, _wgslsmith_div_i32(~0i, 1i), _wgslsmith_mult_i32(i32(-1i) * -arg_0.a.x, func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(-18998i, var_3.a.x, -1i, u_input.c), vec4<i32>(2147483647i, 0i, 83814i, arg_0.b.x)), _wgslsmith_f_op_f32(global3.a * var_3.d.x)).b.x), var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.b.x - _wgslsmith_f_op_f32(-arg_0.c.b.x)) * arg_1) - arg_0.c.b.x)).c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = vec3<i32>(-13419i, countOneBits(firstLeadingBit(u_input.c)), -1i);
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(vec4<i32>(-2147483647i, -2147483647i, u_input.e, var_0.x), -346f).c.b.x))), _wgslsmith_f_op_vec3_f32(exp2(arg_3.zzw)), global3.c);
    let var_1 = u_input.a.yx;
    global3 = Struct_2(_wgslsmith_f_op_f32(-852f * 1583f), _wgslsmith_f_op_vec3_f32(ceil(global3.b)), abs(4294967295u));
    var var_2 = Struct_4(var_0, _wgslsmith_add_vec2_i32(u_input.d, abs(u_input.d)), Struct_1(true, _wgslsmith_f_op_vec2_f32(sign(global0.wz)), true));
    return Struct_4(vec3<i32>(~func_1(vec4<i32>(-1i, var_0.x, 41804i, -3555i), _wgslsmith_f_op_f32(step(arg_3.x, -727f))).a.x, max(var_2.b.x, var_2.b.x), -(1i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(52467i, var_0.x, -2147483647i, u_input.c), vec4<i32>(u_input.d.x, 7216i, 18570i, 41636i)))), select(vec2<i32>(_wgslsmith_sub_i32(var_0.x << (var_1.x % 32u), 1i), 27274i & u_input.d.x), reverseBits((vec2<i32>(var_2.b.x, var_2.a.x) ^ vec2<i32>(-31786i, -30186i)) >> (vec2<u32>(1u, 39211u) % vec2<u32>(32u))), !vec2<bool>(true, arg_0.c)), Struct_1(~func_1(vec4<i32>(25964i, var_2.a.x, var_0.x, 32124i), global1.x).a.x <= var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -684f)) - _wgslsmith_f_op_vec2_f32(func_2())), !arg_0.a));
}

fn func_6(arg_0: u32, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec3<f32>) -> bool {
    let var_0 = select(vec3<bool>(false, ~u_input.b.x > _wgslsmith_clamp_u32(4951u, arg_0, ~94069u), any(vec2<bool>(any(vec4<bool>(true, false, arg_1.c.a, true)), 910f > arg_1.c.b.x))), select(vec3<bool>(arg_1.c.a, arg_1.c.c || all(vec4<bool>(arg_1.c.a, arg_1.c.a, true, false)), !arg_1.c.a), select(func_3(), vec3<bool>(true, arg_1.c.a, !arg_1.c.a), select(!vec3<bool>(arg_1.c.a, arg_1.c.c, arg_1.c.a), !vec3<bool>(arg_1.c.c, true, arg_1.c.a), false)), false), vec3<bool>(all(vec2<bool>(true, 1357i < arg_1.b.x)), true, false));
    var var_1 = vec2<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(global3.c, ~global3.c), min(~36932u, _wgslsmith_sub_u32(59157u, 1u)))));
    var_1 = ~(vec2<u32>(4294967295u, ~1u) & ~u_input.a.zz);
    var var_2 = reverseBits(_wgslsmith_mult_i32(func_5(Struct_1(arg_1.c.c, arg_1.c.b, arg_1.c.a), func_1(vec4<i32>(0i, 0i, -52994i, -35943i), global0.x).c, arg_1.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(1162f, global3.b.x, -1000f, arg_3.x) - vec4<f32>(1760f, global1.x, global3.a, global0.x))).b.x >> (~1u % 32u), ~u_input.d.x));
    let var_3 = func_5(Struct_1(false, arg_3.zx, !(all(var_0.xy) & (1u <= var_1.x))), func_1(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(0i, arg_1.a.x, 5564i, arg_2.x)), arg_2), ~(-vec4<i32>(-2147483647i, u_input.c, -2147483647i, 0i))), arg_1.c.b.x).c, func_4(arg_1, global0.x, Struct_2(_wgslsmith_f_op_f32(-global3.b.x), arg_3, var_1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(round(-679f)), _wgslsmith_f_op_f32(f32(-1f) * -353f), -1625f)), vec4<f32>(arg_1.c.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.c.b.x), _wgslsmith_f_op_f32(exp2(global1.x)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, arg_1.c.b.x))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 7>();
    let var_0 = Struct_1(true, global0.yw, func_6(_wgslsmith_add_u32(18097u, u_input.a.x), func_5(Struct_1(true, global0.ww, any(vec2<bool>(false, true))), func_4(func_1(vec4<i32>(-50117i, 10563i, u_input.c, u_input.e), -1134f), global0.x, Struct_2(global0.x, vec3<f32>(global0.x, global3.b.x, global1.x), global3.c)), Struct_1(true, vec2<f32>(657f, -430f), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 767f, 422f, 892f)))), firstLeadingBit(max(-vec4<i32>(u_input.c, u_input.d.x, 21450i, 0i), vec4<i32>(u_input.e, -1i, u_input.c, u_input.e) | vec4<i32>(1i, u_input.c, 70980i, 2457i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(469f, global3.a, -1803f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global3.b)) - _wgslsmith_f_op_vec3_f32(select(global3.b, vec3<f32>(global3.b.x, global3.a, 1214f), vec3<bool>(false, false, true)))))));
    var var_1 = _wgslsmith_mod_u32(0u, u_input.b.x);
    global3 = Struct_2(_wgslsmith_f_op_f32(exp2(global3.a)), global0.zwy, global3.c);
    var var_2 = ~(_wgslsmith_sub_i32(-u_input.e, -1i) & (-abs(u_input.d.x) & -max(u_input.c, u_input.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1402f, global0.x, global3.b.x))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + -582f) * func_1(vec4<i32>(u_input.c, -34497i, -2147483647i, u_input.d.x), global0.x).c.b.x), 334f, -325f)), i32(-1i) * -23505i, reverseBits(vec4<u32>(41408u, ~u_input.a.x, ~(~0u), u_input.b.x)));
}

