struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 4294967295u, 0u, 1u, 73575u, 4294967295u, 166885u, 9639u, 59813u, 1u, 0u, 11531u, 0u, 76132u, 62527u, 1u, 92143u, 28516u, 40219u);

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(2147483647i, 1i), vec2<i32>(1i, -1i), vec2<i32>(-26618i, 18460i), vec2<i32>(-46208i, i32(-2147483648)), vec2<i32>(2147483647i, 17325i), vec2<i32>(i32(-2147483648), 69546i), vec2<i32>(-1i, 2526i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(45346i, -13512i), vec2<i32>(1i, 1i), vec2<i32>(20724i, -2037i), vec2<i32>(-2331i, 2147483647i), vec2<i32>(-58851i, 1728i));

var<private> global2: bool = false;

var<private> global3: vec2<f32> = vec2<f32>(-1468f, -999f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    let var_0 = firstTrailingBit(select(max(-2147483647i, 1i), max(-_wgslsmith_sub_i32(-17296i, 78123i), abs(_wgslsmith_add_i32(-262i, 13934i))), any(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)))));
    global0 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(f32(-1f) * -216f)), global3.x, 1583f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 693f, global3.x, global3.x) * vec4<f32>(-931f, -1370f, global3.x, global3.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, -752f, 248f, global3.x)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -3014f, -244f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) + vec4<f32>(global3.x, 464f, global3.x, global3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(675f, 759f, global3.x, -751f) - vec4<f32>(global3.x, -1856f, global3.x, -894f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-797f, global3.x, global3.x, global3.x))), true))));
    let var_2 = 1000f;
    var var_3 = 577u;
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(var_0, 0i, -4727i, var_0), vec4<i32>(var_0, var_0, -303i, var_0), vec4<bool>(false, true, true, false)) << (vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)]) % vec4<u32>(32u)), vec4<i32>(-72290i, 0i, 2147483647i, 763i)) & _wgslsmith_div_vec4_i32(~(vec4<i32>(-6321i, -37876i, var_0, 2787i) >> (vec4<u32>(1824u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], 1u) % vec4<u32>(32u))), ~firstLeadingBit(vec4<i32>(var_0, var_0, var_0, 1i))), _wgslsmith_div_vec4_i32(~(vec4<i32>(var_0, var_0, -2147483647i, -29926i) << (vec4<u32>(0u, 0u, 27736u, u_input.a) % vec4<u32>(32u))), vec4<i32>(-1i, var_0, _wgslsmith_sub_i32(44005i, var_0), 14772i)));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(min(global3.x, global3.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-423f, -918f), vec2<f32>(-958f, global3.x), true))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(675f, global3.x))))))), vec3<f32>(_wgslsmith_f_op_f32(sign(-2391f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + 1264f)), global3.x), vec3<i32>(func_3(), -28195i, _wgslsmith_mult_i32(firstLeadingBit(0i), -reverseBits(6296i))));
    global1 = array<vec2<i32>, 13>();
    global3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(119f, _wgslsmith_f_op_f32(f32(-1f) * -561f))));
    var_1 = Struct_1(var_1.b.xx, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(254f, _wgslsmith_div_f32(2094f, var_1.a.x), _wgslsmith_f_op_f32(trunc(global3.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_1.b), _wgslsmith_f_op_vec3_f32(-var_1.b), vec3<bool>(true, false, true))))), vec3<f32>(_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(round(var_1.b.x)))), -286f, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(exp2(var_1.b.x))))), firstTrailingBit(var_1.c));
    return abs(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], global0[_wgslsmith_index_u32(96052u, 19u)]), u_input.a, _wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 19u)]), min(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 19u)], 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63946u, 19u)], 19u)])) << (firstTrailingBit(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(52623u, 19u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], 37030u, 86417u))) % vec4<u32>(32u)), ~countOneBits(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], 19u)], 93004u, 1u, global0[_wgslsmith_index_u32(1u, 19u)]))));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global0 = array<u32, 19>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(178f, -364f, true)), arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(-1132f, -1298f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.x, global3.x)), arg_0.x)) + vec3<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x), arg_0.x)), vec3<i32>(-27823i, ~_wgslsmith_sub_i32(abs(-1i), 1i), 0i));
}

fn func_1(arg_0: u32, arg_1: f32) -> vec3<f32> {
    global0 = array<u32, 19>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.x, 610f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, global3.x) + vec2<f32>(arg_1, 2114f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -384f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))))), func_2());
    let var_1 = ~(0u | arg_0);
    global2 = any(vec2<bool>(true, true));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a, 250u);
    let var_1 = ~abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(29117u, var_0.x, u_input.a, 0u) << (vec4<u32>(u_input.a, 1u, 4294967295u, var_0.x) % vec4<u32>(32u)), select(vec4<u32>(72683u, global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.x, 87245u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.x), true))));
    var var_2 = u_input.a;
    global1 = array<vec2<i32>, 13>();
    var var_3 = Struct_1(vec2<f32>(global3.x, -211f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global3.x)), _wgslsmith_f_op_f32(-1186f * global3.x)))))), firstLeadingBit(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1368f, -683f)), 4294967295u).c & min(~vec3<i32>(-1i, 19666i, -2147483647i), vec3<i32>(-1i, 2147483647i, -23702i) >> (vec3<u32>(u_input.a, 60467u, var_1) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-16997i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1287f, func_4(_wgslsmith_f_op_vec2_f32(var_3.a + vec2<f32>(-104f, 124f)), _wgslsmith_sub_u32(var_1, var_0.x)).b.x, 667f, -2698f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, var_3.b.x) + vec4<f32>(454f, global3.x, 1000f, global3.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, -239f, -140f, 2168f) + vec4<f32>(613f, global3.x, 761f, var_3.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1442f, -636f, global3.x, -734f) - vec4<f32>(var_3.a.x, -1522f, global3.x, var_3.b.x))))), (_wgslsmith_f_op_f32(floor(global3.x)) < _wgslsmith_f_op_f32(-var_3.b.x)) == false)), ~4294967295u);
}

