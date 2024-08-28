struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<u32, 18>;

var<private> global2: f32 = 741f;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: bool) -> bool {
    global2 = 183f;
    var var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~16638u, 0u, ~0u), ~vec4<u32>(1u, 1u, 42957u, 1u) & abs(vec4<u32>(0u, 29244u, u_input.a.x, 46570u))))), 18u)];
    var var_1 = _wgslsmith_sub_vec2_u32(max(~_wgslsmith_mult_vec2_u32(u_input.a.xx, vec2<u32>(0u, 15502u)) ^ ~vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x), abs(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(40127u, 18u)], 68730u, global1[_wgslsmith_index_u32(112026u, 18u)]), vec3<u32>(global1[_wgslsmith_index_u32(1u, 18u)], global1[_wgslsmith_index_u32(10756u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)])), u_input.a.x >> (u_input.a.x % 32u)))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(39521u, 18u)], u_input.a.x, 16344u, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4302u, 18u)], 18u)], 18u)], 18u)], 18u)], 21545u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)]) ^ vec4<u32>(1u, global1[_wgslsmith_index_u32(41666u, 18u)], 75202u, 60845u)), 4294967295u), firstLeadingBit(u_input.a.x)));
    global2 = -684f;
    return true;
}

fn func_2() -> vec2<bool> {
    var var_0 = reverseBits(_wgslsmith_sub_vec4_u32(countOneBits(~_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1[_wgslsmith_index_u32(1u, 18u)], 4294967295u, u_input.a.x), vec4<u32>(11466u, 0u, 4294967295u, u_input.a.x))), ~((vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], u_input.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 18u)], 18u)]) >> (vec4<u32>(31632u, 0u, 4294967295u, 1u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 32543u, global1[_wgslsmith_index_u32(4294967295u, 18u)], 0u), vec4<u32>(4294967295u, 15369u, 89694u, 4294967295u)))));
    var var_1 = Struct_1(!vec4<bool>(true, select(true, false, any(vec4<bool>(true, false, false, false))), ~(-11376i) > u_input.b.x, !any(vec2<bool>(false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1215f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 296f, -1348f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), -1173f) - _wgslsmith_f_op_f32(-1761f - _wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_div_f32(325f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, -919f)))), (_wgslsmith_f_op_f32(-global0.x) <= _wgslsmith_f_op_f32(global0.x * -1150f)) | true)));
    var var_2 = Struct_1(vec4<bool>(var_1.a.x, select(true, !var_1.a.x && true, true), true, !all(var_1.a.yxx)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1188f * global0.x), _wgslsmith_f_op_f32(select(-1084f, var_1.b.x, var_1.a.x)), 1491f))), var_1.b, var_1.a.wwx)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1.c)))));
    var var_3 = Struct_1(select(var_1.a, select(!var_1.a, vec4<bool>(func_3(u_input.b.x, var_2.a.x), var_2.a.x, true, var_1.a.x), var_1.a.x), var_2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), 1634f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) + _wgslsmith_f_op_f32(global0.x * var_1.b.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-397f - -1000f), _wgslsmith_f_op_f32(-global0.x))))));
    var_2 = Struct_1(select(vec4<bool>(true, u_input.b.x < -1i, true, true), vec4<bool>(all(select(vec2<bool>(var_1.a.x, var_3.a.x), var_1.a.ww, var_2.a.x)), all(vec2<bool>(var_1.a.x, var_2.a.x)), true, any(select(vec4<bool>(var_1.a.x, true, false, true), var_1.a, false))), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1328f, -612f, -1080f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2314f, 1330f, var_1.b.x) * var_3.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-576f, -483f, 602f)) + vec3<f32>(global0.x, -1891f, 506f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.c))));
    return select(vec2<bool>(false, any(select(!var_3.a.wyz, vec3<bool>(true, false, var_2.a.x), var_1.a.xwy))), var_1.a.zy, select(var_3.a.xx, !var_1.a.yx, select(!(!var_2.a.xx), !(!vec2<bool>(var_1.a.x, false)), true)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> vec3<u32> {
    global1 = array<u32, 18>();
    var var_0 = select(firstLeadingBit(vec2<i32>(-49849i, 1i)), firstLeadingBit(arg_1.yy), !select(vec2<bool>(true, false), func_2(), func_2().x)) << (u_input.a.xz % vec2<u32>(32u));
    global1 = array<u32, 18>();
    let var_1 = ~0u;
    var var_2 = u_input.a.xy;
    return _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(min(38177u ^ global1[_wgslsmith_index_u32(var_2.x, 18u)], 0u), u_input.a.x), 1u, u_input.a.x), ~u_input.a);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = Struct_1(vec4<bool>(var_0.b.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(sign(-451f))), false, var_1.a.x, !any(!vec3<bool>(true, arg_1.a.x, var_0.a.x))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-756f + var_0.c))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + 534f)), -1386f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))));
    global0 = arg_1.b;
    let var_3 = Struct_1(vec4<bool>(arg_2.x == arg_3.x, var_1.a.x, var_2.a.x, all(vec4<bool>(true, -27798i == u_input.b.x, arg_1.a.x, arg_1.a.x))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(716f))))));
    return !vec4<bool>(var_2.a.x, func_3(~max(23889i, u_input.b.x), true), -(0i ^ u_input.b.x) != ((0i & u_input.b.x) >> (13196u % 32u)), !var_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(max(u_input.b.x & -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(26321i, u_input.b.x, -36023i), vec3<i32>(-5762i, u_input.b.x, u_input.b.x))) | min(min(-1i, u_input.b.x), u_input.b.x), firstTrailingBit(2147483647i)) | -88883i;
    var var_1 = global0.x;
    let var_2 = select(!(!vec2<bool>(true, u_input.a.x > global1[_wgslsmith_index_u32(1u, 18u)])), !vec2<bool>(true, select(true, any(vec2<bool>(false, true)), true)), !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, false, true))), !(0u == global1[_wgslsmith_index_u32(23103u, 18u)])));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1388f, global0.x)), vec3<f32>(global0.x, global0.x, 143f)))))));
    var var_3 = Struct_1(!func_4(-122f, Struct_1(vec4<bool>(false, var_2.x, var_2.x, var_2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) * vec3<f32>(1704f, global0.x, global0.x)), global0.x), reverseBits(func_1(1000f, vec3<i32>(u_input.b.x, 2147483647i, -2147483647i))), _wgslsmith_sub_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 18u)], 18u)], 0u), _wgslsmith_add_vec2_u32(u_input.a.zx, vec2<u32>(0u, 97768u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1698f, global0.x) * vec3<f32>(-861f, 336f, global0.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(149f, global0.x, -126f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(826f, global0.x, global0.x) - vec3<f32>(global0.x, -1092f, -1292f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))) - _wgslsmith_f_op_f32(-global0.x)) - -2148f));
    let x = u_input.a;
    s_output = StorageBuffer(53762u, _wgslsmith_f_op_f32(exp2(global0.x)));
}

