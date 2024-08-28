struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: Struct_3;

var<private> global2: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: i32) -> i32 {
    global1 = Struct_3(select(global1.a, u_input.b, -1292f == _wgslsmith_f_op_f32(max(arg_0, arg_1.b))), u_input.b.x);
    return arg_2;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_4) -> f32 {
    global2 = arg_0.x;
    let var_0 = Struct_2(Struct_1(vec3<u32>(max(1u, global0[_wgslsmith_index_u32(1u, 15u)]), 28357u, 13038u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(991f, arg_3.a, true))))), arg_0, Struct_1(~vec3<u32>(~1u, ~1u, u_input.c.x | global0[_wgslsmith_index_u32(0u, 15u)])), !(!select(arg_0, arg_0, select(vec3<bool>(true, arg_2, arg_0.x), vec3<bool>(false, arg_2, true), false))));
    global1 = Struct_3(-vec2<i32>(min(24713i, u_input.b.x), ~u_input.b.x) ^ max(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, 18867i), ~vec2<i32>(u_input.b.x, 2147483647i), -vec2<i32>(20325i, u_input.b.x)), global1.a), global1.b);
    let var_1 = _wgslsmith_clamp_vec2_u32(select(var_0.d.a.xz, u_input.a.xx, !(reverseBits(u_input.d.x) < 92874u)), u_input.a.zz, reverseBits(vec2<u32>(~u_input.d.x, ~19993u ^ _wgslsmith_mult_u32(var_0.d.a.x, 4294967295u))));
    global1 = Struct_3(global1.a | global1.a, 24927i);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.b)), arg_3.a), _wgslsmith_f_op_f32(-683f - -252f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(428f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b))), var_0.b))));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_5(vec4<i32>(-38189i, global1.a.x, _wgslsmith_add_i32(1i, func_2(_wgslsmith_f_op_f32(f32(-1f) * -1134f), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 15u)])), 1713f, vec3<bool>(false, true, false), Struct_1(vec3<u32>(4294967295u, u_input.c.x, 1u)), vec3<bool>(false, true, false)), _wgslsmith_mod_i32(global1.a.x, global1.a.x))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, u_input.b.x, global1.a.x, -4468i) ^ vec4<i32>(33477i, -30880i, global1.a.x, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -1i, -21947i, u_input.b.x), vec4<i32>(u_input.b.x, 15405i, global1.a.x, global1.b)), vec4<bool>(true, true, true, true)), vec4<i32>(i32(-1i) * -2147483647i, u_input.b.x, -62936i, ~(-4176i)))), ~u_input.d, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), u_input.b, any(vec4<bool>(true, true, true, true)), Struct_4(-410f))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -153f);
    var var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(abs(var_0.a.wxw << (u_input.d.xxy % vec3<u32>(32u))) | (var_0.a.zyw >> (~vec3<u32>(2498u, global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 15u)], 15u)]) % vec3<u32>(32u))), vec3<i32>(u_input.b.x, 1i, countOneBits(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b)))), ~(-38813i));
    var var_3 = abs(firstLeadingBit(var_0.a));
    var_2 = -38850i;
    return vec4<i32>(abs(func_2(_wgslsmith_f_op_f32(-var_1), Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7231u, 15u)], 15u)], var_0.b.x)), -1785f, vec3<bool>(false, false, true), Struct_1(u_input.d.wzz), vec3<bool>(true, true, true)), var_0.a.x)) ^ firstLeadingBit(-32019i), u_input.b.x, 17980i, i32(-1i) * -20567i);
}

fn func_4(arg_0: Struct_5) -> StorageBuffer {
    global2 = false;
    global1 = Struct_3(-(u_input.b >> (arg_0.b.xy % vec2<u32>(32u))), global1.b);
    global0 = array<u32, 15>();
    let var_0 = _wgslsmith_mult_u32(57161u, ~select(global0[_wgslsmith_index_u32(61220u, 15u)], ~0u ^ ~global0[_wgslsmith_index_u32(4294967295u, 15u)], true));
    var var_1 = vec4<u32>(1u, ~firstLeadingBit(firstTrailingBit(0u)) | global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, var_0, var_0), reverseBits(vec3<u32>(4294967295u, 44954u, 0u))), 15u)], u_input.c.x, ~(u_input.d.x << (arg_0.b.x % 32u)));
    return StorageBuffer(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.c.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a * arg_0.c.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1048f + -706f))) + _wgslsmith_f_op_f32(floor(228f))) - _wgslsmith_f_op_f32(f32(-1f) * -1807f))));
    var var_1 = ~(~(_wgslsmith_div_u32(0u, ~global0[_wgslsmith_index_u32(0u, 15u)]) ^ 0u));
    let x = u_input.a;
    s_output = func_4(Struct_5(-(~func_1()), _wgslsmith_mod_vec4_u32(min(_wgslsmith_sub_vec4_u32(u_input.d, u_input.a), firstTrailingBit(u_input.d)), reverseBits(~u_input.d)), Struct_4(_wgslsmith_f_op_f32(trunc(128f)))));
}

