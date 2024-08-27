struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(0i, -3049i, -1i), vec3<i32>(-27842i, -1i, -1i), vec3<i32>(-35768i, -45387i, -24307i), vec3<i32>(1i, -1i, -4339i), vec3<i32>(-35417i, -35252i, 0i), vec3<i32>(32439i, -12004i, 28298i), vec3<i32>(39732i, -1i, -81731i), vec3<i32>(1i, -2354i, -1i), vec3<i32>(-11036i, 2147483647i, 18871i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(1i, -68919i, -1i), vec3<i32>(1i, -6426i, -6709i), vec3<i32>(20693i, 39304i, -1i), vec3<i32>(2147483647i, 5236i, -71842i), vec3<i32>(-1i, 0i, -48877i), vec3<i32>(2147483647i, 27134i, -43730i), vec3<i32>(i32(-2147483648), -37460i, -36438i), vec3<i32>(48042i, i32(-2147483648), 27199i), vec3<i32>(13041i, 17908i, 10587i), vec3<i32>(2147483647i, 31961i, 15971i), vec3<i32>(33884i, 1i, -78206i), vec3<i32>(-30220i, 1i, i32(-2147483648)), vec3<i32>(2147483647i, 11701i, 447i), vec3<i32>(0i, 2147483647i, 49943i), vec3<i32>(-2164i, -3508i, 2147483647i), vec3<i32>(-1i, -14234i, 43808i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), -95661i, 2147483647i), vec3<i32>(2147483647i, 35722i, 1i));

var<private> global1: vec3<i32>;

var<private> global2: f32 = -1000f;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    global1 = _wgslsmith_add_vec3_i32((global0[_wgslsmith_index_u32(abs(57613u), 30u)] << (~(vec3<u32>(global3.a, global3.a, u_input.a) | vec3<u32>(u_input.a, 40849u, 80748u)) % vec3<u32>(32u))) & vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(5397i, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(u_input.a, 30u)]), 7822i, arg_0.x), u_input.b);
    return 204f;
}

fn func_3(arg_0: bool) -> i32 {
    global3 = Struct_1(23650u);
    global2 = _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec2_i32(select(vec2<i32>(0i, global1.x), countOneBits(global1.yy), vec2<bool>(true, true)) ^ global1.xz, select(firstTrailingBit(u_input.b.xy), min(global1.yy, global1.zx), !vec2<bool>(false, arg_0)) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u)))));
    let var_0 = arg_0;
    global0 = array<vec3<i32>, 30>();
    var var_1 = Struct_1(countOneBits(83421u));
    return _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~(vec4<i32>(46252i, 1i, global1.x, 5500i) & vec4<i32>(0i, global1.x, 1i, u_input.b.x)), ~(vec4<i32>(0i, -1i, -2147483647i, global1.x) >> (vec4<u32>(u_input.a, 4294967295u, 0u, global3.a) % vec4<u32>(32u)))), 1009i) << (select(_wgslsmith_mod_u32(countOneBits(_wgslsmith_div_u32(1u, 10686u)), _wgslsmith_dot_vec4_u32(vec4<u32>(22937u, global3.a, var_1.a, var_1.a), vec4<u32>(32874u, 9540u, 0u, u_input.a)) | u_input.a), global3.a, false) % 32u);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<f32>) -> StorageBuffer {
    global0 = array<vec3<i32>, 30>();
    let var_0 = Struct_1(~countOneBits(_wgslsmith_sub_u32(u_input.a, u_input.a)));
    var var_1 = arg_0;
    var var_2 = ~func_3(false);
    var var_3 = all(!vec3<bool>(true, all(vec3<bool>(true, false, false)), true & (0u <= var_0.a)));
    return StorageBuffer(_wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(abs(arg_0), _wgslsmith_div_vec4_i32(arg_0, arg_0), arg_0), ~select(arg_0, arg_0, vec4<bool>(true, false, true, true)), ~min(-arg_0, arg_0)), -836f, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 30>();
    let var_0 = true;
    global1 = ~(-(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global3.a, max(1u, global3.a), global3.a & u_input.a), 30u)] & u_input.b));
    global1 = _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(36222u, 30u)], ~_wgslsmith_mod_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, -15165i, u_input.b.x), min(global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let x = u_input.a;
    s_output = func_2(reverseBits(vec4<i32>(41012i, 2147483647i, -45770i << (_wgslsmith_add_u32(1u, 1u) % 32u), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.zy))), vec2<f32>(-656f, _wgslsmith_f_op_f32(trunc(1695f))));
}

