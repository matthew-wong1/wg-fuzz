struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(-10771i), Struct_1(2147483647i), Struct_1(-9946i), Struct_1(10393i), Struct_1(i32(-2147483648)), Struct_1(3147i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(2147483647i), Struct_1(26212i), Struct_1(-1i), Struct_1(1404i), Struct_1(0i), Struct_1(-6416i), Struct_1(1i), Struct_1(1i), Struct_1(6177i), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(61495i));

var<private> global1: i32 = -2169i;

var<private> global2: vec3<u32>;

var<private> global3: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-1000f, -1472f, -795f, -179f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<f32>, arg_3: f32) -> vec3<u32> {
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, global2.x, u_input.c.x, u_input.c.x), vec4<u32>(global2.x, global2.x, u_input.c.x, 36247u), vec4<u32>(global2.x, global2.x, u_input.c.x, 4294967295u)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)) ^ ~_wgslsmith_add_u32(~u_input.c.x, 0u));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1601f - 456f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), -1000f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_2)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(arg_2))))))));
    var var_2 = Struct_1(reverseBits(arg_0));
    var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    var var_3 = Struct_1(_wgslsmith_mult_i32(abs(-min(-48538i, 30815i)), _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.d, var_2.a, -2147483647i) & vec3<i32>(arg_0, u_input.d, 1i)) & vec3<i32>(30737i, arg_0, u_input.a.x), u_input.a)));
    return _wgslsmith_sub_vec3_u32((~vec3<u32>(u_input.c.x, u_input.c.x, 32671u) & ~abs(vec3<u32>(1313u, u_input.c.x, 0u))) << (vec3<u32>(0u, ~34898u, max(u_input.c.x, _wgslsmith_div_u32(9420u, 7325u))) % vec3<u32>(32u)), ~firstLeadingBit((vec3<u32>(global2.x, global2.x, 4294967295u) ^ vec3<u32>(0u, u_input.c.x, 22431u)) << (~vec3<u32>(1u, 1u, global2.x) % vec3<u32>(32u))));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec3_u32(~vec3<u32>(43609u, 1u, u_input.c.x), vec3<u32>(global2.x, 29187u, 0u) << (vec3<u32>(u_input.c.x, 87386u, 4294967295u) % vec3<u32>(32u))) & vec3<u32>(4294967295u, _wgslsmith_mult_u32(global2.x, 4294967295u), global2.x)) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(30111u, u_input.c.x, global2.x)), vec3<u32>(~94767u, 1u, global2.x)), ~(~func_3(arg_1.x, false, vec3<f32>(-979f, -1173f, -463f), 854f)), func_3(_wgslsmith_add_i32(reverseBits(u_input.d), u_input.b.x), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2214f, 486f, -669f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1331f))))) % vec3<u32>(32u));
    var var_1 = vec4<bool>(true, arg_0.x, arg_0.x, true);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -604f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1041f, _wgslsmith_f_op_f32(min(-1674f, 511f))), 364f)) * 521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -927f))));
    global1 = _wgslsmith_add_i32(arg_1.x, countOneBits(u_input.d)) >> (u_input.c.x % 32u);
    global0 = array<Struct_1, 20>();
    return 52194u;
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, u_input.c.x, 1u), vec3<u32>(global2.x, u_input.c.x, global2.x)), vec3<u32>(abs(global2.x), _wgslsmith_div_u32(u_input.c.x, global2.x), ~u_input.c.x)), countOneBits(~vec3<u32>(~1u, u_input.c.x & global2.x, func_2(vec2<bool>(false, false), u_input.b))));
    let var_0 = global0[_wgslsmith_index_u32(~func_3(~35723i, any(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2703f + -1771f) - 552f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1273f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(714f)))), _wgslsmith_f_op_f32(f32(-1f) * -1039f)).x, 20u)];
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1299f, _wgslsmith_f_op_f32(f32(-1f) * -2732f), select(true, false, false))), _wgslsmith_f_op_f32(min(-1501f, _wgslsmith_f_op_f32(-1894f + 292f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(trunc(587f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1216f, -1512f)), _wgslsmith_f_op_f32(-324f * 979f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(min(-265f, -1118f)), -1317f)))));
    var var_2 = ~22883u >= ~countOneBits(~_wgslsmith_clamp_u32(global2.x, global2.x, global2.x));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2158f)) - var_1.x), -652f);
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.zy, countOneBits(select(func_3(~0i, all(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 1125f, 431f)), 477f).xz, vec2<u32>(0u << (global2.x % 32u), 85433u), true | (2147483647i < u_input.b.x)))), 20u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(firstLeadingBit(arg_1.x), ~u_input.c.x, ~1u)), max(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(49079u, u_input.c.x), 27936u, global2.x), vec3<u32>(~arg_1.x, 4294967295u, 889u)), ~(~vec3<u32>(4294967295u, arg_1.x, u_input.c.x) | vec3<u32>(arg_3, 4294967295u, arg_3))));
    global3 = array<vec4<f32>, 1>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-658f * 639f), _wgslsmith_f_op_f32(abs(-321f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-545f)))), all(vec3<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(false, true)), true)))));
    let var_2 = func_1();
    let var_3 = Struct_1(-35969i);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1257f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1729f)))), var_1, _wgslsmith_f_op_f32(trunc(-903f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2137f, 988f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-502f, -561f))))));
    global0 = array<Struct_1, 20>();
    global1 = -_wgslsmith_mult_i32(~(~41191i), -(~16250i));
    var var_1 = var_0.x;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(func_1(), u_input.c, -2147483647i, 35747u)));
    var var_2 = vec4<bool>(true != any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))), true, any(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, global2.x != u_input.c.x, true))), false);
    let var_3 = vec2<f32>(var_0.x, _wgslsmith_f_op_vec3_f32(func_4(func_1(), ~vec2<u32>(7625u, ~25685u), 22112i, select(~u_input.c.x, 0u, var_2.x | var_2.x) ^ u_input.c.x)).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(var_0.x)));
}

