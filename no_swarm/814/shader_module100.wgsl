struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15>;

var<private> global1: array<i32, 20>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = Struct_5(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), true), true), all(vec3<bool>(false, true, true))), Struct_2(abs(-u_input.c)));
    var var_1 = Struct_1(~(~abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 53503i, u_input.c), vec3<i32>(11503i, 1i, 2147483647i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(abs(-1153f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + 480f), -1100f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2000f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_3 = ~reverseBits(_wgslsmith_sub_u32(1u, firstTrailingBit(1u)) | u_input.a.x);
    var var_4 = Struct_4(Struct_3(!var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f - var_2.x)), _wgslsmith_div_vec4_u32(vec4<u32>(47835u, var_3, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_3, var_3, 0u), vec4<u32>(23418u, var_3, 14876u, u_input.b.x)), u_input.a.x) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, 14439u, u_input.a.x), abs(vec4<u32>(var_3, 0u, var_3, var_3))), vec4<u32>(~firstLeadingBit(0u), 37112u, ~u_input.b.x, _wgslsmith_mult_u32(64457u, var_3) << (u_input.b.x % 32u))));
    return abs(~(var_4.c.x | 78254u) | u_input.b.x);
}

fn func_2() -> i32 {
    var var_0 = abs(global0[_wgslsmith_index_u32(~0u, 15u)]);
    var_0 = select(vec2<u32>(_wgslsmith_sub_u32(~func_3(), ~(1u << (u_input.b.x % 32u))), 1275u), reverseBits(countOneBits(vec2<u32>(0u, abs(u_input.b.x)))), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(vec2<bool>(true, select(false, false, false)), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), !any(vec2<bool>(false, true)))));
    let var_1 = Struct_4(Struct_3(!any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-925f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(182f)) * _wgslsmith_div_f32(957f, -1742f)))), ~abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 24286u, var_0.x), ~vec4<u32>(0u, u_input.b.x, 4294967295u, 1u), vec4<u32>(var_0.x, var_0.x, 1u, 1u))));
    global0 = array<vec2<u32>, 15>();
    let var_2 = Struct_3(!any(select(select(vec2<bool>(false, true), vec2<bool>(false, var_1.a.a), true), select(vec2<bool>(var_1.a.a, false), vec2<bool>(var_1.a.a, false), true), vec2<bool>(true, true))));
    return _wgslsmith_dot_vec4_i32(~(vec4<i32>(-48509i, min(u_input.c, -43699i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 2147483647i, 59980i), vec4<i32>(u_input.c, 1i, global1[_wgslsmith_index_u32(4294967295u, 20u)], 14218i)), 0i) | -_wgslsmith_mult_vec4_i32(vec4<i32>(19911i, u_input.c, global1[_wgslsmith_index_u32(var_1.c.x, 20u)], global1[_wgslsmith_index_u32(15405u, 20u)]), vec4<i32>(-1i, 1i, 24212i, global1[_wgslsmith_index_u32(4294967295u, 20u)]))), vec4<i32>(firstTrailingBit(global1[_wgslsmith_index_u32(var_0.x, 20u)]), ~select(2147483647i | u_input.c, -u_input.c, true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(var_1.c)), ~vec4<u32>(var_0.x, 42292u, var_1.c.x, var_0.x)), 20u)], abs(~global1[_wgslsmith_index_u32(u_input.a.x, 20u)] >> (u_input.a.x % 32u))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_5 {
    var var_0 = abs(select(-countOneBits(vec2<i32>(u_input.c, global1[_wgslsmith_index_u32(43090u, 20u)])) >> (~u_input.b.xz % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, func_2()), min(-vec2<i32>(24204i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(global1[_wgslsmith_index_u32(1106u, 20u)], u_input.c)))), vec2<bool>(true, _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = 819f;
    global0 = array<vec2<u32>, 15>();
    let var_2 = Struct_1(vec3<i32>(1i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(32355i, -30233i), vec2<i32>(u_input.c, -2147483647i))), -firstTrailingBit(var_0.x)) ^ (vec3<i32>(u_input.c >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(49196u, 20u)], var_0.x, 8812i, -27424i), vec4<i32>(35172i, -9500i, u_input.c, 1i)), global1[_wgslsmith_index_u32(~79091u, 20u)]) >> (~vec3<u32>(1u, arg_1, u_input.b.x) % vec3<u32>(32u))));
    let var_3 = select(!select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true)) & true), select(vec4<bool>(true, true, true, _wgslsmith_f_op_f32(exp2(arg_0.x)) <= _wgslsmith_f_op_f32(max(arg_0.x, -127f))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), false), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true)))), 2737i != _wgslsmith_sub_i32(var_2.a.x, ~global1[_wgslsmith_index_u32(arg_1, 20u)])), select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(false, true, false), any(vec2<bool>(false, true)), true, var_2.a.x < 8748i), vec4<bool>(all(vec4<bool>(false, true, true, true)), true, true, any(vec3<bool>(true, false, false)))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(vec4<bool>(false, true, true, false)), any(vec2<bool>(false, true)), false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, -620f <= arg_0.x, true)));
    return Struct_5(var_3.zy, Struct_2(_wgslsmith_dot_vec2_i32(firstLeadingBit(var_2.a.yx), reverseBits(firstTrailingBit(var_2.a.zy)))));
}

fn func_4(arg_0: Struct_5, arg_1: bool, arg_2: bool, arg_3: f32) -> StorageBuffer {
    global0 = array<vec2<u32>, 15>();
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-11905i | _wgslsmith_sub_i32(u_input.c, 1i)), firstLeadingBit(~(-1i)), _wgslsmith_sub_i32(8170i, -1i & max(global1[_wgslsmith_index_u32(11171u, 20u)], arg_0.b.a)), ~(func_1(vec3<f32>(-523f, -378f, -1373f), u_input.b.x).b.a << (29562u % 32u))), _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.b.a ^ -18166i, -28291i, -1i, i32(-1i) * -1i), vec4<i32>(u_input.c, u_input.c, global1[_wgslsmith_index_u32(u_input.a.x, 20u)], func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-590f, arg_3, 804f), vec3<f32>(arg_3, arg_3, arg_3)), ~4294967295u).b.a)));
    var var_1 = Struct_1(vec3<i32>(-(min(-1i, u_input.c) ^ global1[_wgslsmith_index_u32(u_input.a.x, 20u)]), arg_0.b.a, abs(-2147483647i)));
    var var_2 = 0u;
    global0 = array<vec2<u32>, 15>();
    return StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3)) - -1302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2707f)) - arg_3) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1373f, 716f))))), arg_0.a.x)), select(~(0u >> (~u_input.b.x % 32u)), 4294967295u, arg_0.a.x), ~vec4<i32>(abs(-2147483647i), global1[_wgslsmith_index_u32(u_input.a.x >> (_wgslsmith_mult_u32(u_input.b.x, u_input.a.x) % 32u), 20u)], _wgslsmith_add_i32(1i, -32433i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(0i, var_1.a.x), ~(-46387i))), vec4<u32>(countOneBits(min(_wgslsmith_clamp_u32(30106u, u_input.a.x, u_input.b.x), 4294967295u)), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 73907u) ^ vec3<u32>(57907u, u_input.b.x, 8474u), u_input.b)), 31139u, 4294967295u), vec4<u32>(u_input.a.x | min(countOneBits(u_input.b.x), ~4294967295u), u_input.b.x >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(~reverseBits(vec3<u32>(u_input.b.x, 0u, u_input.b.x)), u_input.b), ~(_wgslsmith_div_u32(u_input.b.x, 15508u) & 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(712f, 1462f, 208f))), 23200u), false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1693f * 293f)));
}

