struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(4294967295u, 0u, 0u, 23473u), vec4<u32>(2244u, 0u, 4294967295u, 21014u), vec4<u32>(4969u, 1u, 1u, 0u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(17139u, 1u, 26862u, 1u), vec4<u32>(27221u, 1u, 4294967295u, 3134u), vec4<u32>(43666u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 4081u, 75597u, 1u), vec4<u32>(4294967295u, 37364u, 44060u, 49350u), vec4<u32>(1u, 26954u, 1u, 1u), vec4<u32>(4294967295u, 4294967295u, 67635u, 0u), vec4<u32>(43557u, 35353u, 50205u, 1u), vec4<u32>(8249u, 3484u, 1u, 4294967295u), vec4<u32>(1u, 4294967295u, 142986u, 4294967295u), vec4<u32>(35609u, 4294967295u, 0u, 56407u), vec4<u32>(22920u, 38457u, 16533u, 4294967295u), vec4<u32>(35750u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 85174u, 4294967295u, 25634u), vec4<u32>(12170u, 16200u, 0u, 0u), vec4<u32>(32641u, 38299u, 4294967295u, 54062u), vec4<u32>(25282u, 1u, 59332u, 1u), vec4<u32>(8982u, 12956u, 61807u, 17403u), vec4<u32>(0u, 0u, 1u, 1u), vec4<u32>(4294967295u, 0u, 7941u, 1u), vec4<u32>(2291u, 36193u, 0u, 68439u));

var<private> global2: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(3319i, 0i), vec2<i32>(2147483647i, -1967i));

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: bool) -> vec4<u32> {
    let var_0 = Struct_1(global3.a, ~global3.b);
    var var_1 = -33297i;
    var var_2 = select(vec2<bool>(any(vec3<bool>(select(true, arg_1, arg_1), true, false)), true), !vec2<bool>(!arg_2, -680f >= _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(23956u, 8u)], arg_1))), !select(select(select(vec2<bool>(arg_2, false), vec2<bool>(arg_1, arg_2), vec2<bool>(true, arg_2)), vec2<bool>(true, true), select(vec2<bool>(arg_2, true), vec2<bool>(arg_1, true), true)), select(vec2<bool>(false, arg_2), !vec2<bool>(arg_2, arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), vec2<bool>(arg_1, true))), vec2<bool>(!arg_2, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(523f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -330f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u, 8u)], -1000f))))))));
    var var_4 = ~var_0.b;
    return global1[_wgslsmith_index_u32(reverseBits(min(1u, 0u)), 25u)];
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool) -> i32 {
    var var_0 = ~(~func_3(-(~u_input.a.x), false, !(global0[_wgslsmith_index_u32(arg_1.x, 8u)] >= -1651f)));
    global3 = Struct_1(vec3<i32>(-_wgslsmith_clamp_i32(0i, -1i, u_input.a.x), ~global3.a.x, global3.a.x) << (vec3<u32>(arg_1.x, ~1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.x), var_0.zw), 6127u)) % vec3<u32>(32u)), vec4<i32>(-1i) * -global3.b);
    global2 = array<vec2<i32>, 2>();
    var var_1 = Struct_1(vec3<i32>(firstLeadingBit(-firstTrailingBit(79669i)), -1993i, 2147483647i), select(firstLeadingBit(vec4<i32>(global3.b.x >> (arg_1.x % 32u), u_input.a.x & global3.b.x, -53483i, _wgslsmith_mod_i32(-1i, u_input.a.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global3.b.x, global3.b.x), vec4<i32>(12801i, 1i, 31034i, global3.b.x)) >> (func_3(-1i, select(arg_2, false, true), arg_2) % vec4<u32>(32u)), select(select(select(vec4<bool>(false, arg_2, true, false), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, true, arg_2, arg_2)), select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, true, arg_2, false), vec4<bool>(arg_2, arg_2, true, arg_2)), !vec4<bool>(arg_2, arg_2, arg_2, arg_2)), vec4<bool>(any(vec4<bool>(arg_2, arg_2, true, false)), true, arg_2, !arg_2), any(vec4<bool>(true, false, true, arg_2)))));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1796i, global3.b.x, global3.a.x), vec3<i32>(0i, var_1.a.x, 18632i), ~global3.a), vec3<i32>(global3.a.x, _wgslsmith_div_i32(8867i, global3.b.x), i32(-1i) * -37611i)) | ~global3.a, global3.b);
    return 1i;
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(global3.a, global3.b);
    global1 = array<vec4<u32>, 25>();
    var var_1 = Struct_1(var_0.b.zzy, vec4<i32>(~(~(-u_input.a.x)), 1i, _wgslsmith_clamp_i32(-63978i, var_0.a.x, ~(~15524i)), func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1019f), global0[_wgslsmith_index_u32(1u, 8u)]), ~(~vec2<u32>(4294967295u, 28673u)), false)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(24325u, 8u)], global0[_wgslsmith_index_u32(33226u, 8u)])))), vec2<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 8u)])), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, 0u) << (firstTrailingBit(4294967295u) % 32u), 8u)]))));
    var var_3 = select(-vec2<i32>(-global3.a.x, min(var_0.a.x, u_input.a.x)) << (vec2<u32>(49168u, reverseBits(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u))) % vec2<u32>(32u)), global3.b.xz, true);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(4294967295u, 8u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 25>();
    global0 = array<f32, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    let var_1 = Struct_1(~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global3.b.wyw, vec3<i32>(u_input.a.x, global3.a.x, -2147483647i)) << (vec3<u32>(33836u, 11402u, 25077u) % vec3<u32>(32u)), global3.b.xzy), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(global3.b.x, -34251i), -1i, firstTrailingBit(-11925i)), -(global3.b | global3.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global3.b.x, u_input.a.x), 1i), -_wgslsmith_sub_vec2_i32(vec2<i32>(4002i, 2147483647i), vec2<i32>(2147483647i, 2147483647i))), -u_input.a.x, 0i));
    global0 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global0[_wgslsmith_index_u32(1u, 8u)])) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 311f)) * _wgslsmith_div_f32(var_0.x, -1500f)))), ~firstTrailingBit(48787u), ~(~4294967295u), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 25u)], vec4<u32>(4294967295u, 1417u, 4294967295u, 1u)), reverseBits(1u), 4294967295u) & (14099u << (~firstTrailingBit(52047u) % 32u)));
}

