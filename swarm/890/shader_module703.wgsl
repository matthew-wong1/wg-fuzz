struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: u32 = 22345u;

var<private> global2: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0[_wgslsmith_index_u32(4294967295u, 31u)]) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1608f) - vec2<f32>(719f, global0[_wgslsmith_index_u32(35758u, 31u)]))), max(~6541u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 66510u, 0u), vec3<u32>(0u, 85838u, 1u))), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false), vec4<f32>(global0[_wgslsmith_index_u32(select(27873u, 0u, true), 31u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(52561u, 31u)], 735f)), _wgslsmith_f_op_f32(1160f + 745f), global0[_wgslsmith_index_u32(~0u, 31u)])), vec3<f32>(-409f, -784f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(69069u, 31u)] * -624f) * _wgslsmith_f_op_f32(f32(-1f) * -372f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(763f)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(9210u, 31u)])))) > _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)]))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(37239u, 31u)])), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 0u), vec3<u32>(28065u, 8679u, 1u)), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec4<bool>(all(vec4<bool>(false, true, false, false)), false, true, all(vec4<bool>(false, false, false, false))), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(69009u, 31u)] * global0[_wgslsmith_index_u32(0u, 31u)]), 624f, _wgslsmith_f_op_f32(443f + global0[_wgslsmith_index_u32(4294967295u, 31u)]), -2811f))));
    global0 = array<f32, 31>();
    let var_2 = firstLeadingBit(abs(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.a.d.b), vec2<u32>(var_1.a.a.b, 23520u), vec2<u32>(19155u, var_1.a.d.b)), vec2<u32>(0u, 4294967295u) & vec2<u32>(var_1.a.d.b, 4294967295u))) >> (countOneBits(~abs(vec2<u32>(var_1.a.a.b, var_1.a.a.b))) % vec2<u32>(32u)));
    global2 = true;
    return var_2.x;
}

fn func_2() -> u32 {
    var var_0 = vec3<f32>(global0[_wgslsmith_index_u32(~countOneBits(1u), 31u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(func_3(), 4294967295u), 31u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] + -1000f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 31u)]))))));
    var var_1 = !vec2<bool>(any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true))), any(vec4<bool>(true, true, true, u_input.a.x == 20003i)));
    var var_2 = -22134i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_0.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-281f, 336f)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27102u, 31u)]), -525f))), 1u, var_1.x, select(vec4<bool>(var_1.x, !any(vec4<bool>(var_1.x, true, true, false)), true, var_1.x), !vec4<bool>(any(vec2<bool>(var_1.x, true)), true, var_1.x, any(vec3<bool>(false, true, false))), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(36871u, 31u)], -514f, -1702f, global0[_wgslsmith_index_u32(4294967295u, 31u)]) + vec4<f32>(194f, -687f, 673f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, 231f, -359f, 969f) * vec4<f32>(global0[_wgslsmith_index_u32(42017u, 31u)], 198f, -1265f, -635f))))));
    var_1 = vec2<bool>(!var_3.c & var_3.d.x, false);
    return 0u;
}

fn func_1() -> vec4<u32> {
    global2 = true;
    global2 = false;
    global2 = false;
    let var_0 = vec3<u32>(firstTrailingBit(30174u), 54605u, firstLeadingBit(firstTrailingBit(abs(0u)) | ~4294967295u));
    let var_1 = _wgslsmith_mult_vec2_i32(max(abs(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(12084i, 0i), u_input.d.yw), u_input.d.zz)), vec2<i32>(59007i, max(i32(-1i) * -15805i, -2147483647i))), u_input.d.xx);
    return ~(~select(vec4<u32>(func_2(), var_0.x, _wgslsmith_dot_vec3_u32(var_0, var_0), 115458u), vec4<u32>(var_0.x, 34781u, 1u, var_0.x) & firstTrailingBit(vec4<u32>(1u, 48956u, 41578u, 39541u)), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<f32, 31>();
    global2 = !(false && var_0);
    var var_1 = _wgslsmith_div_vec4_u32(func_1(), vec4<u32>(~reverseBits(_wgslsmith_add_u32(2331u, 17443u)), ~func_2(), 4294967295u & ~func_3(), ~1u));
    global0 = array<f32, 31>();
    var var_2 = countOneBits(firstLeadingBit(_wgslsmith_mult_vec3_u32(var_1.xwy, var_1.yxy)));
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-998f, -1696f))), ~_wgslsmith_add_u32(5657u, 0u) ^ abs(var_2.x), all(select(vec3<bool>(true, false, false), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0))) && true, !vec4<bool>(var_0, any(vec4<bool>(false, var_0, true, var_0)), all(vec4<bool>(var_0, var_0, true, var_0)), true), vec4<f32>(_wgslsmith_f_op_f32(137f * _wgslsmith_div_f32(1031f, -406f)), -679f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34472u, 31u)] * global0[_wgslsmith_index_u32(var_1.x, 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(244f, global0[_wgslsmith_index_u32(var_2.x, 31u)])) + _wgslsmith_div_f32(152f, global0[_wgslsmith_index_u32(var_2.x, 31u)])))), _wgslsmith_mod_u32(var_1.x, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(42666u, var_2.x, 92331u, 24009u), vec4<u32>(var_2.x, var_2.x, 29314u, 50958u)))) & ~(~31741u), select(!vec4<bool>(true, !var_0, false, all(vec4<bool>(false, var_0, var_0, var_0))), vec4<bool>(var_0, true, _wgslsmith_dot_vec4_u32(vec4<u32>(33426u, 0u, 45101u, var_1.x), vec4<u32>(var_2.x, 18914u, var_2.x, var_1.x)) < (13907u >> (var_1.x % 32u)), true), vec4<bool>(true, !any(vec3<bool>(var_0, var_0, var_0)), select(all(vec3<bool>(false, var_0, var_0)), var_0, true), !var_0)));
    var var_4 = countOneBits(~_wgslsmith_div_u32(func_3(), var_2.x));
    var var_5 = func_1().zy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.a.e) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_3.a.e)) * _wgslsmith_f_op_vec4_f32(-var_3.a.e))))), reverseBits(_wgslsmith_mult_vec3_u32(var_1.wxw, ~var_1.zxy)));
}

