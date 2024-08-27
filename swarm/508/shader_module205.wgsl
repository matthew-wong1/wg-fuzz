struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(512f, 246f, 1183f, 2483f), vec4<f32>(766f, 1210f, 893f, 2170f), vec4<f32>(141f, 325f, 391f, -180f), vec4<f32>(-884f, 1499f, 541f, 1000f), vec4<f32>(-883f, 1375f, 282f, 1097f), vec4<f32>(2338f, -1000f, -1096f, 687f), vec4<f32>(-1690f, 1574f, 717f, -1183f), vec4<f32>(614f, 1995f, -1183f, 525f), vec4<f32>(393f, -1598f, 1712f, 1620f), vec4<f32>(-2213f, 282f, 832f, 164f));

var<private> global1: vec3<i32> = vec3<i32>(0i, 34977i, -1i);

var<private> global2: bool = false;

var<private> global3: array<u32, 17>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = false;
    global0 = array<vec4<f32>, 10>();
    global1 = reverseBits(vec3<i32>(_wgslsmith_mult_i32(global1.x, global1.x | _wgslsmith_mod_i32(global1.x, 1i)), global1.x, 22010i));
    global2 = true;
    var var_1 = ((global1.x & firstTrailingBit(global1.x)) << (24725u % 32u)) <= ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x << (1u % 32u), _wgslsmith_mod_i32(69348i, global1.x)), firstTrailingBit(~global1.xy));
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x << (arg_1.x % 32u), countOneBits(global1.x), -35497i), -(vec3<i32>(global1.x, global1.x, 1i) | vec3<i32>(0i, global1.x, global1.x))), global1.x), vec3<i32>(global1.x, ~_wgslsmith_add_i32(~(-41549i), 24718i), ~abs(~global1.x)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), false, true, any(vec3<bool>(true, true, true))), false), max(~(~countOneBits(vec2<u32>(4294967295u, 0u))), ~vec2<u32>(_wgslsmith_mult_u32(u_input.a, 0u), _wgslsmith_mult_u32(u_input.a, u_input.a))));
    var var_1 = var_0;
    global2 = true;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -557f))) + 405f));
    return var_0;
}

fn func_3() -> i32 {
    global3 = array<u32, 17>();
    var var_0 = true;
    var var_1 = u_input.a;
    var var_2 = func_1(min(31643u, firstTrailingBit(~(~1u))));
    let var_3 = ~vec2<u32>(51597u, _wgslsmith_mult_u32(~firstTrailingBit(4294967295u), global3[_wgslsmith_index_u32(~(~14623u), 17u)]));
    return _wgslsmith_sub_i32(countOneBits(abs(_wgslsmith_dot_vec2_i32(-global1.zy, _wgslsmith_add_vec2_i32(var_2.a, global1.xy)))), select(var_2.b.x, var_2.a.x, any(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, global1.x, 41517i, global1.x), vec4<i32>(76218i, -49821i, -18053i, global1.x)), -5646i)), vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, 4569i), vec2<i32>(global1.x, global1.x)), vec2<i32>(-128770i, 2147483647i)) ^ -global1.x, ~(-1i), countOneBits(global1.x)));
    let var_1 = 4294967295u & abs(u_input.a | _wgslsmith_dot_vec4_u32(select(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 17u)], 17u)], 17u)], 33769u, 6733u, u_input.a), vec4<u32>(96770u, 5756u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 17u)], 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)]), true), ~vec4<u32>(52243u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(98803u, 17u)], 17u)], global3[_wgslsmith_index_u32(u_input.a, 17u)], 25205u)));
    var var_2 = false;
    let var_3 = !vec2<bool>(true, !(all(vec2<bool>(false, false)) | false));
    let var_4 = func_1(35252u);
    global1 = var_0.b;
    let var_5 = -(~func_3());
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, var_4.a.x, vec3<u32>(33331u, global3[_wgslsmith_index_u32(firstLeadingBit(min(u_input.a, 4294967295u)), 17u)], _wgslsmith_dot_vec3_u32(abs(vec3<u32>(3086u, 7575u, var_1)), vec3<u32>(var_1, 23002u, var_1))) | vec3<u32>(~1u, reverseBits(var_1), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 7287u), vec2<u32>(global3[_wgslsmith_index_u32(0u, 17u)], var_1)), vec2<u32>(var_1, 72703u) & vec2<u32>(88921u, global3[_wgslsmith_index_u32(31766u, 17u)]))));
}

