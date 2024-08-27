struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1520f;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<u32>(46675u, 41209u, 18972u), 0u, 713f), Struct_1(vec3<u32>(67518u, 1u, 1u), 29159u, 727f), Struct_1(vec3<u32>(37149u, 0u, 85153u), 17845u, 1310f), Struct_1(vec3<u32>(4297u, 0u, 25970u), 36842u, 1971f), Struct_1(vec3<u32>(38206u, 49980u, 0u), 16753u, -146f), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 496u, 1258f), Struct_1(vec3<u32>(391u, 66472u, 15607u), 66933u, 1178f), Struct_1(vec3<u32>(1u, 88641u, 1u), 0u, 332f), Struct_1(vec3<u32>(18843u, 7412u, 49764u), 0u, -537f));

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> f32 {
    let var_0 = arg_0.x ^ (min(firstTrailingBit(-1i) << (_wgslsmith_mod_u32(4294967295u, 1752u) % 32u), max(arg_0.x, u_input.a)) << (abs(arg_1) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_2.c)))))));
    global1 = abs(~vec4<u32>(global1.x, 0u, ~global1.x, _wgslsmith_sub_u32(countOneBits(25114u), arg_1)));
    let var_2 = global3.x;
    global2 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(-arg_2.c);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(~(~vec3<u32>(15622u, global1.x, 1u) >> (vec3<u32>(34690u, 0u, 28517u) % vec3<u32>(32u))), ~(abs(vec3<u32>(0u, global1.x, 0u)) | global1.yzz)), global1.x, -1224f);
    let var_1 = vec4<i32>(u_input.a >> (36287u % 32u), -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(26942i, -2147483647i), min(-42615i, -2250i), reverseBits(9327i)), -_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a))), 1i >> (var_0.a.x % 32u), u_input.a);
    let var_2 = var_0;
    let var_3 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, u_input.a, 2147483647i), vec3<i32>(39020i, 14830i, var_1.x)), vec3<i32>(u_input.a, var_1.x, var_1.x)) & ~(0i << (global1.x % 32u)), var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(169i, var_1.x), countOneBits(1i), u_input.a), ~(var_1 & vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a))), ~0i), vec4<i32>(_wgslsmith_mult_i32(var_1.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x >> (global1.x % 32u), -16504i, u_input.a, _wgslsmith_div_i32(var_1.x, u_input.a)), _wgslsmith_clamp_vec4_i32(var_1, -var_1, var_1 | vec4<i32>(u_input.a, var_1.x, -1i, 46316i))), reverseBits(firstTrailingBit(~var_1.x)), -countOneBits(-31560i)), -max(var_1, vec4<i32>(_wgslsmith_sub_i32(-1i, var_1.x), u_input.a, _wgslsmith_div_i32(u_input.a, 1i), abs(1i))));
    var var_4 = -209f;
    return var_1.xw;
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(global1.x, 9u)];
    let var_1 = 33160u;
    global2 = array<Struct_1, 9>();
    var var_2 = ~(~firstLeadingBit(_wgslsmith_dot_vec2_i32(func_3(vec4<bool>(false, global3.x, global3.x, global3.x), vec2<bool>(global3.x, global3.x)), vec2<i32>(arg_0, arg_0) | vec2<i32>(-75636i, -45431i))));
    global2 = array<Struct_1, 9>();
    return _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(select(-1270f, var_0.c, all(global3.zy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(-283f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1126f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(1005f - -289f)))))));
    global2 = array<Struct_1, 9>();
    var var_2 = vec2<i32>(-1i) * -vec2<i32>(var_0 >> (_wgslsmith_add_u32(0u, global1.x) % 32u), countOneBits(-17365i));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(vec2<i32>(-7664i, var_0), 9824u, global2[_wgslsmith_index_u32(global1.x, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -1100f))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(-23469i)), -109f, global1.x <= ~countOneBits(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), 512f, _wgslsmith_f_op_f32(func_1(vec2<i32>(firstTrailingBit(18610i), countOneBits(-2043i)), ~global1.x & ~global1.x, Struct_1(vec3<u32>(global1.x, global1.x, global1.x), ~1u, _wgslsmith_f_op_f32(574f * 1379f)))), _wgslsmith_f_op_f32(-401f * -1000f)));
}

