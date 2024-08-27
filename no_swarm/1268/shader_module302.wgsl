struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1203f;

var<private> global1: i32 = 44852i;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(-45741i, 20311i), 873f, -1390f, Struct_1(vec4<u32>(58724u, 4294967295u, 4294967295u, 1u), vec2<bool>(true, true), vec3<i32>(-569i, 1i, 20386i), vec2<f32>(-1613f, -294f)), vec4<i32>(1i, -1i, -22210i, -1i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global2 = Struct_2(arg_2.e.zy, 505f, -1099f, Struct_1(arg_2.d.a, select(arg_2.d.b, !global2.d.b, select(select(arg_1.b, vec2<bool>(arg_1.b.x, false), global2.d.b.x), vec2<bool>(true, true), arg_2.d.b)), select(vec3<i32>(arg_2.d.c.x, ~global2.d.c.x, ~arg_1.c.x), arg_1.c, select(select(vec3<bool>(true, arg_2.d.b.x, false), vec3<bool>(false, true, false), arg_1.b.x), !vec3<bool>(true, true, global2.d.b.x), any(vec4<bool>(true, false, arg_1.b.x, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global2.d.d)))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(20397i, 1i), _wgslsmith_mult_vec2_i32(arg_1.c.xz, vec2<i32>(41492i, 6150i))), 3064i, 11907i, firstLeadingBit(firstLeadingBit(global2.a.x))));
    global0 = arg_0;
    global0 = arg_1.d.x;
    global0 = arg_2.b;
    var var_0 = arg_2;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f * -1716f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1953f))))));
}

fn func_2(arg_0: f32) -> vec3<f32> {
    global1 = abs(global2.d.c.x);
    global1 = 42845i;
    global1 = _wgslsmith_sub_i32(global2.e.x, countOneBits(global2.a.x));
    global1 = ~(-72333i);
    global2 = Struct_2(~global2.a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-461f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1337f), global2.d, Struct_2(global2.a, arg_0, arg_0, global2.d, vec4<i32>(-22102i, global2.a.x, global2.d.c.x, global2.d.c.x))))))), _wgslsmith_f_op_f32(-arg_0), Struct_1(~global2.d.a, vec2<bool>(all(!vec3<bool>(global2.d.b.x, false, false)), all(!vec3<bool>(global2.d.b.x, false, global2.d.b.x))), vec3<i32>(~(~global2.d.c.x), _wgslsmith_dot_vec2_i32(~global2.a, -global2.e.xw), global2.d.c.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1563f, 414f), vec2<f32>(-1088f, -214f)), global2.d.d))))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-26607i, -47716i), global2.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(34316i, ~global2.a.x, global2.e.x & global2.d.c.x), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(global2.a.x, global2.e.x), _wgslsmith_div_i32(global2.a.x, -43670i))), countOneBits(19154i), min(4500i, _wgslsmith_div_i32(0i, global2.e.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(-global2.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -848f, global2.b), vec3<f32>(211f, -412f, global2.b)))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> f32 {
    global2 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(global2.e.x, global2.a.x), firstLeadingBit(_wgslsmith_div_i32(-arg_0, global2.d.c.x))), global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global2.c)))) * -914f)), Struct_1(select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(19958u, 4294967295u, u_input.b, global2.d.a.x), global2.d.a, global2.d.a), vec4<u32>(u_input.b, ~u_input.b, ~4294967295u, u_input.a.x), vec4<bool>(global2.d.b.x, select(false, global2.d.b.x, global2.d.b.x), global2.d.b.x, all(vec4<bool>(global2.d.b.x, false, global2.d.b.x, false)))), select(vec2<bool>(global2.d.b.x, select(false, true, global2.d.b.x)), global2.d.b, vec2<bool>(true, global2.d.b.x)), abs(global2.e.yyz), vec2<f32>(_wgslsmith_f_op_f32(func_3(global2.d.d.x, Struct_1(u_input.a, global2.d.b, global2.d.c, vec2<f32>(867f, arg_1.x)), Struct_2(global2.a, arg_1.x, arg_1.x, global2.d, vec4<i32>(global2.e.x, arg_0, 66017i, arg_0)))), -649f)), vec4<i32>(0i, _wgslsmith_div_i32(global2.e.x, ~abs(0i)), -11179i, arg_0));
    var var_0 = global2.d;
    let var_1 = Struct_2(vec2<i32>(countOneBits(2506i), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_0.c.x, arg_0), var_0.c.x, firstLeadingBit(-1i), ~var_0.c.x), global2.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(371f + arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x * var_0.d.x), var_0.d.x)))), global2.d, -global2.e);
    let var_2 = vec4<bool>(reverseBits(abs(firstTrailingBit(81805u))) == (var_1.d.a.x >> (~1u % 32u)), select(_wgslsmith_clamp_u32(global2.d.a.x, 4294967295u, global2.d.a.x) != global2.d.a.x, false, var_1.d.b.x) & (arg_0 >= ~select(-2147483647i, global2.a.x, true)), var_1.d.b.x, true);
    var var_3 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(var_0.c), vec3<i32>(-1i) * -vec3<i32>(-arg_0, 1i, countOneBits(0i)), -vec3<i32>(-22910i, _wgslsmith_mult_i32(0i, global2.e.x), -4955i));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(214f, -1335f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-136f * _wgslsmith_div_f32(-176f, var_0.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.d.x) * -806f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_1() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.c)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(min(1i, ~global2.d.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(global2.b))))))));
    var var_0 = vec3<i32>(select(global2.a.x ^ global2.e.x, _wgslsmith_mult_i32(max(_wgslsmith_sub_i32(global2.e.x, global2.a.x), -12510i), ~1i), global2.d.b.x), select(_wgslsmith_div_i32(abs(global2.a.x) | 2147483647i, _wgslsmith_dot_vec4_i32(-global2.e, -global2.e)), global2.d.c.x, ~(~global2.d.a.x) >= global2.d.a.x), abs(global2.a.x));
    var var_1 = Struct_1(~(~u_input.a), !(!(!select(vec2<bool>(global2.d.b.x, true), vec2<bool>(false, true), vec2<bool>(global2.d.b.x, true)))), select(select(-_wgslsmith_mult_vec3_i32(global2.e.zxw, vec3<i32>(global2.a.x, var_0.x, -20459i)), min(countOneBits(global2.d.c), vec3<i32>(-5597i, -1i, global2.e.x)), false), global2.e.wzy, any(vec2<bool>(false, !global2.d.b.x))), global2.d.d);
    let var_2 = !(!global2.d.b.x);
    var var_3 = ~(~vec4<i32>(1i & ~var_1.c.x, ~firstTrailingBit(-15448i), _wgslsmith_clamp_i32(select(1i, -2147483647i, global2.d.b.x), global2.e.x, select(global2.a.x, var_0.x, var_2)), global2.a.x));
    return _wgslsmith_f_op_f32(func_4(i32(-1i) * -24812i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-566f, 479f, -2087f), vec3<f32>(global2.c, 112f, var_1.d.x)))) * vec3<f32>(_wgslsmith_div_f32(global2.b, 642f), global2.b, -2503f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d.x, var_1.d.x, global2.c)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, var_1.d.x, global2.b), vec3<f32>(-112f, global2.b, global2.d.d.x), vec3<bool>(global2.d.b.x, var_1.b.x, false))))))));
}

fn func_5(arg_0: f32, arg_1: u32) -> StorageBuffer {
    global0 = _wgslsmith_f_op_f32(-arg_0);
    var var_0 = Struct_2(global2.a, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -425f), 929f)), global2.d, global2.e);
    var var_1 = Struct_2(vec2<i32>(i32(-1i) * -1i, firstLeadingBit(var_0.a.x) >> (~abs(62614u) % 32u)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1010f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b + arg_0))), global2.b)), global2.d, -(var_0.e << (~(~vec4<u32>(43178u, var_0.d.a.x, 0u, 1u)) % vec4<u32>(32u))));
    let var_2 = var_1.d;
    global2 = Struct_2(abs(_wgslsmith_mult_vec2_i32(global2.d.c.zx, max(var_0.e.wx, var_0.a)) ^ (vec2<i32>(-22398i, -40044i) >> (abs(vec2<u32>(var_1.d.a.x, 4294967295u)) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1326f * arg_0), -394f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1620f) * _wgslsmith_f_op_f32(trunc(var_1.d.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), var_0.d, var_1.e);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 603f)), vec2<f32>(global2.d.d.x, -250f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.d) - vec2<f32>(-873f, 258f)) * vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, 827f)), _wgslsmith_f_op_f32(floor(-421f))))), vec4<u32>(40343u, ~13306u, 103u, ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-(global2.e.yy << (~(~global2.d.a.xw) % vec2<u32>(32u))), -367f, global2.c, Struct_1(abs(vec4<u32>(global2.d.a.x, global2.d.a.x, u_input.b, 61564u) & firstTrailingBit(global2.d.a)), vec2<bool>(false, global2.d.b.x), ~global2.e.zzz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(global2.d.d, global2.d.d, global2.d.b.x)))))), global2.e);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(148f - _wgslsmith_f_op_f32(f32(-1f) * -347f)), global2.d.d.x)), var_0.d.d.x, -540f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-682f * var_0.b) - global2.d.d.x)));
    let var_2 = global2.d;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + global2.d.d.x));
    let var_3 = _wgslsmith_f_op_f32(floor(var_1.x));
    var var_4 = i32(-1i) * -2147483647i;
    global2 = var_0;
    let var_5 = !select(!select(vec4<bool>(true, var_0.d.b.x, var_2.b.x, true), !vec4<bool>(var_0.d.b.x, false, false, var_0.d.b.x), false), vec4<bool>(global2.d.b.x == true, any(vec3<bool>(true, global2.d.b.x, global2.d.b.x)), false, 1i == var_2.c.x), !vec4<bool>(true, var_0.d.a.x == u_input.b, true, global2.d.b.x));
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), (~_wgslsmith_sub_u32(28113u, var_2.a.x) | ~1468u) >> (91440u % 32u));
}

