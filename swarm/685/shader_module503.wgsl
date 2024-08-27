struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 29>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.c, 29u)]);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1213f, 698f, -1000f, 649f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, -650f, -729f, 103f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, 209f, true)), _wgslsmith_f_op_f32(round(456f)), -1032f, 1440f) * vec4<f32>(_wgslsmith_f_op_f32(round(-102f)), _wgslsmith_f_op_f32(sign(-1274f)), _wgslsmith_f_op_f32(-1000f * -494f), 1265f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-515f, -1286f, -795f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(755f, 230f, -1184f, -1287f)))))));
    let var_2 = 57239u;
    var_0 = Struct_2(Struct_1(reverseBits(~vec3<u32>(var_0.a.a.x, 4294967295u, var_0.a.a.x)) | ~(~var_0.a.a)));
    return _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c | 4294967295u, 56704u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 18315u, var_0.a.a.x, 22039u), reverseBits(vec4<u32>(1u, 4294967295u, var_0.a.a.x, var_2)))), _wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(~var_0.a.a, vec3<u32>(19503u, var_2, var_2) & vec3<u32>(1u, 4294967295u, var_0.a.a.x))), ~var_0.a.a | vec3<u32>(~0u, 4294967295u, u_input.c)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global0 = max(~1u, u_input.c ^ (_wgslsmith_sub_u32(~u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(u_input.c, u_input.c))) | u_input.c));
    global0 = u_input.c >> (u_input.c % 32u);
    var var_0 = 1720i;
    let var_1 = Struct_1(min(func_3(), _wgslsmith_add_vec3_u32(min(~vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(0u, 0u, u_input.c) >> (vec3<u32>(113814u, 2204u, 97286u) % vec3<u32>(32u))), ~(~vec3<u32>(1u, 45725u, u_input.c)))));
    var var_2 = Struct_2(Struct_1(reverseBits(var_1.a)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1435f);
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(-(vec4<i32>(u_input.b.x, 0i, u_input.a.x, -27394i) & vec4<i32>(u_input.b.x, 32605i, -1i, 2147483647i)) & select(_wgslsmith_add_vec4_i32(vec4<i32>(36099i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(-25496i, -20109i, u_input.a.x, -2147483647i)), vec4<i32>(0i, 13429i, -28285i, 8147i), vec4<bool>(true, true, true, true)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1332f))))));
    let var_1 = Struct_2(Struct_1(~countOneBits(~vec3<u32>(43979u, 129636u, 10153u))));
    global0 = var_1.a.a.x;
    var var_2 = var_1.a;
    global1 = array<Struct_1, 29>();
    return true;
}

fn func_4(arg_0: bool) -> StorageBuffer {
    let var_0 = firstTrailingBit(max(2147483647i, firstTrailingBit(~u_input.a.x))) != _wgslsmith_sub_i32(9894i, _wgslsmith_mod_i32(u_input.b.x, -1i));
    let var_1 = select(select(!select(vec2<bool>(arg_0, false), vec2<bool>(var_0, arg_0), true), !vec2<bool>(arg_0, !arg_0), select(vec2<bool>(8734u > u_input.c, !var_0), !vec2<bool>(true, var_0), arg_0)), select(vec2<bool>(all(vec3<bool>(false, false, var_0)), false), select(vec2<bool>(any(vec3<bool>(arg_0, var_0, true)), true), !select(vec2<bool>(var_0, false), vec2<bool>(arg_0, arg_0), true), arg_0), vec2<bool>(true, true)), !select(select(select(vec2<bool>(var_0, true), vec2<bool>(true, false), vec2<bool>(arg_0, var_0)), select(vec2<bool>(false, true), vec2<bool>(var_0, true), false), true), !select(vec2<bool>(var_0, true), vec2<bool>(arg_0, false), vec2<bool>(arg_0, var_0)), arg_0));
    let var_2 = global1[_wgslsmith_index_u32(40141u, 29u)];
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~vec4<i32>(u_input.b.x, u_input.a.x, 2147483647i, -19958i) & vec4<i32>(1i, u_input.a.x, -13711i, u_input.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))))), -251f));
    let var_4 = _wgslsmith_div_vec2_i32(vec2<i32>((i32(-1i) * -u_input.b.x) ^ (i32(-1i) * -62695i), ~(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(-47449i, -2147483647i)) ^ -1i)), ~vec2<i32>(select(_wgslsmith_add_i32(u_input.a.x, -66486i), u_input.b.x, arg_0 || false), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(40448i, u_input.a.x)), _wgslsmith_mult_i32(2147483647i, 1i))));
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), reverseBits(var_2.a.zz), _wgslsmith_div_vec4_i32(min(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-9429i, u_input.b.x, -42933i)), firstTrailingBit(2147483647i), i32(-1i) * -40452i, var_4.x), min(vec4<i32>(var_4.x, -2147483647i, var_4.x, var_4.x), -vec4<i32>(-59780i, u_input.a.x, -3085i, u_input.a.x))), ~vec4<i32>(select(2147483647i, -35187i, true), reverseBits(var_4.x), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 29902i), vec3<i32>(1i, 2147483647i, u_input.a.x)), max(-12116i, 0i))), abs(select(38331u, reverseBits(~var_2.a.x), all(vec3<bool>(var_0, arg_0, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(862f, _wgslsmith_f_op_f32(173f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(192f - 1000f))))) + _wgslsmith_f_op_f32(round(674f)));
    global1 = array<Struct_1, 29>();
    global1 = array<Struct_1, 29>();
    let var_1 = u_input.a;
    let var_2 = Struct_1(~vec3<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 75920u), vec3<u32>(u_input.c, u_input.c, u_input.c)) & ~1u, ~u_input.c));
    let x = u_input.a;
    s_output = func_4(!any(vec2<bool>(func_1(), false)));
}

