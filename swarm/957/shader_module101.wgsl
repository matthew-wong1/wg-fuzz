struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(i32(-2147483648), vec4<f32>(585f, 1435f, -293f, -946f));

var<private> global1: Struct_1 = Struct_1(-8729i, vec4<f32>(1451f, 1022f, -643f, -802f));

var<private> global2: array<bool, 4>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global2 = array<bool, 4>();
    global2 = array<bool, 4>();
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(~min(vec3<u32>(1u, 385u, 22392u), vec3<u32>(18104u, 14971u, 20203u)), firstTrailingBit(vec3<u32>(1u, 1u, 1u)))), firstTrailingBit(~(_wgslsmith_clamp_u32(18537u, 43292u, 0u) | countOneBits(0u))));
    var var_1 = select(!vec4<bool>(false & (global2[_wgslsmith_index_u32(var_0.x, 4u)] || false), any(vec2<bool>(global2[_wgslsmith_index_u32(10149u, 4u)], false)), false, true), !(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(60535u, 4u)], global2[_wgslsmith_index_u32(var_0.x, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], true), vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 4u)], global2[_wgslsmith_index_u32(var_0.x, 4u)], true, global2[_wgslsmith_index_u32(var_0.x, 4u)]), global2[_wgslsmith_index_u32(var_0.x, 4u)]))), vec4<bool>(false, false, false | (!global2[_wgslsmith_index_u32(var_0.x, 4u)] == global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 4294967295u), 4u)]), global2[_wgslsmith_index_u32(5625u, 4u)] == true));
    var var_2 = Struct_1(min(u_input.a, 19221i), _wgslsmith_div_vec4_f32(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + _wgslsmith_f_op_f32(select(global1.b.x, 915f, global2[_wgslsmith_index_u32(var_0.x, 4u)]))), _wgslsmith_f_op_f32(696f - global0.b.x), _wgslsmith_f_op_f32(-global0.b.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1772f - global1.b.x) * _wgslsmith_f_op_f32(ceil(global0.b.x))), global0.b.x, _wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(global0.b.x - global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + -1186f)))));
    return _wgslsmith_f_op_f32(1233f - _wgslsmith_f_op_f32(f32(-1f) * -156f));
}

fn func_2(arg_0: f32) -> u32 {
    global2 = array<bool, 4>();
    var var_0 = _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1168f - global0.b.x) * _wgslsmith_f_op_f32(-398f + global1.b.x)), _wgslsmith_f_op_f32(-global0.b.x))));
    global0 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1469f * arg_0)), _wgslsmith_f_op_f32(605f * _wgslsmith_f_op_f32(f32(-1f) * -658f)), _wgslsmith_f_op_f32(func_3()), global1.b.x) - global1.b));
    let var_1 = Struct_1(countOneBits(23022i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.b.x, global0.b.x, arg_0, -1530f)))), global0.b))));
    global1 = Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(round(global1.b)));
    return reverseBits(select(firstTrailingBit(reverseBits(1u)), 23778u << (0u % 32u), global2[_wgslsmith_index_u32(1u, 4u)])) ^ firstTrailingBit(~(~max(16112u, 4294967295u)));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(~(-29681i >> (arg_2.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 1341f, -197f, 290f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.b, global0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 213f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-636f, -852f, 153f, -623f)) - _wgslsmith_f_op_vec4_f32(max(global0.b, global1.b)))));
    var var_1 = all(select(!select(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 4u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(0u, 4u)], global2[_wgslsmith_index_u32(arg_1.x, 4u)]), !vec3<bool>(global2[_wgslsmith_index_u32(arg_1.x, 4u)], global2[_wgslsmith_index_u32(7842u, 4u)], true)), vec3<bool>(!all(vec4<bool>(global2[_wgslsmith_index_u32(arg_2.x, 4u)], true, true, global2[_wgslsmith_index_u32(arg_2.x, 4u)])), var_0.b.x != 1000f, false & all(vec2<bool>(true, true))), vec3<bool>(true, global2[_wgslsmith_index_u32(~arg_2.x, 4u)], _wgslsmith_f_op_f32(-851f - global0.b.x) >= _wgslsmith_f_op_f32(trunc(1000f)))));
    var var_2 = Struct_1(~global1.a, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(ceil(global1.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(435f * 218f)), !select(global2[_wgslsmith_index_u32(18481u, 4u)], false, global2[_wgslsmith_index_u32(0u, 4u)]))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1415f - _wgslsmith_f_op_f32(803f + 1088f)))), _wgslsmith_div_f32(-472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1963f + var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) - _wgslsmith_f_op_f32(ceil(-239f)))));
    var var_3 = Struct_1((var_2.a | (~29762i >> (1u % 32u))) | _wgslsmith_dot_vec3_i32(arg_3, -(~vec3<i32>(global0.a, var_2.a, arg_0))), vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-199f - var_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -136f))) + -637f), _wgslsmith_f_op_f32(-global1.b.x)));
    var_2 = Struct_1(_wgslsmith_mod_i32(firstLeadingBit(~(-48572i & var_0.a)), var_0.a ^ global0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(634f, var_0.b.x, var_0.b.x, 1275f))))));
    return Struct_1(~abs(_wgslsmith_sub_i32(u_input.a >> (19867u % 32u), -27607i)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(1322f, _wgslsmith_f_op_f32(503f - 1132f))), _wgslsmith_div_f32(var_2.b.x, _wgslsmith_f_op_f32(exp2(var_3.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, global1.b.x)) + _wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(global0.b.x * 1f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(max(var_3.b.x, var_3.b.x)), var_2.b.x, _wgslsmith_f_op_f32(-1077f * -743f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(107f, -647f, 240f, -224f))))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f * global1.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x)));
    let var_1 = ~firstLeadingBit(-firstLeadingBit(reverseBits(vec3<i32>(arg_2.a, arg_3, arg_3))));
    return func_4(abs(countOneBits(_wgslsmith_clamp_i32(-48197i, u_input.a, arg_2.a) & -1i)), vec2<u32>(36043u, 26978u), vec4<u32>(_wgslsmith_sub_u32(func_2(arg_1), _wgslsmith_mult_u32(34369u, 1u)), ~(~4294967295u), 40335u, 23363u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(1u, 1u, 61737u, 4294967295u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(37092u, 0u, 57005u, 70677u), ~vec4<u32>(55096u, 4294967295u, 1u, 0u), ~vec4<u32>(4294967295u, 32947u, 53765u, 25396u))) % vec4<u32>(32u)), vec3<i32>(~(reverseBits(arg_3) >> (1u % 32u)), max(arg_3, -1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(29932u, 1u, 18931u, 4294967295u), reverseBits(vec4<u32>(4294967295u, 41737u, 4188u, 33861u))) % 32u), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 4>();
    let var_0 = func_1(vec4<i32>(global0.a, global0.a, global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(~global0.a, global1.a >> (4294967295u % 32u), _wgslsmith_clamp_i32(2147483647i, 0i, 5585i), max(2147483647i, -33380i)), ~abs(vec4<i32>(25872i, global0.a, -1i, 0i)))), _wgslsmith_f_op_f32(abs(1549f)), Struct_1(-13777i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1517f, 793f, -1551f, global0.b.x) + vec4<f32>(-202f, global1.b.x, global0.b.x, global1.b.x)))), ~(-global0.a));
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(13583i, -1i, u_input.a), vec3<i32>(-1i, 1i, global0.a), true), -vec3<i32>(-2147483647i, global1.a, u_input.a)) | vec3<i32>(1i, 1i, 1i), firstTrailingBit(countOneBits(-vec3<i32>(-4771i, 0i, -68036i)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * global0.b.x))), 1f, global1.b.x));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(firstLeadingBit(countOneBits(vec2<i32>(0i, 51037i))))), var_1.a, ~(~(~vec2<u32>(64321u, 0u))));
}

