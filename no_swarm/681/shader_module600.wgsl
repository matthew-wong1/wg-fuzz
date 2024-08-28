struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false));

var<private> global1: array<f32, 17>;

var<private> global2: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(false), Struct_3(true));

var<private> global3: array<f32, 28>;

var<private> global4: i32 = -4471i;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global1 = array<f32, 17>();
    global4 = firstLeadingBit(abs(1i));
    global1 = array<f32, 17>();
    let var_0 = ~(~countOneBits(77444u) >> (~min(40746u, u_input.d.x) % 32u));
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, true || all(vec2<bool>(true, true)), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-197f, global3[_wgslsmith_index_u32(0u, 28u)], 567f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 28u)], -1532f, 342f, global3[_wgslsmith_index_u32(32143u, 28u)]))))), false, u_input.b.x, Struct_1(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_0, 17u)] == global3[_wgslsmith_index_u32(u_input.d.x, 28u)]), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(9544u, 28u)])), 922f, _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(var_0, 28u)])))))), vec3<bool>(!(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(11810u, 17u)]) < _wgslsmith_f_op_f32(f32(-1f) * -773f)), true, !((22830u == u_input.d.x) | true)));
    return _wgslsmith_clamp_i32(~_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), max(-7464i, var_1.c) >> (_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 1u) % 32u)), firstTrailingBit(var_1.c << (var_0 % 32u)), u_input.b.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> bool {
    global0 = array<vec4<bool>, 22>();
    global0 = array<vec4<bool>, 22>();
    let var_0 = _wgslsmith_sub_i32(func_3(), _wgslsmith_dot_vec2_i32(vec2<i32>(-21223i, ~(-u_input.a.x)), abs(abs(u_input.a.wz))));
    let var_1 = ~arg_0.x;
    var var_2 = Struct_2(Struct_1(select(!(!vec3<bool>(true, false, arg_1.x)), vec3<bool>(arg_1.x, arg_1.x, all(vec3<bool>(false, false, true))), all(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-194f, -638f, 1000f, 1813f) * vec4<f32>(1226f, global1[_wgslsmith_index_u32(var_1, 17u)], -1411f, 995f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 1000f, 529f, -925f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(202f, -409f, global3[_wgslsmith_index_u32(var_1, 28u)], 309f) - vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 28u)], 1610f, 744f, -867f)))))), true, var_0, Struct_1(vec3<bool>(arg_1.x, all(select(global0[_wgslsmith_index_u32(1u, 22u)], vec4<bool>(false, false, arg_1.x, arg_1.x), false)), abs(arg_0.x) != arg_0.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(547f, global1[_wgslsmith_index_u32(1u, 17u)], -134f, global3[_wgslsmith_index_u32(var_1, 28u)]))))))), vec3<bool>(select((arg_0.x ^ arg_0.x) != _wgslsmith_sub_u32(1950u, u_input.d.x), all(select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, true), false)), arg_1.x), all(vec4<bool>(all(vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x || arg_1.x, !arg_1.x, arg_1.x)), false));
    return _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(21480u, 28u)]) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1448f, _wgslsmith_f_op_f32(max(-1305f, 468f)))) * -433f)));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> Struct_1 {
    global4 = reverseBits(1i);
    let var_0 = true;
    let var_1 = !all(vec4<bool>(func_2(u_input.d | vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 50570u), !vec2<bool>(arg_0.a, arg_2)), true, true, (u_input.d.x << (0u % 32u)) != ~19406u));
    let var_2 = u_input.d.x != ~_wgslsmith_sub_u32(select(u_input.d.x, u_input.d.x, true) << (30625u % 32u), u_input.d.x);
    var var_3 = Struct_1(!vec3<bool>(any(select(vec4<bool>(false, true, arg_0.a, false), vec4<bool>(false, arg_0.a, true, var_1), var_1)), -19286i >= abs(u_input.c), var_0), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2142f, 227f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)], -359f)) - vec4<f32>(-523f, global3[_wgslsmith_index_u32(u_input.d.x, 28u)], global3[_wgslsmith_index_u32(0u, 28u)], 1053f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-800f, -540f), _wgslsmith_f_op_f32(max(1021f, global1[_wgslsmith_index_u32(34753u, 17u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 17u)] + global3[_wgslsmith_index_u32(u_input.d.x, 28u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(28989u, 17u)] + global3[_wgslsmith_index_u32(u_input.d.x, 28u)])) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(u_input.d.x, 17u)], global3[_wgslsmith_index_u32(119203u, 28u)], 254f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 458f, -1097f, -568f), vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], 1135f, 1673f, global3[_wgslsmith_index_u32(1u, 28u)]))), vec4<bool>(true, false, var_2, var_0))))));
    return Struct_1(!select(select(!vec3<bool>(false, arg_1, arg_2), var_3.a, !var_3.a), select(!var_3.a, var_3.a, u_input.d.x == u_input.d.x), true), var_3.b);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 22u)];
    let var_1 = vec2<bool>(global1[_wgslsmith_index_u32(~u_input.d.x, 17u)] > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-826f))) + global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d << (vec4<u32>(0u, u_input.d.x, 4294967295u, 0u) % vec4<u32>(32u))), 28u)]), true);
    global2 = array<Struct_3, 2>();
    global3 = array<f32, 28>();
    var var_2 = func_4(Struct_3(!var_1.x), true, func_2(vec4<u32>(~u_input.d.x & u_input.d.x, 403u, 1u, u_input.d.x), vec2<bool>(var_1.x, true)));
    return Struct_2(func_4(Struct_3(true), func_4(Struct_3(any(var_2.a.xz)), all(!var_1), var_0.x).a.x, 13356i >= ~u_input.e.x), !select(all(var_0.yx), true, var_1.x), 1i, Struct_1(func_4(global2[_wgslsmith_index_u32(abs(u_input.d.x), 2u)], _wgslsmith_div_i32(u_input.b.x, 25188i) <= u_input.a.x, !var_0.x).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1916f, var_2.b.x, global1[_wgslsmith_index_u32(u_input.d.x, 17u)], global1[_wgslsmith_index_u32(u_input.d.x, 17u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b + vec4<f32>(global3[_wgslsmith_index_u32(25523u, 28u)], -340f, var_2.b.x, 533f)) - vec4<f32>(-829f, var_2.b.x, global1[_wgslsmith_index_u32(u_input.d.x, 17u)], 563f)))), var_0.wzw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -vec3<i32>(~u_input.b.x, -48400i, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-6240i, u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -1i), vec3<i32>(2147483647i, 1i, u_input.a.x))));
    let var_1 = func_1(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b.x | -36674i, firstLeadingBit(var_0.x), -2147483647i)), firstTrailingBit(u_input.a.xzx) & vec3<i32>(9299i, _wgslsmith_mult_i32(var_0.x, u_input.a.x), -2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.e, vec2<i32>(49172i, ~var_0.x)), ~(~countOneBits(u_input.d)), global3[_wgslsmith_index_u32(4294967295u, 28u)], u_input.d.ywx, ~(~0u));
}

