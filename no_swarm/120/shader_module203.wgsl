struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 9>;

var<private> global3: vec4<u32> = vec4<u32>(22482u, 4294967295u, 22176u, 4294967295u);

var<private> global4: u32 = 1u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = arg_0.d.xx;
    let var_0 = Struct_3(_wgslsmith_add_i32(~12668i, arg_0.c.x), global1.x, Struct_1(12490i, !select(arg_0.b, arg_0.b, !vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x)), arg_0.c >> (min(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 0u), vec2<u32>(4294967295u, 87326u)), ~u_input.a.wz) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-2094f + -173f), arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f - arg_0.d.x))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global3.x, arg_0.e, global0.x), vec4<u32>(86481u, 1u, global0.x, 0u)))));
    let var_1 = !select(select(vec3<bool>(var_0.c.b.x & var_0.c.b.x, var_0.c.b.x, global1.x != arg_0.d.x), arg_0.b.xzz, (arg_0.d.x >= -343f) | any(var_0.c.b)), !select(arg_0.b.zzy, vec3<bool>(var_0.c.b.x, var_0.c.b.x, var_0.c.b.x), true), select(arg_0.b.wyy, vec3<bool>(true & arg_0.b.x, true, true), var_0.c.b.xxx));
    let var_2 = Struct_3(max(~firstLeadingBit(_wgslsmith_div_i32(var_0.c.c.x, 2147483647i)), firstTrailingBit(_wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(var_0.a, var_0.c.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1601f - -300f) + -1000f), true))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(max(vec2<u32>(var_0.c.e, u_input.a.x), vec2<u32>(42873u, 0u)), u_input.a.ww) ^ min(firstLeadingBit(global3.xz), global3.zz), vec2<u32>(0u, firstTrailingBit(var_0.c.e)) << ((vec2<u32>(0u, arg_0.e) ^ u_input.a.xz) % vec2<u32>(32u))), 9u)]);
    var var_3 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(var_2.c.d.x - -231f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.c.d.x, 227f)) + _wgslsmith_f_op_f32(f32(-1f) * -224f)) + -723f));
    return true;
}

fn func_2() -> f32 {
    let var_0 = func_3(global2[_wgslsmith_index_u32(~(~1u) ^ firstTrailingBit(4294967295u), 9u)]);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1532f, global1.x, -439f, global1.x) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1777f, 274f, -742f, global1.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-371f, global1.x, -928f, 945f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1393f, global1.x)), vec4<bool>(var_0, var_0, true, var_0))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(784f, 1539f, 538f, global1.x))))), vec3<i32>(reverseBits(2147483647i), 1i, select(_wgslsmith_div_i32(2147483647i, -1i), 0i, false)) ^ abs(_wgslsmith_div_vec3_i32(-vec3<i32>(27785i, 13585i, -49245i), abs(vec3<i32>(-26920i, -2147483647i, -52175i)))));
    global0 = global3.wzy;
    let var_2 = 94690u;
    let var_3 = _wgslsmith_f_op_f32(sign(1440f));
    return _wgslsmith_f_op_f32(134f * _wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f))));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, arg_0) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-571f, arg_0) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-194f, global1.x)))))))));
    var var_0 = false;
    let var_1 = -vec2<i32>(-_wgslsmith_mult_i32(1i, ~2147483647i), i32(-1i) * -2328i);
    global3 = _wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, u_input.a.x, select(global3.x, u_input.a.x << (1u % 32u), false), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 1u, global3.x), vec3<u32>(31311u, 1u, 4294967295u)))), ~u_input.a) | ~_wgslsmith_add_vec4_u32(~(~u_input.a), u_input.a);
    let var_2 = global2[_wgslsmith_index_u32(~42444u, 9u)];
    return Struct_3(~1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(376f, arg_0) * global1.x))), Struct_1(var_1.x, select(var_2.b, vec4<bool>(!var_2.b.x, true, var_2.b.x, func_3(global2[_wgslsmith_index_u32(global0.x, 9u)])), var_2.b.x), max(firstLeadingBit(var_2.c ^ vec2<i32>(var_2.c.x, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(10630i, var_1.x) ^ vec2<i32>(var_2.c.x, var_2.c.x), abs(var_1), ~vec2<i32>(-2147483647i, -27162i))), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0)), -1024f, -2316f), 88431u & select(var_2.e >> (global3.x % 32u), var_2.e, global3.x >= 1u)));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_4(arg_2.a, arg_2.b);
    global0 = vec3<u32>(global3.x, ~0u, 29247u);
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.c.d.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2.a.x)))))), arg_2.b & vec3<i32>(abs(arg_2.b.x | var_0.b.x), _wgslsmith_add_i32(abs(-1i), arg_2.b.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.c.x, arg_2.b.x, var_0.b.x), arg_2.b), -28276i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), 218f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_2.a.x, -1065f)), 578f)))))));
    var var_2 = vec3<u32>(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-151f + -391f) - 2231f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-2091f, var_0.a.x, 266f), vec3<f32>(1807f, var_0.a.x, arg_0.b)))))).c.e, ~func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(-arg_2.a.zyz)).c.e >> (~global0.x % 32u), _wgslsmith_mult_u32(~(~abs(arg_0.c.e)), global3.x | arg_0.c.e));
    return func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 1917f), vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))))), var_1.x));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    global2 = array<Struct_1, 9>();
    global3 = min(u_input.a, u_input.a);
    global3 = _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(~(~u_input.a), max(vec4<u32>(arg_1.c.e, 52026u, 4294967295u, global3.x) & vec4<u32>(32565u, 0u, arg_1.c.e, u_input.a.x), abs(u_input.a))), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a.yyz, vec3<u32>(firstLeadingBit(global3.x), arg_1.c.e, global3.x)), 75683u, ~(global3.x ^ abs(global0.x)), 1u));
    var var_0 = ((vec2<u32>(1u, arg_1.c.e) << (~reverseBits(vec2<u32>(0u, arg_1.c.e)) % vec2<u32>(32u))) | _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 57588u), u_input.a.xw), vec2<u32>(0u, global0.x)), select(u_input.a.yy, ~vec2<u32>(88946u, 0u), select(vec2<bool>(arg_1.c.b.x, false), arg_2, false)))) ^ _wgslsmith_mod_vec2_u32(~select(countOneBits(global0.yx), global0.zy, true || arg_2.x), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(7938u, global0.x)), global3.wx));
    let var_1 = arg_1.c.e;
    return func_5(func_4(285f, arg_1.c.d), ~u_input.a.x, Struct_4(arg_0, _wgslsmith_add_vec3_i32(-firstTrailingBit(vec3<i32>(arg_1.a, 2147483647i, -7770i)), vec3<i32>(min(arg_1.c.a, arg_1.a), arg_1.a & arg_1.c.a, -2147483647i << (global0.x % 32u))))).c;
}

fn func_1() -> f32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-264f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -954f))));
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 1885f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1872f, -1238f, global1.x) - vec4<f32>(285f, global1.x, -286f, global1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, 675f, global1.x, global1.x)))), true)), func_5(func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1125f, global1.x, -1000f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-123f, global1.x, -1000f)))))), 4294967295u, Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -534f, global1.x) - vec4<f32>(628f, global1.x, 969f, -704f))), abs(~vec3<i32>(27347i, -6398i, -2147483647i)))), vec2<bool>(false, any(!func_4(1207f, vec3<f32>(-1429f, 394f, -101f)).c.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(338f)))));
}

fn func_7(arg_0: f32, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2212f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.x, -1361f), _wgslsmith_f_op_f32(select(global1.x, 1000f, true)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1211f)));
    var var_0 = Struct_3(i32(-1i) * -10424i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(_wgslsmith_f_op_f32(func_1()), -1i, vec4<bool>(true, true, true, true)))), Struct_1(~(i32(-1i) * -2147483647i), vec4<bool>(!func_3(global2[_wgslsmith_index_u32(1u, 9u)]), all(vec2<bool>(true, true)), true, true), firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-31092i, 0i), vec2<i32>(25703i, -2147483647i)), ~vec2<i32>(24969i, 8548i), vec2<i32>(18059i, 32757i))), vec3<f32>(global1.x, global1.x, -804f), max(_wgslsmith_mult_u32(min(global0.x, 0u), global3.x & 1u), _wgslsmith_mod_u32(68384u, 36660u) << (global0.x % 32u))));
    let var_1 = vec4<bool>(true, var_0.c.b.x, false, true & (func_3(Struct_1(var_0.c.a, vec4<bool>(false, false, var_0.c.b.x, var_0.c.b.x), var_0.c.c, var_0.c.d, global0.x)) & var_0.c.b.x));
    var var_2 = global3.ww << (vec2<u32>(1u, _wgslsmith_clamp_u32(6708u, ~min(global3.x, global3.x), (var_0.c.e << (33689u % 32u)) | _wgslsmith_div_u32(global3.x, 74826u))) % vec2<u32>(32u));
    global2 = array<Struct_1, 9>();
    let var_3 = var_0.c.c.x;
    let var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-192f, 277f, -1323f, var_0.b)))))), vec4<f32>(1128f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 1000f)), _wgslsmith_f_op_f32(-var_0.b), -415f), u_input.a.x <= global3.x)), _wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(var_0.c.a, var_0.c.c.x), firstLeadingBit(_wgslsmith_mult_i32(27258i, var_0.c.c.x)), ~_wgslsmith_clamp_i32(2147483647i, -2147483647i, var_0.c.c.x)), ~select(-vec3<i32>(-1i, 2147483647i, 9847i), -vec3<i32>(22376i, 2147483647i, var_0.c.a), var_1.x)));
    var var_5 = !var_0.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.yz | u_input.a.yy, vec3<i32>(-9653i >> (abs(~global3.x) % 32u), _wgslsmith_div_i32(var_0.a, _wgslsmith_div_i32(firstLeadingBit(var_4.b.x), ~var_0.c.a)), _wgslsmith_sub_i32(countOneBits(min(5547i, 1i)), var_0.a)), ~_wgslsmith_clamp_u32(var_0.c.e ^ global0.x, ~select(u_input.a.x, var_0.c.e, var_1.x), 0u << (_wgslsmith_div_u32(15181u, var_2.x) % 32u)), ~((var_0.c.e ^ func_4(170f, vec3<f32>(var_0.b, -828f, global1.x)).c.e) | ~var_0.c.e));
}

