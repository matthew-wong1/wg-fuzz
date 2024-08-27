struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_3(-firstLeadingBit(vec4<i32>(u_input.b.x, 1i, -u_input.c.x, 0i)), arg_1.zwy, -min(u_input.c, u_input.b & -u_input.c), ~abs(~(~vec3<u32>(1u, 34247u, u_input.a))));
    var var_1 = -vec3<i32>(~(~var_0.a.x), var_0.c.x ^ -(1i << (u_input.a % 32u)), -463i);
    var_0 = Struct_3(var_0.a, !vec3<bool>(any(select(arg_1, vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), var_0.b.x)), var_0.b.x, arg_1.x), -_wgslsmith_div_vec2_i32(var_1.yz, abs(var_1.xy)) ^ firstTrailingBit(var_1.xx), firstTrailingBit(vec3<u32>(23222u, var_0.d.x, u_input.a) ^ select(var_0.d, vec3<u32>(var_0.d.x, 988u, 5700u), true)));
    var_1 = -(firstTrailingBit(max(min(var_0.a.yxz, var_0.a.xxy), var_0.a.wyz)) | var_0.a.ywx);
    let var_2 = !(!arg_1.x);
    return var_0.d.zx;
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-352f, -992f, 1302f, 800f) * vec4<f32>(-1000f, -1000f, -1000f, 1445f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-159f, -1104f, 1401f, 239f), vec4<f32>(-1507f, -1319f, 539f, 683f)), vec4<f32>(-844f, -867f, 374f, -718f), arg_0.x))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1273f))), 1f, _wgslsmith_f_op_f32(f32(-1f) * -846f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(806f, -1000f, 649f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-541f, -599f, -839f) - vec3<f32>(-1217f, -897f, 301f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 373f, 365f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -849f))));
    var var_1 = !select(!vec4<bool>(true, select(false, true, true), true, false), arg_0, true);
    global0 = array<vec4<i32>, 10>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.b.yz), var_0, var_0, -firstLeadingBit(_wgslsmith_mod_vec4_i32(-global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(20617u, 10u)])));
    let var_3 = var_2;
    return Struct_4(~(~vec2<u32>(u_input.a, u_input.a) ^ select(func_3(var_2.c, vec4<bool>(false, var_1.x, var_1.x, var_1.x)), vec2<u32>(4294967295u, u_input.a), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.a.x), var_0.b.x, any(vec2<bool>(var_1.x, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -416f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * _wgslsmith_f_op_f32(var_0.b.x * var_0.a.x)))), abs(abs(47199u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_1 {
    global0 = array<vec4<i32>, 10>();
    return Struct_1(vec4<f32>(-862f, 313f, arg_0.b, _wgslsmith_f_op_f32(-1441f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(211f - 1253f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, -535f)), 1000f)) - 742f), 1737f, -385f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(934f + arg_0.b))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> bool {
    let var_0 = func_4(func_2(vec4<bool>(!arg_0, true, !all(vec3<bool>(true, false, arg_1.x)), false)), _wgslsmith_add_vec4_i32(vec4<i32>(~(u_input.e ^ u_input.b.x), u_input.c.x, 2147483647i, -23620i), ~global0[_wgslsmith_index_u32(reverseBits(u_input.a) | ~u_input.a, 10u)]));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-983f)) + _wgslsmith_f_op_f32(107f - 1000f))))), _wgslsmith_f_op_vec2_f32(round(var_0.b.xx)));
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    global0 = array<vec4<i32>, 10>();
    return !(u_input.a > _wgslsmith_mod_u32(~_wgslsmith_add_u32(u_input.a, u_input.a), select(select(4294967295u, 58773u, true), abs(1u), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(781f, 259f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -614f), _wgslsmith_f_op_f32(-424f + 168f))), _wgslsmith_f_op_f32(f32(-1f) * -1710f), func_1(true, vec2<bool>(true, true))))), _wgslsmith_f_op_f32(round(544f)));
    var var_1 = -(~(-12796i)) > ~u_input.d;
    var var_2 = true;
    global0 = array<vec4<i32>, 10>();
    let var_3 = func_4(Struct_4(firstLeadingBit(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), firstLeadingBit(vec2<u32>(36905u, 1u)))), var_0.x, u_input.a & 0u), ~vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.d, u_input.e)), u_input.d, _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, u_input.d), -33442i), reverseBits(u_input.c.x)));
    var var_4 = 873f;
    var_2 = all(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), vec2<bool>(true, true)));
    var var_5 = Struct_3(-countOneBits(vec4<i32>(min(2147483647i, 1i), i32(-1i) * -40887i, u_input.c.x, ~5449i)), vec3<bool>(false, select(true, true, func_1(false, select(vec2<bool>(true, false), vec2<bool>(false, false), true))), u_input.a >= (~u_input.a & _wgslsmith_mult_u32(u_input.a, 0u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(u_input.e, 44872i), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.c.x))), u_input.b, abs(vec2<i32>(u_input.d, u_input.c.x))), countOneBits(~vec2<i32>(u_input.b.x, u_input.e)) | max(~vec2<i32>(u_input.b.x, 2147483647i), u_input.c), min(-vec2<i32>(2147483647i, u_input.e), _wgslsmith_sub_vec2_i32(u_input.c, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.e, -22885i), u_input.c)))), abs(vec3<u32>(u_input.a, u_input.a, 11223u)));
    var var_6 = Struct_3(countOneBits(_wgslsmith_mod_vec4_i32(abs(abs(vec4<i32>(u_input.d, -2147483647i, 46557i, var_5.c.x))), _wgslsmith_clamp_vec4_i32(~global0[_wgslsmith_index_u32(18571u, 10u)], -global0[_wgslsmith_index_u32(u_input.a, 10u)], firstTrailingBit(global0[_wgslsmith_index_u32(u_input.a, 10u)])))), !select(var_5.b, !vec3<bool>(true, var_5.b.x, true), true && !var_5.b.x), ~(-(reverseBits(vec2<i32>(35260i, var_5.a.x)) | vec2<i32>(var_5.c.x, -39883i))), var_5.d ^ vec3<u32>(4294967295u, max(~25771u, func_3(Struct_1(vec4<f32>(var_3.c, var_3.c, var_0.x, 370f), vec3<f32>(315f, 102f, 848f), var_3.b.x), vec4<bool>(var_5.b.x, var_5.b.x, var_5.b.x, false)).x), ~var_5.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(firstTrailingBit(48994i >> (1u % 32u)), -1i), 1i, _wgslsmith_f_op_f32(-var_0.x));
}

