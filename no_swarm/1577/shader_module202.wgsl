struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3) -> f32 {
    var var_0 = arg_1;
    global0 = array<Struct_2, 8>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(-arg_2.b.x))))));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(14136i, ~firstLeadingBit(23144i), i32(-1i) * -u_input.d), u_input.b.zwz), u_input.b.zzy);
    var var_3 = Struct_4(-6449i, global0[_wgslsmith_index_u32(select(0u, _wgslsmith_mod_u32(countOneBits(~110179u), 2104u), true), 8u)]);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -638f) - _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1242f * arg_2.b.x))))), _wgslsmith_f_op_f32(-arg_1));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> vec4<f32> {
    var var_0 = u_input.b.yw;
    var var_1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(612f)) + _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -159f), -2734f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1523f + 1098f)), -1124f), _wgslsmith_f_op_f32(-823f + -588f), 1421f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(arg_2, arg_2, arg_1.x, true), _wgslsmith_f_op_f32(select(-371f, 723f, arg_1.x)), Struct_3(vec4<f32>(-365f, -2013f, 1550f, 567f), vec4<f32>(1498f, -244f, -2067f, 868f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1614f + -1000f) - -1006f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-640f, 421f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-384f)))));
    global0 = array<Struct_2, 8>();
    var_0 = ~(-_wgslsmith_div_vec2_i32(u_input.b.ww | _wgslsmith_add_vec2_i32(vec2<i32>(31366i, 15833i), vec2<i32>(var_0.x, 44205i)), vec2<i32>(~u_input.b.x, -49195i)));
    var var_2 = Struct_2(vec2<i32>(reverseBits(~(-arg_0)), -56670i));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(-var_1.a)))));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-u_input.b.x, select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), false), any(vec3<bool>(true, arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1040f, -1179f, 998f, -941f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1273f, -1909f, -407f, -838f), vec4<f32>(-558f, 115f, 1000f, 1248f), vec4<bool>(true, arg_0, arg_0, arg_0)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(388f, -149f, 598f, 1828f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))));
    var var_1 = Struct_1(-925f, true, vec4<u32>(1u, ~abs(_wgslsmith_add_u32(u_input.c, 0u)), u_input.e, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(1152f, var_0.a.x, arg_0)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1303f - var_0.b.x), 511f))))));
    var var_2 = select(true, true, !(_wgslsmith_div_f32(-189f, var_1.d) > _wgslsmith_f_op_f32(var_1.a * var_1.d))) & (u_input.d == _wgslsmith_clamp_i32(u_input.b.x ^ u_input.d, reverseBits(arg_1.a), 8640i));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1399f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(true, arg_0, var_1.b, true), var_0.b.x, Struct_3(var_0.b, vec4<f32>(var_1.d, 1205f, -166f, -227f)))))), 1000f == var_0.a.x, ~(~vec4<u32>(u_input.e, 0u, 0u, 8509u)) ^ firstTrailingBit(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(21040u, 18802u, u_input.c, 1u), var_1.c), var_1.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.e, 1u, u_input.c), vec4<u32>(31144u, 4294967295u, 57139u, 0u), vec4<u32>(u_input.e, var_1.c.x, 90125u, u_input.c)))), _wgslsmith_f_op_f32(2537f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(567f, -1243f)) + _wgslsmith_f_op_f32(-var_0.b.x))))));
    var var_4 = firstTrailingBit(firstTrailingBit(select(u_input.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(43825i, u_input.b.x, -2147483647i, 1i)), u_input.b), select(vec4<bool>(arg_0, true, true, false), !vec4<bool>(var_1.b, var_1.b, var_1.b, true), var_1.b))));
    return Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -606f))), -390f)), var_3.b, vec4<u32>(abs(abs(var_3.c.x)), 14722u, ~(~28605u), ~4294967295u) & _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(var_3.c, var_1.c, var_1.c), vec4<u32>(u_input.a, var_3.c.x, 11007u, var_1.c.x) << (var_1.c % vec4<u32>(32u))), vec4<u32>(1u >> (u_input.a % 32u), _wgslsmith_div_u32(u_input.a, var_1.c.x), select(u_input.c, var_3.c.x, arg_0), u_input.c)), var_3.d);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = array<Struct_2, 8>();
    let var_0 = max(vec3<i32>(u_input.d, abs(u_input.b.x ^ 2147483647i), -(u_input.b.x ^ 2147483647i)) & (~_wgslsmith_sub_vec3_i32(u_input.b.wyx, vec3<i32>(u_input.d, 0i, -2147483647i)) >> (reverseBits(firstLeadingBit(vec3<u32>(u_input.c, arg_1.x, arg_1.x))) % vec3<u32>(32u))), ~u_input.b.xxz);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(reverseBits(u_input.d), !(!(!vec2<bool>(arg_0.b, arg_0.b))), !arg_0.b)).x));
    var var_2 = select(!(!vec4<bool>(true, true, true || arg_0.b, true)), vec4<bool>(all(vec4<bool>(arg_0.b, all(vec3<bool>(false, arg_0.b, arg_0.b)), true, arg_0.b | true)), arg_0.b && ((arg_0.b || true) & true), func_1(true != any(vec2<bool>(false, false)), Struct_4(-u_input.d, global0[_wgslsmith_index_u32(0u, 8u)])).b, all(vec4<bool>(true, u_input.a >= u_input.a, arg_0.b, arg_0.b || true))), all(select(vec2<bool>(arg_0.a < arg_0.a, all(vec4<bool>(arg_0.b, arg_0.b, false, arg_0.b))), vec2<bool>(all(vec3<bool>(arg_0.b, false, arg_0.b)), true), vec2<bool>(true, arg_0.b))));
    let var_3 = 8510u;
    return -1533f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(159f, 1045f)), -974f, _wgslsmith_f_op_f32(958f * 134f), _wgslsmith_f_op_f32(1640f + -813f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-100f, -669f, -1719f, 1040f))) * vec4<f32>(_wgslsmith_f_op_f32(-1000f + -510f), _wgslsmith_f_op_f32(step(192f, -1016f)), -1586f, _wgslsmith_f_op_f32(step(-2082f, 1046f))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-965f + -1463f))) + _wgslsmith_f_op_f32(func_4(func_1(true, Struct_4(u_input.d, Struct_2(vec2<i32>(29422i, 0i)))), vec2<u32>(u_input.a, u_input.e)))), -1194f));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-var_0.x), Struct_3(vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x), vec4<f32>(-1000f, var_0.x, -878f, var_0.x))))))), all(vec2<bool>(true, true)) & true, ~_wgslsmith_div_vec4_u32(~vec4<u32>(3018u, 1u, 4294967295u, u_input.a) | vec4<u32>(u_input.e, 1u, 1u, u_input.c), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, 32644u, u_input.e, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.e, 37494u, 1u), vec4<u32>(u_input.a, u_input.e, u_input.e, u_input.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-616f - -1136f), var_0.x)));
    let var_2 = Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), u_input.b.xz)), _wgslsmith_sub_i32(firstTrailingBit(u_input.d), ~1i)), u_input.b.wy));
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1734f, -389f, true)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1404f)), var_0.x, !var_1.b))), 202f), true, vec4<u32>(u_input.c | 42620u, min(reverseBits(min(var_1.c.x, 0u)), u_input.e), 0u, ~var_1.c.x & 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(var_0.x * var_1.a))) - 686f));
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_2(-(~(-2147483647i)), vec2<bool>(true, true), !(!var_1.b))).x);
}

