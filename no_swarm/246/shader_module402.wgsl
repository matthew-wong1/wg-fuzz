struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(1672u, 31342u, 0u, 9310u, 0u, 1u, 0u, 9879u, 26281u, 0u, 0u, 1u);

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-1i, i32(-2147483648), -9327i, -2172i), vec4<i32>(1i, i32(-2147483648), 0i, 1i), vec4<i32>(72228i, 1i, -1i, 2147483647i), vec4<i32>(-7908i, 26594i, -4761i, 9557i), vec4<i32>(1i, 2147483647i, -11641i, -10871i), vec4<i32>(-30473i, 2147483647i, i32(-2147483648), -1i), vec4<i32>(2147483647i, -1i, -35978i, 0i));

var<private> global3: Struct_1 = Struct_1(false, -1i, 48579u, vec4<u32>(4294967295u, 24830u, 0u, 16072u), vec2<i32>(1i, 25724i));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-996f, 1f, true)))), 1000f);
    global3 = global1[_wgslsmith_index_u32(~(~(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 46039u), arg_0.d.zz)) ^ ~_wgslsmith_dot_vec2_u32(global3.d.wy, arg_0.d.xy))), 5u)];
    let var_1 = Struct_1(!(!any(vec4<bool>(true, true, true, true))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, u_input.e.x & global3.b), global3.b, reverseBits(~u_input.e.x)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(752i, global3.b, global3.e.x), arg_0.e.x) >> (arg_0.d.x % 32u)), ~(~countOneBits(global0[_wgslsmith_index_u32(1u, 12u)])) | global3.c, _wgslsmith_add_vec4_u32(~countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.d.x, 12u)], 4294967295u, 62648u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 14056u, 75131u))), ~arg_0.d), firstLeadingBit(select(~vec2<i32>(arg_0.b, global3.e.x), vec2<i32>(global3.b, 35101i), 38090u != arg_0.d.x)) & arg_0.e);
    let var_2 = vec4<bool>(false, var_1.e.x > arg_0.e.x, true, false);
    global3 = global1[_wgslsmith_index_u32(min(1u, 29680u), 5u)];
    return select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(arg_0.d.zxy, vec3<u32>(27095u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 12u)])), 15690u, arg_0.c), min(_wgslsmith_mult_vec4_u32(var_1.d ^ arg_0.d, ~arg_0.d), _wgslsmith_add_vec4_u32(vec4<u32>(19526u, var_1.d.x, 4294967295u, 0u) << (arg_0.d % vec4<u32>(32u)), reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.d.x, 12u)], 40673u, 1u, 11323u))))), firstTrailingBit(~vec4<u32>(1u, 1u, global0[_wgslsmith_index_u32(arg_0.d.x, 12u)], 127148u)), !any(var_2));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(global3.a, arg_0.x, 10661u << (~(global3.c >> (firstTrailingBit(26979u) % 32u)) % 32u), ~func_3(global1[_wgslsmith_index_u32(~(~1709u), 5u)]), firstTrailingBit(u_input.b.xz));
    let var_1 = 2414f;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(~firstTrailingBit(vec3<u32>(u_input.a.x, 3363u, var_0.d.x))), global3.d.yzy) << (global3.c % 32u), 5u)];
    var var_2 = max(global3.b, arg_0.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_1, -1518f, 718f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, -1810f, 908f, -1109f) + vec4<f32>(-900f, 944f, var_1, 440f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1, var_1, -2252f, var_1))) * _wgslsmith_div_vec4_f32(vec4<f32>(270f, var_1, 365f, 1423f), vec4<f32>(1660f, var_1, 567f, -631f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, var_1, var_1, 1181f)))))));
    return global1[_wgslsmith_index_u32(~var_0.d.x, 5u)];
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 5u)];
    var_0 = Struct_1(true, var_0.e.x, ~(~(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), global3.d, var_0.e);
    var var_1 = false;
    var var_2 = func_2(_wgslsmith_mod_vec4_i32(global2[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, 0u), 12u)]), 7u)], vec4<i32>(1i, 7919i, u_input.c, 1i) ^ firstTrailingBit(vec4<i32>(u_input.b.x, 0i, u_input.d.x, global3.e.x) | u_input.e)));
    let var_3 = !(!(!select(select(vec3<bool>(false, var_2.a, arg_1.x), vec3<bool>(global3.a, false, arg_1.x), arg_1.x), vec3<bool>(arg_1.x, var_0.a, true), all(vec3<bool>(var_2.a, arg_1.x, global3.a)))));
    return Struct_1(arg_1.x, -(~(-u_input.d.x)) | global3.e.x, ~(abs(19110u & u_input.a.x) >> (global3.d.x % 32u)), var_0.d, firstLeadingBit(vec2<i32>(i32(-1i) * -1i, ~(-1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(0u, 5u)];
    let var_0 = 4294967295u;
    global3 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1405f), select(vec2<bool>(any(vec2<bool>(true, global3.a)), global3.a), vec2<bool>(global3.a, false), true));
    var var_1 = func_2(-(~u_input.e));
    var var_2 = _wgslsmith_mult_i32(u_input.b.x, abs(func_1(_wgslsmith_f_op_f32(min(-160f, -139f)), vec2<bool>(global3.a, true)).b)) < var_1.b;
    var var_3 = vec4<i32>(u_input.d.x, -1799i, ~2147483647i, max(-_wgslsmith_mod_i32(u_input.e.x, ~global3.e.x), abs(-608i >> (var_1.d.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(global3.d);
}

