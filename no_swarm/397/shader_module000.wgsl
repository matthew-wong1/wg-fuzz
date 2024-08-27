struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(false, false, false, true, true, false, false, true, true, true, false, true, true);

var<private> global1: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1581f)), 601f, _wgslsmith_f_op_f32(floor(294f)), _wgslsmith_f_op_f32(-414f + 1343f)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1f))));
    let var_2 = 10007i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(637f - _wgslsmith_f_op_f32(-1164f * 266f)), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 13u)])))), var_0.a.x, !(all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_1.x, 13u)], global0[_wgslsmith_index_u32(arg_1.x, 13u)])) | true))));
    global1 = countOneBits(~(~arg_1.x));
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), 650f, _wgslsmith_f_op_f32(-945f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) + var_0.a.x))));
}

fn func_2(arg_0: vec4<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(934f, 153f, 1066f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(209f, 376f, -125f)))), _wgslsmith_f_op_vec3_f32(func_3(min(~vec2<i32>(-2147483647i, u_input.a.x), ~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, u_input.b.x), vec2<i32>(-22991i, -1i))), _wgslsmith_mod_vec3_u32(select(~vec3<u32>(34126u, 0u, u_input.e), vec3<u32>(u_input.e, u_input.e, 4294967295u), global0[_wgslsmith_index_u32(min(u_input.e, u_input.e), 13u)]), _wgslsmith_mod_vec3_u32(~vec3<u32>(7888u, 22014u, u_input.e), vec3<u32>(1u, 4294967295u, u_input.e))))), abs(u_input.e) <= select(~u_input.e ^ u_input.e, 1u, true)));
    global1 = 1u;
    global0 = array<bool, 13>();
    global1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(0u, 4294967295u), 1u), ~vec2<u32>(max(_wgslsmith_clamp_u32(28676u, u_input.e, 22300u), _wgslsmith_clamp_u32(u_input.e, u_input.e, 125159u)), reverseBits(_wgslsmith_sub_u32(u_input.e, 1u))));
    var var_1 = select(vec4<i32>(u_input.d.x, -(countOneBits(-66546i) ^ arg_0.x), -2147483647i, arg_0.x), select(max(_wgslsmith_sub_vec4_i32(u_input.a ^ vec4<i32>(arg_0.x, 13820i, arg_0.x, arg_0.x), arg_0), -countOneBits(u_input.a)), arg_0, select(vec4<bool>(!global0[_wgslsmith_index_u32(27033u, 13u)], !global0[_wgslsmith_index_u32(36147u, 13u)], all(vec4<bool>(global0[_wgslsmith_index_u32(44563u, 13u)], false, true, global0[_wgslsmith_index_u32(u_input.e, 13u)])), global0[_wgslsmith_index_u32(21452u, 13u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 13u)] & true, true), !(global0[_wgslsmith_index_u32(u_input.e, 13u)] && global0[_wgslsmith_index_u32(0u, 13u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.e, u_input.e)), vec2<u32>(u_input.e, u_input.e))), _wgslsmith_mod_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.e, 4294967295u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, u_input.e), vec2<u32>(u_input.e, 4294967295u)) & min(vec2<u32>(4294967295u, u_input.e), vec2<u32>(1u, 17841u)))), 13u)]);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 232f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(-823f + var_0.x)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(arg_0.xx, vec3<u32>(u_input.e, 36223u, u_input.e))).x, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yy * vec2<f32>(var_0.x, 155f))))))));
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = Struct_3(~(~(~u_input.e)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)), vec2<f32>(_wgslsmith_f_op_f32(-1488f * 857f), _wgslsmith_div_f32(arg_0, -1502f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1103f, arg_0)) * _wgslsmith_f_op_vec2_f32(func_2(vec4<i32>(-1i, 1i, u_input.d.x, u_input.b.x))))));
    let var_1 = Struct_1(-u_input.d.x, select(true, all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(~0u, 13u)], !global0[_wgslsmith_index_u32(var_0.a, 13u)])), select(!global0[_wgslsmith_index_u32(73516u, 13u)], true, all(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_0.a, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 13u)], true, false, global0[_wgslsmith_index_u32(66559u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(52523u, 13u)], global0[_wgslsmith_index_u32(u_input.e, 13u)], false, false))))), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 0u, max(u_input.e, 27971u)), vec3<u32>(_wgslsmith_clamp_u32(var_0.a, 51931u, 4518u) << (_wgslsmith_mult_u32(u_input.e, u_input.e) % 32u), 1u, u_input.e)), ~reverseBits(u_input.e));
    var var_2 = u_input.a;
    var var_3 = var_0.b;
    return firstLeadingBit(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<f32>(481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-981f)) + _wgslsmith_f_op_f32(sign(779f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1667f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2143f - -280f) + -1000f), global0[_wgslsmith_index_u32(u_input.e, 13u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1603f))));
    global1 = u_input.e;
    let var_1 = func_1(_wgslsmith_div_f32(-469f, 1022f));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x | ~u_input.c.x, ~_wgslsmith_mod_i32(u_input.d.x, -27101i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d.x, -2147483647i), u_input.a.x << (var_1 % 32u)), _wgslsmith_mod_i32(3678i, i32(-1i) * -45883i)), u_input.a) ^ firstLeadingBit(max(-u_input.c.x & _wgslsmith_mult_i32(u_input.c.x, u_input.c.x), ~select(0i, u_input.b.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, abs(-select(vec2<i32>(var_2, 0i), vec2<i32>(-1i, u_input.c.x), global0[_wgslsmith_index_u32(89934u, 13u)] | global0[_wgslsmith_index_u32(var_1, 13u)])), -1i);
}

