struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~arg_0.x, ~(~35453u) ^ ~(u_input.c & 4294967295u)), ~arg_0.x);
    var_0 = u_input.c;
    var_0 = firstLeadingBit(arg_0.x);
    var var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(499f))), -1312f, all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1593f)))), max(u_input.a.x, arg_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(661f, 2999f, 1877f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(190f)) + -494f) >= -129f, -1i, u_input.c), u_input.c, _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.e.x, arg_1.x, -1i, u_input.e.x)), reverseBits(vec4<i32>(arg_1.x, -43015i, 21361i, arg_1.x)))), abs(firstTrailingBit(-vec4<i32>(u_input.b.x, -5358i, -11343i, u_input.d.x)))));
    var var_2 = _wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, min(0u, 11068u), ~arg_0.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1.d, arg_0.x, var_1.c.d), vec4<u32>(var_1.c.d, 1u, u_input.c, 0u)), ~130427u, 9235u)), _wgslsmith_mult_vec3_u32(~select(vec3<u32>(arg_0.x, 57287u, 4294967295u), vec3<u32>(0u, var_1.c.d, u_input.c), false), ~(vec3<u32>(u_input.c, 0u, var_1.d) >> (vec3<u32>(u_input.c, 78443u, 96914u) % vec3<u32>(32u))))) ^ vec3<u32>(~(~firstTrailingBit(2479u)), reverseBits(0u & arg_0.x), var_1.d);
    return _wgslsmith_f_op_vec2_f32(var_1.c.a.yy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, 1451f))))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-233f, 698f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(756f, -166f) * vec2<f32>(887f, 268f)))), _wgslsmith_f_op_vec2_f32(func_3(~vec2<u32>(81u, 1186u), reverseBits(u_input.e))))) - vec2<f32>(1f, 1f));
    var var_1 = !(~(~u_input.c | ~0u) >= ~min(firstLeadingBit(41060u), _wgslsmith_mod_u32(46248u, u_input.c)));
    return Struct_2(select(vec2<bool>(true && (u_input.d.x > u_input.d.x), all(select(vec4<bool>(false, true, arg_0, false), vec4<bool>(arg_0, true, false, arg_0), true))), select(vec2<bool>(true, all(vec4<bool>(false, arg_0, true, arg_0))), !vec2<bool>(arg_0, false), select(true, any(vec2<bool>(arg_0, false)), var_0.x >= -103f)), select(select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), vec2<bool>(false, true)), 2147483647i <= u_input.e.x), vec2<bool>(true, true), any(select(vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(true, false, true, arg_0))))), _wgslsmith_sub_vec3_u32(~(abs(vec3<u32>(u_input.c, 76614u, u_input.c)) ^ ~vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c, 1u) ^ vec3<u32>(4294967295u, 0u, 30052u), vec3<u32>(u_input.c, u_input.c, 7975u) >> (vec3<u32>(17341u, u_input.c, u_input.c) % vec3<u32>(32u)), ~vec3<u32>(14960u, u_input.c, u_input.c)) ^ vec3<u32>(1u, ~45633u, 1u)), u_input.d.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-535f, var_0.x, -1000f, -129f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(814f, var_0.x, var_0.x, -104f) - vec4<f32>(1000f, var_0.x, 1000f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-581f, -272f, 1000f, 1243f)))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), 1424f, _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x - -359f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1377f, -436f, var_0.x)))))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-arg_1.d.wyx), arg_1.a.x, arg_0.x, 13806u);
    let var_1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(-arg_1.d.x)), var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zz)), select(select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, var_0.b), select(vec4<bool>(arg_1.a.x, true, true, false), vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), vec4<bool>(false, arg_1.a.x, arg_1.a.x, true)), select(vec4<bool>(arg_1.a.x, arg_1.a.x, var_0.b, arg_1.a.x), vec4<bool>(var_0.b, true, var_0.b, false), vec4<bool>(var_0.b, arg_1.a.x, false, false))), vec4<bool>(all(vec4<bool>(true, false, true, true)), true, true, u_input.e.x <= arg_1.c), select(626f != arg_1.d.x, arg_1.a.x, !arg_1.a.x)), vec4<bool>(!any(vec4<bool>(false, false, true, true)), all(select(vec3<bool>(true, false, var_0.b), vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, var_0.b, false))), true, false), all(!(!vec4<bool>(false, false, true, arg_1.a.x)))), 27923i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.d.zzw) - _wgslsmith_f_op_vec3_f32(sign(var_0.a))), var_1.d.x, arg_1.c ^ _wgslsmith_clamp_i32(u_input.b.x, _wgslsmith_mult_i32(-var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.e, -1i, -1261i), vec4<i32>(var_0.c, -26850i, arg_1.c, 2147483647i))), _wgslsmith_sub_i32(max(arg_0.x, -16219i), 7186i)), ~1u);
    let var_3 = Struct_2(vec2<bool>(var_2.b, _wgslsmith_f_op_f32(-func_2(arg_1.a.x).d.x) == _wgslsmith_f_op_f32(round(var_0.a.x))), vec3<u32>(func_2(false).b.x ^ var_0.d, countOneBits(1u), 0u), ~var_1.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) - arg_1.d), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_2.a.x, -1574f)))))));
    let var_4 = 4294967295u;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1373f + _wgslsmith_f_op_f32(-var_2.a.x)), var_0.a.x, var_3.d.x), true, min(~1i, _wgslsmith_add_i32(0i, u_input.a.x)), select(~var_4 ^ ~_wgslsmith_dot_vec2_u32(arg_1.b.yx, var_3.b.yz), ~_wgslsmith_mod_u32(46869u, max(var_4, 4294967295u)), (u_input.c & 5271u) >= var_4));
}

fn func_1() -> Struct_2 {
    let var_0 = func_4(u_input.b.zz, func_2(true));
    var var_1 = var_0.a.x;
    var_1 = var_0.a.x;
    let var_2 = Struct_4(918f, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(28021u, 1u) & vec2<u32>(var_0.d, var_0.d), ~vec2<u32>(5502u, var_0.d) << (vec2<u32>(u_input.c, var_0.d) % vec2<u32>(32u))), 46646u), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 231f), vec4<bool>(true, !(!(false || var_0.b)), false, func_2(u_input.d.x < select(56810i, u_input.e.x, var_0.b)).a.x), ~_wgslsmith_clamp_i32(4532i, u_input.b.x, 2147483647i));
    var var_3 = var_2.a;
    return func_2(true);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> Struct_4 {
    var var_0 = !select(select(vec2<bool>(func_1().a.x, arg_1.a.x), arg_1.a, vec2<bool>(arg_1.a.x, true)), vec2<bool>(any(func_2(false).a), func_2(true).a.x), vec2<bool>(arg_1.a.x, arg_1.a.x));
    var var_1 = arg_0 << (min(abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(arg_1.b.x, 95243u, 0u, arg_1.b.x), vec4<u32>(u_input.c, arg_1.b.x, u_input.c, 1u), arg_1.a.x), ~vec4<u32>(u_input.c, 1u, 8861u, 4294967295u))), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(arg_1.b.x, 536u, u_input.c, u_input.c), vec4<u32>(u_input.c, 23430u, arg_1.b.x, u_input.c), arg_1.a.x), min(vec4<u32>(4294967295u, 39487u, 1u, u_input.c), vec4<u32>(4294967295u, u_input.c, 4294967295u, 9493u)))) % vec4<u32>(32u));
    let var_2 = func_4(-vec2<i32>(max(-1i, firstTrailingBit(1i)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, arg_0.x), var_1.yx), _wgslsmith_add_i32(arg_0.x, u_input.a.x), arg_1.a.x)), func_2(var_0.x));
    var var_3 = -var_2.c;
    let var_4 = _wgslsmith_clamp_vec2_u32(~arg_1.b.xx, ~_wgslsmith_mod_vec2_u32(arg_1.b.yy, vec2<u32>(max(arg_1.b.x, var_2.d), arg_1.b.x)), firstTrailingBit(~(~arg_1.b.yx)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(769f, -1019f)), 113660u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.zy * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.x, arg_2.x) - vec2<f32>(arg_1.d.x, arg_1.d.x)))))), !(!(!select(vec4<bool>(var_0.x, var_2.b, arg_1.a.x, true), vec4<bool>(false, true, true, var_0.x), true))), ~(-38528i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.e.x, u_input.a.x, 2147483647i, 1i) >> (vec4<u32>(u_input.c, u_input.c, u_input.c, 27675u) % vec4<u32>(32u))), vec4<i32>(u_input.e.x, 0i, 7803i, 1i) >> (firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, 4294967295u)) % vec4<u32>(32u))) ^ (-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, 2147483647i), vec4<i32>(u_input.a.x, -1i, -2147483647i, 2225i)) | vec4<i32>(u_input.a.x, -46167i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.b.x), vec3<i32>(u_input.d.x, -2147483647i, u_input.b.x)), firstTrailingBit(u_input.b.x))), func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 177f, 861f), vec3<f32>(1130f, 460f, -289f), vec3<bool>(false, false, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1091f, -1568f)))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 185f, 528f), vec3<f32>(578f, -2997f, -2184f))))));
    var var_1 = vec2<u32>(83877u, ~(~(u_input.c & 2741u)));
    var_1 = vec2<u32>(~4657u, var_0.b);
    var_1 = min(~vec2<u32>(min(_wgslsmith_div_u32(1u, 54065u), var_1.x), ~func_1().b.x), vec2<u32>(~abs(8847u), func_4(~(~vec2<i32>(27954i, u_input.d.x)), Struct_2(vec2<bool>(false, true), vec3<u32>(0u, 1u, u_input.c), i32(-1i) * -3110i, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(147f, -123f, 339f, 222f), vec4<f32>(var_0.a, -1903f, -1140f, -760f))))).d));
    var_1 = (~((vec2<u32>(u_input.c, 77953u) | vec2<u32>(1u, 0u)) & ~vec2<u32>(0u, 72931u)) ^ vec2<u32>(firstTrailingBit(func_1().b.x), ~u_input.c)) ^ vec2<u32>(u_input.c, ~abs(u_input.c));
    var_1 = vec2<u32>(0u, 4294967295u) | (func_2(any(vec3<bool>(false, false, var_0.d.x))).b.yy | vec2<u32>(~u_input.c, _wgslsmith_sub_u32(1u, reverseBits(0u))));
    let var_2 = abs(~(~(-var_0.e)));
    var_1 = func_2(false).b.zy;
    var_1 = func_1().b.yy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.xy);
}

