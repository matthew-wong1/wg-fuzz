struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: Struct_3;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1228f), vec4<bool>(global1.c.a.x, all(global1.b.zw), !global1.c.a.x, false), global1.c);
    var_0 = Struct_3(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))), global1.b, global1.c);
    global1 = Struct_3(354f, !select(!global1.b, !vec4<bool>(global1.c.a.x, global1.c.a.x, global1.b.x, false), !vec4<bool>(false, var_0.c.a.x, false, var_0.c.a.x)), Struct_1(vec2<bool>(global1.b.x, var_0.b.x), ~vec3<u32>(var_0.c.b.x, var_0.c.b.x ^ u_input.c.x, select(43721u, var_0.c.b.x, global1.c.a.x)), ~(select(32277i, arg_0.x, false) & firstLeadingBit(global1.c.c))));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_i32(arg_0 | arg_0, arg_0), global1.c.b.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(105f - _wgslsmith_f_op_f32(max(-2164f, -843f))));
    return max(~abs(_wgslsmith_div_i32(global1.c.c, var_0.c.c)), 2147483647i) >> (min(22419u, var_1.b) % 32u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    let var_0 = u_input.b;
    let var_1 = Struct_1(select(!select(!global1.b.yx, vec2<bool>(false, true), true), arg_2.a.a, vec2<bool>(true, true)), arg_1.c.b, firstLeadingBit(i32(-1i) * -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -374f);
    var var_3 = vec4<i32>(-global1.c.c & -_wgslsmith_sub_i32(var_1.c, -arg_2.a.c), _wgslsmith_dot_vec2_i32(reverseBits(~_wgslsmith_add_vec2_i32(vec2<i32>(global1.c.c, arg_2.a.c), vec2<i32>(global1.c.c, -41600i))), abs(_wgslsmith_mod_vec2_i32(-vec2<i32>(var_1.c, global1.c.c), _wgslsmith_div_vec2_i32(vec2<i32>(global1.c.c, 48615i), vec2<i32>(1i, arg_0.c.c))))), global1.c.c, min(_wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(11114i, 1i, 13426i, -2147483647i)), vec4<i32>(0i, -6245i, abs(-13206i), func_3(vec4<i32>(global1.c.c, -2147483647i, arg_2.a.c, global1.c.c)))), -(arg_1.c.c | ~arg_2.a.c)));
    var var_4 = Struct_4(countOneBits(arg_2.a.c), 100989u);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + arg_1.a), arg_0.a), -1545f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a, -817f), vec2<f32>(arg_0.a, -612f))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + -795f), _wgslsmith_f_op_f32(f32(-1f) * -997f))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1195f)), -731f), !global1.b, Struct_1(!(!vec2<bool>(global1.c.a.x, true)), min(~vec3<u32>(0u, u_input.b.x, global1.c.b.x), ~global1.c.b), func_3(_wgslsmith_clamp_vec4_i32(vec4<i32>(15552i, global1.c.c, global1.c.c, 32407i), vec4<i32>(-1i, -2147483647i, 41565i, global1.c.c), vec4<i32>(global1.c.c, -1i, global1.c.c, global1.c.c))))), Struct_3(_wgslsmith_f_op_f32(floor(global1.a)), vec4<bool>(global1.b.x, any(global1.c.a), true, (4294967295u < u_input.c.x) & false), Struct_1(global1.c.a, abs(u_input.b.xwz), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, global1.c.c)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.c.c, -36013i, 26390i), vec3<i32>(global1.c.c, 2147483647i, 1i))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 4294967295u), _wgslsmith_div_u32(0u, global1.c.b.x)), u_input.a.x & (global1.c.b.x >> (19133u % 32u)))), 12u)], _wgslsmith_add_u32(global1.c.b.x, ~(~1u))));
    var var_1 = -(_wgslsmith_clamp_i32(-global1.c.c, _wgslsmith_div_i32(global1.c.c, 2147483647i), abs(global1.c.c)) >> (global1.c.b.x % 32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f + -978f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, 385f, -126f) - vec3<f32>(246f, global1.a, 259f))))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, 1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2683f, _wgslsmith_f_op_f32(trunc(global1.a)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(487f, global1.a, var_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))), !select(global1.b.x, true, true))))));
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(global1.c.c, _wgslsmith_sub_i32(global1.c.c, -35503i ^ min(global1.c.c, global1.c.c))), min(~(-2147483647i), global1.c.c), reverseBits(~abs(-12472i)));
    let var_4 = select(!global1.c.a, vec2<bool>(false, !(true | all(vec4<bool>(false, true, false, global1.c.a.x)))), global1.c.a.x);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), !global1.b, global1.c);
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_3, arg_3: f32) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(-(~(-2147483647i)), func_3(~select(vec4<i32>(-1i, 0i, 19685i, 3326i), arg_0, !vec4<bool>(global1.b.x, true, false, global1.c.a.x))));
    let var_1 = Struct_5(func_2().c, !global1.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 652f, -1000f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a, arg_1, arg_1, 273f))))))), arg_2.c.c);
    var var_2 = firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.x, arg_0.x), arg_0.zy), -26820i, var_1.a.c, -277i | reverseBits(arg_2.c.c)), -(~(~vec4<i32>(37381i, -1i, global1.c.c, 9260i)))));
    var var_3 = _wgslsmith_mod_u32(firstLeadingBit(var_1.a.b.x), arg_2.c.b.x);
    let var_4 = Struct_5(Struct_1(!vec2<bool>(any(vec4<bool>(true, false, var_1.b.x, global1.c.a.x)), true), ~global1.c.b, var_1.a.c), vec4<bool>(!(!any(vec2<bool>(false, false))), all(func_2().b.zzz), arg_2.b.x, true), var_1.c, -var_1.d);
    return global1.b;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    let var_0 = global1.c.c;
    global1 = Struct_3(arg_0, !select(global1.b, func_5(vec4<i32>(global1.c.c, 2147483647i, -74954i, -24943i), _wgslsmith_f_op_f32(-global1.a), func_2(), 314f), !(!global1.b)), Struct_1(global1.b.xx, firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(1u, u_input.a.x), u_input.a.x, 4294967295u)), _wgslsmith_mod_i32(-2147483647i, -44049i)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(734f))), _wgslsmith_f_op_vec2_f32(func_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 2060f)), global1.b, Struct_1(arg_1, u_input.b.yyz, ~(-6486i))), func_2(), Struct_2(func_2().c, any(func_5(vec4<i32>(global1.c.c, -2147483647i, global1.c.c, global1.c.c), arg_0, Struct_3(global1.a, global1.b, global1.c), -631f)), ~vec3<u32>(44849u, u_input.c.x, global1.c.b.x)), ~0u)).x);
    var var_2 = global1.b.ywy;
    var_2 = vec3<bool>(!all(vec2<bool>(var_2.x, true)), true, true);
    return Struct_3(global1.a, global1.b, global1.c);
}

fn func_6(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = vec2<f32>(arg_1.x, -250f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-992f, _wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_f_op_f32(sign(global1.a))))) * vec4<f32>(960f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.x, arg_0.a)));
    var var_2 = func_2().c.b.x;
    var_2 = 1u;
    global1 = func_2();
    return Struct_5(arg_0.c, !(!(!select(vec4<bool>(arg_0.b.x, global1.c.a.x, global1.c.a.x, false), global1.b, false))), vec4<f32>(var_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f), _wgslsmith_f_op_vec2_f32(func_4(func_1(global1.a, global1.b.xz), func_1(var_1.x, global1.c.a), global0[_wgslsmith_index_u32(100491u, 12u)], ~global1.c.b.x)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -490f)), arg_0.a), (arg_0.c.c & global1.c.c) & abs(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_3.xx, vec2<i32>(1i, global1.c.c)), ~global1.c.c, countOneBits(arg_3.x))));
}

fn func_7(arg_0: f32, arg_1: i32, arg_2: Struct_5, arg_3: vec4<f32>) -> Struct_5 {
    let var_0 = func_6(func_1(577f, func_1(func_6(func_2(), vec2<f32>(279f, arg_2.c.x), vec3<u32>(arg_2.a.b.x, 1u, arg_2.a.b.x), vec3<i32>(-55373i, 10383i, 44684i)).c.x, global1.c.a).c.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f + arg_2.c.x)))), reverseBits(vec3<u32>(reverseBits(1u), arg_2.a.b.x, global1.c.b.x)), ~vec3<i32>(abs(select(-9499i, 35414i, false)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d, arg_2.d) << (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), vec2<i32>(7372i, -1i) | vec2<i32>(-2147483647i, arg_2.d)), -17174i)).a;
    var var_1 = u_input.c;
    var_1 = func_6(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_2().a))), arg_2.a.a), _wgslsmith_f_op_vec2_f32(sign(arg_2.c.zy)), ~(~arg_2.a.b), vec3<i32>(-29582i, ~(~(-arg_2.a.c)), reverseBits(global1.c.c) | abs(-2147483647i))).a.b.xy;
    global1 = Struct_3(func_2().a, !vec4<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(29615i, -2147483647i)) != firstTrailingBit(-13810i), _wgslsmith_f_op_f32(exp2(global1.a)) >= _wgslsmith_f_op_f32(-567f - -650f), any(global1.b.wzz)), global1.c);
    var var_2 = _wgslsmith_f_op_f32(select(arg_2.c.x, arg_2.c.x, !((abs(-1i) == global1.c.c) && false)));
    return Struct_5(arg_2.a, !vec4<bool>(all(vec3<bool>(var_0.a.x, global1.b.x, true)), true, select(false || global1.b.x, true, true), !func_1(global1.a, vec2<bool>(true, true)).c.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_div_f32(global1.a, 1000f), false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-799f, 1014f, arg_2.b.x)))), _wgslsmith_f_op_f32(-func_1(-764f, vec2<bool>(var_0.a.x, false)).a)))), min(25518i, arg_1));
}

fn func_8(arg_0: vec2<u32>, arg_1: Struct_5) -> Struct_2 {
    let var_0 = ~(~u_input.b.x);
    var var_1 = func_2().b.yzy;
    let var_2 = func_2().c;
    let var_3 = u_input.c.x;
    let var_4 = reverseBits(~vec3<u32>(_wgslsmith_add_u32(var_3, var_3), var_0, 34397u) & ~_wgslsmith_sub_vec3_u32(~var_2.b, vec3<u32>(arg_0.x, var_0, var_2.b.x)));
    return global0[_wgslsmith_index_u32(min(4294967295u, 88259u), 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(~firstLeadingBit(u_input.a.zz), func_7(_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(547f + global1.a))), -global1.c.c, func_6(func_1(_wgslsmith_f_op_f32(global1.a + global1.a), global1.c.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(360f, 271f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(402f, global1.a))), select(max(global1.c.b, global1.c.b), reverseBits(u_input.b.zyz), global1.a != global1.a), firstLeadingBit(min(vec3<i32>(global1.c.c, global1.c.c, -1i), vec3<i32>(global1.c.c, global1.c.c, global1.c.c)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, 629f, global1.a), vec4<f32>(-1482f, -913f, global1.a, global1.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1471f, global1.a, global1.a, 1000f))), !vec4<bool>(global1.c.a.x, global1.b.x, true, global1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1206f, global1.a, 246f))))));
    global1 = func_2();
    let var_1 = Struct_4(var_0.a.c, 4294967295u);
    var var_2 = vec3<bool>(false, true, !any(global1.b));
    var var_3 = func_6(func_2(), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1075f, global1.a) + vec2<f32>(876f, global1.a)) - vec2<f32>(global1.a, global1.a))))), ~u_input.a, ~max(firstLeadingBit(vec3<i32>(var_1.a, 0i, var_0.a.c)) << (vec3<u32>(var_1.b, global1.c.b.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 24255i, 2147483647i), vec3<i32>(-15469i, var_1.a, var_0.a.c)) << (global1.c.b % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, -2147483647i | var_3.d, _wgslsmith_div_i32(var_0.a.c, 2147483647i), abs(1i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(43421i, global1.c.c, var_3.a.c, global1.c.c), vec4<i32>(var_1.a, 28456i, 1i, var_3.d))), _wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-45856i, 1i, -24835i)) & ~vec3<i32>(var_1.a, -46169i, -29571i), _wgslsmith_sub_vec3_i32(~abs(vec3<i32>(-9509i, 1i, var_3.a.c)), firstLeadingBit(abs(vec3<i32>(var_1.a, 1i, -9215i))))));
}

