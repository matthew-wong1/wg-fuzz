struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(1i, 0i, i32(-2147483648)), vec4<u32>(8582u, 1u, 4294967295u, 4294967295u));

var<private> global2: f32;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4294967295u, -1544f, Struct_1(vec3<i32>(-43503i, 29339i, 8892i), vec4<u32>(25023u, 1u, 62678u, 4294967295u)), vec2<f32>(1990f, 221f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<f32>, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(floor(arg_3.x)));
    let var_1 = global1.b.x;
    let var_2 = global1.b.yzz;
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 27083u, var_2.x, var_2.x) << (vec4<u32>(var_2.x, select(u_input.c.x, 4294967295u, false) ^ ~4294967295u, ~u_input.b.x, ~_wgslsmith_sub_u32(0u, global1.b.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(global1.b, select(vec4<u32>(0u, 9441u, global1.b.x, var_2.x), ~vec4<u32>(36048u, var_2.x, 4294967295u, global1.b.x), vec4<bool>(true, false, true, false))), global1.b));
    var var_4 = global1.b.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2130f, arg_3.x, arg_2.x, 1347f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.x, arg_3.x, arg_3.x, arg_2.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.x, 1000f, -1041f, 243f))))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2171f + -1000f), 1173f)), arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1881f))))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(631f, -834f, arg_2.x, arg_2.x)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1552f, 533f, arg_2.x, 525f), vec4<f32>(874f, -227f, 1768f, arg_2.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-146f, arg_2.x, -2441f, 1093f)) + vec4<f32>(1301f, -1030f, arg_3.x, 404f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(842f)), -467f, arg_3.x, _wgslsmith_div_f32(479f, -764f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1227f, -108f, false)), 749f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2224f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.a.x, 14356i), 6616i), _wgslsmith_mod_i32(0i, _wgslsmith_mod_i32(global1.a.x, arg_3.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-236f, 182f, 750f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-941f, 672f, 307f) - vec3<f32>(593f, 287f, 172f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1296f, 476f, -333f) + vec3<f32>(947f, -125f, 1236f))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 116f, -1267f, -891f) - _wgslsmith_div_vec4_f32(vec4<f32>(-1365f, 1974f, 513f, 965f), vec4<f32>(-835f, -215f, 596f, -326f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(var_1.wxy, var_1.xzy, any(!vec2<bool>(!arg_1.x, true))));
    var var_3 = global3[_wgslsmith_index_u32(~countOneBits(1u), 1u)];
    let var_4 = var_3.c;
    return global3[_wgslsmith_index_u32(~firstTrailingBit(~1u), 1u)];
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1271f + 990f) + -1485f);
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(1i, _wgslsmith_add_i32(-16174i, i32(-1i) * -8319i)), arg_1, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-arg_1, 11929i, ~arg_2.a.x), -50016i)), ~(~vec4<u32>(1u ^ arg_3.a, max(0u, 9940u), ~arg_2.b.x, 4294967295u)));
    global0 = ~(-var_1.a.x);
    var var_2 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(reverseBits(var_1.b.x) != (u_input.b.x ^ 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -1557f) < _wgslsmith_f_op_f32(2606f * var_0), true, true), !(!(var_1.a.x < 18752i))), select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), false), arg_2.a.x == firstTrailingBit(arg_1)), vec4<bool>(true, true, true, true)), false);
    var var_3 = select(select(var_2.yy, !select(var_2.ww, var_2.xw, vec2<bool>(true, true)), vec2<bool>(false, (29139u != arg_0) | !var_2.x)), vec2<bool>((var_1.b.x << (arg_0 % 32u)) <= ~(~arg_2.b.x), var_2.x || var_2.x), vec2<bool>(any(select(var_2.yy, select(vec2<bool>(false, var_2.x), var_2.zw, vec2<bool>(false, var_2.x)), var_2.yz)), true));
    return arg_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_2.b, global1.b), vec4<u32>(max(u_input.c.x, arg_2.b.x), u_input.a.x, 4294967295u, global1.b.x) | firstTrailingBit(global1.b)), -_wgslsmith_clamp_i32(~firstLeadingBit(-106836i), _wgslsmith_sub_i32(~2147483647i, arg_2.a.x), -1i), Struct_1(~countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_2.a.x, global1.a.x), vec3<i32>(-1i, global1.a.x, 0i))), _wgslsmith_div_vec4_u32(vec4<u32>(16792u, 35582u, ~4294967295u, ~17928u), ~global1.b)), func_2(func_2(arg_2, vec2<bool>(arg_1, arg_0.x), arg_0, vec2<i32>(-arg_2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.a.x, 0i), vec3<i32>(11078i, -1i, global1.a.x)))).c, select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), select(arg_0.zx, vec2<bool>(arg_1, arg_1), arg_0.xz)), arg_0.zx, all(vec2<bool>(arg_0.x, true))), select(arg_0, !select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, false)), !select(arg_0, vec3<bool>(arg_1, false, arg_0.x), false)), vec2<i32>(-42742i, abs(global1.a.x) >> (~arg_2.b.x % 32u))));
    var var_1 = global1.b.x ^ ~(~max(global1.b.x, abs(1u)));
    let var_2 = func_2(func_4(1u, ~arg_2.a.x, Struct_1(select(~var_0.a, global1.a, select(arg_0, vec3<bool>(false, arg_1, false), arg_0)), vec4<u32>(global1.b.x | 4294967295u, u_input.a.x >> (12176u % 32u), max(1u, u_input.a.x), _wgslsmith_mult_u32(0u, var_0.b.x))), global3[_wgslsmith_index_u32(u_input.b.x, 1u)]), vec2<bool>(arg_0.x, true), vec3<bool>(arg_0.x, true, false), vec2<i32>(select(func_2(arg_2, arg_0.yx, vec3<bool>(arg_1, arg_0.x, false), func_2(Struct_1(vec3<i32>(-15747i, global1.a.x, global1.a.x), global1.b), vec2<bool>(arg_1, true), vec3<bool>(arg_1, false, arg_0.x), var_0.a.xy).c.a.xx).c.a.x, global1.a.x, true), arg_2.a.x));
    let var_3 = var_2.c.a.xz;
    var var_4 = var_2.c.a;
    return func_2(arg_2, vec2<bool>(true, true), select(select(select(arg_0, arg_0, vec3<bool>(false, arg_1, arg_0.x)), vec3<bool>(!arg_0.x, 1545f <= arg_3.x, !arg_1), true), select(!select(arg_0, vec3<bool>(arg_1, arg_1, false), true), select(select(arg_0, vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_0.x, arg_0.x, false)), select(arg_0, vec3<bool>(arg_0.x, arg_1, true), vec3<bool>(arg_0.x, true, true)), arg_0.x | false), arg_0.x), true), vec2<i32>(1i, _wgslsmith_sub_i32(12794i, _wgslsmith_mod_i32(max(var_0.a.x, 1i), ~arg_2.a.x))));
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = func_5(select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !vec3<bool>(false, arg_1.a == 4294967295u, true)), false, func_5(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(true, true, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false))), arg_1.c, vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(arg_3.c.a.x, -global1.a.x, vec3<f32>(arg_0, arg_3.b, arg_3.d.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.b, arg_1.b, -758f))))).x, _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_div_f32(arg_3.b, -1523f)))).c, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_3.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-arg_1.d.x), arg_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1400f), arg_0, _wgslsmith_f_op_f32(-1127f - arg_3.d.x), _wgslsmith_f_op_f32(select(arg_0, arg_3.b, false))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(962f, arg_1.b, arg_3.d.x, arg_1.b))))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))))).c;
    global1 = arg_1.c;
    global1 = func_4(34226u, -10504i, var_0, Struct_2(2530u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + 542f)) - _wgslsmith_f_op_f32(arg_3.d.x + _wgslsmith_f_op_f32(arg_1.d.x * arg_3.b))), Struct_1(~abs(vec3<i32>(arg_1.c.a.x, -21410i, -4545i)), ~vec4<u32>(global1.b.x, var_0.b.x, 3902u, 47985u) ^ reverseBits(vec4<u32>(arg_2, arg_1.c.b.x, 47986u, 36094u))), arg_3.d));
    global1 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3.c.a, arg_3.c.a), ~_wgslsmith_div_vec3_i32(arg_3.c.a, _wgslsmith_mod_vec3_i32(var_0.a, var_0.a))), _wgslsmith_mod_vec4_u32(var_0.b, select(vec4<u32>(arg_2, 28432u, _wgslsmith_clamp_u32(global1.b.x, arg_2, global1.b.x), 21622u), (vec4<u32>(var_0.b.x, var_0.b.x, 0u, 62929u) & arg_1.c.b) | vec4<u32>(arg_3.a, arg_1.c.b.x, 13339u, 0u), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)))));
    global1 = arg_1.c;
    return _wgslsmith_sub_i32(~0i, _wgslsmith_div_i32(min(~global1.a.x, (var_0.a.x | 7690i) >> (_wgslsmith_mult_u32(1u, 4294967295u) % 32u)), var_0.a.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 1u)];
    global0 = _wgslsmith_div_i32(arg_1.a.x, func_6(_wgslsmith_f_op_f32(f32(-1f) * -939f), func_5(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), false, func_4(arg_2.a, global1.a.x, Struct_1(var_0.c.a, vec4<u32>(1u, 26503u, 1u, 48248u)), func_2(arg_0.c, vec2<bool>(true, false), vec3<bool>(true, false, true), vec2<i32>(22632i, arg_2.c.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1400f, arg_2.b, -538f) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, -518f, -172f, 1325f), vec4<f32>(1542f, 220f, var_0.b, -345f)))), abs(arg_0.a) >> (func_2(func_2(Struct_1(global1.a, arg_1.b), vec2<bool>(false, true), vec3<bool>(true, true, false), vec2<i32>(global1.a.x, -1i)).c, vec2<bool>(true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), arg_2.c.a.xy ^ vec2<i32>(arg_0.c.a.x, -2147483647i)).c.b.x % 32u), Struct_2(_wgslsmith_sub_u32(52173u, 26082u), _wgslsmith_f_op_f32(178f - var_0.b), func_5(vec3<bool>(true, true, true), true, func_2(arg_2.c, vec2<bool>(false, false), vec3<bool>(false, false, false), vec2<i32>(-7703i, 2114i)).c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.d.x, var_0.d.x, arg_0.b, -805f)))).c, vec2<f32>(-2162f, _wgslsmith_f_op_f32(-arg_2.d.x)))));
    let var_1 = _wgslsmith_f_op_f32(exp2(arg_0.b));
    var var_2 = vec4<i32>(func_5(vec3<bool>(true, true, true), true, Struct_1(global1.a, ~(~vec4<u32>(1u, 4294967295u, u_input.a.x, arg_1.b.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1, arg_2.d.x))), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(exp2(arg_0.b)), _wgslsmith_f_op_f32(round(arg_2.d.x)))).c.a.x, arg_1.a.x, 11092i >> (_wgslsmith_clamp_u32(266u, abs(arg_1.b.x), reverseBits(arg_1.b.x)) % 32u), arg_1.a.x);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-func_5(vec3<bool>(true, true, false), true, Struct_1(vec3<i32>(0i, arg_0.c.a.x, -17163i), global1.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-379f, 491f, 940f, 1039f))).c.a.x, _wgslsmith_add_i32(var_0.c.a.x, ~_wgslsmith_clamp_i32(var_2.x, var_2.x, arg_2.c.a.x)), 1i, _wgslsmith_clamp_i32(-78857i, ~1i, func_4(1u, -36078i >> (arg_2.a % 32u), arg_1, Struct_2(global1.b.x, var_0.d.x, Struct_1(vec3<i32>(arg_0.c.a.x, var_0.c.a.x, 22613i), vec4<u32>(1u, 1u, arg_0.c.b.x, u_input.c.x)), vec2<f32>(var_1, -1482f))).a.x)), _wgslsmith_mult_vec4_i32(~(abs(vec4<i32>(var_2.x, -1i, 21242i, arg_2.c.a.x)) ^ vec4<i32>(var_2.x, var_2.x, global1.a.x, -2147483647i)), abs(-vec4<i32>(global1.a.x, global1.a.x, -5589i, var_0.c.a.x)) << (func_5(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true, var_0.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(746f, var_0.d.x, 911f, -1486f))).c.b % vec4<u32>(32u))));
    return firstTrailingBit(var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-927f * _wgslsmith_div_f32(379f, 1000f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(655f, -378f))))));
    let var_1 = global3[_wgslsmith_index_u32(global1.b.x, 1u)];
    global0 = _wgslsmith_sub_i32(max(max(_wgslsmith_mod_i32(select(-2147483647i, global1.a.x, true), var_1.c.a.x), -67431i), global1.a.x), _wgslsmith_add_i32(var_1.c.a.x, 53482i) ^ -(func_1(Struct_2(41103u, -215f, var_1.c, var_1.d), Struct_1(var_1.c.a, vec4<u32>(4294967295u, u_input.a.x, 12311u, 18629u)), Struct_2(global1.b.x, var_1.d.x, var_1.c, var_1.d)) ^ (62861i & var_1.c.a.x)));
    var var_2 = vec2<bool>(true, true);
    var var_3 = Struct_1(global1.a, global1.b);
    var var_4 = global3[_wgslsmith_index_u32(4294967295u, 1u)];
    var var_5 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(~var_4.c.b.x, func_2(Struct_1(var_1.c.a, var_3.b), vec2<bool>(var_2.x, var_2.x), vec3<bool>(true, false, false), vec2<i32>(34510i, 0i)).c.b.x, 1u, ~7238u)), abs(~global1.b)), firstLeadingBit(~(~var_3.b.x)) ^ (u_input.c.x ^ (_wgslsmith_div_u32(1u, 4294967295u) << (_wgslsmith_mult_u32(28458u, global1.b.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, countOneBits(4294967295u), ~var_1.a), var_3.b.wyx, vec4<f32>(_wgslsmith_f_op_f32(-131f * var_1.b), _wgslsmith_f_op_f32(max(func_5(vec3<bool>(false, false, var_2.x), true, var_4.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.x, -1070f, var_4.b, var_1.d.x))).d.x, _wgslsmith_f_op_f32(-199f * -2339f))), var_1.d.x, var_4.b));
}

