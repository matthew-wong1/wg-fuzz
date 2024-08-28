struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(2200f, true), Struct_2(-1786f, true), Struct_2(-1000f, true), Struct_2(-1774f, false), Struct_2(-607f, true), Struct_2(719f, true), Struct_2(-664f, false), Struct_2(-258f, true), Struct_2(-220f, true), Struct_2(2803f, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    global0 = array<f32, 16>();
    var var_0 = all(select(vec2<bool>(select(true, true, all(vec3<bool>(false, true, true))), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false), 180f < global0[_wgslsmith_index_u32(u_input.e.x, 16u)]), -u_input.b.x <= 2147483647i), vec2<bool>(true, true)));
    global0 = array<f32, 16>();
    var_0 = _wgslsmith_dot_vec2_i32(~vec2<i32>(~(-39398i), firstTrailingBit(u_input.d)), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-14254i, 41374i), vec2<i32>(11618i, 1i)) << (u_input.e % vec2<u32>(32u))) == select(abs(u_input.a), ~abs(56544i) >> (_wgslsmith_sub_u32(~u_input.c, u_input.e.x) % 32u), global0[_wgslsmith_index_u32(u_input.c, 16u)] < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e.x, 16u)] - -382f))));
    global1 = array<Struct_2, 10>();
    return _wgslsmith_mult_i32(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(-(u_input.a & u_input.b.x), 11746i), -12144i));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(func_3(), reverseBits(u_input.a), _wgslsmith_clamp_i32(min(u_input.a, 2147483647i), firstLeadingBit(u_input.a ^ 0i), max(-u_input.d, 31943i)), ~u_input.b.x), vec4<i32>(_wgslsmith_div_i32(44970i, _wgslsmith_add_i32(select(3650i, u_input.a, false), u_input.d)), u_input.d, u_input.b.x, select(u_input.b.x, _wgslsmith_add_i32(2147483647i, -3494i), abs(u_input.d) == (i32(-1i) * -79298i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(5052u, 16u)], -1933f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.e.x, 16u)]) + vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 16u)]))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2325f, global0[_wgslsmith_index_u32(4294967295u, 16u)])))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, -661f) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(u_input.c, 16u)])))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c, 16u)]))))), 267f)));
    var var_2 = Struct_5(Struct_1(vec2<bool>(true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))));
    global1 = array<Struct_2, 10>();
    global0 = array<f32, 16>();
    return vec3<bool>(false, !var_2.a.b, -433f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(303f, _wgslsmith_f_op_f32(min(-446f, global0[_wgslsmith_index_u32(5684u, 16u)])))), _wgslsmith_f_op_f32(abs(-821f)), var_2.a.a.x)));
}

fn func_1() -> u32 {
    global1 = array<Struct_2, 10>();
    var var_0 = vec4<bool>(all(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), all(!func_2()), any(vec4<bool>(true, true, true, true)) && false, !all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), true)));
    var var_1 = true;
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, firstTrailingBit(max(u_input.c & u_input.e.x, ~0u) & 21654u)), 16u)];
    var_0 = select(vec4<bool>(true, false, func_2().x, var_0.x), select(select(select(!vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, true, var_0.x), -16488i < u_input.b.x), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, false, true), var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x)), !vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), false))), select(vec4<bool>(all(vec4<bool>(var_0.x, false, true, true)), var_0.x, 2056u <= u_input.e.x, true), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, false, true)), !vec4<bool>(var_0.x, true, var_0.x, false), any(vec2<bool>(var_0.x, var_0.x))), false), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), true), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)) & false)), true & var_0.x);
    return reverseBits(firstLeadingBit(15050u) >> (max(u_input.c, ~countOneBits(4294967295u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 10>();
    let var_0 = func_1() < u_input.e.x;
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(~(0u << (u_input.c % 32u)), 16u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2137f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(7861u, 16u)]), -964f)), Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 16u)] * global0[_wgslsmith_index_u32(u_input.c, 16u)]) + global0[_wgslsmith_index_u32(4294967295u, 16u)]))), var_0));
    let var_2 = Struct_1(select(vec2<bool>(!var_0, true), vec2<bool>(true, true), vec2<bool>(any(!vec3<bool>(true, true, var_0)), !(!var_1.c.b))), false);
    let var_3 = var_1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(~u_input.b.x, 0i), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~u_input.e), u_input.c << (11428u % 32u), firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(46629u, u_input.e.x))), 2461f);
}

