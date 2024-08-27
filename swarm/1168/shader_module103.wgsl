struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = (_wgslsmith_dot_vec4_i32(~(~u_input.a), max(u_input.a, firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, -18109i, 4316i)))) < _wgslsmith_mult_i32(21705i, u_input.a.x)) == !any(vec2<bool>(true, false));
    var var_1 = _wgslsmith_f_op_f32(-2134f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-766f + 1617f)))))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(4294967295u, 51804u)), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(10065u, 0u, 39795u, 21962u), vec4<u32>(14378u, 0u, 56001u, 0u))), 13266u), _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(72351u, 1u), vec2<u32>(41889u, 45803u), vec2<u32>(1u, 4294967295u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 60459u), vec2<u32>(25687u, 127403u)), vec2<u32>(1u, 1u), ~vec2<u32>(0u, 1869u)))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, u_input.a.x == -2147483647i)), vec2<f32>(1f, 1f), ~(u_input.a.x ^ _wgslsmith_add_i32(u_input.a.x, max(72653i, 19631i))));
    var_1 = -510f;
    let var_3 = Struct_3(!vec4<bool>(false, !var_2.b.x, false & var_2.b.x, var_2.b.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-467f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-477f)) * _wgslsmith_f_op_f32(var_2.c.x + var_2.c.x))), -2126f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f - 290f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1348f - var_2.c.x) - -952f) * _wgslsmith_f_op_f32(floor(1530f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.x, 417f, -1885f))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1771f, var_2.c.x, var_2.c.x), vec3<f32>(1270f, var_2.c.x, var_2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.c.x, -994f, -690f))))), vec3<f32>(var_2.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.x - var_2.c.x), -118f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(879f)), _wgslsmith_f_op_f32(788f - var_2.c.x), true))), !vec3<bool>(true, false, !var_2.b.x))));
    return select(!(!vec3<bool>(true, !var_3.a.x, var_2.b.x)), vec3<bool>(true, (any(vec4<bool>(false, true, true, false)) | all(vec3<bool>(false, true, false))) != var_3.a.x, var_3.a.x), select(var_3.a.xxw, vec3<bool>(true, 2147483647i == firstTrailingBit(var_2.d), (4294967295u >= var_2.a.x) | var_3.a.x), !select(!var_2.b, vec3<bool>(var_2.b.x, var_3.a.x, false), vec3<bool>(true, true, true))));
}

fn func_4(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = arg_0.c;
    let var_1 = Struct_5(1u, min(vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_0.c.d, u_input.a.x), vec4<i32>(33704i, -15494i, -2147483647i, arg_0.c.d))), _wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(0i, u_input.a.x, var_0.d, arg_0.c.d))), -_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14770i, var_0.d), vec2<i32>(3437i, u_input.a.x)), u_input.a.yy)));
    var var_2 = Struct_4(vec2<i32>(var_1.b.x, u_input.a.x), Struct_1(firstTrailingBit(~vec2<u32>(arg_0.c.a.x, var_1.a)), arg_0.c.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(552f, arg_0.c.c.x) * _wgslsmith_div_vec2_f32(vec2<f32>(1353f, arg_0.c.c.x), vec2<f32>(-272f, arg_0.c.c.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(659f, 557f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.c.x, 1094f))))), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.d, 2147483647i), vec2<i32>(44344i, 0i)), var_0.d)));
    var var_3 = var_0.b.x;
    var_3 = true;
    return select(select(!select(!vec4<bool>(false, false, var_2.b.b.x, var_2.b.b.x), !vec4<bool>(false, false, arg_0.a, false), select(vec4<bool>(arg_0.d, arg_0.c.b.x, false, false), vec4<bool>(var_2.b.b.x, arg_0.a, var_0.b.x, false), true)), select(vec4<bool>(any(arg_0.c.b.xz), false, true, true), vec4<bool>(arg_0.a && true, true, arg_0.d, true), select(select(vec4<bool>(var_2.b.b.x, true, var_0.b.x, true), vec4<bool>(var_2.b.b.x, false, var_0.b.x, true), vec4<bool>(false, arg_0.c.b.x, var_0.b.x, true)), vec4<bool>(false, var_2.b.b.x, false, true), !vec4<bool>(var_2.b.b.x, false, true, arg_0.d))), all(!(!arg_0.c.b.xy))), vec4<bool>(abs(var_2.b.a.x >> (var_0.a.x % 32u)) <= ~39964u, any(select(select(vec4<bool>(false, true, arg_0.c.b.x, false), vec4<bool>(true, arg_0.a, var_0.b.x, var_2.b.b.x), vec4<bool>(arg_0.a, var_2.b.b.x, arg_0.a, false)), !vec4<bool>(true, var_2.b.b.x, true, true), vec4<bool>(true, true, true, true))), true, any(!var_2.b.b.yy)), vec4<bool>(!(!arg_0.d), arg_0.d, !var_2.b.b.x, any(vec3<bool>(var_0.b.x || false, var_2.b.b.x, any(vec4<bool>(var_0.b.x, true, false, false))))));
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec4<bool>(true, any(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true))), func_4(Struct_2(any(func_3()), ~firstLeadingBit(vec3<u32>(20261u, 1u, 1u)), Struct_1(vec2<u32>(1u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1137f, -2141f))), 53778i), false)), !func_4(Struct_2(any(vec3<bool>(true, true, true)), select(vec3<u32>(92715u, 79318u, 2773u), vec3<u32>(4294967295u, 0u, 1u), vec3<bool>(true, false, false)), Struct_1(vec2<u32>(34086u, 0u), vec3<bool>(true, true, false), vec2<f32>(121f, 205f), u_input.a.x), any(vec4<bool>(false, false, false, false)))));
    let var_1 = Struct_3(select(var_0, select(var_0, var_0, false), var_0), vec4<f32>(-1601f, _wgslsmith_f_op_f32(select(1483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1272f)) + -123f), !var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1737f, 809f, var_0.x))) - -600f), 1f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-489f - 482f))), _wgslsmith_f_op_f32(abs(-1607f)), -1049f));
    let var_2 = select(!func_3(), var_1.a.wwx, vec3<bool>(var_1.a.x, !var_1.a.x, !var_1.a.x));
    let var_3 = Struct_2(var_0.x, vec3<u32>(min(29277u, _wgslsmith_sub_u32(123960u, min(5014u, 4294967295u))), 98181u, 1u), Struct_1(vec2<u32>(firstTrailingBit(~4294967295u), ~1u), vec3<bool>(true, all(vec3<bool>(var_2.x, var_1.a.x, false)), all(vec2<bool>(var_1.a.x, var_0.x))), var_1.c.zx, _wgslsmith_mult_i32(-7809i, ~35458i)), !var_1.a.x);
    let var_4 = _wgslsmith_add_u32(~abs(1u) & ~var_3.c.a.x, ~37439u);
    return Struct_1(_wgslsmith_div_vec2_u32(var_3.c.a, vec2<u32>(1u, 33216u)), func_4(var_3).yzz, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_3.c.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(616f, 720f)) - var_1.c.xz))), 1i);
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = arg_2.a.x;
    return Struct_2(!(!all(select(vec3<bool>(arg_2.b.b.x, true, true), vec3<bool>(true, arg_2.b.b.x, true), arg_2.b.b))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(19658u, 0u), _wgslsmith_add_u32(arg_2.b.a.x, 0u), arg_2.b.a.x), (abs(vec3<u32>(4294967295u, 22812u, arg_2.b.a.x)) << (vec3<u32>(arg_2.b.a.x, arg_2.b.a.x, arg_2.b.a.x) % vec3<u32>(32u))) & ~(~vec3<u32>(arg_2.b.a.x, 11889u, arg_2.b.a.x)), ~(~vec3<u32>(1u, 21267u, arg_2.b.a.x))), arg_2.b, false);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, 871f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-712f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(-782f, arg_0.x, false)))))));
    let var_1 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-541f, _wgslsmith_f_op_f32(f32(-1f) * -951f), any(vec4<bool>(true, true, true, true)))) - -210f), 0i, Struct_4(u_input.a.yy, func_2()));
    var var_2 = vec2<i32>(~u_input.a.x, -abs(arg_1.x)) ^ -vec2<i32>(1i, (-1i << (var_1.c.a.x % 32u)) >> (~1u % 32u));
    var var_3 = var_1.c.b.x;
    var_2 = vec2<i32>(u_input.a.x, var_1.c.d);
    return -930f;
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_add_vec4_u32(~vec4<u32>(0u, arg_0.c.a.x, abs(~4294967295u), ~arg_0.c.a.x), ~(~(~(~vec4<u32>(1u, 40107u, arg_0.b.x, 62733u)))));
    var var_1 = Struct_5(~_wgslsmith_mod_u32(12759u, ~arg_0.b.x), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, abs(16786i)), vec2<i32>(arg_0.c.d, -7541i) << (select(vec2<u32>(4294967295u, arg_0.b.x), var_0.zx, arg_0.c.b.xz) % vec2<u32>(32u))), u_input.a.x));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_u32(arg_0.b.xy, var_0.zw), func_3(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_2, vec2<f32>(1081f, arg_0.c.c.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 1826f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c.c.x, 457f) + arg_0.c.c)))), !all(!vec4<bool>(arg_0.a, arg_0.d, arg_0.d, arg_0.d)))), -2147483647i);
    var_0 = _wgslsmith_mod_vec4_u32(max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.a, 4294967295u, var_0.x, 13818u), vec4<u32>(0u, 66660u, 3531u, var_0.x), ~vec4<u32>(2745u, arg_0.c.a.x, 0u, 61411u)), _wgslsmith_mod_vec4_u32(reverseBits(abs(vec4<u32>(1u, var_2.a.x, arg_0.b.x, var_0.x))), abs(vec4<u32>(31681u, 1u, var_2.a.x, var_0.x)))), ~(abs(~vec4<u32>(var_0.x, 1u, var_1.a, 0u)) << (~vec4<u32>(var_0.x, var_1.a, var_1.a, 129243u) % vec4<u32>(32u))));
    var var_3 = ~var_0.x;
    return 1707f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(func_6(Struct_2(true, vec3<u32>(1u, 1u, 1u), Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(16054u, 4294967295u)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(801f, -1847f)), u_input.a.x), true), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1179f, -309f, 1221f) - vec3<f32>(-799f, 175f, -765f)))), ~(-vec2<i32>(u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-389f, _wgslsmith_f_op_f32(abs(-121f))))), firstTrailingBit(u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(774f + _wgslsmith_div_f32(-1247f, -1000f))));
    let var_1 = Struct_5(43773u, vec2<i32>(~(~0i << (select(1u, 90956u, true) % 32u)), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, 1i, 33857i, u_input.a.x)), u_input.a)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), func_2().c.x, 265f, var_0.x);
    var var_3 = ~(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(var_1.b, -vec2<i32>(-8463i, -3441i)), 7207i, -var_1.b.x) >> ((~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.a, var_1.a, var_1.a, 4294967295u), vec4<u32>(var_1.a, 6438u, 0u, 4294967295u)) ^ select(~vec4<u32>(var_1.a, var_1.a, 0u, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, var_1.a, 52405u, var_1.a), vec4<u32>(var_1.a, 26333u, var_1.a, var_1.a)), true)) % vec4<u32>(32u)));
    let var_4 = Struct_1(vec2<u32>(var_1.a, 44310u), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_2.x), (i32(-1i) * -12927i) << ((var_1.a | 1u) % 32u), Struct_4(vec2<i32>(42344i, _wgslsmith_add_i32(19048i, var_1.b.x)), func_2())).c.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(var_0.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)))))), var_1.b.x & 1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, var_2.zwy);
}

