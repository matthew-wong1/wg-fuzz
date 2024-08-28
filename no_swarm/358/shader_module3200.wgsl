struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, false, false, false, true, true, false, false);

var<private> global1: vec3<i32> = vec3<i32>(-341i, -46130i, 2948i);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    return -1136f;
}

fn func_3() -> vec3<i32> {
    let var_0 = !vec3<bool>(true, global0[_wgslsmith_index_u32(~1u, 10u)], false);
    let var_1 = all(select(var_0, var_0, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 10u)] | var_0.x));
    global1 = abs(reverseBits(select(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-77008i, u_input.a, -10265i)), vec3<i32>(-25202i, global2.x, u_input.a)), ~select(vec3<i32>(17760i, -2147483647i, u_input.a), vec3<i32>(1i, 1865i, global1.x), true), vec3<bool>(false, var_1, global0[_wgslsmith_index_u32(~51777u, 10u)]))));
    global1 = firstTrailingBit(vec3<i32>(global1.x, u_input.a, 4772i)) ^ countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, 3195i, 0i) >> (vec3<u32>(43416u, 60181u, 93553u) % vec3<u32>(32u)), vec3<i32>(global1.x, global1.x, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1i, global1.x) | vec3<i32>(-1974i, global1.x, global2.x), vec3<i32>(-11976i, -1i, global1.x))));
    var var_2 = vec4<u32>(4294967295u, reverseBits(abs(_wgslsmith_add_u32(61176u, 50481u))) >> (reverseBits(0u) % 32u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(firstTrailingBit(0u), reverseBits(62181u), 1u, 4294967295u >> (0u % 32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(17403u, 89675u, 1u, 0u), firstLeadingBit(vec4<u32>(4294967295u, 1u, 37764u, 1u)), min(vec4<u32>(38356u, 36794u, 1u, 4294967295u), vec4<u32>(68525u, 0u, 0u, 1u)))), reverseBits(select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(28995u, 13239u, 43898u, 4294967295u), vec4<bool>(false, global0[_wgslsmith_index_u32(81952u, 10u)], var_1, global0[_wgslsmith_index_u32(50697u, 10u)])))), 10558u);
    return _wgslsmith_div_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(28247i ^ u_input.a, abs(u_input.a), 2596i), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.x, 1i, 2147483647i), vec3<i32>(-8492i, u_input.a, global2.x)), -vec3<i32>(global1.x, 2147483647i, -38227i))), vec3<i32>(-2952i, ~(-_wgslsmith_add_i32(-30108i, u_input.a)), u_input.a >> (var_2.x % 32u)));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<i32> {
    let var_0 = vec4<bool>(arg_0.a == _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-arg_0.a)), global0[_wgslsmith_index_u32(firstTrailingBit(abs(arg_1)), 10u)], -1132f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a)))), !(!(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(40770u, arg_1, 94126u, arg_1), vec4<u32>(26752u, arg_1, 1u, 1u)), 10u)] | all(vec2<bool>(false, true)))));
    global1 = vec3<i32>(-global1.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_0.b, 1i) & select(2147483647i, 33505i, true), ~69521i) >> (~52207u % 32u), 26763i);
    global2 = -(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global1.x), vec2<i32>(arg_0.b, _wgslsmith_clamp_i32(global2.x, 81864i, 2147483647i))));
    let var_1 = Struct_2(arg_0.a);
    var var_2 = ~(~global2.x) ^ 2147483647i;
    return _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(func_3(), ~vec3<i32>(global1.x, -19779i, global2.x)), vec3<i32>(-1i, _wgslsmith_sub_i32(-65493i, global2.x >> (5261u % 32u)), 2282i)) | vec3<i32>(25985i, -12907i, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(global1.xx, _wgslsmith_sub_vec2_i32(~global1.xz, global1.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(1305f + -480f)) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(584f)))));
    global1 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(abs(reverseBits(vec3<i32>(u_input.a, 0i, 12845i)) & vec3<i32>(2147483647i, 8671i, -1i)), _wgslsmith_add_vec3_i32(func_2(Struct_1(-171f, 7891i), ~62104u), reverseBits(vec3<i32>(-2147483647i, global1.x, u_input.a)))), firstLeadingBit(~(~vec3<i32>(-49642i, -2443i, global2.x))) >> (_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 19997u, 55270u), vec3<u32>(1247u, 39192u, 0u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    global0 = array<bool, 10>();
    var var_0 = ((~min(vec3<i32>(14737i, u_input.a, 0i), vec3<i32>(1i, global1.x, u_input.a)) & select(vec3<i32>(32209i, 34769i, -2147483647i), firstTrailingBit(vec3<i32>(-1i, -1i, global1.x)), !vec3<bool>(global0[_wgslsmith_index_u32(55134u, 10u)], global0[_wgslsmith_index_u32(23995u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]))) ^ countOneBits(~firstLeadingBit(vec3<i32>(u_input.a, global2.x, 2147483647i)))) & func_2(Struct_1(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(-1000f, 614f))), -1i), firstTrailingBit(firstTrailingBit(~30869u)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1275f - -2038f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f))));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -718f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(582f + -156f), _wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(var_2.a + var_1.a), _wgslsmith_f_op_f32(var_1.a + var_1.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a, var_2.a, 183f, -663f), vec4<f32>(var_1.a, 724f, 569f, var_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, 1808f, var_2.a, var_2.a)), vec4<bool>(true, false, true, true))), !select(vec4<bool>(global0[_wgslsmith_index_u32(120091u, 10u)], false, false, global0[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(3758u, 10u)], global0[_wgslsmith_index_u32(49728u, 10u)], false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(84796u, 10u)], false)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1140f, 736f, -1000f, 351f))) + vec4<f32>(var_2.a, 610f, -458f, 726f))))), 0i << (_wgslsmith_mult_u32(0u, firstTrailingBit(_wgslsmith_clamp_u32(83607u, 74888u, 1u))) % 32u));
}

