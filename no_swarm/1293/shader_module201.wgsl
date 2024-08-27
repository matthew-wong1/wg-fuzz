struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<i32, 29>;

var<private> global2: array<bool, 18> = array<bool, 18>(false, true, false, true, true, false, false, true, false, true, true, true, true, false, true, false, true, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec3<bool>) -> i32 {
    var var_0 = max(-max(vec4<i32>(abs(global0[_wgslsmith_index_u32(u_input.b, 8u)]), global1[_wgslsmith_index_u32(~4294967295u, 29u)], abs(u_input.a), ~(-1i)), vec4<i32>(u_input.a | 0i, ~0i, 49109i | global1[_wgslsmith_index_u32(1u, 29u)], -1i)), abs(vec4<i32>(reverseBits(u_input.a), u_input.a, global1[_wgslsmith_index_u32(~11619u, 29u)], -814i)));
    global0 = array<i32, 8>();
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 19977i), ~vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(1u, 29u)]) << (firstTrailingBit(vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))), _wgslsmith_div_i32(~(-43481i), u_input.a | (global1[_wgslsmith_index_u32(14276u, 29u)] << (u_input.b % 32u)))), _wgslsmith_mult_vec2_i32(var_0.xx, vec2<i32>(-abs(2147483647i), -abs(global1[_wgslsmith_index_u32(26821u, 29u)]))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    return 0i;
}

fn func_2() -> vec4<f32> {
    let var_0 = abs(select(vec3<i32>(func_3(vec3<bool>(true, false, true)), ~(-27769i), countOneBits(-2147483647i)), -vec3<i32>(-2147483647i, 2147483647i, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 51616u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 11442u, u_input.c, u_input.c)) >= (4294967295u | u_input.b)) | (select(vec3<i32>(1i, 2147483647i, u_input.a), vec3<i32>(-36012i, global1[_wgslsmith_index_u32(u_input.c, 29u)], 25027i) & vec3<i32>(-1i, -1i, 0i), select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 18u)], false, global2[_wgslsmith_index_u32(u_input.c, 18u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 18u)], global2[_wgslsmith_index_u32(1u, 18u)]), global2[_wgslsmith_index_u32(u_input.c, 18u)])) >> (vec3<u32>(~0u, 63518u, ~25751u) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, 107f, -1529f, 1000f)))) - vec4<f32>(-1197f, _wgslsmith_f_op_f32(floor(-204f)), -487f, -739f))));
    var var_2 = Struct_2(-(~(1i ^ global0[_wgslsmith_index_u32(31689u, 8u)])));
    var var_3 = Struct_3(Struct_2(countOneBits(5776i)), vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, u_input.b), 18u)], global2[_wgslsmith_index_u32(u_input.c, 18u)], all(!select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], true, false), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(u_input.c, 18u)]), false)), global2[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(false, ~u_input.c <= 16333u), Struct_2(_wgslsmith_add_i32(~countOneBits(global1[_wgslsmith_index_u32(u_input.b, 29u)]), reverseBits(global0[_wgslsmith_index_u32(u_input.b, 8u)]) >> (~93113u % 32u))), vec2<bool>(!global2[_wgslsmith_index_u32(~1u, 18u)], false));
    let var_4 = -2147483647i;
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(298f + var_1.a.x), var_1.a.x))))), 115f, -494f, -2262f);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1007f, -207f)), _wgslsmith_f_op_f32(-832f - 1206f), -1292f, _wgslsmith_f_op_f32(sign(-1000f)))), select(select(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 18u)], false, global2[_wgslsmith_index_u32(4294967295u, 18u)], true), vec4<bool>(true, true, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 18u)], true, true, global2[_wgslsmith_index_u32(arg_0.x, 18u)])), vec4<bool>(true, true, select(true, true, false), true), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(arg_0.x, 18u)], global2[_wgslsmith_index_u32(u_input.c, 18u)], false), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 18u)], global2[_wgslsmith_index_u32(arg_0.x, 18u)], false))))));
    var var_1 = -414f;
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.a.x, 1092f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x) * _wgslsmith_f_op_f32(-208f - var_0.a.x)))) + var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 34895u, 0u), vec3<u32>(1807u, u_input.b, 1u))) ^ select(vec3<u32>(u_input.b, u_input.c, 50229u), vec3<u32>(4294967295u, 11327u, u_input.b), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], false), vec3<bool>(global2[_wgslsmith_index_u32(28141u, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(77897u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(29152u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)], false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(~vec4<u32>(29204u, 1u, 13143u, u_input.b), -vec4<i32>(global0[_wgslsmith_index_u32(29394u, 8u)], -1i, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(187f, 252f) + 622f), _wgslsmith_f_op_f32(trunc(-381f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-990f, -208f, 701f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 838f, -838f) * vec3<f32>(704f, -463f, 372f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(577f, 177f, -1000f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(532f)), 1073f)) - _wgslsmith_f_op_f32(-1f)), ~(~(min(vec3<u32>(26718u, 4294967295u, u_input.b), vec3<u32>(1u, u_input.c, 0u)) | ~vec3<u32>(u_input.b, 4294967295u, u_input.b))));
}

