struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(0u, 24285u, 85383u), vec3<u32>(9592u, 51134u, 20444u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 116192u, 4442u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(1u, 11000u, 11547u), vec3<u32>(15320u, 11730u, 15617u), vec3<u32>(0u, 1u, 86356u), vec3<u32>(0u, 45890u, 0u), vec3<u32>(0u, 20715u, 1679u), vec3<u32>(29272u, 6017u, 1u), vec3<u32>(72582u, 20931u, 1u), vec3<u32>(15787u, 0u, 7425u), vec3<u32>(0u, 0u, 76146u), vec3<u32>(2248u, 4294967295u, 863u), vec3<u32>(4294967295u, 0u, 36686u), vec3<u32>(59648u, 0u, 4294967295u), vec3<u32>(0u, 35016u, 0u), vec3<u32>(3209u, 1u, 73318u), vec3<u32>(35021u, 1u, 17933u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 0u, 0u), vec3<u32>(0u, 8083u, 352u), vec3<u32>(34548u, 73527u, 1u), vec3<u32>(250u, 1u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(7559u, 5690u, 57696u), vec3<u32>(1u, 112110u, 51805u), vec3<u32>(6600u, 0u, 35657u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: u32, arg_1: f32) -> f32 {
    return arg_1;
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = select(!(!select(select(vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, true), arg_0), vec3<bool>(arg_0, arg_0, false), !arg_0)), select(!select(vec3<bool>(false, false, false), !vec3<bool>(false, arg_0, arg_0), all(vec2<bool>(false, false))), vec3<bool>(true, select(true, true, false), arg_0), select(select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, true), arg_0), vec3<bool>(false, true, arg_0), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, arg_0, arg_0))), vec3<bool>(all(vec3<bool>(arg_0, false, arg_0)), all(vec3<bool>(true, arg_0, arg_0)), u_input.c.x < -14803i), select(vec3<bool>(true, arg_0, true), !vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, false, arg_0)))), all(select(vec3<bool>(false, any(vec3<bool>(true, arg_0, arg_0)), !arg_0), vec3<bool>(u_input.c.x >= 18621i, true, !arg_0), false & all(vec2<bool>(false, true)))));
    global0 = array<vec3<u32>, 29>();
    var_0 = vec3<bool>(arg_0, !any(vec3<bool>(var_0.x, all(var_0.xy), any(vec3<bool>(arg_0, true, arg_0)))), true || arg_0);
    let var_1 = Struct_2(arg_0 && false, Struct_1(100339u >> (_wgslsmith_div_u32(~0u, ~1u) % 32u), reverseBits(~reverseBits(u_input.a.xww))), Struct_1(1u, u_input.a.zwx));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1578f, 1264f, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1133f, -2832f, -1144f))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, 189f, 573f))))));
    return 4294967295u;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<u32>, 29>();
    var var_0 = Struct_1(15248u, u_input.b);
    var_0 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(22044u, _wgslsmith_div_u32(26474u, abs(var_0.a)), var_0.a, _wgslsmith_clamp_u32(4552u, _wgslsmith_add_u32(65173u, var_0.a), ~0u)), countOneBits(~vec4<u32>(var_0.a, var_0.a, 0u, var_0.a))), var_0.b);
    var var_1 = Struct_2(true, Struct_1(1u, max(vec3<i32>(-11073i, var_0.b.x, 2126i), u_input.b & vec3<i32>(-18644i, var_0.b.x, -1i)) ^ abs(-vec3<i32>(u_input.c.x, 2147483647i, 12202i))), Struct_1(~(~(~var_0.a)), -vec3<i32>(-16941i, 0i, -2147483647i)));
    var var_2 = Struct_2(var_1.a, Struct_1(~108192u, max(~var_1.c.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-43821i, var_1.b.b.x, var_1.c.b.x), u_input.c), _wgslsmith_mult_vec3_i32(var_1.b.b, u_input.c), vec3<i32>(-26732i, 4568i, 0i)))), var_1.c);
    return Struct_1(func_3(true), var_2.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstTrailingBit(vec4<u32>(42483u, max(16535u, 47427u), 146258u, 0u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(488f, 997f)))), _wgslsmith_f_op_f32(f32(-1f) * -506f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-311f, -2509f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-155f, 1259f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(835f, 759f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(func_1(var_0.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -185f)) - vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + -238f)))))));
    var var_3 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, abs(var_0.x) | (var_0.x & var_0.x), _wgslsmith_mult_u32(~var_0.x, abs(var_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 16196u, var_0.x), select(vec4<u32>(var_0.x, 4294967295u, 4294967295u, 27301u), vec4<u32>(0u, 1u, 1u, var_0.x), true)))), vec4<u32>(var_0.x, 1u, _wgslsmith_mod_u32(var_0.x | (54905u | var_0.x), var_0.x), ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(31306u, 29u)], firstTrailingBit(global0[_wgslsmith_index_u32(1u, 29u)]))));
    var_3 = vec4<u32>(~var_3.x, var_3.x, 0u, ~select(_wgslsmith_mod_u32(1u | var_3.x, 4294967295u), 1u, true));
    let var_4 = func_2();
    let var_5 = select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(_wgslsmith_mod_i32(-26554i, u_input.a.x) > var_4.b.x, func_2().a == _wgslsmith_dot_vec4_u32(vec4<u32>(var_4.a, var_3.x, 7571u, var_3.x), vec4<u32>(4967u, var_3.x, var_0.x, var_4.a)), any(vec2<bool>(true, false))), select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(false, true)), true), vec3<bool>(true, true, true))), !vec3<bool>(!any(vec4<bool>(false, true, false, true)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy, vec4<u32>(var_0.x, ~4111u & ~var_0.x, _wgslsmith_clamp_u32(~var_0.x, 1u, var_0.x ^ var_4.a) ^ ~(~1u), _wgslsmith_sub_u32(~var_0.x, ~(~52544u))));
}

