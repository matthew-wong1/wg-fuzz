struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, true, true, false, true, false, true, false, false, false, true, true, true, true);

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(17601i, vec3<bool>(false, false, true)), Struct_1(-1i, vec3<bool>(true, false, true)), Struct_1(2147483647i, vec3<bool>(false, true, false)), Struct_1(16053i, vec3<bool>(false, false, false)), Struct_1(-22487i, vec3<bool>(true, false, false)), Struct_1(-7733i, vec3<bool>(true, false, true)), Struct_1(1i, vec3<bool>(false, true, true)), Struct_1(-2430i, vec3<bool>(true, true, true)), Struct_1(i32(-2147483648), vec3<bool>(false, true, true)), Struct_1(1i, vec3<bool>(true, true, true)), Struct_1(-30143i, vec3<bool>(true, false, true)), Struct_1(43374i, vec3<bool>(false, true, true)), Struct_1(1i, vec3<bool>(false, false, true)), Struct_1(41154i, vec3<bool>(false, false, false)), Struct_1(-31992i, vec3<bool>(true, true, false)), Struct_1(-1i, vec3<bool>(true, true, false)), Struct_1(24874i, vec3<bool>(true, true, false)), Struct_1(35349i, vec3<bool>(false, true, false)), Struct_1(12933i, vec3<bool>(false, false, true)), Struct_1(38579i, vec3<bool>(false, true, true)), Struct_1(-45635i, vec3<bool>(true, false, false)), Struct_1(-13400i, vec3<bool>(true, true, false)), Struct_1(-1i, vec3<bool>(false, true, true)), Struct_1(-27034i, vec3<bool>(true, true, false)), Struct_1(3649i, vec3<bool>(true, false, false)), Struct_1(-9358i, vec3<bool>(true, false, false)), Struct_1(-46477i, vec3<bool>(false, true, true)), Struct_1(-2613i, vec3<bool>(true, true, false)));

var<private> global2: bool;

var<private> global3: i32;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -134f), -672f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, -1103f), -1628f))))));
    global1 = array<Struct_1, 28>();
    let var_1 = abs(~abs(vec2<u32>(1u, 0u)) << (vec2<u32>(0u, min(24787u, 0u) | _wgslsmith_dot_vec2_u32(vec2<u32>(21922u, 1u), vec2<u32>(63155u, 1u))) % vec2<u32>(32u)));
    let var_2 = var_1;
    var var_3 = Struct_1(2147483647i, !arg_0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-435f, -2388f)));
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-340f * -1000f), _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u, 28u)])), _wgslsmith_f_op_f32(-699f - 607f), _wgslsmith_f_op_f32(trunc(1f))) + vec4<f32>(-207f, 161f, 1f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1667f + 605f)))));
    global1 = array<Struct_1, 28>();
    var var_1 = (vec3<u32>(~(~11126u), _wgslsmith_div_u32(~66u, 44866u), _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u) ^ 7204u) | vec3<u32>(reverseBits(~864u), 1u, _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(20743u, 22736u, 16491u)))) | vec3<u32>(1u, ~abs(~1u), ~33186u);
    return Struct_1(u_input.a, !select(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, true), vec3<bool>(false, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(var_1.x, 14u)])), vec3<bool>(false, true, any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], false, global0[_wgslsmith_index_u32(var_1.x, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]))), true & global0[_wgslsmith_index_u32(var_1.x, 14u)]));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> Struct_1 {
    global3 = -1i;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1928f, 1112f, 851f)), vec3<f32>(1f, 1f, 1f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-238f, 1677f, 241f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(989f, -561f, 411f), vec3<f32>(-348f, 563f, 100f), vec3<bool>(arg_0.b.x, true, false))))), arg_0.b))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(631f, 1751f, 1881f), _wgslsmith_div_vec3_f32(vec3<f32>(1319f, -263f, 1048f), vec3<f32>(-1486f, -1140f, 155f)), true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1430f, -837f, -184f), vec3<f32>(-735f, -1839f, -396f), arg_0.b)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-148f, 150f, 523f)))))))));
    let var_1 = !(!(!vec2<bool>(!global0[_wgslsmith_index_u32(1u, 14u)], false)));
    let var_2 = func_2();
    var var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u) >> (~_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, 0u, 1u, 4294967295u), vec4<u32>(0u, 78484u, 1u, 6410u), var_1.x), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<u32>(~1u, 1u << (0u % 32u), 1u, ~(~12060u)) >> (vec4<u32>(15411u, _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(36675u, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(15703u, 51867u), vec2<u32>(68100u, 1u))), ~4294967295u, ~countOneBits(0u)) % vec4<u32>(32u)));
    return func_2();
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global1 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-842f, 202f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1042f, 1145f) - vec2<f32>(-1681f, -459f))), vec2<f32>(-529f, _wgslsmith_f_op_f32(sign(459f))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(686f, 270f))))))));
    var var_1 = func_4(func_2(), arg_0.x, vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.b, -3736i, -3822i), 0i), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-7475i, 25587i, 1i, -1i)), arg_0), arg_0.x ^ 1i, ~(-u_input.a << (abs(6228u) % 32u))));
    let var_2 = var_1.a;
    var var_3 = global1[_wgslsmith_index_u32(1u, 28u)];
    return _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(98060u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 31227u, 1u), vec3<u32>(0u, 1u, 9673u))), max(vec3<u32>(39240u, 2288u, 0u), vec3<u32>(0u, 0u, 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(min(abs(38156u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 55245u), vec2<u32>(99784u, 24557u))) | reverseBits(1u)));
    var var_1 = Struct_1(abs(-6919i), !vec3<bool>(!global0[_wgslsmith_index_u32(1u, 14u)], global0[_wgslsmith_index_u32(abs(func_1(vec4<i32>(-1i, u_input.b, 2996i, u_input.a))), 14u)], !any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], false, false))));
    global0 = array<bool, 14>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1499f);
    var var_3 = vec4<f32>(1000f, -796f, _wgslsmith_f_op_f32(-352f + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(482f + -2123f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1969f, 345f) + _wgslsmith_f_op_f32(-1000f - 1213f))))));
    let var_4 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 67175u, 7620u, 1u)), ~vec4<u32>(29345u, 3480u, 1u, 19652u)), _wgslsmith_add_u32(15087u, select(41702u, 1u, global0[_wgslsmith_index_u32(1u, 14u)])) | 1u), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 28515u), vec2<u32>(17963u, 0u)), abs(1u)) & 29173u, firstLeadingBit(~(~vec3<u32>(4294967295u, 0u, 2416u))), _wgslsmith_add_i32(~(_wgslsmith_dot_vec2_i32(vec2<i32>(-15694i, var_4.a), vec2<i32>(2147483647i, var_4.a)) << (4294967295u % 32u)), 2147483647i), var_3.x, ~(~_wgslsmith_mult_u32(min(4294967295u, 1u), ~4294967295u)));
}

