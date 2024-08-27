struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: vec4<f32> = vec4<f32>(-720f, -202f, 852f, 294f);

var<private> global2: vec4<u32>;

var<private> global3: array<f32, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> Struct_2 {
    return Struct_2(arg_1.xx, ~(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -58266i, 1i, 0i), vec4<i32>(0i, 0i, -16830i, -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 10815i, 2147483647i), vec4<i32>(-2147483647i, -8541i, 14236i, 1i)), min(-40576i, -2147483647i))), -(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-23705i, -2147483647i, -7374i), vec3<i32>(-33353i, -1i, -8006i)), reverseBits(vec3<i32>(-2147483647i, 2147483647i, -16933i))) ^ _wgslsmith_div_vec3_i32(-vec3<i32>(-5832i, -11861i, -3699i), select(vec3<i32>(2147483647i, 74145i, 10779i), vec3<i32>(-20123i, 44337i, 26427i), vec3<bool>(arg_0, true, arg_0)))), Struct_1(abs(_wgslsmith_add_i32(countOneBits(2147483647i), 0i))), Struct_1(~_wgslsmith_div_i32(i32(-1i) * -2734i, _wgslsmith_clamp_i32(-65941i, 2147483647i, 2147483647i))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-arg_0.a.x), -1271f)) * global1.yxy);
    global2 = vec4<u32>(18732u, arg_1, firstTrailingBit(~(~u_input.a)), arg_1);
    var var_1 = abs(max(~vec4<i32>(arg_0.b.x, -arg_0.c.x, ~(-78677i), arg_0.c.x), countOneBits(reverseBits(vec4<i32>(-2460i, -2147483647i, 23467i, -43450i)))));
    var_1 = min(~max(vec4<i32>(_wgslsmith_add_i32(50790i, -2147483647i), func_2(true, global1.wyw).b.x, var_1.x, -2147483647i), vec4<i32>(firstLeadingBit(0i), arg_0.d.a, ~(-20910i), ~arg_0.b.x)), ~(vec4<i32>(arg_0.d.a, -2147483647i, 2147483647i, var_1.x) | ~vec4<i32>(-20501i, 2147483647i, var_1.x, arg_0.e.a)));
    return Struct_1(-25777i);
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    global3 = array<f32, 5>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -411f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -855f))));
    let var_0 = func_3(func_2(false & all(vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(global1.yyx + vec3<f32>(global3[_wgslsmith_index_u32(~global2.x, 5u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(7554u, 5u)], -943f), global1.x))), arg_0.x);
    global1 = vec4<f32>(-564f, 144f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2117f))))))), global1.x);
    var var_1 = var_0;
    return func_2(true, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.xzz), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3[_wgslsmith_index_u32(arg_0.x, 5u)], global3[_wgslsmith_index_u32(global2.x, 5u)])), -537f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>) -> vec3<u32> {
    global3 = array<f32, 5>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 1534f) * _wgslsmith_f_op_f32(global1.x * arg_1.x)), arg_0.a.x, 1151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))))) * arg_1);
    var var_0 = !(!select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, false))), vec3<bool>(true, select(false, true, true), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true)));
    let var_1 = func_1(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, 33190u), global2.yzy)) << ((~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), global2.zyw) >> (firstTrailingBit(vec3<u32>(u_input.b.x, global2.x, u_input.b.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(-598f * global3[_wgslsmith_index_u32(1u & min(u_input.b.x, ~_wgslsmith_add_u32(u_input.b.x, global2.x)), 5u)]);
    return max(vec3<u32>(~u_input.a, ~abs(1u), 68284u), vec3<u32>(global2.x, select(u_input.b.x, _wgslsmith_div_u32(min(70924u, u_input.b.x), 1u), (2147483647i | arg_0.c.x) >= 14916i), _wgslsmith_add_u32(39884u, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(1u, _wgslsmith_mult_u32(u_input.b.x, 68511u), select(_wgslsmith_mult_u32(~1u, ~global2.x), abs(_wgslsmith_mult_u32(u_input.b.x, global2.x)), false) >> (firstTrailingBit(_wgslsmith_div_u32(1004u, 5458u)) % 32u), u_input.a & _wgslsmith_div_u32(firstLeadingBit(global2.x), ~u_input.a ^ ~1u));
    global0 = global3[_wgslsmith_index_u32(~255u, 5u)];
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1191f * _wgslsmith_div_f32(1173f, -1783f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 5u)]), 446f)))) + _wgslsmith_f_op_f32(187f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-208f)))))), global3[_wgslsmith_index_u32(global2.x, 5u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * global3[_wgslsmith_index_u32(global2.x, 5u)])))), global3[_wgslsmith_index_u32(17239u, 5u)])), -1066f);
    global3 = array<f32, 5>();
    global3 = array<f32, 5>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(abs(global2.x), 5u)])), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(global1.x + 1251f))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(func_4(func_1(global2.xzz), _wgslsmith_div_vec4_f32(vec4<f32>(368f, 344f, -2139f, -568f), vec4<f32>(-1762f, 1223f, global3[_wgslsmith_index_u32(global2.x, 5u)], global1.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(global2.x, global2.x, global2.x)), true), max(~_wgslsmith_sub_vec3_u32(global2.zzy, global2.wyz), _wgslsmith_mult_vec3_u32(global2.wzx, vec3<u32>(u_input.a, u_input.b.x, 0u)))), 5u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-(-_wgslsmith_clamp_i32(1i, -1i, 37940i) | ~func_2(false, vec3<f32>(-225f, -732f, global3[_wgslsmith_index_u32(40708u, 5u)])).d.a), _wgslsmith_sub_i32(-1i, func_3(func_1(firstTrailingBit(global2.wzx)), u_input.b.x).a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1477f, global3[_wgslsmith_index_u32(global2.x, 5u)], _wgslsmith_f_op_f32(f32(-1f) * -2666f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-972f, var_0.x, var_0.x, 404f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global3[_wgslsmith_index_u32(73963u, 5u)], -1529f, 1061f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(562f, -784f, 1473f, 1518f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], 1188f, global1.x))), vec4<bool>(true, true, true, true)))))));
}

