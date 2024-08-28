struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(countOneBits(arg_0.a), false), vec3<f32>(1540f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(329f + 841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-925f + -1119f) * _wgslsmith_f_op_f32(step(-1465f, -1543f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(350f)), _wgslsmith_f_op_f32(select(279f, 492f, true)), arg_0.b)))), vec3<f32>(-1359f, _wgslsmith_f_op_f32(160f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-518f, 1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-365f)) * _wgslsmith_f_op_f32(1000f - 827f)) + -1162f)), -1050f);
    var var_1 = Struct_1(arg_0.a, arg_0.b);
    var_1 = arg_0;
    var var_2 = ~countOneBits(~vec3<u32>(4294967295u, u_input.e, 0u)) | ~abs(vec3<u32>(0u, u_input.d, 81497u) >> (u_input.a.yww % vec3<u32>(32u)));
    var_2 = vec3<u32>(2346u, _wgslsmith_clamp_u32(abs(abs(4294967295u)), 87681u, ~4294967295u), 71080u);
    return -_wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(arg_1.x, 2147483647i), 2147483647i & arg_0.a.x, 1i, firstTrailingBit(-13338i)), countOneBits(-arg_0.a));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    let var_0 = Struct_2(Struct_1(select(func_3(Struct_1(vec4<i32>(u_input.b, -2147483647i, 2147483647i, 20641i), false), vec2<i32>(u_input.b, -10386i)), ~vec4<i32>(u_input.b, -6203i, u_input.b, u_input.b), arg_2.x) | (firstTrailingBit(vec4<i32>(-40296i, 15159i, 42994i, u_input.b)) >> (vec4<u32>(96956u, 0u, arg_1, arg_0) % vec4<u32>(32u))), arg_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-756f, 204f, -995f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1779f, -1111f, 726f) - vec3<f32>(305f, -866f, 383f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-206f, -1042f, 1515f)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(733f, 499f, -876f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1187f, 401f, -1554f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1566f, -204f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2078f, -314f, -602f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-815f, -611f, _wgslsmith_f_op_f32(247f + 124f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1011f, 731f, -1595f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(720f, -547f, -657f) - vec3<f32>(2655f, 857f, 1266f)))))), 144f);
    let var_1 = Struct_2(Struct_1(var_0.a.a, !arg_2.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1569f + var_0.d), _wgslsmith_f_op_f32(round(-1000f))), 697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1197f)))))), var_0.b, -301f);
    var var_2 = Struct_1(vec4<i32>(u_input.b, -13927i, _wgslsmith_mult_i32(2147483647i, reverseBits(~var_0.a.a.x)), -u_input.b), true);
    var var_3 = firstTrailingBit(~4294967295u);
    var_2 = var_0.a;
    return _wgslsmith_add_i32(var_2.a.x, -82890i & _wgslsmith_add_i32(~countOneBits(12030i), ~var_2.a.x));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = vec3<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(func_2(u_input.a.x, u_input.e, vec4<bool>(arg_0, false, true, false), false), u_input.b, 1i, _wgslsmith_sub_i32(u_input.b, u_input.b)), -firstTrailingBit(countOneBits(vec4<i32>(u_input.b, -13557i, -28266i, u_input.b)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-387f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-925f, 1094f)))) * _wgslsmith_div_f32(1000f, 1446f)));
    var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1.x, -185f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-520f, var_1.x)), false)) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 882f) + vec2<f32>(480f, 1278f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(743f, var_1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2108f, 119f) * vec2<f32>(-1297f, var_1.x))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(max(vec4<i32>(u_input.b ^ u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -32059i, 2147483647i, -1i), vec4<i32>(u_input.b, -2147483647i, -4444i, u_input.b)), 50743i & u_input.b, u_input.b), vec4<i32>(-1i) * -vec4<i32>(u_input.b, 31064i, u_input.b, u_input.b)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 13896u, u_input.d), u_input.a, _wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(u_input.d, u_input.c, u_input.a.x, 35314u))), vec4<u32>(firstLeadingBit(4294967295u), 20318u, firstLeadingBit(66463u), ~u_input.e)) % vec4<u32>(32u)), false);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -131f), -1000f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-127f)) * 357f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 260f) - _wgslsmith_f_op_f32(func_1(var_0.b))), _wgslsmith_f_op_f32(f32(-1f) * -111f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-479f, _wgslsmith_f_op_f32(-697f * -1472f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1039f, -911f)) * _wgslsmith_f_op_f32(sign(-230f)))) + _wgslsmith_f_op_f32(abs(280f))));
    let var_2 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.x, -1088f, -1398f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, -1267f, -983f), vec3<f32>(var_1.x, var_1.x, -1977f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -656f, -291f) * var_1)))), vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(sign(var_1.x)), true)), var_1.x))));
    var var_3 = select(vec4<bool>(!var_0.b, true, var_0.b, !(~u_input.d > _wgslsmith_sub_u32(4294967295u, 34131u))), !vec4<bool>(false, any(vec4<bool>(true, var_0.b, var_0.b, var_2.a.b)), true, any(select(vec3<bool>(var_2.a.b, var_2.a.b, true), vec3<bool>(var_2.a.b, false, false), vec3<bool>(var_2.a.b, false, true)))), !(!(!vec4<bool>(true, var_2.a.b, var_0.b, false))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(771f)) + var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1649f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2413f, 278f)))), var_2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 769f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(sign(-628f)), var_2.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x * -498f), -449f, var_1.x) + vec3<f32>(-494f, 845f, _wgslsmith_f_op_f32(-var_2.b.x))));
}

