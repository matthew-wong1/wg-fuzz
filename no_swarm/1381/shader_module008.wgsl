struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(2147483647i, 19375i, -20314i, 14895i, 0i);

var<private> global1: array<f32, 21>;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 0i, 1i, 1i);

var<private> global3: array<vec3<u32>, 32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<u32>) -> f32 {
    global0 = array<i32, 5>();
    let var_0 = 44536u;
    global4 = arg_3;
    global1 = array<f32, 21>();
    var var_1 = _wgslsmith_f_op_f32(-926f - -496f);
    return arg_2;
}

fn func_3() -> vec4<f32> {
    var var_0 = -1342f;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1205f, 875f, global1[_wgslsmith_index_u32(2446u, 21u)]) - vec3<f32>(-2468f, global1[_wgslsmith_index_u32(1u, 21u)], 808f)))), select(true, all(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)))), firstLeadingBit(~(global2.zw & global2.xz)), _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(~global4.x), 2997u), u_input.c.zx));
    let var_2 = var_1.a.b;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a.a - _wgslsmith_f_op_vec3_f32(floor(var_1.a.a))), !(var_1.a.b | false)), global2.yw, ~(~vec2<u32>(_wgslsmith_dot_vec2_u32(var_1.c, u_input.c.yz), 23541u)));
    var var_4 = var_1.b.x;
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.a.x, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(var_1.c.x, 21u)])))) * var_1.a.a.x), -1656f, var_1.a.a.x), vec4<f32>(_wgslsmith_f_op_f32(max(-869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20763u, 21u)])))), 1390f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-776f - var_3.a.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.a.x))) * var_3.a.a.x))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 2382f, -784f, global1[_wgslsmith_index_u32(u_input.c.x, 21u)])))))), ~abs(vec4<i32>(2147483647i, global2.x, -19580i, 1i)), 511f, ~((u_input.a | u_input.a) >> (firstLeadingBit(u_input.a) % vec4<u32>(32u))))));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1528f, 1000f, 1000f, arg_2), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(global4.x, 21u)], global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())))));
    let var_3 = ~(~(~15959i)) ^ global0[_wgslsmith_index_u32(u_input.c.x, 5u)];
    let var_4 = var_0;
    return _wgslsmith_dot_vec4_u32(max(~abs(vec4<u32>(28410u, 1u, u_input.c.x, u_input.a.x)) >> (u_input.a % vec4<u32>(32u)), ~u_input.a), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 32>();
    global4 = vec4<u32>(47817u, 16505u | ((_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.zy) >> (abs(4294967295u) % 32u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(6489u, 0u), ~vec2<u32>(global4.x, global4.x))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, func_1(false, vec2<bool>(false, true), -180f)) & max(u_input.c.x >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global4.x, global4.x), global4.wyy)), ~max(u_input.a.x, _wgslsmith_sub_u32(global4.x, global4.x)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.x, firstTrailingBit(global4.x)), 4294967295u)), ~global4.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(reverseBits(firstTrailingBit(u_input.a.x)), 21u)]))));
    let var_1 = !(!(!vec2<bool>(all(vec3<bool>(true, false, true)), true)));
    var var_2 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], 1000f), 768f)), _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(1u, 21u)])), global1[_wgslsmith_index_u32(~global4.x, 21u)]), ~41167i > _wgslsmith_add_i32(7486i, _wgslsmith_div_i32(u_input.b, -47255i))), vec2<i32>(_wgslsmith_dot_vec2_i32(global2.xy, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -2147483647i) | vec2<i32>(u_input.b, -1i), -global2.xw)), _wgslsmith_mod_i32(u_input.b, 1i)), reverseBits(vec2<u32>(abs(89116u), firstTrailingBit(global4.x & 4294967295u))));
    var var_3 = all(!vec3<bool>(true, var_1.x, !var_2.a.b)) | var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

