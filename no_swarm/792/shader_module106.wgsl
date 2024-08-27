struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(0i, 2147483647i, -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    let var_0 = u_input.c;
    global0 = array<i32, 3>();
    let var_1 = Struct_3(firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, 105079u), 3u)]));
    var var_2 = ~vec3<u32>(~u_input.c.x, firstTrailingBit(u_input.a.x), _wgslsmith_div_u32(~select(118777u, var_0.x, false), ~(u_input.c.x >> (u_input.a.x % 32u))));
    let var_3 = _wgslsmith_clamp_u32(~4294967295u, 1u, ~6632u);
    return u_input.c;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_4(1u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-758f, 1000f, 999f)));
    var var_1 = ~abs(-2175i);
    var var_2 = Struct_3(~u_input.b);
    var var_3 = Struct_1(func_3(), vec3<u32>(u_input.c.x >> (arg_2.a % 32u), var_0.a, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~u_input.a.x, var_0.a), ~func_3().x, arg_3.a.x)), true);
    var_1 = _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(var_2.a, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, 0i, u_input.d), vec3<i32>(15665i, u_input.d, u_input.d)), -16906i, global0[_wgslsmith_index_u32(arg_3.b.x, 3u)])), vec4<i32>(i32(-1i) * -1i, 43321i, _wgslsmith_div_i32(reverseBits(38080i ^ var_2.a), firstTrailingBit(-u_input.b)), abs(-28662i)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1482f, -1000f, -154f, 667f) + vec4<f32>(456f, 160f, arg_2.b.x, 2218f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1108f - arg_2.b.x), arg_2.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -931f))), _wgslsmith_f_op_f32(199f - var_0.b.x))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(false, vec2<u32>(25903u, arg_0.x), Struct_4(arg_0.x, vec3<f32>(173f, -566f, -292f)), Struct_1(vec4<u32>(u_input.a.x, u_input.c.x, 0u, u_input.a.x), vec3<u32>(24484u, 1u, 60721u), false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1140f, -388f, 251f, -279f) * vec4<f32>(922f, -1005f, -1732f, 3106f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(547f, -1482f, true))), -1646f, 1000f), select(any(vec4<bool>(true, true, true, true)), true, false))), !any(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, false, true, false), true))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1040f - var_0.x)), !(-1i > u_input.b))))), _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    let var_2 = Struct_3(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~arg_0.x, 3u)], _wgslsmith_sub_i32(-countOneBits(global0[_wgslsmith_index_u32(arg_0.x, 3u)]), abs(-global0[_wgslsmith_index_u32(arg_0.x, 3u)]))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1066f - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), any(vec2<bool>(true, true)) || true)));
    let var_4 = Struct_1(~vec4<u32>((arg_0.x >> (arg_0.x % 32u)) >> (15622u % 32u), _wgslsmith_mult_u32(u_input.a.x, 1u) & u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, u_input.c.x), arg_0.x), u_input.c.x), _wgslsmith_sub_vec3_u32(~vec3<u32>(102930u, ~4294967295u, u_input.a.x), vec3<u32>(arg_0.x, _wgslsmith_div_u32(54431u | u_input.a.x, ~17487u), arg_0.x)), any(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false)), vec2<bool>(true, true), var_3 == _wgslsmith_f_op_f32(-var_3))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(230f + 652f) * _wgslsmith_f_op_f32(1336f + 326f)) - _wgslsmith_f_op_f32(func_1(vec4<u32>(10388u, u_input.c.x, 4294967295u, u_input.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f - -255f))));
    global0 = array<i32, 3>();
    var var_1 = all(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)), !vec2<bool>(any(vec4<bool>(false, false, true, false)), any(vec4<bool>(false, true, false, true))), -240f < _wgslsmith_f_op_f32(-var_0.b.x)));
    let var_2 = select(~(~_wgslsmith_add_vec4_u32(u_input.c, ~u_input.c)), u_input.c, all(vec3<bool>(false, (u_input.d << (var_0.a % 32u)) != global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(0u, 57530u, 1u, 0u)), 3u)], !(0u != var_0.a))));
    var var_3 = vec3<u32>(var_2.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(28205u, 72236u), 1u) | _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.xxy, u_input.c.zxx), firstTrailingBit(4294967295u)), firstTrailingBit(vec2<u32>(var_2.x, 0u))), var_2.x);
    global0 = array<i32, 3>();
    let var_4 = Struct_4(~(_wgslsmith_add_u32(var_3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 28086u, 4294967295u), u_input.c.zyy)) >> (~0u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, -153f), var_0.b)), vec3<f32>(_wgslsmith_f_op_f32(-1967f * -1000f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(1589f - var_0.b.x)))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, -1437f)), var_0.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(u_input.a.x), select(var_0.a, u_input.a.x, true)), u_input.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, var_2.x), u_input.c.wyx)), 0i, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, var_4.a, var_4.a, 13344u), var_2), ~73289u) ^ ~var_4.a, _wgslsmith_add_u32(var_4.a, var_2.x)));
}

