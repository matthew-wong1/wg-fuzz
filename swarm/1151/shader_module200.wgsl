struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(0u, 4294967295u, 1u, 15891u, 17381u, 25405u, 37683u, 0u, 1u, 0u, 1u, 1u, 4294967295u, 2081u, 180u, 4294967295u, 39776u, 4294967295u, 1u, 85549u, 69168u);

var<private> global1: Struct_4 = Struct_4(4294967295u, Struct_2(838f), vec3<bool>(false, false, true), vec2<bool>(false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-794f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_1 = Struct_2(_wgslsmith_div_f32(-986f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(195f, global1.b.a, global1.c.x)))))));
    var var_2 = u_input.b.x;
    global1 = Struct_4(14701u, Struct_2(-1231f), global1.c, vec2<bool>(global0[_wgslsmith_index_u32(~69998u, 21u)] > ~_wgslsmith_sub_u32(1u, 1u), select(select(global1.c.x, global1.d.x, global1.d.x), any(vec2<bool>(global1.c.x, true)), all(global1.c))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a));
    return select(~max(firstLeadingBit(vec4<u32>(61029u, 1u, 1u, 0u)), firstLeadingBit(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 21u)], 21u)], 21u)], global1.a, global0[_wgslsmith_index_u32(20982u, 21u)]))) & vec4<u32>(~(4294967295u ^ global1.a), 1u, ~firstTrailingBit(64305u), 0u), vec4<u32>(firstLeadingBit(33981u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 42740u), 21u)], firstTrailingBit(58724u)) | _wgslsmith_mod_u32(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 21u)]), 117223u), _wgslsmith_div_u32(~global1.a, firstLeadingBit(global1.a)) ^ global1.a, ~global1.a), global1.c.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1u, global1.a), _wgslsmith_add_u32(1u, global1.a), 1u, global1.a), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global1.a, 21u)], 24121u, global0[_wgslsmith_index_u32(global1.a, 21u)], global1.a), vec4<u32>(global1.a, global0[_wgslsmith_index_u32(15292u, 21u)], 30568u, global0[_wgslsmith_index_u32(65572u, 21u)])) ^ firstLeadingBit(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 21u)], 21u)], global1.a, 51689u)), ~vec4<u32>(global1.a, global1.a, 1u, 1u))), func_3());
    var var_1 = !select(true, false, _wgslsmith_f_op_f32(select(global1.b.a, _wgslsmith_f_op_f32(-arg_0.a), true)) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -764f))));
    let var_2 = Struct_1(_wgslsmith_mod_i32(~(~arg_1.x), -2147483647i), var_0.xz);
    var var_3 = !any(select(vec4<bool>(global1.d.x, true, any(vec3<bool>(false, false, false)), true), vec4<bool>(global1.c.x, true, true, global1.c.x), select(vec4<bool>(global1.c.x, false, true, true), select(vec4<bool>(false, global1.c.x, true, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, global1.d.x), vec4<bool>(false, global1.d.x, false, true)), !vec4<bool>(global1.c.x, false, global1.d.x, false))));
    var var_4 = 4718i;
    return global1.c;
}

fn func_1() -> vec2<i32> {
    global1 = Struct_4(countOneBits(global1.a), Struct_2(535f), select(!(!global1.c), global1.c, select(true, true, any(vec3<bool>(global1.c.x, false, true))) & global1.c.x), !global1.c.xy);
    var var_0 = _wgslsmith_mult_u32(abs(firstTrailingBit(~global1.a)), global1.a) | ~1u;
    let var_1 = Struct_3(global1.d, all(func_2(Struct_2(_wgslsmith_f_op_f32(sign(global1.b.a))), u_input.c)));
    global1 = Struct_4(~global1.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.a * -252f)))), vec3<bool>(any(vec2<bool>(true, global1.d.x)), global1.d.x, any(!vec4<bool>(var_1.b, global1.d.x, global1.c.x, false))), vec2<bool>(any(!select(vec3<bool>(var_1.a.x, global1.d.x, global1.d.x), global1.c, var_1.a.x)), true));
    var var_2 = Struct_1(u_input.c.x, vec2<u32>(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], 1065u), abs(vec3<u32>(21322u, global0[_wgslsmith_index_u32(0u, 21u)], global1.a))), ~(~vec3<u32>(18454u, global0[_wgslsmith_index_u32(0u, 21u)], global1.a))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.a, 0u), _wgslsmith_add_u32(38315u, 43280u), global1.a), 71828u)));
    return firstTrailingBit(_wgslsmith_mod_vec2_i32(abs(_wgslsmith_sub_vec2_i32(u_input.b.xy, ~u_input.c)), vec2<i32>(u_input.a, i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global1.b.a, _wgslsmith_f_op_f32(610f * global1.b.a), true)))), _wgslsmith_f_op_f32(global1.b.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) - _wgslsmith_f_op_f32(min(456f, global1.b.a)))))));
    global0 = array<u32, 21>();
    var var_1 = (_wgslsmith_mult_i32(firstTrailingBit(i32(-1i) * -1i), u_input.a & _wgslsmith_clamp_i32(-23277i, 1i, u_input.a)) << (~(~0u) % 32u)) > ~_wgslsmith_dot_vec2_i32(~func_1(), select(u_input.c, vec2<i32>(21663i, -1i), global1.c.x || global1.d.x));
    global1 = Struct_4(global1.a, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1017f, 860f, false)))), global1.c, func_2(Struct_2(var_0.x), -u_input.b.zx).yy);
    let var_2 = global1.c.x;
    var var_3 = ~(-(~(vec4<i32>(1i, 57064i, -17627i, -1i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(global1.a, 21u)], 0u, 0u), vec4<u32>(global1.a, 4294967295u, 1u, 965u)) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, -736f, -427f, -635f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(978f, 1017f, -203f, -1615f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1.b.a, -1000f, var_0.x)))))), ~min(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6606u, 21u)], 21u)], global0[_wgslsmith_index_u32(52764u, 21u)], 1u, global0[_wgslsmith_index_u32(3921u, 21u)]), ~min(vec4<u32>(global1.a, global1.a, 4294967295u, global1.a), vec4<u32>(104686u, 1u, 44570u, 10057u))), ~firstLeadingBit(vec4<u32>(global1.a, 16496u, global0[_wgslsmith_index_u32(0u, 21u)], global1.a)) << (func_3() % vec4<u32>(32u)));
}

