struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11>;

var<private> global1: i32;

var<private> global2: array<f32, 22>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec2<i32> {
    var var_0 = (u_input.a.x << (~1u % 32u)) > ~_wgslsmith_mod_i32(~select(-1i, 2147483647i, arg_2.x), 1i);
    var var_1 = u_input.a.x ^ 13742i;
    return -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.a.zz, vec2<i32>(-2147483647i, u_input.c)) & u_input.b, u_input.b);
}

fn func_3(arg_0: vec2<f32>) -> vec4<i32> {
    let var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(floor(-533f)) < _wgslsmith_f_op_f32(f32(-1f) * -585f), false), vec2<bool>(true, !(!any(vec3<bool>(false, false, true)))), vec2<bool>(true, global2[_wgslsmith_index_u32(35612u, 22u)] <= -1680f));
    var var_1 = _wgslsmith_div_vec3_i32(~select(~max(u_input.a, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 11u)], 1i)), u_input.a, !select(vec3<bool>(false, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), true)), ~u_input.a);
    global2 = array<f32, 22>();
    global0 = array<i32, 11>();
    global2 = array<f32, 22>();
    return ~vec4<i32>(u_input.c, ~u_input.c, global0[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(4294967295u, 0u)), 11u)], i32(-1i) * -14290i);
}

fn func_2() -> u32 {
    let var_0 = reverseBits(countOneBits(_wgslsmith_clamp_vec4_i32(func_3(vec2<f32>(1000f, global2[_wgslsmith_index_u32(0u, 22u)])), vec4<i32>(u_input.b.x, 0i, u_input.b.x, global0[_wgslsmith_index_u32(14531u, 11u)]) | vec4<i32>(u_input.a.x, u_input.b.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], -5464i), ~vec4<i32>(40509i, 26761i, -2147483647i, global0[_wgslsmith_index_u32(35719u, 11u)])) << (vec4<u32>(reverseBits(4294967295u), ~32110u, abs(29956u), _wgslsmith_add_u32(27309u, 31484u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(20064u, 22u)] + 3009f);
    let var_2 = Struct_1(select(select(firstLeadingBit(select(vec3<u32>(3348u, 1u, 0u), vec3<u32>(39507u, 1u, 0u), vec3<bool>(false, true, true))), vec3<u32>(firstTrailingBit(1u), _wgslsmith_sub_u32(1u, 1u), abs(0u)), all(vec3<bool>(true, true, true))), firstTrailingBit(vec3<u32>(4558u, ~43280u, 11999u << (0u % 32u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), u_input.c >= var_0.x)), vec2<u32>(~19641u, max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(60278u, 1u, 4294967295u), vec3<u32>(1u, 115872u, 0u)), ~vec3<u32>(4084u, 55016u, 1274u)), select(_wgslsmith_div_u32(73918u, 4294967295u), ~0u, global2[_wgslsmith_index_u32(17239u, 22u)] >= -1186f))), select(vec3<bool>(false, _wgslsmith_mult_i32(0i, -10116i) <= (u_input.a.x ^ global0[_wgslsmith_index_u32(4294967295u, 11u)]), true), select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), all(vec2<bool>(true, true))), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), true), any(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    let var_3 = select(var_0.wyw, _wgslsmith_mult_vec3_i32(vec3<i32>(-12914i, ~(-48726i), global0[_wgslsmith_index_u32(var_2.b.x, 11u)]) | u_input.a, vec3<i32>(global0[_wgslsmith_index_u32(reverseBits(~var_2.a.x), 11u)], _wgslsmith_mult_i32(_wgslsmith_div_i32(13548i, u_input.b.x), select(37644i, u_input.a.x, var_2.c.x)), 1i)), !select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)] <= global2[_wgslsmith_index_u32(var_2.a.x, 22u)], var_2.d, true), vec3<bool>(var_2.d, var_2.c.x, var_2.d), true));
    var var_4 = select(vec2<bool>(var_2.c.x, any(vec2<bool>(any(vec3<bool>(var_2.d, true, var_2.d)), false))), select(var_2.c.zz, var_2.c.zz, !((global2[_wgslsmith_index_u32(var_2.a.x, 22u)] == global2[_wgslsmith_index_u32(var_2.a.x, 22u)]) == !var_2.c.x)), var_2.c.yy);
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.b.x, ~countOneBits(14358u)), firstTrailingBit(vec2<u32>(var_2.a.x, 1u)) ^ vec2<u32>(min(6285u, var_2.a.x), 4294967295u)), ~var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = array<i32, 11>();
    var var_1 = global0[_wgslsmith_index_u32(12334u, 11u)];
    let var_2 = func_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(36251u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], global2[_wgslsmith_index_u32(46070u, 22u)], -1000f)))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28024u, 22u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(29987u, 22u)] * global2[_wgslsmith_index_u32(52556u, 22u)]), global2[_wgslsmith_index_u32(26919u, 22u)], -1000f), vec4<f32>(_wgslsmith_f_op_f32(435f + 938f), global2[_wgslsmith_index_u32(abs(1u), 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], -393f), select(select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(true, var_0, var_0, false), var_0), vec4<bool>(var_0, var_0, var_0, var_0), any(vec2<bool>(false, var_0)))))), vec4<bool>(true, var_0, true, var_0));
    let var_3 = vec3<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, countOneBits(72621u)), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~42261u), 22u)])), -2259f);
    global0 = array<i32, 11>();
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(sign(150f))), _wgslsmith_f_op_f32(sign(810f)), -1000f) - var_3), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 - _wgslsmith_f_op_vec3_f32(-var_3)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1407f, global2[_wgslsmith_index_u32(26400u, 22u)], var_3.x)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, -725f, -922f), var_3, var_0)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(min(var_3.x, 694f)), global2[_wgslsmith_index_u32(~1u, 22u)]) * vec3<f32>(-558f, var_3.x, var_3.x))), !select(!vec3<bool>(true, var_0, var_0), !select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), true), select(var_0, false, false) & var_0)));
    let var_5 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(27987u, 4537u)), ~_wgslsmith_sub_u32(4294967295u, 0u), _wgslsmith_sub_u32(func_2(), ~4294967295u), 1u) | vec4<u32>(4294967295u, 43078u, max(select(2012u, 4294967295u, var_0), _wgslsmith_mod_u32(33828u, 9713u)), 4294967295u));
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(941u, 4294967295u)) | countOneBits(vec2<u32>(var_5.x, 4294967295u)), select(_wgslsmith_sub_vec2_u32(var_5.zz, var_5.wx), _wgslsmith_mult_vec2_u32(var_5.yy, vec2<u32>(var_5.x, var_5.x)), all(select(vec3<bool>(false, false, var_6), vec3<bool>(var_0, true, var_6), true))), var_5.wy), var_5.ww & (firstLeadingBit(var_5.xw) ^ ~_wgslsmith_mod_vec2_u32(var_5.ww, vec2<u32>(var_5.x, var_5.x))));
}

