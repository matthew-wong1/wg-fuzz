struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(true, true, true, false, false, false, true, true, false, true, false, true, true, false, false, true, true, false, false, true, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = u_input.c.x;
    global0 = array<bool, 22>();
    let var_1 = Struct_2(Struct_1(max(~(~arg_0.a), min(countOneBits(vec2<i32>(-62603i, u_input.a)), select(arg_0.a, vec2<i32>(-1i, 22272i), false))), arg_0.b), max(min(1u, 47915u), var_0), _wgslsmith_f_op_f32(154f - 408f));
    var var_2 = arg_0;
    var_2 = Struct_1(countOneBits(-var_2.b), min(vec2<i32>(11173i | _wgslsmith_add_i32(3749i, var_1.a.b.x), countOneBits(_wgslsmith_mod_i32(2147483647i, var_1.a.a.x))), var_2.b));
    return var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32) -> bool {
    var var_0 = Struct_1(arg_0.a.b, ~vec2<i32>(u_input.b, u_input.a));
    let var_1 = abs(_wgslsmith_add_vec3_i32(arg_1, arg_1));
    let var_2 = Struct_2(Struct_1(min(select(firstLeadingBit(arg_0.a.b), var_0.a, select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_2, 22u)], false), false)), select(arg_0.a.b, firstTrailingBit(vec2<i32>(arg_1.x, 17005i)), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 22u)], global0[_wgslsmith_index_u32(0u, 22u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(35253u, 22u)]), vec2<bool>(false, false)))), -(~abs(vec2<i32>(-3918i, var_0.a.x)))), ~firstLeadingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f) - arg_0.c)));
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    return !global0[_wgslsmith_index_u32(arg_0.b, 22u)] != true;
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = !func_4(Struct_2(Struct_1(arg_0.a.b, _wgslsmith_div_vec2_i32(arg_0.a.b, vec2<i32>(u_input.b, 9336i))), func_3(Struct_1(vec2<i32>(u_input.b, arg_0.a.a.x), arg_0.a.a)), -1743f), select(vec3<i32>(arg_0.a.b.x, 2147483647i, -arg_0.a.a.x), ~(vec3<i32>(arg_0.a.a.x, 38570i, arg_0.a.b.x) ^ vec3<i32>(22217i, -34468i, -28456i)), any(!vec3<bool>(global0[_wgslsmith_index_u32(15255u, 22u)], false, global0[_wgslsmith_index_u32(arg_0.b, 22u)]))), u_input.c.x);
    global0 = array<bool, 22>();
    let var_1 = arg_0.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -567f, -441f, var_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 271f, arg_0.c, 1024f)), select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], false, false, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec4<bool>(true, true, true, var_0), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.b, 22u)], true, true, false)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, -1149f, 1000f), vec4<f32>(1519f, arg_0.c, arg_0.c, 787f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c, arg_0.c, 968f, 1031f)))))), vec4<f32>(-508f, _wgslsmith_f_op_f32(1777f * var_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_1)))), 336f)))));
    let var_3 = arg_0.a;
    return !(!((true && var_0) == !(1089f <= arg_0.c)));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<u32>(0u, u_input.c.x, u_input.c.x, _wgslsmith_mult_u32(15865u, ~u_input.c.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(276f * -881f), _wgslsmith_f_op_f32(-397f + 427f)))) * _wgslsmith_div_vec2_f32(vec2<f32>(-400f, _wgslsmith_f_op_f32(f32(-1f) * -893f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(249f)), _wgslsmith_f_op_f32(step(190f, -1448f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(257f, -407f)))))));
    let var_2 = select(max(vec4<i32>(-_wgslsmith_sub_i32(arg_0, arg_0), 1i, -25475i, firstTrailingBit(~(-63245i))), ~vec4<i32>(2147483647i, -2147483647i, u_input.d, i32(-1i) * -25128i)), vec4<i32>(u_input.d, abs(firstLeadingBit(6737i)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -arg_0), countOneBits(vec2<i32>(80297i, u_input.b))), arg_0), true);
    let var_3 = !select(select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 22u)], false, arg_1), select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 22u)], true, arg_1), all(vec2<bool>(false, arg_1))), vec3<bool>(true, false, func_2(Struct_2(Struct_1(var_2.yy, vec2<i32>(1i, -14704i)), 43400u, -351f)))), select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 22u)], false), vec3<bool>(arg_1, false, true), vec3<bool>(false, arg_1, arg_1)), vec3<bool>(global0[_wgslsmith_index_u32(31388u, 22u)], true, true), true), !vec3<bool>(false, arg_1, false), select(!vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 22u)], false, false), select(vec3<bool>(arg_1, true, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]), vec3<bool>(arg_1, false, global0[_wgslsmith_index_u32(0u, 22u)]), arg_1), !arg_1)), vec3<bool>(global0[_wgslsmith_index_u32(~(~var_0.x), 22u)], !global0[_wgslsmith_index_u32(~var_0.x, 22u)], arg_1));
    let var_4 = select(vec2<bool>(false, _wgslsmith_sub_i32(-43954i, arg_0 | 1i) > _wgslsmith_mod_i32(-6589i, _wgslsmith_mod_i32(u_input.a, u_input.a))), vec2<bool>(var_3.x, func_4(Struct_2(Struct_1(vec2<i32>(arg_0, 2147483647i), var_2.ww), abs(u_input.c.x), _wgslsmith_f_op_f32(-var_1.x)), (vec3<i32>(-19910i, arg_0, u_input.a) & var_2.ywx) & (vec3<i32>(arg_0, 0i, 21021i) | vec3<i32>(u_input.d, u_input.d, u_input.a)), 66551u)), var_3.zx);
    return Struct_1(var_2.wx, abs(vec2<i32>(arg_0, u_input.d) | -vec2<i32>(var_2.x, -2508i)) | ~var_2.wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.c.x <= ~(u_input.c.x & ~4294967295u), false, global0[_wgslsmith_index_u32(u_input.c.x, 22u)]);
    let var_1 = Struct_2(func_1(u_input.d, false), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) >> (_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x & u_input.c.x, 51044u) % 32u), u_input.c.x), _wgslsmith_f_op_f32(min(-342f, 1514f)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.c.zwx));
}

