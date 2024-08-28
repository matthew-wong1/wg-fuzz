struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(false, false);

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec2<f32> {
    var var_0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10305i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-68740i, -2147483647i), abs(vec2<i32>(60685i, 1i))), -_wgslsmith_mod_i32(53592i, -1i)), vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(~24081u, ~16429u, u_input.a, u_input.a) % vec4<u32>(32u)));
    global1 = vec2<u32>(~16880u, ~(firstLeadingBit(~global1.x) ^ ~_wgslsmith_add_u32(4607u, global1.x)));
    let var_1 = ~_wgslsmith_div_u32(u_input.a, abs(u_input.a)) << (~(~29751u) % 32u);
    let var_2 = u_input.a;
    global0 = array<bool, 2>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.xx - arg_0.xz));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    var var_1 = Struct_2(arg_0.c, 49707i, select(!select(select(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(var_0.d.a, 2u)]), vec4<bool>(arg_0.c.x, true, true, true), vec4<bool>(var_0.a.x, arg_0.a.x, var_0.c.x, arg_0.c.x)), var_0.a, arg_0.c), vec4<bool>(select(arg_0.a.x, true, var_0.c.x) & global0[_wgslsmith_index_u32(1u, 2u)], any(select(var_0.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], var_0.c.x, false, arg_0.c.x), vec4<bool>(false, false, true, false))), true, !arg_0.a.x & global0[_wgslsmith_index_u32(~34523u, 2u)]), arg_0.a), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(25579u, 1u, u_input.a, var_0.d.a) >> (vec4<u32>(arg_0.d.a, 40142u, global1.x, arg_0.d.a) % vec4<u32>(32u)), firstTrailingBit(firstTrailingBit(vec4<u32>(1u, u_input.a, global1.x, u_input.a))))));
    let var_2 = ~_wgslsmith_div_i32(-var_0.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(44135i, var_0.b), vec2<i32>(-2147483647i, var_0.b)), min(var_0.b, arg_0.b), 1i)) >> (global1.x % 32u);
    var_1 = Struct_2(var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) << (vec2<u32>(var_0.d.a, var_0.d.a) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(reverseBits(-vec2<i32>(-83485i, var_0.b)), firstTrailingBit(reverseBits(vec2<i32>(-1i, -1i))))), !(!var_1.c), var_1.d);
    return 4294967295u;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-565f, 1246f, -744f, -3144f))), vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -573f), -310f), vec4<bool>(true, arg_1, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(570f, -1079f, 203f, 501f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -165f), _wgslsmith_f_op_f32(f32(-1f) * -1928f), 1f)), vec4<bool>(arg_1, !(!arg_1), any(!vec4<bool>(false, arg_1, arg_1, arg_1)), !arg_1 & true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.ww) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - -727f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(var_0.ywy, vec3<bool>(false, global0[_wgslsmith_index_u32(52106u, 2u)], false), arg_1))))));
    let var_2 = _wgslsmith_f_op_f32(724f + 256f);
    global1 = vec2<u32>(min(global1.x, 28056u), select(98369u, _wgslsmith_div_u32(4294967295u, ~1u) ^ u_input.a, global0[_wgslsmith_index_u32(34138u, 2u)]));
    global1 = _wgslsmith_clamp_vec2_u32(arg_0.zz, abs(vec2<u32>(~(~arg_0.x), _wgslsmith_dot_vec3_u32(arg_0, arg_0) << (0u % 32u))), vec2<u32>(_wgslsmith_mult_u32(func_3(Struct_2(vec4<bool>(true, global0[_wgslsmith_index_u32(global1.x, 2u)], arg_1, global0[_wgslsmith_index_u32(1854u, 2u)]), 46584i, vec4<bool>(true, true, true, arg_1), Struct_1(107446u))), 1u), global1.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_0 = !vec4<bool>(!func_1(vec3<u32>(global1.x, 4294967295u, 4294967295u) ^ vec3<u32>(34632u, global1.x, u_input.a), true), all(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(~u_input.a, 2u)])), true, !all(vec3<bool>(true, true, true)));
    global0 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 1538f, 484f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2225f, 2080f, 334f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(970f, -187f, -1987f) * vec3<f32>(322f, 152f, -467f)))))));
    let var_2 = Struct_2(var_0, _wgslsmith_clamp_i32(countOneBits(1i) << (0u % 32u), i32(-1i) * -2410i, 0i) & min(-firstTrailingBit(-39067i), -countOneBits(-15510i)), select(var_0, vec4<bool>(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 2u)], var_0.x, true, global0[_wgslsmith_index_u32(global1.x, 2u)]), true), Struct_1(~0u));
    global0 = array<bool, 2>();
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mult_u32(var_2.d.a, _wgslsmith_div_u32(select(u_input.a, var_3.d.a, true), global1.x)), ~(~(global1.x >> (global1.x % 32u))), var_3.d.a, global1.x), var_3.b, (~reverseBits(vec2<u32>(4294967295u, 5603u)) | min(_wgslsmith_div_vec2_u32(vec2<u32>(var_2.d.a, global1.x), vec2<u32>(4294967295u, var_3.d.a)), vec2<u32>(12903u, 38374u))) | vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, u_input.a), vec2<u32>(43830u, 4294967295u)), abs(vec2<u32>(var_3.d.a, u_input.a))), ~39453u), _wgslsmith_div_vec2_f32(var_1.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(1551f, _wgslsmith_f_op_f32(var_1.x - var_1.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(506f, 559f)), vec2<f32>(-468f, var_1.x)))), ~(~abs(vec2<u32>(var_3.d.a, var_3.d.a)) & vec2<u32>(global1.x >> (4294967295u % 32u), countOneBits(73738u))));
}

