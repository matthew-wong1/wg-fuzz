struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 8>;

var<private> global2: Struct_1 = Struct_1(vec4<f32>(-189f, -1464f, -689f, -1304f), -7300i, 1368f, vec2<f32>(-1097f, 475f), true);

var<private> global3: array<vec4<bool>, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, global2.c, -1422f, global2.c) + vec4<f32>(-143f, 950f, 1754f, -838f))))), 2260i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(430f * 1000f), global2.a.x))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, global2.a.x)))), any(vec2<bool>(all(!global3[_wgslsmith_index_u32(69633u, 28u)]), true & all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(79688u, 8u)], global1[_wgslsmith_index_u32(62323u, 8u)])))));
    global0 = _wgslsmith_f_op_f32(max(var_0.d.x, 973f));
    global0 = var_0.a.x;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(sign(global2.c)));
    return _wgslsmith_f_op_f32(global2.d.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-554f)))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(round(-643f)), -1993f) - _wgslsmith_f_op_vec3_f32(global2.a.xwz * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.d.x, -122f, global2.d.x)))))));
    var var_1 = abs(~firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(41582u, 122460u, 24144u, 48805u), vec4<u32>(4294967295u, u_input.a, arg_2, 1u)))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(~(~4294967295u), u_input.a, 74124u, arg_2), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(5094u, 21685u), vec2<u32>(58061u, u_input.a)), 4294967295u, u_input.a, u_input.a));
    global2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), global2.d.x, global2.c, -1349f), reverseBits(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(255f)) + 2483f), var_0.a.x))), global2.a.xw, true);
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2.a * _wgslsmith_f_op_vec4_f32(global2.a + global2.a)), global2.a))), reverseBits(max(2147483647i, ~30921i)), var_0.a.x, var_0.a.zx, all(vec3<bool>(16672u >= u_input.a, false, true)));
    var var_2 = Struct_2(global2.a.wyy);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a.x, -486f, var_2.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> f32 {
    global1 = array<bool, 8>();
    var var_0 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~firstTrailingBit(114806u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, 0u, 60995u)), vec4<u32>(1u, 4294967295u, u_input.a, 74242u)), u_input.a ^ u_input.a, 0u)), ~firstTrailingBit(countOneBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u))));
    let var_1 = ~vec4<i32>(arg_2.x, -(arg_2.x ^ arg_2.x), -200i, abs(global2.b));
    global1 = array<bool, 8>();
    var var_2 = select(vec3<bool>(arg_3, true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], arg_3, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(16257u, 8u)], true), vec3<bool>(true, true, true)), vec3<bool>(false, global2.e, false)))), select(select(select(!vec3<bool>(arg_3, global2.e, false), vec3<bool>(arg_3, arg_3, global2.e), !vec3<bool>(false, global1[_wgslsmith_index_u32(72025u, 8u)], false)), !select(vec3<bool>(global2.e, global1[_wgslsmith_index_u32(0u, 8u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], true), vec3<bool>(arg_3, false, false)), select(!vec3<bool>(arg_3, true, true), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], arg_3, false), !global1[_wgslsmith_index_u32(87443u, 8u)])), vec3<bool>(all(global3[_wgslsmith_index_u32(3169u, 28u)]), arg_3, true), vec3<bool>(false, global2.e || arg_3, true)), !(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global2.e, true)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * -1057f))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(arg_2.b, global2.b, 4294967295u), Struct_2(_wgslsmith_f_op_vec3_f32(global2.a.zxy + vec3<f32>(global2.c, arg_3.a.x, arg_2.c))), max(firstLeadingBit(vec4<i32>(30253i, -3504i, arg_2.b, arg_2.b)), max(vec4<i32>(-27617i, 19873i, global2.b, 1i), vec4<i32>(global2.b, 1i, global2.b, -18080i))), arg_2.e)) + _wgslsmith_f_op_f32(-arg_2.d.x)) - -1061f);
    var var_1 = firstTrailingBit(~vec2<i32>(global2.b, 70354i));
    let var_2 = all(select(vec2<bool>(any(vec4<bool>(global2.e, false, false, true)), false), !select(arg_1, vec2<bool>(true, false), true), all(vec4<bool>(global2.e, global2.e, true, true)) | (false || arg_2.e))) && false;
    let var_3 = !((var_2 && (_wgslsmith_f_op_f32(619f + arg_3.a.x) == _wgslsmith_f_op_f32(-arg_3.a.x))) | true);
    var var_4 = var_1.x;
    return -vec2<i32>(var_1.x, arg_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(reverseBits(~(~func_1(-237f, vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)]), Struct_1(vec4<f32>(-729f, global2.a.x, global2.a.x, -1995f), global2.b, 255f, global2.d, global2.e), Struct_2(global2.a.zyx)))), select(min(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.b, global2.b), vec2<i32>(global2.b, -1i)) ^ countOneBits(vec2<i32>(global2.b, 24029i)), vec2<i32>(~global2.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -43715i), vec3<i32>(3512i, global2.b, -2147483647i)))), vec2<i32>(global2.b, -27029i), true), vec2<bool>(false, select(any(select(vec2<bool>(global2.e, global1[_wgslsmith_index_u32(1u, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)]), global2.e)), global1[_wgslsmith_index_u32(0u, 8u)], any(vec4<bool>(true, global2.e, global1[_wgslsmith_index_u32(12305u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)])))));
    var var_1 = (~(~func_1(global2.a.x, vec2<bool>(true, true), Struct_1(global2.a, -1i, global2.d.x, vec2<f32>(global2.d.x, global2.d.x), true), Struct_2(global2.a.xwz)).x) & min(var_0.x, 58285i)) < max(-var_0.x, -53686i);
    global1 = array<bool, 8>();
    let var_2 = ~vec3<u32>(~u_input.a, u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 11416u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 51896u, 0u, 65175u), vec4<u32>(4294967295u, 1u, u_input.a, 44934u), vec4<u32>(u_input.a, u_input.a, 1u, 0u)))) ^ firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 34002u, 0u) >> (vec3<u32>(4536u, u_input.a, u_input.a) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.a, u_input.a, u_input.a)), max(vec3<u32>(64582u, 0u, u_input.a), vec3<u32>(0u, 27497u, 14658u)))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global2.c)), 1001f)) + -306f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1009f))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(-11672i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-15833i, 2147483647i, 0i), vec3<i32>(global2.b, 1i, -20690i)), vec3<i32>(0i, global2.b, var_0.x) >> (var_2 % vec3<u32>(32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a + global2.a)))) * _wgslsmith_f_op_vec4_f32(sign(global2.a))), firstTrailingBit(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(global2.b), -49468i), _wgslsmith_mult_i32(var_0.x, -1i))), ~(~(i32(-1i) * -2147483647i)));
}

