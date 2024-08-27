struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 1> = array<f32, 1>(-715f);

var<private> global2: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    return abs(vec3<u32>(39826u, 58269u, 57338u));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    global1 = array<f32, 1>();
    global0 = Struct_1(!select(global0.a, global0.a, true), global0.b, _wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(func_3(global0.e.x, Struct_1(vec2<bool>(global0.b, false), true, global0.c, 25105u, u_input.b.zz)), firstTrailingBit(vec3<u32>(u_input.a, 0u, 10699u))), ~(vec3<u32>(0u, 1u, 1u) & vec3<u32>(113655u, global0.c, u_input.a))), select(~(~vec3<u32>(global0.c, 57001u, 29940u)), firstTrailingBit(abs(vec3<u32>(global0.c, 1u, 69983u))), !select(vec3<bool>(true, true, true), vec3<bool>(global0.b, false, global0.b), vec3<bool>(false, global0.b, global0.b)))), 35661u & u_input.a, -countOneBits(min(~global0.e, min(vec2<i32>(global0.e.x, -16223i), u_input.c))));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(global0.d, 1u)], _wgslsmith_div_f32(_wgslsmith_div_f32(1273f, arg_1.x), _wgslsmith_f_op_f32(sign(832f))), true)))));
    let var_1 = ~30548u;
    let var_2 = !vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(global0.a.x, true), global0.a)), all(select(select(vec4<bool>(true, global0.a.x, global0.a.x, global0.b), vec4<bool>(global0.a.x, false, true, false), global0.b), vec4<bool>(false, global0.a.x, true, false), vec4<bool>(global0.b, false, global0.b, global0.b))), (4294967295u > ~u_input.a) || all(vec2<bool>(global0.b, global0.a.x)));
    return reverseBits(~func_3(global0.e.x, Struct_1(global0.a, global0.a.x, 70500u, 1u, vec2<i32>(u_input.b.x, 2147483647i))).x) >> (_wgslsmith_clamp_u32(27188u, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, global0.d), 1u) << (43331u % 32u), ~reverseBits(_wgslsmith_mult_u32(4294967295u, global0.c))) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> i32 {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(6453u, 1u)], 791f))) - 1000f) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(~global0.c, 4294967295u), 1u)])) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(func_2(425f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-172f, global1[_wgslsmith_index_u32(0u, 1u)]) + vec2<f32>(-1000f, 528f))), 1u)], global1[_wgslsmith_index_u32(1u, 1u)]))));
    var var_0 = arg_1;
    var_0 = Struct_1(select(!arg_0.a, !vec2<bool>(true, !arg_3.a.x), all(select(select(vec4<bool>(true, true, false, var_0.a.x), vec4<bool>(true, arg_0.a.x, arg_0.a.x, true), vec4<bool>(global0.a.x, var_0.b, arg_0.a.x, arg_1.a.x)), !vec4<bool>(false, arg_3.a.x, false, true), select(vec4<bool>(true, false, false, global0.a.x), vec4<bool>(false, true, true, false), vec4<bool>(arg_3.a.x, false, arg_3.b, true))))), var_0.a.x, max(arg_3.c, abs(~34372u)), ~(1u & ~(arg_3.d >> (u_input.a % 32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(-1i, 2147483647i, var_0.e.x, -1i)), ~vec4<i32>(21083i, 1i, 2147483647i, -45835i)), _wgslsmith_mult_i32(-arg_3.e.x, firstLeadingBit(var_0.e.x) & arg_2)));
    global2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 1u)]))))));
    global1 = array<f32, 1>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(7667i, ~arg_2, global0.e.x), _wgslsmith_add_i32(_wgslsmith_div_i32(arg_3.e.x, -1i), _wgslsmith_mult_i32(0i, 0i)), i32(-1i) * -arg_1.e.x, _wgslsmith_clamp_i32(41577i, arg_2 | -18718i, ~19938i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, global0.e.x, var_0.e.x, global0.e.x), abs(-vec4<i32>(arg_0.e.x, arg_1.e.x, 0i, u_input.c.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global0.e.x, 20963i, arg_1.e.x), vec4<i32>(arg_3.e.x, -43741i, arg_2, 2147483647i)), 1i, arg_3.e.x, global0.e.x))) << (118090u % 32u);
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> bool {
    let var_0 = firstTrailingBit(global0.e);
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    let var_1 = Struct_1(global0.a, any(select(select(vec4<bool>(global0.b, global0.b, global0.b, true), !vec4<bool>(global0.a.x, true, false, global0.a.x), select(vec4<bool>(global0.a.x, true, false, global0.a.x), vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(false, global0.b, true, global0.b))), select(vec4<bool>(true, global0.a.x, global0.b, global0.a.x), select(vec4<bool>(global0.b, false, true, false), vec4<bool>(true, global0.b, false, global0.a.x), vec4<bool>(true, global0.a.x, false, global0.b)), select(vec4<bool>(global0.a.x, true, true, global0.a.x), vec4<bool>(global0.b, global0.a.x, true, global0.b), global0.a.x)), select(select(vec4<bool>(global0.a.x, true, true, global0.a.x), vec4<bool>(true, false, true, global0.b), true), select(vec4<bool>(global0.b, false, false, false), vec4<bool>(false, false, global0.a.x, global0.b), true), global0.b))), abs(~(~_wgslsmith_sub_u32(1u, u_input.a))), _wgslsmith_div_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(4294967295u, global0.d, global0.d)) << (countOneBits(global0.d) % 32u)) << ((~1u ^ u_input.a) % 32u), global0.d & u_input.a), vec2<i32>(arg_3.x, -2147483647i) << (firstTrailingBit(select(vec2<u32>(u_input.a, 8448u), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(8979u, 0u), false), !global0.a)) % vec2<u32>(32u)));
    let var_2 = var_1;
    return true || global0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-952f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(~4294967295u, 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(666f * -324f), _wgslsmith_f_op_f32(1000f * -687f)))), func_4(vec4<i32>(_wgslsmith_mod_i32(global0.e.x, u_input.c.x), -11713i, _wgslsmith_sub_i32(global0.e.x, 14551i), func_1(Struct_1(global0.a, true, u_input.a, 0u, vec2<i32>(-26020i, -1i)), Struct_1(vec2<bool>(true, global0.a.x), global0.a.x, 0u, global0.d, vec2<i32>(27760i, 0i)), 2147483647i, Struct_1(vec2<bool>(global0.b, global0.b), true, u_input.a, 1u, u_input.b.yx))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 1u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global0.d, 1u)])) * _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(0u, 1u)]))), -_wgslsmith_sub_vec2_i32(global0.e, u_input.b.yz)))), 772f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(76238u, 1u)])));
    global2 = -649f;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a ^ global0.d, 1u)] - _wgslsmith_f_op_f32(f32(-1f) * -1275f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-2381f, global1[_wgslsmith_index_u32(32265u, 1u)]))), var_0.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(405f, 1071f)), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 1u)], -903f, -660f) * vec3<f32>(980f, var_0.x, 731f))))));
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c, u_input.c | vec2<i32>(u_input.c.x, global0.e.x)), _wgslsmith_mod_i32(global0.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -21097i), global0.e)), 1i, _wgslsmith_dot_vec3_i32(~u_input.b, select(vec3<i32>(-16766i, u_input.c.x, -2147483647i), u_input.b, false)));
    var var_2 = -firstLeadingBit(-vec4<i32>(-6621i, -570i, -39658i, 12497i) | (_wgslsmith_mult_vec4_i32(vec4<i32>(5690i, 24388i, 2147483647i, global0.e.x), vec4<i32>(-2147483647i, var_1.x, 34357i, var_1.x)) | vec4<i32>(-92332i, 2147483647i, -1i, -12955i)));
    var var_3 = min(~global0.c, ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0.c, global0.d, u_input.a) >> (vec3<u32>(2938u, 1u, global0.d) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0.d), vec3<u32>(4294967295u, u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(global0.e, var_1.xw >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, global0.d), abs(vec2<u32>(u_input.a, global0.c))) % vec2<u32>(32u)), !vec2<bool>(func_4(vec4<i32>(global0.e.x, var_2.x, var_2.x, u_input.b.x), var_0.x, -2330f, var_2.zz), global0.a.x)), global1[_wgslsmith_index_u32(~countOneBits(~(~global0.d)), 1u)], _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global0.c, 1u)], 776f)), vec2<bool>(false, global0.a.x))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_0.zx, var_0.zy), vec2<f32>(-408f, 241f)))), vec2<f32>(-229f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - -1201f))))));
}

