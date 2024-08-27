struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-545f, -1101f, 283f, 701f), vec4<f32>(701f, -1550f, 356f, 1000f), vec4<f32>(-492f, 1144f, 192f, 1339f), vec4<f32>(-253f, 125f, -563f, 1565f), vec4<f32>(-1795f, -2230f, -1605f, -177f));

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(-1000f, Struct_1(vec2<bool>(true, true), -41847i)), Struct_2(325f, Struct_1(vec2<bool>(true, true), -63375i)), Struct_2(-435f, Struct_1(vec2<bool>(true, true), -33536i)));

var<private> global2: Struct_2 = Struct_2(703f, Struct_1(vec2<bool>(true, false), 1879i));

var<private> global3: array<bool, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    var var_0 = arg_1 | select(global2.b.b, ~arg_1, true);
    var var_1 = Struct_1(vec2<bool>(!(!any(vec4<bool>(false, global2.b.a.x, false, false))), global2.b.a.x), ~1i);
    var_1 = Struct_1(select(select(vec2<bool>(true, !global2.b.a.x), !vec2<bool>(var_1.a.x, global3[_wgslsmith_index_u32(arg_0, 6u)]), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a | 45806u), 6u)]), vec2<bool>(_wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(1000f + global2.a), any(!var_1.a)), !select(!global2.b.a, var_1.a, select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 6u)]), vec2<bool>(global2.b.a.x, global3[_wgslsmith_index_u32(arg_0, 6u)]), false))), _wgslsmith_dot_vec2_i32(min(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_1.b), vec2<i32>(arg_1, 50004i), vec2<i32>(-2147483647i, global2.b.b)), select(vec2<i32>(var_1.b, arg_1), vec2<i32>(arg_1, arg_1), global2.b.a.x)), vec2<i32>(arg_1 | -30485i, firstTrailingBit(arg_1))), vec2<i32>(0i << ((u_input.a >> (u_input.a % 32u)) % 32u), 19657i)));
    let var_2 = 2147483647i;
    let var_3 = vec3<u32>(u_input.a, _wgslsmith_div_u32(64425u, 36648u ^ ~(u_input.a | 1u)), 75375u);
    return 4294967295u;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    global0 = array<vec4<f32>, 5>();
    let var_0 = Struct_1(global2.b.a, -78102i);
    var var_1 = u_input.a;
    let var_2 = var_0.a.x;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return vec3<bool>(false, false, !(~u_input.a >= _wgslsmith_mult_u32(0u, 1u)) || arg_0);
}

fn func_2() -> u32 {
    let var_0 = all(!vec4<bool>(select(true, global2.b.a.x, global3[_wgslsmith_index_u32(u_input.a, 6u)]) && global2.b.a.x, global2.b.a.x, true, any(select(global2.b.a, global2.b.a, global3[_wgslsmith_index_u32(u_input.a, 6u)]))));
    var var_1 = u_input.a;
    let var_2 = !any(func_4(global3[_wgslsmith_index_u32(func_3(1u, -1i, vec2<f32>(-1000f, global2.a)) & 0u, 6u)], global1[_wgslsmith_index_u32(abs(u_input.a), 3u)]));
    let var_3 = Struct_1(vec2<bool>(all(select(!vec3<bool>(global2.b.a.x, false, global2.b.a.x), vec3<bool>(var_0, global2.b.a.x, false), false)), all(vec3<bool>(true, !global2.b.a.x, false))), global2.b.b);
    global3 = array<bool, 6>();
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 81583u, 60415u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 41799u) % vec4<u32>(32u))), ~(~vec4<u32>(0u, 34615u, 0u, u_input.a))), vec4<u32>(_wgslsmith_add_u32(37555u >> (~u_input.a % 32u), 7234u), ~u_input.a, 37235u, u_input.a));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global2.b.b, 2147483647i), i32(-1i) * -30122i), -2147483647i, reverseBits(max(global2.b.b, global2.b.b)), ~(~1i)) ^ _wgslsmith_mod_vec4_i32(abs(firstTrailingBit(vec4<i32>(global2.b.b, global2.b.b, global2.b.b, global2.b.b))), vec4<i32>(-24358i, ~global2.b.b, global2.b.b, -global2.b.b)), vec4<i32>(global2.b.b, global2.b.b, -66800i, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, global2.b.b, global2.b.b, 27791i), vec4<i32>(2147483647i, global2.b.b, -10586i, -23343i), false), -vec4<i32>(global2.b.b, global2.b.b, 1i, 27438i))));
    let var_1 = _wgslsmith_clamp_vec2_i32(abs(var_0.wy), ~var_0.xz, -min(~min(var_0.xx, var_0.zy), vec2<i32>(25685i, global2.b.b)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(~u_input.a, 5u)], vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.a - -2726f), _wgslsmith_div_f32(-1100f, -455f))) - global0[_wgslsmith_index_u32(func_2(), 5u)]));
    global1 = array<Struct_2, 3>();
    let var_3 = vec2<u32>(min(~func_2(), 4294967295u) ^ abs(min(u_input.a, u_input.a) >> (20395u % 32u)), 1u);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(i32(-1i) * -1i, -13127i, _wgslsmith_sub_i32(var_1.x, 0i), countOneBits(global2.b.b))), -_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(var_0, var_0), reverseBits(vec4<i32>(44518i, global2.b.b, var_0.x, 4987i)))), vec4<i32>(-6409i, select(-_wgslsmith_mult_i32(global2.b.b, var_1.x), select(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.x, var_0.x, 10849i), vec4<i32>(-41221i, 2147483647i, global2.b.b, 2147483647i)), var_2.x < 322f), global2.b.a.x), countOneBits(-1i), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 6>();
    var var_0 = vec2<i32>(global2.b.b | func_1(), ~_wgslsmith_div_i32(reverseBits(-46466i), -33710i) ^ _wgslsmith_add_i32(_wgslsmith_add_i32(global2.b.b, global2.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-11412i, global2.b.b, global2.b.b, global2.b.b), abs(vec4<i32>(global2.b.b, global2.b.b, -2147483647i, global2.b.b)))));
    let var_1 = ~(vec2<i32>(-1i) * -(~(~vec2<i32>(var_0.x, global2.b.b))));
    var var_2 = _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(select(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.a, 1u, u_input.a) >> (vec3<u32>(1u, u_input.a, 12582u) % vec3<u32>(32u))), min(abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), vec3<u32>(u_input.a, 1u, u_input.a))), !(abs(-15637i) >= _wgslsmith_sub_i32(-73321i, var_1.x))), 5u)] * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(35591u, 5u)] + vec4<f32>(-484f, global2.a, global2.a, 1000f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, global2.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, global2.a, -836f, -1762f) - global0[_wgslsmith_index_u32(u_input.a, 5u)])))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global2.a, global2.a), _wgslsmith_f_op_f32(step(global2.a, 924f)), _wgslsmith_f_op_f32(global2.a - global2.a), -108f) - _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 5u)]))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(round(var_2.x)), Struct_1(global2.b.a, var_1.x));
    global2 = var_3;
    global1 = array<Struct_2, 3>();
    var var_4 = u_input.a;
    var var_5 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(1291f, ~vec2<u32>(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(21334u, 1u)), u_input.a | _wgslsmith_dot_vec4_u32(vec4<u32>(13536u, u_input.a, 0u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-25492i, -2147483647i, var_1.x) << (vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u)), select(vec3<i32>(global2.b.b, global2.b.b, -39518i), vec3<i32>(var_1.x, var_0.x, var_3.b.b), true)), firstTrailingBit(vec3<i32>(var_0.x, var_3.b.b, 13552i))));
}

