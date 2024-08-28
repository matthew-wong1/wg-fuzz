struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: vec3<bool>, arg_3: i32) -> bool {
    return all(vec2<bool>(arg_2.x, true));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> f32 {
    var var_0 = 24255u;
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, countOneBits(-u_input.a & _wgslsmith_mult_i32(u_input.a, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a, -u_input.a), ~(-vec2<i32>(u_input.a, u_input.a)))), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -49997i, u_input.a) | vec4<i32>(u_input.a, -1541i, u_input.a, u_input.a), vec4<i32>(u_input.a, 13795i, u_input.a, -2147483647i))), 2147483647i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 2147483647i, 4741i) ^ vec4<i32>(1i, 2147483647i, -11470i, -39232i), -vec4<i32>(2147483647i, u_input.a, u_input.a, -12944i))));
    let var_2 = _wgslsmith_div_vec2_i32(select(-var_1.yy, vec2<i32>(-1i, -u_input.a), !(!(!arg_2.yx))), firstTrailingBit(var_1.zy));
    var var_3 = Struct_2(vec4<bool>(arg_2.x, arg_2.x, 442f == _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(min(548f, -1281f))), arg_2.x), Struct_1(!((u_input.b >= u_input.b) != true)), Struct_1(arg_2.x), Struct_1(true));
    var_0 = ~(firstLeadingBit(19602u & ~u_input.b) >> (abs(~(~4294967295u)) % 32u));
    return _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.x)))) - 505f), _wgslsmith_f_op_f32(913f * arg_1.x))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = arg_1.d;
    var var_1 = true;
    let var_2 = Struct_2(!vec4<bool>(true, arg_3.x, true, false), Struct_1(!(!any(vec4<bool>(var_0.a, arg_1.e.x, false, var_0.a)))), Struct_1(true), var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-641f, -624f)), -748f, func_2(Struct_3(vec3<bool>(arg_3.x, false, var_2.c.a), arg_1.b, 1u, Struct_1(true), vec2<bool>(var_2.c.a, false)), 31656u, arg_1.a, 29147i))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(207f, 394f), vec2<f32>(147f, 2196f), var_2.a.wyw)))), -1733f, -551f));
    var_1 = !var_2.b.a;
    return Struct_3(select(select(arg_1.a, !(!vec3<bool>(arg_1.a.x, arg_3.x, true)), var_2.a.xwx), !var_2.a.zwx, !vec3<bool>(!arg_3.x, var_0.a, arg_3.x)), _wgslsmith_sub_i32(7409i, ~(~1i)), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, u_input.b) << (((vec2<u32>(arg_2.x, arg_2.x) >> (vec2<u32>(arg_2.x, 4294967295u) % vec2<u32>(32u))) | _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.x, 0u), vec2<u32>(arg_1.c, u_input.b))) % vec2<u32>(32u)), max(arg_2.xx | arg_2.xy, vec2<u32>(u_input.b, arg_2.x)) >> (_wgslsmith_sub_vec2_u32(abs(arg_2.xx), vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u))), var_0, select(vec2<bool>(true, all(select(arg_1.a, arg_1.a, vec3<bool>(false, arg_1.e.x, false)))), !select(var_2.a.yz, vec2<bool>(arg_1.d.a, var_2.a.x), !arg_3), any(!(!var_2.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2322f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_2, -1177f)))))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -581f)));
    let var_1 = u_input.b;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -174f)))));
    var var_2 = _wgslsmith_dot_vec3_i32(reverseBits(firstLeadingBit(~(-vec3<i32>(-2147483647i, arg_0.x, -1i)))), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0, arg_0) << (_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 0u, u_input.b), vec3<u32>(var_1, 4294967295u, 10438u)) % vec3<u32>(32u)), abs(~arg_0), min(arg_0 >> (vec3<u32>(1u, 76121u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(arg_3.b, -2147483647i, arg_0.x) ^ arg_0)), vec3<i32>(arg_3.b, firstTrailingBit(_wgslsmith_clamp_i32(9333i, arg_3.b, 16891i)), -2147483647i)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-377f)) - arg_2));
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = 26042i;
    return func_4(vec3<i32>(select(0i, var_0 << (max(u_input.b, u_input.b) % 32u), !(arg_2.a && arg_2.a)), _wgslsmith_dot_vec3_i32(-(vec3<i32>(1i, 2147483647i, u_input.a) ^ vec3<i32>(-17299i, -1i, var_0)), ~vec3<i32>(0i, var_0, 0i)), -9087i), func_1(vec4<i32>(_wgslsmith_add_i32(~(-1i), _wgslsmith_sub_i32(var_0, var_0)), var_0 ^ var_0, _wgslsmith_mod_i32(u_input.a, firstTrailingBit(var_0)), firstLeadingBit(var_0)), Struct_3(select(select(vec3<bool>(true, arg_0, arg_3), vec3<bool>(false, false, false), vec3<bool>(arg_0, arg_3, arg_3)), vec3<bool>(true, arg_3, false), true), -2147483647i, 35192u, Struct_1(arg_0), vec2<bool>(true, any(vec2<bool>(arg_3, arg_2.a)))), ~countOneBits(vec3<u32>(u_input.b, 28268u, u_input.b) >> (vec3<u32>(1u, u_input.b, 7911u) % vec3<u32>(32u))), vec2<bool>(arg_0, !(arg_2.a | arg_0))).d, 715f, Struct_3(!select(select(vec3<bool>(true, arg_2.a, false), vec3<bool>(arg_0, true, true), vec3<bool>(false, arg_0, false)), vec3<bool>(false, true, arg_3), select(vec3<bool>(arg_0, arg_2.a, arg_2.a), vec3<bool>(true, false, true), true)), _wgslsmith_clamp_i32(~(-12488i), ~var_0, 40642i), u_input.b, Struct_1(arg_2.a), vec2<bool>(func_1(firstTrailingBit(vec4<i32>(2147483647i, -23282i, 0i, 44491i)), func_1(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), Struct_3(vec3<bool>(arg_2.a, arg_3, true), u_input.a, 1u, arg_2, vec2<bool>(arg_2.a, arg_3)), vec3<u32>(u_input.b, u_input.b, 0u), vec2<bool>(false, arg_2.a)), vec3<u32>(0u, u_input.b, 39682u), vec2<bool>(true, arg_2.a)).a.x, any(vec2<bool>(arg_2.a, false)) || true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1130f, 706f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1602f, -462f), vec2<f32>(460f, -1405f), vec2<bool>(true, false)))))), func_4(vec3<i32>(-1i) * -select(vec3<i32>(u_input.a, u_input.a, 8987i), vec3<i32>(u_input.a, -18250i, u_input.a), vec3<bool>(false, true, true)), Struct_1(any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2211f + -1911f), 522f))), func_1(~(vec4<i32>(u_input.a, -60482i, 39359i, 1i) | vec4<i32>(u_input.a, u_input.a, -2147483647i, 0i)), Struct_3(vec3<bool>(true, true, true), -25629i, 4294967295u, Struct_1(true), vec2<bool>(true, false)), ~vec3<u32>(43492u, 27378u, 32207u), vec2<bool>(true, true))), func_4(abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, 8329i, u_input.a), vec3<i32>(u_input.a, u_input.a, -51446i))), func_1(vec4<i32>(-21574i, abs(u_input.a), u_input.a, ~2147483647i), func_1(vec4<i32>(-20837i, -1i, 1i, u_input.a) >> (vec4<u32>(44612u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u)), func_1(vec4<i32>(2147483647i, u_input.a, 18154i, u_input.a), Struct_3(vec3<bool>(false, false, false), u_input.a, u_input.b, Struct_1(true), vec2<bool>(true, true)), vec3<u32>(89660u, 0u, u_input.b), vec2<bool>(false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 60u, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)), vec2<bool>(true, true)), select(vec3<u32>(u_input.b, 50883u, 1u), vec3<u32>(1u, 41555u, 26916u), vec3<bool>(false, true, false)) >> (~vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u)), vec2<bool>(true, any(vec4<bool>(false, false, true, true)))).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1502f) - _wgslsmith_f_op_f32(f32(-1f) * -1405f))), Struct_3(vec3<bool>(true, true, true), 76i & _wgslsmith_sub_i32(0i, u_input.a), _wgslsmith_mult_u32(~u_input.b, ~1u), Struct_1(true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))).a);
    let x = u_input.a;
    s_output = StorageBuffer(select(min(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 12421u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_div_u32(34853u, u_input.b), var_0.a) & u_input.b);
}

