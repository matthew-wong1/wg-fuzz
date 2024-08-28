struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 129f;

var<private> global1: array<bool, 3>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    global1 = array<bool, 3>();
    global0 = _wgslsmith_f_op_f32(-arg_0);
    var var_0 = vec4<bool>(global1[_wgslsmith_index_u32(0u, 3u)], all(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 3u)], false), vec2<bool>(global1[_wgslsmith_index_u32(10642u, 3u)], false), vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 3u)], global1[_wgslsmith_index_u32(u_input.a, 3u)])), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], true), !vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 3u)]))) && true, true, true);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(834f)))))));
    let var_1 = ~vec2<i32>(u_input.e, u_input.b.x);
    return vec2<u32>(~(~(u_input.d.x >> (u_input.a % 32u))), (firstTrailingBit(2651u) ^ 1u) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4323u, global2.x, u_input.a), vec4<u32>(3767u, 4294967295u, global2.x, 11289u)) & global2.x) % 32u)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(14174u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, global2.x, 4294967295u, global2.x), select(vec4<u32>(u_input.d.x, 8363u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, u_input.a, u_input.d.x), vec4<bool>(false, var_0.x, true, global1[_wgslsmith_index_u32(global2.x, 3u)])))), u_input.d);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> f32 {
    let var_0 = ~(_wgslsmith_div_vec2_u32(arg_2.xy ^ ~vec2<u32>(4294967295u, arg_2.x), vec2<u32>(0u, arg_2.x) << (firstLeadingBit(vec2<u32>(arg_2.x, arg_1)) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(reverseBits(func_3(arg_0.c.a)), ~arg_2.zy >> (arg_0.d.ww % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.a)));
    var var_1 = firstLeadingBit(max(~(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b) ^ firstTrailingBit(vec4<i32>(-2147483647i, 27478i, u_input.c, arg_0.a))), -vec4<i32>(firstTrailingBit(-2922i), -15765i, ~u_input.b.x, u_input.e)));
    return 666f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1447f, 582f)), _wgslsmith_f_op_f32(-1061f - -1024f), 731f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(u_input.c, arg_0.b, arg_0.b, arg_0.d, 440i), u_input.d.x, arg_0.d.zww)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a, -971f, arg_0.c.a, arg_0.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.a, -1143f, arg_0.b.a, arg_0.b.a))))));
    global0 = -1272f;
    global0 = -703f;
    var var_1 = min(_wgslsmith_dot_vec4_u32(~arg_0.d, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(global2.x, arg_0.d.x, 0u, 1239u)), vec4<u32>(global2.x, global2.x, 4294967295u, global2.x), vec4<u32>(global2.x, arg_0.d.x, 53679u, arg_0.d.x)), arg_0.d)), _wgslsmith_add_u32(global2.x, _wgslsmith_dot_vec3_u32(~arg_0.d.xzy, ~_wgslsmith_div_vec3_u32(arg_0.d.wyz, arg_0.d.wxw))));
    let var_2 = vec3<i32>(_wgslsmith_div_i32(arg_0.a << (1u % 32u), -_wgslsmith_add_i32(u_input.c, arg_0.e)), arg_1.x, arg_0.e) & -u_input.b.wxx;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f), -180f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-493f + 1359f) + _wgslsmith_f_op_f32(func_1(Struct_2(u_input.c, Struct_1(1000f, global1[_wgslsmith_index_u32(1u, 3u)], vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 3u)], true)), Struct_1(-687f, global1[_wgslsmith_index_u32(1u, 3u)], vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 3u)], global1[_wgslsmith_index_u32(16330u, 3u)])), vec4<u32>(69357u, global2.x, global2.x, 9220u), -43755i), u_input.b.yy))), any(select(select(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 3u)], global1[_wgslsmith_index_u32(u_input.d.x, 3u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(15990u, 3u)], false), global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), !vec3<bool>(global1[_wgslsmith_index_u32(34110u, 3u)], global1[_wgslsmith_index_u32(27801u, 3u)], global1[_wgslsmith_index_u32(global2.x, 3u)]), any(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 3u)], false, false)))), _wgslsmith_f_op_f32(ceil(-236f)) >= 824f, !(u_input.d.x <= u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<i32>(abs(-1i), 0i, 7725i)));
}

