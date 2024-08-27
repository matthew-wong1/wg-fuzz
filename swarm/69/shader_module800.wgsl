struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(1u, 24690u, 4294967295u, 20751u, 33039u, 100466u, 8023u, 4294967295u, 58129u, 0u, 3724u, 4294967295u, 1u, 24046u, 0u, 14449u, 27469u, 49013u, 4294967295u, 0u, 67136u, 0u, 0u, 3105u, 14542u, 37340u, 4635u, 1460u);

var<private> global1: array<u32, 17> = array<u32, 17>(32679u, 4294967295u, 0u, 3086u, 54227u, 54695u, 4294967295u, 9087u, 42979u, 1u, 4294967295u, 40207u, 0u, 1u, 0u, 40636u, 1u);

var<private> global2: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> bool {
    var var_0 = !arg_3;
    var_0 = arg_3;
    let var_1 = 4294967295u;
    return all(!vec3<bool>(!all(vec4<bool>(false, true, true, arg_3)), arg_3, false));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = 0u;
    let var_1 = 44326i;
    var var_2 = vec2<i32>(1i, 2147483647i);
    global2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, arg_1.a.x, arg_1.c.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1665f, -675f)))), _wgslsmith_f_op_vec3_f32(global2.c * vec3<f32>(global2.b, _wgslsmith_f_op_f32(ceil(arg_1.a.x)), -152f))), arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, -239f, 1636f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, -918f, 512f))));
    var_2 = reverseBits(vec2<i32>(~_wgslsmith_clamp_i32(var_1, var_2.x, var_2.x), var_2.x >> (global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 28u)], u_input.a.x, arg_0.x), 28u)] % 32u))) | -firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(-1i, 1i), -1i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(select(arg_1.b, arg_1.a.x, !arg_0.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_u32(arg_0.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(863u, arg_0.x, 16480u), vec3<u32>(99409u, 59930u, u_input.a.x)) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 1u), vec4<u32>(global1[_wgslsmith_index_u32(35127u, 17u)], arg_0.x, 19097u, u_input.a.x)) ^ ~global0[_wgslsmith_index_u32(arg_0.x, 28u)]) % 32u));
    let var_1 = _wgslsmith_f_op_f32(func_4(!select(vec4<bool>(-2147483647i == arg_2, func_3(vec3<u32>(1u, 18055u, arg_0.x), arg_2, vec3<u32>(23389u, 1u, arg_0.x), true), true, arg_1.a), !(!vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a)), any(!vec3<bool>(false, false, arg_1.a))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.c), _wgslsmith_f_op_vec3_f32(-global2.a), !vec3<bool>(false, true, arg_1.a))))), _wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c)))));
    let var_2 = global2.c.x;
    var var_3 = ~_wgslsmith_add_vec4_u32(~select(vec4<u32>(arg_0.x, 42192u, 4294967295u, var_0), abs(vec4<u32>(39615u, 818u, 5889u, 19438u)), select(vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, true, false), true)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(13570u, 25246u, u_input.a.x, 0u), firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], 4294967295u, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(35361u, 28u)]))));
    var_3 = vec4<u32>(4294967295u, 15962u, 0u, 57497u);
    return Struct_2(!any(select(vec4<bool>(arg_1.a, true, false, true), select(vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(true);
    var_0 = func_2(max(vec2<u32>(u_input.a.x | 27796u, 53185u), countOneBits(~vec2<u32>(global0[_wgslsmith_index_u32(24020u, 28u)], 0u))), Struct_2(select(true, true, false & var_0.a)), _wgslsmith_sub_i32(523i, 1i) >> (0u % 32u));
    let var_1 = abs(~(~_wgslsmith_mod_u32(35116u, 16363u) ^ _wgslsmith_sub_u32(u_input.a.x << (global1[_wgslsmith_index_u32(69971u, 17u)] % 32u), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(40477u, global0[_wgslsmith_index_u32(15191u, 28u)]), 17u)])));
    let var_2 = global2.c.x;
    let var_3 = ~vec4<i32>(-1i, 26553i, -_wgslsmith_div_i32(_wgslsmith_mod_i32(17515i, 46117i), -1i), -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 36911i)), vec2<i32>(-21429i, 0i) >> (u_input.a % vec2<u32>(32u))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.a.x, global2.c.x, global2.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2029f, global2.c.x, global2.c.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.c.x, -695f) * global2.a))))), 988f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global2.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, global2.b, global2.c.x) - vec3<f32>(1000f, -2352f, -737f)) - global2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global2.c)), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_vec3_f32(-global2.a));
    var var_0 = select(countOneBits(((vec4<i32>(2147483647i, 2147483647i, -1i, 1i) >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 1u, u_input.a.x) % vec4<u32>(32u))) << (~vec4<u32>(29364u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(1u, 17u)]) % vec4<u32>(32u))) | min(vec4<i32>(1i, 26468i, 2147483647i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i))), -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 1i), vec3<i32>(31044i, 61008i, -24116i)), _wgslsmith_mult_i32(16267i, -2175i)), select(_wgslsmith_add_i32(-1i, -2147483647i), 0i, true), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 1i, -2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(-15205i, 40907i, -2147483647i), vec3<i32>(60406i, 1i, -1i))), abs(1i)), all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)] >= ~68461u, false)));
    let var_1 = var_0.zxw;
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(_wgslsmith_div_vec2_i32(var_1.xz, var_0.xy), countOneBits(vec2<i32>(30627i, var_0.x)), true), ~var_1.zy), vec2<i32>(var_1.x, _wgslsmith_sub_i32(var_1.x, var_1.x))), _wgslsmith_f_op_f32(1185f - global2.c.x), ~(~var_0.wyw), -3915i);
}

