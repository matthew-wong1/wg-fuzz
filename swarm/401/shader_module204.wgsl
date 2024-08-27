struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-689f, vec4<bool>(true, false, true, false), vec3<i32>(-57782i, 2147483647i, -38854i), 2147483647i);

var<private> global1: vec4<u32> = vec4<u32>(0u, 1u, 46642u, 21738u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<i32> {
    global0 = arg_1;
    var var_0 = select(!vec2<bool>(!arg_2.b.x && arg_1.b.x, (arg_1.b.x || arg_0) & arg_1.b.x), select(select(arg_2.b.wx, arg_1.b.zw, global0.b.x), vec2<bool>(true, any(vec2<bool>(false, true))), all(vec2<bool>(any(arg_1.b.yxw), true))), arg_0);
    let var_1 = Struct_1(1910f, !vec4<bool>(any(vec2<bool>(true, true)), arg_0, !(arg_2.a != global0.a), arg_0), select(global0.c, -(-vec3<i32>(1i, u_input.b.x, -27023i) ^ arg_2.c), !global0.b.xyy), ~(-2147483647i));
    var var_2 = -1402f;
    var_2 = var_1.a;
    return -_wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -var_1.c.zx, global0.c.yy);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(min(2166f, global0.a)), global0.b, vec3<i32>(global0.d & u_input.b.x, _wgslsmith_dot_vec2_i32(func_3(global0.b.x & global0.b.x, Struct_1(-229f, global0.b, vec3<i32>(u_input.d, 25940i, 30859i), global0.c.x), Struct_1(arg_0.x, vec4<bool>(false, true, global0.b.x, global0.b.x), global0.c, u_input.b.x), _wgslsmith_div_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, global0.a), vec4<f32>(global0.a, global0.a, 331f, arg_0.x))), global0.c.zz), _wgslsmith_div_i32(-(global0.c.x & global0.d), 51122i)), ~1916i << (~min(4294967295u ^ u_input.a.x, global1.x) % 32u));
    global1 = ~vec4<u32>(~(~1u), ~global1.x, u_input.a.x, _wgslsmith_add_u32(~global1.x, global1.x)) << (max(_wgslsmith_sub_vec4_u32(~vec4<u32>(7723u, 6792u, 19260u, global1.x) >> ((vec4<u32>(u_input.e, 97804u, 14513u, global1.x) >> (vec4<u32>(51342u, u_input.e, 21588u, global1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(u_input.e, global1.x, u_input.e, 1u))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, ~4294967295u, reverseBits(global1.x), u_input.a.x), vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 17494u), global1.x, _wgslsmith_mult_u32(u_input.e, 102370u), ~4294967295u))) % vec4<u32>(32u));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(-731f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(959f - _wgslsmith_f_op_f32(f32(-1f) * -184f)))))), global0.b, select(u_input.b.xwy, min(u_input.b.xxw, u_input.b.yxz), select(!global0.b.wxx, select(select(global0.b.yyz, vec3<bool>(false, false, global0.b.x), global0.b.x), !global0.b.wzy, vec3<bool>(false, global0.b.x, global0.b.x)), any(select(vec2<bool>(true, true), global0.b.xw, vec2<bool>(global0.b.x, global0.b.x))))), 1i);
    let var_1 = select(vec2<i32>(func_3(true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -181f), global0.b, u_input.b.zwx, 45974i), Struct_1(_wgslsmith_f_op_f32(-1494f + 2528f), select(var_0.b, vec4<bool>(global0.b.x, true, var_0.b.x, true), false), u_input.b.wxw, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1146f, -484f, 1425f, -2865f) - vec4<f32>(892f, 1160f, 1000f, global0.a)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, arg_0.x, -554f, arg_0.x)))).x, abs(_wgslsmith_sub_i32(i32(-1i) * -20797i, u_input.d >> (global1.x % 32u)))), vec2<i32>(12082i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.c.x, u_input.c.x), 2147483647i), countOneBits(~u_input.c))), global0.b.zw);
    let var_2 = 36366i << (global1.x % 32u);
    return var_0;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(-1023f));
    global1 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), select(~u_input.a.xy, global1.ww, vec2<bool>(false, false))), global1.x, global1.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1670u, ~global1.x, 4294967295u >> (u_input.e % 32u), ~global1.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.e, 49175u), vec4<u32>(u_input.a.x, global1.x, u_input.e, global1.x))));
    let var_1 = vec2<f32>(1004f, -1000f);
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(abs(-1537f))), select(func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, global0.a) * vec2<f32>(-459f, -288f))))).b, global0.b, global0.b.x), -_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-58i, arg_0.c.x), arg_0.d, 1i), -vec3<i32>(u_input.c.x, global0.c.x, -14247i) | ~vec3<i32>(-61666i, -1i, u_input.c.x)), -min(_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(u_input.d, -1i)), max(-2147483647i, global0.c.x)));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2730f), -1117f), arg_0.a)));
    return _wgslsmith_f_op_f32(-global0.a);
}

fn func_5(arg_0: f32, arg_1: f32) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2203f), !vec4<bool>(!(!global0.b.x), false, func_2(vec2<f32>(global0.a, arg_1)).b.x, func_2(vec2<f32>(-666f, global0.a)).b.x), global0.c ^ firstTrailingBit(~u_input.b.xyw), _wgslsmith_mod_i32(-u_input.b.x, ~reverseBits(reverseBits(-37069i))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-483f, arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a + global0.a) + _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - global0.a) * global0.a)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -1000f, -225f, arg_1) - vec4<f32>(global0.a, arg_1, -1031f, 354f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 292f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_1, arg_0)))))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -992f), -639f, !global0.b.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-331f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-595f, arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-853f, 236f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(select(547f, var_0.x, global0.b.x))) - vec4<f32>(_wgslsmith_f_op_f32(sign(809f)), _wgslsmith_f_op_f32(-global0.a), 1000f, _wgslsmith_f_op_f32(select(var_0.x, arg_1, true)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(var_0.x - arg_1), _wgslsmith_f_op_f32(func_4(Struct_1(global0.a, vec4<bool>(global0.b.x, global0.b.x, global0.b.x, true), u_input.b.wyz, global0.d))), 311f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-477f, arg_0, 709f, global0.a)) * vec4<f32>(var_0.x, global0.a, 731f, 1390f)), vec4<f32>(-813f, _wgslsmith_f_op_f32(arg_1 - 422f), _wgslsmith_f_op_f32(arg_1 + var_0.x), -760f))) - vec4<f32>(-626f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(339f, global0.a, true)) * _wgslsmith_f_op_f32(min(arg_0, 197f))), 1f, 1988f))));
    var var_1 = func_2(_wgslsmith_f_op_vec2_f32(exp2(var_0.zy))).b;
    let var_2 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -570f))))));
    return Struct_1(_wgslsmith_f_op_f32(abs(var_2.a)), vec4<bool>(!all(func_2(var_0.zx).b), var_2.b.x, _wgslsmith_add_i32(abs(2147483647i), _wgslsmith_sub_i32(global0.c.x, global0.c.x)) < max(var_2.d, 1i), false), vec3<i32>(~2147483647i, abs(-8081i ^ -var_2.c.x), global0.c.x), 2147483647i);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1527f - _wgslsmith_f_op_f32(func_4(func_2(vec2<f32>(-1294f, global0.a))))))), -2139f);
    let var_1 = var_0.d;
    var_0 = func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a)))))));
    let var_2 = vec3<bool>(select(func_5(_wgslsmith_f_op_f32(floor(-677f)), _wgslsmith_f_op_f32(sign(1148f))).b.x, var_0.b.x, all(vec4<bool>(var_0.b.x, global0.b.x, var_0.b.x, false))) | func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(min(190f, 1486f))).b.x, true, var_0.b.x);
    global0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_5(var_0.a, var_0.a).a))))), vec4<bool>(var_2.x, !(true | !global0.b.x), var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 0i), _wgslsmith_add_vec3_i32(u_input.b.yyw, vec3<i32>(arg_0, 52096i, global0.c.x))) >= -1i), select(vec3<i32>(var_0.c.x, _wgslsmith_mod_i32(var_0.d, _wgslsmith_mult_i32(9456i, 8884i)), min(global0.d, 1i)), _wgslsmith_clamp_vec3_i32(var_0.c, vec3<i32>(-23068i, countOneBits(-1i), global0.c.x), select(_wgslsmith_mod_vec3_i32(u_input.b.xzx, var_0.c), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, arg_0, -1i), u_input.b.xyy), !vec3<bool>(true, var_0.b.x, global0.b.x))), select(vec3<bool>(true, true, global0.b.x), !func_2(vec2<f32>(global0.a, var_0.a)).b.wyx, global0.b.zww)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-333f)) * 1151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(290f)) * var_0.a))).c.x);
    return Struct_1(_wgslsmith_f_op_f32(func_4(func_5(-692f, 875f))), !func_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.a, var_0.a))), -319f).b, global0.c, abs(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(global0.c.yz, vec2<i32>(-6220i, -32216i))), ~firstTrailingBit(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global0.b.xy);
    global0 = func_1(u_input.c.x);
    var var_1 = global0.b.zxz;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global0.a)))), !func_1(-global0.d).b, ~(vec3<i32>(-1i) * -max(vec3<i32>(global0.d, u_input.b.x, 0i), vec3<i32>(-1i, -1i, u_input.b.x))), -(~global0.c.x));
    let var_3 = Struct_1(-177f, !select(!(!vec4<bool>(var_0, true, false, global0.b.x)), var_2.b, all(!global0.b)), vec3<i32>(func_3(!select(true, true, false), Struct_1(_wgslsmith_f_op_f32(-global0.a), !vec4<bool>(var_1.x, global0.b.x, var_1.x, false), -vec3<i32>(u_input.c.x, u_input.c.x, global0.c.x), -41364i), Struct_1(_wgslsmith_f_op_f32(min(926f, global0.a)), global0.b, _wgslsmith_mod_vec3_i32(u_input.b.wwy, global0.c), global0.d << (u_input.e % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1327f, global0.a, var_2.a, 1229f))))).x, -39077i, select(-37569i >> (_wgslsmith_dot_vec2_u32(global1.xw, u_input.a.xx) % 32u), firstTrailingBit(global0.d), false)), global0.d);
    let var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(var_4, 0u, firstLeadingBit(4294967295u), min(~u_input.e, firstLeadingBit(global1.x))), (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_4, global1.x, var_4), vec4<u32>(34616u, var_4, u_input.a.x, 1u)) ^ ~vec4<u32>(14244u, 1u, global1.x, global1.x)) >> (abs(~vec4<u32>(41732u, 4294967295u, u_input.e, u_input.a.x)) % vec4<u32>(32u))), 2936f, ~var_2.c.x, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.a * var_3.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_3.a, 224f)), _wgslsmith_f_op_f32(var_2.a * -273f), false))))));
}

