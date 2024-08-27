struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 7>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(select(arg_1, global0.x, false)), _wgslsmith_f_op_f32(abs(592f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1, -2371f, -780f)) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -486f, _wgslsmith_f_op_f32(select(1878f, arg_1, false)), _wgslsmith_f_op_f32(round(global0.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(global0.x - 568f), _wgslsmith_div_f32(global0.x, arg_1))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1495f, global0.x, global0.x, -1967f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, arg_1, arg_1, global0.x)))))));
    let var_1 = global0.x;
    let var_2 = Struct_1(min(arg_3.a, firstTrailingBit(countOneBits(vec2<i32>(arg_2, u_input.c)))), !(!vec4<bool>(true, true, any(arg_3.b.yw), any(vec3<bool>(true, false, false)))), i32(-1i) * -u_input.a);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, 2199f, 1510f, arg_1), vec4<f32>(var_0.x, arg_1, -3944f, var_0.x)))))));
    let var_3 = Struct_2(arg_3, global0.x, Struct_1(arg_3.a, !(!select(var_2.b, arg_3.b, true)), _wgslsmith_mod_i32(-9324i, i32(-1i) * -49928i)), Struct_1(-firstTrailingBit(~vec2<i32>(var_2.a.x, arg_2)), !select(vec4<bool>(var_2.b.x, false, var_2.b.x, false), arg_3.b, !var_2.b), 2147483647i));
    return firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 2065u) ^ vec2<u32>(23605u, 77761u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], global1[_wgslsmith_index_u32(0u, 7u)]) | vec2<u32>(93499u, global1[_wgslsmith_index_u32(760u, 7u)])), vec2<u32>(1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(43972u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(101812u, 7u)], 7u)]), vec3<u32>(46658u, global1[_wgslsmith_index_u32(4294967295u, 7u)], 0u)), 7u)])), firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(global1[_wgslsmith_index_u32(0u, 7u)]), ~0u), 7u)]), ~4294967295u));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~((~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48463u, 7u)], 7u)], global1[_wgslsmith_index_u32(0u, 7u)]), vec4<u32>(4294967295u, 0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)])) | (countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(59013u, 7u)], 95726u, global1[_wgslsmith_index_u32(60248u, 7u)], 1u)) & vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74533u, 7u)], 7u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(38592u, 7u)], 7u)], 31487u))) ^ vec4<u32>(global1[_wgslsmith_index_u32(~5528u, 7u)], func_3(~u_input.c, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_clamp_i32(u_input.b.x, -1i, -14571i), Struct_1(vec2<i32>(-1i, u_input.c), arg_0.d.b, 2147483647i)), ~(~global1[_wgslsmith_index_u32(0u, 7u)]), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 7534u, global1[_wgslsmith_index_u32(6214u, 7u)], 14677u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 16828u, 39935u, 0u)), global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(43713u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9132u, 7u)], 7u)]), 7u)])));
    let var_1 = all(vec3<bool>(any(arg_0.a.b), (all(arg_0.a.b) && true) | select(true, arg_0.d.b.x, !arg_0.d.b.x), ((global1[_wgslsmith_index_u32(4294967295u, 7u)] ^ global1[_wgslsmith_index_u32(1u, 7u)]) << (_wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], var_0.x) % 32u)) >= _wgslsmith_mult_u32(var_0.x, 5933u)));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.b, arg_0.b, -1053f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, global0.x, 399f, arg_0.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -102f, arg_0.b, global0.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, 590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-957f)), _wgslsmith_f_op_f32(global0.x - -412f), _wgslsmith_f_op_f32(1739f + arg_0.b), arg_0.b)))));
    global1 = array<u32, 7>();
    let var_2 = firstLeadingBit(var_0.yy);
    return arg_0;
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_2(arg_0.d, _wgslsmith_f_op_f32(-global0.x), arg_0.d, func_2(arg_0).d);
    var var_1 = firstTrailingBit(~(vec2<u32>(~1u, firstTrailingBit(1410u)) & reverseBits(~vec2<u32>(18052u, 28305u))));
    let var_2 = 10106i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1413f - _wgslsmith_f_op_f32(round(-1520f))))) + -1459f));
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(491f, arg_0.b, 1266f, 296f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b, var_0.b, var_0.b, var_3)))))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-728f, var_3, arg_0.b, _wgslsmith_f_op_f32(sign(1085f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1506f, global0.x, -486f, arg_0.b))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1791f, 1266f, var_0.b, arg_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -890f, 1163f, 1039f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1465f, var_0.b, global0.x, -155f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, arg_0.b, 149f, -1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(333f, var_3, 528f, -946f)))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1538f, 493f, global0.x, global0.x)))) + vec4<f32>(global0.x, -1000f, 692f, _wgslsmith_f_op_f32(global0.x - global0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1440f, -312f, global0.x, global0.x))) + vec4<f32>(-1894f, -1000f, global0.x, global0.x)) * _wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_2(arg_0, -1065f, arg_0, arg_0)))))));
    var var_0 = !arg_0.b.zz;
    global1 = array<u32, 7>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1234f, -1065f, global0.x, global0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global0.x, global0.x, global0.x), vec4<f32>(-266f, 503f, 1000f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1007f, global0.x, 386f) * vec4<f32>(global0.x, global0.x, 1184f, global0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(10524u);
    var var_1 = Struct_1(u_input.b, vec4<bool>(true, true, true, true), abs(u_input.b.x | _wgslsmith_dot_vec2_i32(u_input.b, ~u_input.b)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<i32>(43511i, var_1.a.x), var_1.b, -2147483647i), vec4<bool>(var_1.b.x, true, false, true))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1123f, global0.x, global0.x, -166f)))))));
    let var_2 = var_1.b.x;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~global1[_wgslsmith_index_u32(~4294967295u, 7u)] | _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], global1[_wgslsmith_index_u32(9626u, 7u)], 53u, 29225u), vec4<u32>(48854u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], global1[_wgslsmith_index_u32(8144u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17411u, 7u)], 7u)], 7u)], 7u)], 7u)])), 1u)), 4294967295u), 7u)];
    global1 = array<u32, 7>();
    let var_4 = vec2<f32>(713f, _wgslsmith_f_op_f32(-global0.x));
    var var_5 = Struct_1(abs(_wgslsmith_div_vec2_i32(-vec2<i32>(var_1.a.x, -1i), vec2<i32>(~u_input.c, firstTrailingBit(-28315i)))), !vec4<bool>(~60964u < global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(19584u, 7u)]), 7u)], true, var_1.b.x, var_1.b.x && true), ~54537i);
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-693f)), 381f, 662f, _wgslsmith_f_op_f32(round(global0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1280f, -723f, 952f, -750f), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(var_5.a, vec4<bool>(var_5.b.x, true, false, var_5.b.x), var_1.a.x), var_5.b)))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(836f)))), var_4.x, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(var_4)))), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec2<i32>(_wgslsmith_add_i32(var_1.c, var_5.a.x), _wgslsmith_clamp_i32(-49937i, u_input.b.x, var_1.a.x)), var_5.b, _wgslsmith_div_i32(u_input.b.x >> (106111u % 32u), ~var_5.c)), func_2(func_2(Struct_2(Struct_1(var_1.a, var_1.b, 1i), global0.x, Struct_1(var_1.a, var_5.b, var_5.a.x), Struct_1(var_1.a, vec4<bool>(var_5.b.x, false, true, false), var_5.a.x)))).c.b)).x, vec2<i32>(_wgslsmith_div_i32(abs(firstLeadingBit(var_5.c)), countOneBits(var_1.c)), u_input.a), vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(max(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 4294967295u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 0u)), global1[_wgslsmith_index_u32(1u, 7u)]), 1297u), 7u)], countOneBits(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], 0u, global1[_wgslsmith_index_u32(0u, 7u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(134260u, 7u)], 7u)], 21247u, global1[_wgslsmith_index_u32(39046u, 7u)])))), _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)] | 4294967295u, min(firstTrailingBit(global1[_wgslsmith_index_u32(1u, 7u)]), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58685u, 7u)], 7u)]))));
}

