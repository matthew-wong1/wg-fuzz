struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<bool, 21>;

var<private> global2: Struct_2 = Struct_2(0u, vec3<u32>(35511u, 1u, 1u), vec3<i32>(1i, 27187i, -26763i), 513f);

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(38968u, 13228u, 421u, 38980u), vec4<u32>(15526u, 1u, 121050u, 0u), vec4<u32>(64732u, 18667u, 1u, 0u), vec4<u32>(1u, 79762u, 4294967295u, 35713u), vec4<u32>(8252u, 16929u, 6221u, 4294967295u), vec4<u32>(13812u, 4294967295u, 71554u, 0u), vec4<u32>(7613u, 36355u, 4294967295u, 87190u), vec4<u32>(16719u, 4294967295u, 4294967295u, 1u), vec4<u32>(338u, 4294967295u, 1u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -911f)), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2405f)), -1000f) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.d, -1628f, -184f, global2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, global2.d, global2.d, 1444f) + vec4<f32>(global2.d, -374f, global2.d, global2.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, 203f, global2.d, 485f)))))));
    let var_1 = arg_1;
    global0 = ~(i32(-1i) * -u_input.c.x);
    var var_2 = Struct_1(-max(min(u_input.b.x, u_input.b.x), u_input.b.x) != u_input.c.x);
    return firstLeadingBit(~min(_wgslsmith_mod_u32(var_1.x, u_input.a) << (24421u % 32u), u_input.a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = func_3(Struct_1(any(vec3<bool>(false, arg_0.a, arg_1.a)) & global1[_wgslsmith_index_u32(4294967295u, 21u)]), global3[_wgslsmith_index_u32(~4294967295u, 9u)], _wgslsmith_clamp_u32(global2.a, _wgslsmith_div_u32(4294967295u, ~u_input.a), reverseBits(u_input.a)) < 4294967295u);
    global0 = u_input.b.x;
    global2 = Struct_2(4294967295u, ~global2.b, vec3<i32>(-(0i << (~global2.b.x % 32u)), -(-2147483647i | u_input.b.x), _wgslsmith_clamp_i32(-(~global2.c.x), _wgslsmith_div_i32(3108i, 43258i), ~abs(1i))), _wgslsmith_f_op_f32(round(global2.d)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d * global2.d)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) * -764f), _wgslsmith_f_op_f32(global2.d * _wgslsmith_div_f32(global2.d, global2.d)), global2.d) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1870f, -644f, -1650f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, global2.d, -971f)) + vec3<f32>(global2.d, global2.d, global2.d)))));
    let var_2 = Struct_2(~var_0 | select(~(~var_0), ~(var_0 >> (64745u % 32u)), true), select(reverseBits(vec3<u32>(global2.a, u_input.a, 8045u)), _wgslsmith_mult_vec3_u32(global2.b | ~vec3<u32>(u_input.a, 1245u, var_0), global2.b), global1[_wgslsmith_index_u32(global2.b.x, 21u)]), vec3<i32>(_wgslsmith_clamp_i32(global2.c.x, u_input.c.x, global2.c.x << (countOneBits(63060u) % 32u)), -1i, _wgslsmith_dot_vec4_i32(max(u_input.b, vec4<i32>(-23239i, -1i, -6989i, global2.c.x)), ~vec4<i32>(-1i, u_input.c.x, global2.c.x, -19009i)) | ~_wgslsmith_mod_i32(global2.c.x, 356i)), 210f);
    return u_input.a;
}

fn func_1() -> u32 {
    let var_0 = vec3<u32>(~4294967295u, ~(~func_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_1(global1[_wgslsmith_index_u32(1u, 21u)]))), 33024u);
    global3 = array<vec4<u32>, 9>();
    global3 = array<vec4<u32>, 9>();
    global2 = Struct_2(max(var_0.x, 4294967295u), ~(~_wgslsmith_div_vec3_u32(~var_0, var_0)), vec3<i32>(~(select(global2.c.x, global2.c.x, global1[_wgslsmith_index_u32(global2.b.x, 21u)]) << (global2.b.x % 32u)), -5100i, countOneBits(u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1645f - global2.d))))), _wgslsmith_f_op_f32(139f + global2.d)));
    global0 = abs(2147483647i);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 21>();
    let var_0 = vec2<f32>(global2.d, global2.d);
    global3 = array<vec4<u32>, 9>();
    let var_1 = _wgslsmith_clamp_i32(0i, u_input.c.x << (32148u % 32u), -1i);
    global1 = array<bool, 21>();
    var var_2 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(~global2.a, global2.a), ~global2.b.zy, global2.b.yx) & ~vec2<u32>(firstTrailingBit(3651u), abs(global2.b.x)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(_wgslsmith_sub_u32(10299u, func_1())), global2.b.x), 21u)];
    var var_4 = Struct_2(~(~var_2.x >> (1u % 32u)), ~global2.b, vec3<i32>(-29994i, ~(-15724i), var_1) << (~global2.b % vec3<u32>(32u)), var_0.x);
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.x, vec4<i32>(min(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_4.c.x, -1i), vec3<i32>(2147483647i, global2.c.x, 2147483647i)), var_1 ^ var_5), global2.c.x, 61414i, _wgslsmith_mod_i32(8295i, ~var_4.c.x << (77434u % 32u))), 1u, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(select(var_4.c.yy, u_input.c, vec2<bool>(global1[_wgslsmith_index_u32(0u, 21u)], false))), ~vec2<i32>(1i, 1i)), ~(-vec2<i32>(var_1, global2.c.x))));
}

