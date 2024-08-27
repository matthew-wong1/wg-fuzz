struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(16914u, 25328u, 0u, 0u), vec4<u32>(94220u, 4294967295u, 27022u, 56922u), vec4<u32>(4294967295u, 34789u, 72657u, 0u));

var<private> global1: array<i32, 14>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(2147483647i), Struct_1(30610i), Struct_1(14504i), Struct_1(16851i), Struct_1(0i));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global2 = array<Struct_1, 5>();
    global1 = array<i32, 14>();
    global0 = array<vec4<u32>, 3>();
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(global1[_wgslsmith_index_u32(25937u, 14u)], global1[_wgslsmith_index_u32(53491u, 14u)], -1i) << (vec3<u32>(38325u, 0u, 38715u) % vec3<u32>(32u))), vec3<i32>(0i, u_input.c.x, _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 2147483647i), u_input.d)))) & global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_mult_u32(4294967295u, 1u)), 14u)];
    let var_1 = _wgslsmith_f_op_f32(sign(-1066f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(176f * _wgslsmith_div_f32(-649f, _wgslsmith_f_op_f32(exp2(var_1)))))) + _wgslsmith_f_op_f32(-var_1));
}

fn func_2(arg_0: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1870f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(420f, 130f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1223f + -1323f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -131f) * _wgslsmith_f_op_f32(f32(-1f) * -1145f))))) - 1f);
    let var_1 = _wgslsmith_add_u32(max(~abs(16961u), _wgslsmith_mod_u32(abs(32452u), firstTrailingBit(_wgslsmith_mult_u32(0u, 10375u)))), 0u);
    var var_2 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(countOneBits(1u), countOneBits(16983u)), ~4294967295u & var_1, ~firstLeadingBit(29980u)), 1u), 5u)], -select(vec4<i32>(-1i) * -vec4<i32>(0i, 17436i, u_input.e, -5267i), _wgslsmith_div_vec4_i32(u_input.b, ~vec4<i32>(46319i, global1[_wgslsmith_index_u32(var_1, 14u)], global1[_wgslsmith_index_u32(7000u, 14u)], global1[_wgslsmith_index_u32(var_1, 14u)])), select(select(vec4<bool>(true, arg_0, true, true), vec4<bool>(arg_0, arg_0, false, false), arg_0), select(vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(false, false, false, true), arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0))));
    global2 = array<Struct_1, 5>();
    return !vec3<bool>(!any(!vec3<bool>(arg_0, arg_0, true)), (_wgslsmith_f_op_f32(round(478f)) < _wgslsmith_f_op_f32(-1791f - -429f)) | arg_0, global1[_wgslsmith_index_u32(~max(var_1, var_1), 14u)] == -(~u_input.c.x));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec4<u32>, 3>();
    let var_0 = u_input.a;
    let var_1 = any(!func_2(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))));
    let var_2 = vec4<bool>(func_2(all(vec2<bool>(true, true))).x, var_1, false, true && any(vec3<bool>(true, true, var_1)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(212f - -882f), _wgslsmith_f_op_f32(min(-487f, -1121f)), 241f, _wgslsmith_f_op_f32(ceil(-1068f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(1327f, -1491f, -499f, 167f), vec4<f32>(-999f, -246f, -655f, -1134f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(159f, 1273f, -1000f, 1237f)))))))));
    return Struct_2(~27394u, -select(~(-17224i), 2147483647i, var_0.x >= -68202i), vec2<u32>(0u, 1u), ~countOneBits(~vec3<u32>(1u, 1u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a;
    var var_1 = any(!vec4<bool>(select(true, true, false), _wgslsmith_dot_vec4_i32(var_0, vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(84181u, 14u)], 1i, 6i)) > u_input.d.x, false, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    let var_2 = func_1(global2[_wgslsmith_index_u32(10064u, 5u)]);
    let var_3 = select(vec2<bool>(select(!any(vec2<bool>(true, true)), false && any(vec3<bool>(false, false, true)), func_2(var_0.x == var_2.b).x), all(func_2(false))), vec2<bool>(any(!func_2(true)), false), true);
    let var_4 = -abs(u_input.b.x);
    var_1 = true;
    var var_5 = 44756u;
    let var_6 = 28442u;
    var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.d));
}

